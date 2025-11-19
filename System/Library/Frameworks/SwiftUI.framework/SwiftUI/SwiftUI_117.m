void type metadata accessor for UIKitBarItemHost<BarItemView>()
{
  if (!lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>)
  {
    lazy protocol witness table accessor for type BarItemView and conformance BarItemView();
    v0 = type metadata accessor for UIKitBarItemHost();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>);
    }
  }
}

uint64_t partial apply for closure #1 in ToolbarBridge.update(environment:context:)(uint64_t a1)
{
  v2 = 0x1000000000000;
  if (!*(v1 + 38))
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if (!*(v1 + 35))
  {
    v3 = 0;
  }

  v4 = 0x10000;
  if (!*(v1 + 34))
  {
    v4 = 0;
  }

  v5 = v3 | v4;
  v6 = 256;
  if (!*(v1 + 33))
  {
    v6 = 0;
  }

  return closure #1 in ToolbarBridge.update(environment:context:)(a1, *(v1 + 16), *(v1 + 24), v2 | (*(v1 + 37) << 40) | (*(v1 + 36) << 32) | v5 | v6 | *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

uint64_t outlined assign with take of Toolbar.PlatformVended(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

Swift::Int _PagingViewConfig.Direction.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t _PagingViewConfig.size.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

_BYTE *_PagingViewConfig.init(direction:size:margin:spacing:constrainedDeceleration:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 24) = a6;
  *(a5 + 32) = a7;
  *(a5 + 40) = a4;
  return result;
}

uint64_t _PagingView.page.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Binding();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t _PagingView.page.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Binding();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

__n128 _PagingView.config.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 56);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  *a2 = *v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  result = *(v3 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = v6;
  return result;
}

__n128 _PagingView.config.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 40);
  v6 = v2 + *(a2 + 56);
  *v6 = *a1;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  result = *(a1 + 24);
  *(v6 + 24) = result;
  *(v6 + 40) = v5;
  return result;
}

double _PagingView.init(config:page:views:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = *a1;
  v23 = *(a1 + 1);
  v22 = a1[16];
  v9 = *(a1 + 3);
  v10 = *(a1 + 4);
  v11 = a1[40];
  v12 = type metadata accessor for _PagingView();
  v13 = v12[13];
  swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Binding();
  (*(*(v14 - 8) + 56))(a5 + v13, 1, 1, v14);
  v15 = (a5 + v12[16]);
  *v15 = 0;
  v15[1] = 0;
  v16 = *(a4 - 8);
  (*(v16 + 16))(a5, a3, a4);
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  (*(v18 + 24))(a5 + v13, a2, v17);
  v19 = a5 + v12[14];
  *v19 = v24;
  *(v19 + 8) = v23;
  *(v19 + 16) = v22;
  *(v19 + 24) = v9;
  *(v19 + 32) = v10;
  *(v19 + 40) = v11;
  v20 = a5 + v12[15];
  *(v20 + 32) = 0;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 40) = 0u;
  *(v20 + 56) = 0u;
  *(v20 + 72) = 0x3FEFEF9DB22D0E56;
  *(v20 + 80) = 0;
  *(v20 + 112) = &type metadata for EmptyGestureProvider;
  *(v20 + 120) = &protocol witness table for EmptyGestureProvider;
  (*(v16 + 8))(a3, a4);
  (*(v18 + 8))(a2, v17);
  *(v20 + 152) = 0u;
  *(v20 + 136) = 0u;
  *&result = 257;
  *(v20 + 128) = 257;
  return result;
}

uint64_t _PagingView.init(direction:page:views:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v23 = a5;
  v24 = a6;
  v22 = a7;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Binding();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - v17;
  v25[0] = *a1;
  v26 = 0;
  v27 = 1;
  v28 = 0;
  v29 = 0;
  v30 = 1;
  (*(v15 + 16))(&v21 - v17, a2, v14, v16);
  (*(v11 + 16))(v13, a3, a4);
  v19 = _PagingView.init(config:page:views:)(v25, v18, v13, a4, v22);
  (*(v11 + 8))(a3, a4, v19);
  return (*(v15 + 8))(a2, v14);
}

double _PagingView.$offset.getter()
{
  type metadata accessor for State<CGFloat>();
  State.projectedValue.getter();
  return v1;
}

uint64_t _PagingView.body.getter(void *a1)
{
  v2 = *(a1 - 1);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = a1[2];
  v8 = a1[3];
  *(v6 + 2) = v7;
  *(v6 + 3) = v8;
  v9 = a1[4];
  v10 = a1[5];
  *(v6 + 4) = v9;
  *(v6 + 5) = v10;
  (*(v2 + 32))(&v6[v5], &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v11 = lazy protocol witness table accessor for type PagingLayout and conformance PagingLayout();
  v18 = v7;
  v19 = &unk_1EFFD40F0;
  v20 = v8;
  v21 = v11;
  v22 = v9;
  v23 = v10;
  type metadata accessor for _ScrollableLayoutView();
  swift_getWitnessTable();
  type metadata accessor for _ScrollView();
  swift_getWitnessTable();
  v16 = GeometryReader.init(content:)();
  v17 = v12;
  v13 = type metadata accessor for GeometryReader();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v16, v13, WitnessTable);

  v16 = v18;
  v17 = v19;
  static ViewBuilder.buildExpression<A>(_:)(&v16, v13, WitnessTable);
}

uint64_t closure #1 in _PagingView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v23[1] = a6;
  *&v24 = a2;
  *(&v24 + 1) = &unk_1EFFD40F0;
  *&v25 = a3;
  *(&v25 + 1) = lazy protocol witness table accessor for type PagingLayout and conformance PagingLayout();
  *&v26 = a4;
  *(&v26 + 1) = a5;
  type metadata accessor for _ScrollableLayoutView();
  swift_getWitnessTable();
  v11 = type metadata accessor for _ScrollView();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v23 - v16;
  v18 = a1[1];
  v24 = *a1;
  v25 = v18;
  v26 = a1[2];
  v27 = *(a1 + 12);
  GeometryProxy.size.getter();
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = a4;
  v23[5] = a5;
  v19 = type metadata accessor for _PagingView();
  _PagingView.body(size:)(v19, v14);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v14, v11, WitnessTable);
  v21 = *(v12 + 8);
  v21(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)(v17, v11, WitnessTable);
  return (v21)(v17, v11);
}

uint64_t _PagingView.body(size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v4 = *(a1 + 16);
  v53 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v55 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  *&v8 = v4;
  *(&v8 + 1) = v7;
  v62 = *(v6 + 32);
  v66 = v62;
  v65 = v8;
  *&v57 = type metadata accessor for _PagingView.ToPageOffset();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v49 - v9;
  v59 = v7;
  v58 = v4;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v52 = type metadata accessor for Binding();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v11 = &v49 - v10;
  v12 = type metadata accessor for Binding();
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - v15;
  v17 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  outlined init with copy of _ScrollViewConfig(v2 + *(a1 + 60), &v65);
  CGSize.inset(by:)();
  v23 = v2 + *(a1 + 56);
  if (*(v23 + 16))
  {
    if (!*v23)
    {
      v21 = v22;
    }

    v24 = v21 - (*(v23 + 24) + *(v23 + 24));
  }

  else
  {
    v24 = *(v23 + 8);
  }

  (*(v14 + 16))(v16, v2 + *(a1 + 52), v13);
  v25 = (*(v17 + 48))(v16, 1, v12);
  v61 = *(&v62 + 1);
  if (v25 == 1)
  {
    (*(v14 + 8))(v16, v13);
    v26 = v59;
    v27 = v58;
    v28 = v2;
  }

  else
  {
    v29 = *(v17 + 32);
    v50 = v20;
    v29(v20, v16, v12);
    v49 = v2;
    v30 = _PagingView.$offset.getter();
    *&v63 = v31;
    *(&v63 + 1) = v32;
    *v64 = v30;
    v33 = v11;
    Binding.zip<A>(with:)();

    v34 = v55;
    v27 = v58;
    (*(v53 + 16))(v55, v2, v58);
    v35 = *(v23 + 8);
    v36 = *(v23 + 16);
    v37 = *(v23 + 40);
    LOBYTE(v63) = *v23;
    *(&v63 + 1) = v35;
    LOBYTE(v64[0]) = v36;
    *(v64 + 8) = *(v23 + 24);
    BYTE8(v64[1]) = v37;
    v38 = v54;
    v26 = v59;
    _PagingView.ToPageOffset.init(views:config:itemSize:)(v34, &v63, v27, v54, v24);
    v39 = v57;
    swift_getWitnessTable();
    v40 = v52;
    Binding.projecting<A>(_:)();
    (*(v56 + 8))(v38, v39);
    v41 = v33;
    v28 = v49;
    (*(v51 + 8))(v41, v40);
    (*(v17 + 8))(v50, v12);
    v57 = v63;
    v42 = v64[0];
    outlined consume of _ScrollViewConfig.ContentOffset(v65, *(&v65 + 1), v66, *(&v66 + 1), v67);
    v65 = v57;
    v66 = v42;
    v67 = 1;
  }

  v43 = *v23;
  v44 = *(v23 + 40);
  *&v63 = v24;
  BYTE8(v63) = v43;
  v64[0] = *(v23 + 24);
  LOBYTE(v64[1]) = v44;
  v45 = lazy protocol witness table accessor for type PagingLayout and conformance PagingLayout();
  v46 = v60;
  _ScrollableLayout.subscript.getter(v28, &unk_1EFFD40F0, v27, v45, v26, v60);
  *&v63 = v27;
  *(&v63 + 1) = &unk_1EFFD40F0;
  *&v64[0] = v26;
  *(&v64[0] + 1) = v45;
  v64[1] = v62;
  type metadata accessor for _ScrollableLayoutView();
  swift_getWitnessTable();
  v47 = type metadata accessor for _ScrollView();
  return outlined assign with take of _ScrollViewConfig(&v65, v46 + *(v47 + 36));
}

int *_PagingView.ToPageOffset.init(views:config:itemSize:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = a2[16];
  v12 = *(a2 + 3);
  v13 = *(a2 + 4);
  v20 = a2[40];
  v14 = *(a3 - 8);
  (*(v14 + 16))(a4, a1);
  result = type metadata accessor for _PagingView.ToPageOffset();
  v16 = a4 + result[13];
  *v16 = v9;
  *(v16 + 8) = v10;
  *(v16 + 16) = v11;
  *(v16 + 24) = v12;
  *(v16 + 32) = v13;
  *(v16 + 40) = v20;
  *(a4 + result[14]) = a5;
  v17 = toPageOffsetGenerationCounter;
  *(a4 + result[15]) = toPageOffsetGenerationCounter;
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    toPageOffsetGenerationCounter = v19;
    return (*(v14 + 8))(a1, a3);
  }

  return result;
}

uint64_t _PagingView.ToPageOffset.get(base:)(uint64_t a1, uint64_t a2, double a3)
{
  v16 = *(a2 + 24);
  v17 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v16 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v16 - v13;
  (*(v7 + 16))(&v16 - v13, v17, AssociatedTypeWitness, v12);
  *&v14[*(TupleTypeMetadata2 + 48)] = a3;
  if ((dispatch thunk of Collection.isEmpty.getter() & 1) == 0)
  {
    LODWORD(v17) = *(v3 + *(a2 + 52));
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of RandomAccessCollection.distance(from:to:)();
    (*(v7 + 8))(v9, AssociatedTypeWitness);
  }

  return (*(v11 + 8))(v14, TupleTypeMetadata2);
}

uint64_t _PagingView.ToPageOffset.set(base:newValue:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v32 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  result = dispatch thunk of Collection.isEmpty.getter();
  if ((result & 1) == 0)
  {
    v16 = *(a2 + 56);
    v17 = (v4 + *(a2 + 52));
    v18 = *(v17 + 1);
    v19 = v17[16];
    v20 = v17[40];
    v33 = *v17;
    v34 = v18;
    v35 = v19;
    v36 = *(v17 + 24);
    v37 = v20;
    v21 = *(v4 + v16);
    v22 = dispatch thunk of Collection.count.getter();
    v23 = _PagingViewConfig.pageForContentOffset(_:itemSize:count:)(v22, a3, a4, v21);
    if (v25)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = v24;
    }

    if (v25)
    {
      v27 = 0;
    }

    else
    {
      v27 = v23;
    }

    v31 = v27;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v29 = v9;
    v30 = v32;
    *(v32 + *(TupleTypeMetadata2 + 48)) = v26;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
    (*(v29 + 8))(v11, AssociatedTypeWitness);
    return (*(v29 + 40))(v30, v14, AssociatedTypeWitness);
  }

  return result;
}

uint64_t _PagingViewConfig.pageForContentOffset(_:itemSize:count:)(uint64_t result, double a2, double a3, double a4)
{
  if (a4 <= 0.0)
  {
    return 0;
  }

  if (!*v4)
  {
    a2 = a3;
  }

  v5 = floor(a2 / (*(v4 + 32) + a4) + 0.5);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFSUB__(result, 1))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if ((v5 & ~(v5 >> 63)) < result - 1)
  {
    return v5 & ~(v5 >> 63);
  }

  return --result;
}

Swift::Int _PagingView.ToPageOffset.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](*(v1 + *(a1 + 60)));
  return Hasher._finalize()();
}

uint64_t protocol witness for Projection.get(base:) in conformance _PagingView<A>.ToPageOffset@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = _PagingView.ToPageOffset.get(base:)(a1, a2, *(a1 + *(TupleTypeMetadata2 + 48)));
  *a3 = v8;
  a3[1] = v9;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _PagingView<A>.ToPageOffset(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  _PagingView.ToPageOffset.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

void PagingLayout.update(state:proxy:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v64 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(a2 + 64);
  if (!v7 || (v8 = v4 + v6, v4 + v6 == 0.0) || (v9 = *(a2 + 32), v10 = *(a2 + 40), v11 = *(a2 + 48), v12 = *(a2 + 56), v71.origin.x = v9, v71.origin.y = v10, v71.size.width = v11, v71.size.height = v12, CGRectIsEmpty(v71)))
  {
    v13 = *(MEMORY[0x1E695F040] + 16);
    *(a2 + 128) = *MEMORY[0x1E695F040];
    *(a2 + 144) = v13;
    if (!__OFSUB__(v7, 1))
    {
      v14 = v5 + v5 + v4 * v7 + v6 * (v7 - 1);
      if (v64)
      {
        *(a2 + 112) = v14;
      }

      else
      {
        *(a2 + 120) = v14;
      }

      return;
    }

    __break(1u);
    goto LABEL_54;
  }

  v63 = v10;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  if (v64)
  {
    MinX = CGRectGetMinX(*&v15);
    v20 = v9;
    v21 = MinX;
    v72.origin.y = v10;
    v22 = v20;
    v72.origin.x = v20;
    v72.size.width = v11;
    v72.size.height = v12;
    MaxX = CGRectGetMaxX(v72);
  }

  else
  {
    MinY = CGRectGetMinY(*&v15);
    v25 = v9;
    v21 = MinY;
    v73.origin.y = v10;
    v22 = v25;
    v73.origin.x = v25;
    v73.size.width = v11;
    v73.size.height = v12;
    MaxX = CGRectGetMaxY(v73);
  }

  if (v5 + v6 * -0.5 < 0.0)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v5 + v6 * -0.5;
  }

  v27 = floor((v21 - v26) / v8);
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if ((v27 & ~(v27 >> 63)) >= v7)
  {
    v28 = v7;
  }

  else
  {
    v28 = v27 & ~(v27 >> 63);
  }

  v29 = ceil((MaxX - v26) / v8);
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_57;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v30 = v29;
  if (v29 < 0)
  {
    if (v7 < 0)
    {
      v33 = v7;
      v34 = v28 < v7;
      if (v28 == v7)
      {
        goto LABEL_47;
      }

      goto LABEL_34;
    }

    v31 = 0;
    if (v28 <= 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v7 >= v30)
    {
      v31 = v29;
    }

    else
    {
      v31 = v7;
    }

    if (v28 <= v30)
    {
LABEL_28:
      v32 = v28;
      v28 = v31;
      goto LABEL_32;
    }
  }

  v32 = v31;
LABEL_32:
  v33 = v28;
  v34 = v28 < v32;
  v28 = v32;
  if (v34)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v34 = v32 < v33;
  if (v32 != v33)
  {
LABEL_34:
    v60 = v26;
    v61 = v22;
    v62 = v12;
    if (!v34)
    {
      goto LABEL_62;
    }

    v35 = *(a2 + 16);
    v36 = *(a2 + 24);
    v37 = *(a2 + 72);
    v38 = *(a2 + 104);
    v58 = v33;
    v59 = v28;
    v39 = v33 - 1;
    while (1)
    {
      static UnitPoint.center.getter();
      _Placement.init(proposedSize:anchoring:at:)();
      v40 = v4 * 0.5 + v5 + v8 * v28;
      v41 = _Placement.anchorPosition.modify();
      if (v64)
      {
        *v42 = v40;
        v41(v65, 0);
        v43 = _Placement.anchorPosition.modify();
        *(v44 + 8) = v36 * 0.5;
        v43(v65, 0);
        _ProposedSize.width.setter();
      }

      else
      {
        *v42 = v35 * 0.5;
        v41(v65, 0);
        v45 = _Placement.anchorPosition.modify();
        *(v46 + 8) = v40;
        v45(v65, 0);
        _ProposedSize.height.setter();
      }

      v37(v65, v28);
      *&v66[8] = v67;
      *&v66[24] = v68;
      *&v66[40] = v69;
      *&v66[56] = v70;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
      }

      v48 = *(v38 + 2);
      v47 = *(v38 + 3);
      if (v48 >= v47 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v38);
      }

      *(v38 + 2) = v48 + 1;
      v49 = &v38[104 * v48];
      v50 = v65[0];
      v51 = *v66;
      *(v49 + 3) = v65[1];
      *(v49 + 4) = v51;
      *(v49 + 2) = v50;
      v52 = *&v66[16];
      v53 = *&v66[32];
      v54 = *&v66[48];
      *(v49 + 16) = *&v66[64];
      *(v49 + 6) = v53;
      *(v49 + 7) = v54;
      *(v49 + 5) = v52;
      if (v39 == v28)
      {
        break;
      }

      ++v28;
    }

    *(a2 + 104) = v38;
    v26 = v60;
    v12 = v62;
    v22 = v61;
    v33 = v58;
    v28 = v59;
  }

LABEL_47:
  if (__OFSUB__(v7, 1))
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v55 = v26 + v8 * v28;
  v56 = v26 + v8 * v33 - v55;
  *(a2 + 112) = *(a2 + 16);
  *(a2 + 128) = v22;
  *(a2 + 136) = v63;
  v57 = v5 + v5 + v4 * v7 + v6 * (v7 - 1);
  *(a2 + 144) = v11;
  *(a2 + 152) = v12;
  if (v64)
  {
    *(a2 + 112) = v57;
    *(a2 + 128) = v55;
    *(a2 + 144) = v56;
  }

  else
  {
    *(a2 + 120) = v57;
    *(a2 + 136) = v55;
    *(a2 + 152) = v56;
  }
}

double PagingLayout.decelerationTarget(contentOffset:originalContentOffset:velocity:size:)(double result, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = *(v7 + 24);
  v9 = *(v7 + 16) + v8 * -0.5;
  if (v9 < 0.0)
  {
    v9 = 0.0;
  }

  v10 = result + a5 * -0.25;
  v11 = a3 - a7;
  if (a3 - a7 <= v10)
  {
    v11 = v10;
  }

  v12 = a3 + a7;
  if (v12 >= v11)
  {
    v12 = v11;
  }

  if (!*(v7 + 32))
  {
    v12 = v10;
  }

  v13 = (*v7 + v8) * round((v12 - v9) / (*v7 + v8));
  if (*(v7 + 8) == 1)
  {
    return v13;
  }

  return result;
}

uint64_t specialized static _PagingViewConfig.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[3];
  v3 = a1[4];
  v5 = *(a2 + 16);
  v7 = a2[3];
  v6 = a2[4];
  if (a1[2])
  {
    if (v4 != v7)
    {
      v5 = 0;
    }

    if (v5 != 1 || v3 != v6)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v4 != v7 || v3 != v6)
    {
      return 0;
    }
  }

  return *(a1 + 40) ^ *(a2 + 40) ^ 1u;
}

uint64_t partial apply for closure #1 in _PagingView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  type metadata accessor for _PagingView();

  return closure #1 in _PagingView.body.getter(a1, v5, v6, v7, v8, a2);
}

unint64_t lazy protocol witness table accessor for type PagingLayout and conformance PagingLayout()
{
  result = lazy protocol witness table cache variable for type PagingLayout and conformance PagingLayout;
  if (!lazy protocol witness table cache variable for type PagingLayout and conformance PagingLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PagingLayout and conformance PagingLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PagingLayout and conformance PagingLayout;
  if (!lazy protocol witness table cache variable for type PagingLayout and conformance PagingLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PagingLayout and conformance PagingLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PagingViewConfig.Direction and conformance _PagingViewConfig.Direction()
{
  result = lazy protocol witness table cache variable for type _PagingViewConfig.Direction and conformance _PagingViewConfig.Direction;
  if (!lazy protocol witness table cache variable for type _PagingViewConfig.Direction and conformance _PagingViewConfig.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PagingViewConfig.Direction and conformance _PagingViewConfig.Direction);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _PagingViewConfig(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[41])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _PagingViewConfig(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for _PagingView()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for Binding();
    v0 = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return v0;
}

uint64_t *initializeBufferWithCopyOfBuffer for _PagingView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = ((v11 + 16) & ~v11) + *(v9 + 64);
  v13 = ((((v12 + (((v11 | 7) + v7) & ~(v11 | 7)) + 55) & 0xFFFFFFFFFFFFFFF8) + 175) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v11 | *(v6 + 80) & 0xF8;
  if (v14 <= 7 && ((*(v6 + 80) | *(v9 + 80)) & 0x100000) == 0 && v13 <= 0x18)
  {
    v18 = AssociatedTypeWitness;
    (*(v6 + 16))(a1, a2, v5);
    v19 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v10 & 0x80000000) != 0)
    {
      if ((*(v9 + 48))(v21 + 1, v10, v18))
      {
LABEL_14:
        memcpy(v19, v20, v12);
LABEL_17:
        v25 = ((v19 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
        v26 = ((v20 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
        v27 = *v26;
        v28 = v26[1];
        *(v25 + 25) = *(v26 + 25);
        *v25 = v27;
        v25[1] = v28;
        v29 = (v19 + v12 + 55) & 0xFFFFFFFFFFFFFFF8;
        v30 = (v20 + v12 + 55) & 0xFFFFFFFFFFFFFFF8;
        v31 = *v30;
        v32 = *(v30 + 8);
        v33 = *(v30 + 16);
        v34 = *(v30 + 24);
        v35 = *(v30 + 32);
        outlined copy of _ScrollViewConfig.ContentOffset(*v30, v32, v33, v34, v35);
        *v29 = v31;
        *(v29 + 8) = v32;
        *(v29 + 16) = v33;
        *(v29 + 24) = v34;
        *(v29 + 32) = v35;
        v36 = *(v30 + 40);
        *(v29 + 56) = *(v30 + 56);
        *(v29 + 40) = v36;
        *(v29 + 72) = *(v30 + 72);
        *(v29 + 80) = *(v30 + 80);
        *(v29 + 81) = *(v30 + 81);
        v37 = *(v30 + 112);
        *(v29 + 112) = v37;
        *(v29 + 120) = *(v30 + 120);
        (**(v37 - 8))(v29 + 88, v30 + 88);
        *(v29 + 128) = *(v30 + 128);
        *(v29 + 129) = *(v30 + 129);
        *(v29 + 130) = *(v30 + 130);
        *(v29 + 131) = *(v30 + 131);
        v38 = *(v30 + 136);
        *(v29 + 152) = *(v30 + 152);
        *(v29 + 136) = v38;
        v39 = ((v29 + 175) & 0xFFFFFFFFFFFFFFF8);
        v40 = ((v30 + 175) & 0xFFFFFFFFFFFFFFF8);
        *v39 = *v40;
        v39[1] = v40[1];
        goto LABEL_18;
      }
    }

    else
    {
      v22 = *v21;
      if (*v21 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      if (v22 != -1)
      {
        goto LABEL_14;
      }
    }

    *v19 = *v20;
    v23 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v21;
    v24 = *(v9 + 16);

    v24(v23 + 1, v21 + 1, v18);
    goto LABEL_17;
  }

  v17 = *a2;
  *a1 = *a2;
  a1 = (v17 + (((v14 | 7) + 16) & ~(v14 | 7)));
LABEL_18:

  return a1;
}

uint64_t destroy for _PagingView(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)(a1, *(a2 + 16));
  v4 = *(v3 + 56) + a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + (v7 | 7)) & ~(v7 | 7);
  v9 = ~v7;
  v10 = *(v6 + 64);
  v11 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v6 + 84) & 0x80000000) != 0)
  {
    if (!(*(v6 + 48))((v11 + v7 + 8) & v9))
    {
LABEL_5:

      (*(v6 + 8))((v11 + v7 + 8) & v9, AssociatedTypeWitness);
    }
  }

  else
  {
    v12 = *v11;
    if (*v11 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    if (v12 == -1)
    {
      goto LABEL_5;
    }
  }

  v13 = (v10 + ((v7 + 16) & v9) + v8 + 55) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of _ScrollViewConfig.ContentOffset(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32));
  __swift_destroy_boxed_opaque_existential_1(v13 + 88);
}

uint64_t initializeWithCopy for _PagingView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = ~v9;
  v14 = (v9 + 16) & ~v9;
  v15 = *(v8 + 64);
  v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v8 + 84) & 0x80000000) == 0)
  {
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v14 + v15;
    if (v17 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v11 = *v12;
    v19 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v16;
    v20 = v9 + 8;
    v21 = v19 + v9 + 8;
    v22 = v16 + v20;
    v23 = *(v8 + 16);

    v23(v21 & v13, v22 & v13, AssociatedTypeWitness);
    goto LABEL_8;
  }

  v18 = v14 + v15;
  if (!(*(v8 + 48))((v16 + v9 + 8) & v13))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v11, v12, v18);
LABEL_8:
  v24 = ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v26 = *v25;
  v27 = v25[1];
  *(v24 + 25) = *(v25 + 25);
  *v24 = v26;
  v24[1] = v27;
  v28 = (v11 + v18 + 55) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v12 + v18 + 55) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  v31 = *(v29 + 8);
  v32 = *(v29 + 16);
  v33 = *(v29 + 24);
  v34 = *(v29 + 32);
  outlined copy of _ScrollViewConfig.ContentOffset(*v29, v31, v32, v33, v34);
  *v28 = v30;
  *(v28 + 8) = v31;
  *(v28 + 16) = v32;
  *(v28 + 24) = v33;
  *(v28 + 32) = v34;
  v35 = *(v29 + 40);
  *(v28 + 56) = *(v29 + 56);
  *(v28 + 40) = v35;
  *(v28 + 72) = *(v29 + 72);
  *(v28 + 80) = *(v29 + 80);
  *(v28 + 81) = *(v29 + 81);
  v36 = *(v29 + 112);
  *(v28 + 112) = v36;
  *(v28 + 120) = *(v29 + 120);
  (**(v36 - 8))(v28 + 88, v29 + 88);
  *(v28 + 128) = *(v29 + 128);
  *(v28 + 129) = *(v29 + 129);
  *(v28 + 130) = *(v29 + 130);
  *(v28 + 131) = *(v29 + 131);
  v37 = *(v29 + 136);
  *(v28 + 152) = *(v29 + 152);
  *(v28 + 136) = v37;
  v38 = ((v28 + 175) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v29 + 175) & 0xFFFFFFFFFFFFFFF8);
  *v38 = *v39;
  v38[1] = v39[1];

  return a1;
}

uint64_t assignWithCopy for _PagingView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = *(v8 + 84);
  v14 = *(v8 + 64);
  v15 = ((v9 + 16) & ~v9) + v14;
  v16 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v47 = ~v9;
  if ((v13 & 0x80000000) != 0)
  {
    v46 = ((v9 + 16) & ~v9) + v14;
    v20 = *(v8 + 48);
    v45 = v20((v16 + v9 + 8) & ~v9, v13, AssociatedTypeWitness);
    v17 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v19 = v20((v17 + v9 + 8) & ~v9, v13, AssociatedTypeWitness);
    v15 = v46;
    if (!v45)
    {
LABEL_5:
      if (!v19)
      {
        *v11 = *v12;

        *v16 = *v17;

        (*(v8 + 24))((v16 + v9 + 8) & v47, (v17 + v9 + 8) & v47, AssociatedTypeWitness);
        goto LABEL_12;
      }

      (*(v8 + 8))((v16 + v9 + 8) & v47, AssociatedTypeWitness);
      goto LABEL_9;
    }
  }

  else
  {
    v17 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = *v17;
    if (*v17 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v18) = -1;
    }

    v19 = v18 + 1;
    if (*v16 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v19)
  {
    *v11 = *v12;
    *v16 = *v17;
    v21 = v9 + 8;
    v22 = v16 + v9 + 8;
    v23 = v15;
    v24 = v17 + v21;
    v25 = *(v8 + 16);

    v26 = v24 & v47;
    v15 = v23;
    v25(v22 & v47, v26, AssociatedTypeWitness);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v11, v12, v15);
LABEL_12:
  v27 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v27 = *v28;
  v29 = *(v28 + 8);
  *(v27 + 16) = *(v28 + 16);
  *(v27 + 8) = v29;
  *(v27 + 24) = *(v28 + 24);
  *(v27 + 32) = *(v28 + 32);
  *(v27 + 40) = *(v28 + 40);
  v30 = (v11 + v15 + 55) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v12 + v15 + 55) & 0xFFFFFFFFFFFFFFF8;
  v32 = *v31;
  v33 = *(v31 + 8);
  v34 = *(v31 + 16);
  v35 = *(v31 + 24);
  v36 = *(v31 + 32);
  outlined copy of _ScrollViewConfig.ContentOffset(*v31, v33, v34, v35, v36);
  v37 = *v30;
  v38 = *(v30 + 8);
  v39 = *(v30 + 16);
  v40 = *(v30 + 24);
  v41 = *(v30 + 32);
  *v30 = v32;
  *(v30 + 8) = v33;
  *(v30 + 16) = v34;
  *(v30 + 24) = v35;
  *(v30 + 32) = v36;
  outlined consume of _ScrollViewConfig.ContentOffset(v37, v38, v39, v40, v41);
  *(v30 + 40) = *(v31 + 40);
  *(v30 + 48) = *(v31 + 48);
  *(v30 + 56) = *(v31 + 56);
  *(v30 + 64) = *(v31 + 64);
  *(v30 + 72) = *(v31 + 72);
  *(v30 + 80) = *(v31 + 80);
  *(v30 + 81) = *(v31 + 81);
  __swift_assign_boxed_opaque_existential_1((v30 + 88), (v31 + 88));
  *(v30 + 128) = *(v31 + 128);
  *(v30 + 129) = *(v31 + 129);
  *(v30 + 130) = *(v31 + 130);
  *(v30 + 131) = *(v31 + 131);
  *(v30 + 136) = *(v31 + 136);
  *(v30 + 144) = *(v31 + 144);
  *(v30 + 152) = *(v31 + 152);
  *(v30 + 160) = *(v31 + 160);
  v42 = ((v30 + 175) & 0xFFFFFFFFFFFFFFF8);
  v43 = ((v31 + 175) & 0xFFFFFFFFFFFFFFF8);
  *v42 = *v43;
  v42[1] = v43[1];

  return a1;
}

uint64_t initializeWithTake for _PagingView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = ~v9;
  v14 = (v9 + 16) & ~v9;
  v15 = *(v8 + 64);
  v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v8 + 84) & 0x80000000) == 0)
  {
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v14 + v15;
    if (v17 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v11 = *v12;
    v19 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v16;
    (*(v8 + 32))((v19 + v9 + 8) & v13, (v16 + v9 + 8) & v13, AssociatedTypeWitness);
    goto LABEL_8;
  }

  v18 = v14 + v15;
  if (!(*(v8 + 48))((v16 + v9 + 8) & v13))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v11, v12, v18);
LABEL_8:
  v20 = ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = *v21;
  v23 = v21[1];
  *(v20 + 25) = *(v21 + 25);
  *v20 = v22;
  v20[1] = v23;
  v24 = (v11 + v18 + 55) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v12 + v18 + 55) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 96);
  v28 = *(v25 + 48);
  v27 = *(v25 + 64);
  *(v24 + 80) = *(v25 + 80);
  *(v24 + 96) = v26;
  *(v24 + 48) = v28;
  *(v24 + 64) = v27;
  v30 = *(v25 + 128);
  v29 = *(v25 + 144);
  v31 = *(v25 + 112);
  *(v24 + 160) = *(v25 + 160);
  *(v24 + 128) = v30;
  *(v24 + 144) = v29;
  *(v24 + 112) = v31;
  v32 = *v25;
  v33 = *(v25 + 32);
  *(v24 + 16) = *(v25 + 16);
  *(v24 + 32) = v33;
  *v24 = v32;
  *((v24 + 175) & 0xFFFFFFFFFFFFFFF8) = *((v25 + 175) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for _PagingView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = *(v8 + 84);
  v14 = *(v8 + 64);
  v15 = ((v9 + 16) & ~v9) + v14;
  v16 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v42 = ~v9;
  if ((v13 & 0x80000000) != 0)
  {
    v41 = ((v9 + 16) & ~v9) + v14;
    v20 = *(v8 + 48);
    v21 = v20((v16 + v9 + 8) & ~v9, v13, AssociatedTypeWitness);
    v22 = v20;
    v40 = v21;
    v17 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v19 = v22((v17 + v9 + 8) & ~v9, v13, AssociatedTypeWitness);
    v15 = v41;
    if (!v40)
    {
LABEL_5:
      if (!v19)
      {
        *v11 = *v12;

        *v16 = *v17;

        (*(v8 + 40))((v16 + v9 + 8) & v42, (v17 + v9 + 8) & v42, AssociatedTypeWitness);
        goto LABEL_12;
      }

      (*(v8 + 8))((v16 + v9 + 8) & v42, AssociatedTypeWitness);
      goto LABEL_9;
    }
  }

  else
  {
    v17 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = *v17;
    if (*v17 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v18) = -1;
    }

    v19 = v18 + 1;
    if (*v16 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v19)
  {
    *v11 = *v12;
    *v16 = *v17;
    (*(v8 + 32))((v16 + v9 + 8) & v42, (v17 + v9 + 8) & v42, AssociatedTypeWitness);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v11, v12, v15);
LABEL_12:
  v23 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v23 = *v24;
  v25 = *(v24 + 8);
  *(v23 + 16) = *(v24 + 16);
  *(v23 + 8) = v25;
  *(v23 + 24) = *(v24 + 24);
  *(v23 + 32) = *(v24 + 32);
  *(v23 + 40) = *(v24 + 40);
  v26 = (v11 + v15 + 55) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v12 + v15 + 55) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v27 + 32);
  v29 = *v26;
  v30 = *(v26 + 8);
  v31 = *(v26 + 16);
  v32 = *(v26 + 24);
  v33 = *(v26 + 32);
  v34 = *(v27 + 16);
  *v26 = *v27;
  *(v26 + 16) = v34;
  *(v26 + 32) = v28;
  outlined consume of _ScrollViewConfig.ContentOffset(v29, v30, v31, v32, v33);
  *(v26 + 40) = *(v27 + 40);
  *(v26 + 48) = *(v27 + 48);
  *(v26 + 56) = *(v27 + 56);
  *(v26 + 64) = *(v27 + 64);
  *(v26 + 72) = *(v27 + 72);
  *(v26 + 80) = *(v27 + 80);
  *(v26 + 81) = *(v27 + 81);
  __swift_destroy_boxed_opaque_existential_1(v26 + 88);
  v35 = *(v27 + 88);
  v36 = *(v27 + 104);
  *(v26 + 120) = *(v27 + 120);
  *(v26 + 104) = v36;
  *(v26 + 88) = v35;
  *(v26 + 128) = *(v27 + 128);
  *(v26 + 129) = *(v27 + 129);
  *(v26 + 130) = *(v27 + 130);
  *(v26 + 131) = *(v27 + 131);
  *(v26 + 136) = *(v27 + 136);
  *(v26 + 144) = *(v27 + 144);
  *(v26 + 152) = *(v27 + 152);
  *(v26 + 160) = *(v27 + 160);
  v37 = ((v26 + 175) & 0xFFFFFFFFFFFFFFF8);
  v38 = ((v27 + 175) & 0xFFFFFFFFFFFFFFF8);
  *v37 = *v38;
  v37[1] = v38[1];

  return a1;
}

uint64_t getEnumTagSinglePayload for _PagingView(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = v12 - 1;
  if (v12 - 1 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v12 - 1;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v17 = v16 | 7;
  v18 = ((v16 + 16) & ~v16) + *(*(AssociatedTypeWitness - 8) + 64);
  v19 = (v16 | 7) + *(v6 + 64);
  if (v15 >= a2)
  {
    goto LABEL_33;
  }

  v20 = ((((v18 + (v19 & ~v17) + 55) & 0xFFFFFFFFFFFFFFF8) + 175) & 0xFFFFFFFFFFFFFFF8) + 16;
  v21 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2 - v15 + 1;
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
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_33;
      }
    }

LABEL_30:
    v27 = v25 - 1;
    if (v21)
    {
      v27 = 0;
      v28 = *a1;
    }

    else
    {
      v28 = 0;
    }

    return v15 + (v28 | v27) + 1;
  }

  if (v24)
  {
    v25 = *(a1 + v20);
    if (v25)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  if (v7 == v15)
  {
    v29 = *(v6 + 48);

    return v29(a1, v7, v5);
  }

  else
  {
    v30 = (a1 + v19) & ~v17;
    if (v13 == v15)
    {
      v31 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v11 & 0x80000000) != 0)
      {
        v33 = (*(v10 + 48))((v31 + v16 + 8) & ~v16);
      }

      else
      {
        v32 = *v31;
        if (v32 >= 0xFFFFFFFF)
        {
          LODWORD(v32) = -1;
        }

        v33 = v32 + 1;
      }

      if (v33 >= 2)
      {
        return v33 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v34 = *(((v30 + v18 + 55) & 0xFFFFFFFFFFFFFFF8) + 112);
      if (v34 >= 0xFFFFFFFF)
      {
        LODWORD(v34) = -1;
      }

      return (v34 + 1);
    }
  }
}

void storeEnumTagSinglePayload for _PagingView(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v32 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = v13 - 1;
  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v12 + 16) & ~v12) + *(v10 + 64);
  v18 = (v12 | 7) + *(v8 + 64);
  v19 = ((((v17 + (v18 & ~(v12 | 7)) + 55) & 0xFFFFFFFFFFFFFFF8) + 175) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 >= a3)
  {
    v22 = 0;
    v23 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (((((v17 + (v18 & ~(v12 | 7)) + 55) & 0xFFFFFFF8) + 175) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 1;
    }

    if (((((v17 + (v18 & ~(v12 | 7)) + 55) & 0xFFFFFFF8) + 175) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v25 = ~v16 + a2;
      bzero(a1, ((((v17 + (v18 & ~(v12 | 7)) + 55) & 0xFFFFFFFFFFFFFFF8) + 175) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v25;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        *(a1 + v19) = v24;
      }

      else
      {
        *(a1 + v19) = v24;
      }
    }

    else if (v22)
    {
      *(a1 + v19) = v24;
    }

    return;
  }

  if (((((v17 + (v18 & ~(v12 | 7)) + 55) & 0xFFFFFFF8) + 175) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = a3 - v16 + 1;
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

  v23 = a2 - v16;
  if (a2 > v16)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *(a1 + v19) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v19) = 0;
  }

  else if (v22)
  {
    *(a1 + v19) = 0;
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
  if (v9 == v16)
  {
    v26 = *(v32 + 56);

    v26(a1, a2, v9, v7);
    return;
  }

  v27 = (a1 + v18) & ~(v12 | 7);
  if (v14 != v16)
  {
    v29 = (v27 + v17 + 55) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) == 0)
    {
      *(v29 + 112) = (a2 - 1);
      return;
    }

    *(v29 + 136) = 0u;
    v30 = a2 & 0x7FFFFFFF;
    *(v29 + 152) = 0u;
    *(v29 + 120) = 0u;
    *(v29 + 104) = 0u;
    *(v29 + 88) = 0u;
    *(v29 + 72) = 0u;
    *(v29 + 56) = 0u;
    *(v29 + 40) = 0u;
    *(v29 + 24) = 0u;
    *(v29 + 8) = 0u;
    goto LABEL_59;
  }

  v28 = (a2 + 1);
  v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  if ((v11 & 0x80000000) == 0)
  {
    if ((v28 & 0x80000000) != 0)
    {
      v30 = (a2 - 0x7FFFFFFF);
    }

    else
    {
      v30 = a2;
    }

LABEL_59:
    *v29 = v30;
    return;
  }

  v31 = *(v10 + 56);

  v31((v12 + v29 + 8) & ~v12, v28);
}

uint64_t getEnumTagSinglePayload for PagingLayout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PagingLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PagingLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PagingLayout and conformance PagingLayout();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for State<CGFloat>()
{
  if (!lazy cache variable for type metadata for State<CGFloat>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<CGFloat>);
    }
  }
}

uint64_t type metadata completion function for _PagingView.ToPageOffset()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _PagingView.ToPageOffset(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v13 = *v11;
    v12 = v11[1];
    *(v10 + 25) = *(v11 + 25);
    *v10 = v13;
    v10[1] = v12;
    v14 = ((v3 + v5 + 55) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((a2 + v5 + 55) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *v15;
    *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for _PagingView.ToPageOffset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = v10[1];
  *(v9 + 25) = *(v10 + 25);
  *v9 = v11;
  v9[1] = v12;
  v13 = ((v7 + 55) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v8 + 55) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  *((v13 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for _PagingView.ToPageOffset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  v11 = *(v10 + 16);
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 16) = v11;
  *(v9 + 24) = *(v10 + 24);
  *(v9 + 32) = *(v10 + 32);
  *(v9 + 40) = *(v10 + 40);
  v12 = ((v7 + 55) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 55) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for _PagingView.ToPageOffset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = v10[1];
  *(v9 + 25) = *(v10 + 25);
  *v9 = v11;
  v9[1] = v12;
  v13 = ((v7 + 55) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v8 + 55) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  *((v13 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for _PagingView.ToPageOffset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  v11 = *(v10 + 16);
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 16) = v11;
  *(v9 + 24) = *(v10 + 24);
  *(v9 + 32) = *(v10 + 32);
  *(v9 + 40) = *(v10 + 40);
  v12 = ((v7 + 55) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 55) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for _PagingView.ToPageOffset(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((v6 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 2)
    {
      return v17 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for _PagingView.ToPageOffset(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((v8 + 55) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
          *(a1 + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(a1 + v9) = 0;
      }

      else if (v13)
      {
        *(a1 + v9) = 0;
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
      if (v6 < 0xFE)
      {
        v20 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          result = 0.0;
          *(v20 + 24) = 0u;
          *(v20 + 8) = 0u;
          *(v20 + 40) = 0;
          *v20 = a2 - 255;
        }

        else
        {
          *v20 = a2 + 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        v19();
      }

      return result;
    }
  }

  if (((((v8 + 55) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 55) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, ((((v8 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(a1 + v9) = v15;
    }

    else
    {
      *(a1 + v9) = v15;
    }
  }

  else if (v13)
  {
    *(a1 + v9) = v15;
  }

  return result;
}

SwiftUI::PlainListStyle __swiftcall PlainListStyle.init(isOutline:)(Swift::Bool isOutline)
{
  result.isOutline.value = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t static PlainListStyle._makeView<A>(value:inputs:)()
{
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>();
  type metadata accessor for SelectionManagerBox();
  lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>();
  swift_getWitnessTable();
  type metadata accessor for PlainListBody();
  type metadata accessor for _ListValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for PlainListStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

void type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>)
  {
    type metadata accessor for StyleContextWriter<PlainListStyleContext>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>);
    }
  }
}

void type metadata accessor for StyleContextWriter<PlainListStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextWriter<PlainListStyleContext>)
  {
    lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext();
    v0 = type metadata accessor for StyleContextWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextWriter<PlainListStyleContext>);
    }
  }
}

uint64_t static PlainListStyle._makeViewList<A>(value:inputs:)()
{
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>();
  type metadata accessor for SelectionManagerBox();
  lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>();
  swift_getWitnessTable();
  type metadata accessor for PlainListBody();
  type metadata accessor for _ListValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for PlainListStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t PlainListStyle.Body.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ListValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t PlainListStyle.Body.value.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v19 = type metadata accessor for SelectionManagerBox();
  type metadata accessor for Binding();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v24 = &type metadata for PlainListStyle;
  v25 = a2;
  v26 = &protocol witness table for PlainListStyle;
  v27 = a3;
  v11 = type metadata accessor for _ListValue();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v19 - v16;
  PlainListStyle.Body.base.getter(&v19 - v16);
  (*(v8 + 32))(v10, &v17[*(v11 + 52)], v7);
  PlainListStyle.Body.base.getter(v14);
  LOBYTE(v7) = *v14;
  (*(v12 + 8))(v14, v11);
  v21 = a2;
  v22 = a3;
  v23 = a1;
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>();
  lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>();
  swift_getWitnessTable();
  return PlainListBody.init(selection:isOutline:content:)(v10, v7, partial apply for closure #1 in PlainListStyle.Body.value.getter, v20);
}

uint64_t closure #1 in PlainListStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = &type metadata for PlainListStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for PlainListStyle;
  v8[3] = a3;
  v3 = type metadata accessor for _ListValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - v5;
  PlainListStyle.Body.base.getter(v8 - v5);
  return (*(v4 + 8))(v6, v3);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance PlainListStyle.Body<A>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>();
  type metadata accessor for SelectionManagerBox();
  lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>();
  swift_getWitnessTable();
  v2 = type metadata accessor for PlainListBody();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

unint64_t instantiation function for generic protocol witness table for PlainListStyleContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext();
  *(a1 + 8) = result;
  return result;
}

SwiftUI::DropConfiguration __swiftcall DropConfiguration.init(operation:)(SwiftUI::DropOperation operation)
{
  *v1 = *operation;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  result.operation = operation;
  return result;
}

uint64_t getEnumTagSinglePayload for DropConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && a1[17])
  {
    return (*a1 + 251);
  }

  v3 = *a1;
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DropConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

int *ProgressViewStyleConfiguration.init(value:label:currentValueLabel:actions:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ProgressViewValue(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = *a3;
  v15 = *a4;
  _s7SwiftUI17ProgressViewValueOWOcTm_0(a1, v12, type metadata accessor for ProgressViewValue);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _sSNy10Foundation4DateVGWOhTm_2(v12, type metadata accessor for ClosedRange<Date>);
    v16 = 0;
    v17 = 0;
    v18 = 1;
  }

  else
  {
    v17 = *v12;
    v18 = v12[8];
    v16 = v12[9];
  }

  outlined init with take of ProgressViewValue(a1, a5, type metadata accessor for ProgressViewValue);
  result = type metadata accessor for ProgressViewStyleConfiguration(0);
  v20 = a5 + result[5];
  *v20 = v17;
  *(v20 + 8) = v18;
  *(a5 + result[6]) = v16;
  *(a5 + result[7]) = v13;
  *(a5 + result[8]) = v14;
  *(a5 + result[9]) = v15;
  return result;
}

uint64_t ProgressViewStyleConfiguration.label.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ProgressViewStyleConfiguration(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ProgressViewStyleConfiguration.label.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ProgressViewStyleConfiguration(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t ProgressViewStyleConfiguration.currentValueLabel.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ProgressViewStyleConfiguration(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ProgressViewStyleConfiguration.currentValueLabel.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ProgressViewStyleConfiguration(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t ProgressViewStyleConfiguration.actions.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ProgressViewStyleConfiguration(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t ProgressViewStyleConfiguration.actions.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ProgressViewStyleConfiguration(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedProgressViewStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type ResolvedProgressViewStyle and conformance ResolvedProgressViewStyle, type metadata accessor for ResolvedProgressViewStyle);

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t View.progressViewStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProgressViewStyleModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

void *initializeBufferWithCopyOfBuffer for ProgressViewStyleConfiguration(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = type metadata accessor for Date();
      v9 = *(*(v8 - 8) + 16);
      v9(a1, a2, v8);
      type metadata accessor for ClosedRange<Date>();
      v9((a1 + *(v10 + 36)), (a2 + *(v10 + 36)), v8);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      *(a1 + *(v11 + 48)) = *(a2 + *(v11 + 48));
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }

    v13 = a3[5];
    v14 = a3[6];
    v15 = a1 + v13;
    v16 = a2 + v13;
    *v15 = *v16;
    v15[8] = v16[8];
    *(a1 + v14) = *(a2 + v14);
    v17 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    *(a1 + v17) = *(a2 + v17);
    *(a1 + a3[9]) = *(a2 + a3[9]);
  }

  return a1;
}

_BYTE *initializeWithCopy for ProgressViewStyleConfiguration(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    type metadata accessor for ClosedRange<Date>();
    v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    a1[*(v10 + 48)] = a2[*(v10 + 48)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  v11 = a3[5];
  v12 = a3[6];
  v13 = &a1[v11];
  v14 = &a2[v11];
  *v13 = *v14;
  v13[8] = v14[8];
  a1[v12] = a2[v12];
  v15 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v15] = a2[v15];
  a1[a3[9]] = a2[a3[9]];
  return a1;
}

_BYTE *assignWithCopy for ProgressViewStyleConfiguration(_BYTE *a1, _BYTE *a2, int *a3)
{
  if (a1 != a2)
  {
    _sSNy10Foundation4DateVGWOhTm_2(a1, type metadata accessor for ProgressViewValue);
    v6 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Date();
      v8 = *(*(v7 - 8) + 16);
      v8(a1, a2, v7);
      type metadata accessor for ClosedRange<Date>();
      v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      a1[*(v10 + 48)] = a2[*(v10 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v11 = a3[5];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = *v13;
  v12[8] = v13[8];
  *v12 = v14;
  a1[a3[6]] = a2[a3[6]];
  a1[a3[7]] = a2[a3[7]];
  a1[a3[8]] = a2[a3[8]];
  a1[a3[9]] = a2[a3[9]];
  return a1;
}

_BYTE *initializeWithTake for ProgressViewStyleConfiguration(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 32);
    v8(a1, a2, v7);
    type metadata accessor for ClosedRange<Date>();
    v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    a1[*(v10 + 48)] = a2[*(v10 + 48)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  v11 = a3[5];
  v12 = a3[6];
  v13 = &a1[v11];
  v14 = &a2[v11];
  *v13 = *v14;
  v13[8] = v14[8];
  a1[v12] = a2[v12];
  v15 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v15] = a2[v15];
  a1[a3[9]] = a2[a3[9]];
  return a1;
}

_BYTE *assignWithTake for ProgressViewStyleConfiguration(_BYTE *a1, _BYTE *a2, int *a3)
{
  if (a1 != a2)
  {
    _sSNy10Foundation4DateVGWOhTm_2(a1, type metadata accessor for ProgressViewValue);
    v6 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Date();
      v8 = *(*(v7 - 8) + 32);
      v8(a1, a2, v7);
      type metadata accessor for ClosedRange<Date>();
      v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      a1[*(v10 + 48)] = a2[*(v10 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v11 = a3[5];
  v12 = a3[6];
  v13 = &a1[v11];
  v14 = &a2[v11];
  *v13 = *v14;
  v13[8] = v14[8];
  a1[v12] = a2[v12];
  v15 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v15] = a2[v15];
  a1[a3[9]] = a2[a3[9]];
  return a1;
}

void *initializeBufferWithCopyOfBuffer for ResolvedProgressViewStyle(void *a1, void *a2)
{
  v4 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = v4;
    v7 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = type metadata accessor for Date();
      v9 = *(*(v8 - 8) + 16);
      v9(a1, a2, v8);
      type metadata accessor for ClosedRange<Date>();
      v9((a1 + *(v10 + 36)), (a2 + *(v10 + 36)), v8);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      *(a1 + *(v11 + 48)) = *(a2 + *(v11 + 48));
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }

    v13 = v6[5];
    v14 = a1 + v13;
    v15 = a2 + v13;
    *v14 = *v15;
    v14[8] = v15[8];
    *(a1 + v6[6]) = *(a2 + v6[6]);
    *(a1 + v6[7]) = *(a2 + v6[7]);
    *(a1 + v6[8]) = *(a2 + v6[8]);
    *(a1 + v6[9]) = *(a2 + v6[9]);
  }

  return a1;
}

_BYTE *initializeWithCopy for ResolvedProgressViewStyle(_BYTE *a1, _BYTE *a2)
{
  v4 = type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for Date();
    v6 = *(*(v5 - 8) + 16);
    v6(a1, a2, v5);
    type metadata accessor for ClosedRange<Date>();
    v6(&a1[*(v7 + 36)], &a2[*(v7 + 36)], v5);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v4 - 8) + 64));
  }

  v9 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v10 = v9[5];
  v11 = &a1[v10];
  v12 = &a2[v10];
  *v11 = *v12;
  v11[8] = v12[8];
  a1[v9[6]] = a2[v9[6]];
  a1[v9[7]] = a2[v9[7]];
  a1[v9[8]] = a2[v9[8]];
  a1[v9[9]] = a2[v9[9]];
  return a1;
}

_BYTE *assignWithCopy for ResolvedProgressViewStyle(_BYTE *a1, _BYTE *a2)
{
  if (a1 != a2)
  {
    _sSNy10Foundation4DateVGWOhTm_2(a1, type metadata accessor for ProgressViewValue);
    v4 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = type metadata accessor for Date();
      v6 = *(*(v5 - 8) + 16);
      v6(a1, a2, v5);
      type metadata accessor for ClosedRange<Date>();
      v6(&a1[*(v7 + 36)], &a2[*(v7 + 36)], v5);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      a1[*(v8 + 48)] = a2[*(v8 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v4 - 8) + 64));
    }
  }

  v9 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v10 = v9[5];
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = v12[8];
  *v11 = *v12;
  v11[8] = v13;
  a1[v9[6]] = a2[v9[6]];
  a1[v9[7]] = a2[v9[7]];
  a1[v9[8]] = a2[v9[8]];
  a1[v9[9]] = a2[v9[9]];
  return a1;
}

_BYTE *initializeWithTake for ResolvedProgressViewStyle(_BYTE *a1, _BYTE *a2)
{
  v4 = type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for Date();
    v6 = *(*(v5 - 8) + 32);
    v6(a1, a2, v5);
    type metadata accessor for ClosedRange<Date>();
    v6(&a1[*(v7 + 36)], &a2[*(v7 + 36)], v5);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v4 - 8) + 64));
  }

  v9 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v10 = v9[5];
  v11 = &a1[v10];
  v12 = &a2[v10];
  *v11 = *v12;
  v11[8] = v12[8];
  a1[v9[6]] = a2[v9[6]];
  a1[v9[7]] = a2[v9[7]];
  a1[v9[8]] = a2[v9[8]];
  a1[v9[9]] = a2[v9[9]];
  return a1;
}

_BYTE *assignWithTake for ResolvedProgressViewStyle(_BYTE *a1, _BYTE *a2)
{
  if (a1 != a2)
  {
    _sSNy10Foundation4DateVGWOhTm_2(a1, type metadata accessor for ProgressViewValue);
    v4 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = type metadata accessor for Date();
      v6 = *(*(v5 - 8) + 32);
      v6(a1, a2, v5);
      type metadata accessor for ClosedRange<Date>();
      v6(&a1[*(v7 + 36)], &a2[*(v7 + 36)], v5);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      a1[*(v8 + 48)] = a2[*(v8 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v4 - 8) + 64));
    }
  }

  v9 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v10 = v9[5];
  v11 = &a1[v10];
  v12 = &a2[v10];
  *v11 = *v12;
  v11[8] = v12[8];
  a1[v9[6]] = a2[v9[6]];
  a1[v9[7]] = a2[v9[7]];
  a1[v9[8]] = a2[v9[8]];
  a1[v9[9]] = a2[v9[9]];
  return a1;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFSd_s5NeverOytTg5227_s7SwiftUI0A27UIAccessibilityTextResolverV36resolveAccessibilitySpeechAttributes4into10speechAttr11environment7optionsySDySo21NSAttributedStringKeyaypGz_AA0ghI0VAA17EnvironmentValuesVAA0G4CoreO0D17ResolutionOptionsVtFZySdXEfU2_SDySo0rS3KeyaypGTf1cn_n(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = static NSAttributedStringKey.coreAXSpeechPitch.getter();
    if (*&a1 <= 1.0)
    {
      v5 = *&a1;
    }

    else
    {
      v5 = 1.0;
    }

    v6 = v5 + 1.0;
    if (*&a1 < -1.0)
    {
      v6 = 0.0;
    }

    v8[3] = MEMORY[0x1E69E63B0];
    *v8 = v6;
    specialized Dictionary.subscript.setter(v8, v4);
  }

  return a2 & 1;
}

void _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI33AccessibilityAnnouncementPriorityO_s5NeverOytTB503_s7c43UI0A27UIAccessibilityTextResolverV36resolvee161SpeechAttributes4into10speechAttr11environment7optionsySDySo21NSAttributedStringKeyaypGz_AA0ghI0VAA17EnvironmentValuesVAA0G4CoreO0D17ResolutionOptionsVtFZyAA0G20fG6OXEfU_SDySo0uV3KeyaypGTf1cn_n(unsigned __int8 a1)
{
  if (a1 != 3)
  {
    v2 = a1;
    closure #1 in static SwiftUIAccessibilityTextResolver.resolveAccessibilitySpeechAttributes(into:speechAttr:environment:options:)(&v2);
    if (v1)
    {
      __break(1u);
    }
  }
}

uint64_t ViewRendererHost.accessibilityNodes.getter()
{
  type metadata accessor for [AccessibilityNode](0);
  ViewRendererHost.updateViewGraph<A>(body:)();
  return v1;
}

void *specialized View.accessibilityHidden(_:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    AccessibilityProperties.init()();
    v3 = 0x400000004;
  }

  else
  {
    AccessibilityProperties.init()();
    v3 = 0x400000000;
  }

  v8 = v3;
  v9 = 0;
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v7);
  _sypSgMaTm_4(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v4 = swift_allocObject();
  result = memcpy((v4 + 16), __src, 0x128uLL);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

uint64_t AccessibilityViewGraph.readAndUpdate(graph:)(uint64_t a1)
{
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = *WeakValue;
  v5 = WeakValue[1];
  *(v1 + 24) = 1;
  if (*(v1 + 16) == v5 || (*(v1 + 16) = v5, *(v1 + 24) = 0, swift_beginAccess(), !swift_unknownObjectWeakLoadStrong()))
  {
  }

  else
  {
    v6 = *(a1 + 208);
    ObjectType = swift_getObjectType();
    v8 = type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for AccessibilityHost);
    v9 = *(v6 + 16);

    v9(v14, v8, v8, ObjectType, v6);
    swift_unknownObjectRelease();
    if (v14[0])
    {
      v10 = v14[1];
      v11 = swift_getObjectType();
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(v10 + 8))(partial apply for closure #1 in AccessibilityViewGraph.postUpdate(graph:list:), v12);
      swift_unknownObjectRelease();
    }
  }

  return v4;
}

uint64_t closure #1 in ViewGraph.setAccessibilityFocusNeedsUpdate()(uint64_t a1)
{
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  result = ViewGraph.subscript.getter();
  if (result)
  {
    *(result + 44) = 1;
    GraphHost.setNeedsUpdate(mayDeferUpdate:values:)();
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(a1 + 208);
      ObjectType = swift_getObjectType();
      (*(v3 + 24))(ObjectType, v3, 0.0);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t closure #1 in ViewRendererHost.accessibilityNodes.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  GraphHost.instantiateIfNeeded()();
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  if (ViewGraph.subscript.getter())
  {
    result = AccessibilityViewGraph.readAndUpdate(graph:)(a1);
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  *a2 = result;
  return result;
}

void closure #1 in static SwiftUIAccessibilityTextResolver.resolveAccessibilitySpeechAttributes(into:speechAttr:environment:options:)(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = static NSAttributedStringKey.coreAXSpeechAnnouncementPriority.getter();
  v3 = 0xD00000000000001ELL;
  v4 = "urrentValueLabel.";
  if (v1 == 1)
  {
    v4 = "UIAccessibilityPriorityHigh";
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (v1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = "UIAccessibilityPriorityDefault";
  }

  v7[3] = MEMORY[0x1E69E6158];
  v7[0] = v5;
  v7[1] = v6 | 0x8000000000000000;
  specialized Dictionary.subscript.setter(v7, v2);
}

uint64_t protocol witness for static ImageAccessibilityProvider.makeView(resolved:configuration:) in conformance SwiftUIImageAccessibilityProvider@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[9];
  v4 = a1[7];
  v33 = a1[8];
  v34 = v3;
  v5 = a1[9];
  v35[0] = a1[10];
  *(v35 + 11) = *(a1 + 171);
  v6 = a1[5];
  v8 = a1[3];
  v29 = a1[4];
  v7 = v29;
  v30 = v6;
  v9 = a1[5];
  v10 = a1[7];
  v31 = a1[6];
  v11 = v31;
  v32 = v10;
  v12 = a1[1];
  v26[0] = *a1;
  v26[1] = v12;
  v13 = a1[3];
  v15 = *a1;
  v14 = a1[1];
  v27 = a1[2];
  v16 = v27;
  v28 = v13;
  *(a3 + 128) = v33;
  *(a3 + 144) = v5;
  *(a3 + 160) = a1[10];
  *(a3 + 171) = *(a1 + 171);
  *(a3 + 64) = v7;
  *(a3 + 80) = v9;
  *(a3 + 96) = v11;
  *(a3 + 112) = v4;
  *a3 = v15;
  *(a3 + 16) = v14;
  v17 = *a2;
  v18 = a2[1];
  v19 = a2[2];
  v20 = a2[3];
  v21 = a2[4];
  v22 = *(a2 + 40);
  v23 = *(a2 + 41);
  *(a3 + 32) = v16;
  *(a3 + 48) = v8;
  *(a3 + 192) = v17;
  *(a3 + 200) = v18;
  *(a3 + 208) = v19;
  *(a3 + 216) = v20;
  *(a3 + 224) = v21;
  *(a3 + 232) = v22;
  *(a3 + 233) = v23;
  outlined init with copy of Image.Resolved(v26, &v25);

  return outlined copy of AccessibilityImageLabel?(v18, v19, v20);
}

void *protocol witness for ViewModifier.body(content:) in conformance SwiftUIPrivacyReductionAccessibilityProvider.Modifier@<X0>(void *a1@<X8>)
{
  result = specialized View.accessibilityHidden(_:)(*v1, v5);
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI30AccessibilityEnabledTechnologyOAH0K5FocusV6TargetVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i4UI30klm7O_AI0J5n2V6O4VTG5AOxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjNIsgnndzo_Tf1nc_n03_s7i4UI18kn48V8filtered3forAcA16ViewRendererHost_p_tFSbAA0C17lm5O_AC6O7VtXEfU_AH16ViewRendererHost_pTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_unknownObjectRetain();
    v10 = specialized closure #1 in _NativeDictionary.filter(_:)(v9, a2, a3, a4, a5);
    swift_unknownObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t assignWithCopy for AccessibilityViewGraph(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for AccessibilityViewGraph(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityViewGraph(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityViewGraph(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = result;
  v23 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = v12 | (v6 << 6);
    outlined init with copy of AccessibilityFocus.Target(*(a3 + 56) + 8 * v15, v25);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      ObjectType = swift_getObjectType();
      v19 = ViewRendererHost.shouldNotifyForAccessibilityFocus(of:)(v17, ObjectType, a5);

      result = outlined destroy of AccessibilityFocus.Target(v25);
      if (v19)
      {
        *(v22 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
          return specialized _NativeDictionary.extractDictionary(using:count:)(v22, a2, v23, a3);
        }
      }
    }

    else
    {
      result = outlined destroy of AccessibilityFocus.Target(v25);
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v22, a2, v23, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  v12 = swift_unknownObjectRetain_n();
  if (v9 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();
      swift_unknownObjectRetain();
      v13 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI30AccessibilityEnabledTechnologyOAH0K5FocusV6TargetVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i4UI30klm7O_AI0J5n2V6O4VTG5AOxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjNIsgnndzo_Tf1nc_n03_s7i4UI18kn48V8filtered3forAcA16ViewRendererHost_p_tFSbAA0C17lm5O_AC6O7VtXEfU_AH16ViewRendererHost_pTf1nnc_n(v15, v10, a1, a2, a3);
      MEMORY[0x18D0110E0](v15, -1, -1);
      swift_unknownObjectRelease_n();
      return v13;
    }
  }

  MEMORY[0x1EEE9AC00](v12);
  bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
  swift_unknownObjectRetain();
  v13 = specialized closure #1 in _NativeDictionary.filter(_:)(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a1, a2, a3);
  swift_unknownObjectRelease();
  if (v4)
  {
    swift_willThrow();
  }

  swift_unknownObjectRelease_n();
  return v13;
}

unint64_t lazy protocol witness table accessor for type SwiftUIHiddenAccessibilityProvider and conformance SwiftUIHiddenAccessibilityProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUIHiddenAccessibilityProvider and conformance SwiftUIHiddenAccessibilityProvider;
  if (!lazy protocol witness table cache variable for type SwiftUIHiddenAccessibilityProvider and conformance SwiftUIHiddenAccessibilityProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIHiddenAccessibilityProvider and conformance SwiftUIHiddenAccessibilityProvider);
  }

  return result;
}

void specialized static SwiftUIAccessibilityTextResolver.resolveTextStyleAttributes(_:textStyle:environment:)(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[36];
  if (v3 == 1)
  {
    return;
  }

  v4 = *a3;
  v5 = a3[1];
  v7 = a2[32];
  v6 = a2[33];
  v8 = a2[34];
  v9 = a2[35];
  if (v7 != 8)
  {
    v10 = static NSAttributedStringKey.coreAXTextualContext.getter();
    if (v7 > 3u)
    {
      v11 = MEMORY[0x1E69DD998];
      if (v7 != 6)
      {
        v11 = MEMORY[0x1E69DD9A0];
      }

      v12 = MEMORY[0x1E69DD988];
      if (v7 != 4)
      {
        v12 = MEMORY[0x1E69DD990];
      }

      if (v7 <= 5u)
      {
        v11 = v12;
      }
    }

    else if (v7 > 1u)
    {
      v11 = MEMORY[0x1E69DD978];
      if (v7 != 2)
      {
        v11 = MEMORY[0x1E69DD980];
      }
    }

    else
    {
      if (!v7)
      {
        v21 = 0u;
        v22 = 0u;
LABEL_19:
        specialized Dictionary.subscript.setter(&v21, v10);
        goto LABEL_20;
      }

      v11 = MEMORY[0x1E69DD970];
    }

    v13 = *v11;
    type metadata accessor for UIAccessibilityTextualContext(0);
    *(&v22 + 1) = v14;
    *&v21 = v13;
    goto LABEL_19;
  }

LABEL_20:
  if ((v7 & 0xFF00) != 0x700)
  {
    v15 = static NSAttributedStringKey.coreAXTextHeadingLevel.getter();
    *(&v22 + 1) = MEMORY[0x1E69E6810];
    *&v21 = BYTE1(v7);
    specialized Dictionary.subscript.setter(&v21, v15);
  }

  if (v3)
  {
    outlined copy of Text?(v6, v8, v9, v3);
    v16 = static NSAttributedStringKey.coreAXLabel.getter();
    *&v21 = v4;
    *(&v21 + 1) = v5;
    v20[1] = 0;
    v20[2] = 0;
    MEMORY[0x18D009CB0](v20);
    v17 = Text.resolveString(in:with:idiom:)();
    *(&v22 + 1) = MEMORY[0x1E69E6158];
    *&v21 = v17;
    *(&v21 + 1) = v18;
    specialized Dictionary.subscript.setter(&v21, v16);
    outlined consume of Text.Storage(v6, v8, v9 & 1);
  }

  if ((v7 & 0xFF0000) != 0x20000)
  {
    v19 = static NSAttributedStringKey.coreAXDurationTimeMMSS.getter();
    *(&v22 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v21) = BYTE2(v7) & 1;
    specialized Dictionary.subscript.setter(&v21, v19);
  }
}

void specialized static SwiftUIAccessibilityTextResolver.resolveAccessibilitySpeechAttributes(into:speechAttr:environment:options:)(uint64_t *a1, unsigned __int8 *a2, uint64_t *a3, int *a4)
{
  v43 = type metadata accessor for Locale();
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 1);
  v18 = a2[16];
  v19 = *a3;
  v41 = a3[1];
  v42 = v19;
  v44 = *a4;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI33AccessibilityAnnouncementPriorityO_s5NeverOytTB503_s7c43UI0A27UIAccessibilityTextResolverV36resolvee161SpeechAttributes4into10speechAttr11environment7optionsySDySo21NSAttributedStringKeyaypGz_AA0ghI0VAA17EnvironmentValuesVAA0G4CoreO0D17ResolutionOptionsVtFZyAA0G20fG6OXEfU_SDySo0uV3KeyaypGTf1cn_n(a2[17]);
  v20 = MEMORY[0x1E69E6370];
  if (v15 != 2)
  {
    v21 = static NSAttributedStringKey.coreAXSpeechPunctuation.getter();
    *(&v48 + 1) = v20;
    LOBYTE(v47) = v15 & 1;
    specialized Dictionary.subscript.setter(&v47, v21);
  }

  if (v16 != 2)
  {
    v22 = static NSAttributedStringKey.coreAXSpeechSpellOut.getter();
    *(&v48 + 1) = v20;
    LOBYTE(v47) = v16 & 1;
    specialized Dictionary.subscript.setter(&v47, v22);
  }

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFSd_s5NeverOytTg5227_s7SwiftUI0A27UIAccessibilityTextResolverV36resolveAccessibilitySpeechAttributes4into10speechAttr11environment7optionsySDySo21NSAttributedStringKeyaypGz_AA0ghI0VAA17EnvironmentValuesVAA0G4CoreO0D17ResolutionOptionsVtFZySdXEfU2_SDySo0rS3KeyaypGTf1cn_n(v17, v18);
  v23 = *a1;
  if (*(*a1 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E696A518]), (v25 & 1) != 0))
  {
    outlined init with copy of Any(*(v23 + 56) + 32 * v24, v46);
    outlined init with take of Any(v46, &v47);
    v26 = static NSAttributedStringKey.coreAXSpeechLanguage.getter();
    outlined init with copy of Any(&v47, v46);
    specialized Dictionary.subscript.setter(v46, v26);
    __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  else
  {
    v27 = static NSAttributedStringKey.coreAXSpeechLanguage.getter();
    v28 = v27;
    if (*(v23 + 16) && (v29 = specialized __RawDictionaryStorage.find<A>(_:)(v27), (v30 & 1) != 0))
    {
      outlined init with copy of Any(*(v23 + 56) + 32 * v29, &v47);

      _sypSgWOhTm_3(&v47, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    }

    else
    {

      v47 = 0u;
      v48 = 0u;
      _sypSgWOhTm_3(&v47, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
      v31 = v45;
      if ((v44 & 2) != 0)
      {
        *&v47 = v42;
        *(&v47 + 1) = v41;
        EnvironmentValues.locale.getter();
        static Locale.current.getter();
        _s7SwiftUI30AccessibilityRelationshipScopeCAcA11PropertyKeyAAWlTm_0(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
        v32 = v43;
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        v34 = *(v31 + 8);
        v34(v11, v32);
        v34(v14, v32);
        if ((v33 & 1) == 0)
        {
          *&v47 = v42;
          *(&v47 + 1) = v41;
          v35 = v40;
          EnvironmentValues.locale.getter();
          v36 = Locale.bcp47LanguageCode.getter();
          v38 = v37;
          v34(v35, v43);
          if (v38)
          {
            v39 = static NSAttributedStringKey.coreAXSpeechLanguage.getter();
            *(&v48 + 1) = MEMORY[0x1E69E6158];
            *&v47 = v36;
            *(&v47 + 1) = v38;
            specialized Dictionary.subscript.setter(&v47, v39);
          }
        }
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type SwiftUIPrivacyReductionAccessibilityProvider.Modifier and conformance SwiftUIPrivacyReductionAccessibilityProvider.Modifier()
{
  result = lazy protocol witness table cache variable for type SwiftUIPrivacyReductionAccessibilityProvider.Modifier and conformance SwiftUIPrivacyReductionAccessibilityProvider.Modifier;
  if (!lazy protocol witness table cache variable for type SwiftUIPrivacyReductionAccessibilityProvider.Modifier and conformance SwiftUIPrivacyReductionAccessibilityProvider.Modifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIPrivacyReductionAccessibilityProvider.Modifier and conformance SwiftUIPrivacyReductionAccessibilityProvider.Modifier);
  }

  return result;
}

uint64_t outlined destroy of AccessibilityStaticTextModifier<StyledTextContentView>.Configuration(uint64_t a1)
{
  type metadata accessor for AccessibilityStaticTextModifier<StyledTextContentView>.Configuration(0, &lazy cache variable for type metadata for AccessibilityStaticTextModifier<StyledTextContentView>.Configuration, MEMORY[0x1E697FD00], MEMORY[0x1E697FCF8], type metadata accessor for AccessibilityStaticTextModifier.Configuration);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of [Text.Modifier](uint64_t a1, uint64_t a2)
{
  _sypSgMaTm_4(0, &lazy cache variable for type metadata for [Text.Modifier], MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized static SwiftUILayoutAccessibilityProvider.makeAccessibility(inputs:outputs:)()
{
  if ((PreferencesOutputs.subscript.getter() & 0x100000000) != 0 || (PreferencesOutputs.subscript.getter() & 0x100000000) != 0)
  {
    result = PreferencesOutputs.subscript.getter();
    if ((result & 0x100000000) != 0)
    {
      return result;
    }
  }

  else
  {
    _ViewInputs.accessibilityEnabled.getter();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type LayoutScrollableTransform and conformance LayoutScrollableTransform();
    Attribute.init<A>(body:value:flags:update:)();
  }

  return PreferencesOutputs.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<StyledTextContentView, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<StyledTextContentView, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<StyledTextContentView, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for AccessibilityStaticTextModifier<StyledTextContentView>.Configuration(255, &lazy cache variable for type metadata for ModifiedContent<StyledTextContentView, AccessibilityAttachmentModifier>, MEMORY[0x1E697FD00], &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<StyledTextContentView, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image.Resolved, AccessibilityImageModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image.Resolved, AccessibilityImageModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image.Resolved, AccessibilityImageModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for AccessibilityStaticTextModifier<StyledTextContentView>.Configuration(255, &lazy cache variable for type metadata for ModifiedContent<Image.Resolved, AccessibilityImageModifier>, MEMORY[0x1E6981730], &type metadata for AccessibilityImageModifier, MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image.Resolved, AccessibilityImageModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<StyledTextContentView, AccessibilityAttachmentModifier>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, Text>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void type metadata accessor for ModifiedContent<_ViewModifier_Content<SwiftUIPrivacyReductionAccessibilityProvider.Modifier>, AccessibilityAttachmentModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SwiftUIPrivacyReductionAccessibilityProvider.Modifier>, AccessibilityAttachmentModifier>)
  {
    type metadata accessor for AccessibilityContainerResolver<AccessibilityChildBehavior.Host>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SwiftUIPrivacyReductionAccessibilityProvider.Modifier>, lazy protocol witness table accessor for type SwiftUIPrivacyReductionAccessibilityProvider.Modifier and conformance SwiftUIPrivacyReductionAccessibilityProvider.Modifier, &type metadata for SwiftUIPrivacyReductionAccessibilityProvider.Modifier, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SwiftUIPrivacyReductionAccessibilityProvider.Modifier>, AccessibilityAttachmentModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<SwiftUIPrivacyReductionAccessibilityProvider.Modifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<SwiftUIPrivacyReductionAccessibilityProvider.Modifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<SwiftUIPrivacyReductionAccessibilityProvider.Modifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for AccessibilityContainerResolver<AccessibilityChildBehavior.Host>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SwiftUIPrivacyReductionAccessibilityProvider.Modifier>, lazy protocol witness table accessor for type SwiftUIPrivacyReductionAccessibilityProvider.Modifier and conformance SwiftUIPrivacyReductionAccessibilityProvider.Modifier, &type metadata for SwiftUIPrivacyReductionAccessibilityProvider.Modifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<SwiftUIPrivacyReductionAccessibilityProvider.Modifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, unsigned __int8 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v73 = a8;
  v71 = a6;
  v72 = a7;
  v80 = a2;
  v81 = a5;
  v78 = a1;
  v79 = a4;
  v70 = a9;
  v67 = a22;
  v69 = a21;
  v63 = a20;
  v59 = a19;
  v68 = a18;
  v77 = a16;
  v66 = a15;
  v23 = a13;
  swift_getTupleTypeMetadata2();
  v24 = type metadata accessor for Binding();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v55 - v26;
  type metadata accessor for Binding<AttributedString>();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v76 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v55 - v32;
  v58 = *a10;
  v74 = a13;
  if (v31)
  {
    v34 = a11;
    v65 = a11;
    v35 = a12;
    v75 = a13;
    v64 = v31;
  }

  else
  {
    v36 = static Text.System.search.getter();
    v34 = a11;
    v65 = v36;
    v35 = v37;
    v75 = v38;
    v64 = v39;
    v31 = 0;
    v23 = v74;
  }

  v60 = v34;
  v61 = a12;
  v82 = v78;
  v83 = v80;
  v84 = a3;
  v85 = v79;
  v62 = v31;
  outlined copy of Text?(v34, a12, v23, v31);
  v57 = type metadata accessor for Binding();
  Binding.zip<A>(with:)();
  v40 = v59;
  v41 = v63;
  v42 = v67;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a17, v59, v63, v67);
  v82 = a17;
  v83 = v40;
  v84 = v41;
  v85 = v42;
  type metadata accessor for StringTokensToAttributedStringProjection();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  (*(v25 + 8))(v27, v24);
  v43 = outlined init with copy of Binding<AttributedString>(v33, v76);
  v55 = &v55;
  MEMORY[0x1EEE9AC00](v43);
  v44 = v33;
  v56 = v33;
  v45 = v68;
  v46 = v69;
  *(&v55 - 14) = a17;
  *(&v55 - 13) = v45;
  *(&v55 - 12) = v40;
  *(&v55 - 11) = v41;
  *(&v55 - 10) = v46;
  *(&v55 - 9) = v42;
  *(&v55 - 8) = v44;
  v47 = v65;
  *(&v55 - 7) = v65;
  v48 = v75 & 1;
  v49 = v35;
  v50 = v64;
  outlined copy of Text.Storage(v47, v49, v75 & 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  v82 = MEMORY[0x1E6981E70];
  v83 = AssociatedTypeWitness;
  v84 = v45;
  v85 = MEMORY[0x1E6981E60];
  v86 = v42;
  v87 = v46;
  v52 = type metadata accessor for TokenField();
  WitnessTable = swift_getWitnessTable();
  SearchModifier.init(text:isPresented:prompt:placement:control:)(v76, v71, v72, v73, v47, v49, v75 & 1, v50, v70, v58, partial apply for closure #1 in SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:), (&v55 - 16), v52, WitnessTable);

  outlined consume of Text.Storage(v47, v49, v48);

  outlined consume of Text?(v60, v61, v74, v62);
  (*(*(v57 - 8) + 8))(v81);
  return outlined destroy of Binding<AttributedString>?(v56, type metadata accessor for Binding<AttributedString>);
}

uint64_t closure #1 in SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v37 = a7;
  v38 = a5;
  v39 = a6;
  v40 = a8;
  v35[1] = a12;
  v35[2] = a13;
  v35[3] = a9;
  v36 = a1;
  type metadata accessor for Binding<AttributedString>();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[0] = v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = MEMORY[0x1E6981E70];
  v42 = AssociatedTypeWitness;
  v43 = a9;
  v44 = MEMORY[0x1E6981E60];
  v45 = a13;
  v46 = a12;
  v20 = type metadata accessor for TokenField();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v35 - v25;
  outlined init with copy of Binding<AttributedString>(v36, v18);
  v27 = v37;

  v28 = a2;
  v29 = a2;
  v30 = a3;
  outlined copy of Text.Storage(v29, a3, a4 & 1);
  v31 = v38;

  TokenField.init(valueType:text:prompt:token:label:)(v35[0], v28, v30, a4 & 1, v31, v39, v27, v23, destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v23, v20, WitnessTable);
  v33 = *(v21 + 8);
  v33(v23, v20);
  static ViewBuilder.buildExpression<A>(_:)(v26, v20, WitnessTable);
  return (v33)(v26, v20);
}

uint64_t SuggestedTokensView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v56 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v54 = v4;
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10[6];
  v12 = v10[7];
  v52 = v10[3];
  v53 = v11;
  v13 = type metadata accessor for SearchCompletion();
  v60 = *(a1 + 32);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v66 = v7;
  v67 = AssociatedTypeWitness;
  v51 = AssociatedTypeWitness;
  v61 = v13;
  v68 = v13;
  v49 = v60;
  v69 = v60;
  v70 = AssociatedConformanceWitness;
  v16 = type metadata accessor for ForEach();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v50 = v47 - v21;
  v22 = type metadata accessor for Optional();
  v57 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v58 = v47 - v26;
  if (SuggestedTokensView.shouldRenderTokens.getter(a1))
  {
    v27 = type metadata accessor for Binding();
    v47[1] = v9;
    MEMORY[0x18D00ACC0](v27);
    v28 = v56;
    (*(v56 + 16))(v5, v2, a1);
    v29 = *(v28 + 80);
    v48 = v17;
    v30 = v19;
    v31 = (v29 + 64) & ~v29;
    v32 = swift_allocObject();
    *&v33 = v7;
    v34 = v53;
    *(&v33 + 1) = v52;
    v35 = v60;
    *(v32 + 16) = v33;
    *(v32 + 32) = v35;
    *&v60 = v7;
    v36 = v55;
    *(v32 + 48) = v34;
    *(v32 + 56) = v36;
    (*(v28 + 32))(v32 + v31, v5, a1);
    WitnessTable = swift_getWitnessTable();
    ForEach<>.init(_:content:)();
    v62 = WitnessTable;
    v38 = swift_getWitnessTable();
    v39 = v50;
    static ViewBuilder.buildExpression<A>(_:)(v30, v16, v38);
    v40 = v48;
    v41 = *(v48 + 8);
    v41(v30, v16);
    static ViewBuilder.buildExpression<A>(_:)(v39, v16, v38);
    v41(v39, v16);
    (*(v40 + 32))(v24, v30, v16);
    (*(v40 + 56))(v24, 0, 1, v16);
  }

  else
  {
    (*(v17 + 56))(v24, 1, 1, v16);
    v65 = swift_getWitnessTable();
    swift_getWitnessTable();
  }

  v43 = v57;
  v42 = v58;
  (*(v57 + 16))(v58, v24, v22);
  v44 = *(v43 + 8);
  v44(v24, v22);
  v64 = swift_getWitnessTable();
  v63 = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v42, v22, v45);
  return (v44)(v42, v22);
}

uint64_t SuggestedTokensView.shouldRenderTokens.getter(uint64_t a1)
{
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<AttributedString>?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Semantics.v5.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    if (specialized Environment.wrappedValue.getter(*(v1 + *(a1 + 76)), *(v1 + *(a1 + 76) + 8)))
    {
      specialized Environment.wrappedValue.getter(v9);
      type metadata accessor for Binding<AttributedString>();
      v11 = v10;
      if ((*(*(v10 - 8) + 48))(v9, 1, v10) != 1)
      {
        MEMORY[0x18D00ACC0](v11);
        outlined destroy of Binding<AttributedString>?(v9, type metadata accessor for Binding<AttributedString>);
        v12 = AttributedString.isEmpty.getter();
        (*(v4 + 8))(v6, v3);
        return v12 & 1;
      }

      outlined destroy of Binding<AttributedString>?(v9, type metadata accessor for Binding<AttributedString>?);
    }

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

uint64_t closure #1 in SuggestedTokensView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a8;
  v30 = a6;
  v32 = a5;
  v29 = a3;
  v33 = a2;
  v34 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v29 - v14;
  v16 = type metadata accessor for SearchCompletion();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v29 - v22;
  (*(v13 + 16))(v15, a1, AssociatedTypeWitness, v21);
  v24 = v15;
  v25 = v31;
  AnyToken.init<A>(_:)(v24, AssociatedTypeWitness, v43);
  v44 = 1;
  v35 = v29;
  v36 = a4;
  v37 = v32;
  v38 = v30;
  v39 = a7;
  v40 = v25;
  v41 = v33;
  v42 = a1;
  SearchCompletion.init(kind:label:)(v43, partial apply for closure #1 in closure #1 in SuggestedTokensView.body.getter, v19);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v19, v16, WitnessTable);
  v27 = *(v17 + 8);
  v27(v19, v16);
  static ViewBuilder.buildExpression<A>(_:)(v23, v16, WitnessTable);
  return v27(v23, v16);
}

uint64_t closure #1 in closure #1 in SuggestedTokensView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v26 - v15;
  v26[0] = v17;
  v26[1] = v18;
  v26[2] = v19;
  v26[3] = v20;
  v26[4] = v21;
  v26[5] = v22;
  v23 = type metadata accessor for SuggestedTokensView();
  (*(a1 + *(v23 + 68)))(a2);
  static ViewBuilder.buildExpression<A>(_:)(v13, a4, a7);
  v24 = *(v11 + 8);
  v24(v13, a4);
  static ViewBuilder.buildExpression<A>(_:)(v16, a4, a7);
  return (v24)(v16, a4);
}

uint64_t SuggestedTokensView.init(suggestedTokens:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Binding();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for SuggestedTokensView();
  v10 = (a4 + v9[17]);
  *v10 = a2;
  v10[1] = a3;
  v11 = v9[18];
  *(a4 + v11) = swift_getKeyPath();
  type metadata accessor for Environment<Binding<AttributedString>?>.Content(0, &lazy cache variable for type metadata for Environment<Binding<AttributedString>?>.Content, type metadata accessor for Binding<AttributedString>?, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v12 = a4 + v9[19];
  result = swift_getKeyPath();
  *v12 = result;
  *(v12 + 8) = 0;
  return result;
}

uint64_t View.searchable<A, B>(text:tokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v60 = a7;
  v61 = a8;
  v51 = a6;
  v52 = a5;
  v56 = a2;
  v57 = a4;
  v62 = a3;
  v63 = a9;
  v58 = a11;
  v59 = a10;
  v54 = a12;
  v55 = a13;
  v65 = a1;
  v66 = a17;
  v53 = a18;
  v64 = a14;
  v21 = type metadata accessor for Binding();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v43 - v23;
  v47 = &v43 - v23;
  v44 = a19;
  v46 = a15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67[0] = MEMORY[0x1E6981E70];
  v67[1] = AssociatedTypeWitness;
  v67[2] = a16;
  v67[3] = MEMORY[0x1E6981E60];
  v45 = a16;
  v67[4] = a21;
  v67[5] = a20;
  v43 = a21;
  type metadata accessor for TokenField();
  swift_getWitnessTable();
  v49 = type metadata accessor for SearchModifier();
  v50 = *(v49 - 8);
  v26 = MEMORY[0x1EEE9AC00](v49);
  v48 = &v43 - v27;
  v28 = *v51;
  (*(v22 + 16))(v24, v52, v21, v26);
  LOBYTE(v67[0]) = v28;
  v29 = swift_allocObject();
  v29[2] = v64;
  v29[3] = a15;
  v30 = v66;
  v29[4] = a16;
  v29[5] = v30;
  v32 = v53;
  v31 = v54;
  v29[6] = v53;
  v29[7] = a19;
  v29[8] = a20;
  v29[9] = a21;
  v33 = v55;
  v29[10] = v31;
  v29[11] = v33;

  v34 = v56;

  v35 = v57;

  v36 = v60;
  v37 = v61;
  v38 = v58;
  v39 = v59;
  outlined copy of Text?(v60, v61, v59, v58);

  v40 = v48;
  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v65, v34, v62, v35, v47, 0, 0, 0, v48, v67, v36, v37, v39, v38, partial apply for closure #1 in View.searchable<A, B>(text:tokens:placement:prompt:token:), v29, v46, v45, v32, v44, a20, v43);
  v41 = v49;
  MEMORY[0x18D00A570](v40, v64, v49, v66);
  return (*(v50 + 8))(v40, v41);
}

uint64_t View.searchable<A, B>(text:editableTokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v60 = a9;
  v54 = a7;
  v55 = a8;
  v47 = a6;
  v48 = a5;
  v50 = a2;
  v51 = a4;
  v59 = a3;
  v56 = a12;
  v52 = a13;
  v49 = a10;
  v43 = a20;
  v42 = a21;
  v58 = a17;
  v44 = a16;
  v53 = a18;
  v46 = a19;
  v57 = a14;
  v45 = a15;
  v22 = type metadata accessor for Binding();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v41 - v24;
  v41 = &v41 - v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61[0] = MEMORY[0x1E6981E70];
  v61[1] = AssociatedTypeWitness;
  v61[2] = a16;
  v61[3] = MEMORY[0x1E6981E60];
  v61[4] = a21;
  v61[5] = a20;
  type metadata accessor for TokenField();
  swift_getWitnessTable();
  v27 = type metadata accessor for SearchModifier();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v41 - v30;
  v32 = *v47;
  (*(v23 + 16))(v25, v48, v22, v29);
  LOBYTE(v61[0]) = v32;
  v33 = a1;

  v34 = v50;

  v35 = v51;

  v37 = v54;
  v36 = v55;
  v38 = v49;
  outlined copy of Text?(v54, v55, v49, a11);

  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v33, v34, v59, v35, v41, 0, 0, 0, v31, v61, v37, v36, v38, a11, v56, v39, v45, v44, v53, v46, v43, v42);
  MEMORY[0x18D00A570](v31, v57, v27, v58);
  return (*(v28 + 8))(v31, v27);
}

uint64_t View.searchable<A, B>(text:tokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v57 = a8;
  v58 = a7;
  v49 = a6;
  v50 = a5;
  v66 = a4;
  v64 = a3;
  v44 = a2;
  v45 = a1;
  v65 = a9;
  v62 = a18;
  v63 = a13;
  v59 = a14;
  v60 = a17;
  LODWORD(v56) = a10;
  v61 = a12;
  v52 = a11;
  v48 = a21;
  v55 = a19;
  v47 = a16;
  v51 = a15;
  v21 = type metadata accessor for Binding();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v44 - v23;
  v46 = &v44 - v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67[0] = MEMORY[0x1E6981E70];
  v67[1] = AssociatedTypeWitness;
  v67[2] = a16;
  v67[3] = MEMORY[0x1E6981E60];
  v67[4] = a21;
  v67[5] = a20;
  type metadata accessor for TokenField();
  swift_getWitnessTable();
  v53 = type metadata accessor for SearchModifier();
  v54 = *(v53 - 8);
  v26 = MEMORY[0x1EEE9AC00](v53);
  v28 = &v44 - v27;
  v29 = *v49;
  (*(v22 + 16))(v24, v50, v21, v26);
  LOBYTE(v67[0]) = v29;

  v30 = Text.init(_:tableName:bundle:comment:)();
  v57 = v31;
  v58 = v30;
  v56 = v32;
  v52 = v33 & 1;
  v34 = swift_allocObject();
  v36 = v59;
  v35 = v60;
  v37 = v51;
  v34[2] = v59;
  v34[3] = v37;
  v38 = v47;
  v34[4] = v47;
  v34[5] = v35;
  v39 = v62;
  v40 = v55;
  v34[6] = v62;
  v34[7] = v40;
  v41 = v48;
  v34[8] = a20;
  v34[9] = v41;
  v34[10] = v61;
  v34[11] = v63;

  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v45, v44, v64, v66, v46, 0, 0, 0, v28, v67, v58, v57, v52, v56, partial apply for closure #1 in View.searchable<A, B>(text:tokens:placement:prompt:token:), v34, v37, v38, v39, v40, a20, v41);
  v42 = v53;
  MEMORY[0x18D00A570](v28, v36, v53, v35);
  return (*(v54 + 8))(v28, v42);
}

uint64_t View.searchable<A, B>(text:editableTokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v55 = a8;
  v56 = a7;
  v48 = a6;
  v49 = a5;
  v52 = a2;
  v53 = a4;
  v60 = a3;
  v44 = a1;
  v62 = a9;
  v63 = a17;
  v61 = a14;
  v57 = a13;
  v58 = a18;
  v54 = a10;
  v59 = a12;
  v45 = a21;
  v46 = a20;
  v51 = a19;
  v47 = a16;
  v50 = a15;
  v21 = type metadata accessor for Binding();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v43 - v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64[0] = MEMORY[0x1E6981E70];
  v64[1] = AssociatedTypeWitness;
  v64[2] = a16;
  v64[3] = MEMORY[0x1E6981E60];
  v64[4] = a21;
  v64[5] = a20;
  type metadata accessor for TokenField();
  swift_getWitnessTable();
  v26 = type metadata accessor for SearchModifier();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v43 - v29;
  v31 = *v48;
  (*(v22 + 16))(v24, v49, v21, v28);
  LOBYTE(v64[0]) = v31;

  v32 = v52;

  v33 = v53;

  v34 = Text.init(_:tableName:bundle:comment:)();
  v36 = v35;
  v38 = v37;
  v40 = v39 & 1;

  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v44, v32, v60, v33, v24, 0, 0, 0, v30, v64, v34, v36, v40, v38, v59, v41, v50, v47, v58, v51, v46, v45);
  MEMORY[0x18D00A570](v30, v61, v26, v63);
  return (*(v27 + 8))(v30, v26);
}

uint64_t View.searchable<A, B, C>(text:tokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v72 = a1;
  v69 = a8;
  v70 = a3;
  v62 = a5;
  v63 = a7;
  v61 = a6;
  v73 = a4;
  v74 = a2;
  v71 = a9;
  v68 = a10;
  v66 = a11;
  v64 = a19;
  v54 = a18;
  v55 = a20;
  v67 = a16;
  v59 = a17;
  v65 = a15;
  v60 = a14;
  v20 = *(a14 - 8);
  v53 = a13;
  MEMORY[0x1EEE9AC00](a1);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a12;
  v23 = type metadata accessor for Binding();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v51 - v25;
  v52 = &v51 - v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75[0] = MEMORY[0x1E6981E70];
  v75[1] = AssociatedTypeWitness;
  v75[2] = a13;
  v75[3] = MEMORY[0x1E6981E60];
  v75[4] = a20;
  v75[5] = a18;
  type metadata accessor for TokenField();
  swift_getWitnessTable();
  v57 = type metadata accessor for SearchModifier();
  v58 = *(v57 - 8);
  v28 = MEMORY[0x1EEE9AC00](v57);
  v30 = &v51 - v29;
  v31 = *v61;
  (*(v24 + 16))(v26, v62, v23, v28);
  LOBYTE(v75[0]) = v31;
  v32 = v60;
  (*(v20 + 16))(v22, v63, v60);

  v33 = v32;
  v34 = v64;
  v35 = Text.init<A>(_:)();
  v62 = v36;
  v63 = v35;
  v61 = v37;
  v51 = v38 & 1;
  v39 = swift_allocObject();
  v41 = v65;
  v40 = v66;
  v42 = v56;
  v39[2] = v66;
  v39[3] = v42;
  v43 = v53;
  v39[4] = v53;
  v39[5] = v33;
  v44 = v67;
  v39[6] = v41;
  v39[7] = v44;
  v45 = v59;
  v46 = v54;
  v39[8] = v59;
  v39[9] = v46;
  v39[10] = v34;
  v47 = v55;
  v48 = v69;
  v39[11] = v55;
  v39[12] = v48;
  v39[13] = v68;

  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v72, v74, v70, v73, v52, 0, 0, 0, v30, v75, v63, v62, v51, v61, partial apply for closure #1 in View.searchable<A, B, C>(text:tokens:placement:prompt:token:), v39, v42, v43, v44, v45, v46, v47);
  v49 = v57;
  MEMORY[0x18D00A570](v30, v40, v57, v41);
  return (*(v58 + 8))(v30, v49);
}

uint64_t View.searchable<A, B, C>(text:editableTokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v63 = a8;
  v64 = a3;
  v57 = a7;
  v58 = a2;
  v54 = a6;
  v55 = a5;
  v56 = a1;
  v66 = a9;
  v61 = a4;
  v62 = a10;
  v59 = a18;
  v49 = a19;
  v48 = a20;
  v65 = a15;
  v50 = a14;
  v53 = a13;
  v20 = *(a13 - 8);
  v60 = a16;
  v52 = a17;
  MEMORY[0x1EEE9AC00](a1);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a12;
  v23 = type metadata accessor for Binding();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v46 - v25;
  v47 = &v46 - v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68[0] = MEMORY[0x1E6981E70];
  v68[1] = AssociatedTypeWitness;
  v68[2] = a14;
  v68[3] = MEMORY[0x1E6981E60];
  v68[4] = a20;
  v68[5] = a19;
  type metadata accessor for TokenField();
  swift_getWitnessTable();
  v28 = type metadata accessor for SearchModifier();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v46 - v31;
  v33 = *v54;
  (*(v24 + 16))(v26, v55, v23, v30);
  LOBYTE(v68[0]) = v33;
  (*(v20 + 16))(v22, v57, v53);
  v34 = v56;

  v35 = v58;

  v36 = v61;

  v37 = Text.init<A>(_:)();
  v39 = v38;
  v41 = v40;
  v43 = v42 & 1;

  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v34, v35, v64, v36, v47, 0, 0, 0, v32, v68, v37, v39, v43, v41, v63, v44, v51, v50, v60, v52, v49, v48);
  MEMORY[0x18D00A570](v32, v67, v28, v65);
  return (*(v29 + 8))(v32, v28);
}

uint64_t View.searchable<A, B>(text:tokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v69 = a8;
  v67 = a6;
  v68 = a7;
  v57 = a5;
  v70 = a3;
  v71 = a9;
  v75 = a1;
  v65 = a12;
  v66 = a4;
  v64 = a13;
  v62 = a2;
  v63 = a14;
  v61 = a15;
  v72 = a20;
  v73 = a21;
  v60 = a16;
  v52 = a17;
  v74 = a11;
  v56 = a10;
  v53 = a22;
  v24 = type metadata accessor for Binding();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v48 - v26;
  v54 = &v48 - v26;
  v51 = a18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76[0] = MEMORY[0x1E6981E70];
  v76[1] = AssociatedTypeWitness;
  v76[2] = a19;
  v76[3] = MEMORY[0x1E6981E60];
  v50 = a19;
  v76[4] = a24;
  v76[5] = a23;
  v48 = a24;
  v49 = a23;
  type metadata accessor for TokenField();
  swift_getWitnessTable();
  v58 = type metadata accessor for SearchModifier();
  v59 = *(v58 - 8);
  v29 = MEMORY[0x1EEE9AC00](v58);
  v55 = &v48 - v30;
  v31 = *v56;
  (*(v25 + 16))(v27, v57, v24, v29);
  LOBYTE(v76[0]) = v31;
  v32 = swift_allocObject();
  v32[2] = a17;
  v32[3] = a18;
  v33 = v72;
  v34 = v73;
  v32[4] = a19;
  v32[5] = v33;
  v35 = v53;
  v32[6] = v34;
  v32[7] = v35;
  v32[8] = a23;
  v32[9] = a24;
  v36 = v60;
  v32[10] = v61;
  v32[11] = v36;

  v37 = v62;

  v38 = v66;

  v39 = v64;
  v40 = v65;
  v41 = v63;
  outlined copy of Text?(v74, v65, v64, v63);
  v42 = v67;

  v43 = v68;

  v47 = v32;
  v44 = v55;
  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v75, v37, v70, v38, v54, v42, v43, v69 & 1, v55, v76, v74, v40, v39, v41, partial apply for closure #1 in View.searchable<A, B>(text:tokens:placement:prompt:token:), v47, v51, v50, v73, v35, v49, v48);
  v45 = v58;
  MEMORY[0x18D00A570](v44, v52, v58, v72);
  return (*(v59 + 8))(v44, v45);
}

uint64_t View.searchable<A, B>(text:editableTokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v65 = a8;
  v61 = a6;
  v62 = a7;
  v54 = a5;
  v58 = a2;
  v59 = a4;
  v66 = a3;
  v45 = a1;
  v68 = a9;
  v69 = a20;
  v67 = a17;
  v60 = a16;
  v56 = a13;
  v57 = a12;
  v63 = a21;
  v64 = a15;
  v55 = a14;
  v50 = a10;
  v47 = a24;
  v48 = a23;
  v53 = a22;
  v49 = a19;
  v52 = a18;
  v24 = type metadata accessor for Binding();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v44 - v26;
  v46 = &v44 - v26;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70[0] = MEMORY[0x1E6981E70];
  v70[1] = AssociatedTypeWitness;
  v70[2] = a19;
  v70[3] = MEMORY[0x1E6981E60];
  v70[4] = a24;
  v70[5] = a23;
  type metadata accessor for TokenField();
  swift_getWitnessTable();
  v51 = type metadata accessor for SearchModifier();
  v29 = *(v51 - 8);
  v30 = MEMORY[0x1EEE9AC00](v51);
  v32 = &v44 - v31;
  v33 = *v50;
  (*(v25 + 16))(v27, v54, v24, v30);
  LOBYTE(v70[0]) = v33;

  v34 = v58;

  v35 = v59;

  v36 = v56;
  v37 = v57;
  v38 = v55;
  outlined copy of Text?(a11, v57, v56, v55);
  v39 = v61;

  v40 = v62;

  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v45, v34, v66, v35, v46, v39, v40, v65 & 1, v32, v70, a11, v37, v36, v38, v64, v41, v52, v49, v63, v53, v48, v47);
  v42 = v51;
  MEMORY[0x18D00A570](v32, v67, v51, v69);
  return (*(v29 + 8))(v32, v42);
}

uint64_t View.searchable<A, B>(text:tokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v71 = a8;
  v69 = a6;
  v70 = a7;
  v58 = a5;
  v76 = a4;
  v72 = a3;
  v52 = a2;
  v53 = a1;
  v73 = a9;
  v67 = a21;
  v68 = a16;
  v74 = a17;
  v75 = a20;
  LODWORD(v63) = a13;
  v66 = a15;
  v60 = a14;
  v59 = a12;
  v62 = a11;
  v51 = a10;
  v54 = a23;
  v61 = a22;
  v57 = a18;
  v24 = type metadata accessor for Binding();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v50 - v26;
  v55 = &v50 - v26;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77[0] = MEMORY[0x1E6981E70];
  v77[1] = AssociatedTypeWitness;
  v77[2] = a19;
  v77[3] = MEMORY[0x1E6981E60];
  v77[4] = a24;
  v77[5] = a23;
  type metadata accessor for TokenField();
  swift_getWitnessTable();
  v29 = type metadata accessor for SearchModifier();
  v30 = *(v29 - 8);
  v64 = v29;
  v65 = v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v56 = &v50 - v32;
  v33 = *v51;
  (*(v25 + 16))(v27, v58, v24, v31);
  LOBYTE(v77[0]) = v33;

  v63 = Text.init(_:tableName:bundle:comment:)();
  v62 = v34;
  v60 = v35;
  v59 = v36 & 1;
  v37 = swift_allocObject();
  v38 = v57;
  v37[2] = v74;
  v37[3] = v38;
  v39 = v75;
  v37[4] = a19;
  v37[5] = v39;
  v40 = v67;
  v41 = v61;
  v37[6] = v67;
  v37[7] = v41;
  v42 = v54;
  v37[8] = v54;
  v37[9] = a24;
  v44 = v68;
  v43 = v69;
  v37[10] = v66;
  v37[11] = v44;

  v45 = v70;

  v49 = v38;
  v46 = v56;
  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v53, v52, v72, v76, v55, v43, v45, v71 & 1, v56, v77, v63, v62, v59, v60, partial apply for closure #1 in View.searchable<A, B>(text:tokens:isPresented:placement:prompt:token:), v37, v49, a19, v40, v41, v42, a24);
  v47 = v64;
  MEMORY[0x18D00A570](v46, v74, v64, v75);
  return (*(v65 + 8))(v46, v47);
}

uint64_t View.searchable<A, B>(text:editableTokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v67 = a8;
  v63 = a6;
  v64 = a7;
  v54 = a5;
  v47 = a4;
  v68 = a3;
  v58 = a2;
  v48 = a1;
  v70 = a9;
  v71 = a20;
  v69 = a17;
  v62 = a16;
  v61 = a13;
  v65 = a21;
  v66 = a15;
  v57 = a14;
  v55 = a12;
  v60 = a11;
  v50 = a10;
  v51 = a24;
  v52 = a23;
  v59 = a22;
  v53 = a19;
  v56 = a18;
  v24 = type metadata accessor for Binding();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v47 - v26;
  v49 = &v47 - v26;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v72[0] = MEMORY[0x1E6981E70];
  v72[1] = AssociatedTypeWitness;
  v72[2] = a19;
  v72[3] = MEMORY[0x1E6981E60];
  v72[4] = a24;
  v72[5] = a23;
  type metadata accessor for TokenField();
  swift_getWitnessTable();
  v29 = type metadata accessor for SearchModifier();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v47 - v32;
  v34 = *v50;
  (*(v25 + 16))(v27, v54, v24, v31);
  LOBYTE(v72[0]) = v34;

  v35 = v58;

  v36 = Text.init(_:tableName:bundle:comment:)();
  v38 = v37;
  v40 = v39;
  v42 = v41 & 1;
  v43 = v63;

  v44 = v64;

  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v48, v35, v68, v47, v49, v43, v44, v67 & 1, v33, v72, v36, v38, v42, v40, v66, v45, v56, v53, v65, v59, v52, v51);
  MEMORY[0x18D00A570](v33, v69, v29, v71);
  return (*(v30 + 8))(v33, v29);
}

uint64_t View.searchable<A, B, C>(text:tokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v73 = a8;
  v71 = a6;
  v72 = a7;
  v64 = a5;
  v78 = a4;
  v79 = a2;
  v74 = a3;
  v75 = a9;
  v80 = a1;
  v69 = a12;
  v70 = a13;
  v68 = a19;
  v77 = a18;
  v63 = a11;
  v60 = a10;
  v67 = a22;
  v57 = a23;
  v56 = a21;
  v61 = a20;
  v55 = a16;
  v62 = a17;
  v23 = *(a17 - 8);
  v76 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Binding();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v53 - v28;
  v58 = &v53 - v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v81[0] = MEMORY[0x1E6981E70];
  v81[1] = AssociatedTypeWitness;
  v81[2] = a16;
  v81[3] = MEMORY[0x1E6981E60];
  v81[4] = a23;
  v81[5] = a21;
  type metadata accessor for TokenField();
  swift_getWitnessTable();
  v65 = type metadata accessor for SearchModifier();
  v66 = *(v65 - 8);
  v31 = MEMORY[0x1EEE9AC00](v65);
  v59 = &v53 - v32;
  v33 = *v60;
  (*(v27 + 16))(v29, v64, v26, v31);
  LOBYTE(v81[0]) = v33;
  v34 = v62;
  (*(v23 + 16))(v25, v63, v62);

  v35 = v67;
  v64 = Text.init<A>(_:)();
  v63 = v36;
  v60 = v37;
  v54 = v38 & 1;
  v39 = swift_allocObject();
  v39[2] = v76;
  v39[3] = a15;
  v40 = v55;
  v39[4] = v55;
  v39[5] = v34;
  v41 = v68;
  v39[6] = v77;
  v39[7] = v41;
  v42 = v61;
  v43 = v56;
  v39[8] = v61;
  v39[9] = v43;
  v44 = v57;
  v39[10] = v35;
  v39[11] = v44;
  v45 = v70;
  v39[12] = v69;
  v39[13] = v45;
  v46 = v71;

  v47 = v72;

  v48 = v59;
  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v80, v79, v74, v78, v58, v46, v47, v73 & 1, v59, v81, v64, v63, v54, v60, partial apply for closure #1 in View.searchable<A, B, C>(text:tokens:isPresented:placement:prompt:token:), v39, a15, v40, v41, v42, v43, v44);
  v49 = v48;
  v50 = v48;
  v51 = v65;
  MEMORY[0x18D00A570](v49, v76, v65, v77);
  return (*(v66 + 8))(v50, v51);
}

uint64_t closure #1 in View.searchable<A, B, C>(text:tokens:placement:prompt:token:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X5>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[0] = a1;
  v21[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v21 - v9;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v21 - v16;
  v18 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v18);
  (v21[0])(v10);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v14, a2, a6);
  v19 = *(v11 + 8);
  v19(v14, a2);
  static ViewBuilder.buildExpression<A>(_:)(v17, a2, a6);
  return (v19)(v17, a2);
}

uint64_t View.searchable<A, B, C>(text:editableTokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v71 = a8;
  v66 = a6;
  v67 = a7;
  v61 = a5;
  v72 = a3;
  v73 = a9;
  v75 = a2;
  v62 = a1;
  v74 = a18;
  v68 = a19;
  v70 = a12;
  v64 = a4;
  v65 = a13;
  v60 = a11;
  v57 = a10;
  v53 = a22;
  v52 = a23;
  v63 = a21;
  v58 = a20;
  v54 = a17;
  v59 = a16;
  v23 = *(a16 - 8);
  v69 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a15;
  v26 = type metadata accessor for Binding();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v50 - v28;
  v51 = &v50 - v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76[0] = MEMORY[0x1E6981E70];
  v76[1] = AssociatedTypeWitness;
  v76[2] = a17;
  v76[3] = MEMORY[0x1E6981E60];
  v76[4] = a23;
  v76[5] = a22;
  type metadata accessor for TokenField();
  swift_getWitnessTable();
  v55 = type metadata accessor for SearchModifier();
  v31 = *(v55 - 8);
  v32 = MEMORY[0x1EEE9AC00](v55);
  v34 = &v50 - v33;
  v35 = *v57;
  (*(v27 + 16))(v29, v61, v26, v32);
  LOBYTE(v76[0]) = v35;
  (*(v23 + 16))(v25, v60, v59);
  v36 = v62;

  v37 = v64;

  v38 = Text.init<A>(_:)();
  v40 = v39;
  v42 = v41;
  v44 = v43 & 1;
  v45 = v66;

  v46 = v67;

  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v36, v75, v72, v37, v51, v45, v46, v71 & 1, v34, v76, v38, v40, v44, v42, v70, v47, v56, v54, v68, v58, v53, v52);
  v48 = v55;
  MEMORY[0x18D00A570](v34, v69, v55, v74);
  return (*(v31 + 8))(v34, v48);
}

uint64_t View.searchable<A, B>(text:tokens:suggestedTokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v74 = a8;
  v66 = a7;
  v77 = a6;
  v67 = a5;
  v81 = a4;
  v76 = a3;
  v82 = a2;
  v55 = a1;
  v78 = a9;
  v73 = a10;
  v72 = a11;
  v71 = a12;
  v83 = a13;
  v69 = a21;
  v68 = a20;
  v80 = a14;
  v79 = a18;
  v64 = type metadata accessor for Binding();
  v23 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v25 = &v53 - v24;
  v59 = &v53 - v24;
  v60 = a19;
  v54 = a16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v99 = MEMORY[0x1E6981E70];
  v100 = AssociatedTypeWitness;
  v101 = a17;
  v102 = MEMORY[0x1E6981E60];
  v53 = a17;
  v103 = a23;
  v104 = a22;
  type metadata accessor for TokenField();
  swift_getWitnessTable();
  v63 = type metadata accessor for SearchModifier();
  v65 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v53 - v27;
  v58 = a15;
  v70 = type metadata accessor for ModifiedContent();
  v75 = *(v70 - 8);
  v28 = MEMORY[0x1EEE9AC00](v70);
  v61 = &v53 - v29;
  v30 = *v66;
  (*(v23 + 16))(v25, v67, v64, v28);
  LOBYTE(v99) = v30;
  v31 = swift_allocObject();
  v31[2] = a15;
  v31[3] = a16;
  v32 = v79;
  v31[4] = a17;
  v31[5] = v32;
  v33 = v68;
  v31[6] = a19;
  v31[7] = v33;
  v34 = v69;
  v31[8] = v69;
  v31[9] = a22;
  v56 = a22;
  v57 = a23;
  v35 = v83;
  v31[10] = a23;
  v31[11] = v35;
  v31[12] = v80;

  v36 = v74;
  v37 = v73;
  v38 = v72;
  v39 = v71;
  outlined copy of Text?(v74, v73, v72, v71);

  v40 = v53;
  v41 = v54;
  v52 = v38;
  v42 = v62;
  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v55, v82, v76, v81, v59, 0, 0, 0, v62, &v99, v36, v37, v52, v39, partial apply for closure #1 in View.searchable<A, B>(text:tokens:suggestedTokens:placement:prompt:token:), v31, v54, v53, v33, v34, a22, a23);
  v43 = v61;
  v44 = v58;
  v45 = v63;
  v46 = v79;
  MEMORY[0x18D00A570](v42, v58, v63, v79);
  (*(v65 + 8))(v42, v45);
  v85 = v44;
  v86 = v41;
  v87 = v40;
  v88 = v46;
  v89 = v60;
  v90 = v33;
  v91 = v34;
  v92 = v56;
  v93 = v57;
  v94 = v77;
  v95 = v83;
  v96 = v80;
  v99 = v41;
  v100 = v40;
  v101 = v33;
  v102 = v34;
  v103 = v56;
  v104 = v57;
  v47 = type metadata accessor for SuggestedTokensView();
  WitnessTable = swift_getWitnessTable();
  v97 = v46;
  v98 = WitnessTable;
  v49 = v70;
  v50 = swift_getWitnessTable();
  swift_getWitnessTable();
  View.searchSuggestions<A>(_:)(partial apply for closure #2 in View.searchable<A, B>(text:tokens:suggestedTokens:placement:prompt:token:), v84, v49, v47, v50);
  return (*(v75 + 8))(v43, v49);
}

uint64_t View.searchable<A, B>(text:tokens:suggestedTokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v69 = a8;
  v63 = a7;
  v76 = a6;
  v64 = a5;
  v81 = a4;
  v75 = a3;
  v57 = a2;
  v58 = a1;
  v77 = a9;
  v84 = a21;
  v72 = a20;
  LODWORD(v68) = a11;
  v73 = a13;
  v66 = a12;
  v65 = a10;
  v83 = a14;
  v78 = a15;
  v79 = a22;
  v62 = a23;
  v70 = a18;
  v80 = a19;
  v23 = type metadata accessor for Binding();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v56 - v25;
  v59 = &v56 - v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = MEMORY[0x1E6981E70];
  v101 = AssociatedTypeWitness;
  v102 = a17;
  v103 = MEMORY[0x1E6981E60];
  v104 = a23;
  v105 = a22;
  type metadata accessor for TokenField();
  swift_getWitnessTable();
  v61 = type metadata accessor for SearchModifier();
  v67 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v56 - v28;
  v29 = v78;
  v71 = type metadata accessor for ModifiedContent();
  v74 = *(v71 - 8);
  v30 = MEMORY[0x1EEE9AC00](v71);
  v82 = &v56 - v31;
  v32 = *v63;
  (*(v24 + 16))(v26, v64, v23, v30);
  LOBYTE(v100) = v32;

  v69 = Text.init(_:tableName:bundle:comment:)();
  v68 = v33;
  v35 = v34;
  v66 = v36 & 1;
  v37 = swift_allocObject();
  v37[2] = v29;
  v37[3] = a16;
  v37[4] = a17;
  v38 = v70;
  v39 = v80;
  v37[5] = v70;
  v37[6] = v39;
  v40 = v72;
  v41 = v84;
  v37[7] = v72;
  v37[8] = v41;
  v42 = v79;
  v43 = v62;
  v37[9] = v79;
  v37[10] = v43;
  v44 = v73;
  v37[11] = v73;
  v37[12] = v83;

  v55 = v41;
  v45 = v60;
  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v58, v57, v75, v81, v59, 0, 0, 0, v60, &v100, v69, v68, v66, v35, partial apply for closure #1 in View.searchable<A, B>(text:tokens:suggestedTokens:placement:prompt:token:), v37, a16, a17, v40, v55, v42, v43);
  v46 = v78;
  v47 = v61;
  MEMORY[0x18D00A570](v45, v78, v61, v38);
  (*(v67 + 8))(v45, v47);
  v86 = v46;
  v87 = a16;
  v88 = a17;
  v89 = v38;
  v90 = v80;
  v91 = v40;
  v92 = v84;
  v93 = v79;
  v94 = v43;
  v95 = v76;
  v96 = v44;
  v97 = v83;
  v100 = a16;
  v101 = a17;
  v102 = v40;
  v103 = v84;
  v104 = v79;
  v105 = v43;
  v48 = type metadata accessor for SuggestedTokensView();
  WitnessTable = swift_getWitnessTable();
  v98 = v38;
  v99 = WitnessTable;
  v50 = v71;
  v51 = swift_getWitnessTable();
  swift_getWitnessTable();
  v52 = v51;
  v53 = v82;
  View.searchSuggestions<A>(_:)(partial apply for closure #2 in View.searchable<A, B>(text:tokens:suggestedTokens:placement:prompt:token:), v85, v50, v48, v52);
  return (*(v74 + 8))(v53, v50);
}

uint64_t closure #1 in View.searchable<A, B>(text:tokens:suggestedTokens:placement:prompt:token:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X5>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[0] = a1;
  v21[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v21 - v9;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v21 - v16;
  v18 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v18);
  (v21[0])(v10);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v14, a2, a6);
  v19 = *(v11 + 8);
  v19(v14, a2);
  static ViewBuilder.buildExpression<A>(_:)(v17, a2, a6);
  return (v19)(v17, a2);
}

uint64_t closure #2 in View.searchable<A, B>(text:tokens:suggestedTokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v27[3] = a5;
  v28 = a1;
  v29 = a2;
  v30 = a3;
  v31 = a6;
  v27[1] = a8;
  v27[2] = a9;
  v12 = type metadata accessor for Binding();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v27 - v14;
  v32 = a4;
  v33 = a5;
  v34 = a7;
  v35 = a8;
  v36 = a9;
  v37 = a10;
  v16 = type metadata accessor for SuggestedTokensView();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v27 - v22;
  (*(v13 + 16))(v15, v28, v12, v21);
  SuggestedTokensView.init(suggestedTokens:token:)(v15, v29, v30, v19);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v19, v16, WitnessTable);
  v25 = *(v17 + 8);

  v25(v19, v16);
  static ViewBuilder.buildExpression<A>(_:)(v23, v16, WitnessTable);
  return (v25)(v23, v16);
}

uint64_t View.searchable<A, B, C>(text:tokens:suggestedTokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v68 = a8;
  v65 = a7;
  v75 = a6;
  v66 = a5;
  v83 = a4;
  v74 = a3;
  v82 = a2;
  v67 = a1;
  v76 = a9;
  v84 = a11;
  v85 = a10;
  v73 = a19;
  v71 = a18;
  v81 = a21;
  v77 = a20;
  v78 = a22;
  v70 = a16;
  v64 = a17;
  v80 = a15;
  v22 = *(a15 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for Binding();
  v25 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v27 = &v57 - v26;
  v59 = &v57 - v26;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v103 = MEMORY[0x1E6981E70];
  v104 = AssociatedTypeWitness;
  v105 = a14;
  v106 = MEMORY[0x1E6981E60];
  v107 = a22;
  v108 = a20;
  type metadata accessor for TokenField();
  swift_getWitnessTable();
  v62 = type metadata accessor for SearchModifier();
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v57 - v29;
  v58 = a12;
  v69 = type metadata accessor for ModifiedContent();
  v72 = *(v69 - 8);
  v30 = MEMORY[0x1EEE9AC00](v69);
  v79 = &v57 - v31;
  v32 = *v65;
  (*(v25 + 16))(v27, v66, v60, v30);
  LOBYTE(v103) = v32;
  v33 = v80;
  (*(v22 + 16))(v24, v68, v80);
  v34 = v67;

  v35 = v81;
  v68 = Text.init<A>(_:)();
  v66 = v36;
  v65 = v37;
  v60 = v38 & 1;
  v39 = swift_allocObject();
  v39[2] = a12;
  v39[3] = a13;
  v39[4] = a14;
  v39[5] = v33;
  v40 = v70;
  v41 = v64;
  v39[6] = v70;
  v39[7] = v41;
  v42 = v71;
  v43 = v73;
  v39[8] = v71;
  v39[9] = v43;
  v44 = v77;
  v39[10] = v77;
  v39[11] = v35;
  v45 = v78;
  v46 = v85;
  v39[12] = v78;
  v39[13] = v46;
  v39[14] = v84;

  v47 = v61;
  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v34, v82, v74, v83, v59, 0, 0, 0, v61, &v103, v68, v66, v60, v65, partial apply for closure #1 in View.searchable<A, B, C>(text:tokens:suggestedTokens:placement:prompt:token:), v39, a13, a14, v42, v43, v44, v45);
  v48 = v58;
  v49 = v62;
  MEMORY[0x18D00A570](v47, v58, v62, v40);
  (*(v63 + 8))(v47, v49);
  v87 = v48;
  v88 = a13;
  v89 = a14;
  v90 = v80;
  v91 = v40;
  v92 = v41;
  v93 = v42;
  v94 = v43;
  v95 = v77;
  v96 = v81;
  v97 = v78;
  v98 = v75;
  v99 = v85;
  v100 = v84;
  v103 = a13;
  v104 = a14;
  v105 = v42;
  v106 = v43;
  v107 = v77;
  v108 = v78;
  v50 = type metadata accessor for SuggestedTokensView();
  WitnessTable = swift_getWitnessTable();
  v101 = v40;
  v102 = WitnessTable;
  v52 = v69;
  v53 = swift_getWitnessTable();
  swift_getWitnessTable();
  v54 = v50;
  v55 = v79;
  View.searchSuggestions<A>(_:)(partial apply for closure #2 in View.searchable<A, B, C>(text:tokens:suggestedTokens:placement:prompt:token:), v86, v52, v54, v53);
  return (*(v72 + 8))(v55, v52);
}

uint64_t View.searchable<A, B>(text:tokens:suggestedTokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v77 = a8;
  v85 = a7;
  v81 = a6;
  v70 = a5;
  v87 = a4;
  v80 = a3;
  v88 = a2;
  v89 = a1;
  v82 = a9;
  v79 = a10;
  v75 = a13;
  v74 = a14;
  v73 = a15;
  v90 = a16;
  v72 = a22;
  v63 = a21;
  v86 = a12;
  v68 = a11;
  v84 = a17;
  v83 = a18;
  v66 = a23;
  v25 = type metadata accessor for Binding();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v58 - v27;
  v64 = &v58 - v27;
  v60 = a19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v105 = MEMORY[0x1E6981E70];
  v106 = AssociatedTypeWitness;
  v107 = a20;
  v108 = MEMORY[0x1E6981E60];
  v59 = a20;
  v109 = a25;
  v110 = a24;
  type metadata accessor for TokenField();
  swift_getWitnessTable();
  v69 = type metadata accessor for SearchModifier();
  v71 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v58 - v30;
  v31 = v83;
  v76 = type metadata accessor for ModifiedContent();
  v78 = *(v76 - 8);
  v32 = MEMORY[0x1EEE9AC00](v76);
  v65 = &v58 - v33;
  v34 = *v68;
  (*(v26 + 16))(v28, v70, v25, v32);
  LOBYTE(v105) = v34;
  v35 = swift_allocObject();
  v35[2] = v31;
  v35[3] = a19;
  v35[4] = a20;
  v35[5] = a21;
  v36 = v72;
  v37 = v66;
  v35[6] = v72;
  v35[7] = v37;
  v61 = a24;
  v35[8] = a24;
  v35[9] = a25;
  v62 = a25;
  v38 = v84;
  v35[10] = v90;
  v35[11] = v38;

  v39 = v75;
  v40 = v74;
  v41 = v73;
  outlined copy of Text?(v86, v75, v74, v73);

  v42 = v77;

  v57 = v37;
  v43 = v37;
  v44 = v59;
  v45 = v60;
  v56 = v39;
  v46 = v67;
  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v89, v88, v80, v87, v64, v85, v42, v79 & 1, v67, &v105, v86, v56, v40, v41, partial apply for closure #1 in View.searchable<A, B>(text:tokens:placement:prompt:token:), v35, v60, v59, v36, v57, a24, a25);
  v47 = v65;
  v48 = v83;
  v49 = v69;
  v50 = v63;
  MEMORY[0x18D00A570](v46, v83, v69, v63);
  (*(v71 + 8))(v46, v49);
  v92 = v48;
  v93 = v45;
  v94 = v44;
  v95 = v50;
  v96 = v36;
  v97 = v43;
  v98 = v61;
  v99 = v62;
  v100 = v81;
  v101 = v90;
  v102 = v84;
  v105 = v45;
  v106 = v44;
  v107 = v36;
  v108 = v43;
  v109 = v61;
  v110 = v62;
  v51 = type metadata accessor for SuggestedTokensView();
  WitnessTable = swift_getWitnessTable();
  v103 = v50;
  v104 = WitnessTable;
  v53 = v76;
  v54 = swift_getWitnessTable();
  swift_getWitnessTable();
  View.searchSuggestions<A>(_:)(partial apply for closure #2 in View.searchable<A, B>(text:tokens:suggestedTokens:isPresented:placement:prompt:token:), v91, v53, v51, v54);
  return (*(v78 + 8))(v47, v53);
}

uint64_t View.searchable<A, B>(text:tokens:suggestedTokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, char *a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v86 = a8;
  v85 = a7;
  v90 = a6;
  v75 = a5;
  v93 = a4;
  v89 = a3;
  v67 = a2;
  v68 = a1;
  v91 = a9;
  v88 = a10;
  v83 = a22;
  v96 = a21;
  LODWORD(v81) = a14;
  v95 = a16;
  v78 = a15;
  v76 = a13;
  v80 = a12;
  v70 = a11;
  v94 = a17;
  v92 = a18;
  v79 = a23;
  v72 = a20;
  v74 = a19;
  v25 = type metadata accessor for Binding();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v64 - v27;
  v69 = &v64 - v27;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v111 = MEMORY[0x1E6981E70];
  v112 = AssociatedTypeWitness;
  v113 = a20;
  v114 = MEMORY[0x1E6981E60];
  v115 = a25;
  v116 = a24;
  type metadata accessor for TokenField();
  swift_getWitnessTable();
  v77 = type metadata accessor for SearchModifier();
  v82 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v73 = &v64 - v30;
  v31 = v92;
  v84 = type metadata accessor for ModifiedContent();
  v87 = *(v84 - 8);
  v32 = MEMORY[0x1EEE9AC00](v84);
  v71 = &v64 - v33;
  v34 = *v70;
  (*(v26 + 16))(v28, v75, v25, v32);
  LOBYTE(v111) = v34;

  v81 = Text.init(_:tableName:bundle:comment:)();
  v80 = v35;
  v78 = v36;
  v76 = v37 & 1;
  v38 = swift_allocObject();
  v39 = v74;
  v38[2] = v31;
  v38[3] = v39;
  v40 = v72;
  v41 = v96;
  v38[4] = v72;
  v38[5] = v41;
  v42 = v83;
  v43 = v79;
  v38[6] = v83;
  v38[7] = v43;
  v65 = a24;
  v38[8] = a24;
  v38[9] = a25;
  v66 = a25;
  v44 = v94;
  v38[10] = v95;
  v38[11] = v44;
  v45 = v85;

  v46 = v86;

  v47 = v43;
  v63 = v40;
  v48 = v40;
  v49 = v39;
  v50 = v73;
  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v68, v67, v89, v93, v69, v45, v46, v88 & 1, v73, &v111, v81, v80, v76, v78, partial apply for closure #1 in View.searchable<A, B>(text:tokens:placement:prompt:token:), v38, v39, v63, v42, v43, a24, a25);
  v51 = v71;
  v52 = v50;
  v53 = v50;
  v54 = v92;
  v55 = v77;
  v56 = v96;
  MEMORY[0x18D00A570](v52, v92, v77, v96);
  (*(v82 + 8))(v53, v55);
  v98 = v54;
  v99 = v49;
  v100 = v48;
  v101 = v56;
  v57 = v56;
  v102 = v42;
  v103 = v47;
  v104 = v65;
  v105 = v66;
  v106 = v90;
  v107 = v95;
  v108 = v94;
  v111 = v49;
  v112 = v48;
  v113 = v42;
  v114 = v47;
  v115 = v65;
  v116 = v66;
  v58 = type metadata accessor for SuggestedTokensView();
  WitnessTable = swift_getWitnessTable();
  v109 = v57;
  v110 = WitnessTable;
  v60 = v84;
  v61 = swift_getWitnessTable();
  swift_getWitnessTable();
  View.searchSuggestions<A>(_:)(partial apply for closure #2 in View.searchable<A, B>(text:tokens:suggestedTokens:isPresented:placement:prompt:token:), v97, v60, v58, v61);
  return (*(v87 + 8))(v51, v60);
}

uint64_t closure #1 in View.searchable<A, B>(text:tokens:placement:prompt:token:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X5>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5)
{
  v20[0] = a1;
  v20[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v20 - v8;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  v17 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v17);
  (v20[0])(v9);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v13, a2, a5);
  v18 = *(v10 + 8);
  v18(v13, a2);
  static ViewBuilder.buildExpression<A>(_:)(v16, a2, a5);
  return (v18)(v16, a2);
}

uint64_t closure #2 in View.searchable<A, B>(text:tokens:suggestedTokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28[2] = a5;
  v28[3] = a6;
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v32 = a7;
  v28[1] = a9;
  v13 = type metadata accessor for Binding();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v28 - v15;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a8;
  v37 = a9;
  v38 = a10;
  v17 = type metadata accessor for SuggestedTokensView();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v28 - v23;
  (*(v14 + 16))(v16, v29, v13, v22);
  SuggestedTokensView.init(suggestedTokens:token:)(v16, v30, v31, v20);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v20, v17, WitnessTable);
  v26 = *(v18 + 8);

  v26(v20, v17);
  static ViewBuilder.buildExpression<A>(_:)(v24, v17, WitnessTable);
  return (v26)(v24, v17);
}

uint64_t View.searchable<A, B, C>(text:tokens:suggestedTokens:isPresented:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v85 = a8;
  v83 = a7;
  v88 = a6;
  v79 = a5;
  v100 = a4;
  v87 = a3;
  v96 = a2;
  v95 = a1;
  v89 = a9;
  v86 = a10;
  v98 = a14;
  v99 = a13;
  v97 = a22;
  v82 = a21;
  v78 = a12;
  v77 = a11;
  v93 = a24;
  v90 = a23;
  v91 = a25;
  v101 = a19;
  v94 = a20;
  v73 = a17;
  v92 = a18;
  v25 = *(a18 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a16;
  v28 = type metadata accessor for Binding();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v69 - v30;
  v71 = &v69 - v30;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = MEMORY[0x1E6981E70];
  v120 = AssociatedTypeWitness;
  v121 = a17;
  v122 = MEMORY[0x1E6981E60];
  v123 = a25;
  v33 = v90;
  v124 = v90;
  type metadata accessor for TokenField();
  swift_getWitnessTable();
  v76 = type metadata accessor for SearchModifier();
  v80 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v69 - v34;
  v70 = a15;
  v81 = type metadata accessor for ModifiedContent();
  v84 = *(v81 - 8);
  v35 = MEMORY[0x1EEE9AC00](v81);
  v72 = &v69 - v36;
  v37 = *v77;
  (*(v29 + 16))(v31, v79, v28, v35);
  LOBYTE(v119) = v37;
  v38 = v92;
  (*(v25 + 16))(v27, v78, v92);

  v39 = v38;
  v40 = v93;
  v79 = Text.init<A>(_:)();
  v78 = v41;
  v77 = v42;
  v69 = v43 & 1;
  v44 = swift_allocObject();
  v45 = v74;
  v44[2] = a15;
  v44[3] = v45;
  v46 = v73;
  v44[4] = v73;
  v44[5] = v39;
  v47 = v94;
  v44[6] = v101;
  v44[7] = v47;
  v48 = v82;
  v49 = v97;
  v44[8] = v82;
  v44[9] = v49;
  v50 = v33;
  v44[10] = v33;
  v44[11] = v40;
  v51 = v91;
  v52 = v99;
  v44[12] = v91;
  v44[13] = v52;
  v44[14] = v98;
  v53 = v83;

  v54 = v85;

  v68 = v49;
  v55 = v46;
  v56 = v45;
  v67 = v44;
  v57 = v75;
  SearchModifier.init<A, B>(text:tokens:isPresented:placement:prompt:token:)(v95, v96, v87, v100, v71, v53, v54, v86 & 1, v75, &v119, v79, v78, v69, v77, partial apply for closure #1 in View.searchable<A, B, C>(text:tokens:suggestedTokens:isPresented:placement:prompt:token:), v67, v45, v46, v48, v68, v50, v51);
  v58 = v72;
  v59 = v70;
  v60 = v76;
  v61 = v101;
  MEMORY[0x18D00A570](v57, v70, v76, v101);
  (*(v80 + 8))(v57, v60);
  v103 = v59;
  v104 = v56;
  v105 = v55;
  v106 = v92;
  v107 = v61;
  v108 = v94;
  v109 = v48;
  v110 = v97;
  v111 = v90;
  v112 = v93;
  v113 = v91;
  v114 = v88;
  v115 = v99;
  v116 = v98;
  v119 = v56;
  v120 = v55;
  v121 = v48;
  v122 = v97;
  v123 = v90;
  v124 = v91;
  v62 = type metadata accessor for SuggestedTokensView();
  WitnessTable = swift_getWitnessTable();
  v117 = v61;
  v118 = WitnessTable;
  v64 = v81;
  v65 = swift_getWitnessTable();
  swift_getWitnessTable();
  View.searchSuggestions<A>(_:)(partial apply for closure #2 in View.searchable<A, B, C>(text:tokens:suggestedTokens:isPresented:placement:prompt:token:), v102, v64, v62, v65);
  return (*(v84 + 8))(v58, v64);
}

uint64_t closure #1 in View.searchable<A, B, C>(text:tokens:suggestedTokens:placement:prompt:token:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X5>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22[0] = a1;
  v22[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v22 - v10;
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v22 - v17;
  v19 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v19);
  (v22[0])(v11);
  (*(v9 + 8))(v11, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v15, a2, a7);
  v20 = *(v12 + 8);
  v20(v15, a2);
  static ViewBuilder.buildExpression<A>(_:)(v18, a2, a7);
  return (v20)(v18, a2);
}

uint64_t closure #2 in View.searchable<A, B, C>(text:tokens:suggestedTokens:placement:prompt:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29[3] = a5;
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a6;
  v29[1] = a9;
  v29[2] = a10;
  v14 = type metadata accessor for Binding();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v29 - v16;
  v34 = a4;
  v35 = a5;
  v36 = a8;
  v37 = a9;
  v38 = a10;
  v39 = a12;
  v18 = type metadata accessor for SuggestedTokensView();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v29 - v24;
  (*(v15 + 16))(v17, v30, v14, v23);
  SuggestedTokensView.init(suggestedTokens:token:)(v17, v31, v32, v21);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v21, v18, WitnessTable);
  v27 = *(v19 + 8);

  v27(v21, v18);
  static ViewBuilder.buildExpression<A>(_:)(v25, v18, WitnessTable);
  return (v27)(v25, v18);
}

void View.searchable<A, B, C>(text:tokens:placement:prompt:token:suggestions:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void View.searchable<A, B, C, D>(text:tokens:scope:placement:prompt:token:scopes:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void View.searchable<A, B, C, D, E>(text:tokens:scope:placement:prompt:token:scopes:suggestions:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void type metadata completion function for SuggestedTokensView()
{
  type metadata accessor for Binding();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<Binding<AttributedString>?>.Content(319, &lazy cache variable for type metadata for Environment<Binding<AttributedString>?>.Content, type metadata accessor for Binding<AttributedString>?, MEMORY[0x1E697DCB8]);
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for SuggestedTokensView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = ((v7 + 16) & ~v7) + *(v6 + 64);
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  v13 = ((v12 + 16) & ~v12) + *(v10 + 64);
  if (v13 <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = ((v12 + 16) & ~v12) + *(v10 + 64);
  }

  v15 = ((v14 + ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + (v12 | 7) + 16) & ~(v12 | 7)) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  v16 = v12 | v7;
  v17 = (*(v10 + 80) | v7) & 0x100000;
  v18 = *a2;
  *a1 = *a2;
  if (v16 <= 7 && v17 == 0 && v15 <= 0x18)
  {
    v51 = v11;
    __n = v13;
    v49 = v10;
    v50 = v9;
    v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v23 = *(v6 + 16);

    v23(v21 + 1, v22 + 1, v5);
    v24 = a1;
    v25 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    v27 = v26[1];
    *v25 = *v26;
    v25[1] = v27;
    v28 = a1 + v8 + 23;
    v29 = a2 + v8 + 23;
    v30 = (v29 & 0xFFFFFFFFFFFFFFF8);
    v31 = *((v29 & 0xFFFFFFFFFFFFFFF8) + v14);

    if (v31 < 2)
    {
      v34 = v51;
      goto LABEL_30;
    }

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
      v34 = v51;
      if (!v32)
      {
        goto LABEL_30;
      }

      v33 = *v30;
    }

    else
    {
      if (v32 == 2)
      {
        v33 = *v30;
      }

      else if (v32 == 3)
      {
        v33 = *v30 | (v30[2] << 16);
      }

      else
      {
        v33 = *v30;
      }

      v34 = v51;
    }

    v35 = (v33 | ((v31 - 2) << (8 * v14))) + 2;
    v36 = v33 + 2;
    if (v14 >= 4)
    {
      v31 = v36;
    }

    else
    {
      v31 = v35;
    }

LABEL_30:
    v37 = v14 + 1;
    v38 = (v28 & 0xFFFFFFFFFFFFFFF8);
    if (v31 != 1)
    {
      *v38 = *v30;
      *(v38 + v14) = 0;

LABEL_40:
      v43 = ((v28 | 7) + v37) & 0xFFFFFFFFFFFFFFF8;
      v44 = ((v29 | 7) + v37) & 0xFFFFFFFFFFFFFFF8;
      v45 = *v44;
      v46 = *(v44 + 8);
      outlined copy of Environment<Bool>.Content(*v44, v46);
      *v43 = v45;
      *(v43 + 8) = v46;
      return v24;
    }

    v39 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v34 < 0)
    {
      if ((*(v49 + 48))(v39 + 1))
      {
LABEL_35:
        memcpy((v28 & 0xFFFFFFFFFFFFFFF8), (v29 & 0xFFFFFFFFFFFFFFF8), __n);
LABEL_39:
        *(v38 + v14) = 1;
        goto LABEL_40;
      }
    }

    else
    {
      v40 = *v39;
      if (*v39 >= 0xFFFFFFFF)
      {
        LODWORD(v40) = -1;
      }

      if (v40 != -1)
      {
        goto LABEL_35;
      }
    }

    *v38 = *v30;
    v41 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v41 = *v39;
    v42 = *(v49 + 16);

    v42(v41 + 1, v39 + 1, v50);
    goto LABEL_39;
  }

  v24 = (v18 + ((v16 & 0xF8 ^ 0x1F8) & (v16 + 16)));

  return v24;
}

uint64_t destroy for SuggestedTokensView(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 15;

  v5 = *(*(a2 + 16) - 8);
  v6 = v5 + 8;
  v7 = *(v5 + 80);
  (*(v5 + 8))(((v4 & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7);
  v8 = (a1 + *(v6 + 56) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8;

  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = ((v8 + (v11 | 7) + 16) & ~(v11 | 7));
  if (((v11 + 16) & ~v11) + *(v10 + 64) <= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = ((v11 + 16) & ~v11) + *(*(v9 - 8) + 64);
  }

  v14 = v12[v13];
  v15 = v14 - 2;
  if (v14 >= 2)
  {
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
      v17 = *v12 | (v12[2] << 16);
    }

    else
    {
      v17 = *v12;
    }

    v18 = (v17 | (v15 << (8 * v13))) + 2;
    v14 = v17 + 2;
    if (v13 < 4)
    {
      v14 = v18;
    }
  }

LABEL_18:
  if (v14 != 1)
  {

    goto LABEL_27;
  }

  v19 = ~v11;
  v20 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v10 + 84) & 0x80000000) != 0)
  {
    if ((*(v10 + 48))((v20 + v11 + 8) & v19))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v21 = *v20;
  if (*v20 >= 0xFFFFFFFF)
  {
    LODWORD(v21) = -1;
  }

  if (v21 == -1)
  {
LABEL_26:

    (*(v10 + 8))((v20 + v11 + 8) & v19, v9);
  }

LABEL_27:
  v22 = &v12[v13 + 8] & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  v24 = *(v22 + 8);

  return outlined consume of Environment<Bool>.Content(v23, v24);
}

void *initializeWithCopy for SuggestedTokensView(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(v7 - 8) + 16;
  v10 = *(*(v7 - 8) + 80);
  v11 = v5 + v10 + 8;
  v12 = v6 + v10 + 8;

  v8(v11 & ~v10, v12 & ~v10, v7);
  v13 = ((v10 + 16) & ~v10) + *(v9 + 48) + 7;
  v14 = ((a2 + v13) & 0xFFFFFFFFFFFFFFF8);
  v15 = v14[1];
  v16 = ((a1 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v14;
  v16[1] = v15;
  v42 = type metadata accessor for AttributedString();
  v17 = *(v42 - 8);
  v18 = *(v17 + 84);
  v19 = *(v17 + 80);
  v20 = *(v17 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v21 = ((v16 + v19 + 16) & v20);
  v22 = ((v14 + v19 + 16) & v20);
  v23 = *(v17 + 64);
  v24 = ((v19 + 16) & ~v19) + v23;
  if (v24 <= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = ((v19 + 16) & ~v19) + v23;
  }

  v26 = v22[v25];

  if (v26 >= 2)
  {
    if (v25 <= 3)
    {
      v27 = v25;
    }

    else
    {
      v27 = 4;
    }

    if (v27 <= 1)
    {
      if (!v27)
      {
        goto LABEL_19;
      }

      v28 = *v22;
    }

    else if (v27 == 2)
    {
      v28 = *v22;
    }

    else if (v27 == 3)
    {
      v28 = *v22 | (v22[2] << 16);
    }

    else
    {
      v28 = *v22;
    }

    v29 = (v28 | ((v26 - 2) << (8 * v25))) + 2;
    v30 = v28 + 2;
    if (v25 >= 4)
    {
      v26 = v30;
    }

    else
    {
      v26 = v29;
    }
  }

LABEL_19:
  if (v26 == 1)
  {
    v31 = ~v19;
    v32 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v18 & 0x80000000) != 0)
    {
      if ((*(v17 + 48))((v32 + v19 + 8) & v31, v18, v42))
      {
LABEL_24:
        memcpy(v21, v22, v24);
LABEL_28:
        *(v21 + v25) = 1;
        goto LABEL_29;
      }
    }

    else
    {
      v33 = *v32;
      if (*v32 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      if (v33 != -1)
      {
        goto LABEL_24;
      }
    }

    *v21 = *v22;
    v34 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v34 = *v32;
    v35 = v34 + v19 + 8;
    v36 = *(v17 + 16);

    v36(v35 & v31, (v32 + v19 + 8) & v31, v42);
    goto LABEL_28;
  }

  *v21 = *v22;
  *(v21 + v25) = 0;

LABEL_29:
  v37 = (v21 + v25 + 8) & 0xFFFFFFFFFFFFFFF8;
  v38 = &v22[v25 + 8] & 0xFFFFFFFFFFFFFFF8;
  v39 = *v38;
  v40 = *(v38 + 8);
  outlined copy of Environment<Bool>.Content(*v38, v40);
  *v37 = v39;
  *(v37 + 8) = v40;
  return a1;
}

void *assignWithCopy for SuggestedTokensView(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  (*(v8 + 24))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 40) + 7;
  v12 = ((a1 + v11) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((a2 + v11) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;

  v15 = type metadata accessor for AttributedString();
  v16 = *(v15 - 8);
  v17 = v16;
  v18 = *(v16 + 80);
  v19 = *(v16 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v20 = ((v12 + v18 + 16) & v19);
  v21 = ((v13 + v18 + 16) & v19);
  v22 = (v18 + 16) & ~v18;
  if (v20 != v21)
  {
    v25 = v15;
    v26 = *(v16 + 64) + v22;
    if (v26 <= 8)
    {
      v24 = 8;
    }

    else
    {
      v24 = *(v16 + 64) + v22;
    }

    v27 = v20[v24];
    v28 = v27 - 2;
    if (v27 >= 2)
    {
      if (v24 <= 3)
      {
        v29 = v24;
      }

      else
      {
        v29 = 4;
      }

      if (v29 <= 1)
      {
        if (!v29)
        {
          goto LABEL_22;
        }

        v30 = *v20;
      }

      else if (v29 == 2)
      {
        v30 = *v20;
      }

      else if (v29 == 3)
      {
        v30 = *v20 | (v20[2] << 16);
      }

      else
      {
        v30 = *v20;
      }

      v31 = (v30 | (v28 << (8 * v24))) + 2;
      v27 = v30 + 2;
      if (v24 < 4)
      {
        v27 = v31;
      }
    }

LABEL_22:
    v52 = ~v18;
    v32 = *(v16 + 84);
    if (v27 != 1)
    {

      goto LABEL_31;
    }

    v33 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v32 & 0x80000000) != 0)
    {
      if ((*(v16 + 48))((v33 + v18 + 8) & v52, *(v16 + 84), v15))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v34 = *v33;
      if (*v33 >= 0xFFFFFFFF)
      {
        LODWORD(v34) = -1;
      }

      if (v34 != -1)
      {
LABEL_31:
        v35 = v21[v24];
        v36 = v35 - 2;
        if (v35 < 2)
        {
          goto LABEL_45;
        }

        if (v24 <= 3)
        {
          v37 = v24;
        }

        else
        {
          v37 = 4;
        }

        if (v37 <= 1)
        {
          if (!v37)
          {
            goto LABEL_45;
          }

          v38 = *v21;
        }

        else if (v37 == 2)
        {
          v38 = *v21;
        }

        else if (v37 == 3)
        {
          v38 = *v21 | (v21[2] << 16);
        }

        else
        {
          v38 = *v21;
        }

        v39 = (v38 | (v36 << (8 * v24))) + 2;
        v35 = v38 + 2;
        if (v24 < 4)
        {
          v35 = v39;
        }

LABEL_45:
        if (v35 != 1)
        {
          *v20 = *v21;
          v20[v24] = 0;

          goto LABEL_55;
        }

        v40 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v32 & 0x80000000) != 0)
        {
          if ((*(v17 + 48))((v40 + v18 + 8) & v52, v32, v25))
          {
LABEL_50:
            memcpy(v20, v21, v26);
LABEL_54:
            v20[v24] = 1;
            goto LABEL_55;
          }
        }

        else
        {
          v41 = *v40;
          if (*v40 >= 0xFFFFFFFF)
          {
            LODWORD(v41) = -1;
          }

          if (v41 != -1)
          {
            goto LABEL_50;
          }
        }

        *v20 = *v21;
        v42 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
        *v42 = *v40;
        v43 = v42 + v18 + 8;
        v44 = *(v17 + 16);

        v44(v43 & v52, (v40 + v18 + 8) & v52, v25);
        goto LABEL_54;
      }
    }

    (*(v17 + 8))((v33 + v18 + 8) & v52, v25);
    goto LABEL_31;
  }

  v23 = *(v16 + 64) + v22;
  if (v23 <= 8)
  {
    v24 = 8;
  }

  else
  {
    v24 = v23;
  }

LABEL_55:
  v45 = &v20[v24 + 8] & 0xFFFFFFFFFFFFFFF8;
  v46 = &v21[v24 + 8] & 0xFFFFFFFFFFFFFFF8;
  v47 = *v46;
  v48 = *(v46 + 8);
  outlined copy of Environment<Bool>.Content(*v46, v48);
  v49 = *v45;
  v50 = *(v45 + 8);
  *v45 = v47;
  *(v45 + 8) = v48;
  outlined consume of Environment<Bool>.Content(v49, v50);
  return a1;
}

void *initializeWithTake for SuggestedTokensView(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  (*(v7 + 32))((v5 + v9 + 8) & ~v9, (v6 + v9 + 8) & ~v9);
  v10 = ((v9 + 16) & ~v9) + *(v8 + 32) + 7;
  v11 = ((a1 + v10) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((a2 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = type metadata accessor for AttributedString();
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v17 = ((v11 + v15 + 16) & v16);
  v18 = ((v12 + v15 + 16) & v16);
  v19 = *(v14 + 64);
  v20 = ((v15 + 16) & ~v15) + v19;
  if (v20 <= 8)
  {
    v21 = 8;
  }

  else
  {
    v21 = ((v15 + 16) & ~v15) + v19;
  }

  v22 = v18[v21];
  v23 = v22 - 2;
  if (v22 >= 2)
  {
    if (v21 <= 3)
    {
      v24 = v21;
    }

    else
    {
      v24 = 4;
    }

    if (v24 <= 1)
    {
      if (!v24)
      {
        goto LABEL_18;
      }

      v25 = *v18;
    }

    else if (v24 == 2)
    {
      v25 = *v18;
    }

    else if (v24 == 3)
    {
      v25 = *v18 | (v18[2] << 16);
    }

    else
    {
      v25 = *v18;
    }

    v26 = (v25 | (v23 << (8 * v21))) + 2;
    v22 = v25 + 2;
    if (v21 < 4)
    {
      v22 = v26;
    }
  }

LABEL_18:
  if (v22 == 1)
  {
    v27 = ~v15;
    v28 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v14 + 84) & 0x80000000) != 0)
    {
      if ((*(v14 + 48))((v28 + v15 + 8) & v27))
      {
LABEL_23:
        memcpy(v17, v18, v20);
LABEL_27:
        v30 = 1;
        goto LABEL_28;
      }
    }

    else
    {
      v29 = *v28;
      if (*v28 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      if (v29 != -1)
      {
        goto LABEL_23;
      }
    }

    *v17 = *v18;
    v31 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v28;
    (*(v14 + 32))((v31 + v15 + 8) & v27, (v28 + v15 + 8) & v27, v13);
    goto LABEL_27;
  }

  v30 = 0;
  *v17 = *v18;
LABEL_28:
  *(v17 + v21) = v30;
  v32 = &v18[v21 + 8] & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  v34 = (v17 + v21 + 8) & 0xFFFFFFFFFFFFFFF8;
  *(v34 + 8) = *(v32 + 8);
  *v34 = v33;
  return a1;
}

void *assignWithTake for SuggestedTokensView(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  (*(v8 + 40))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 24) + 7;
  v12 = ((a1 + v11) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((a2 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  v14 = type metadata accessor for AttributedString();
  v15 = *(v14 - 8);
  v16 = v15;
  v17 = *(v15 + 80);
  v18 = *(v15 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v19 = ((v12 + v17 + 16) & v18);
  v20 = ((v13 + v17 + 16) & v18);
  v21 = (v17 + 16) & ~v17;
  if (v19 != v20)
  {
    v24 = v14;
    v25 = *(v15 + 64) + v21;
    if (v25 <= 8)
    {
      v23 = 8;
    }

    else
    {
      v23 = *(v15 + 64) + v21;
    }

    v26 = v19[v23];
    v27 = v26 - 2;
    if (v26 >= 2)
    {
      if (v23 <= 3)
      {
        v28 = v23;
      }

      else
      {
        v28 = 4;
      }

      if (v28 <= 1)
      {
        if (!v28)
        {
          goto LABEL_22;
        }

        v29 = *v19;
      }

      else if (v28 == 2)
      {
        v29 = *v19;
      }

      else if (v28 == 3)
      {
        v29 = *v19 | (v19[2] << 16);
      }

      else
      {
        v29 = *v19;
      }

      v30 = (v29 | (v27 << (8 * v23))) + 2;
      v26 = v29 + 2;
      if (v23 < 4)
      {
        v26 = v30;
      }
    }

LABEL_22:
    v48 = ~v17;
    v31 = *(v15 + 84);
    if (v26 != 1)
    {

      goto LABEL_31;
    }

    v32 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v31 & 0x80000000) != 0)
    {
      if ((*(v15 + 48))((v32 + v17 + 8) & v48, *(v15 + 84), v14))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v33 = *v32;
      if (*v32 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      if (v33 != -1)
      {
LABEL_31:
        v34 = v20[v23];
        v35 = v34 - 2;
        if (v34 < 2)
        {
          goto LABEL_45;
        }

        if (v23 <= 3)
        {
          v36 = v23;
        }

        else
        {
          v36 = 4;
        }

        if (v36 <= 1)
        {
          if (!v36)
          {
            goto LABEL_45;
          }

          v37 = *v20;
        }

        else if (v36 == 2)
        {
          v37 = *v20;
        }

        else if (v36 == 3)
        {
          v37 = *v20 | (v20[2] << 16);
        }

        else
        {
          v37 = *v20;
        }

        v38 = (v37 | (v35 << (8 * v23))) + 2;
        v34 = v37 + 2;
        if (v23 < 4)
        {
          v34 = v38;
        }

LABEL_45:
        if (v34 != 1)
        {
          *v19 = *v20;
          v19[v23] = 0;
          goto LABEL_55;
        }

        v39 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v31 & 0x80000000) != 0)
        {
          if ((*(v16 + 48))((v39 + v17 + 8) & v48, v31, v24))
          {
LABEL_50:
            memcpy(v19, v20, v25);
LABEL_54:
            v19[v23] = 1;
            goto LABEL_55;
          }
        }

        else
        {
          v40 = *v39;
          if (*v39 >= 0xFFFFFFFF)
          {
            LODWORD(v40) = -1;
          }

          if (v40 != -1)
          {
            goto LABEL_50;
          }
        }

        *v19 = *v20;
        v41 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
        *v41 = *v39;
        (*(v16 + 32))((v41 + v17 + 8) & v48, (v39 + v17 + 8) & v48, v24);
        goto LABEL_54;
      }
    }

    (*(v16 + 8))((v32 + v17 + 8) & v48, v24);
    goto LABEL_31;
  }

  v22 = *(v15 + 64) + v21;
  if (v22 <= 8)
  {
    v23 = 8;
  }

  else
  {
    v23 = v22;
  }

LABEL_55:
  v42 = &v19[v23 + 8] & 0xFFFFFFFFFFFFFFF8;
  v43 = &v20[v23 + 8] & 0xFFFFFFFFFFFFFFF8;
  v44 = *v43;
  LOBYTE(v43) = *(v43 + 8);
  v45 = *v42;
  v46 = *(v42 + 8);
  *v42 = v44;
  *(v42 + 8) = v43;
  outlined consume of Environment<Bool>.Content(v45, v46);
  return a1;
}

uint64_t getEnumTagSinglePayload for SuggestedTokensView(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for AttributedString() - 8);
  v10 = *(v9 + 80);
  v11 = v10 + 16;
  v12 = (v11 & ~v10) + *(v9 + 64);
  v13 = *(v6 + 80);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((v12 + ((v11 + ((*(v6 + 64) + ((v13 + 16) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8)) & (v10 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8)) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v14 <= 3)
  {
    v15 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v14];
      if (!*&a1[v14])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v18 = *&a1[v14];
      if (!v18)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v20 = (v18 - 1) << (8 * v14);
    if (v14 <= 3)
    {
      v21 = *a1;
    }

    else
    {
      v20 = 0;
      v21 = *a1;
    }

    return v8 + (v21 | v20) + 1;
  }

  if (v17)
  {
    v18 = a1[v14];
    if (a1[v14])
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  v22 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v24 = *(v6 + 48);

    return v24((v22 + v13 + 8) & ~v13, v7, v5);
  }

  else
  {
    v23 = *v22;
    if (*v22 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }
}

void storeEnumTagSinglePayload for SuggestedTokensView(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v26 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for AttributedString() - 8);
  v12 = *(v11 + 80) + 16;
  v13 = (v12 & ~*(v11 + 80)) + *(v11 + 64);
  v14 = *(v8 + 80);
  v15 = (v12 + ((*(v8 + 64) + ((v14 + 16) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8)) & (*(v11 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8);
  v16 = 8;
  if (v13 > 8)
  {
    v16 = v13;
  }

  v17 = ((v16 + v15 + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v20 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v17 <= 3)
    {
      v18 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v17] = 0;
      }

      else if (v20)
      {
        a1[v17] = 0;
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
      v23 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0x80000000) != 0)
      {
        v25 = *(v26 + 56);

        v25((v23 + v14 + 8) & ~v14, a2, v9, v7);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v24 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v24 = (a2 - 1);
        }

        *v23 = v24;
      }

      return;
    }
  }

  v21 = ~v10 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v22 = (v21 >> 8) + 1;
  }

  else
  {
    v22 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v21;
    if (v20 > 1)
    {
LABEL_29:
      if (v20 == 2)
      {
        *&a1[v17] = v22;
      }

      else
      {
        *&a1[v17] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v20 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v20)
  {
    a1[v17] = v22;
  }
}

uint64_t partial apply for closure #1 in SuggestedTokensView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = *(type metadata accessor for SuggestedTokensView() - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return closure #1 in SuggestedTokensView.body.getter(a1, v12, v5, v6, v7, v8, v9, v10, a2);
}

uint64_t outlined destroy of Binding<AttributedString>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xED00007466654C65;
  if (a1 != 2)
  {
    v4 = 0xEE00746867695265;
  }

  v5 = 0xD000000000000012;
  if (a1)
  {
    v3 = 0x800000018CD3D3E0;
  }

  else
  {
    v5 = 0x7469617274726F70;
  }

  if (a1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x70616373646E616CLL;
  }

  if (v2 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = 0xED00007466654C65;
    }

    else
    {
      v9 = 0xEE00746867695265;
    }

    if (v6 != 0x70616373646E616CLL)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (a2)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = 0x7469617274726F70;
    }

    if (a2)
    {
      v9 = 0x800000018CD3D3E0;
    }

    else
    {
      v9 = 0xE800000000000000;
    }

    if (v6 != v8)
    {
      goto LABEL_27;
    }
  }

  if (v7 != v9)
  {
LABEL_27:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_28;
  }

  v10 = 1;
LABEL_28:

  return v10 & 1;
}

void static PreviewProvider.platform.getter(_BYTE *a1@<X8>)
{
  static PreviewProvider.platform.getter(a1);
}

{
  *a1 = 4;
}

uint64_t static PreviewProvider._previews.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 32);
  a3[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return v6(a1, a2);
}

Swift::Int PreviewPlatform.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t PreviewDevice.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InterfaceOrientation.Orientation()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance InterfaceOrientation.Orientation()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InterfaceOrientation.Orientation()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance InterfaceOrientation.Orientation@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized InterfaceOrientation.Orientation.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t InterfaceOrientation.id.getter()
{
  v1 = 0x7469617274726F70;
  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x70616373646E616CLL;
  }
}

uint64_t static InterfaceOrientation.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x7469617274726F70;
  v3 = *a1;
  v4 = 0xE800000000000000;
  v5 = 0xED00007466654C65;
  if (v3 != 2)
  {
    v5 = 0xEE00746867695265;
  }

  v6 = 0xD000000000000012;
  v7 = 0x800000018CD3D3E0;
  if (*a1)
  {
    v4 = 0x800000018CD3D3E0;
  }

  else
  {
    v6 = 0x7469617274726F70;
  }

  if (*a1 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x70616373646E616CLL;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xED00007466654C65;
  if (*a2 != 2)
  {
    v10 = 0xEE00746867695265;
  }

  if (*a2)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = 0x70616373646E616CLL;
  }

  if (*a2 <= 1u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v10;
  }

  if (v8 == v11 && v9 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance InterfaceOrientation@<X0>(uint64_t *a1@<X8>)
{
  result = specialized static InterfaceOrientation.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t View.previewContext<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[3] = a3;
  v9[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  View._trait<A>(_:_:)();
  return outlined destroy of PreviewContext?(v9, type metadata accessor for PreviewContext?);
}

uint64_t static PreviewLayoutTraitKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69667A0];
  v3 = type metadata accessor for PreviewLayout();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t protocol witness for static _ViewTraitKey.defaultValue.getter in conformance PreviewLayoutTraitKey@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69667A0];
  v3 = type metadata accessor for PreviewLayout();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double static PreviewContextTraitKey.defaultValue.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t static _PreviewProvider._allPreviews.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(v6);
  v7 = MEMORY[0x1E69E7CC0];
  outlined init with copy of Any(v6, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v4);
  static ProtocolDescriptor.conformance(of:)();
  result = v5;
  if (v5)
  {
    MakePreviews.visit<A>(type:)(v5, v5);
    v3 = v7;

    outlined destroy of MakePreviews(v6);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MakePreviews.visit<A>(type:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(v2, v10);
  swift_dynamicCast();
  v8 = View._allPreviews.getter();
  (*(v5 + 8))(v7, a2);

  *(v3 + 32) = v8;
  return result;
}

uint64_t View._allPreviews.getter()
{
  type metadata accessor for [FrameResizePosition](0, &lazy cache variable for type metadata for [_Preview]);
  EnvironmentValues.init()();
  View.withChildrenForTest<A>(environment:options:body:)();

  return v1;
}

uint64_t closure #1 in View._allPreviews.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of _VariadicView_Children(a1, v41);
  v3 = _VariadicView_Children.endIndex.getter();
  result = _VariadicView_Children.endIndex.getter();
  if (result < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  result = _VariadicView_Children.endIndex.getter();
  if (v3 < 0 || result < v3)
  {
    goto LABEL_17;
  }

  if (v3)
  {
    v19 = a2;
    v40 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v5 = 0;
    v6 = v40;
    while (1)
    {
      result = _VariadicView_Children.endIndex.getter();
      if (v5 >= result)
      {
        break;
      }

      _VariadicView_Children.subscript.getter();
      v22 = v5;
      v26 = v33;
      v27 = v34;
      v28 = v35;
      v29 = v36;
      v23 = v30;
      v24 = v31;
      v25 = v32;
      outlined init with copy of (offset: Int, element: _VariadicView_Children.Element)(&v22, v20);
      outlined init with copy of _VariadicView_Children.Element(v21, v37);
      *(&v38 + 1) = v5;
      type metadata accessor for _VariadicView_Children.Element.Type();
      v7 = String.init<A>(describing:)();
      v9 = v8;
      outlined destroy of PreviewContext?(&v22, type metadata accessor for (offset: Int, element: _VariadicView_Children.Element));
      outlined destroy of _VariadicView_Children.Element(v21);
      *&v39 = v7;
      *(&v39 + 1) = v9;
      v40 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v6 = v40;
      }

      *(v6 + 16) = v11 + 1;
      v12 = (v6 + (v11 << 7));
      v13 = v37[0];
      v14 = v37[1];
      v15 = v37[3];
      v12[4] = v37[2];
      v12[5] = v15;
      v12[2] = v13;
      v12[3] = v14;
      v16 = v37[4];
      v17 = v37[5];
      v18 = v39;
      v12[8] = v38;
      v12[9] = v18;
      v12[6] = v16;
      v12[7] = v17;
      result = _VariadicView_Children.endIndex.getter();
      if (v5 >= result)
      {
        goto LABEL_15;
      }

      if (v3 == ++v5)
      {
        result = outlined destroy of PreviewContext?(v41, type metadata accessor for EnumeratedSequence<_VariadicView_Children>);
        a2 = v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = outlined destroy of PreviewContext?(v41, type metadata accessor for EnumeratedSequence<_VariadicView_Children>);
  v6 = MEMORY[0x1E69E7CC0];
LABEL_13:
  *a2 = v6;
  return result;
}

uint64_t _Preview.contentType.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t _Preview.context.getter()
{
  v4 = *(v0 + 96);
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  ViewTraitCollection.value<A>(for:defaultValue:)();
  return outlined destroy of PreviewContext?(v2, type metadata accessor for PreviewContext?);
}

uint64_t _Preview.layout.getter()
{
  v1 = type metadata accessor for PreviewLayout();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[1] = *(v0 + 96);
  (*(v2 + 104))(v5, *MEMORY[0x1E69667A0], v1, v3);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  return (*(v2 + 8))(v5, v1);
}

unint64_t specialized InterfaceOrientation.Orientation.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InterfaceOrientation.Orientation.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized static InterfaceOrientation.allCases.getter()
{
  v9 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v0 = v9;
  v2 = *(v9 + 16);
  v1 = *(v9 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v1 > 1), v2 + 1, 1);
    v0 = v9;
    v1 = *(v9 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  *(v0 + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v1 > 1), v2 + 2, 1);
    v0 = v9;
    v1 = *(v9 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v5;
  *(v0 + v4 + 32) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v1 > 1), v2 + 3, 1);
  }

  result = v9;
  *(v9 + 16) = v6;
  *(v9 + v5 + 32) = 2;
  v8 = *(v9 + 24);
  if ((v2 + 4) > (v8 >> 1))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v2 + 4, 1);
    result = v9;
  }

  *(result + 16) = v2 + 4;
  *(result + v6 + 32) = 3;
  return result;
}

void type metadata accessor for PreviewContext?()
{
  if (!lazy cache variable for type metadata for PreviewContext?)
  {
    type metadata accessor for PreviewContext();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PreviewContext?);
    }
  }
}

unint64_t type metadata accessor for PreviewContext()
{
  result = lazy cache variable for type metadata for PreviewContext;
  if (!lazy cache variable for type metadata for PreviewContext)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PreviewContext);
  }

  return result;
}

uint64_t outlined destroy of MakePreviews(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  return a1;
}

unint64_t lazy protocol witness table accessor for type PreviewPlatform and conformance PreviewPlatform()
{
  result = lazy protocol witness table cache variable for type PreviewPlatform and conformance PreviewPlatform;
  if (!lazy protocol witness table cache variable for type PreviewPlatform and conformance PreviewPlatform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewPlatform and conformance PreviewPlatform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreviewDevice and conformance PreviewDevice()
{
  result = lazy protocol witness table cache variable for type PreviewDevice and conformance PreviewDevice;
  if (!lazy protocol witness table cache variable for type PreviewDevice and conformance PreviewDevice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewDevice and conformance PreviewDevice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreviewDevice and conformance PreviewDevice;
  if (!lazy protocol witness table cache variable for type PreviewDevice and conformance PreviewDevice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewDevice and conformance PreviewDevice);
  }

  return result;
}

uint64_t destroy for _Preview(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t initializeWithCopy for _Preview(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  v6 = *(a2 + 96);
  *(a1 + 88) = v7;
  *(a1 + 96) = v6;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);

  v8 = v7;

  return a1;
}

uint64_t assignWithCopy for _Preview(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a1 + 88);
  v5 = *(a2 + 88);
  *(a1 + 88) = v5;
  v6 = v5;

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithTake for _Preview(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  v6 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t getEnumTagSinglePayload for _Preview(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _Preview(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA21_TraitWritingModifierVyAA013PreviewDeviceF3KeyVGGAaBHPxAaBHD1__AiA0cH0HPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, a2);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _TraitWritingModifier<OnDeleteDefaultTraitKey> and conformance _TraitWritingModifier<A>(a5, a2);
  return swift_getWitnessTable();
}

uint64_t destroy for MakePreviews(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t initializeWithCopy for MakePreviews(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t *assignWithCopy for MakePreviews(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_0(a1, a2);
  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for MakePreviews(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

unint64_t lazy protocol witness table accessor for type InterfaceOrientation.Orientation and conformance InterfaceOrientation.Orientation()
{
  result = lazy protocol witness table cache variable for type InterfaceOrientation.Orientation and conformance InterfaceOrientation.Orientation;
  if (!lazy protocol witness table cache variable for type InterfaceOrientation.Orientation and conformance InterfaceOrientation.Orientation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceOrientation.Orientation and conformance InterfaceOrientation.Orientation);
  }

  return result;
}

unint64_t type metadata accessor for _VariadicView_Children.Element.Type()
{
  result = lazy cache variable for type metadata for _VariadicView_Children.Element.Type;
  if (!lazy cache variable for type metadata for _VariadicView_Children.Element.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _VariadicView_Children.Element.Type);
  }

  return result;
}

uint64_t outlined destroy of PreviewContext?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for EnumeratedSequence<_VariadicView_Children>()
{
  if (!lazy cache variable for type metadata for EnumeratedSequence<_VariadicView_Children>)
  {
    lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
    v0 = type metadata accessor for EnumeratedSequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnumeratedSequence<_VariadicView_Children>);
    }
  }
}

Swift::Int ScrollAnchorRole.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t View.defaultScrollAnchor(_:for:)(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  v7 = *a4;
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3 & 1;
  *(v8 + 33) = v7;
  View.transformEnvironment<A>(_:transform:)();
}

uint64_t partial apply for closure #1 in View.defaultScrollAnchor(_:for:)()
{
  if ((*(v0 + 32) & 1) == 0)
  {
    return ScrollAnchorStorage.updateRole(_:anchor:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollAnchorRole and conformance ScrollAnchorRole()
{
  result = lazy protocol witness table cache variable for type ScrollAnchorRole and conformance ScrollAnchorRole;
  if (!lazy protocol witness table cache variable for type ScrollAnchorRole and conformance ScrollAnchorRole)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollAnchorRole and conformance ScrollAnchorRole);
  }

  return result;
}

uint64_t View.popover<A, B>(item:attachmentAnchor:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v35 = a8;
  v33 = a9;
  v34 = a5;
  v31 = a3;
  v32 = a4;
  v30 = a1;
  v28[3] = a11;
  v28[4] = a7;
  v28[1] = a6;
  v28[2] = a10;
  type metadata accessor for Optional();
  v29 = type metadata accessor for Binding();
  v14 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v16 = v28 - v15;
  v36 = a6;
  v37 = a7;
  v38 = a10;
  v39 = a11;
  v17 = type metadata accessor for PopoverItemStateProvider();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v28 - v18;
  v28[0] = swift_getWitnessTable();
  v20 = type metadata accessor for PopoverPresentationModifier();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v28 - v23;
  v26 = *a2;
  v25 = *(a2 + 8);
  LOBYTE(a2) = *(a2 + 16);
  (*(v14 + 16))(v16, v30, v29, v22);
  PopoverItemStateProvider.init(item:content:)(v16, v31, v32, v19);
  v36 = v26;
  v37 = v25;
  LOBYTE(v38) = a2;
  PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)(v19, &v36, 256, 0, 1, 0, v17, v24);

  outlined copy of Environment<CGFloat?>.Content(v26, v25, a2);
  MEMORY[0x18D00A570](v24, v34, v20, v35);
  return (*(v21 + 8))(v24, v20);
}

uint64_t View.popover<A, B>(item:attachmentAnchor:arrowEdge:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40 = a6;
  v35 = a4;
  v36 = a5;
  v34 = a1;
  v39 = a9;
  v31[2] = a12;
  v31[3] = a8;
  v37 = a3;
  v38 = a10;
  v31[0] = a7;
  v31[1] = a11;
  type metadata accessor for Optional();
  v32 = type metadata accessor for Binding();
  v15 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v17 = v31 - v16;
  v41 = a7;
  v42 = a8;
  v43 = a11;
  v44 = a12;
  v18 = type metadata accessor for PopoverItemStateProvider();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v31 - v19;
  WitnessTable = swift_getWitnessTable();
  v21 = type metadata accessor for PopoverPresentationModifier();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = v31 - v24;
  v26 = *a2;
  v27 = *(a2 + 8);
  LOBYTE(a2) = *(a2 + 16);
  (*(v15 + 16))(v17, v34, v32, v23);
  PopoverItemStateProvider.init(item:content:)(v17, v35, v36, v20);
  v41 = v26;
  v42 = v27;
  LOBYTE(v43) = a2;

  outlined copy of Environment<CGFloat?>.Content(v26, v27, a2);
  static Semantics.v6.getter();
  v28 = isLinkedOnOrAfter(_:)();
  if (v37 >= 8u)
  {
    LOBYTE(v29) = 0;
  }

  else
  {
    v29 = 1 << v37;
  }

  if (v37 > 8u)
  {
    LOBYTE(v29) = 0;
  }

  if ((v28 & 1) == 0)
  {
    LOBYTE(v29) = 0;
  }

  PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)(v20, &v41, v29 | (((v28 & 1) == 0) << 8), 0, 1, 0, v18, v25);
  MEMORY[0x18D00A570](v25, v40, v21, v38);
  return (*(v22 + 8))(v25, v21);
}

uint64_t View.popoverCore<A>(isPresented:attachmentAnchor:arrowEdges:isDetachable:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __int16 a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *a4;
  v14 = *(a4 + 8);
  v15 = *(a4 + 16);
  v21[0] = a1;
  v21[1] = a2;
  v22 = a3;
  v23 = a7;
  v24 = a8;
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v19[0] = v13;
  v19[1] = v14;
  v20 = v15;
  v16 = type metadata accessor for PopoverConditionalStateProvider();
  swift_getWitnessTable();
  PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)(v21, v19, a5 & 0x1FF, a6, 1, 0, v16, v28);

  outlined copy of Environment<CGFloat?>.Content(v13, v14, v15);
  v17 = type metadata accessor for PopoverPresentationModifier();
  MEMORY[0x18D00A570](v28, a9, v17, a11);
  return (*(*(v17 - 8) + 8))(v28, v17);
}

uint64_t View.popover<A>(isPresented:attachmentAnchor:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *a4;
  v10 = *(a4 + 8);
  v11 = *(a4 + 16);
  v18[0] = a1;
  v18[1] = a2;
  v19 = a3;
  v20 = a5;
  v21 = a6;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v16[0] = v9;
  v16[1] = v10;
  v17 = v11;
  v12 = type metadata accessor for PopoverConditionalStateProvider();
  swift_getWitnessTable();
  PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)(v18, v16, 256, 0, 1, 0, v12, v25);

  outlined copy of Environment<CGFloat?>.Content(v9, v10, v11);
  v13 = type metadata accessor for PopoverPresentationModifier();
  MEMORY[0x18D00A570](v25, a7, v13, a9);
  return (*(*(v13 - 8) + 8))(v25, v13);
}

uint64_t View.popover<A>(isPresented:attachmentAnchor:arrowEdge:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *a4;
  v11 = *(a4 + 8);
  v13 = *(a4 + 16);
  v24[0] = a1;
  v24[1] = a2;
  v25 = a3;
  v26 = a6;
  v27 = a7;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  v22[0] = v12;
  v22[1] = v11;
  v23 = v13;

  outlined copy of Environment<CGFloat?>.Content(v12, v11, v13);
  static Semantics.v6.getter();
  v14 = isLinkedOnOrAfter(_:)();
  if (a5 >= 8u)
  {
    LOBYTE(v15) = 0;
  }

  else
  {
    v15 = 1 << a5;
  }

  if (a5 > 8u)
  {
    LOBYTE(v15) = 0;
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = ~v14;
  v18 = type metadata accessor for PopoverConditionalStateProvider();
  swift_getWitnessTable();
  PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)(v24, v22, v16 | ((v17 & 1) << 8), 0, 1, 0, v18, v31);
  v19 = type metadata accessor for PopoverPresentationModifier();
  MEMORY[0x18D00A570](v31, a8, v19, a10);
  return (*(*(v19 - 8) + 8))(v31, v19);
}

double PopoverConditionalStateProvider.init(isPresented:content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  result = 0.0;
  *(a6 + 40) = 0u;
  *(a6 + 56) = 0u;
  *(a6 + 72) = 0;
  return result;
}

uint64_t View.popover<A, B>(item:attachmentAnchor:arrowEdges:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v37 = a6;
  v32 = a4;
  v33 = a5;
  v34 = a3;
  v31 = a1;
  v35 = a9;
  v29[3] = a12;
  v29[4] = a8;
  v36 = a10;
  v29[1] = a7;
  v29[2] = a11;
  type metadata accessor for Optional();
  v30 = type metadata accessor for Binding();
  v15 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v17 = v29 - v16;
  v38 = a7;
  v39 = a8;
  v40 = a11;
  v41 = a12;
  v18 = type metadata accessor for PopoverItemStateProvider();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v29 - v19;
  v29[0] = swift_getWitnessTable();
  v21 = type metadata accessor for PopoverPresentationModifier();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = v29 - v24;
  v26 = *a2;
  v27 = *(a2 + 8);
  LOBYTE(a2) = *(a2 + 16);
  (*(v15 + 16))(v17, v31, v30, v23);
  PopoverItemStateProvider.init(item:content:)(v17, v32, v33, v20);
  v38 = v26;
  v39 = v27;
  LOBYTE(v40) = a2;
  PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)(v20, &v38, v34, 0, 1, 0, v18, v25);

  outlined copy of Environment<CGFloat?>.Content(v26, v27, a2);
  MEMORY[0x18D00A570](v25, v37, v21, v36);
  return (*(v22 + 8))(v25, v21);
}

void PopoverContent.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v55 = *(a1 + 16);
  v4 = type metadata accessor for ModifiedContent();
  v67 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v53 - v5;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(255, &lazy cache variable for type metadata for StyleContextWriter<PopoverStyleContext>, MEMORY[0x1E697F788], MEMORY[0x1E697F780], MEMORY[0x1E697F4C8]);
  v6 = type metadata accessor for ModifiedContent();
  v63 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v53 - v7;
  type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>();
  v58 = type metadata accessor for ModifiedContent();
  v77 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v54 = &v53 - v8;
  type metadata accessor for _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>, &lazy cache variable for type metadata for Binding<PresentationMode>, &type metadata for PresentationMode, MEMORY[0x1E6981948]);
  v62 = type metadata accessor for ModifiedContent();
  v80 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v57 = &v53 - v9;
  v10 = MEMORY[0x1E69E6720];
  type metadata accessor for _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TintAdjustmentMode?>, &lazy cache variable for type metadata for TintAdjustmentMode?, MEMORY[0x1E697F510], MEMORY[0x1E69E6720]);
  v65 = type metadata accessor for ModifiedContent();
  v85 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v59 = &v53 - v11;
  v12 = MEMORY[0x1E6980A08];
  _ss11AnyHashableVSgMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v71 = type metadata accessor for ModifiedContent();
  v82 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v60 = &v53 - v13;
  v70 = type metadata accessor for ModifiedContent();
  v84 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v66 = &v53 - v14;
  _ss11AnyHashableVSgMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListStackBehavior>, &type metadata for ListStackBehavior, v12);
  v72 = type metadata accessor for ModifiedContent();
  v83 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v64 = &v53 - v15;
  v74 = type metadata accessor for ModifiedContent();
  v86 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v68 = &v53 - v16;
  v76 = type metadata accessor for ModifiedContent();
  v90 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v69 = &v53 - v17;
  v79 = type metadata accessor for ModifiedContent();
  v91 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v73 = &v53 - v18;
  v87 = type metadata accessor for ModifiedContent();
  _ss11AnyHashableVSgMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled, v12);
  v88 = type metadata accessor for ModifiedContent();
  _ss11AnyHashableVSgMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed, v12);
  v78 = type metadata accessor for ModifiedContent();
  v93 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v61 = &v53 - v19;
  type metadata accessor for _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>, &lazy cache variable for type metadata for PresentSharingPickerAction?, &type metadata for PresentSharingPickerAction, v10);
  v89 = type metadata accessor for ModifiedContent();
  v92 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v75 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v81 = &v53 - v22;
  static Alignment.center.getter();
  v52 = *(a1 + 24);
  v23 = v56;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v112 = v52;
  v113 = MEMORY[0x1E697EBF8];
  WitnessTable = swift_getWitnessTable();
  v25 = v53;
  View.styleContext<A>(_:)();
  (*(v67 + 8))(v23, v4);
  v26 = lazy protocol witness table accessor for type StyleContextWriter<PopoverStyleContext> and conformance StyleContextWriter<A>();
  v110 = WitnessTable;
  v111 = v26;
  v27 = swift_getWitnessTable();
  v28 = v54;
  View.renderContainerBackgroundInHostingView<A>(_:)();
  (*(v63 + 8))(v25, v6);
  swift_getKeyPath();
  v29 = (v2 + *(a1 + 40));
  v30 = *v29;
  v31 = v29[1];
  LOBYTE(v25) = *(v29 + 16);

  v107 = v30;
  v108 = v31;
  v109 = v25;
  v32 = lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>();
  v105 = v27;
  v106 = v32;
  v33 = v58;
  v34 = swift_getWitnessTable();
  v35 = v57;
  View.environment<A>(_:_:)();

  (*(v77 + 8))(v28, v33);
  swift_getKeyPath();
  LOBYTE(v107) = 2;
  v36 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyWritingModifier<A>();
  v103 = v34;
  v104 = v36;
  v37 = v62;
  v38 = swift_getWitnessTable();
  v39 = v59;
  View.environment<A>(_:_:)();

  (*(v80 + 8))(v35, v37);
  swift_getKeyPath();
  LOBYTE(v107) = 1;
  v40 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TintAdjustmentMode?> and conformance _EnvironmentKeyWritingModifier<A>();
  v101 = v38;
  v102 = v40;
  v41 = v65;
  v42 = swift_getWitnessTable();
  v43 = v60;
  View.environment<A>(_:_:)();

  (*(v85 + 8))(v39, v41);
  v44 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370]);
  v99 = v42;
  v100 = v44;
  v45 = v71;
  v46 = swift_getWitnessTable();
  v47 = v66;
  View.resetScrollEnvironment()(v45, v46);
  (*(v82 + 8))(v43, v45);
  v48 = lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier();
  v97 = v46;
  v98 = v48;
  v49 = v70;
  v50 = swift_getWitnessTable();
  View.resetListStackBehavior()();
  (*(v84 + 8))(v47, v49);
  v51 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListStackBehavior>, &type metadata for ListStackBehavior);
  v95 = v50;
  v96 = v51;
  swift_getWitnessTable();
  View.resetFormEnvironment()();
}

void sub_18C713A3C()
{
  (*(*(v0 + 240) + 8))(v3, v1);
  *(v4 - 256) = v2;
  *(v4 - 248) = &protocol witness table for ResetFormEnvironmentModifier;
  swift_getWitnessTable();
  View.resetTabViewEnvironment()();
}

uint64_t sub_18C713A94()
{
  (*(v0[33] + 8))(v4, v2);
  swift_getKeyPath();
  *(v6 - 144) = 0;
  v0[52] = v3;
  v0[53] = &protocol witness table for ResetTabViewEnvironmentModifier;
  v7 = v0[23];
  WitnessTable = swift_getWitnessTable();
  v9 = v0[20];
  View.environment<A>(_:_:)();

  (*(v0[37] + 8))(v5, v7);
  v0[50] = WitnessTable;
  v0[51] = v1;
  v10 = v0[26];
  v11 = swift_getWitnessTable();
  v12 = v0[8];
  View.clearNavigationContext()(v11, v12);
  (*(v0[38] + 8))(v9, v10);
  v0[48] = v11;
  v0[49] = &protocol witness table for ClearNavigationContextModifier;
  v13 = swift_getWitnessTable();
  v14 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled);
  v0[46] = v13;
  v0[47] = v14;
  v15 = swift_getWitnessTable();
  v16 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed);
  v0[44] = v15;
  v0[45] = v16;
  v17 = v0[25];
  v18 = swift_getWitnessTable();
  v19 = v0[22];
  View.clearSharingPickerHost()();
  (*(v0[40] + 8))(v12, v17);
  v20 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<PresentSharingPickerAction?> and conformance _EnvironmentKeyWritingModifier<A>();
  v0[42] = v18;
  v0[43] = v20;
  v21 = v0[36];
  v22 = swift_getWitnessTable();
  v23 = v0[28];
  static ViewBuilder.buildExpression<A>(_:)(v19, v21, v22);
  v24 = *(v0[39] + 8);
  v24(v19, v21);
  static ViewBuilder.buildExpression<A>(_:)(v23, v21, v22);
  return (v24)(v23, v21);
}

uint64_t EnvironmentValues.presentationNeedsInitialPreferredContentSize.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.presentationNeedsInitialPreferredContentSize : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.presentationNeedsInitialPreferredContentSize : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t PopoverPresentationModifier.PopoverModifier.viewID.getter@<X0>(_DWORD *a1@<X8>)
{
  if (*v1)
  {
    *a1 = *v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t PopoverPresentationModifier.PopoverModifier.presentationEnvironment.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (v2 + *(a1 + 56));
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;

  return specialized static ResetGlassEnvironmentModifier.makeEnvironment(_:)();
}

uint64_t PopoverPresentationModifier.PopoverModifier.wrappedContent(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v6[2] = v7;
  v6[3] = v8;
  v6[4] = a1;
  v6[5] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v44[0] = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(partial apply for closure #1 in PopoverPresentationModifier.PopoverModifier.wrappedContent(_:), v6, AssociatedTypeWitness, AssociatedConformanceWitness);
  *(&v44[0] + 1) = v11;
  type metadata accessor for LazyView();

  WitnessTable = swift_getWitnessTable();
  View.clearNavigationContext()(WitnessTable, &v25);

  v39 = v25;
  v40 = v26;
  v41 = BYTE8(v26);
  v42 = v27;
  v43 = DWORD2(v27);
  (*(v8 + 56))(v37, v7, v8);
  v14 = v37[0];
  v13 = v37[1];
  v24 = v38;
  type metadata accessor for ModifiedContent();
  v15 = MEMORY[0x1E6980A08];
  _ss11AnyHashableVSgMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled, MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  _ss11AnyHashableVSgMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed, v15);
  v16 = type metadata accessor for ModifiedContent();
  v35 = WitnessTable;
  v36 = &protocol witness table for ClearNavigationContextModifier;
  v17 = swift_getWitnessTable();
  v18 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled);
  v33 = v17;
  v34 = v18;
  v19 = swift_getWitnessTable();
  v20 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed);
  v31 = v19;
  v32 = v20;
  swift_getWitnessTable();
  v44[0] = vdupq_n_s64(0x4051000000000000uLL);
  v21 = type metadata accessor for PopoverContent();
  (*(*(v16 - 8) + 32))(v44 + *(v21 + 36), &v39, v16);
  v22 = v44 + *(v21 + 40);
  *v22 = v14;
  *(v22 + 1) = v13;
  v22[16] = v24;
  v27 = v44[2];
  v28 = v44[3];
  v29 = v44[4];
  v30 = v45;
  v25 = v44[0];
  v26 = v44[1];
  swift_getWitnessTable();
  return AnyView.init<A>(_:)();
}

uint64_t (*implicit closure #1 in closure #1 in PopoverPresentationModifier.PopoverModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in closure #1 in PopoverPresentationModifier.PopoverModifier.body(content:);
}

__n128 closure #1 in PopoverPresentationModifier.PopoverModifier.body(content:)(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void, void))
{
  v13 = type metadata accessor for PopoverPresentationModifier.PopoverModifier();
  v14 = v13[9];
  v15 = (*(a6 + 40))(a5, a6);
  if (v15)
  {
    v18 = v15;
    v41 = PopoverPresentationModifier.PopoverModifier.wrappedContent(_:)(v15, v16, v13);
    v19 = (a4 + v13[11]);
    v39 = v19[1];
    v40 = *v19;
    v20 = a7(a4 + v14, a5, a6);
    v37 = v21;
    v38 = v20;
    v36 = *(a4 + v13[12]);
    PopoverPresentationModifier.PopoverModifier.viewID.getter(&v45);
    v22 = a1;
    v23 = v45;
    (*(a6 + 48))(v44, a5, a6);
    PopoverPresentationModifier.PopoverModifier.presentationEnvironment.getter(v13, v43);
    v24 = v43[0];
    v25 = v43[1];
    v26 = *(a4 + v13[15]);
    LODWORD(v53) = 0;
    v49 = 0u;
    v50 = 0u;
    *(&v52 + 1) = 0;
    *&v51 = 0;
    BYTE4(v53) = 1;
    BYTE6(v53) = 1;
    *&v46 = v41;
    BYTE8(v46) = v40;
    BYTE9(v46) = v39;
    *&v47 = a2;
    *(&v47 + 1) = v38;
    *&v48 = v37;
    BYTE8(v48) = v36;
    HIDWORD(v48) = v23;

    outlined assign with take of AnyHashable?(v44, &v49);
    *(&v51 + 1) = v24;
    v52 = v25;
    LODWORD(v53) = 0;
    BYTE4(v53) = 1;
    BYTE5(v53) = v26;
    *(&v53 + 1) = a3;
    v27 = *v22;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
    }

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v18);
    *(v27 + 2) = v29 + 1;
    v30 = &v27[128 * v29];
    v31 = v46;
    v32 = v47;
    v33 = v49;
    *(v30 + 4) = v48;
    *(v30 + 5) = v33;
    *(v30 + 2) = v31;
    *(v30 + 3) = v32;
    result = v50;
    v34 = v51;
    v35 = v53;
    *(v30 + 8) = v52;
    *(v30 + 9) = v35;
    *(v30 + 6) = result;
    *(v30 + 7) = v34;
    *v22 = v27;
  }

  return result;
}

uint64_t (*implicit closure #1 in closure #3 in PopoverPresentationModifier.PopoverModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in closure #3 in PopoverPresentationModifier.PopoverModifier.body(content:);
}

uint64_t closure #1 in PopoverPresentationModifier.PopoverModifier.wrappedContent(_:)(void (*a1)(double))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  a1(v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v5, AssociatedTypeWitness, AssociatedConformanceWitness);
  v11 = *(v3 + 8);
  v11(v5, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v9, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v11)(v9, AssociatedTypeWitness);
}

uint64_t static EmptyAnchorTraitTransformModifier._makeViewList(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, _BYTE *))
{
  v35 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, v25);
  v4 = a2[1];
  v26 = *a2;
  v27 = v4;
  v6 = *a2;
  v5 = a2[1];
  v28 = a2[2];
  v19 = v6;
  v20 = v5;
  v21 = a2[2];
  outlined init with copy of _GraphInputs(&v26, &v29);
  _ViewInputs.init(withoutGeometry:)();
  type metadata accessor for EmptyAnchorTraitTransformModifier();
  type metadata accessor for _GraphValue();
  v7 = _GraphValue.value.getter();
  v8 = _ViewListInputs.traits.getter();
  if ((v8 & 0x100000000) != 0)
  {
    v9 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v9 = v8;
  }

  v10 = HIDWORD(v27);
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  *(&v20 + 1) = *(&v30 + 1);
  *&v19 = __PAIR64__(v9, v7);
  DWORD2(v19) = _ViewInputs.position.getter();
  HIDWORD(v19) = Attribute<A>.origin()();
  *&v20 = __PAIR64__(v10, HIDWORD(v32));
  v17 = type metadata accessor for EmptyAnchorTraitTransformModifier.TransformTrait();
  WitnessTable = swift_getWitnessTable();
  _ss11AnyHashableVSgMaTm_3(0, &lazy cache variable for type metadata for Attribute<ViewTraitCollection>, MEMORY[0x1E697F890], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v19, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_21, v16, v17, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  LOBYTE(v19) = 0;
  _ViewListInputs.traits.setter();
  v13 = _ViewListInputs.addTraitKey<A>(_:)();
  a3(v13, v25);
  outlined destroy of _ViewInputs(&v29);
  return outlined destroy of _ViewListInputs(v25);
}

uint64_t EmptyAnchorTraitTransformModifier.TransformTrait.modifier.getter()
{
  type metadata accessor for EmptyAnchorTraitTransformModifier();
  v0 = *AGGraphGetValue();

  return v0;
}

uint64_t EmptyAnchorTraitTransformModifier.TransformTrait.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = HIDWORD(a1);
  v14[0] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v5 = v14 - v4;
  AGGraphClearUpdate();
  v6 = *AGGraphGetValue();

  AGGraphSetUpdate();
  AnchorGeometry.init(position:size:transform:)();
  v7 = v16;
  v8 = v15;
  EmptyAnchorTraitTransformModifier.TransformTrait.modifier.getter();

  v15 = v8;
  v16 = v7;
  v9 = Anchor.Source.prepare(geometry:)();

  if (*MEMORY[0x1E698D3F8] == v2 || (v10 = *AGGraphGetValue(), , !v10))
  {
    ViewTraitCollection.init()();
    v10 = v15;
  }

  else
  {
    v15 = v10;
  }

  EmptyAnchorTraitTransformModifier.TransformTrait.modifier.getter();
  v12 = v11;

  v14[1] = v10;
  ViewTraitCollection.subscript.getter();
  v12(v5, v9, v6);

  ViewTraitCollection.subscript.setter();

  *v14[0] = v15;
  return result;
}

uint64_t PopoverConditionalStateProvider.presentationMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  lazy protocol witness table accessor for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented();

  v5 = dispatch thunk of AnyLocation.projecting<A>(_:)();

  *(a1 + 16) = v4;
  *a1 = v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t PopoverItemStateProvider.popoverContent.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-v6];
  ItemSheetPresentationModifier.item.getter(a1, MEMORY[0x1E6981920]);
  v12 = v3;
  v13 = *(a1 + 24);
  v14 = *(a1 + 40);
  v15 = v1;
  FunctionTypeMetadata0 = swift_getFunctionTypeMetadata0();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in PopoverItemStateProvider.popoverContent.getter, v11, MEMORY[0x1E69E73E0], FunctionTypeMetadata0, v9, &v16);
  (*(v5 + 8))(v7, v4);
  return v16;
}

uint64_t closure #1 in PopoverItemStateProvider.popoverContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)()@<X8>)
{
  v33 = a5;
  v34 = a6;
  v31 = a2;
  v32 = a4;
  v35 = a7;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v12;
  v37 = v13;
  v38 = v14;
  v39 = v15;
  v16 = type metadata accessor for PopoverItemStateProvider();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v30 - v20;
  (*(v17 + 16))(&v30 - v20, v31, v16, v19);
  (*(v9 + 16))(v11, a1, a3);
  v22 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v23 = (v18 + *(v9 + 80) + v22) & ~*(v9 + 80);
  v24 = swift_allocObject();
  v25 = v32;
  v26 = v33;
  *(v24 + 2) = a3;
  *(v24 + 3) = v25;
  v27 = v34;
  *(v24 + 4) = v26;
  *(v24 + 5) = v27;
  (*(v17 + 32))(&v24[v22], v21, v16);
  result = (*(v9 + 32))(&v24[v23], v11, a3);
  v29 = v35;
  *v35 = partial apply for closure #1 in closure #1 in PopoverItemStateProvider.popoverContent.getter;
  v29[1] = v24;
  return result;
}

uint64_t PopoverItemStateProvider.identifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v16 - v11;
  ItemSheetPresentationModifier.item.getter(a1, MEMORY[0x1E6981920]);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    result = (*(v7 + 8))(v9, v6);
    v14 = v19;
    *(v19 + 32) = 0;
    *v14 = 0u;
    v14[1] = 0u;
  }

  else
  {
    v15 = v18;
    (*(v4 + 16))(v18, v9, v3);
    (*(v7 + 8))(v9, v6);
    dispatch thunk of Identifiable.id.getter();
    (*(v4 + 8))(v15, v3);
    swift_getAssociatedConformanceWitness();
    _convertToAnyHashable<A>(_:)();
    return (*(v17 + 8))(v12, AssociatedTypeWitness);
  }

  return result;
}

uint64_t PopoverItemStateProvider.presentationMode.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Optional();
  v3 = type metadata accessor for Binding();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  ItemSheetPresentationModifier.item.getter(a1, MEMORY[0x1E6981928]);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v2, *(a1 + 32), v7, v8);
  type metadata accessor for PresentationMode.FromItem();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

Swift::Void __swiftcall PopoverItemStateProvider.dismiss()()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v7 - v5;
  (*(*(v1 - 8) + 56))(&v7 - v5, 1, 1, v1, v4);
  specialized ItemSheetPresentationModifier.item.setter();
  (*(v3 + 8))(v6, v2);
}

uint64_t specialized Edge.Set.init(_:)(unsigned __int8 a1)
{
  if (a1 >= 8u)
  {
    v1 = 0;
  }

  else
  {
    v1 = 1 << a1;
  }

  if (a1 <= 8u)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t assignWithTake for PopoverAttachmentAnchor(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  outlined consume of Environment<CGFloat?>.Content(v4, v5, v6);
  return a1;
}

uint64_t destroy for PopoverPresentation(uint64_t a1)
{

  if (*(a1 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 48);
  }
}

uint64_t initializeWithCopy for PopoverPresentation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  v5 = *(a2 + 72);

  if (v5)
  {
    v6 = *(a2 + 80);
    *(a1 + 72) = v5;
    *(a1 + 80) = v6;
    (**(v5 - 8))(a1 + 48, a2 + 48, v5);
  }

  else
  {
    v7 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v7;
    *(a1 + 80) = *(a2 + 80);
  }

  v8 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v8;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 117) = *(a2 + 117);
  *(a1 + 118) = *(a2 + 118);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithCopy for PopoverPresentation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  v5 = *(a2 + 72);
  if (*(a1 + 72))
  {
    v6 = (a1 + 48);
    if (v5)
    {
      __swift_assign_boxed_opaque_existential_1(v6, (a2 + 48));
    }

    else
    {
      outlined destroy of AnyHashable(v6);
      v7 = *(a2 + 80);
      v8 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v8;
      *(a1 + 80) = v7;
    }
  }

  else if (v5)
  {
    *(a1 + 72) = v5;
    *(a1 + 80) = *(a2 + 80);
    (**(v5 - 8))(a1 + 48, a2 + 48);
  }

  else
  {
    v9 = *(a2 + 48);
    v10 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 48) = v9;
    *(a1 + 64) = v10;
  }

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  v11 = *(a2 + 104);
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 104) = v11;
  *(a1 + 117) = *(a2 + 117);
  *(a1 + 118) = *(a2 + 118);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithTake for PopoverPresentation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  if (*(a1 + 72))
  {
    if (*(a2 + 72))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 48);
    }

    else
    {
      outlined destroy of AnyHashable(a1 + 48);
    }
  }

  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  v5 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v5;

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 117) = *(a2 + 117);
  *(a1 + 118) = *(a2 + 118);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithTake for PopoverConditionalStateProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  if (*(a1 + 64))
  {
    if (*(a2 + 64))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 40);
    }

    else
    {
      outlined destroy of AnyHashable(a1 + 40);
    }
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for PopoverConditionalStateProvider(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for PopoverConditionalStateProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PopoverPresentationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 22 > 0x18)
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
    v14 = *(v11 + 16);
    outlined copy of Environment<CGFloat?>.Content(*v11, v13, v14);
    *v10 = v12;
    *(v10 + 8) = v13;
    *(v10 + 16) = v14;
    *(v10 + 17) = *(v11 + 17);
    *(v10 + 19) = *(v11 + 19);
    *(v10 + 20) = *(v11 + 20);
    *(v10 + 21) = *(v11 + 21);
  }

  return v3;
}