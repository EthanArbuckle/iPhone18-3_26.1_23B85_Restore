uint64_t AttributedString.unicodeScalars.setter(_OWORD *a1)
{
  v2 = v1;
  v3 = a1[3];
  v52[2] = a1[2];
  v52[3] = v3;
  v52[4] = a1[4];
  v4 = a1[1];
  v52[0] = *a1;
  v52[1] = v4;
  v42 = *v1;
  AttributedString._bounds.getter(v51);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  v7 = &unk_1EA7B2000;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = &static AttributedString.Guts._nextVersion;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_11;
  }

  v10 = &static AttributedString.Guts._nextVersion;
  v11 = *(v6 + 40);
  v66 = *(v6 + 24);
  v67 = v11;
  v68 = *(v6 + 56);
  v12 = *(v6 + 72);
  v13 = *(v6 + 80);
  v14 = *(v6 + 88);
  v15 = *(v6 + 96);
  type metadata accessor for AttributedString.Guts();
  v6 = swift_allocObject();
  v16 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v66, v43);
  v17 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v17);
  if (v12)
  {
    v18 = v14 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v18;
  if (v19 != v16)
  {
    goto LABEL_21;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v9 = v10;
    add_explicit = atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
    v21 = v67;
    *(v6 + 24) = v66;
    *(v6 + 16) = add_explicit;
    *(v6 + 40) = v21;
    *(v6 + 56) = v68;
    *(v6 + 72) = v12;
    *(v6 + 80) = v13;
    *(v6 + 88) = v14;
    *(v6 + 96) = v15;
    *(v6 + 104) = v8;

    *v2 = v6;
LABEL_11:
    v10 = v41;
    if (v7[147] != -1)
    {
      swift_once();
    }

    *(v6 + 16) = atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
    v22 = *(v6 + 24);
    v23 = *(v6 + 56);
    v65[1] = *(v6 + 40);
    v65[2] = v23;
    v65[0] = v22;
    v7 = *(v6 + 56);
    v8 = *(v6 + 64);
    v38 = *(v6 + 40);
    v39 = *(v6 + 24);
    v24 = BigString.startIndex.getter();
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v28 = BigString.endIndex.getter();
    v53 = v24;
    v54 = v13;
    v55 = v14;
    v56 = v15;
    v57 = v28;
    v58 = v29;
    v59 = v30;
    v60 = v31;
    v61 = v39;
    v62 = v38;
    v63 = v7;
    v64 = v8;
    swift_retain_n();
    outlined init with copy of BigString(v65, v43);
    BigString.UnicodeScalarView.subscript.getter();

    outlined destroy of BigString(v65);
    outlined destroy of BigSubstring.UnicodeScalarView(v43);
    v40[5] = v44;
    v40[6] = v45;
    v40[7] = v46;
    v40[8] = v47;
    *v41 = v6;
    *&v41[8] = v44;
    *&v41[24] = v45;
    *&v41[40] = v46;
    *&v41[56] = v47;
    if (one-time initialization token for currentIdentity != -1)
    {
      swift_once();
    }

    v32 = static AttributedString.currentIdentity;
    os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
    v33 = *(v32 + 16);
    v12 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v32 + 16) = v12;
    os_unfair_lock_unlock((v32 + 24));
    *&v41[72] = v12;
    BigString.init()();
    *&v40[0] = 0;
    MEMORY[0x1865D26B0](v40, 8);
    v13 = *&v40[0];
    type metadata accessor for AttributedString.Guts();
    v6 = swift_allocObject();
    if (BigString.isEmpty.getter())
    {
      break;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  v34 = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v35 = v49;
  *(v6 + 24) = v48;
  *(v6 + 16) = v34;
  *(v6 + 40) = v35;
  *(v6 + 56) = v50;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  *(v6 + 96) = v13;
  *(v6 + 104) = MEMORY[0x1E69E7CC0];

  *v2 = v6;
  specialized AttributedString.UnicodeScalarView.replaceSubrange<A>(_:with:)(v51, v52);
  if (*&v41[72] == v12)
  {
    outlined destroy of AttributedString.UnicodeScalarView(v52);
    v36 = *v41;

    *v2 = v36;
    v40[2] = *&v41[32];
    v40[3] = *&v41[48];
    v40[4] = *&v41[64];
    v40[0] = *v41;
    v40[1] = *&v41[16];
    return outlined destroy of AttributedString.UnicodeScalarView(v40);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void (*AttributedString.unicodeScalars.modify(uint64_t *a1))(uint64_t *a1)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x220uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 528) = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v8 = &unk_1EA7B2000;
  v9 = MEMORY[0x1E69E7CC0];
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_14;
  }

  v10 = *(v7 + 24);
  v11 = *(v7 + 56);
  *(v5 + 352) = *(v7 + 40);
  *(v5 + 368) = v11;
  *(v5 + 336) = v10;
  v12 = *(v7 + 72);
  v13 = *(v7 + 80);
  v14 = *(v7 + 88);
  v15 = *(v7 + 96);
  type metadata accessor for AttributedString.Guts();
  v7 = swift_allocObject();
  v16 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(v5 + 336, v5 + 112);
  v17 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v17);
  if (v12)
  {
    v18 = v14 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v18;
  if (v19 != v16)
  {
    goto LABEL_23;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    *(v7 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v20 = *(v5 + 336);
    v21 = *(v5 + 352);
    *(v7 + 56) = *(v5 + 368);
    *(v7 + 40) = v21;
    *(v7 + 24) = v20;
    *(v7 + 72) = v12;
    *(v7 + 80) = v13;
    *(v7 + 88) = v14;
    *(v7 + 96) = v15;
    *(v7 + 104) = v9;

    *v2 = v7;
LABEL_14:
    if (v8[147] != -1)
    {
      swift_once();
    }

    *(v7 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v22 = *(v7 + 24);
    v23 = *(v7 + 56);
    *(v5 + 400) = *(v7 + 40);
    *(v5 + 416) = v23;
    *(v5 + 384) = v22;
    v8 = *(v7 + 56);
    v24 = *(v7 + 64);
    v39 = *(v7 + 40);
    v40 = *(v7 + 24);
    v12 = BigString.startIndex.getter();
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v28 = BigString.endIndex.getter();
    *(v5 + 272) = v12;
    *(v5 + 280) = v13;
    *(v5 + 288) = v14;
    *(v5 + 296) = v15;
    *(v5 + 304) = v28;
    *(v5 + 312) = v29;
    *(v5 + 320) = v30;
    *(v5 + 328) = v31;
    *(v5 + 432) = v40;
    *(v5 + 448) = v39;
    *(v5 + 464) = v8;
    *(v5 + 472) = v24;
    swift_retain_n();
    outlined init with copy of BigString(v5 + 384, v5 + 192);
    BigString.UnicodeScalarView.subscript.getter();

    outlined destroy of BigString(v5 + 384);
    outlined destroy of BigSubstring.UnicodeScalarView(v5);
    v32 = *(v5 + 48);
    v41 = *(v5 + 64);
    v33 = *(v5 + 80);
    v42 = *(v5 + 96);
    *(v5 + 112) = v7;
    *(v5 + 120) = v32;
    *(v5 + 136) = v41;
    *(v5 + 152) = v33;
    *(v5 + 168) = v42;
    if (one-time initialization token for currentIdentity != -1)
    {
      swift_once();
    }

    v34 = static AttributedString.currentIdentity;
    os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
    v35 = *(v34 + 16);
    v7 = v35 + 1;
    *(v5 + 536) = v35 + 1;
    v9 = MEMORY[0x1E69E7CC0];
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v34 + 16) = v7;
    os_unfair_lock_unlock((v34 + 24));
    *(v5 + 184) = v7;
    BigString.init()();
    *(v5 + 192) = 0;
    MEMORY[0x1865D26B0](v5 + 192, 8);
    v12 = *(v5 + 192);
    type metadata accessor for AttributedString.Guts();
    v7 = swift_allocObject();
    if (BigString.isEmpty.getter())
    {
      break;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  *(v7 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v36 = *(v5 + 480);
  v37 = *(v5 + 496);
  *(v7 + 56) = *(v5 + 512);
  *(v7 + 40) = v37;
  *(v7 + 24) = v36;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = v12;
  *(v7 + 104) = v9;

  *v2 = v7;
  return AttributedString.unicodeScalars.modify;
}

void AttributedString.unicodeScalars.modify(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 184) == *(*a1 + 536))
  {
    v2 = *(v1 + 528);
    v3 = *(v1 + 112);

    *v2 = v3;
    v4 = *(v1 + 160);
    *(v1 + 224) = *(v1 + 144);
    *(v1 + 240) = v4;
    *(v1 + 256) = *(v1 + 176);
    v5 = *(v1 + 128);
    *(v1 + 192) = *(v1 + 112);
    *(v1 + 208) = v5;
    outlined destroy of AttributedString.UnicodeScalarView(v1 + 192);

    free(v1);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void *specialized AttributedString.UnicodeScalarView.replaceSubrange<A>(_:with:)(void *result)
{
  if (*result >> 10 < v1[1] >> 10)
  {
    __break(1u);
  }

  else if (v1[5] >> 10 >= result[5] >> 10)
  {
    v2 = *v1;
    v3 = *(*v1 + 40);
    v23 = *(*v1 + 24);
    v24 = v3;
    v25 = *(v2 + 56);
    swift_unknownObjectRetain();
    v4 = BigString.UnicodeScalarView.index(roundingDown:)();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    swift_unknownObjectRelease();
    v11 = *(v2 + 40);
    v20 = *(v2 + 24);
    v21 = v11;
    v22 = *(v2 + 56);
    swift_unknownObjectRetain();
    v12 = BigString.UnicodeScalarView.index(roundingDown:)();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    swift_unknownObjectRelease();
    v19[0] = v4;
    v19[1] = v6;
    v19[2] = v8;
    v19[3] = v10;
    v19[4] = v12;
    v19[5] = v14;
    v19[6] = v16;
    v19[7] = v18;
    return specialized AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(v19);
  }

  __break(1u);
  return result;
}

void *specialized AttributedString.UnicodeScalarView.replaceSubrange<A>(_:with:)(void *result, int a2)
{
  if (*result >> 10 < v2[1] >> 10)
  {
    __break(1u);
  }

  else if (v2[5] >> 10 >= result[5] >> 10)
  {
    v3 = *v2;
    v4 = *(*v2 + 40);
    v25 = *(*v2 + 24);
    v26 = v4;
    v27 = *(v3 + 56);
    swift_unknownObjectRetain();
    v5 = BigString.UnicodeScalarView.index(roundingDown:)();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    swift_unknownObjectRelease();
    v12 = *(v3 + 40);
    v22 = *(v3 + 24);
    v23 = v12;
    v24 = *(v3 + 56);
    swift_unknownObjectRetain();
    v13 = BigString.UnicodeScalarView.index(roundingDown:)();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    swift_unknownObjectRelease();
    v21[0] = v5;
    v21[1] = v7;
    v21[2] = v9;
    v21[3] = v11;
    v21[4] = v13;
    v21[5] = v15;
    v21[6] = v17;
    v21[7] = v19;
    return specialized AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(v21, a2);
  }

  __break(1u);
  return result;
}

void *specialized AttributedString.UnicodeScalarView.replaceSubrange<A>(_:with:)(void *result, uint64_t a2)
{
  if (*result >> 10 < v2[1] >> 10)
  {
    __break(1u);
  }

  else if (v2[5] >> 10 >= result[5] >> 10)
  {
    v4 = *v2;
    v5 = *(*v2 + 40);
    v27[10] = *(*v2 + 24);
    v27[11] = v5;
    v27[12] = *(v4 + 56);
    swift_unknownObjectRetain();
    v6 = BigString.UnicodeScalarView.index(roundingDown:)();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    swift_unknownObjectRelease();
    v13 = *(v4 + 40);
    v27[7] = *(v4 + 24);
    v27[8] = v13;
    v27[9] = *(v4 + 56);
    swift_unknownObjectRetain();
    v14 = BigString.UnicodeScalarView.index(roundingDown:)();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    swift_unknownObjectRelease();
    v21 = *(*a2 + 40);
    v22 = *(*a2 + 56);
    v27[0] = *(*a2 + 24);
    v27[1] = v21;
    v23 = *(a2 + 56);
    v24 = *(a2 + 24);
    v27[5] = *(a2 + 40);
    v27[6] = v23;
    v26[0] = v6;
    v26[1] = v8;
    v26[2] = v10;
    v26[3] = v12;
    v26[4] = v14;
    v26[5] = v16;
    v26[6] = v18;
    v26[7] = v20;
    v25 = *(a2 + 8);
    v27[2] = v22;
    v27[3] = v25;
    v27[4] = v24;
    swift_unknownObjectRetain();
    specialized AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(v26, v27);
    return outlined destroy of BigSubstring.UnicodeScalarView(v27);
  }

  __break(1u);
  return result;
}

void *AttributedString.UnicodeScalarView.replaceSubrange<A>(_:with:)(void *result, __int128 *a2, ValueMetadata *a3, void *a4)
{
  if (*result >> 10 < v4[1] >> 10)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v4[5] >> 10 < result[5] >> 10)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = *v4;
  v7 = *(*v4 + 40);
  v81 = *(*v4 + 24);
  v82 = v7;
  v83 = *(v6 + 56);
  swift_unknownObjectRetain();
  v8 = BigString.UnicodeScalarView.index(roundingDown:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  swift_unknownObjectRelease();
  v15 = *(v6 + 40);
  v78 = *(v6 + 24);
  v79 = v15;
  v80 = *(v6 + 56);
  swift_unknownObjectRetain();
  v16 = BigString.UnicodeScalarView.index(roundingDown:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  swift_unknownObjectRelease();
  v70[0] = v8;
  v70[1] = v10;
  v70[2] = v12;
  v70[3] = v14;
  v70[4] = v16;
  v70[5] = v18;
  v70[6] = v20;
  v70[7] = v22;
  if (a3 == &type metadata for AttributedString.UnicodeScalarView)
  {
    v23 = a2[1];
    v44 = *a2;
    v45 = v23;
    v24 = a2[4];
    v47 = a2[3];
    v48 = v24;
    v46 = a2[2];
    v42 = *(v44 + 24);
    v25 = *(v44 + 40);
    v26 = *(v44 + 56);
    v27 = *(a2 + 40);
    *&v53[32] = *(a2 + 24);
    v54 = v27;
    v55 = *(a2 + 56);
    v28 = *(a2 + 8);
    v51 = v42;
    v52 = v25;
    *v53 = v26;
    *&v53[16] = v28;
    outlined init with copy of AttributedString.UnicodeScalarView(&v44, v65);
    swift_unknownObjectRetain();
    specialized AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(v70, &v51);
    outlined destroy of AttributedString.UnicodeScalarView(&v44);
    v29 = &v51;
  }

  else
  {
    if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd) != a3)
    {
      return AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(v70, a2, a3, a4);
    }

    v30 = a2[5];
    *&v53[32] = a2[4];
    v54 = v30;
    v31 = a2[3];
    *v53 = a2[2];
    *&v53[16] = v31;
    v32 = a2[9];
    v57 = a2[8];
    v58 = v32;
    v33 = a2[7];
    v55 = a2[6];
    v56 = v33;
    v34 = a2[1];
    v51 = *a2;
    v52 = v34;
    v71 = v51;
    v72 = v34;
    v73 = *&v53[8];
    v74 = *&v53[24];
    v35 = v54;
    v36 = *(v54 + 40);
    v75 = *(v54 + 24);
    v76 = v36;
    v77 = *(v54 + 56);
    outlined init with copy of FloatingPointRoundingRule?(&v51, &v44, &_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd);
    outlined init with copy of FloatingPointRoundingRule?(&v51, &v44, &_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd);
    swift_unknownObjectRetain();
    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(v65);
    v63 = v69;
    v62 = v68;
    v61 = v67;
    v60 = v66;
    v59 = v35;
    v64 = 0;
    v37 = *(v35 + 56);
    v38 = *(v35 + 64);
    v43 = *(v35 + 40);
    v40 = *(v35 + 24);
    swift_unknownObjectRetain();
    outlined destroy of AttributedString.UnicodeScalarView(&v59);
    v47 = v60;
    v48 = v61;
    v49 = v62;
    v50 = v63;
    v44 = v40;
    v45 = v43;
    *&v46 = v37;
    *(&v46 + 1) = v38;
    specialized AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(v70, &v44);
    outlined destroy of TermOfAddress?(&v51, &_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd);
    v29 = &v44;
  }

  return outlined destroy of BigSubstring.UnicodeScalarView(v29);
}

__n128 AttributedString.UnicodeScalarView.startIndex.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 AttributedString.UnicodeScalarView.endIndex.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void *AttributedString.UnicodeScalarView.index(before:)@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *result >> 10;
  v5 = v2[1] >> 10;
  if (v4 >= v5 && v2[5] >> 10 >= v4)
  {
    v7 = *v2;
    swift_unknownObjectRetain();
    v8 = BigString.UnicodeScalarView.index(before:)();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    result = swift_unknownObjectRelease();
    if (v5 <= v8 >> 10)
    {
      v15 = *(v7 + 16);
      *a2 = v8;
      a2[1] = v10;
      a2[2] = v12;
      a2[3] = v14;
      a2[4] = v15;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *AttributedString.UnicodeScalarView.index(after:)@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *result >> 10;
  v5 = v2[5] >> 10;
  if (v4 >= v2[1] >> 10 && v5 >= v4)
  {
    v7 = *v2;
    swift_unknownObjectRetain();
    v8 = BigString.UnicodeScalarView.index(after:)();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    result = swift_unknownObjectRelease();
    if (v5 >= v8 >> 10)
    {
      v15 = *(v7 + 16);
      *a2 = v8;
      a2[1] = v10;
      a2[2] = v12;
      a2[3] = v14;
      a2[4] = v15;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *AttributedString.UnicodeScalarView.index(_:offsetBy:)@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *result >> 10;
  v5 = v2[1] >> 10;
  if (v4 >= v5 && v2[5] >> 10 >= v4)
  {
    v7 = *v2;
    v17 = v2[5] >> 10;
    swift_unknownObjectRetain();
    v8 = BigString.UnicodeScalarView.index(_:offsetBy:)();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    result = swift_unknownObjectRelease();
    if (v8 >> 10 >= v5 && v17 >= v8 >> 10)
    {
      v16 = *(v7 + 16);
      *a2 = v8;
      a2[1] = v10;
      a2[2] = v12;
      a2[3] = v14;
      a2[4] = v16;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *AttributedString.UnicodeScalarView.index(_:offsetBy:limitedBy:)@<X0>(void *result@<X0>, void *a2@<X2>, unint64_t *a3@<X8>)
{
  v5 = *result >> 10;
  v6 = v3[1] >> 10;
  v7 = v3[5] >> 10;
  v8 = *a2 >> 10;
  if (v7 >= v8 && v8 >= v6 && v5 >= v6 && v7 >= v5)
  {
    v12 = *v3;
    v21 = v3[5] >> 10;
    swift_unknownObjectRetain();
    v13 = BigString.UnicodeScalarView.index(_:offsetBy:limitedBy:)();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    result = swift_unknownObjectRelease();
    if (v19 == 2)
    {
      v20 = 0;
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = 2;
    }

    else
    {
      if (v13 >> 10 < v6 || v21 < v13 >> 10)
      {
        goto LABEL_18;
      }

      v20 = *(v12 + 16);
      *a3 = v13;
      a3[1] = v15;
      a3[2] = v17;
      a3[3] = v19;
    }

    a3[4] = v20;
    return result;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void *AttributedString.UnicodeScalarView._index(_:offsetBy:limitedBy:)@<X0>(void *result@<X0>, void *a2@<X2>, unint64_t *a3@<X8>)
{
  v5 = *result >> 10;
  v6 = v3[1] >> 10;
  v7 = v3[5] >> 10;
  v8 = *a2 >> 10;
  if (v7 >= v8 && v8 >= v6 && v5 >= v6 && v7 >= v5)
  {
    v12 = *v3;
    v21 = v3[5] >> 10;
    swift_unknownObjectRetain();
    v13 = BigString.UnicodeScalarView.index(_:offsetBy:limitedBy:)();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    result = swift_unknownObjectRelease();
    if (v19 == 2)
    {
      v20 = 0;
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = 2;
    }

    else
    {
      if (v13 >> 10 < v6 || v21 < v13 >> 10)
      {
        goto LABEL_18;
      }

      v20 = *(v12 + 16);
      *a3 = v13;
      a3[1] = v15;
      a3[2] = v17;
      a3[3] = v19;
    }

    a3[4] = v20;
    return result;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void *AttributedString.UnicodeScalarView._distance(from:to:)(void *result, void *a2)
{
  v3 = *result >> 10;
  v4 = *(v2 + 8) >> 10;
  v5 = *(v2 + 40) >> 10;
  v6 = *a2 >> 10;
  if (v5 >= v6 && v6 >= v4 && v3 >= v4 && v5 >= v3)
  {
    swift_unknownObjectRetain();
    v10 = BigString.UnicodeScalarView.distance(from:to:)();
    swift_unknownObjectRelease();
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *AttributedString.UnicodeScalarView.subscript.getter(void *result)
{
  v2 = *result >> 10;
  if (v2 < *(v1 + 8) >> 10 || v2 >= *(v1 + 40) >> 10)
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    v4 = BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    return v4;
  }

  return result;
}

__int128 *AttributedString.UnicodeScalarView.subscript.getter@<X0>(__int128 *result@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[5];
  v7 = result[1];
  v22 = *result;
  v23 = v7;
  v8 = *(result + 56);
  v24 = *(result + 40);
  v25 = v8;
  v9 = v6 >> 10;
  if (v22 >> 10 >= v4 >> 10 && v9 >= v24 >> 10)
  {
    v11 = *(v5 + 40);
    v26 = *(v5 + 24);
    v27 = v11;
    v28 = *(v5 + 56);
    swift_unknownObjectRetain();

    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    result = outlined destroy of BigSubstring.UnicodeScalarView(v21);
    v12 = v21[6];
    v13 = v21[7];
    v14 = v21[8];
    v15 = v21[9];
    v16 = v21[10];
    v17 = v21[11];
    v18 = v21[12];
    v19 = v21[13];
    v20 = *(v5 + 16);
    a2[10] = v5;
    a2[11] = v12;
    a2[12] = v13;
    a2[13] = v14;
    a2[14] = v15;
    a2[15] = v16;
    a2[16] = v17;
    a2[17] = v18;
    a2[18] = v19;
    a2[19] = 0;
    *a2 = v12;
    a2[1] = v13;
    a2[2] = v14;
    a2[3] = v15;
    a2[4] = v20;
    a2[5] = v16;
    a2[6] = v17;
    a2[7] = v18;
    a2[8] = v19;
    a2[9] = v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance AttributedString.UnicodeScalarView(unint64_t *result)
{
  v2 = *result >> 10;
  v3 = v1[1] >> 10;
  if (v2 >= v3 && v1[5] >> 10 >= v2)
  {
    v5 = result;
    v6 = *v1;
    swift_unknownObjectRetain();
    v7 = BigString.UnicodeScalarView.index(before:)();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    result = swift_unknownObjectRelease();
    if (v3 <= v7 >> 10)
    {
      v14 = *(v6 + 16);
      *v5 = v7;
      v5[1] = v9;
      v5[2] = v11;
      v5[3] = v13;
      v5[4] = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance AttributedString.UnicodeScalarView@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  *&v10[32] = v1[2];
  *&v10[48] = v2;
  *&v10[64] = v1[4];
  v3 = *&v10[64];
  v5 = v1[1];
  *v10 = *v1;
  v4 = *v10;
  *&v10[16] = v5;
  *(a1 + 32) = *&v10[32];
  *(a1 + 48) = v2;
  *a1 = v4;
  *(a1 + 16) = v5;
  v6 = *(*v10 + 16);
  v7 = *&v10[8];
  *(a1 + 64) = v3;
  *(a1 + 80) = v7;
  *(a1 + 96) = *&v10[24];
  *(a1 + 112) = v6;
  *(a1 + 120) = *&v10[40];
  *(a1 + 136) = *&v10[56];
  *(a1 + 152) = v6;
  return outlined init with copy of AttributedString.UnicodeScalarView(v10, &v9);
}

uint64_t protocol witness for Collection.count.getter in conformance AttributedString.UnicodeScalarView()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v9[0] = *(*v0 + 24);
  v9[1] = v2;
  v3 = *(v1 + 56);
  v4 = *(v0 + 7);
  v5 = *(v0 + 3);
  v9[5] = *(v0 + 5);
  v9[6] = v4;
  v6 = *(v0 + 1);
  v9[2] = v3;
  v9[3] = v6;
  v9[4] = v5;
  swift_unknownObjectRetain();
  v7 = BigSubstring.UnicodeScalarView.count.getter();
  outlined destroy of BigSubstring.UnicodeScalarView(v9);
  return v7;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance AttributedString.UnicodeScalarView()
{
  v1 = v0[3];
  v5[2] = v0[2];
  v5[3] = v1;
  v5[4] = v0[4];
  v2 = v0[1];
  v5[0] = *v0;
  v5[1] = v2;
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(v5);
  outlined destroy of AttributedString.UnicodeScalarView(v5);
  return v3;
}

uint64_t AttributedString.UnicodeScalarView._mutateStringContents(in:attributes:with:)(void *a1, uint64_t a2, uint64_t a3, char *a4, unint64_t a5)
{
  v797 = a5;
  v798 = a4;
  v793 = a2;
  v794 = a3;
  v792 = 0;
  v7 = *v5;
  v8 = *a1;
  v859 = *(a1 + 1);
  v9 = a1[4];
  v860 = a1[3];
  *&v802 = v8;
  v857 = *(a1 + 5);
  v796 = a1;
  v858 = a1[7];
  *&v806 = v8 >> 11;
  *&v834 = v8 >> 11;
  *&v826 = v9 >> 11;
  *&v803 = v9;
  v799 = v9 >> 11;
  if (v9 >= 0x800)
  {
    v10 = (v9 >> 11) - 1;
    v11 = *(v7 + 72);
    v12 = *(v7 + 80);
    v14 = *(v7 + 88);
    v13 = *(v7 + 96);
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(v10, 0, v11, v12, v14, v13) != v13)
    {
LABEL_595:
      __break(1u);
LABEL_596:
      __break(1u);
LABEL_597:
      __break(1u);
      goto LABEL_598;
    }

    v17 = v15;
    v18 = v16;
    if (v11)
    {
      specialized Rope._Node.distanceFromStart<A>(to:in:)(v13, v15, v16, v11, v12);
      swift_unknownObjectRelease();
    }

    v19 = *(v7 + 72);
    v20 = *(v7 + 80);
    v21 = *(v7 + 88);
    v6 = *(v7 + 96);
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v13, v17, v18, v19, v20, v21, v6);
    v23 = v22;
    *&v804 = v24;
    swift_unknownObjectRelease();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation16AttributedStringV15_AttributeValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    *&v805 = specialized Dictionary.filter(_:)(v23);
  }

  else
  {
    *&v804 = MEMORY[0x1E69E7CD0];
    *&v805 = MEMORY[0x1E69E7CC8];
  }

  v25 = *(v7 + 24);
  v26 = *(v7 + 40);
  v27 = *(v7 + 56);
  v795 = (v7 + 24);
  v921 = v25;
  v922 = v26;
  v923 = v27;
  LODWORD(v28) = v806;
  v807 = v7;
  if (v806 >= BigString.UTF8View.count.getter())
  {
    goto LABEL_57;
  }

  v29 = *(v7 + 72);
  v30 = *(v7 + 80);
  v32 = *(v7 + 88);
  v31 = *(v7 + 96);
  swift_unknownObjectRetain();
  if (specialized Rope.find<A>(at:in:preferEnd:)(v806, 0, v29, v30, v32, v31) != v31)
  {
    goto LABEL_596;
  }

  v28 = v33;
  v35 = v34;
  if (v29)
  {
    specialized Rope._Node.distanceFromStart<A>(to:in:)(v31, v33, v34, v29, v30);
    swift_unknownObjectRelease();
  }

  v36 = *(v7 + 72);
  v37 = *(v7 + 80);
  v38 = *(v7 + 88);
  v39 = *(v7 + 96);
  swift_unknownObjectRetain();
  specialized Rope.subscript.getter(v31, v28, v35, v36, v37, v38, v39);
  LODWORD(v31) = v40;
  v42 = v41;
  swift_unknownObjectRelease();
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation16AttributedStringV15_AttributeValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  v7 = specialized Dictionary.filter(_:)(v43);

  swift_bridgeObjectRelease_n();
  v44 = 0;
  *&v839 = MEMORY[0x1865CB700](*(v7 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v45 = 1 << *(v7 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v7 + 64;
  v6 = v46 & *(v7 + 64);
  v48 = (v45 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v49 = v44;
LABEL_19:
      v50 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v51 = (*(v7 + 48) + ((v49 << 10) | (16 * v50)));
      v52 = *v51;
      v28 = v51[1];

      v31 = &v839;
      specialized Set._Variant.insert(_:)(&v816, v52, v28);

      if (!v6)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
LABEL_15:
    v49 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_372;
    }

    if (v49 >= v48)
    {
      break;
    }

    v6 = *(v47 + 8 * v49);
    ++v44;
    if (v6)
    {
      v44 = v49;
      goto LABEL_19;
    }
  }

  *&v823 = v839;
  v54 = v807[9];
  v53 = v807[10];
  v31 = v807[11];
  v55 = v807[12];
  swift_unknownObjectRetain();

  if (v802 > 0x7FF)
  {
    v47 = specialized Rope._endPath.getter(v54);
    if (v54)
    {
      swift_unknownObjectRelease();
      v59 = 0;
    }

    else
    {
      v59 = 0;
      v53 = 0;
      v31 = 0;
    }
  }

  else
  {
    if (specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v54, v53, v31, v55) != v55)
    {
LABEL_606:
      __break(1u);
      goto LABEL_607;
    }

    v47 = v56;
    v59 = v57;
    v6 = v58;
    if (v54)
    {
      v53 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v55, v56, v57, v54, v53);
      swift_unknownObjectRelease();
      v31 = -v6;
      if (__OFSUB__(0, v6))
      {
        goto LABEL_607;
      }
    }

    else
    {
      v53 = 0;
      v31 = -v58;
      if (__OFSUB__(0, v58))
      {
LABEL_607:
        __break(1u);
LABEL_608:
        __break(1u);
        goto LABEL_609;
      }
    }
  }

  *&v816 = v55;
  *(&v816 + 1) = v47;
  *&v817 = v59;
  *(&v817 + 1) = v53;
  v60 = v807[9];
  v28 = v807[10];
  v44 = v807[11];
  v61 = v807[12];
  swift_unknownObjectRetain();
  if (specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v60, v28, v44, v61) != v61)
  {
    goto LABEL_374;
  }

  v47 = v64;
  *&v801 = v7;
  while (1)
  {
    if (v60)
    {
      specialized Rope._Node.distanceFromStart<A>(to:in:)(v61, v62, v63, v60, v28);
      swift_unknownObjectRelease();
    }

    if (__OFSUB__(0, v47))
    {
LABEL_498:
      __break(1u);
LABEL_499:
      __break(1u);
LABEL_500:
      __break(1u);
LABEL_501:
      __break(1u);
LABEL_502:
      __break(1u);
LABEL_503:
      __break(1u);
LABEL_504:
      __break(1u);
LABEL_505:
      __break(1u);
LABEL_506:
      __break(1u);
LABEL_507:
      __break(1u);
      goto LABEL_508;
    }

    if (-v47 >= v31 || !*(v823 + 16))
    {
      goto LABEL_56;
    }

    v68 = v807[9];
    if (!v68)
    {
      break;
    }

    if (v31 == v807[11])
    {
      goto LABEL_43;
    }

LABEL_47:
    v7 = v42;
    v77 = v807[10];
    v78 = v807[11];
    v71 = v807[12];
    v839 = v816;
    *&v840 = v817;
    v28 = *(&v817 + 1) - 1;
    if (__OFSUB__(*(&v817 + 1), 1))
    {
      __break(1u);
LABEL_567:
      __break(1u);
LABEL_568:
      __break(1u);
LABEL_569:
      __break(1u);
LABEL_570:
      __break(1u);
LABEL_571:
      __break(1u);
LABEL_572:
      __break(1u);
LABEL_573:
      __break(1u);
LABEL_574:
      __break(1u);
LABEL_575:
      __break(1u);
LABEL_576:
      __break(1u);
LABEL_577:
      __break(1u);
LABEL_578:
      __break(1u);
LABEL_579:
      __break(1u);
LABEL_580:
      __break(1u);
LABEL_581:
      __break(1u);
LABEL_582:
      __break(1u);
LABEL_583:
      __break(1u);
LABEL_584:
      __break(1u);
LABEL_585:
      __break(1u);
LABEL_586:
      __break(1u);
LABEL_587:
      __break(1u);
      goto LABEL_588;
    }

    swift_unknownObjectRetain();
    specialized Rope.formIndex(before:)(&v839, v68, v77, v78, v71);
    if (v839 != v71)
    {
      goto LABEL_567;
    }

    v75 = *(&v839 + 1);
    v76 = v840;
    if (v840)
    {
      v6 = *(v840 + 24 * ((*(&v839 + 1) >> ((4 * *(v840 + 18) + 8) & 0x3C)) & 0xFLL) + 24);

      swift_unknownObjectRelease();
      v65 = v31 - v6;
      if (__OFSUB__(v31, v6))
      {
        goto LABEL_574;
      }
    }

    else
    {
      v79 = specialized Rope._Node.subscript.getter(*(&v839 + 1), v68);
      v6 = v80;
      swift_unknownObjectRelease();

      v65 = v31 - v79;
      if (__OFSUB__(v31, v79))
      {
        goto LABEL_580;
      }

      v76 = 0;
    }

    v42 = v7;
    v7 = v801;
LABEL_35:
    *&v816 = v71;
    *(&v816 + 1) = v75;
    *&v817 = v76;
    *(&v817 + 1) = v28;
    *&v818 = v65;

    specialized AttributedString.Guts.updateRun(at:within:with:)(&v816, 0, v806, v807, &v823, v7, v42, &v834);

    v31 = v818;
    v60 = v807[9];
    v28 = v807[10];
    v44 = v807[11];
    v61 = v807[12];
    swift_unknownObjectRetain();
    v66 = specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v60, v28, v44, v61);
    v47 = v67;
    if (v66 != v61)
    {
      goto LABEL_374;
    }
  }

  if (v31)
  {
    goto LABEL_47;
  }

LABEL_43:
  v69 = v807[10];
  v70 = v807[11];
  v71 = v807[12];
  swift_unknownObjectRetain();
  if (specialized Rope.find<A>(at:in:preferEnd:)(v806, 1, v68, v69, v70, v71) != v71)
  {
    goto LABEL_572;
  }

  v75 = v72;
  v76 = v73;
  v6 = v74;
  if (v68)
  {
    v28 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v71, v72, v73, v68, v69);
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0;
  }

  v65 = v806 - v6;
  if (!__OFSUB__(v806, v6))
  {
    goto LABEL_35;
  }

  __break(1u);
LABEL_56:

  v7 = v807;

LABEL_57:
  if (v803 < 0x800)
  {
    goto LABEL_111;
  }

  v31 = *(v805 + 16);

  v44 = 0;
  *&v839 = MEMORY[0x1865CB700](v31, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v47 = v805 + 64;
  v81 = *(v805 + 64);
  v82 = 1 << *(v805 + 32);
  v83 = -1;
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  v6 = v83 & v81;
  v84 = (v82 + 63) >> 6;
  if ((v83 & v81) != 0)
  {
    while (1)
    {
      v85 = v44;
LABEL_66:
      v86 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v87 = (*(v805 + 48) + ((v85 << 10) | (16 * v86)));
      v88 = *v87;
      v28 = v87[1];

      v31 = &v839;
      specialized Set._Variant.insert(_:)(&v816, v88, v28);

      if (!v6)
      {
        goto LABEL_62;
      }
    }
  }

  while (1)
  {
LABEL_62:
    v85 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_373;
    }

    if (v85 >= v84)
    {
      break;
    }

    v6 = *(v47 + 8 * v85);
    ++v44;
    if (v6)
    {
      v44 = v85;
      goto LABEL_66;
    }
  }

  *&v823 = v839;
  v89 = *(v7 + 40);
  v918 = *(v7 + 24);
  v919 = v89;
  v920 = *(v7 + 56);
  v90 = BigString.UTF8View.count.getter();
  if (v90 < v799)
  {
    goto LABEL_597;
  }

  v91 = v90;
  v92 = *(v7 + 72);
  v93 = *(v7 + 80);
  v95 = *(v7 + 88);
  v94 = *(v7 + 96);
  swift_unknownObjectRetain();

  if (specialized Rope.find<A>(at:in:preferEnd:)(v799, 0, v92, v93, v95, v94) != v94)
  {
LABEL_598:
    __break(1u);
LABEL_599:
    __break(1u);
LABEL_600:
    __break(1u);
LABEL_601:
    __break(1u);
    goto LABEL_602;
  }

  v99 = v96;
  v100 = v97;
  v6 = v98;
  if (v92)
  {
    v101 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v94, v96, v97, v92, v93);
    swift_unknownObjectRelease();
  }

  else
  {
    v101 = 0;
  }

  v102 = v799;
  v103 = v799 - v6;
  if (__OFSUB__(v799, v6))
  {
    goto LABEL_599;
  }

  *&v816 = v94;
  *(&v816 + 1) = v99;
  *&v817 = v100;
  for (*(&v817 + 1) = v101; ; *(&v817 + 1) = v121)
  {
    *&v818 = v103;
    v107 = *(v7 + 72);
    if (v102 == v91)
    {
      v108 = *(v7 + 80);
      v109 = *(v7 + 88);
      v110 = *(v7 + 96);
      v111 = v102;
      swift_unknownObjectRetain();
      if (specialized Rope.find<A>(at:in:preferEnd:)(v111, 0, v107, v108, v109, v110) != v110)
      {
        goto LABEL_570;
      }

      v6 = v114;
      if (v107)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v110, v112, v113, v107, v108);
        swift_unknownObjectRelease();
      }

      v115 = v799 - v6;
      if (__OFSUB__(v799, v6))
      {
        goto LABEL_571;
      }

      goto LABEL_87;
    }

    if (v107)
    {
      v115 = *(v7 + 88);
LABEL_87:
      if (v103 >= v115)
      {
        goto LABEL_110;
      }

      goto LABEL_88;
    }

    if (v103 >= 0)
    {
      goto LABEL_110;
    }

LABEL_88:
    if (!*(v823 + 16))
    {
      goto LABEL_110;
    }

    specialized AttributedString.Guts.updateRun(at:within:with:)(&v816, v799, v91, v7, &v823, v805, v804, &v826);

    v116 = *(&v816 + 1);
    v47 = v816;
    v117 = v7;
    v7 = v818;
    v44 = v117[9];
    v118 = v117[10];
    v120 = v117[11];
    v119 = v117[12];
    v839 = v816;
    *&v840 = v817;
    v121 = *(&v817 + 1) + 1;
    if (__OFADD__(*(&v817 + 1), 1))
    {
      goto LABEL_504;
    }

    if (v816 != v119)
    {
      goto LABEL_505;
    }

    if (v817)
    {
      v122 = *(v817 + 24 * ((*(&v816 + 1) >> ((4 * *(v817 + 18) + 8) & 0x3C)) & 0xFLL) + 24);
      swift_unknownObjectRetain();
      v123 = __OFADD__(v7, v122);
      v103 = v7 + v122;
      if (v123)
      {
        goto LABEL_506;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      v124 = specialized Rope._Node.subscript.getter(v116, v44);
      v6 = v125;

      v123 = __OFADD__(v7, v124);
      v103 = v7 + v124;
      if (v123)
      {
        goto LABEL_506;
      }
    }

    specialized Rope.formIndex(after:)(&v839, v44, v118, v120, v47);
    swift_unknownObjectRelease();
    if (v103 < v91)
    {
      v104 = *(&v839 + 1);
      v105 = v839;
      v106 = v840;
      v7 = v807;
LABEL_76:
      v102 = v799;
      goto LABEL_77;
    }

    v7 = v807;
    v126 = v807[9];
    v121 = v807[10];
    v103 = v807[11];
    v105 = v807[12];
    swift_unknownObjectRetain();
    if (v799 != v91)
    {
      v104 = specialized Rope._endPath.getter(v126);
      if (v126)
      {
        swift_unknownObjectRelease();
        v106 = 0;
      }

      else
      {
        v106 = 0;
        v121 = 0;
        v103 = 0;
      }

      goto LABEL_76;
    }

    if (specialized Rope.find<A>(at:in:preferEnd:)(v799, 0, v126, v121, v103, v105) != v105)
    {
      goto LABEL_579;
    }

    v104 = v127;
    v106 = v128;
    v6 = v129;
    if (v126)
    {
      v121 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v105, v127, v128, v126, v121);
      swift_unknownObjectRelease();
    }

    else
    {
      v121 = 0;
    }

    v102 = v799;
    v103 = v799 - v6;
    if (__OFSUB__(v799, v6))
    {
      break;
    }

LABEL_77:
    *&v816 = v105;
    *(&v816 + 1) = v104;
    *&v817 = v106;
  }

  __break(1u);
LABEL_110:

LABEL_111:

  if (v826 < v834)
  {
    goto LABEL_587;
  }

  v791 = v826;
  v782 = v834;
  v130 = *(v7 + 104);
  v131 = specialized Array.count.getter(v130);
  if (v131 < 0)
  {
LABEL_588:
    __break(1u);
LABEL_589:
    __break(1u);
    goto LABEL_590;
  }

  v31 = v131;
  if (v131)
  {
    v28 = 0;
    v47 = v802 >> 10;
    v44 = v803 >> 10;
    v132 = 88;
    *&v804 = v131;
    *&v805 = v803 >> 10;
    while (1)
    {
      if (v28 >= *(v130 + 2))
      {
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
LABEL_370:
        __break(1u);
LABEL_371:
        __break(1u);
LABEL_372:
        __break(1u);
LABEL_373:
        __break(1u);
LABEL_374:
        __break(1u);
        goto LABEL_375;
      }

      v133 = *&v130[v132 - 56];
      v134 = v47 >= v133 >> 10 || v133 >> 10 >= v44;
      v135 = !v134;
      v6 = *&v130[v132 - 24];
      v136 = v6 >> 10;
      if (v47 >= v6 >> 10)
      {
        break;
      }

      if (v135)
      {
        if (v136 < v44)
        {
          v816 = v859;
          *&v817 = v860;
          v839 = v859;
          *&v840 = v860;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v7 + 104) = v130;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v130 = specialized _ArrayBuffer._consumeAndCreateNew()(v130);
          }

          if (v28 >= *(v130 + 2))
          {
            goto LABEL_575;
          }

          v138 = &v130[v132];
          v139 = v802;
          *(v138 - 7) = v802;
          v140 = v817;
          *(v138 - 3) = v816;
          *(v138 - 4) = v140;
          *(v138 - 3) = v139;
          v141 = v839;
          *v138 = v840;
          *(v138 - 1) = v141;
          *(v7 + 104) = v130;
          goto LABEL_115;
        }

        goto LABEL_131;
      }

      if (v136 < v44)
      {
        v147 = *&v130[v132 - 48];
        v6 = *&v130[v132 - 40];
        v148 = v7;
        v7 = *&v130[v132 - 32];
        v816 = v859;
        *&v817 = v860;
        v149 = swift_isUniquelyReferenced_nonNull_native();
        *(v148 + 104) = v130;
        if ((v149 & 1) == 0)
        {
          v130 = specialized _ArrayBuffer._consumeAndCreateNew()(v130);
        }

        v44 = v805;
        if (v28 >= *(v130 + 2))
        {
          goto LABEL_576;
        }

        v150 = &v130[v132];
        *(v150 - 7) = v133;
        *(v150 - 6) = v147;
        *(v150 - 5) = v6;
        *(v150 - 4) = v7;
        *(v150 - 3) = v802;
        v151 = v816;
        *v150 = v817;
        *(v150 - 1) = v151;
        v7 = v807;
        v807[13] = v130;
        v31 = v804;
      }

LABEL_115:
      ++v28;
      v132 += 64;
      if (v31 == v28)
      {
        goto LABEL_140;
      }
    }

    if (!v135)
    {
      goto LABEL_115;
    }

LABEL_131:
    v142 = *&v130[v132 - 16];
    v44 = *&v130[v132 - 8];
    v143 = *&v130[v132];
    v816 = v857;
    *&v817 = v858;
    v144 = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 104) = v130;
    if ((v144 & 1) == 0)
    {
      v130 = specialized _ArrayBuffer._consumeAndCreateNew()(v130);
    }

    if (v28 >= *(v130 + 2))
    {
      goto LABEL_507;
    }

    v145 = &v130[v132];
    *(v145 - 7) = v803;
    v146 = v817;
    *(v145 - 3) = v816;
    *(v145 - 4) = v146;
    *(v145 - 3) = v6;
    *(v145 - 2) = v142;
    *(v145 - 1) = v44;
    *v145 = v143;
    v7 = v807;
    v807[13] = v130;
    v31 = v804;
    v44 = v805;
    goto LABEL_115;
  }

LABEL_140:
  v47 = *(v7 + 32);
  v44 = *(v7 + 40);
  v152 = *(v7 + 48);
  v6 = *(v7 + 56);
  v153 = *(v7 + 64);
  v912 = *(v7 + 24);
  v28 = v912;
  v913 = v47;
  v914 = v44;
  v915 = v152;
  v916 = v6;
  v917 = v153;
  *&v805 = BigString.UTF8View.count.getter();
  v154 = v800;
  v155 = *(v800 + 24);
  v842 = *(v800 + 8);
  v843 = v155;
  v156 = *(v800 + 56);
  v844 = *(v800 + 40);
  v845 = v156;
  *&v839 = v28;
  *(&v839 + 1) = v47;
  *&v840 = v44;
  *(&v840 + 1) = v152;
  *&v841 = v6;
  *(&v841 + 1) = v153;
  swift_unknownObjectRetain();
  BigString.init()();
  v157 = v847;
  v158 = v795;
  *v795 = v846;
  v158[1] = v157;
  v158[2] = v848;
  swift_unknownObjectRelease();
  (v798)(&v839, v796);
  v159 = v840;
  *(v7 + 24) = v839;
  *(v7 + 40) = v159;
  *(v7 + 56) = v841;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v160 = v843;
  *(v154 + 8) = v842;
  *(v154 + 24) = v160;
  v161 = v845;
  *(v154 + 40) = v844;
  *(v154 + 56) = v161;
  v162 = *(v7 + 40);
  v909 = *(v7 + 24);
  v910 = v162;
  v911 = *(v7 + 56);
  v163 = BigString.UTF8View.count.getter();
  v164 = v163 - v805;
  if (__OFSUB__(v163, v805))
  {
    goto LABEL_589;
  }

  if (__OFADD__(v799 - v806, v164))
  {
LABEL_590:
    __break(1u);
    goto LABEL_591;
  }

  specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v806, v799, v799 - v806 + v164, v793, v794);
  v165 = *(v7 + 40);
  v906 = *(v7 + 24);
  v907 = v165;
  v908 = *(v7 + 56);
  v166 = BigString.UTF8View.count.getter();
  if (__OFSUB__(v166, v805))
  {
LABEL_591:
    __break(1u);
    goto LABEL_592;
  }

  *&v801 = v166 - v805;
  v31 = *(v7 + 104);
  v167 = specialized Array.count.getter(v31);
  if (v167 < 0)
  {
LABEL_592:
    __break(1u);
LABEL_593:
    __break(1u);
    goto LABEL_594;
  }

  if (v167)
  {
    v168 = 0;
    v169 = 88;
    v170 = v806;
    v797 = v167;
    do
    {
      if (v168 >= *(v31 + 16))
      {
        goto LABEL_368;
      }

      *&v803 = v168;
      v171 = *(v31 + v169 - 56);
      v47 = *(v31 + v169 - 24);
      v798 = *(v31 + v169 - 16);
      v7 = *(v31 + v169 - 8);
      *&v800 = *(v31 + v169);
      v172 = v171 >> 11;
      *&v802 = v169;
      if (v170 >= v171 >> 11)
      {
        v173 = v801;
        if (v799 != v170 || (v172 == v170 ? (v174 = v801 == 0) : (v174 = 1), v174))
        {
LABEL_157:
          v184 = *(v807 + 5);
          v897 = *(v807 + 3);
          v898 = v184;
          v899 = *(v807 + 7);
          v6 = v897;
          swift_unknownObjectRetain();
          v178 = BigString.UTF8View.index(_:offsetBy:)();
          v28 = v185;
          v181 = v186;
          v183 = v187;
          swift_unknownObjectRelease();
          goto LABEL_158;
        }
      }

      else
      {
        v173 = v801;
        if (!v801)
        {
          goto LABEL_157;
        }
      }

      v175 = *v795;
      v176 = v795[1];
      v905 = v795[2];
      v904 = v176;
      v903 = v175;
      v177 = *(v807 + 5);
      v900 = *(v807 + 3);
      v901 = v177;
      v902 = *(v807 + 7);
      BigString.startIndex.getter();
      v123 = __OFADD__(v172, v173);
      v6 = v172 + v173;
      if (v123)
      {
        __break(1u);
LABEL_411:
        __break(1u);
        goto LABEL_412;
      }

      v924[0] = v903;
      v924[1] = v904;
      v925 = v905;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v924, &v816);
      v178 = BigString.UTF8View.index(_:offsetBy:)();
      v28 = v179;
      v181 = v180;
      v183 = v182;
      outlined destroy of BigString(&v903);
LABEL_158:
      v44 = v47 >> 11;
      v188 = v7;
      *&v805 = v178;
      *&v804 = v183;
      if (v806 >= v47 >> 11)
      {
        v196 = v807[13];
        v7 = v800;
        if (v803 >= *(v196 + 16))
        {
          __break(1u);
          goto LABEL_498;
        }

        v189 = v801;
        if ((*(v196 + v802 - 56) ^ v178) < 0x400 || v801 == 0)
        {
LABEL_168:
          v6 = v807;
          v198 = *(v807 + 5);
          v893[3] = *(v807 + 3);
          v893[4] = v198;
          v893[5] = *(v807 + 7);
          swift_unknownObjectRetain();
          *&v805 = BigString.UTF8View.index(_:offsetBy:)();
          v28 = v199;
          v181 = v200;
          *&v804 = v201;
          swift_unknownObjectRelease();
          v44 = v798;
          goto LABEL_169;
        }
      }

      else
      {
        v189 = v801;
        v7 = v800;
        if (!v801)
        {
          goto LABEL_168;
        }
      }

      v190 = *v795;
      v191 = v795[1];
      v896 = v795[2];
      v895 = v191;
      v894 = v190;
      v192 = *(v807 + 5);
      v893[6] = *(v807 + 3);
      v893[7] = v192;
      v893[8] = *(v807 + 7);
      BigString.startIndex.getter();
      if (__OFADD__(v44, v189))
      {
        goto LABEL_411;
      }

      v926[0] = v894;
      v926[1] = v895;
      v927 = v896;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v926, &v816);
      v47 = BigString.UTF8View.index(_:offsetBy:)();
      v44 = v193;
      v188 = v194;
      v7 = v195;
      outlined destroy of BigString(&v894);
      v6 = v807;
LABEL_169:
      v31 = *(v6 + 104);
      v202 = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 104) = v31;
      if ((v202 & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
      }

      v170 = v806;
      v203 = v802;
      if (v803 >= *(v31 + 16))
      {
        goto LABEL_369;
      }

      v168 = v803 + 1;
      v204 = (v31 + v802);
      *(v204 - 7) = v805;
      *(v204 - 6) = v28;
      v205 = v804;
      *(v204 - 5) = v181;
      *(v204 - 4) = v205;
      *(v204 - 3) = v47;
      *(v204 - 2) = v44;
      *(v204 - 1) = v188;
      *v204 = v7;
      v169 = v203 + 64;
      v7 = v807;
      v807[13] = v31;
    }

    while (v797 != v168);
  }

  if (__OFADD__(v791, v801))
  {
    goto LABEL_593;
  }

  if (v791 + v801 < v782)
  {
LABEL_594:
    __break(1u);
    goto LABEL_595;
  }

  v781 = v791 + v801;
  v206 = *(v7 + 72);
  v207 = *(v7 + 88);
  v208 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v208);
  if (!v206)
  {
    goto LABEL_496;
  }

  swift_unknownObjectRelease();
  if (!v207)
  {
    goto LABEL_496;
  }

  v209 = *v795;
  v210 = v795[1];
  v893[2] = v795[2];
  v893[1] = v210;
  v893[0] = v209;
  v211 = *(v7 + 40);
  v890 = *(v7 + 24);
  v891 = v211;
  v892 = *(v7 + 56);
  v212 = *v795;
  v213 = v795[1];
  v929 = *(v795 + 4);
  v928[1] = v213;
  v928[0] = v212;
  BigString.startIndex.getter();
  outlined init with copy of Rope<BigString._Chunk>._Node?(v928, &v816);
  v214 = BigString.UTF8View.index(_:offsetBy:)();
  v216 = v215;
  v218 = v217;
  v220 = v219;
  outlined destroy of BigString(v893);
  v221 = *(v7 + 40);
  v887 = *(v7 + 24);
  v888 = v221;
  v889 = *(v7 + 56);
  if (__OFSUB__(v781, v782))
  {
LABEL_602:
    __break(1u);
    goto LABEL_603;
  }

  swift_unknownObjectRetain();
  v222 = BigString.UTF8View.index(_:offsetBy:)();
  v773 = v224;
  v774 = v223;
  v772 = v225;
  swift_unknownObjectRelease();
  v226 = *(v7 + 40);
  v884 = *(v7 + 24);
  v885 = v226;
  v886 = *(v7 + 56);
  swift_unknownObjectRetain();
  v771 = v214;
  v769[2] = v216;
  v769[3] = v218;
  v227 = v220;
  v228 = BigString.UnicodeScalarView.index(roundingDown:)();
  v230 = v229;
  v787 = v231;
  v233 = v232;
  swift_unknownObjectRelease();
  v234 = *(v7 + 40);
  v881 = *(v7 + 24);
  v882 = v234;
  v883 = *(v7 + 56);
  swift_unknownObjectRetain();
  v770 = v222;
  v235 = BigString.UnicodeScalarView.index(roundingUp:)();
  swift_unknownObjectRelease();
  v775 = v228;
  v236 = v228 >> 11;
  if (v235 >> 11 < v228 >> 11)
  {
LABEL_603:
    __break(1u);
    goto LABEL_604;
  }

  v786 = v233;
  v237 = v230;
  v799 = v235 >> 11;
  v769[1] = v227;
  v238 = *(v7 + 72);
  v239 = *(v7 + 80);
  v240 = *(v7 + 88);
  v241 = *(v7 + 96);
  swift_unknownObjectRetain();
  swift_retain_n();
  v242 = v236;
  if (specialized Rope.find<A>(at:in:preferEnd:)(v236, 0, v238, v239, v240, v241) != v241)
  {
LABEL_604:
    __break(1u);
LABEL_605:
    __break(1u);
    goto LABEL_606;
  }

  v246 = v245;
  v797 = v243;
  v798 = v241;
  v796 = v244;
  if (v238)
  {
    v247 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v241, v243, v244, v238, v239);
    swift_unknownObjectRelease();
  }

  else
  {
    v247 = 0;
  }

  v248 = v775;

  if (__OFSUB__(v242, v246))
  {
    goto LABEL_605;
  }

  v249 = v237;
  *&v801 = v242 - v246;
  v793 = v247;
  v777 = MEMORY[0x1E69E7CC8];
  v780 = MEMORY[0x1E69E7CC8];
  v250 = v787;
  v794 = v242;
LABEL_185:
  v44 = v248;
  v791 = v249;
  while (2)
  {
    v790 = v250;
    v789 = v786;
    v251 = *(v7 + 72);
    v252 = *(v7 + 80);
    v253 = *(v7 + 88);
    v254 = *(v7 + 96);
    swift_unknownObjectRetain();
    if (v242 == v799)
    {
      v255 = v44;
      if (specialized Rope.find<A>(at:in:preferEnd:)(v242, 0, v251, v252, v253, v254) != v254)
      {
        goto LABEL_568;
      }

      v259 = v258;
      if (v251)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v254, v256, v257, v251, v252);
        swift_unknownObjectRelease();
      }

      v253 = v242 - v259;
      if (__OFSUB__(v242, v259))
      {
        goto LABEL_569;
      }

      v44 = v255;
    }

    else
    {
      specialized Rope._endPath.getter(v251);
      if (v251)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v253 = 0;
      }
    }

    if (v801 == v253)
    {

      v382 = 0;
      v383 = v780 + 64;
      v384 = 1 << *(v780 + 32);
      v385 = -1;
      if (v384 < 64)
      {
        v385 = ~(-1 << v384);
      }

      v386 = v385 & *(v780 + 64);
      v387 = (v384 + 63) >> 6;
      while (1)
      {
        if (!v386)
        {
          do
          {
            v388 = v382 + 1;
            if (__OFADD__(v382, 1))
            {
              goto LABEL_573;
            }

            if (v388 >= v387)
            {
              goto LABEL_339;
            }

            v386 = *(v383 + 8 * v388);
            ++v382;
          }

          while (!v386);
          v382 = v388;
        }

        v389 = __clz(__rbit64(v386));
        v386 &= v386 - 1;
        v390 = v389 | (v382 << 6);
        v391 = *(*(v780 + 56) + 8 * v390);
        *&v801 = *(v391 + 16);
        if (v801)
        {
          v796 = v386;
          v797 = v387;
          v798 = v382;
          v799 = v383;
          v392 = (*(v780 + 48) + 16 * v390);
          v393 = v392[1];
          *&v804 = *v392;
          *&v802 = v391 + 32;

          v394 = v391;
          v395 = 0;
          *&v800 = v394;
          do
          {
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v395, 1, v394);
            v396 = (v802 + 16 * v395);
            v398 = *v396;
            v397 = v396[1];
            *&v803 = v395 + 1;

            AttributedString._InternalRunsSlice.startIndex.getter(v7, v398, v849);
            v6 = v850;
            v816 = v849[0];
            v817 = v849[1];
            *&v818 = v850;
            *&v806 = v397;
            *&v805 = v398;
            while (1)
            {
              v400 = *(v7 + 72);
              if (v398 == v397)
              {
                v401 = *(v7 + 80);
                v402 = *(v7 + 88);
                v403 = *(v7 + 96);
                swift_unknownObjectRetain();
                if (specialized Rope.find<A>(at:in:preferEnd:)(v398, 0, v400, v401, v402, v403) != v403)
                {
                  __break(1u);
LABEL_358:
                  __break(1u);
LABEL_359:
                  if ((v400 ^ v401))
                  {

LABEL_361:

                    goto LABEL_362;
                  }

                  v798 = v398;
                  v799 = v44;
                  v544 = v402;
                  v547 = *(v402 + 64);
                  v546 = v402 + 64;
                  v545 = v547;
                  v548 = 1 << *(v544 + 32);
                  v549 = -1;
                  if (v548 < 64)
                  {
                    v549 = ~(-1 << v548);
                  }

                  v550 = v549 & v545;
                  v551 = (v548 + 63) >> 6;
                  *&v804 = v544;

                  v552 = 0;
LABEL_385:
                  if (v550)
                  {
                    goto LABEL_390;
                  }

                  while (1)
                  {
                    v553 = v552 + 1;
                    if (__OFADD__(v552, 1))
                    {
                      break;
                    }

                    if (v553 >= v551)
                    {
                      goto LABEL_412;
                    }

                    v550 = *(v546 + 8 * v553);
                    ++v552;
                    if (v550)
                    {
                      v552 = v553;
LABEL_390:
                      v554 = __clz(__rbit64(v550)) | (v552 << 6);
                      v555 = (*(v804 + 48) + 16 * v554);
                      v557 = *v555;
                      v556 = v555[1];
                      outlined init with copy of AttributedString._AttributeValue(*(v804 + 56) + 72 * v554, &v816);
                      v800 = v816;
                      v801 = v817;
                      v802 = v819;
                      v803 = v818;
                      v558 = *v820;

                      if (v556)
                      {
                        v550 &= v550 - 1;
                        v834 = v800;
                        v835 = v801;
                        v836 = v803;
                        v837 = v802;
                        v559 = v802;
                        v838 = v558;
                        v560 = *(&v803 + 1);
                        if (v802 == 1)
                        {
                          outlined copy of AttributedString.AttributeRunBoundaries?(*(&v803 + 1), 1);

                          outlined consume of AttributedString.AttributeRunBoundaries?(v560, 1);
                          outlined consume of AttributedString.AttributeRunBoundaries?(0, 0);
                          goto LABEL_398;
                        }

                        *&v816 = *(&v803 + 1);
                        *(&v816 + 1) = v802;
                        v826 = 0uLL;
                        outlined copy of AttributedString.AttributeRunBoundaries?(*(&v803 + 1), v802);
                        outlined copy of AttributedString.AttributeRunBoundaries?(v560, v559);
                        v561 = specialized static AttributedString.AttributeRunBoundaries.== infix(_:_:)(&v816, &v826);

                        outlined consume of AttributedString.AttributeRunBoundaries?(v560, v559);
                        if ((v561 & 1) == 0)
                        {

                          v7 = v807;
LABEL_398:
                          outlined destroy of AttributedString._AttributeValue(&v834);
                          goto LABEL_385;
                        }

                        *&v803 = v551;
                        v562 = v799;
                        if (*(v799 + 16))
                        {
                          v563 = specialized __RawDictionaryStorage.find<A>(_:)(v557, v556);
                          v565 = v564;

                          if (v565)
                          {
                            outlined init with copy of AttributedString._AttributeValue(*(v562 + 56) + 72 * v563, &v826);
                            goto LABEL_401;
                          }
                        }

                        else
                        {
                        }

                        v830 = 0;
                        v828 = 0u;
                        v829 = 0u;
                        v826 = 0u;
                        v827 = 0u;
LABEL_401:
                        v7 = v807;
                        v551 = v803;
                        outlined init with copy of AttributedString._AttributeValue(&v834, &v823);
                        outlined init with copy of FloatingPointRoundingRule?(&v826, &v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                        outlined init with copy of FloatingPointRoundingRule?(&v823, &v820[8], &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                        if (*(&v817 + 1))
                        {
                          outlined init with copy of FloatingPointRoundingRule?(&v816, &v813, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                          if (*&v820[32])
                          {
                            v810 = *&v820[40];
                            v811 = v821;
                            v812 = v822;
                            v808 = *&v820[8];
                            v809 = *&v820[24];
                            v566 = *(&v814 + 1);
                            v797 = v815;
                            v796 = __swift_project_boxed_opaque_existential_1(&v813, *(&v814 + 1));
                            v567 = __swift_project_boxed_opaque_existential_1(&v808, *(&v809 + 1));
                            *&v802 = v769;
                            v568 = *(v566 - 8);
                            MEMORY[0x1EEE9AC00](v567);
                            v794 = v769 - ((v569 + 15) & 0xFFFFFFFFFFFFFFF0);
                            *&v801 = v769;
                            v571 = MEMORY[0x1EEE9AC00](v570);
                            (*(v573 + 16))(v769 - ((v572 + 15) & 0xFFFFFFFFFFFFFFF0), v571);
                            v574 = type metadata accessor for Optional();
                            *&v800 = v769;
                            v793 = v574;
                            v575 = *(v574 - 8);
                            MEMORY[0x1EEE9AC00](v574);
                            v577 = v769 - v576;
                            v578 = swift_dynamicCast();
                            v579 = *(v568 + 56);
                            if (v578)
                            {
                              v579(v577, 0, 1, v566);
                              v580 = v794;
                              (*(v568 + 32))(v794, v577, v566);
                              v581 = dispatch thunk of static Equatable.== infix(_:_:)();
                              (*(v568 + 8))(v580, v566);
                              outlined destroy of TermOfAddress?(&v823, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                              outlined destroy of TermOfAddress?(&v826, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                            }

                            else
                            {
                              v579(v577, 1, 1, v566);
                              outlined destroy of TermOfAddress?(&v823, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                              outlined destroy of TermOfAddress?(&v826, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                              (*(v575 + 8))(v577, v793);
                              v581 = 0;
                            }

                            v7 = v807;
                            outlined destroy of AttributedString._AttributeValue(&v808);
                            outlined destroy of AttributedString._AttributeValue(&v834);
                            outlined destroy of AttributedString._AttributeValue(&v813);
                            outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                            v551 = v803;
                            if ((v581 & 1) == 0)
                            {
LABEL_611:

                              goto LABEL_361;
                            }

                            goto LABEL_385;
                          }

LABEL_609:
                          outlined destroy of TermOfAddress?(&v823, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                          outlined destroy of TermOfAddress?(&v826, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                          outlined destroy of AttributedString._AttributeValue(&v834);
                          outlined destroy of AttributedString._AttributeValue(&v813);
                        }

                        else
                        {
                          outlined destroy of TermOfAddress?(&v823, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                          outlined destroy of TermOfAddress?(&v826, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                          outlined destroy of AttributedString._AttributeValue(&v834);
                          if (!*&v820[32])
                          {
                            outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                            goto LABEL_385;
                          }
                        }

                        outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
                        goto LABEL_611;
                      }

LABEL_412:

                      v582 = 0;
                      v583 = v799;
                      v584 = v799 + 64;
                      v585 = 1 << *(v799 + 32);
                      v586 = -1;
                      if (v585 < 64)
                      {
                        v586 = ~(-1 << v585);
                      }

                      v587 = v586 & *(v799 + 64);
                      v588 = ((v585 + 63) >> 6);
                      v798 = v588;
                      while (1)
                      {
LABEL_415:
                        if (!v587)
                        {
                          do
                          {
                            v589 = v582 + 1;
                            if (__OFADD__(v582, 1))
                            {
                              goto LABEL_618;
                            }

                            if (v589 >= v588)
                            {
                              goto LABEL_440;
                            }

                            v587 = *(v584 + 8 * v589);
                            ++v582;
                          }

                          while (!v587);
                          v582 = v589;
                        }

                        v590 = __clz(__rbit64(v587)) | (v582 << 6);
                        v591 = (*(v583 + 48) + 16 * v590);
                        v593 = *v591;
                        v592 = v591[1];
                        outlined init with copy of AttributedString._AttributeValue(*(v583 + 56) + 72 * v590, &v816);
                        v800 = v816;
                        v801 = v817;
                        v802 = v819;
                        v803 = v818;
                        v594 = *v820;

                        if (!v592)
                        {
LABEL_440:

                          goto LABEL_441;
                        }

                        v587 &= v587 - 1;
                        v834 = v800;
                        v835 = v801;
                        v836 = v803;
                        v837 = v802;
                        v595 = v802;
                        v838 = v594;
                        if (v802 == 1)
                        {
                          break;
                        }

                        v598 = *(&v803 + 1);
                        *&v816 = *(&v803 + 1);
                        *(&v816 + 1) = v802;
                        v826 = 0uLL;
                        outlined copy of AttributedString.AttributeRunBoundaries?(*(&v803 + 1), v802);
                        outlined copy of AttributedString.AttributeRunBoundaries?(v598, v595);
                        v599 = specialized static AttributedString.AttributeRunBoundaries.== infix(_:_:)(&v816, &v826);

                        outlined consume of AttributedString.AttributeRunBoundaries?(v598, v595);
                        if ((v599 & 1) == 0)
                        {

                          v7 = v807;
                          goto LABEL_428;
                        }

                        v600 = v804;
                        if (*(v804 + 16))
                        {
                          v601 = specialized __RawDictionaryStorage.find<A>(_:)(v593, v592);
                          v603 = v602;

                          v7 = v807;
                          if (v603)
                          {
                            outlined init with copy of AttributedString._AttributeValue(*(v600 + 56) + 72 * v601, &v826);
                          }

                          else
                          {
                            v830 = 0;
                            v828 = 0u;
                            v829 = 0u;
                            v826 = 0u;
                            v827 = 0u;
                          }
                        }

                        else
                        {

                          v830 = 0;
                          v828 = 0u;
                          v829 = 0u;
                          v826 = 0u;
                          v827 = 0u;
                          v7 = v807;
                        }

                        v588 = v798;
                        v583 = v799;
                        outlined init with copy of AttributedString._AttributeValue(&v834, &v823);
                        outlined init with copy of FloatingPointRoundingRule?(&v826, &v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                        outlined init with copy of FloatingPointRoundingRule?(&v823, &v820[8], &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                        if (*(&v817 + 1))
                        {
                          outlined init with copy of FloatingPointRoundingRule?(&v816, &v813, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                          if (!*&v820[32])
                          {
                            outlined destroy of TermOfAddress?(&v823, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                            outlined destroy of TermOfAddress?(&v826, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                            outlined destroy of AttributedString._AttributeValue(&v834);
                            outlined destroy of AttributedString._AttributeValue(&v813);
LABEL_613:
                            outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_614:

LABEL_362:
                            v483 = v795;
                            v484 = *v795;
                            v485 = v795[2];
                            v824 = v795[1];
                            v825 = v485;
                            v823 = v484;
                            v486 = *v795;
                            v487 = v795[1];
                            v931 = *(v795 + 4);
                            v930[1] = v487;
                            v930[0] = v486;
                            outlined init with copy of Rope<BigString._Chunk>._Node?(v930, &v816);
                            v488 = BigString.index(before:)();
                            v490 = v489;
                            v492 = v491;
                            v494 = v493;
                            outlined destroy of BigString(&v823);
                            v806 = *(v7 + 24);
                            v495 = *(v7 + 40);
                            v808 = v806;
                            v809 = v495;
                            v810 = *(v7 + 56);
                            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd);
                            v496 = swift_allocObject();
                            v497 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v496, 1);
                            *v498 = 2;
                            v499 = _NSBundleDeallocatingImmortalBundle(v497, v498);
                            *&v804 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n(v499);
                            swift_unknownObjectRetain();

                            v500 = *v483;
                            v501 = v483[2];
                            v814 = v483[1];
                            v815 = v501;
                            v813 = v500;
                            v502 = *v483;
                            v503 = v483[1];
                            v933 = *(v483 + 4);
                            v932[0] = v502;
                            v932[1] = v503;
                            outlined init with copy of Rope<BigString._Chunk>._Node?(v932, &v816);
                            v504 = v490;
                            v505 = v492;
                            v506 = BigString.index(after:)();
                            v508 = v507;
                            v510 = v509;
                            v512 = v511;
                            outlined destroy of BigString(&v813);
                            if (v488 >> 10 > v506 >> 10)
                            {
                              goto LABEL_631;
                            }

                            *&v834 = v488;
                            *(&v834 + 1) = v504;
                            *&v835 = v505;
                            *(&v835 + 1) = v494;
                            *&v836 = v506;
                            *(&v836 + 1) = v508;
                            *&v837 = v510;
                            *(&v837 + 1) = v512;
                            specialized BidirectionalCollection<>._getBlock(for:in:)(v804, &v834, &v816);
                            swift_unknownObjectRelease();
                            if (*(&v819 + 1) == 2)
                            {
                              goto LABEL_637;
                            }

                            v7 = v807;
                            v421 = v805;
                            if (v488 >> 10 > v818 >> 10)
                            {
                              goto LABEL_632;
                            }

                            v482 = 0;
                            v476 = v488 >> 11;
                            v477 = v818 >> 11;
                            v833 = 0;
LABEL_366:
                            v481 = v781;
LABEL_442:
                            v621 = v795[1];
                            v866 = *v795;
                            v867 = v621;
                            v868 = v795[2];
                            if (v421 >= BigString.endIndex.getter() >> 10)
                            {
LABEL_452:
                              v478 = 0;
                              v479 = 0;
                              v480 = 0;
                            }

                            else
                            {
                              if (v482)
                              {
                                if (v481 < 1)
                                {
                                  goto LABEL_452;
                                }
                              }

                              else if (v477 >= v481)
                              {
                                goto LABEL_452;
                              }

                              if ((AttributedString.Guts._needsParagraphFixing(from:to:)(v481 - 1, v481) & 1) == 0)
                              {
                                goto LABEL_452;
                              }

                              *&v803 = v477;
                              v622 = v795;
                              v623 = *v795;
                              v624 = v795[1];
                              v865[2] = v795[2];
                              v865[1] = v624;
                              v865[0] = v623;
                              v625 = *v795;
                              v626 = v795[1];
                              v935 = *(v795 + 4);
                              v934[0] = v625;
                              v934[1] = v626;
                              outlined init with copy of Rope<BigString._Chunk>._Node?(v934, &v816);
                              v627 = BigString.index(before:)();
                              v629 = v628;
                              v631 = v630;
                              *&v806 = v632;
                              outlined destroy of BigString(v865);
                              v805 = *(v7 + 24);
                              v633 = *(v7 + 40);
                              v861 = v805;
                              v862 = v633;
                              v863 = *(v7 + 56);
                              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd);
                              v634 = swift_allocObject();
                              v635 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v634, 1);
                              *v636 = 2;
                              v637 = _NSBundleDeallocatingImmortalBundle(v635, v636);
                              *&v804 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n(v637);
                              swift_unknownObjectRetain();

                              v638 = *v622;
                              v639 = v622[1];
                              v864[2] = v622[2];
                              v864[1] = v639;
                              v864[0] = v638;
                              v640 = *v622;
                              v641 = v622[1];
                              v937 = *(v622 + 4);
                              v936[0] = v640;
                              v936[1] = v641;
                              outlined init with copy of Rope<BigString._Chunk>._Node?(v936, &v816);
                              v642 = v631;
                              v643 = BigString.index(after:)();
                              v645 = v644;
                              v647 = v646;
                              v649 = v648;
                              outlined destroy of BigString(v864);
                              if (v627 >> 10 > v643 >> 10)
                              {
                                goto LABEL_629;
                              }

                              *&v802 = v627;
                              *&v826 = v627;
                              *(&v826 + 1) = v629;
                              *&v827 = v642;
                              *(&v827 + 1) = v806;
                              *&v828 = v643;
                              *(&v828 + 1) = v645;
                              *&v829 = v647;
                              *(&v829 + 1) = v649;
                              specialized BidirectionalCollection<>._getBlock(for:in:)(v804, &v826, &v816);
                              swift_unknownObjectRelease();
                              if (*(&v819 + 1) == 2)
                              {
                                goto LABEL_636;
                              }

                              v7 = v807;
                              v477 = v803;
                              if (v627 >> 10 > v818 >> 10)
                              {
                                goto LABEL_630;
                              }

                              v478 = v802 >> 11;
                              v479 = v818 >> 11;
                              v480 = 1;
LABEL_355:
                              v481 = v781;
                            }

                            *&v806 = v479;
                            if ((v833 & 1) == 0)
                            {
                              v650 = v782;
                              if (v782 >= v477)
                              {
                                v481 = v781;
                                goto LABEL_474;
                              }

                              LODWORD(v801) = v480;
                              *&v802 = v478;
                              v816 = 0uLL;
                              v651 = AttributedString.Guts._constrainedAttributes(at:with:)(v476, &v816);
                              v653 = v652;
                              *&v805 = v651;

                              *&v804 = v653;

                              AttributedString._InternalRunsSlice.startIndex.getter(v7, v650, v851);
                              v654 = v852;
                              v816 = v851[0];
                              v817 = v851[1];
                              *&v818 = v852;
                              *&v803 = v477;
                              while (1)
                              {
                                v658 = *(v7 + 72);
                                v659 = *(v7 + 88);
                                v660 = swift_unknownObjectRetain();
                                specialized Rope._endPath.getter(v660);
                                if (v658)
                                {
                                  swift_unknownObjectRelease();
                                  if (v654 >= v659)
                                  {
                                    goto LABEL_472;
                                  }
                                }

                                else if (v654 >= 0)
                                {
LABEL_472:
                                  swift_bridgeObjectRelease_n();
                                  swift_bridgeObjectRelease_n();
                                  v481 = v781;
                                  v479 = v806;
                                  v478 = v802;
                                  v480 = v801;
                                  break;
                                }

                                v661 = v805;

                                specialized AttributedString.Guts.updateRun(at:within:with:)(&v816, v782, v477, v7, v661, 0, 0);

                                v662 = v816;
                                v663 = v818;
                                v664 = v7;
                                v7 = *(v7 + 72);
                                v665 = v664[10];
                                v666 = v664[11];
                                v667 = v664[12];
                                v831 = v816;
                                v832 = v817;
                                v668 = *(&v817 + 1) + 1;
                                if (__OFADD__(*(&v817 + 1), 1))
                                {
                                  goto LABEL_581;
                                }

                                if (v816 != v667)
                                {
                                  goto LABEL_582;
                                }

                                if (v817)
                                {
                                  v669 = *(v817 + 24 * ((*(&v816 + 1) >> ((4 * *(v817 + 18) + 8) & 0x3C)) & 0xFLL) + 24);
                                  swift_unknownObjectRetain();
                                }

                                else
                                {
                                  swift_unknownObjectRetain();
                                  v669 = specialized Rope._Node.subscript.getter(*(&v662 + 1), v7);
                                }

                                v123 = __OFADD__(v663, v669);
                                v654 = v663 + v669;
                                if (v123)
                                {
                                  goto LABEL_583;
                                }

                                specialized Rope.formIndex(after:)(&v831, v7, v665, v666, v662);
                                swift_unknownObjectRelease();
                                v477 = v803;
                                if (*(&v662 + 1) < v803)
                                {
                                  v656 = *(&v831 + 1);
                                  v655 = v831;
                                  v657 = v832;
                                  v7 = v807;
                                }

                                else
                                {
                                  v7 = v807;
                                  v670 = v807[9];
                                  v668 = v807[10];
                                  v654 = v807[11];
                                  v655 = v807[12];
                                  v671 = swift_unknownObjectRetain();
                                  v656 = specialized Rope._endPath.getter(v671);
                                  if (v670)
                                  {
                                    swift_unknownObjectRelease();
                                    v657 = 0;
                                  }

                                  else
                                  {
                                    v657 = 0;
                                    v668 = 0;
                                    v654 = 0;
                                  }
                                }

                                *&v816 = v655;
                                *(&v816 + 1) = v656;
                                *&v817 = v657;
                                *(&v817 + 1) = v668;
                                *&v818 = v654;
                              }
                            }

LABEL_474:
                            if (v481 < v479)
                            {
                              v672 = v480;
                            }

                            else
                            {
                              v672 = 0;
                            }

                            if (v672 == 1)
                            {
                              v816 = 0uLL;
                              v673 = AttributedString.Guts._constrainedAttributes(at:with:)(v478, &v816);
                              v675 = v674;
                              *&v805 = v673;

                              *&v804 = v675;

                              AttributedString._InternalRunsSlice.startIndex.getter(v7, v481, &v853);
                              for (i = v856; ; v856 = i)
                              {
                                v680 = *(v7 + 72);
                                v681 = *(v7 + 88);
                                v682 = swift_unknownObjectRetain();
                                specialized Rope._endPath.getter(v682);
                                if (v680)
                                {
                                  swift_unknownObjectRelease();
                                  if (i >= v681)
                                  {
                                    goto LABEL_495;
                                  }
                                }

                                else if (i >= 0)
                                {
LABEL_495:
                                  swift_bridgeObjectRelease_n();
                                  swift_bridgeObjectRelease_n();
                                  break;
                                }

                                v683 = v805;

                                specialized AttributedString.Guts.updateRun(at:within:with:)(&v853, v781, v479, v7, v683, 0, 0);

                                v684 = v853;
                                v685 = v856;
                                v687 = *(v7 + 72);
                                v686 = *(v7 + 80);
                                v689 = *(v7 + 88);
                                v688 = *(v7 + 96);
                                v816 = v853;
                                *&v817 = v854;
                                v690 = v855 + 1;
                                if (__OFADD__(v855, 1))
                                {
                                  goto LABEL_584;
                                }

                                if (v853 != v688)
                                {
                                  goto LABEL_585;
                                }

                                if (v854)
                                {
                                  v691 = v854 + 24 * ((*(&v853 + 1) >> ((4 * *(v854 + 18) + 8) & 0x3C)) & 0xFLL);
                                  v692 = *(v691 + 24);
                                  v7 = *(v691 + 32);
                                  swift_unknownObjectRetain();
                                }

                                else
                                {
                                  swift_unknownObjectRetain();
                                  v692 = specialized Rope._Node.subscript.getter(*(&v684 + 1), v687);
                                  v7 = v693;
                                }

                                v123 = __OFADD__(v685, v692);
                                i = v685 + v692;
                                if (v123)
                                {
                                  goto LABEL_586;
                                }

                                specialized Rope.formIndex(after:)(&v816, v687, v686, v689, v684);
                                swift_unknownObjectRelease();
                                v479 = v806;
                                if (*(&v684 + 1) < v806)
                                {
                                  v678 = *(&v816 + 1);
                                  v677 = v816;
                                  v679 = v817;
                                  v7 = v807;
                                }

                                else
                                {
                                  v7 = v807;
                                  v694 = v807[9];
                                  v690 = v807[10];
                                  i = v807[11];
                                  v677 = v807[12];
                                  v695 = swift_unknownObjectRetain();
                                  v678 = specialized Rope._endPath.getter(v695);
                                  if (v694)
                                  {
                                    swift_unknownObjectRelease();
                                    v679 = 0;
                                  }

                                  else
                                  {
                                    v679 = 0;
                                    v690 = 0;
                                    i = 0;
                                  }
                                }

                                *&v853 = v677;
                                *(&v853 + 1) = v678;
                                v854 = v679;
                                v855 = v690;
                              }
                            }

LABEL_496:
                            *v820 = v843;
                            *&v820[16] = v844;
                            *&v820[32] = v845;
                            v816 = v839;
                            v817 = v840;
                            v818 = v841;
                            v819 = v842;
                            return outlined destroy of BigSubstring.UnicodeScalarView(&v816);
                          }

                          v810 = *&v820[40];
                          v811 = v821;
                          v812 = v822;
                          v808 = *&v820[8];
                          v809 = *&v820[24];
                          v604 = *(&v814 + 1);
                          v797 = v815;
                          v796 = __swift_project_boxed_opaque_existential_1(&v813, *(&v814 + 1));
                          v605 = __swift_project_boxed_opaque_existential_1(&v808, *(&v809 + 1));
                          *&v803 = v769;
                          *&v800 = *(v604 - 8);
                          MEMORY[0x1EEE9AC00](v605);
                          v794 = v769 - ((v606 + 15) & 0xFFFFFFFFFFFFFFF0);
                          *&v802 = v769;
                          v608 = MEMORY[0x1EEE9AC00](v607);
                          (*(v610 + 16))(v769 - ((v609 + 15) & 0xFFFFFFFFFFFFFFF0), v608);
                          v611 = type metadata accessor for Optional();
                          *&v801 = v769;
                          v612 = v611;
                          v613 = *(v611 - 8);
                          MEMORY[0x1EEE9AC00](v611);
                          v615 = v769 - v614;
                          v616 = v800;
                          v617 = swift_dynamicCast();
                          v618 = *(v616 + 56);
                          if (v617)
                          {
                            v618(v615, 0, 1, v604);
                            v619 = v794;
                            (*(v616 + 32))(v794, v615, v604);
                            v620 = dispatch thunk of static Equatable.== infix(_:_:)();
                            (*(v616 + 8))(v619, v604);
                          }

                          else
                          {
                            v618(v615, 1, 1, v604);
                            (*(v613 + 8))(v615, v612);
                            v620 = 0;
                          }

                          v7 = v807;
                          v583 = v799;
                          outlined destroy of TermOfAddress?(&v823, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                          outlined destroy of TermOfAddress?(&v826, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                          outlined destroy of AttributedString._AttributeValue(&v808);
                          outlined destroy of AttributedString._AttributeValue(&v834);
                          outlined destroy of AttributedString._AttributeValue(&v813);
                          outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                          v588 = v798;
                          if ((v620 & 1) == 0)
                          {
                            goto LABEL_614;
                          }
                        }

                        else
                        {
                          outlined destroy of TermOfAddress?(&v823, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                          outlined destroy of TermOfAddress?(&v826, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                          outlined destroy of AttributedString._AttributeValue(&v834);
                          if (*&v820[32])
                          {
                            goto LABEL_613;
                          }

                          outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                        }
                      }

                      v596 = *(&v803 + 1);
                      outlined copy of AttributedString.AttributeRunBoundaries?(*(&v803 + 1), 1);

                      v597 = v596;
                      v588 = v798;
                      outlined consume of AttributedString.AttributeRunBoundaries?(v597, 1);
                      outlined consume of AttributedString.AttributeRunBoundaries?(0, 0);
LABEL_428:
                      v583 = v799;
                      outlined destroy of AttributedString._AttributeValue(&v834);
                      goto LABEL_415;
                    }
                  }

                  __break(1u);
LABEL_616:
                  __break(1u);
LABEL_617:
                  __break(1u);
LABEL_618:
                  __break(1u);
LABEL_619:
                  outlined destroy of TermOfAddress?(&v823, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                  outlined destroy of TermOfAddress?(&v826, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                  outlined destroy of AttributedString._AttributeValue(&v834);
                  outlined destroy of AttributedString._AttributeValue(&v813);
LABEL_620:
                  outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_621:

                  v513 = v807;
LABEL_378:
                  v514 = v795;
                  v515 = *v795;
                  v516 = v795[2];
                  v827 = v795[1];
                  v828 = v516;
                  v826 = v515;
                  v517 = *v795;
                  v518 = v795[1];
                  *&v868 = *(v795 + 4);
                  v867 = v518;
                  v866 = v517;
                  outlined init with copy of Rope<BigString._Chunk>._Node?(&v866, &v816);
                  v519 = BigString.index(before:)();
                  v521 = v520;
                  v523 = v522;
                  v525 = v524;
                  outlined destroy of BigString(&v826);
                  v806 = *(v513 + 3);
                  v526 = *(v513 + 5);
                  v813 = v806;
                  v814 = v526;
                  v815 = *(v513 + 7);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd);
                  v527 = swift_allocObject();
                  v528 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v527, 1);
                  *v529 = 2;
                  v530 = _NSBundleDeallocatingImmortalBundle(v528, v529);
                  *&v805 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n(v530);
                  swift_unknownObjectRetain();

                  v531 = *v514;
                  v532 = v514[2];
                  v824 = v514[1];
                  v825 = v532;
                  v823 = v531;
                  v533 = *v514;
                  v534 = v514[1];
                  *&v810 = *(v514 + 4);
                  v808 = v533;
                  v809 = v534;
                  outlined init with copy of Rope<BigString._Chunk>._Node?(&v808, &v816);
                  v535 = v521;
                  v536 = v523;
                  v537 = BigString.index(after:)();
                  v539 = v538;
                  v541 = v540;
                  v543 = v542;
                  outlined destroy of BigString(&v823);
                  if (v519 >> 10 > v537 >> 10)
                  {
                    goto LABEL_633;
                  }

                  *&v834 = v519;
                  *(&v834 + 1) = v535;
                  *&v835 = v536;
                  *(&v835 + 1) = v525;
                  *&v836 = v537;
                  *(&v836 + 1) = v539;
                  *&v837 = v541;
                  *(&v837 + 1) = v543;
                  specialized BidirectionalCollection<>._getBlock(for:in:)(v805, &v834, &v816);
                  swift_unknownObjectRelease();
                  if (*(&v819 + 1) == 2)
                  {
                    goto LABEL_638;
                  }

                  v7 = v807;
                  if (v519 >> 10 > v818 >> 10)
                  {
                    goto LABEL_634;
                  }

                  v478 = 0;
                  v479 = 0;
                  v480 = 0;
                  v476 = v519 >> 11;
                  v833 = 0;
                  v477 = v818 >> 11;
                  goto LABEL_355;
                }

                v44 = v406;
                if (v400)
                {
                  specialized Rope._Node.distanceFromStart<A>(to:in:)(v403, v404, v405, v400, v401);
                  swift_unknownObjectRelease();
                }

                v407 = &v398[-v44];
                if (__OFSUB__(v398, v44))
                {
                  goto LABEL_358;
                }

                v397 = v806;
              }

              else
              {
                v407 = v400 ? *(v7 + 88) : 0;
              }

              if (v6 >= v407)
              {
                break;
              }

              specialized AttributedString.Guts.updateRun(at:within:with:)(&v816, v398, v397, v7, v804, v393);
              v408 = v393;

              v409 = v816;
              v410 = v818;
              v411 = v7;
              v7 = *(v7 + 72);
              v412 = v411[10];
              v44 = v411[11];
              v413 = v411[12];
              v834 = v816;
              *&v835 = v817;
              v28 = *(&v817 + 1) + 1;
              if (__OFADD__(*(&v817 + 1), 1))
              {
                __break(1u);
LABEL_352:
                __break(1u);
LABEL_353:
                __break(1u);
LABEL_354:
                v476 = 0;
                v477 = 0;
                v478 = 0;
                v479 = 0;
                v480 = 0;
                goto LABEL_355;
              }

              if (v816 != v413)
              {
                goto LABEL_352;
              }

              if (v817)
              {
                v414 = *(v817 + 24 * ((*(&v816 + 1) >> ((4 * *(v817 + 18) + 8) & 0x3C)) & 0xFLL) + 24);
                swift_unknownObjectRetain();
                v123 = __OFADD__(v410, v414);
                v6 = v410 + v414;
                if (v123)
                {
                  goto LABEL_353;
                }
              }

              else
              {
                swift_unknownObjectRetain();
                v415 = specialized Rope._Node.subscript.getter(*(&v409 + 1), v7);

                v123 = __OFADD__(v410, v415);
                v6 = v410 + v415;
                if (v123)
                {
                  goto LABEL_353;
                }
              }

              specialized Rope.formIndex(after:)(&v834, v7, v412, v44, v409);
              swift_unknownObjectRelease();
              v397 = v806;
              if (v6 < v806)
              {
                v31 = *(&v834 + 1);
                v399 = v834;
                v7 = v835;
              }

              else
              {
                v44 = v807[9];
                LODWORD(v31) = v805;
                if (v805 == v806)
                {
                  v28 = v807[10];
                  v47 = v807[11];
                  v399 = v807[12];
                  swift_unknownObjectRetain();
                  if (specialized Rope.find<A>(at:in:preferEnd:)(v805, 0, v44, v28, v47, v399) != v399)
                  {
                    goto LABEL_370;
                  }

                  v31 = v416;
                  v7 = v417;
                  v419 = v418;
                  if (v44)
                  {
                    v28 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v399, v416, v417, v44, v28);
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v28 = 0;
                  }

                  v6 = v805 - v419;
                  if (__OFSUB__(v805, v419))
                  {
                    goto LABEL_371;
                  }

                  v397 = v806;
                }

                else
                {
                  v399 = v807[12];
                  if (v44)
                  {
                    v7 = 0;
                    v28 = v807[10];
                    v6 = v807[11];
                    v31 = ((-15 << ((4 * *(v44 + 18) + 8) & 0x3C)) - 1) & *(v44 + 18) | (*(v44 + 16) << ((4 * *(v44 + 18) + 8) & 0x3C));
                  }

                  else
                  {
                    v31 = 0;
                    v7 = 0;
                    v28 = 0;
                    v6 = 0;
                  }
                }
              }

              *&v816 = v399;
              *(&v816 + 1) = v31;
              *&v817 = v7;
              *(&v817 + 1) = v28;
              *&v818 = v6;
              v7 = v807;
              v393 = v408;
              v398 = v805;
            }

            v395 = v803;
            v394 = v800;
          }

          while (v803 != v801);

          v382 = v798;
          v383 = v799;
          v386 = v796;
          v387 = v797;
        }
      }
    }

    v788 = v44;
    v260 = *(v7 + 72);
    v261 = *(v7 + 80);
    v262 = *(v7 + 88);
    v263 = *(v7 + 96);
    swift_unknownObjectRetain();
    v6 = v798;
    v44 = v796;
    specialized Rope.subscript.getter(v798, v797, v796, v260, v261, v262, v263);
    *&v802 = v264;
    v47 = v265;
    swift_unknownObjectRelease();
    v266 = *(v7 + 72);
    v267 = *(v7 + 80);
    v268 = *(v7 + 88);
    v269 = *(v7 + 96);
    swift_unknownObjectRetain();
    v270 = specialized Rope.subscript.getter(v798, v797, v796, v266, v267, v268, v269);
    swift_unknownObjectRelease();

    v271 = v801 + v270;
    if (__OFADD__(v801, v270))
    {
      goto LABEL_499;
    }

    if (v799 >= v801)
    {
      v272 = v801;
    }

    else
    {
      v272 = v799;
    }

    if (v801 < v794)
    {
      v272 = v794;
    }

    if (v271 <= v794)
    {
      v273 = v794;
    }

    else
    {
      v273 = v801 + v270;
    }

    if (v799 >= v271)
    {
      v274 = v273;
    }

    else
    {
      v274 = v799;
    }

    if (v272 == v274)
    {
      goto LABEL_500;
    }

    if (__OFSUB__(v274, v272))
    {
      goto LABEL_501;
    }

    v785 = v47;
    v275 = *(v7 + 72);
    v276 = *(v7 + 80);
    v6 = *(v7 + 88);
    v277 = *(v7 + 96);
    v47 = v798;
    *&v816 = v798;
    *(&v816 + 1) = v797;
    v44 = v796;
    *&v817 = v796;
    v123 = __OFADD__(v793++, 1);
    if (v123)
    {
      goto LABEL_502;
    }

    swift_unknownObjectRetain();
    v47 = specialized Rope.subscript.getter(v798, v797, v796, v275, v276, v6, v277);

    if (__OFADD__(v801, v47))
    {
      goto LABEL_503;
    }

    *&v801 = v801 + v47;
    specialized Rope.formIndex(after:)(&v816, v275, v276, v6, v277);
    swift_unknownObjectRelease();
    if (v801 < v799)
    {
      v797 = *(&v816 + 1);
      v798 = v816;
      v796 = v817;
      v278 = v788;
      v279 = v802;
      goto LABEL_222;
    }

    v280 = *(v7 + 72);
    v281 = *(v7 + 80);
    v283 = *(v7 + 88);
    v282 = *(v7 + 96);
    swift_unknownObjectRetain();
    v278 = v788;
    v798 = v282;
    if (v794 == v799)
    {
      if (specialized Rope.find<A>(at:in:preferEnd:)(v794, 0, v280, v281, v283, v282) != v282)
      {
        goto LABEL_577;
      }

      v287 = v286;
      v796 = v285;
      v797 = v284;
      if (v280)
      {
        v793 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v282, v284, v285, v280, v281);
        swift_unknownObjectRelease();
      }

      else
      {
        v793 = 0;
      }

      v279 = v802;
      v242 = v794;
      if (__OFSUB__(v794, v287))
      {
        goto LABEL_578;
      }

      *&v801 = v794 - v287;
    }

    else
    {
      *&v801 = v283;
      v797 = specialized Rope._endPath.getter(v280);
      v279 = v802;
      if (v280)
      {
        v793 = v281;
        swift_unknownObjectRelease();
        v796 = 0;
      }

      else
      {
        v796 = 0;
        v793 = 0;
        *&v801 = 0;
      }

LABEL_222:
      v242 = v794;
    }

    v288 = *(v7 + 40);
    v878 = *(v7 + 24);
    v879 = v288;
    v880 = *(v7 + 56);
    swift_unknownObjectRetain();
    v289 = BigString.UTF8View.index(_:offsetBy:)();
    v291 = v290;
    v786 = v293;
    v787 = v292;
    v294 = v289;
    swift_unknownObjectRelease();

    v295 = specialized Sequence.contains(where:)(v279);

    if ((v295 & 1) == 0 || v294 >> 10 <= v278 >> 10)
    {

      v44 = v294;
      v791 = v291;
      v250 = v787;
      continue;
    }

    break;
  }

  v775 = v294;
  v776 = v294 >> 10;
  v769[0] = v291;
  v296 = v279 + 64;
  *&v800 = v279 + 64;
LABEL_230:
  v297 = *(v7 + 40);
  v875 = *(v7 + 24);
  v876 = v297;
  v877 = *(v7 + 56);
  swift_unknownObjectRetain();
  v783 = BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();
  v298 = *(v7 + 40);
  v872 = *(v7 + 24);
  v873 = v298;
  v874 = *(v7 + 56);
  swift_unknownObjectRetain();
  v299 = BigString.UnicodeScalarView.index(after:)();
  v790 = v301;
  v791 = v300;
  v789 = v302;
  swift_unknownObjectRelease();
  v303 = 1 << *(v279 + 32);
  v304 = *(v279 + 64);
  v784 = (v303 + 63) >> 6;
  if (v303 < 64)
  {
    v305 = ~(-1 << v303);
  }

  else
  {
    v305 = -1;
  }

  v7 = v305 & v304;
  v788 = v299;
  v778 = v299 >> 11;
  v779 = v278 >> 11;

  for (j = 0; v7; v777 = v780)
  {
    while (1)
    {
      v307 = j;
LABEL_245:
      v310 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v311 = v310 | (v307 << 6);
      v312 = *(v279 + 56);
      v313 = (*(v279 + 48) + 16 * v311);
      v314 = v313[1];
      *&v806 = *v313;
      outlined init with copy of AttributedString._AttributeValue(v312 + 72 * v311, &v834);
      *&v804 = *(&v834 + 1);
      *&v805 = v834;
      v315 = *(&v835 + 1);
      *&v803 = v835;
      v317 = *(&v836 + 1);
      v316 = v836;
      v319 = *(&v837 + 1);
      v318 = v837;
      v320 = v838;

      v321 = v320;
      v322 = v317;
      v323 = v314;
      v324 = v803;
      v325 = v804;
      v326 = v805;
      v327 = v806;
LABEL_246:
      *&v816 = v327;
      *(&v816 + 1) = v323;
      *&v817 = v326;
      *(&v817 + 1) = v325;
      *&v818 = v324;
      *(&v818 + 1) = v315;
      *&v819 = v316;
      *(&v819 + 1) = v322;
      *v820 = v318;
      *&v820[8] = v319;
      *&v820[16] = v321;
      if (!v323)
      {
        v279 = v802;

        v278 = v788;
        v7 = v807;
        v296 = v800;
        if (v776 <= v788 >> 10)
        {

          v242 = v794;
          v249 = v769[0];
          v250 = v787;
          v248 = v775;
          goto LABEL_185;
        }

        goto LABEL_230;
      }

      v328 = v323;
      outlined copy of AttributedString.AttributeRunBoundaries?(v322, v318);
      outlined destroy of AttributedString._AttributeValue(&v817);
      v279 = v802;
      v296 = v800;
      if (v318 >= 2)
      {
        v329 = specialized Collection.first.getter(v322, v318);
        outlined consume of AttributedString.AttributeRunBoundaries?(v322, v318);
        if ((v329 & 0x100000000) == 0 && v783 != v329)
        {
          break;
        }
      }

      if (!v7)
      {
        goto LABEL_237;
      }
    }

    if (v778 < v779)
    {
      goto LABEL_600;
    }

    v330 = swift_isUniquelyReferenced_nonNull_native();
    *&v834 = v777;
    v332 = specialized __RawDictionaryStorage.find<A>(_:)(v327, v328);
    v333 = v777[2];
    v334 = (v331 & 1) == 0;
    v335 = v333 + v334;
    if (__OFADD__(v333, v334))
    {
      goto LABEL_601;
    }

    v336 = v331;
    if (v777[3] >= v335)
    {
      if (v330)
      {
        v780 = v777;
        if (v331)
        {
          goto LABEL_259;
        }
      }

      else
      {
        *&v804 = v332;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySnySiGGGMd);
        v780 = static _DictionaryStorage.copy(original:)();
        if (v777[2])
        {
          v341 = (v780 + 64);
          v342 = 1 << *(v780 + 32);
          *&v803 = v777 + 8;
          v343 = (v342 + 63) >> 6;
          if (v780 != v777 || v341 >= v803 + 8 * v343)
          {
            memmove(v341, v803, 8 * v343);
          }

          v344 = 0;
          v345 = v777;
          *(v780 + 16) = v777[2];
          v346 = 1 << *(v345 + 32);
          v347 = v345[8];
          if (v346 < 64)
          {
            v348 = ~(-1 << v346);
          }

          else
          {
            v348 = -1;
          }

          v349 = v348 & v347;
          v350 = (v346 + 63) >> 6;
          *&v805 = v350;
          if (v349)
          {
            do
            {
              v351 = __clz(__rbit64(v349));
              *&v806 = (v349 - 1) & v349;
LABEL_274:
              v354 = v351 | (v344 << 6);
              v355 = (v777[6] + 16 * v354);
              v356 = v355[1];
              v357 = *(v777[7] + 8 * v354);
              v358 = v780;
              v359 = (*(v780 + 48) + 16 * v354);
              *v359 = *v355;
              v359[1] = v356;
              *(*(v358 + 56) + 8 * v354) = v357;

              v350 = v805;
              v349 = v806;
            }

            while (v806);
          }

          v352 = v344;
          while (1)
          {
            v344 = v352 + 1;
            if (__OFADD__(v352, 1))
            {
              goto LABEL_635;
            }

            if (v344 >= v350)
            {
              break;
            }

            v353 = *(v803 + 8 * v344);
            ++v352;
            if (v353)
            {
              v351 = __clz(__rbit64(v353));
              *&v806 = (v353 - 1) & v353;
              goto LABEL_274;
            }
          }
        }

        v332 = v804;
        if (v336)
        {
LABEL_259:
          v339 = v332;

          v332 = v339;
          v340 = v780;
          goto LABEL_279;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v335, v330);
      v780 = v834;
      v337 = specialized __RawDictionaryStorage.find<A>(_:)(v327, v328);
      if ((v336 & 1) != (v338 & 1))
      {
        goto LABEL_639;
      }

      v332 = v337;
      if (v336)
      {
        goto LABEL_259;
      }
    }

    v340 = v780;
    *(v780 + 8 * (v332 >> 6) + 64) |= 1 << v332;
    v360 = (v340[6] + 16 * v332);
    *v360 = v327;
    v360[1] = v328;
    *(v340[7] + 8 * v332) = MEMORY[0x1E69E7CC0];
    v361 = v340[2];
    v123 = __OFADD__(v361, 1);
    v362 = v361 + 1;
    if (v123)
    {
      goto LABEL_608;
    }

    v340[2] = v362;
LABEL_279:
    v363 = v340[7];
    v364 = *(v363 + 8 * v332);
    v365 = *(v364 + 2);
    if (v365 && (v366 = v365 - 1, v367 = &v364[16 * v365 - 16], *(v367 + 5) == v779))
    {
      *&v806 = v340[7];
      v368 = *(v367 + 4);
      if (v778 < v368)
      {
        goto LABEL_616;
      }

      v369 = v332;
      v370 = swift_isUniquelyReferenced_nonNull_native();
      v371 = v806;
      *(v806 + 8 * v369) = v364;
      if ((v370 & 1) == 0)
      {
        *&v804 = v369;
        v381 = v371;
        v364 = specialized _ArrayBuffer._consumeAndCreateNew()(v364);
        *(v381 + 8 * v804) = v364;
      }

      if (v365 > *(v364 + 2))
      {
        goto LABEL_617;
      }
    }

    else
    {
      v372 = v332;
      v373 = swift_isUniquelyReferenced_nonNull_native();
      *(v363 + 8 * v372) = v364;
      if (v373)
      {
        v374 = v372;
      }

      else
      {
        v378 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v365 + 1, 1, v364);
        v374 = v372;
        v364 = v378;
        *(v363 + 8 * v372) = v378;
      }

      v366 = *(v364 + 2);
      v375 = *(v364 + 3);
      if (v366 >= v375 >> 1)
      {
        v379 = v363;
        v380 = v374;
        v364 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v375 > 1), v366 + 1, 1, v364);
        *(v379 + 8 * v380) = v364;
      }

      *(v364 + 2) = v366 + 1;
      v368 = v779;
    }

    v376 = &v364[16 * v366];
    v377 = v778;
    *(v376 + 4) = v368;
    *(v376 + 5) = v377;
  }

LABEL_237:
  if (v784 <= j + 1)
  {
    v308 = j + 1;
  }

  else
  {
    v308 = v784;
  }

  v309 = v308 - 1;
  while (1)
  {
    v307 = j + 1;
    if (__OFADD__(j, 1))
    {
      break;
    }

    if (v307 >= v784)
    {
      v327 = 0;
      v323 = 0;
      v326 = 0;
      v325 = 0;
      v324 = 0;
      v315 = 0;
      v316 = 0;
      v322 = 0;
      v318 = 0;
      v319 = 0;
      v321 = 0;
      v7 = 0;
      j = v309;
      goto LABEL_246;
    }

    v7 = *(v296 + 8 * v307);
    ++j;
    if (v7)
    {
      j = v307;
      goto LABEL_245;
    }
  }

  __break(1u);
LABEL_339:

  v833 = 1;
  v420 = v771 >> 10;
  v421 = v770 >> 10;
  if (v771 >> 10 != v770 >> 10)
  {
    v449 = v795[1];
    v869 = *v795;
    v870 = v449;
    v871 = v795[2];
    if (v420 <= BigString.startIndex.getter() >> 10)
    {
      v476 = 0;
      v477 = 0;
      v482 = 1;
      goto LABEL_366;
    }

    *&v805 = v770 >> 10;
    if (__OFSUB__(v782, 1))
    {
      goto LABEL_627;
    }

    v450 = *(v7 + 72);
    v451 = *(v7 + 80);
    v452 = *(v7 + 88);
    v453 = *(v7 + 96);
    swift_unknownObjectRetain();
    AttributedString._InternalRuns.index(atUTF8Offset:preferEnd:)(v782 - 1, 0, v450, v451, v452, v453, &v816);
    v454 = *(&v816 + 1);
    *&v806 = v816;
    v455 = v817;
    swift_unknownObjectRelease();
    v456 = *(v7 + 72);
    v457 = *(v7 + 80);
    v458 = *(v7 + 88);
    v459 = *(v7 + 96);
    swift_unknownObjectRetain();
    AttributedString._InternalRuns.index(atUTF8Offset:preferEnd:)(v782, 0, v456, v457, v458, v459, &v816);
    v461 = *(&v816 + 1);
    v460 = v816;
    v462 = v817;
    swift_unknownObjectRelease();
    v463 = *(v7 + 72);
    v464 = *(v7 + 80);
    v465 = v807[11];
    v466 = v807[12];
    swift_unknownObjectRetain();
    v467 = v465;
    v7 = v807;
    specialized Rope.subscript.getter(v806, v454, v455, v463, v464, v467, v466);
    v402 = v468;
    *&v806 = v469;
    swift_unknownObjectRelease();
    v400 = v807[9];
    v470 = v807[10];
    v401 = v807[11];
    v471 = v807[12];
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v460, v461, v462, v400, v470, v401, v471);
    v44 = v472;
    v398 = v473;
    swift_unknownObjectRelease();

    LODWORD(v400) = specialized Sequence.contains(where:)(v474);

    LODWORD(v401) = specialized Sequence.contains(where:)(v475);

    if ((v400 & 1) == 0 && (v401 & 1) == 0)
    {

LABEL_441:
      v476 = 0;
      v477 = 0;
      v482 = 1;
      v481 = v781;
      v421 = v805;
      goto LABEL_442;
    }

    goto LABEL_359;
  }

  v422 = v795[1];
  v869 = *v795;
  v870 = v422;
  v871 = v795[2];
  if (v420 <= BigString.startIndex.getter() >> 10 || v420 >= BigString.endIndex.getter() >> 10)
  {
    goto LABEL_354;
  }

  if (__OFSUB__(v782, 1))
  {
    goto LABEL_628;
  }

  v423 = *(v7 + 72);
  v424 = *(v7 + 80);
  v425 = *(v7 + 88);
  v426 = *(v7 + 96);
  swift_unknownObjectRetain();
  AttributedString._InternalRuns.index(atUTF8Offset:preferEnd:)(v782 - 1, 0, v423, v424, v425, v426, &v816);
  *&v805 = *(&v816 + 1);
  *&v806 = v816;
  v427 = v817;
  swift_unknownObjectRelease();
  v428 = *(v7 + 72);
  v429 = *(v7 + 80);
  v430 = *(v7 + 88);
  v431 = *(v7 + 96);
  swift_unknownObjectRetain();
  AttributedString._InternalRuns.index(atUTF8Offset:preferEnd:)(v782, 0, v428, v429, v430, v431, &v816);
  v433 = *(&v816 + 1);
  v432 = v816;
  v434 = v817;
  swift_unknownObjectRelease();
  v435 = *(v7 + 72);
  v436 = *(v7 + 80);
  v438 = *(v7 + 88);
  v437 = *(v7 + 96);
  swift_unknownObjectRetain();
  specialized Rope.subscript.getter(v806, v805, v427, v435, v436, v438, v437);
  v440 = v439;
  v6 = v441;
  swift_unknownObjectRelease();
  v31 = *(v7 + 72);
  v442 = *(v7 + 80);
  v28 = *(v7 + 88);
  v443 = *(v7 + 96);
  swift_unknownObjectRetain();
  v444 = v443;
  v7 = v440;
  specialized Rope.subscript.getter(v432, v433, v434, v31, v442, v28, v444);
  v47 = v445;
  v44 = v446;
  swift_unknownObjectRelease();

  LODWORD(v31) = specialized Sequence.contains(where:)(v447);

  LODWORD(v28) = specialized Sequence.contains(where:)(v448);

  if ((v31 & 1) == 0 && (v28 & 1) == 0)
  {

LABEL_565:
    v476 = 0;
    v477 = 0;
    v478 = 0;
    v479 = 0;
    v480 = 0;
    v7 = v807;
    goto LABEL_355;
  }

LABEL_375:
  if ((v31 ^ v28))
  {

LABEL_377:
    v513 = v807;
    goto LABEL_378;
  }

LABEL_508:
  v799 = v6;
  *&v800 = v44;
  *&v801 = v47;
  v697 = v7 + 64;
  v698 = 1 << *(v7 + 32);
  v699 = -1;
  if (v698 < 64)
  {
    v699 = ~(-1 << v698);
  }

  v700 = v699 & *(v7 + 64);
  v701 = (v698 + 63) >> 6;

  v702 = 0;
  *&v802 = v7;
  while (1)
  {
    if (!v700)
    {
      do
      {
        v703 = v702 + 1;
        if (__OFADD__(v702, 1))
        {
          __break(1u);
          goto LABEL_626;
        }

        if (v703 >= v701)
        {
          goto LABEL_536;
        }

        v700 = *(v697 + 8 * v703);
        ++v702;
      }

      while (!v700);
      v702 = v703;
    }

    v704 = __clz(__rbit64(v700)) | (v702 << 6);
    v705 = (*(v7 + 48) + 16 * v704);
    v707 = *v705;
    v706 = v705[1];
    outlined init with copy of AttributedString._AttributeValue(*(v7 + 56) + 72 * v704, &v816);
    v803 = v816;
    v804 = v817;
    v805 = v819;
    v806 = v818;
    v708 = *v820;

    if (!v706)
    {
      break;
    }

    v700 &= v700 - 1;
    v834 = v803;
    v835 = v804;
    v836 = v806;
    v837 = v805;
    v709 = v805;
    v838 = v708;
    v710 = *(&v806 + 1);
    if (v805 == 1)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(*(&v806 + 1), 1);

      outlined consume of AttributedString.AttributeRunBoundaries?(v710, 1);
      outlined consume of AttributedString.AttributeRunBoundaries?(0, 0);
LABEL_524:
      outlined destroy of AttributedString._AttributeValue(&v834);
      continue;
    }

    *&v816 = *(&v806 + 1);
    *(&v816 + 1) = v805;
    v826 = 0uLL;
    outlined copy of AttributedString.AttributeRunBoundaries?(*(&v806 + 1), v805);
    outlined copy of AttributedString.AttributeRunBoundaries?(v710, v709);
    v711 = specialized static AttributedString.AttributeRunBoundaries.== infix(_:_:)(&v816, &v826);

    outlined consume of AttributedString.AttributeRunBoundaries?(v710, v709);
    if ((v711 & 1) == 0)
    {

      v7 = v802;
      goto LABEL_524;
    }

    *&v806 = v701;
    v712 = v801;
    if (*(v801 + 16))
    {
      v713 = specialized __RawDictionaryStorage.find<A>(_:)(v707, v706);
      v715 = v714;

      v7 = v802;
      if (v715)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v712 + 56) + 72 * v713, &v826);
      }

      else
      {
        v830 = 0;
        v828 = 0u;
        v829 = 0u;
        v826 = 0u;
        v827 = 0u;
      }
    }

    else
    {

      v830 = 0;
      v828 = 0u;
      v829 = 0u;
      v826 = 0u;
      v827 = 0u;
      v7 = v802;
    }

    v701 = v806;
    outlined init with copy of AttributedString._AttributeValue(&v834, &v823);
    outlined init with copy of FloatingPointRoundingRule?(&v826, &v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined init with copy of FloatingPointRoundingRule?(&v823, &v820[8], &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    if (*(&v817 + 1))
    {
      outlined init with copy of FloatingPointRoundingRule?(&v816, &v813, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (!*&v820[32])
      {
        goto LABEL_619;
      }

      v810 = *&v820[40];
      v811 = v821;
      v812 = v822;
      v808 = *&v820[8];
      v809 = *&v820[24];
      v716 = *(&v814 + 1);
      v797 = v815;
      v796 = __swift_project_boxed_opaque_existential_1(&v813, *(&v814 + 1));
      v717 = __swift_project_boxed_opaque_existential_1(&v808, *(&v809 + 1));
      *&v805 = v769;
      v798 = *(v716 - 8);
      MEMORY[0x1EEE9AC00](v717);
      v794 = v769 - ((v718 + 15) & 0xFFFFFFFFFFFFFFF0);
      *&v804 = v769;
      v720 = MEMORY[0x1EEE9AC00](v719);
      (*(v722 + 16))(v769 - ((v721 + 15) & 0xFFFFFFFFFFFFFFF0), v720);
      v723 = type metadata accessor for Optional();
      *&v803 = v769;
      v724 = v723;
      v725 = *(v723 - 8);
      MEMORY[0x1EEE9AC00](v723);
      v727 = v769 - v726;
      v728 = v798;
      v729 = swift_dynamicCast();
      v730 = v728[7];
      if (v729)
      {
        v730(v727, 0, 1, v716);
        v731 = v794;
        (v728[4])(v794, v727, v716);
        v732 = dispatch thunk of static Equatable.== infix(_:_:)();
        (v728[1])(v731, v716);
      }

      else
      {
        v730(v727, 1, 1, v716);
        (*(v725 + 8))(v727, v724);
        v732 = 0;
      }

      v7 = v802;
      outlined destroy of TermOfAddress?(&v823, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v826, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of AttributedString._AttributeValue(&v808);
      outlined destroy of AttributedString._AttributeValue(&v834);
      outlined destroy of AttributedString._AttributeValue(&v813);
      outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v701 = v806;
      if ((v732 & 1) == 0)
      {
        goto LABEL_621;
      }
    }

    else
    {
      outlined destroy of TermOfAddress?(&v823, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v826, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of AttributedString._AttributeValue(&v834);
      if (*&v820[32])
      {
        goto LABEL_620;
      }

      outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    }
  }

LABEL_536:

  v733 = 0;
  v734 = v801;
  v735 = v801 + 64;
  v736 = 1 << *(v801 + 32);
  v737 = -1;
  if (v736 < 64)
  {
    v737 = ~(-1 << v736);
  }

  v738 = v737 & *(v801 + 64);
  v739 = (v736 + 63) >> 6;
  *&v800 = v739;
  while (2)
  {
    if (v738)
    {
LABEL_544:
      v741 = __clz(__rbit64(v738)) | (v733 << 6);
      v742 = (*(v734 + 48) + 16 * v741);
      v744 = *v742;
      v743 = v742[1];
      outlined init with copy of AttributedString._AttributeValue(*(v734 + 56) + 72 * v741, &v816);
      v803 = v816;
      v804 = v817;
      v805 = v819;
      v806 = v818;
      v745 = *v820;

      if (!v743)
      {
LABEL_564:

        goto LABEL_565;
      }

      v738 &= v738 - 1;
      v834 = v803;
      v835 = v804;
      v836 = v806;
      v837 = v805;
      v746 = v805;
      v838 = v745;
      v747 = *(&v806 + 1);
      if (v805 == 1)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*(&v806 + 1), 1);

        outlined consume of AttributedString.AttributeRunBoundaries?(v747, 1);
        outlined consume of AttributedString.AttributeRunBoundaries?(0, 0);
LABEL_552:
        v739 = v800;
        outlined destroy of AttributedString._AttributeValue(&v834);
        continue;
      }

      *&v816 = *(&v806 + 1);
      *(&v816 + 1) = v805;
      v826 = 0uLL;
      outlined copy of AttributedString.AttributeRunBoundaries?(*(&v806 + 1), v805);
      outlined copy of AttributedString.AttributeRunBoundaries?(v747, v746);
      v748 = specialized static AttributedString.AttributeRunBoundaries.== infix(_:_:)(&v816, &v826);

      outlined consume of AttributedString.AttributeRunBoundaries?(v747, v746);
      if ((v748 & 1) == 0)
      {

        v734 = v801;
        goto LABEL_552;
      }

      v749 = v802;
      v739 = v800;
      if (*(v802 + 16))
      {
        v750 = specialized __RawDictionaryStorage.find<A>(_:)(v744, v743);
        v752 = v751;

        if (v752)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v749 + 56) + 72 * v750, &v826);
          goto LABEL_555;
        }
      }

      else
      {
      }

      v830 = 0;
      v828 = 0u;
      v829 = 0u;
      v826 = 0u;
      v827 = 0u;
LABEL_555:
      outlined init with copy of AttributedString._AttributeValue(&v834, &v823);
      outlined init with copy of FloatingPointRoundingRule?(&v826, &v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined init with copy of FloatingPointRoundingRule?(&v823, &v820[8], &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v734 = v801;
      if (*(&v817 + 1))
      {
        outlined init with copy of FloatingPointRoundingRule?(&v816, &v813, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (!*&v820[32])
        {
          outlined destroy of TermOfAddress?(&v823, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v826, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v834);
          outlined destroy of AttributedString._AttributeValue(&v813);
LABEL_623:
          outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_624:

          goto LABEL_377;
        }

        v810 = *&v820[40];
        v811 = v821;
        v812 = v822;
        v808 = *&v820[8];
        v809 = *&v820[24];
        v753 = *(&v814 + 1);
        v798 = v815;
        v797 = __swift_project_boxed_opaque_existential_1(&v813, *(&v814 + 1));
        v754 = __swift_project_boxed_opaque_existential_1(&v808, *(&v809 + 1));
        *&v806 = v769;
        *&v804 = *(v753 - 8);
        MEMORY[0x1EEE9AC00](v754);
        v796 = (v769 - ((v755 + 15) & 0xFFFFFFFFFFFFFFF0));
        *&v805 = v769;
        v757 = MEMORY[0x1EEE9AC00](v756);
        (*(v759 + 16))(v769 - ((v758 + 15) & 0xFFFFFFFFFFFFFFF0), v757);
        v760 = type metadata accessor for Optional();
        *&v803 = v769;
        v794 = v760;
        v761 = *(v760 - 8);
        MEMORY[0x1EEE9AC00](v760);
        v763 = v769 - v762;
        v764 = v804;
        v765 = swift_dynamicCast();
        v766 = *(v764 + 56);
        if (v765)
        {
          v766(v763, 0, 1, v753);
          v767 = v796;
          (*(v764 + 32))(v796, v763, v753);
          v768 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v764 + 8))(v767, v753);
        }

        else
        {
          v766(v763, 1, 1, v753);
          (*(v761 + 8))(v763, v794);
          v768 = 0;
        }

        v734 = v801;
        v739 = v800;
        outlined destroy of TermOfAddress?(&v823, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v826, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v808);
        outlined destroy of AttributedString._AttributeValue(&v834);
        outlined destroy of AttributedString._AttributeValue(&v813);
        outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if ((v768 & 1) == 0)
        {
          goto LABEL_624;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v823, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v826, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v834);
        if (*&v820[32])
        {
          goto LABEL_623;
        }

        outlined destroy of TermOfAddress?(&v816, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      continue;
    }

    break;
  }

  while (1)
  {
    v740 = v733 + 1;
    if (__OFADD__(v733, 1))
    {
      break;
    }

    if (v740 >= v739)
    {
      goto LABEL_564;
    }

    v738 = *(v735 + 8 * v740);
    ++v733;
    if (v738)
    {
      v733 = v740;
      goto LABEL_544;
    }
  }

LABEL_626:
  __break(1u);
LABEL_627:
  __break(1u);
LABEL_628:
  __break(1u);
LABEL_629:
  __break(1u);
LABEL_630:
  __break(1u);
LABEL_631:
  __break(1u);
LABEL_632:
  __break(1u);
LABEL_633:
  __break(1u);
LABEL_634:
  __break(1u);
LABEL_635:
  __break(1u);
LABEL_636:
  __break(1u);
LABEL_637:
  __break(1u);
LABEL_638:
  __break(1u);
LABEL_639:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(uint64_t i, unint64_t a2)
{
  v6 = v2;
  v594 = a2;
  v8 = &v622;
  v713 = *MEMORY[0x1E69E9840];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v694[0] = *(v10 + 24);
    v694[1] = *(v10 + 40);
    v694[2] = *(v10 + 56);
    v5 = v6;
    v11 = *(v10 + 72);
    v12 = *(v10 + 80);
    v13 = i;
    v14 = *(v10 + 88);
    v3 = *(v10 + 96);
    type metadata accessor for AttributedString.Guts();
    v4 = swift_allocObject();
    outlined init with copy of BigString(v694, v637);
    swift_unknownObjectRetain();
    v15 = v12;
    v6 = v5;
    v16 = v14;
    i = v13;
    v17 = AttributedString.Guts.init(string:runs:)(v694, v11, v15, v16, v3);

    *v5 = v17;
    v10 = v17;
    v8 = &v622;
  }

  v18 = v6[1];
  v19 = v6[5];
  v691 = *(v10 + 24);
  v692 = *(v10 + 40);
  v693 = *(v10 + 56);
  v20 = *i;
  v599 = *(i + 8);
  v600 = v20;
  v21 = *(i + 16);
  v596 = *(i + 24);
  v597 = v21;
  v22 = v20 >> 10;
  v23 = *(i + 32);
  v646 = *(i + 40);
  v24 = *(i + 56);
  *&v606 = v22;
  v647 = v24;
  if (v22 >= v18 >> 10 && v19 >> 10 >= v23 >> 10)
  {
    v605 = v23 >> 10;
    v603 = v23;
    v591 = (v6 + 1);
    v592 = v6;
    v593 = 0;
    v695[0] = *(v10 + 24);
    v695[1] = *(v10 + 40);
    v696 = *(v10 + 56);
    outlined init with copy of Rope<BigString._Chunk>._Node?(v695, v637);
    v588 = i;
    BigSubstring.UnicodeScalarView.init(_:in:)();
    LODWORD(v590) = BigSubstring.UnicodeScalarView.isIdentical(to:)();
    outlined destroy of BigSubstring.UnicodeScalarView(v637);
    v25 = *(v10 + 24);
    v26 = *(v10 + 40);
    v690 = *(v10 + 56);
    v689 = v26;
    v688 = v25;
    v27 = *(v10 + 40);
    v607 = *(v10 + 24);
    v608 = v27;
    v28 = *(v10 + 56);
    i = *(v10 + 64);
    v609 = v10;
    if (BigString.isEmpty.getter())
    {
      v595 = MEMORY[0x1E69E7CC8];
      v8 = &v622;
      goto LABEL_39;
    }

    v29 = v600;
    if (v600 >= 0x800)
    {
      v29 = v600;
      if (v606 == v605)
      {
        v685[3] = v607;
        v685[4] = v608;
        v686 = v28;
        v687 = i;
        v697[0] = v688;
        v697[1] = v689;
        v698 = v690;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v697, &v629);
        v29 = BigString.UTF8View.index(before:)();
        outlined destroy of BigString(&v688);
      }
    }

    v30 = *(v10 + 72);
    v3 = *(v10 + 80);
    v4 = v29 >> 11;
    i = *(v10 + 88);
    v8 = *(v10 + 96);
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(v4, 0, v30, v3, i, v8) == v8)
    {
      v33 = v31;
      v5 = v32;
      if (v30)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v8, v31, v32, v30, v3);
        swift_unknownObjectRelease();
      }

      v34 = *(v10 + 72);
      v35 = *(v10 + 80);
      v36 = *(v10 + 88);
      v37 = *(v10 + 96);
      swift_unknownObjectRetain();
      specialized Rope.subscript.getter(v8, v33, v5, v34, v35, v36, v37);
      v4 = v38;
      i = v39;
      swift_unknownObjectRelease();
      v40 = *(v4 + 32);
      LODWORD(v34) = v40 & 0x3F;
      v3 = ((1 << v40) + 63) >> 6;
      v8 = 8 * v3;

      if (v34 <= 0xD)
      {
        goto LABEL_14;
      }

      goto LABEL_561;
    }

    goto LABEL_560;
  }

LABEL_543:
  __break(1u);
LABEL_544:
  __break(1u);
LABEL_545:
  __break(1u);
LABEL_546:
  __break(1u);
LABEL_547:
  __break(1u);
LABEL_548:
  __break(1u);
LABEL_549:
  __break(1u);
LABEL_550:
  __break(1u);
  do
  {
    __break(1u);
LABEL_552:
    __break(1u);
LABEL_553:
    __break(1u);
LABEL_554:
    __break(1u);
LABEL_555:
    __break(1u);
LABEL_556:
    __break(1u);
LABEL_557:
    __break(1u);
LABEL_558:
    __break(1u);
LABEL_559:
    __break(1u);
LABEL_560:
    __break(1u);
LABEL_561:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_574;
    }

LABEL_14:
    v598 = v3;
    v604 = i;
    v602 = &v568;
    MEMORY[0x1EEE9AC00](v41);
    v601 = (&v568 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v601, v8);
    *&v607 = 0;
    v5 = 0;
    *&v608 = v4;
    v42 = v4 + 64;
    v43 = 1 << *(v4 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(v4 + 64);
    v46 = (v43 + 63) >> 6;
    v4 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR;
    do
    {
      do
      {
        while (1)
        {
          if (v45)
          {
            v47 = __clz(__rbit64(v45));
            v45 &= v45 - 1;
          }

          else
          {
            v48 = v5;
            v8 = &v622;
            do
            {
              v5 = v48 + 1;
              if (__OFADD__(v48, 1))
              {
                goto LABEL_463;
              }

              if (v5 >= v46)
              {
                goto LABEL_33;
              }

              v49 = *(v42 + 8 * v5);
              ++v48;
            }

            while (!v49);
            v47 = __clz(__rbit64(v49));
            v45 = (v49 - 1) & v49;
          }

          v8 = v47 | (v5 << 6);
          v50 = (*(v608 + 48) + 16 * v8);
          v52 = *v50;
          v51 = v50[1];
          outlined init with copy of AttributedString._AttributeValue(*(v608 + 56) + 72 * v8, v636);
          *&v629 = v52;
          *(&v629 + 1) = v51;
          outlined init with copy of AttributedString._AttributeValue(v636, &v630);
          outlined init with copy of FloatingPointRoundingRule?(&v629, &v622, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);

          LODWORD(v51) = BYTE8(v626);
          outlined destroy of AttributedString._AttributeValue(&v623);
          if (v51 == 1)
          {
            break;
          }

          outlined destroy of TermOfAddress?(&v629, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
          outlined destroy of AttributedString._AttributeValue(v636);
          v10 = v609;
        }

        outlined init with copy of FloatingPointRoundingRule?(&v629, &v611, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);

        v10 = v609;
        if (!v619)
        {
          outlined destroy of TermOfAddress?(&v629, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
          outlined destroy of AttributedString._AttributeValue(v636);
          outlined destroy of AttributedString._AttributeValue(&v612);
          break;
        }

        v53 = specialized Set.contains(_:)(0, 0, v619);
        outlined destroy of TermOfAddress?(&v629, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
        outlined destroy of AttributedString._AttributeValue(v636);
        outlined destroy of AttributedString._AttributeValue(&v612);
      }

      while ((v53 & 1) != 0);
      *(v601 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      v54 = __OFADD__(v607, 1);
      *&v607 = v607 + 1;
    }

    while (!v54);
    __break(1u);
LABEL_33:
    v55 = v607;
    if (v607)
    {
      v4 = v608;
      if (v607 == *(v608 + 16))
      {

        v595 = v4;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v109 = static _DictionaryStorage.allocate(capacity:)();
        v8 = &v622;
        v3 = 0;
        v5 = *v601;
        v595 = v109;
        i = v109 + 64;
        do
        {
          if (v5)
          {
            v114 = __clz(__rbit64(v5));
            v5 &= v5 - 1;
          }

          else
          {
            v115 = v3;
            do
            {
              v3 = v115 + 1;
              if (__OFADD__(v115, 1))
              {
                goto LABEL_526;
              }

              if (v3 >= v598)
              {
                goto LABEL_36;
              }

              v116 = v601[v3];
              ++v115;
            }

            while (!v116);
            v114 = __clz(__rbit64(v116));
            v5 = (v116 - 1) & v116;
          }

          v117 = v114 | (v3 << 6);
          v118 = (*(v4 + 48) + 16 * v117);
          v119 = *v118;
          v10 = v118[1];
          outlined init with copy of AttributedString._AttributeValue(*(v4 + 56) + 72 * v117, &v629);
          v624 = v631;
          v625 = v632;
          *&v626 = v633;
          v622 = v629;
          v623 = v630;
          v120 = v595;
          Hasher.init(_seed:)();

          String.hash(into:)();
          v121 = Hasher._finalize()();
          v122 = -1 << *(v120 + 32);
          v123 = v121 & ~v122;
          v124 = v123 >> 6;
          if (((-1 << v123) & ~*(i + 8 * (v123 >> 6))) != 0)
          {
            v110 = __clz(__rbit64((-1 << v123) & ~*(i + 8 * (v123 >> 6)))) | v123 & 0x7FFFFFFFFFFFFFC0;
            v8 = &v622;
          }

          else
          {
            v125 = 0;
            v126 = (63 - v122) >> 6;
            v8 = &v622;
            do
            {
              if (++v124 == v126 && (v125 & 1) != 0)
              {
                goto LABEL_532;
              }

              v127 = v124 == v126;
              if (v124 == v126)
              {
                v124 = 0;
              }

              v125 |= v127;
              v128 = *(i + 8 * v124);
            }

            while (v128 == -1);
            v110 = __clz(__rbit64(~v128)) + (v124 << 6);
          }

          *(i + ((v110 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v110;
          v111 = v595;
          v112 = (*(v595 + 48) + 16 * v110);
          *v112 = v119;
          v112[1] = v10;
          v113 = *(v111 + 56) + 72 * v110;
          *(v113 + 16) = v623;
          *(v113 + 32) = v624;
          *(v113 + 48) = v625;
          *(v113 + 64) = v626;
          *v113 = v622;
          ++*(v111 + 16);
          --v55;
          v10 = v609;
        }

        while (v55);
      }

LABEL_36:
      i = v604;
    }

    else
    {
      v595 = MEMORY[0x1E69E7CC8];
      i = v604;
      v4 = v608;
    }

LABEL_38:

    swift_bridgeObjectRelease_n();
LABEL_39:
    *&v608 = v600 >> 11;
    v636[0] = v600 >> 11;
    *&v679[0] = v603 >> 11;
    v598 = v603 >> 11;
    if (v603 < 0x800)
    {
      v602 = MEMORY[0x1E69E7CD0];
      v604 = MEMORY[0x1E69E7CC8];
      goto LABEL_66;
    }

    v3 = (v603 >> 11) - 1;
    v56 = *(v10 + 72);
    i = *(v10 + 80);
    v5 = *(v10 + 88);
    v57 = *(v10 + 96);
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(v3, 0, v56, i, v5, v57) == v57)
    {
      v3 = v58;
      v4 = v59;
      if (v56)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v57, v58, v59, v56, i);
        swift_unknownObjectRelease();
      }

      v60 = *(v10 + 72);
      v61 = *(v10 + 80);
      v62 = *(v10 + 88);
      v63 = *(v10 + 96);
      swift_unknownObjectRetain();
      specialized Rope.subscript.getter(v57, v3, v4, v60, v61, v62, v63);
      v5 = v64;
      v602 = v65;
      swift_unknownObjectRelease();
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation16AttributedStringV15_AttributeValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

      v67 = *(v5 + 32);
      i = ((1 << v67) + 63) >> 6;
      if ((v67 & 0x3Fu) <= 0xD)
      {
        goto LABEL_45;
      }
    }

    else
    {
      __break(1u);
    }

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_45:
      v586 = i;
      v587 = &v568;
      MEMORY[0x1EEE9AC00](v66);
      v589 = (&v568 - ((v68 + 15) & 0x3FFFFFFFFFFFFFF0));
      bzero(v589, v68);
      v601 = 0;
      v69 = 0;
      v70 = v5 + 64;
      v71 = 1 << *(v5 + 32);
      v72 = -1;
      if (v71 < 64)
      {
        v72 = ~(-1 << v71);
      }

      v8 = v72 & *(v5 + 64);
      v10 = (v71 + 63) >> 6;
      *&v607 = v5;
      while (v8)
      {
        v73 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_56:
        v4 = v73 | (v69 << 6);
        v76 = (*(v5 + 48) + 16 * v4);
        v77 = *v76;
        v3 = v76[1];
        outlined init with copy of AttributedString._AttributeValue(*(v5 + 56) + 72 * v4, &v611);
        *&v629 = v77;
        *(&v629 + 1) = v3;
        outlined init with copy of AttributedString._AttributeValue(&v611, &v630);
        outlined init with copy of FloatingPointRoundingRule?(&v629, &v622, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
        swift_bridgeObjectRetain_n();

        if (v627)
        {
          v78 = specialized Set.contains(_:)(0, 0, v627);
          outlined destroy of TermOfAddress?(&v629, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
          outlined destroy of AttributedString._AttributeValue(&v623);
          outlined destroy of AttributedString._AttributeValue(&v611);

          v5 = v607;
          if (v78)
          {
            *(v589 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
            v54 = __OFADD__(v601, 1);
            v601 = (v601 + 1);
            if (v54)
            {
              __break(1u);
              goto LABEL_61;
            }
          }
        }

        else
        {
          outlined destroy of TermOfAddress?(&v629, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
          outlined destroy of AttributedString._AttributeValue(&v623);
          outlined destroy of AttributedString._AttributeValue(&v611);

          v5 = v607;
        }
      }

      v74 = v69;
      v8 = &v622;
      while (1)
      {
        v69 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          goto LABEL_464;
        }

        if (v69 >= v10)
        {
          break;
        }

        v75 = *(v70 + 8 * v69);
        ++v74;
        if (v75)
        {
          v73 = __clz(__rbit64(v75));
          v8 = (v75 - 1) & v75;
          goto LABEL_56;
        }
      }

LABEL_61:
      i = v601;
      if (v601)
      {
        v10 = v609;
        if (v601 == *(v5 + 16))
        {

          v604 = v5;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v129 = static _DictionaryStorage.allocate(capacity:)();
          v8 = &v622;
          v130 = 0;
          v131 = v589;
          v132 = *v589;
          v604 = v129;
          i = v129 + 64;
          do
          {
            if (v132)
            {
              v137 = __clz(__rbit64(v132));
              v132 &= v132 - 1;
            }

            else
            {
              v138 = v130;
              do
              {
                v130 = v138 + 1;
                if (__OFADD__(v138, 1))
                {
                  goto LABEL_527;
                }

                if (v130 >= v586)
                {
                  goto LABEL_65;
                }

                v139 = v131[v130];
                ++v138;
              }

              while (!v139);
              v137 = __clz(__rbit64(v139));
              v132 = (v139 - 1) & v139;
            }

            v140 = v137 | (v130 << 6);
            v141 = (*(v5 + 48) + 16 * v140);
            v3 = *v141;
            v4 = v141[1];
            outlined init with copy of AttributedString._AttributeValue(*(v5 + 56) + 72 * v140, &v629);
            v624 = v631;
            v625 = v632;
            *&v626 = v633;
            v622 = v629;
            v623 = v630;
            v142 = v604;
            Hasher.init(_seed:)();

            String.hash(into:)();
            v143 = Hasher._finalize()();
            v144 = -1 << *(v142 + 32);
            v145 = v143 & ~v144;
            v146 = v145 >> 6;
            if (((-1 << v145) & ~*(i + 8 * (v145 >> 6))) != 0)
            {
              v133 = __clz(__rbit64((-1 << v145) & ~*(i + 8 * (v145 >> 6)))) | v145 & 0x7FFFFFFFFFFFFFC0;
              v8 = &v622;
              v131 = v589;
            }

            else
            {
              v147 = 0;
              v148 = (63 - v144) >> 6;
              v8 = &v622;
              v131 = v589;
              do
              {
                if (++v146 == v148 && (v147 & 1) != 0)
                {
                  goto LABEL_533;
                }

                v149 = v146 == v148;
                if (v146 == v148)
                {
                  v146 = 0;
                }

                v147 |= v149;
                v150 = *(i + 8 * v146);
              }

              while (v150 == -1);
              v133 = __clz(__rbit64(~v150)) + (v146 << 6);
            }

            *(i + ((v133 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v133;
            v134 = v604;
            v135 = (*(v604 + 48) + 16 * v133);
            *v135 = v3;
            v135[1] = v4;
            v136 = *(v134 + 56) + 72 * v133;
            *(v136 + 16) = v623;
            *(v136 + 32) = v624;
            *(v136 + 48) = v625;
            *(v136 + 64) = v626;
            *v136 = v622;
            ++*(v134 + 16);
            v601 = (v601 - 1);
          }

          while (v601);
        }
      }

      else
      {
        v604 = MEMORY[0x1E69E7CC8];
        v10 = v609;
      }

LABEL_65:
    }

    else
    {
      v382 = swift_slowAlloc();

      v566 = v593;
      _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v382, i, v5, specialized thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed AttributedString._AttributeValue) -> (@unowned Bool, @error @owned Error));
      v604 = v567;
      v593 = v566;
      if (v566)
      {
        goto LABEL_593;
      }

      MEMORY[0x1865D2690](v382, -1, -1);

      v8 = &v622;
    }

LABEL_66:
    *(v8 + 1856) = *(v10 + 24);
    *(v8 + 1872) = *(v10 + 40);
    *(v8 + 1888) = *(v10 + 56);
    v8 = v685;
    v79 = BigString.UTF8View.count.getter();
    v3 = v608;
    if (v608 >= v79)
    {
      goto LABEL_153;
    }

    v80 = *(v10 + 72);
    i = *(v10 + 80);
    v5 = *(v10 + 88);
    v81 = *(v10 + 96);
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(v3, 0, v80, i, v5, v81) != v81)
    {
      __break(1u);
LABEL_567:
      __break(1u);
LABEL_568:
      __break(1u);
      goto LABEL_569;
    }

    v84 = v82;
    v85 = v83;
    if (v80)
    {
      specialized Rope._Node.distanceFromStart<A>(to:in:)(v81, v82, v83, v80, i);
      swift_unknownObjectRelease();
    }

    v86 = *(v10 + 72);
    v87 = *(v10 + 80);
    v88 = *(v10 + 88);
    v89 = *(v10 + 96);
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v81, v84, v85, v86, v87, v88, v89);
    v601 = v90;
    swift_unknownObjectRelease();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation16AttributedStringV15_AttributeValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    v92 = v593;
    i = specialized Dictionary.filter(_:)(v91);
    v593 = v92;

    swift_bridgeObjectRelease_n();
    v4 = 0;
    *&v622 = MEMORY[0x1865CB700](*(i + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    *&v607 = i;
    v93 = 1 << *(i + 32);
    v94 = -1;
    if (v93 < 64)
    {
      v94 = ~(-1 << v93);
    }

    v95 = i + 64;
    v96 = v94 & *(i + 64);
    v5 = (v93 + 63) >> 6;
    if (v96)
    {
      while (1)
      {
        v97 = v4;
LABEL_78:
        v98 = __clz(__rbit64(v96));
        v96 &= v96 - 1;
        v99 = (*(v607 + 48) + ((v97 << 10) | (16 * v98)));
        v100 = *v99;
        i = v99[1];

        specialized Set._Variant.insert(_:)(&v629, v100, i);

        if (!v96)
        {
          goto LABEL_74;
        }
      }
    }

    while (1)
    {
LABEL_74:
      v97 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_465;
      }

      if (v97 >= v5)
      {
        break;
      }

      v96 = *(v95 + 8 * v97);
      ++v4;
      if (v96)
      {
        v4 = v97;
        goto LABEL_78;
      }
    }

    *&v611 = v622;
    v102 = *(v10 + 72);
    v101 = *(v10 + 80);
    v8 = *(v10 + 88);
    v103 = *(v10 + 96);
    swift_unknownObjectRetain();

    if (v600 <= 0x7FF)
    {
      if (specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v102, v101, v8, v103) == v103)
      {
        v107 = v104;
        v108 = v105;
        i = v106;
        if (v102)
        {
          v101 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v103, v104, v105, v102, v101);
          swift_unknownObjectRelease();
          v8 = -i;
          if (!__OFSUB__(0, i))
          {
            goto LABEL_128;
          }
        }

        else
        {
          v101 = 0;
          v8 = -v106;
          if (!__OFSUB__(0, v106))
          {
            goto LABEL_128;
          }
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_580:
      __break(1u);
LABEL_581:
      __break(1u);
      goto LABEL_582;
    }

    v107 = specialized Rope._endPath.getter(v102);
    if (v102)
    {
      swift_unknownObjectRelease();
      v108 = 0;
    }

    else
    {
      v108 = 0;
      v101 = 0;
      v8 = 0;
    }

LABEL_128:
    *&v629 = v103;
    *(&v629 + 1) = v107;
    *&v630 = v108;
    *(&v630 + 1) = v101;
    *&v631 = v8;
    v151 = *(v10 + 72);
    v3 = *(v10 + 80);
    v4 = *(v10 + 88);
    v152 = *(v10 + 96);
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v151, v3, v4, v152) != v152)
    {
      goto LABEL_467;
    }

    v156 = v155;
    while (2)
    {
      if (v151)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v152, v153, v154, v151, v3);
        swift_unknownObjectRelease();
      }

      if (__OFSUB__(0, v156))
      {
        goto LABEL_519;
      }

      if (-v156 < v8 && *(v611 + 16))
      {
        v3 = *(v10 + 72);
        if (v3)
        {
          if (v8 == *(v10 + 88))
          {
LABEL_139:
            v8 = *(v10 + 80);
            i = *(v10 + 88);
            v162 = *(v10 + 96);
            swift_unknownObjectRetain();
            if (specialized Rope.find<A>(at:in:preferEnd:)(v608, 1, v3, v8, i, v162) != v162)
            {
              goto LABEL_535;
            }

            v166 = v163;
            v167 = v164;
            v5 = v165;
            if (v3)
            {
              v4 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v162, v163, v164, v3, v8);
              swift_unknownObjectRelease();
            }

            else
            {
              v4 = 0;
            }

            v157 = v608 - v5;
            if (__OFSUB__(v608, v5))
            {
              __break(1u);
              break;
            }

            goto LABEL_131;
          }
        }

        else if (!v8)
        {
          goto LABEL_139;
        }

        v168 = v10;
        v5 = *(v10 + 80);
        v10 = *(v10 + 88);
        v162 = *(v168 + 96);
        v622 = v629;
        *&v623 = v630;
        v4 = *(&v630 + 1) - 1;
        if (__OFSUB__(*(&v630 + 1), 1))
        {
          goto LABEL_528;
        }

        swift_unknownObjectRetain();
        specialized Rope.formIndex(before:)(&v622, v3, v5, v10, v162);
        if (v622 != v162)
        {
          goto LABEL_529;
        }

        v166 = *(&v622 + 1);
        v167 = v623;
        if (v623)
        {
          i = *(v623 + 24 * ((*(&v622 + 1) >> ((4 * *(v623 + 18) + 8) & 0x3C)) & 0xFLL) + 24);

          swift_unknownObjectRelease();
          v157 = v8 - i;
          v10 = v609;
          if (__OFSUB__(v8, i))
          {
            goto LABEL_536;
          }
        }

        else
        {
          i = specialized Rope._Node.subscript.getter(*(&v622 + 1), v3);
          v5 = v169;
          swift_unknownObjectRelease();

          v157 = v8 - i;
          if (__OFSUB__(v8, i))
          {
            goto LABEL_542;
          }

          v167 = 0;
          v10 = v609;
        }

LABEL_131:
        *&v629 = v162;
        *(&v629 + 1) = v166;
        *&v630 = v167;
        *(&v630 + 1) = v4;
        *&v631 = v157;
        v158 = v607;

        v159 = v601;

        specialized AttributedString.Guts.updateRun(at:within:with:)(&v629, 0, v608, v10, &v611, v158, v159, v636);

        v8 = v631;
        v151 = *(v10 + 72);
        v3 = *(v10 + 80);
        v4 = *(v10 + 88);
        v152 = *(v10 + 96);
        swift_unknownObjectRetain();
        v160 = specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v151, v3, v4, v152);
        v156 = v161;
        if (v160 != v152)
        {
          goto LABEL_467;
        }

        continue;
      }

      break;
    }

LABEL_153:
    if (v603 < 0x800)
    {

      goto LABEL_204;
    }

    v170 = v604;
    v171 = *(v604 + 16);

    v4 = 0;
    *&v622 = MEMORY[0x1865CB700](v171, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    v173 = *(v170 + 64);
    v3 = v170 + 64;
    v172 = v173;
    v174 = 1 << *(v3 - 32);
    v175 = -1;
    if (v174 < 64)
    {
      v175 = ~(-1 << v174);
    }

    v176 = v175 & v172;
    v5 = (v174 + 63) >> 6;
    if ((v175 & v172) != 0)
    {
      while (1)
      {
        v177 = v4;
LABEL_163:
        v178 = __clz(__rbit64(v176));
        v176 &= v176 - 1;
        v179 = (*(v604 + 48) + ((v177 << 10) | (16 * v178)));
        v180 = *v179;
        i = v179[1];

        specialized Set._Variant.insert(_:)(&v629, v180, i);

        if (!v176)
        {
          goto LABEL_159;
        }
      }
    }

    while (1)
    {
LABEL_159:
      v177 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_466;
      }

      if (v177 >= v5)
      {
        break;
      }

      v176 = *(v3 + 8 * v177);
      ++v4;
      if (v176)
      {
        v4 = v177;
        goto LABEL_163;
      }
    }

    *&v611 = v622;
    v682 = *(v10 + 24);
    v683 = *(v10 + 40);
    v684 = *(v10 + 56);
    *&v607 = BigString.UTF8View.count.getter();
    v8 = v598;
    if (v607 < v598)
    {
      goto LABEL_567;
    }

    v3 = *(v10 + 72);
    v181 = *(v10 + 80);
    v183 = *(v10 + 88);
    v182 = *(v10 + 96);
    swift_unknownObjectRetain();

    if (specialized Rope.find<A>(at:in:preferEnd:)(v8, 0, v3, v181, v183, v182) != v182)
    {
      goto LABEL_568;
    }

    v4 = v184;
    v5 = v185;
    i = v186;
    if (v3)
    {
      v187 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v182, v184, v185, v3, v181);
      swift_unknownObjectRelease();
      v188 = v8 - i;
      if (!__OFSUB__(v8, i))
      {
        goto LABEL_169;
      }

LABEL_281:
      __break(1u);
LABEL_282:
      v597 = 0;
      goto LABEL_283;
    }

    v187 = 0;
    v188 = v8 - v186;
    if (__OFSUB__(v8, v186))
    {
      goto LABEL_281;
    }

LABEL_169:
    *&v629 = v182;
    *(&v629 + 1) = v4;
    *&v630 = v5;
    *(&v630 + 1) = v187;
    while (2)
    {
      *&v631 = v188;
      v189 = *(v10 + 72);
      if (v8 == v607)
      {
        i = *(v10 + 80);
        v3 = *(v10 + 88);
        v4 = *(v10 + 96);
        swift_unknownObjectRetain();
        if (specialized Rope.find<A>(at:in:preferEnd:)(v8, 0, v189, i, v3, v4) != v4)
        {
          goto LABEL_530;
        }

        v5 = v192;
        if (v189)
        {
          specialized Rope._Node.distanceFromStart<A>(to:in:)(v4, v190, v191, v189, i);
          swift_unknownObjectRelease();
        }

        if (__OFSUB__(v8, v5))
        {
          goto LABEL_531;
        }

        if (v188 >= v8 - v5)
        {
          goto LABEL_203;
        }
      }

      else if (v189)
      {
        if (v188 >= *(v10 + 88))
        {
          goto LABEL_203;
        }
      }

      else if (v188 >= 0)
      {
        goto LABEL_203;
      }

      if (!*(v611 + 16))
      {
        goto LABEL_203;
      }

      i = v604;

      v193 = v602;

      specialized AttributedString.Guts.updateRun(at:within:with:)(&v629, v8, v607, v10, &v611, i, v193, v679);

      v194 = *(&v629 + 1);
      v3 = v629;
      v8 = v631;
      v4 = *(v10 + 72);
      v5 = *(v10 + 80);
      v196 = *(v10 + 88);
      v195 = *(v10 + 96);
      v622 = v629;
      *&v623 = v630;
      v197 = *(&v630 + 1) + 1;
      if (__OFADD__(*(&v630 + 1), 1))
      {
        goto LABEL_520;
      }

      if (v629 != v195)
      {
LABEL_521:
        __break(1u);
LABEL_522:
        __break(1u);
LABEL_523:
        __break(1u);
LABEL_524:
        __break(1u);
LABEL_525:
        __break(1u);
LABEL_526:
        __break(1u);
LABEL_527:
        __break(1u);
LABEL_528:
        __break(1u);
LABEL_529:
        __break(1u);
LABEL_530:
        __break(1u);
LABEL_531:
        __break(1u);
LABEL_532:
        __break(1u);
LABEL_533:
        __break(1u);
LABEL_534:
        __break(1u);
LABEL_535:
        __break(1u);
LABEL_536:
        __break(1u);
LABEL_537:
        __break(1u);
LABEL_538:
        __break(1u);
LABEL_539:
        __break(1u);
LABEL_540:
        __break(1u);
LABEL_541:
        __break(1u);
LABEL_542:
        __break(1u);
        goto LABEL_543;
      }

      if (v630)
      {
        v198 = (v630 + 24 * ((*(&v629 + 1) >> ((4 * *(v630 + 18) + 8) & 0x3C)) & 0xFLL));
        v199 = v198[3];
        i = v198[4];
        v10 = v198[5];
        swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v199 = specialized Rope._Node.subscript.getter(v194, v4);
        i = v200;
        v10 = v201;
      }

      v54 = __OFADD__(v8, v199);
      v188 = v8 + v199;
      if (v54)
      {
        goto LABEL_522;
      }

      specialized Rope.formIndex(after:)(&v622, v4, v5, v196, v3);
      swift_unknownObjectRelease();
      if (v188 < v607)
      {
        v5 = *(&v622 + 1);
        v3 = v622;
        v4 = v623;
        v10 = v609;
        v8 = v598;
        goto LABEL_171;
      }

      v10 = v609;
      v202 = v609[9];
      v8 = v598;
      if (v598 != v607)
      {
        v3 = v609[12];
        if (v202)
        {
          v4 = 0;
          v197 = v609[10];
          v188 = v609[11];
          v5 = ((-15 << ((4 * *(v202 + 18) + 8) & 0x3C)) - 1) & *(v202 + 18) | (*(v202 + 16) << ((4 * *(v202 + 18) + 8) & 0x3C));
        }

        else
        {
          v5 = 0;
          v4 = 0;
          v197 = 0;
          v188 = 0;
        }

        goto LABEL_171;
      }

      v203 = v609[10];
      i = v609[11];
      v3 = v609[12];
      swift_unknownObjectRetain();
      if (specialized Rope.find<A>(at:in:preferEnd:)(v8, 0, v202, v203, i, v3) != v3)
      {
        goto LABEL_541;
      }

      v5 = v204;
      v4 = v205;
      v207 = v206;
      if (v202)
      {
        v197 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v3, v204, v205, v202, v203);
        swift_unknownObjectRelease();
        v54 = __OFSUB__(v8, v207);
        v188 = v8 - v207;
        if (v54)
        {
          break;
        }

        goto LABEL_171;
      }

      v197 = 0;
      v188 = v8 - v206;
      if (!__OFSUB__(v8, v206))
      {
LABEL_171:
        *&v629 = v3;
        *(&v629 + 1) = v5;
        *&v630 = v4;
        *(&v630 + 1) = v197;
        continue;
      }

      break;
    }

    __break(1u);
LABEL_203:

LABEL_204:

    if (*&v679[0] < v636[0])
    {
      goto LABEL_544;
    }

    v589 = *&v679[0];
    v583 = v636[0];
    v208 = *(v10 + 104);
    v209 = specialized Array.count.getter(v208);
    if (v209 < 0)
    {
      goto LABEL_545;
    }

    v8 = v209;
    if (v209)
    {
      i = 0;
      v3 = 88;
      v210 = v605;
      while (1)
      {
        if (i >= *(v208 + 2))
        {
          goto LABEL_460;
        }

        v5 = *&v208[v3 - 56];
        v216 = v606 >= v5 >> 10 || v5 >> 10 >= v210;
        v217 = !v216;
        v4 = *&v208[v3 - 24];
        v218 = v4 >> 10;
        if (v606 >= v4 >> 10)
        {
          break;
        }

        if (v217)
        {
          if (v218 < v210)
          {
            v219 = swift_isUniquelyReferenced_nonNull_native();
            *(v10 + 104) = v208;
            if ((v219 & 1) == 0)
            {
              v208 = specialized _ArrayBuffer._consumeAndCreateNew()(v208);
            }

            if (i >= *(v208 + 2))
            {
              goto LABEL_539;
            }

            v211 = &v208[v3];
            v213 = v599;
            v212 = v600;
            *(v211 - 7) = v600;
            *(v211 - 6) = v213;
            v215 = v596;
            v214 = v597;
            *(v211 - 5) = v597;
            *(v211 - 4) = v215;
            *(v211 - 3) = v212;
            *(v211 - 2) = v213;
            *(v211 - 1) = v214;
            *v211 = v215;
            *(v10 + 104) = v208;
            v210 = v605;
            goto LABEL_209;
          }

          goto LABEL_225;
        }

        if (v218 < v210)
        {
          v4 = *&v208[v3 - 48];
          v225 = *&v208[v3 - 40];
          v226 = *&v208[v3 - 32];
          v227 = swift_isUniquelyReferenced_nonNull_native();
          *(v10 + 104) = v208;
          if ((v227 & 1) == 0)
          {
            v208 = specialized _ArrayBuffer._consumeAndCreateNew()(v208);
          }

          v210 = v605;
          if (i >= *(v208 + 2))
          {
            goto LABEL_540;
          }

          v228 = &v208[v3];
          *(v228 - 7) = v5;
          *(v228 - 6) = v4;
          *(v228 - 5) = v225;
          *(v228 - 4) = v226;
          v229 = v599;
          *(v228 - 3) = v600;
          *(v228 - 2) = v229;
          v230 = v596;
          *(v228 - 1) = v597;
          *v228 = v230;
          *(v10 + 104) = v208;
        }

LABEL_209:
        ++i;
        v3 += 64;
        if (v8 == i)
        {
          goto LABEL_234;
        }
      }

      if (!v217)
      {
        goto LABEL_209;
      }

LABEL_225:
      v5 = *&v208[v3 - 16];
      v220 = *&v208[v3 - 8];
      v221 = *&v208[v3];
      v629 = v646;
      *&v630 = v647;
      v222 = swift_isUniquelyReferenced_nonNull_native();
      *(v10 + 104) = v208;
      if ((v222 & 1) == 0)
      {
        v208 = specialized _ArrayBuffer._consumeAndCreateNew()(v208);
      }

      v210 = v605;
      if (i >= *(v208 + 2))
      {
        goto LABEL_523;
      }

      v223 = &v208[v3];
      *(v223 - 7) = v603;
      v224 = v630;
      *(v223 - 3) = v629;
      *(v223 - 4) = v224;
      *(v223 - 3) = v4;
      *(v223 - 2) = v5;
      *(v223 - 1) = v220;
      *v223 = v221;
      v10 = v609;
      v609[13] = v208;
      goto LABEL_209;
    }

LABEL_234:
    v231 = *(v10 + 40);
    v606 = *(v10 + 24);
    v607 = v231;
    i = *(v10 + 56);
    v4 = *(v10 + 64);
    v3 = v606;
    v679[0] = v606;
    v679[1] = v231;
    v680 = i;
    v681 = v4;
    v232 = BigString.UTF8View.count.getter();
    v233 = *(v591 + 1);
    v632 = *v591;
    v633 = v233;
    v234 = *(v591 + 3);
    v634 = *(v591 + 2);
    v635 = v234;
    v629 = v606;
    v630 = v607;
    *&v631 = i;
    *(&v631 + 1) = v4;
    swift_unknownObjectRetain();
    BigString.init()();
    v235 = v637[8];
    *(v10 + 24) = v637[7];
    *(v10 + 40) = v235;
    *(v10 + 56) = v637[9];
    swift_unknownObjectRelease();
    if (v590)
    {
      v5 = &v622;
      v237 = v606;
      v236 = v607;
    }

    else
    {
      v238 = *(v594 + 80);
      v626 = *(v594 + 64);
      v627 = v238;
      v628 = *(v594 + 96);
      v239 = *(v594 + 16);
      v622 = *v594;
      v623 = v239;
      v240 = *(v594 + 48);
      v624 = *(v594 + 32);
      v625 = v240;
      outlined init with copy of BigSubstring.UnicodeScalarView(v594, &v611);
      lazy protocol witness table accessor for type BigSubstring.UnicodeScalarView and conformance BigSubstring.UnicodeScalarView();
      v5 = &v622;
      BigSubstring.UnicodeScalarView.replaceSubrange<A>(_:with:)();
      v237 = v629;
      v236 = v630;
      v4 = *(&v631 + 1);
      i = v631;
      v3 = v629;
    }

    *(v10 + 40) = v236;
    *(v10 + 24) = v237;
    *(v10 + 56) = i;
    *(v10 + 64) = v4;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v241 = v633;
    v242 = v592;
    *(v592 + 8) = v632;
    *(v242 + 24) = v241;
    v243 = v635;
    *(v242 + 40) = v634;
    *(v242 + 56) = v243;
    v678[0] = *(v10 + 24);
    v678[1] = *(v10 + 40);
    v678[2] = *(v10 + 56);
    v8 = v678;
    v244 = BigString.UTF8View.count.getter();
    v245 = v244 - v232;
    if (__OFSUB__(v244, v232))
    {
      goto LABEL_546;
    }

    if (__OFADD__(v598 - v608, v245))
    {
      goto LABEL_547;
    }

    i = MEMORY[0x1E69E7CD0];
    v3 = v595;
    specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v608, v598, v598 - v608 + v245, v595, MEMORY[0x1E69E7CD0]);

    v677[0] = *(v10 + 24);
    v677[1] = *(v10 + 40);
    v677[2] = *(v10 + 56);
    v8 = v677;
    v246 = BigString.UTF8View.count.getter();
    v247 = v246 - v232;
    if (__OFSUB__(v246, v232))
    {
      goto LABEL_548;
    }

    v8 = *(v10 + 104);
    v248 = specialized Array.count.getter(v8);
    if (v248 < 0)
    {
      goto LABEL_549;
    }

    if (v248)
    {
      v249 = 0;
      v250 = 88;
      v251 = v608;
      v601 = v247;
      v597 = v248;
      do
      {
        if (v249 >= *(v8 + 16))
        {
          goto LABEL_461;
        }

        v604 = v250;
        v605 = v249;
        v252 = *(v8 + v250 - 56);
        v4 = *(v8 + v250 - 48);
        v5 = *(v8 + v250 - 40);
        v603 = *(v8 + v250 - 24);
        v253 = *(v8 + v250 - 16);
        v599 = *(v8 + v250 - 8);
        v600 = v253;
        *&v606 = *(v8 + v250);
        v254 = v252 >> 11;
        if (v251 >= v252 >> 11)
        {
          v3 = v601;
          if (v598 != v251 || (v254 == v251 ? (v255 = v601 == 0) : (v255 = 1), v255))
          {
LABEL_254:
            v668 = *(v10 + 24);
            v669 = *(v10 + 40);
            v670 = *(v10 + 56);
            i = v668;
            swift_unknownObjectRetain();
            v258 = BigString.UTF8View.index(_:offsetBy:)();
            v5 = v263;
            v261 = v264;
            v8 = v265;
            swift_unknownObjectRelease();
            v247 = v3;
            goto LABEL_255;
          }
        }

        else
        {
          v3 = v601;
          if (!v601)
          {
            goto LABEL_254;
          }
        }

        v256 = *(v10 + 24);
        v675 = *(v10 + 40);
        v676 = *(v10 + 56);
        v674 = v256;
        v671 = *(v10 + 24);
        v672 = *(v10 + 40);
        v673 = *(v10 + 56);
        v10 = &v622;
        v8 = &v674;
        BigString.startIndex.getter();
        if (__OFADD__(v254, v3))
        {
          __break(1u);
LABEL_512:
          __break(1u);
LABEL_513:
          __break(1u);
LABEL_514:
          __break(1u);
LABEL_515:
          __break(1u);
LABEL_516:
          __break(1u);
LABEL_517:
          __break(1u);
LABEL_518:
          __break(1u);
LABEL_519:
          __break(1u);
LABEL_520:
          __break(1u);
          goto LABEL_521;
        }

        i = v257;
        v247 = v3;
        v699[0] = v674;
        v699[1] = v675;
        v700 = v676;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v699, &v622);
        v258 = BigString.UTF8View.index(_:offsetBy:)();
        v5 = v259;
        v261 = v260;
        v8 = v262;
        outlined destroy of BigString(&v674);
        v10 = v609;
LABEL_255:
        v3 = v603;
        v4 = v603 >> 11;
        *&v607 = v8;
        if (v608 >= v603 >> 11)
        {
          v270 = *(v10 + 104);
          if (v605 >= *(v270 + 16))
          {
            goto LABEL_518;
          }

          if ((*(v270 + v604 - 56) ^ v258) >= 0x400 && v247 != 0)
          {
LABEL_257:
            v602 = v261;
            v266 = *(v10 + 24);
            v666 = *(v10 + 40);
            v667 = *(v10 + 56);
            v665 = v266;
            v664[6] = *(v10 + 24);
            v664[7] = *(v10 + 40);
            v664[8] = *(v10 + 56);
            v8 = &v665;
            BigString.startIndex.getter();
            v54 = __OFADD__(v4, v247);
            v4 += v247;
            if (v54)
            {
              goto LABEL_512;
            }

            v701[0] = v665;
            v701[1] = v666;
            v702 = v667;
            outlined init with copy of Rope<BigString._Chunk>._Node?(v701, &v622);
            v3 = BigString.UTF8View.index(_:offsetBy:)();
            i = v267;
            v4 = v268;
            *&v606 = v269;
            outlined destroy of BigString(&v665);
            v10 = v609;
            v247 = v601;
            goto LABEL_266;
          }
        }

        else if (v247)
        {
          goto LABEL_257;
        }

        v664[3] = *(v10 + 24);
        v664[4] = *(v10 + 40);
        v664[5] = *(v10 + 56);
        swift_unknownObjectRetain();
        v258 = BigString.UTF8View.index(_:offsetBy:)();
        v5 = v272;
        v602 = v273;
        *&v607 = v274;
        swift_unknownObjectRelease();
        v4 = v599;
        i = v600;
LABEL_266:
        v8 = *(v10 + 104);
        v275 = swift_isUniquelyReferenced_nonNull_native();
        *(v10 + 104) = v8;
        v276 = v605;
        if ((v275 & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        v251 = v608;
        v277 = v604;
        if (v276 >= *(v8 + 16))
        {
          goto LABEL_462;
        }

        v249 = v276 + 1;
        v278 = (v8 + v604);
        *(v278 - 7) = v258;
        *(v278 - 6) = v5;
        *(v278 - 5) = v602;
        *(v278 - 4) = v607;
        *(v278 - 3) = v3;
        *(v278 - 2) = i;
        *(v278 - 1) = v4;
        *v278 = v606;
        v250 = v277 + 64;
        *(v10 + 104) = v8;
      }

      while (v597 != v249);
    }

    if (__OFADD__(v589, v247))
    {
      goto LABEL_550;
    }
  }

  while (v589 + v247 < v583);
  v579 = v589 + v247;
  v279 = *(v10 + 80);
  v280 = *(v10 + 88);
  v281 = swift_unknownObjectRetain();
  LOBYTE(v279) = specialized Collection.isEmpty.getter(v281, v279, v280);
  swift_unknownObjectRelease();
  if (v279)
  {
    goto LABEL_273;
  }

  v283 = *(v10 + 24);
  v664[1] = *(v10 + 40);
  v664[2] = *(v10 + 56);
  v664[0] = v283;
  v663[21] = *(v10 + 24);
  v663[22] = *(v10 + 40);
  v663[23] = *(v10 + 56);
  v284 = *(v10 + 24);
  v703[1] = *(v10 + 40);
  v704 = *(v10 + 56);
  v703[0] = v284;
  BigString.startIndex.getter();
  i = v285;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v703, &v622);
  v286 = v583;
  v4 = BigString.UTF8View.index(_:offsetBy:)();
  v288 = v287;
  v5 = v289;
  v3 = v290;
  outlined destroy of BigString(v664);
  v663[18] = *(v10 + 24);
  v663[19] = *(v10 + 40);
  v663[20] = *(v10 + 56);
  if (__OFSUB__(v579, v286))
  {
LABEL_569:
    __break(1u);
    goto LABEL_570;
  }

  swift_unknownObjectRetain();
  v291 = BigString.UTF8View.index(_:offsetBy:)();
  v575 = v292;
  v576 = v291;
  v573 = v294;
  v574 = v293;
  swift_unknownObjectRelease();
  v578 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySnySiGGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v663[15] = *(v10 + 24);
  v663[16] = *(v10 + 40);
  v663[17] = *(v10 + 56);
  swift_unknownObjectRetain();
  v571 = v5;
  v572 = v4;
  v584 = v288;
  v570 = v3;
  v5 = BigString.UnicodeScalarView.index(roundingDown:)();
  v3 = v295;
  v4 = v296;
  v298 = v297;
  swift_unknownObjectRelease();
  v663[12] = *(v10 + 24);
  v663[13] = *(v10 + 40);
  v663[14] = *(v10 + 56);
  swift_unknownObjectRetain();
  v299 = BigString.UnicodeScalarView.index(roundingUp:)();
  swift_unknownObjectRelease();
  i = v5 >> 11;
  if (v299 >> 11 < v5 >> 11)
  {
LABEL_570:
    __break(1u);
    goto LABEL_571;
  }

  v591 = v3;
  v592 = v299 >> 11;
  v188 = v298;
  v590 = v4;
  v300 = *(v10 + 72);
  v301 = *(v10 + 80);
  v3 = *(v10 + 88);
  v302 = *(v10 + 96);
  swift_unknownObjectRetain();
  swift_retain_n();
  v585 = v5 >> 11;
  v303 = specialized Rope.find<A>(at:in:preferEnd:)(v5 >> 11, 0, v300, v301, v3, v302);
  v600 = v302;
  if (v303 != v302)
  {
LABEL_571:
    __break(1u);
LABEL_572:
    __break(1u);
LABEL_573:
    __break(1u);
LABEL_574:
    v382 = swift_slowAlloc();

    v564 = v593;
    _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v382, v3, v4, closure #1 in AttributedString._AttributeStorage.attributesForAddedText());
    v595 = v565;
    v593 = v564;
    if (!v564)
    {

      MEMORY[0x1865D2690](v382, -1, -1);
      v8 = &v622;
      goto LABEL_38;
    }

    goto LABEL_593;
  }

  v4 = v306;
  v598 = v305;
  v599 = v304;
  if (!v300)
  {
    goto LABEL_282;
  }

  v597 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v600, v304, v305, v300, v301);
  swift_unknownObjectRelease();
LABEL_283:
  v307 = v188;

  i = v585 - v4;
  if (__OFSUB__(v585, v4))
  {
    goto LABEL_572;
  }

  v4 = v585;
  v582 = v578;
LABEL_285:
  v594 = v5;
  v595 = v307;
  v601 = v591;
  v596 = v590;
  while (1)
  {
    v308 = *(v10 + 72);
    v3 = *(v10 + 80);
    v8 = *(v10 + 88);
    v5 = *(v10 + 96);
    swift_unknownObjectRetain();
    v603 = i;
    if (v4 != v592)
    {
      break;
    }

    if (specialized Rope.find<A>(at:in:preferEnd:)(v4, 0, v308, v3, v8, v5) != v5)
    {
      goto LABEL_524;
    }

    i = v311;
    if (v308)
    {
      specialized Rope._Node.distanceFromStart<A>(to:in:)(v5, v309, v310, v308, v3);
      swift_unknownObjectRelease();
    }

    v8 = v4 - i;
    if (__OFSUB__(v4, i))
    {
      goto LABEL_525;
    }

    v4 = v584;
    v5 = v592;
    i = v603;
    if (v603 == v8)
    {
      goto LABEL_382;
    }

LABEL_298:
    v312 = *(v10 + 72);
    v313 = *(v10 + 80);
    v314 = *(v10 + 88);
    v315 = *(v10 + 96);
    swift_unknownObjectRetain();
    v316 = v599;
    v4 = v600;
    v317 = v598;
    specialized Rope.subscript.getter(v600, v599, v598, v312, v313, v314, v315);
    v604 = v318;
    v589 = v319;
    swift_unknownObjectRelease();
    v320 = *(v10 + 72);
    v321 = *(v10 + 80);
    v322 = *(v10 + 88);
    v323 = *(v10 + 96);
    swift_unknownObjectRetain();
    v324 = specialized Rope.subscript.getter(v4, v316, v317, v320, v321, v322, v323);
    i = v325;
    v3 = v326;
    swift_unknownObjectRelease();
    v8 = v603;

    v327 = v8 + v324;
    if (__OFADD__(v8, v324))
    {
      goto LABEL_513;
    }

    if (v5 >= v8)
    {
      v328 = v8;
    }

    else
    {
      v328 = v5;
    }

    v4 = v585;
    if (v8 < v585)
    {
      v328 = v585;
    }

    if (v327 <= v585)
    {
      v329 = v585;
    }

    else
    {
      v329 = v8 + v324;
    }

    if (v5 >= v327)
    {
      v330 = v329;
    }

    else
    {
      v330 = v5;
    }

    if (v328 == v330)
    {
      goto LABEL_514;
    }

    v54 = __OFSUB__(v330, v328);
    v331 = v330 - v328;
    if (v54)
    {
      goto LABEL_515;
    }

    v8 = *(v10 + 72);
    v3 = *(v10 + 80);
    v332 = v10;
    v10 = *(v10 + 88);
    v333 = *(v332 + 96);
    v334 = v599;
    i = v600;
    *&v622 = v600;
    *(&v622 + 1) = v599;
    v335 = v598;
    *&v623 = v598;
    if (__OFADD__(v597, 1))
    {
      goto LABEL_516;
    }

    *&v608 = v331;
    ++v597;
    swift_unknownObjectRetain();
    v336 = specialized Rope.subscript.getter(i, v334, v335, v8, v3, v10, v333);

    v54 = __OFADD__(v603, v336);
    i = v603 + v336;
    if (v54)
    {
      goto LABEL_517;
    }

    specialized Rope.formIndex(after:)(&v622, v8, v3, v10, v333);
    swift_unknownObjectRelease();
    if (i >= v5)
    {
      v10 = v609;
      v8 = v609[9];
      i = v609[10];
      v339 = v609[11];
      v3 = v609[12];
      swift_unknownObjectRetain();
      if (v4 == v5)
      {
        v5 = i;
        if (specialized Rope.find<A>(at:in:preferEnd:)(v4, 0, v8, i, v339, v3) != v3)
        {
          goto LABEL_537;
        }

        i = v342;
        v598 = v341;
        v599 = v340;
        if (v8)
        {
          v597 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v3, v340, v341, v8, v5);
          swift_unknownObjectRelease();
        }

        else
        {
          v597 = 0;
        }

        v337 = v601;
        v338 = v604;
        if (__OFSUB__(v4, i))
        {
          goto LABEL_538;
        }

        v603 = v4 - i;
      }

      else
      {
        v597 = i;
        v599 = specialized Rope._endPath.getter(v8);
        v337 = v601;
        v338 = v604;
        if (v8)
        {
          v603 = v339;
          swift_unknownObjectRelease();
          v598 = 0;
        }

        else
        {
          v597 = 0;
          v598 = 0;
          v603 = 0;
        }
      }
    }

    else
    {
      v603 = i;
      v3 = v622;
      v598 = v623;
      v599 = *(&v622 + 1);
      v10 = v609;
      v337 = v601;
      v338 = v604;
    }

    v663[9] = *(v10 + 24);
    v663[10] = *(v10 + 40);
    v663[11] = *(v10 + 56);
    swift_unknownObjectRetain();
    v343 = v594;
    v601 = v337;
    v344 = BigString.UTF8View.index(_:offsetBy:)();
    v590 = v346;
    v591 = v345;
    v588 = v347;
    swift_unknownObjectRelease();

    v348 = v593;
    v349 = specialized Sequence.contains(where:)(v338);
    v593 = v348;

    v600 = v3;
    if ((v349 & 1) != 0 && v344 >> 10 > v343 >> 10)
    {
      v569 = v344;
      v602 = (v338 + 64);
      v577 = v344 >> 10;
LABEL_330:
      v663[6] = *(v10 + 24);
      v663[7] = *(v10 + 40);
      v663[8] = *(v10 + 56);
      swift_unknownObjectRetain();
      LODWORD(v586) = BigString.UnicodeScalarView.subscript.getter();
      swift_unknownObjectRelease();
      v350 = *(v10 + 40);
      v663[3] = *(v10 + 24);
      v663[4] = v350;
      v663[5] = *(v10 + 56);
      swift_unknownObjectRetain();
      v8 = BigString.UnicodeScalarView.index(after:)();
      v601 = v351;
      v595 = v353;
      v596 = v352;
      swift_unknownObjectRelease();
      v354 = 1 << *(v338 + 32);
      v355 = *(v338 + 64);
      v587 = ((v354 + 63) >> 6);
      if (v354 < 64)
      {
        v356 = ~(-1 << v354);
      }

      else
      {
        v356 = -1;
      }

      v4 = v356 & v355;
      v594 = v8;
      v580 = v8 >> 11;
      v581 = v343 >> 11;

      v5 = 0;
      v357 = v602;
      if (!v4)
      {
LABEL_337:
        if (v587 <= v5 + 1)
        {
          v359 = (v5 + 1);
        }

        else
        {
          v359 = v587;
        }

        v360 = v359 - 1;
        while (1)
        {
          v358 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          if (v358 >= v587)
          {
            v376 = 0;
            v372 = 0;
            v375 = 0;
            v373 = 0;
            v374 = 0;
            v366 = 0;
            v367 = 0;
            v8 = 0;
            v10 = 0;
            v369 = 0;
            v371 = 0;
            v4 = 0;
            v5 = v360;
            goto LABEL_346;
          }

          v4 = v357[v358];
          ++v5;
          if (v4)
          {
            v5 = v358;
            goto LABEL_345;
          }
        }

        __break(1u);
LABEL_426:

        v610 = 1;
        v445 = v572 >> 10;
        v3 = v576 >> 10;
        if (v572 >> 10 == v576 >> 10)
        {
          v446 = *(v10 + 40);
          *(v8 + 224) = *(v10 + 24);
          *(v8 + 240) = v446;
          *(v8 + 256) = *(v10 + 56);
          if (v445 <= BigString.startIndex.getter() >> 10 || v445 >= BigString.endIndex.getter() >> 10)
          {
            goto LABEL_273;
          }

          if (!__OFSUB__(v583, 1))
          {
            if ((AttributedString.Guts._needsParagraphFixing(from:to:)(v583 - 1, v583) & 1) == 0)
            {
              goto LABEL_273;
            }

            v447 = *(v10 + 24);
            v448 = *(v10 + 56);
            v663[1] = *(v10 + 40);
            v663[2] = v448;
            v663[0] = v447;
            v449 = *(v10 + 24);
            v450 = *(v10 + 40);
            *&v653 = *(v10 + 56);
            v651 = v449;
            v652 = v450;
            outlined init with copy of Rope<BigString._Chunk>._Node?(&v651, &v622);
            v451 = BigString.index(before:)();
            v453 = v452;
            v455 = v454;
            v457 = v456;
            outlined destroy of BigString(v663);
            v608 = *(v10 + 24);
            v458 = *(v10 + 40);
            v657 = v608;
            v658 = v458;
            v659 = *(v10 + 56);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd);
            v459 = swift_allocObject();
            v460 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v459, 1);
            *v461 = 2;
            _NSBundleDeallocatingImmortalBundle(v460, v461);
            *&v607 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n();
            swift_unknownObjectRetain();

            v462 = *(v10 + 24);
            v463 = *(v10 + 56);
            v661 = *(v10 + 40);
            v662 = v463;
            v660 = v462;
            v464 = *(v10 + 24);
            v465 = *(v10 + 40);
            *&v656 = *(v10 + 56);
            v654 = v464;
            v655 = v465;
            outlined init with copy of Rope<BigString._Chunk>._Node?(&v654, &v622);
            v466 = v451;
            v467 = v453;
            v468 = v455;
            v469 = BigString.index(after:)();
            v471 = v470;
            v473 = v472;
            v475 = v474;
            outlined destroy of BigString(&v660);
            v476 = v466;
            v477 = v466 >> 10;
            if (v477 > v469 >> 10)
            {
              goto LABEL_586;
            }

            *&v608 = v476;
            *&v611 = v476;
            *(&v611 + 1) = v467;
            v612 = v468;
            v613 = v457;
            v614 = v469;
            v615 = v471;
            v616 = v473;
            v617 = v475;
            v382 = &v657;
            specialized BidirectionalCollection<>._getBlock(for:in:)(v607, &v611, &v622);
            swift_unknownObjectRelease();
            if (*(&v625 + 1) != 2)
            {
              v10 = v609;
              if (v477 <= v624 >> 10)
              {
                LOBYTE(v426) = 0;
                v478 = 0;
                v479 = 0;
                v480 = 0;
                v610 = 0;
                v5 = v608 >> 11;
                v4 = v624 >> 11;
                goto LABEL_470;
              }

              goto LABEL_587;
            }

            goto LABEL_591;
          }

          goto LABEL_581;
        }

        v481 = *(v10 + 40);
        *(v8 + 944) = *(v10 + 24);
        *(v8 + 960) = v481;
        *(v8 + 976) = *(v10 + 56);
        if (v445 <= BigString.startIndex.getter() >> 10)
        {
          goto LABEL_445;
        }

        if (__OFSUB__(v583, 1))
        {
          goto LABEL_580;
        }

        if ((AttributedString.Guts._needsParagraphFixing(from:to:)(v583 - 1, v583) & 1) == 0)
        {
          goto LABEL_445;
        }

        v482 = *(v10 + 24);
        v483 = *(v10 + 56);
        v661 = *(v10 + 40);
        v662 = v483;
        v660 = v482;
        v484 = *(v10 + 24);
        v705[1] = *(v10 + 40);
        v706 = *(v10 + 56);
        v705[0] = v484;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v705, &v622);
        v485 = BigString.index(before:)();
        v487 = v486;
        v489 = v488;
        *&v608 = v490;
        outlined destroy of BigString(&v660);
        v607 = *(v10 + 24);
        v491 = *(v10 + 40);
        v654 = v607;
        v655 = v491;
        v656 = *(v10 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd);
        v492 = swift_allocObject();
        v493 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v492, 1);
        *v494 = 2;
        _NSBundleDeallocatingImmortalBundle(v493, v494);
        *&v606 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n();
        swift_unknownObjectRetain();

        v495 = *(v10 + 24);
        v496 = *(v10 + 56);
        v658 = *(v10 + 40);
        v659 = v496;
        v657 = v495;
        v497 = *(v10 + 24);
        v707[1] = *(v10 + 40);
        v708 = *(v10 + 56);
        v707[0] = v497;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v707, &v622);
        v498 = v489;
        v499 = BigString.index(after:)();
        v501 = v500;
        v503 = v502;
        v505 = v504;
        outlined destroy of BigString(&v657);
        if (v485 >> 10 > v499 >> 10)
        {
LABEL_582:
          __break(1u);
        }

        else
        {
          v605 = v485;
          *&v611 = v485;
          *(&v611 + 1) = v487;
          v612 = v498;
          v613 = v608;
          v614 = v499;
          v615 = v501;
          v616 = v503;
          v617 = v505;
          v382 = &v654;
          specialized BidirectionalCollection<>._getBlock(for:in:)(v606, &v611, &v622);
          swift_unknownObjectRelease();
          if (*(&v625 + 1) == 2)
          {
            __break(1u);
            goto LABEL_590;
          }

          v10 = v609;
          if (v485 >> 10 <= v624 >> 10)
          {
            LOBYTE(v426) = 0;
            v5 = v605 >> 11;
            v4 = v624 >> 11;
            v610 = 0;
            goto LABEL_446;
          }
        }

        __break(1u);
        goto LABEL_584;
      }

      while (1)
      {
LABEL_336:
        v358 = v5;
LABEL_345:
        v361 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v362 = v361 | (v358 << 6);
        v363 = *(v338 + 56);
        v364 = (*(v338 + 48) + 16 * v362);
        v365 = v364[1];
        *&v608 = *v364;
        outlined init with copy of AttributedString._AttributeValue(v363 + 72 * v362, &v611);
        *&v607 = v611;
        v366 = v613;
        v605 = v612;
        *&v606 = *(&v611 + 1);
        v367 = v614;
        v368 = v615;
        v10 = v616;
        v369 = v617;
        v370 = v618;

        v371 = v370;
        v8 = v368;
        v372 = v365;
        v374 = v605;
        v373 = v606;
        v375 = v607;
        v376 = v608;
LABEL_346:
        *&v622 = v376;
        *(&v622 + 1) = v372;
        *&v623 = v375;
        *(&v623 + 1) = v373;
        *&v624 = v374;
        *(&v624 + 1) = v366;
        *&v625 = v367;
        *(&v625 + 1) = v8;
        *&v626 = v10;
        *(&v626 + 1) = v369;
        *&v627 = v371;
        if (!v372)
        {
          v338 = v604;

          v343 = v594;
          v10 = v609;
          if (v577 > v594 >> 10)
          {
            goto LABEL_330;
          }

          v4 = v585;
          i = v603;
          v307 = v588;
          v5 = v569;
          goto LABEL_285;
        }

        v3 = v372;
        outlined copy of AttributedString.AttributeRunBoundaries?(v8, v10);
        outlined destroy of AttributedString._AttributeValue(&v623);
        v338 = v604;
        if (v10 >= 2)
        {
          i = specialized Collection.first.getter(v8, v10);
          outlined consume of AttributedString.AttributeRunBoundaries?(v8, v10);
          if ((i & 0x100000000) == 0 && v586 != i)
          {
            break;
          }
        }

        v357 = v602;
        if (!v4)
        {
          goto LABEL_337;
        }
      }

      if (v580 < v581)
      {
        goto LABEL_558;
      }

      v8 = v578;
      i = swift_isUniquelyReferenced_nonNull_native();
      *&v611 = v8;
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(v376, v3);
      v378 = *(v8 + 16);
      v379 = (v377 & 1) == 0;
      v380 = v378 + v379;
      if (__OFADD__(v378, v379))
      {
        goto LABEL_559;
      }

      v381 = v377;
      if (*(v8 + 24) >= v380)
      {
        if (i)
        {
          v582 = v8;
          if (v377)
          {
            goto LABEL_355;
          }
        }

        else
        {
          *&v607 = v10;
          i = v377;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySnySiGGGMd);
          v582 = static _DictionaryStorage.copy(original:)();
          if (*(v8 + 16))
          {
            v390 = (v582 + 64);
            v391 = v578 + 8;
            v392 = ((1 << *(v582 + 32)) + 63) >> 6;
            if (v582 != v578 || v390 >= &v391[v392])
            {
              memmove(v390, v578 + 8, 8 * v392);
            }

            *&v606 = v391;
            v393 = 0;
            v394 = v578;
            *(v582 + 16) = v578[2];
            v395 = 1 << *(v394 + 32);
            v396 = v394[8];
            if (v395 < 64)
            {
              v397 = ~(-1 << v395);
            }

            else
            {
              v397 = -1;
            }

            v398 = v397 & v396;
            v399 = (v395 + 63) >> 6;
            if (!v398)
            {
              goto LABEL_372;
            }

            while (1)
            {
              v400 = __clz(__rbit64(v398));
              for (*&v608 = (v398 - 1) & v398; ; *&v608 = (v402 - 1) & v402)
              {
                v403 = v400 | (v393 << 6);
                v404 = (v578[6] + 16 * v403);
                v405 = v404[1];
                i = *(v578[7] + 8 * v403);
                v406 = v582;
                v407 = (*(v582 + 48) + 16 * v403);
                *v407 = *v404;
                v407[1] = v405;
                *(*(v406 + 56) + 8 * v403) = i;

                v398 = v608;
                if (v608)
                {
                  break;
                }

LABEL_372:
                v401 = v393;
                do
                {
                  v393 = v401 + 1;
                  if (__OFADD__(v401, 1))
                  {
                    goto LABEL_588;
                  }

                  if (v393 >= v399)
                  {
                    goto LABEL_379;
                  }

                  v402 = *(v606 + 8 * v393);
                  ++v401;
                }

                while (!v402);
                v400 = __clz(__rbit64(v402));
              }
            }
          }

LABEL_379:

          v10 = v607;
          if (v381)
          {
            goto LABEL_355;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v380, i);
        v382 = v611;
        v582 = v611;
        v383 = specialized __RawDictionaryStorage.find<A>(_:)(v376, v3);
        if ((v381 & 1) != (v384 & 1))
        {
          goto LABEL_592;
        }

        v10 = v383;
        if (v381)
        {
LABEL_355:

          v385 = v582;
          goto LABEL_361;
        }
      }

      v385 = v582;
      *(v582 + 8 * (v10 >> 6) + 64) |= 1 << v10;
      v386 = (v385[6] + 16 * v10);
      *v386 = v376;
      v386[1] = v3;
      *(v385[7] + 8 * v10) = MEMORY[0x1E69E7CC0];
      v387 = v385[2];
      v54 = __OFADD__(v387, 1);
      v388 = v387 + 1;
      if (v54)
      {
        goto LABEL_573;
      }

      v385[2] = v388;
LABEL_361:
      v389 = v385;
      v8 = v385[7] + 8 * v10;
      Array<A>._extend(with:)(v581, v580);
      v578 = v389;
      v357 = v602;
      if (!v4)
      {
        goto LABEL_337;
      }

      goto LABEL_336;
    }

    v601 = v591;
    v596 = v590;
    v594 = v344;
    v595 = v588;
    i = v603;
  }

  specialized Rope._endPath.getter(v308);
  if (v308)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  v4 = v584;
  v5 = v592;
  if (i != v8)
  {
    goto LABEL_298;
  }

LABEL_382:

  v408 = 0;
  v409 = (v582 + 64);
  v410 = 1 << *(v582 + 32);
  v411 = -1;
  if (v410 < 64)
  {
    v411 = ~(-1 << v410);
  }

  v412 = v411 & *(v582 + 64);
  v413 = (v410 + 63) >> 6;
  v8 = &v622;
  do
  {
LABEL_385:
    if (!v412)
    {
      do
      {
        v414 = v408 + 1;
        if (__OFADD__(v408, 1))
        {
          goto LABEL_534;
        }

        if (v414 >= v413)
        {
          goto LABEL_426;
        }

        v412 = v409[v414];
        ++v408;
      }

      while (!v412);
      v408 = v414;
    }

    v415 = __clz(__rbit64(v412));
    v412 &= v412 - 1;
    v416 = v415 | (v408 << 6);
    v417 = *(*(v582 + 56) + 8 * v416);
    v603 = v417[2];
  }

  while (!v603);
  v598 = v412;
  v599 = v413;
  v600 = v408;
  v601 = v409;
  v418 = (*(v582 + 48) + 16 * v416);
  v419 = v418[1];
  *&v606 = *v418;
  v604 = (v417 + 4);

  v420 = v417;
  v421 = 0;
  v602 = v420;
  while (2)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v421, 1, v420);
    v422 = (v604 + 16 * v421);
    v5 = *v422;
    i = v422[1];
    v605 = v421 + 1;

    AttributedString._InternalRunsSlice.startIndex.getter(v10, v5, v638);
    v423 = v639;
    v622 = v638[0];
    v623 = v638[1];
    *&v624 = v639;
    *&v608 = i;
    *&v607 = v5;
LABEL_396:
    v425 = *(v10 + 72);
    if (v5 == i)
    {
      v426 = *(v10 + 80);
      v3 = *(v10 + 88);
      v427 = *(v10 + 96);
      swift_unknownObjectRetain();
      if (specialized Rope.find<A>(at:in:preferEnd:)(v5, 0, v425, v426, v3, v427) != v427)
      {
        __break(1u);
LABEL_451:
        __break(1u);
        goto LABEL_452;
      }

      v4 = v430;
      if (v425)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v427, v428, v429, v425, v426);
        swift_unknownObjectRelease();
      }

      v431 = v5 - v4;
      if (__OFSUB__(v5, v4))
      {
        goto LABEL_451;
      }

      i = v608;
    }

    else if (v425)
    {
      v431 = *(v10 + 88);
    }

    else
    {
      v431 = 0;
    }

    if (v423 >= v431)
    {

      v420 = v602;
      v421 = v605;
      v8 = &v622;
      if (v605 == v603)
      {

        v4 = v584;
        v408 = v600;
        v409 = v601;
        v412 = v598;
        v413 = v599;
        goto LABEL_385;
      }

      continue;
    }

    break;
  }

  specialized AttributedString.Guts.updateRun(at:within:with:)(&v622, v5, i, v10, v606, v419);
  v5 = v419;

  v432 = v622;
  v433 = v624;
  v434 = v10;
  v10 = *(v10 + 72);
  v4 = v434[10];
  v3 = v434[11];
  v435 = v434[12];
  v611 = v622;
  v612 = v623;
  v436 = *(&v623 + 1) + 1;
  if (__OFADD__(*(&v623 + 1), 1))
  {
    __break(1u);
LABEL_443:
    __break(1u);
LABEL_444:
    __break(1u);
LABEL_445:
    v5 = 0;
    v4 = 0;
    LOBYTE(v426) = 1;
LABEL_446:
    v506 = *(v10 + 40);
    v651 = *(v10 + 24);
    v652 = v506;
    v653 = *(v10 + 56);
    if (v3 >= BigString.endIndex.getter() >> 10)
    {
      goto LABEL_469;
    }

    if (v426)
    {
      if (v579 < 1)
      {
        goto LABEL_273;
      }

LABEL_453:
      if ((AttributedString.Guts._needsParagraphFixing(from:to:)(v579 - 1, v579) & 1) == 0)
      {
        goto LABEL_469;
      }

      v605 = v4;
      *&v606 = v5;
      v507 = *(v10 + 24);
      v508 = *(v10 + 56);
      v650[1] = *(v10 + 40);
      v650[2] = v508;
      v650[0] = v507;
      v509 = *(v10 + 24);
      v709[1] = *(v10 + 40);
      v710 = *(v10 + 56);
      v709[0] = v509;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v709, &v622);
      v510 = BigString.index(before:)();
      v512 = v511;
      v514 = v513;
      v516 = v515;
      outlined destroy of BigString(v650);
      v608 = *(v10 + 24);
      v517 = *(v10 + 40);
      v648[0] = v608;
      v648[1] = v517;
      v648[2] = *(v10 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd);
      v518 = swift_allocObject();
      v519 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v518, 1);
      *v520 = 2;
      _NSBundleDeallocatingImmortalBundle(v519, v520);
      *&v607 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n();
      swift_unknownObjectRetain();

      v521 = *(v10 + 24);
      v522 = *(v10 + 56);
      v649[1] = *(v10 + 40);
      v649[2] = v522;
      v649[0] = v521;
      v523 = *(v10 + 24);
      v711[1] = *(v10 + 40);
      v712 = *(v10 + 56);
      v711[0] = v523;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v711, &v622);
      v524 = v512;
      v525 = BigString.index(after:)();
      v527 = v526;
      v529 = v528;
      v531 = v530;
      outlined destroy of BigString(v649);
      if (v510 >> 10 <= v525 >> 10)
      {
        v604 = v510;
        v636[0] = v510;
        v636[1] = v524;
        v636[2] = v514;
        v636[3] = v516;
        v636[4] = v525;
        v636[5] = v527;
        v636[6] = v529;
        v636[7] = v531;
        v382 = v648;
        specialized BidirectionalCollection<>._getBlock(for:in:)(v607, v636, &v622);
        swift_unknownObjectRelease();
        if (*(&v625 + 1) != 2)
        {
          v10 = v609;
          v4 = v605;
          if (v510 >> 10 <= v624 >> 10)
          {
            v478 = v604 >> 11;
            v479 = v624 >> 11;
            v480 = 1;
            LOBYTE(v426) = v610;
            v5 = v606;
            goto LABEL_470;
          }

LABEL_585:
          __break(1u);
LABEL_586:
          __break(1u);
LABEL_587:
          __break(1u);
LABEL_588:
          __break(1u);
        }

LABEL_590:
        __break(1u);
LABEL_591:
        __break(1u);
LABEL_592:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_593:

        result = MEMORY[0x1865D2690](v382, -1, -1);
        __break(1u);
        return result;
      }

LABEL_584:
      __break(1u);
      goto LABEL_585;
    }

LABEL_452:
    if (v4 >= v579)
    {
      goto LABEL_468;
    }

    goto LABEL_453;
  }

  if (v622 != v435)
  {
    goto LABEL_443;
  }

  if (v623)
  {
    v437 = *(v623 + 24 * ((*(&v622 + 1) >> ((4 * *(v623 + 18) + 8) & 0x3C)) & 0xFLL) + 24);
    swift_unknownObjectRetain();
  }

  else
  {
    swift_unknownObjectRetain();
    v437 = specialized Rope._Node.subscript.getter(*(&v432 + 1), v10);
  }

  v54 = __OFADD__(v433, v437);
  v423 = v433 + v437;
  i = v608;
  if (v54)
  {
    goto LABEL_444;
  }

  specialized Rope.formIndex(after:)(&v611, v10, v4, v3, v432);
  swift_unknownObjectRelease();
  if (v423 < *(&v432 + 1))
  {
    v4 = *(&v611 + 1);
    v10 = v611;
    v424 = v612;
LABEL_395:
    *&v622 = v10;
    *(&v622 + 1) = v4;
    *&v623 = v424;
    *(&v623 + 1) = v436;
    *&v624 = v423;
    v10 = v609;
    v419 = v5;
    v5 = v607;
    goto LABEL_396;
  }

  v3 = v609[9];
  v438 = v607;
  if (v607 != i)
  {
    v10 = v609[12];
    if (v3)
    {
      v424 = 0;
      v436 = v609[10];
      v423 = v609[11];
      v4 = ((-15 << ((4 * *(v3 + 18) + 8) & 0x3C)) - 1) & *(v3 + 18) | (*(v3 + 16) << ((4 * *(v3 + 18) + 8) & 0x3C));
    }

    else
    {
      v4 = 0;
      v424 = 0;
      v436 = 0;
      v423 = 0;
    }

    goto LABEL_395;
  }

  v439 = v609[10];
  v440 = v609[11];
  v10 = v609[12];
  swift_unknownObjectRetain();
  if (specialized Rope.find<A>(at:in:preferEnd:)(v438, 0, v3, v439, v440, v10) == v10)
  {
    v4 = v441;
    v424 = v442;
    v444 = v443;
    if (v3)
    {
      v436 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v10, v441, v442, v3, v439);
      swift_unknownObjectRelease();
    }

    else
    {
      v436 = 0;
    }

    i = v608;
    v423 = v607 - v444;
    if (__OFSUB__(v607, v444))
    {
      goto LABEL_459;
    }

    goto LABEL_395;
  }

  __break(1u);
LABEL_459:
  __break(1u);
LABEL_460:
  __break(1u);
LABEL_461:
  __break(1u);
LABEL_462:
  __break(1u);
LABEL_463:
  __break(1u);
LABEL_464:
  __break(1u);
LABEL_465:
  __break(1u);
LABEL_466:
  __break(1u);
LABEL_467:
  __break(1u);
LABEL_468:
  LOBYTE(v426) = 0;
LABEL_469:
  v478 = 0;
  v479 = 0;
  v480 = 0;
LABEL_470:
  v532 = v583;
  *&v608 = v479;
  if ((v426 & 1) != 0 || v583 >= v4)
  {
    v548 = v579;
  }

  else
  {
    LODWORD(v603) = v480;
    v604 = v478;
    v622 = 0uLL;
    v533 = AttributedString.Guts._constrainedAttributes(at:with:)(v5, &v622);
    v535 = v534;
    *&v607 = v533;

    *&v606 = v535;

    AttributedString._InternalRunsSlice.startIndex.getter(v10, v532, v640);
    i = v641;
    v622 = v640[0];
    v623 = v640[1];
    *&v624 = v641;
    v605 = v4;
    while (1)
    {
      v539 = *(v10 + 72);
      if (v539)
      {
        v539 = *(v10 + 88);
      }

      if (i >= v539)
      {
        break;
      }

      v540 = v607;

      specialized AttributedString.Guts.updateRun(at:within:with:)(&v622, v583, v4, v10, v540, 0, 0);

      v3 = *(&v622 + 1);
      v541 = v622;
      v8 = v624;
      v542 = v10;
      v543 = *(v10 + 72);
      v10 = *(v10 + 80);
      v545 = *(v542 + 88);
      v544 = *(v542 + 96);
      v620 = v622;
      v621 = v623;
      v5 = *(&v623 + 1) + 1;
      if (__OFADD__(*(&v623 + 1), 1))
      {
        goto LABEL_552;
      }

      if (v622 != v544)
      {
        goto LABEL_553;
      }

      if (v623)
      {
        v546 = v623 + 24 * ((*(&v622 + 1) >> ((4 * *(v623 + 18) + 8) & 0x3C)) & 0xFLL);
        v3 = *(v546 + 24);
        v4 = *(v546 + 40);
        swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v3 = specialized Rope._Node.subscript.getter(v3, v543);
        v4 = v547;
      }

      i = v8 + v3;
      if (__OFADD__(v8, v3))
      {
        goto LABEL_554;
      }

      specialized Rope.formIndex(after:)(&v620, v543, v10, v545, v541);
      swift_unknownObjectRelease();
      v4 = v605;
      if (i < v605)
      {
        v537 = *(&v620 + 1);
        v536 = v620;
        v538 = v621;
        v10 = v609;
        v479 = v608;
      }

      else
      {
        v10 = v609;
        v537 = v609[9];
        v536 = v609[12];
        v479 = v608;
        v538 = 0;
        if (v537)
        {
          v5 = v609[10];
          i = v609[11];
          v537 = ((-15 << ((4 * *(v537 + 18) + 8) & 0x3C)) - 1) & *(v537 + 18) | (*(v537 + 16) << ((4 * *(v537 + 18) + 8) & 0x3C));
        }

        else
        {
          v5 = 0;
          i = 0;
        }
      }

      *&v622 = v536;
      *(&v622 + 1) = v537;
      *&v623 = v538;
      *(&v623 + 1) = v5;
      *&v624 = i;
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v548 = v579;
    v478 = v604;
    v480 = v603;
  }

  if (v548 < v479)
  {
    v549 = v480;
  }

  else
  {
    v549 = 0;
  }

  if (v549 == 1)
  {
    v622 = 0uLL;
    v550 = AttributedString.Guts._constrainedAttributes(at:with:)(v478, &v622);
    v552 = v551;
    *&v607 = v550;

    *&v606 = v552;

    AttributedString._InternalRunsSlice.startIndex.getter(v10, v579, &v642);
    for (i = v645; ; v645 = i)
    {
      v556 = *(v10 + 72);
      if (v556)
      {
        v556 = *(v10 + 88);
      }

      if (i >= v556)
      {
        break;
      }

      v557 = v607;

      specialized AttributedString.Guts.updateRun(at:within:with:)(&v642, v579, v479, v10, v557, 0, 0);

      v3 = *(&v642 + 1);
      v4 = v642;
      v8 = v645;
      v5 = *(v10 + 72);
      v558 = *(v10 + 80);
      v560 = *(v10 + 88);
      v559 = *(v10 + 96);
      v622 = v642;
      *&v623 = v643;
      v561 = v644 + 1;
      if (__OFADD__(v644, 1))
      {
        goto LABEL_555;
      }

      if (v642 != v559)
      {
        goto LABEL_556;
      }

      if (v643)
      {
        v562 = v643 + 24 * ((*(&v642 + 1) >> ((4 * *(v643 + 18) + 8) & 0x3C)) & 0xFLL);
        v3 = *(v562 + 24);
        v10 = *(v562 + 40);
        swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v3 = specialized Rope._Node.subscript.getter(v3, v5);
        v10 = v563;
      }

      i = v8 + v3;
      if (__OFADD__(v8, v3))
      {
        goto LABEL_557;
      }

      specialized Rope.formIndex(after:)(&v622, v5, v558, v560, v4);
      swift_unknownObjectRelease();
      v479 = v608;
      if (i < v608)
      {
        v554 = *(&v622 + 1);
        v553 = v622;
        v555 = v623;
        v10 = v609;
      }

      else
      {
        v10 = v609;
        v554 = v609[9];
        v553 = v609[12];
        v555 = 0;
        if (v554)
        {
          v561 = v609[10];
          i = v609[11];
          v554 = ((-15 << ((4 * *(v554 + 18) + 8) & 0x3C)) - 1) & *(v554 + 18) | (*(v554 + 16) << ((4 * *(v554 + 18) + 8) & 0x3C));
        }

        else
        {
          v561 = 0;
          i = 0;
        }
      }

      *&v642 = v553;
      *(&v642 + 1) = v554;
      v643 = v555;
      v644 = v561;
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

LABEL_273:
  v626 = v633;
  v627 = v634;
  v628 = v635;
  v622 = v629;
  v623 = v630;
  v624 = v631;
  v625 = v632;
  return outlined destroy of BigSubstring.UnicodeScalarView(&v622);
}

uint64_t specialized AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(uint64_t a1)
{
  v4 = v1;
  v605 = a1;
  v741 = *MEMORY[0x1E69E9840];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  v595 = 0;
  v604 = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v724[0] = *(v6 + 24);
    v724[1] = *(v6 + 40);
    v724[2] = *(v6 + 56);
    v7 = *(v6 + 72);
    v8 = *(v6 + 80);
    i = *(v6 + 88);
    v9 = *(v6 + 96);
    type metadata accessor for AttributedString.Guts();
    v3 = swift_allocObject();
    outlined init with copy of BigString(v724, &v624);
    swift_unknownObjectRetain();
    v10 = AttributedString.Guts.init(string:runs:)(v724, v7, v8, i, v9);

    *v4 = v10;
    v6 = v10;
  }

  v11 = *(v6 + 24);
  v12 = *(v6 + 40);
  v723 = *(v6 + 56);
  v722 = v12;
  v721 = v11;
  v13 = *(v6 + 40);
  v611 = *(v6 + 24);
  v612 = v13;
  v14 = *(v6 + 56);
  v15 = *(v6 + 64);
  v613 = v6;
  if (BigString.isEmpty.getter())
  {
    v16 = MEMORY[0x1E69E7CC8];
    goto LABEL_37;
  }

  v17 = *v605;
  if (*v605 >= 0x800uLL && (*(v605 + 32) ^ v17) <= 0x3FF)
  {
    v718[3] = v611;
    v718[4] = v612;
    v719 = v14;
    v720 = v15;
    v725[0] = v721;
    v725[1] = v722;
    v726 = v723;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v725, &v624);
    v17 = BigString.UTF8View.index(before:)();
    outlined destroy of BigString(&v721);
  }

  v18 = *(v6 + 72);
  v3 = *(v6 + 80);
  i = *(v6 + 88);
  v16 = *(v6 + 96);
  swift_unknownObjectRetain();
  if (specialized Rope.find<A>(at:in:preferEnd:)(v17 >> 11, 0, v18, v3, i, v16) == v16)
  {
    v21 = v19;
    v22 = v20;
    if (v18)
    {
      specialized Rope._Node.distanceFromStart<A>(to:in:)(v16, v19, v20, v18, v3);
      swift_unknownObjectRelease();
    }

    v23 = *(v6 + 72);
    v24 = *(v6 + 80);
    v25 = *(v6 + 88);
    v26 = *(v6 + 96);
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v16, v21, v22, v23, v24, v25, v26);
    v3 = v27;
    v18 = v28;
    swift_unknownObjectRelease();
    v29 = v3[32];
    v30 = v29 & 0x3F;
    i = ((1 << v29) + 63) >> 6;
    v16 = 8 * i;

    if (v30 <= 0xD)
    {
      goto LABEL_12;
    }

    goto LABEL_556;
  }

  while (2)
  {
    __break(1u);
LABEL_556:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_569;
    }

LABEL_12:
    v607 = i;
    v609 = &v573;
    v610 = v18;
    MEMORY[0x1EEE9AC00](v31);
    v608 = &v573 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v608, v16);
    *&v611 = 0;
    v32 = 0;
    *&v612 = v3;
    v33 = v3 + 64;
    v34 = 1 << v3[32];
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v3 + 8);
    v37 = (v34 + 63) >> 6;
    v3 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR;
    do
    {
      do
      {
        while (1)
        {
          if (v36)
          {
            v38 = __clz(__rbit64(v36));
            v36 &= v36 - 1;
          }

          else
          {
            v39 = v32;
            do
            {
              v32 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                goto LABEL_459;
              }

              if (v32 >= v37)
              {
                goto LABEL_31;
              }

              v40 = *&v33[8 * v32];
              ++v39;
            }

            while (!v40);
            v38 = __clz(__rbit64(v40));
            v36 = (v40 - 1) & v40;
          }

          v41 = v38 | (v32 << 6);
          v42 = (*(v612 + 48) + 16 * v41);
          v44 = *v42;
          v43 = v42[1];
          outlined init with copy of AttributedString._AttributeValue(*(v612 + 56) + 72 * v41, &v640);
          *&v624 = v44;
          *(&v624 + 1) = v43;
          outlined init with copy of AttributedString._AttributeValue(&v640, &v625);
          outlined init with copy of FloatingPointRoundingRule?(&v624, &v617, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);

          i = BYTE8(v621);
          outlined destroy of AttributedString._AttributeValue(&v618);
          if (i == 1)
          {
            break;
          }

          outlined destroy of TermOfAddress?(&v624, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
          outlined destroy of AttributedString._AttributeValue(&v640);
          v6 = v613;
        }

        outlined init with copy of FloatingPointRoundingRule?(&v624, &v631, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);

        v6 = v613;
        if (!v639)
        {
          outlined destroy of TermOfAddress?(&v624, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
          outlined destroy of AttributedString._AttributeValue(&v640);
          outlined destroy of AttributedString._AttributeValue(&v632);
          break;
        }

        i = specialized Set.contains(_:)(0, 0, v639);
        outlined destroy of TermOfAddress?(&v624, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
        outlined destroy of AttributedString._AttributeValue(&v640);
        outlined destroy of AttributedString._AttributeValue(&v632);
      }

      while ((i & 1) != 0);
      *(v608 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      v45 = __OFADD__(v611, 1);
      *&v611 = v611 + 1;
    }

    while (!v45);
    __break(1u);
LABEL_31:
    v46 = v611;
    if (v611)
    {
      v3 = v612;
      if (v611 == *(v612 + 16))
      {

        v16 = v3;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v16 = static _DictionaryStorage.allocate(capacity:)();
        v18 = 0;
        v104 = *v608;
        i = v16 + 64;
        do
        {
          if (v104)
          {
            v108 = __clz(__rbit64(v104));
            v104 &= v104 - 1;
          }

          else
          {
            v109 = v18;
            do
            {
              v18 = v109 + 1;
              if (__OFADD__(v109, 1))
              {
                goto LABEL_522;
              }

              if (v18 >= v607)
              {
                goto LABEL_36;
              }

              v110 = *(v608 + 8 * v18);
              ++v109;
            }

            while (!v110);
            v108 = __clz(__rbit64(v110));
            v104 = (v110 - 1) & v110;
          }

          v111 = v108 | (v18 << 6);
          v112 = (*(v3 + 6) + 16 * v111);
          v113 = *v112;
          v6 = v112[1];
          outlined init with copy of AttributedString._AttributeValue(*(v3 + 7) + 72 * v111, &v624);
          v619 = v626;
          v620 = v627;
          *&v621 = v628;
          v617 = v624;
          v618 = v625;
          Hasher.init(_seed:)();

          String.hash(into:)();
          v114 = Hasher._finalize()();
          v115 = -1 << *(v16 + 32);
          v116 = v114 & ~v115;
          v117 = v116 >> 6;
          if (((-1 << v116) & ~*(i + 8 * (v116 >> 6))) != 0)
          {
            v105 = __clz(__rbit64((-1 << v116) & ~*(i + 8 * (v116 >> 6)))) | v116 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v118 = 0;
            v119 = (63 - v115) >> 6;
            do
            {
              if (++v117 == v119 && (v118 & 1) != 0)
              {
                goto LABEL_528;
              }

              v120 = v117 == v119;
              if (v117 == v119)
              {
                v117 = 0;
              }

              v118 |= v120;
              v121 = *(i + 8 * v117);
            }

            while (v121 == -1);
            v105 = __clz(__rbit64(~v121)) + (v117 << 6);
          }

          *(i + ((v105 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v105;
          v106 = (*(v16 + 48) + 16 * v105);
          *v106 = v113;
          v106[1] = v6;
          v107 = *(v16 + 56) + 72 * v105;
          *(v107 + 16) = v618;
          *(v107 + 32) = v619;
          *(v107 + 48) = v620;
          *(v107 + 64) = v621;
          *v107 = v617;
          ++*(v16 + 16);
          --v46;
          v6 = v613;
        }

        while (v46);
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC8];
      v3 = v612;
    }

LABEL_36:

    swift_bridgeObjectRelease_n();
LABEL_37:
    v47 = *v605;
    v658 = *(v605 + 8);
    v48 = *(v605 + 32);
    v659 = *(v605 + 24);
    v606 = v47;
    v656 = *(v605 + 40);
    v657 = *(v605 + 56);
    *&v612 = v47 >> 11;
    *&v640 = v47 >> 11;
    v714[0] = v48 >> 11;
    v609 = v48;
    v602 = v48 >> 11;
    v603 = v16;
    if (v48 < 0x800)
    {
      v608 = MEMORY[0x1E69E7CD0];
      v610 = MEMORY[0x1E69E7CC8];
      goto LABEL_65;
    }

    v49 = (v48 >> 11) - 1;
    v50 = *(v6 + 72);
    i = *(v6 + 80);
    v52 = *(v6 + 88);
    v51 = *(v6 + 96);
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(v49, 0, v50, i, v52, v51) == v51)
    {
      v18 = v53;
      v3 = v54;
      if (v50)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v51, v53, v54, v50, i);
        swift_unknownObjectRelease();
      }

      v55 = *(v6 + 72);
      v56 = *(v6 + 80);
      v57 = *(v6 + 88);
      v58 = *(v6 + 96);
      swift_unknownObjectRetain();
      specialized Rope.subscript.getter(v51, v18, v3, v55, v56, v57, v58);
      v608 = v59;
      v50 = v60;
      swift_unknownObjectRelease();
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation16AttributedStringV15_AttributeValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

      v62 = *(v50 + 32);
      i = ((1 << v62) + 63) >> 6;
      if ((v62 & 0x3Fu) <= 0xD)
      {
        goto LABEL_43;
      }
    }

    else
    {
      __break(1u);
    }

    v18 = v50;

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_43:
      v599 = i;
      v601 = &v573;
      MEMORY[0x1EEE9AC00](v61);
      v600 = (&v573 - ((v63 + 15) & 0x3FFFFFFFFFFFFFF0));
      bzero(v600, v63);
      v607 = 0;
      v6 = 0;
      v64 = v50 + 64;
      v65 = 1 << *(v50 + 32);
      v66 = -1;
      if (v65 < 64)
      {
        v66 = ~(-1 << v65);
      }

      v67 = v66 & *(v50 + 64);
      v3 = ((v65 + 63) >> 6);
      v32 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR;
      *&v611 = v50;
      while (v67)
      {
        v68 = __clz(__rbit64(v67));
        v67 &= v67 - 1;
LABEL_54:
        v71 = v68 | (v6 << 6);
        v72 = (*(v50 + 48) + 16 * v71);
        v73 = *v72;
        v18 = v72[1];
        outlined init with copy of AttributedString._AttributeValue(*(v50 + 56) + 72 * v71, &v631);
        *&v624 = v73;
        *(&v624 + 1) = v18;
        outlined init with copy of AttributedString._AttributeValue(&v631, &v625);
        outlined init with copy of FloatingPointRoundingRule?(&v624, &v617, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
        i = *(&v617 + 1);
        swift_bridgeObjectRetain_n();

        if (v622)
        {
          i = specialized Set.contains(_:)(0, 0, v622);
          outlined destroy of TermOfAddress?(&v624, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
          outlined destroy of AttributedString._AttributeValue(&v618);
          outlined destroy of AttributedString._AttributeValue(&v631);

          v50 = v611;
          if (i)
          {
            *(v600 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v71;
            v45 = __OFADD__(v607, 1);
            v607 = (v607 + 1);
            if (v45)
            {
              __break(1u);
              goto LABEL_59;
            }
          }
        }

        else
        {
          outlined destroy of TermOfAddress?(&v624, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
          outlined destroy of AttributedString._AttributeValue(&v618);
          outlined destroy of AttributedString._AttributeValue(&v631);

          v50 = v611;
        }
      }

      v69 = v6;
      while (1)
      {
        v6 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          goto LABEL_460;
        }

        if (v6 >= v3)
        {
          break;
        }

        v70 = *(v64 + 8 * v6);
        ++v69;
        if (v70)
        {
          v68 = __clz(__rbit64(v70));
          v67 = (v70 - 1) & v70;
          goto LABEL_54;
        }
      }

LABEL_59:
      v3 = v607;
      if (v607)
      {
        if (v607 == *(v50 + 16))
        {

          v610 = v50;
        }

        else
        {
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v122 = static _DictionaryStorage.allocate(capacity:)();
          v6 = 0;
          v123 = *v600;
          v610 = v122;
          i = v122 + 64;
          do
          {
            if (v123)
            {
              v607 = v3;
              v128 = __clz(__rbit64(v123));
              v123 &= v123 - 1;
            }

            else
            {
              v129 = v6;
              do
              {
                v6 = v129 + 1;
                if (__OFADD__(v129, 1))
                {
                  goto LABEL_523;
                }

                if (v6 >= v599)
                {
                  goto LABEL_63;
                }

                v130 = v600[v6];
                ++v129;
              }

              while (!v130);
              v607 = v3;
              v128 = __clz(__rbit64(v130));
              v123 = (v130 - 1) & v130;
            }

            v131 = v128 | (v6 << 6);
            v132 = (*(v50 + 48) + 16 * v131);
            v18 = *v132;
            v133 = v132[1];
            outlined init with copy of AttributedString._AttributeValue(*(v50 + 56) + 72 * v131, &v624);
            v619 = v626;
            v620 = v627;
            *&v621 = v628;
            v617 = v624;
            v618 = v625;
            v134 = v610;
            Hasher.init(_seed:)();

            String.hash(into:)();
            v16 = &v631;
            v135 = Hasher._finalize()();
            v136 = -1 << *(v134 + 32);
            v137 = v135 & ~v136;
            v138 = v137 >> 6;
            if (((-1 << v137) & ~*(i + 8 * (v137 >> 6))) != 0)
            {
              v124 = __clz(__rbit64((-1 << v137) & ~*(i + 8 * (v137 >> 6)))) | v137 & 0x7FFFFFFFFFFFFFC0;
              v3 = v607;
            }

            else
            {
              v139 = 0;
              v140 = (63 - v136) >> 6;
              v3 = v607;
              do
              {
                if (++v138 == v140 && (v139 & 1) != 0)
                {
                  goto LABEL_529;
                }

                v141 = v138 == v140;
                if (v138 == v140)
                {
                  v138 = 0;
                }

                v139 |= v141;
                v142 = *(i + 8 * v138);
              }

              while (v142 == -1);
              v124 = __clz(__rbit64(~v142)) + (v138 << 6);
            }

            *(i + ((v124 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v124;
            v125 = v610;
            v126 = (*(v610 + 48) + 16 * v124);
            *v126 = v18;
            v126[1] = v133;
            v127 = *(v125 + 56) + 72 * v124;
            *(v127 + 16) = v618;
            *(v127 + 32) = v619;
            *(v127 + 48) = v620;
            *(v127 + 64) = v621;
            *v127 = v617;
            ++*(v125 + 16);
            --v3;
          }

          while (v3);
        }
      }

      else
      {
        v610 = MEMORY[0x1E69E7CC8];
      }

LABEL_63:
      v6 = v613;
    }

    else
    {
      v380 = swift_slowAlloc();

      v571 = v595;
      _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v380, i, v18, specialized thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed AttributedString._AttributeValue) -> (@unowned Bool, @error @owned Error));
      v610 = v572;
      v595 = v571;
      if (v571)
      {
        goto LABEL_588;
      }

      MEMORY[0x1865D2690](v380, -1, -1);
    }

LABEL_65:
    v718[0] = *(v6 + 24);
    v718[1] = *(v6 + 40);
    v718[2] = *(v6 + 56);
    v16 = v718;
    v74 = BigString.UTF8View.count.getter();
    v18 = v612;
    if (v612 >= v74)
    {
      goto LABEL_152;
    }

    v75 = *(v6 + 72);
    i = *(v6 + 80);
    v77 = *(v6 + 88);
    v76 = *(v6 + 96);
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(v18, 0, v75, i, v77, v76) != v76)
    {
      __break(1u);
LABEL_562:
      __break(1u);
LABEL_563:
      __break(1u);
LABEL_564:
      __break(1u);
      goto LABEL_565;
    }

    v80 = v78;
    v81 = v79;
    if (v75)
    {
      specialized Rope._Node.distanceFromStart<A>(to:in:)(v76, v78, v79, v75, i);
      swift_unknownObjectRelease();
    }

    v82 = *(v6 + 72);
    v83 = *(v6 + 80);
    v84 = *(v6 + 88);
    v85 = *(v6 + 96);
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v76, v80, v81, v82, v83, v84, v85);
    v607 = v86;
    swift_unknownObjectRelease();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation16AttributedStringV15_AttributeValueVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    v88 = v595;
    i = specialized Dictionary.filter(_:)(v87);
    v595 = v88;

    swift_bridgeObjectRelease_n();
    v3 = 0;
    *&v617 = MEMORY[0x1865CB700](*(i + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    *&v611 = i;
    v89 = 1 << *(i + 32);
    v90 = -1;
    if (v89 < 64)
    {
      v90 = ~(-1 << v89);
    }

    v91 = i + 64;
    v92 = v90 & *(i + 64);
    v32 = (v89 + 63) >> 6;
    if (v92)
    {
      while (1)
      {
        v93 = v3;
LABEL_77:
        v94 = __clz(__rbit64(v92));
        v92 &= v92 - 1;
        v95 = (*(v611 + 48) + ((v93 << 10) | (16 * v94)));
        v96 = *v95;
        i = v95[1];

        specialized Set._Variant.insert(_:)(&v624, v96, i);

        if (!v92)
        {
          goto LABEL_73;
        }
      }
    }

    while (1)
    {
LABEL_73:
      v93 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        goto LABEL_461;
      }

      if (v93 >= v32)
      {
        break;
      }

      v92 = *(v91 + 8 * v93);
      ++v3;
      if (v92)
      {
        v3 = v93;
        goto LABEL_77;
      }
    }

    *&v631 = v617;
    v98 = *(v6 + 72);
    v97 = *(v6 + 80);
    v16 = *(v6 + 88);
    v99 = *(v6 + 96);
    swift_unknownObjectRetain();

    if (v606 <= 0x7FF)
    {
      if (specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v98, v97, v16, v99) == v99)
      {
        v103 = v100;
        v6 = v101;
        i = v102;
        if (v98)
        {
          v97 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v99, v100, v101, v98, v97);
          swift_unknownObjectRelease();
          v16 = -i;
          if (!__OFSUB__(0, i))
          {
            goto LABEL_127;
          }
        }

        else
        {
          v97 = 0;
          v16 = -v102;
          if (!__OFSUB__(0, v102))
          {
            goto LABEL_127;
          }
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_575:
      __break(1u);
LABEL_576:
      __break(1u);
      goto LABEL_577;
    }

    v103 = specialized Rope._endPath.getter(v98);
    if (v98)
    {
      swift_unknownObjectRelease();
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v97 = 0;
      v16 = 0;
    }

LABEL_127:
    *&v624 = v99;
    *(&v624 + 1) = v103;
    *&v625 = v6;
    *(&v625 + 1) = v97;
    *&v626 = v16;
    v143 = v613[9];
    v18 = v613[10];
    v144 = v613[11];
    v145 = v613[12];
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v143, v18, v144, v145) != v145)
    {
      goto LABEL_463;
    }

    v6 = v148;
    while (2)
    {
      if (v143)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v145, v146, v147, v143, v18);
        swift_unknownObjectRelease();
      }

      if (__OFSUB__(0, v6))
      {
        goto LABEL_515;
      }

      if (-v6 < v16 && *(v631 + 16))
      {
        v18 = v613[9];
        if (v18)
        {
          if (v16 == v613[11])
          {
LABEL_138:
            v16 = v613[10];
            i = v613[11];
            v155 = v613[12];
            swift_unknownObjectRetain();
            if (specialized Rope.find<A>(at:in:preferEnd:)(v612, 1, v18, v16, i, v155) != v155)
            {
              goto LABEL_531;
            }

            v159 = v156;
            v6 = v157;
            v3 = v158;
            if (v18)
            {
              v160 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v155, v156, v157, v18, v16);
              swift_unknownObjectRelease();
            }

            else
            {
              v160 = 0;
            }

            v149 = v612 - v3;
            if (__OFSUB__(v612, v3))
            {
              __break(1u);
              break;
            }

            goto LABEL_130;
          }
        }

        else if (!v16)
        {
          goto LABEL_138;
        }

        v32 = v613[10];
        v3 = v613[11];
        v155 = v613[12];
        v617 = v624;
        *&v618 = v625;
        v160 = *(&v625 + 1) - 1;
        if (__OFSUB__(*(&v625 + 1), 1))
        {
          goto LABEL_524;
        }

        swift_unknownObjectRetain();
        specialized Rope.formIndex(before:)(&v617, v18, v32, v3, v155);
        if (v617 != v155)
        {
          goto LABEL_525;
        }

        v159 = *(&v617 + 1);
        v6 = v618;
        if (v618)
        {
          i = *(v618 + 24 * ((*(&v617 + 1) >> ((4 * *(v618 + 18) + 8) & 0x3C)) & 0xFLL) + 24);

          swift_unknownObjectRelease();
          v149 = v16 - i;
          if (__OFSUB__(v16, i))
          {
            goto LABEL_532;
          }
        }

        else
        {
          i = specialized Rope._Node.subscript.getter(*(&v617 + 1), v18);
          v3 = v161;
          v32 = v162;
          swift_unknownObjectRelease();

          v149 = v16 - i;
          if (__OFSUB__(v16, i))
          {
            goto LABEL_538;
          }

          v6 = 0;
        }

LABEL_130:
        *&v624 = v155;
        *(&v624 + 1) = v159;
        *&v625 = v6;
        *(&v625 + 1) = v160;
        *&v626 = v149;
        v150 = v611;

        v151 = v607;

        i = v613;
        specialized AttributedString.Guts.updateRun(at:within:with:)(&v624, 0, v612, v613, &v631, v150, v151, &v640);

        v16 = v626;
        v143 = *(i + 72);
        v18 = *(i + 80);
        v152 = *(i + 88);
        v145 = *(i + 96);
        swift_unknownObjectRetain();
        v153 = specialized Rope.find<A>(at:in:preferEnd:)(0, 0, v143, v18, v152, v145);
        v6 = v154;
        if (v153 != v145)
        {
          goto LABEL_463;
        }

        continue;
      }

      break;
    }

    v6 = v613;

LABEL_152:
    if (v609 < 0x800)
    {

      goto LABEL_203;
    }

    v163 = v610;
    v164 = *(v610 + 16);

    v3 = 0;
    *&v617 = MEMORY[0x1865CB700](v164, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    v167 = *(v163 + 64);
    v166 = v163 + 64;
    v165 = v167;
    v168 = 1 << *(v166 - 32);
    v169 = -1;
    if (v168 < 64)
    {
      v169 = ~(-1 << v168);
    }

    v170 = v169 & v165;
    v32 = (v168 + 63) >> 6;
    if ((v169 & v165) != 0)
    {
      while (1)
      {
        v171 = v3;
LABEL_162:
        v172 = __clz(__rbit64(v170));
        v170 &= v170 - 1;
        v173 = (*(v610 + 48) + ((v171 << 10) | (16 * v172)));
        v174 = *v173;
        i = v173[1];

        specialized Set._Variant.insert(_:)(&v624, v174, i);

        if (!v170)
        {
          goto LABEL_158;
        }
      }
    }

    while (1)
    {
LABEL_158:
      v171 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        goto LABEL_462;
      }

      if (v171 >= v32)
      {
        break;
      }

      v170 = *(v166 + 8 * v171);
      ++v3;
      if (v170)
      {
        v3 = v171;
        goto LABEL_162;
      }
    }

    *&v631 = v617;
    v715 = *(v6 + 24);
    v716 = *(v6 + 40);
    v717 = *(v6 + 56);
    *&v611 = BigString.UTF8View.count.getter();
    v16 = v602;
    if (v611 < v602)
    {
      goto LABEL_562;
    }

    v18 = *(v6 + 72);
    v175 = *(v6 + 80);
    v177 = *(v6 + 88);
    v176 = *(v6 + 96);
    swift_unknownObjectRetain();

    if (specialized Rope.find<A>(at:in:preferEnd:)(v16, 0, v18, v175, v177, v176) != v176)
    {
      goto LABEL_563;
    }

    v3 = v178;
    v181 = v179;
    i = v180;
    if (v18)
    {
      v182 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v176, v178, v179, v18, v175);
      swift_unknownObjectRelease();
      v183 = v16 - i;
      if (!__OFSUB__(v16, i))
      {
        goto LABEL_168;
      }

LABEL_277:
      __break(1u);
LABEL_278:
      v600 = 0;
      goto LABEL_279;
    }

    v182 = 0;
    v183 = v16 - v180;
    if (__OFSUB__(v16, v180))
    {
      goto LABEL_277;
    }

LABEL_168:
    *&v624 = v176;
    *(&v624 + 1) = v3;
    *&v625 = v181;
    *(&v625 + 1) = v182;
LABEL_171:
    *&v626 = v183;
    v185 = *(v6 + 72);
    if (v16 == v611)
    {
      i = *(v6 + 80);
      v18 = *(v6 + 88);
      v3 = *(v6 + 96);
      swift_unknownObjectRetain();
      if (specialized Rope.find<A>(at:in:preferEnd:)(v16, 0, v185, i, v18, v3) != v3)
      {
        goto LABEL_526;
      }

      v189 = v188;
      if (v185)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v3, v186, v187, v185, i);
        swift_unknownObjectRelease();
      }

      if (__OFSUB__(v16, v189))
      {
        goto LABEL_527;
      }

      if (v183 >= (v16 - v189))
      {
        goto LABEL_202;
      }
    }

    else if (v185)
    {
      if (v183 >= *(v6 + 88))
      {
        goto LABEL_202;
      }
    }

    else if (v183 >= 0)
    {
      goto LABEL_202;
    }

    if (!*(v631 + 16))
    {
      goto LABEL_202;
    }

    i = v610;

    v190 = v608;

    specialized AttributedString.Guts.updateRun(at:within:with:)(&v624, v16, v611, v6, &v631, i, v190, v714);

    v191 = *(&v624 + 1);
    v18 = v624;
    v16 = v626;
    v3 = *(v6 + 72);
    v192 = *(v6 + 80);
    v194 = *(v6 + 88);
    v193 = *(v6 + 96);
    v617 = v624;
    *&v618 = v625;
    v195 = *(&v625 + 1) + 1;
    if (__OFADD__(*(&v625 + 1), 1))
    {
      goto LABEL_516;
    }

    if (v624 != v193)
    {
LABEL_517:
      __break(1u);
LABEL_518:
      __break(1u);
LABEL_519:
      __break(1u);
LABEL_520:
      __break(1u);
LABEL_521:
      __break(1u);
LABEL_522:
      __break(1u);
LABEL_523:
      __break(1u);
LABEL_524:
      __break(1u);
LABEL_525:
      __break(1u);
LABEL_526:
      __break(1u);
LABEL_527:
      __break(1u);
LABEL_528:
      __break(1u);
LABEL_529:
      __break(1u);
LABEL_530:
      __break(1u);
LABEL_531:
      __break(1u);
LABEL_532:
      __break(1u);
LABEL_533:
      __break(1u);
LABEL_534:
      __break(1u);
LABEL_535:
      __break(1u);
LABEL_536:
      __break(1u);
LABEL_537:
      __break(1u);
LABEL_538:
      __break(1u);
LABEL_539:
      __break(1u);
LABEL_540:
      __break(1u);
LABEL_541:
      __break(1u);
LABEL_542:
      __break(1u);
LABEL_543:
      __break(1u);
LABEL_544:
      __break(1u);
LABEL_545:
      __break(1u);
LABEL_546:
      __break(1u);
LABEL_547:
      __break(1u);
LABEL_548:
      __break(1u);
LABEL_549:
      __break(1u);
LABEL_550:
      __break(1u);
LABEL_551:
      __break(1u);
LABEL_552:
      __break(1u);
LABEL_553:
      __break(1u);
LABEL_554:
      __break(1u);
      continue;
    }

    break;
  }

  if (v625)
  {
    v196 = (v625 + 24 * ((*(&v624 + 1) >> ((4 * *(v625 + 18) + 8) & 0x3C)) & 0xFLL));
    v197 = v196[3];
    i = v196[4];
    v6 = v196[5];
    swift_unknownObjectRetain();
  }

  else
  {
    swift_unknownObjectRetain();
    v197 = specialized Rope._Node.subscript.getter(v191, v3);
    i = v198;
    v6 = v199;
  }

  v45 = __OFADD__(v16, v197);
  v183 = v16 + v197;
  if (v45)
  {
    goto LABEL_518;
  }

  specialized Rope.formIndex(after:)(&v617, v3, v192, v194, v18);
  swift_unknownObjectRelease();
  if (v183 < v611)
  {
    v184 = *(&v617 + 1);
    v18 = v617;
    v3 = v618;
    v6 = v613;
    v16 = v602;
    goto LABEL_170;
  }

  v6 = v613;
  v200 = v613[9];
  v16 = v602;
  if (v602 != v611)
  {
    v18 = v613[12];
    if (v200)
    {
      v3 = 0;
      v195 = v613[10];
      v183 = v613[11];
      v184 = ((-15 << ((4 * *(v200 + 18) + 8) & 0x3C)) - 1) & *(v200 + 18) | (*(v200 + 16) << ((4 * *(v200 + 18) + 8) & 0x3C));
    }

    else
    {
      v184 = 0;
      v3 = 0;
      v195 = 0;
      v183 = 0;
    }

    goto LABEL_170;
  }

  v201 = v613[10];
  i = v613[11];
  v18 = v613[12];
  swift_unknownObjectRetain();
  if (specialized Rope.find<A>(at:in:preferEnd:)(v16, 0, v200, v201, i, v18) != v18)
  {
    goto LABEL_537;
  }

  v184 = v202;
  v3 = v203;
  v205 = v204;
  if (v200)
  {
    v195 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v18, v202, v203, v200, v201);
    swift_unknownObjectRelease();
    v45 = __OFSUB__(v16, v205);
    v183 = v16 - v205;
    if (v45)
    {
      goto LABEL_201;
    }

    goto LABEL_170;
  }

  v195 = 0;
  v183 = v16 - v204;
  if (!__OFSUB__(v16, v204))
  {
LABEL_170:
    *&v624 = v18;
    *(&v624 + 1) = v184;
    *&v625 = v3;
    *(&v625 + 1) = v195;
    goto LABEL_171;
  }

LABEL_201:
  __break(1u);
LABEL_202:

LABEL_203:

  if (v714[0] < v640)
  {
    goto LABEL_539;
  }

  v600 = v714[0];
  v590 = v640;
  v206 = *(v6 + 104);
  v207 = specialized Array.count.getter(v206);
  if (v207 < 0)
  {
    goto LABEL_540;
  }

  v16 = v207;
  if (v207)
  {
    i = 0;
    v18 = v606 >> 10;
    v3 = (v609 >> 10);
    v32 = 88;
    v610 = v207;
    *&v611 = v609 >> 10;
    while (1)
    {
      if (i >= *(v206 + 2))
      {
        goto LABEL_456;
      }

      v210 = *&v206[v32 - 56];
      v211 = v18 >= v210 >> 10 || v210 >> 10 >= v3;
      v212 = !v211;
      v213 = *&v206[v32 - 24];
      v214 = v213 >> 10;
      if (v18 >= v213 >> 10)
      {
        break;
      }

      if (v212)
      {
        if (v214 < v3)
        {
          v624 = v658;
          *&v625 = v659;
          v617 = v658;
          *&v618 = v659;
          v215 = swift_isUniquelyReferenced_nonNull_native();
          *(v6 + 104) = v206;
          if ((v215 & 1) == 0)
          {
            v206 = specialized _ArrayBuffer._consumeAndCreateNew()(v206);
          }

          if (i >= *(v206 + 2))
          {
            goto LABEL_535;
          }

          v216 = &v206[v32];
          v217 = v606;
          *(v216 - 7) = v606;
          v218 = v625;
          *(v216 - 3) = v624;
          *(v216 - 4) = v218;
          *(v216 - 3) = v217;
          v219 = v617;
          *v216 = v618;
          *(v216 - 1) = v219;
          *(v6 + 104) = v206;
          goto LABEL_208;
        }

        goto LABEL_224;
      }

      if (v214 < v3)
      {
        v16 = *&v206[v32 - 48];
        v224 = *&v206[v32 - 40];
        v225 = v6;
        v6 = *&v206[v32 - 32];
        v624 = v658;
        *&v625 = v659;
        v226 = swift_isUniquelyReferenced_nonNull_native();
        *(v225 + 104) = v206;
        if ((v226 & 1) == 0)
        {
          v206 = specialized _ArrayBuffer._consumeAndCreateNew()(v206);
        }

        v3 = v611;
        if (i >= *(v206 + 2))
        {
          goto LABEL_536;
        }

        v208 = &v206[v32];
        *(v208 - 7) = v210;
        *(v208 - 6) = v16;
        *(v208 - 5) = v224;
        *(v208 - 4) = v6;
        *(v208 - 3) = v606;
        v209 = v624;
        *v208 = v625;
        *(v208 - 1) = v209;
        v6 = v613;
        v613[13] = v206;
        v16 = v610;
      }

LABEL_208:
      ++i;
      v32 += 64;
      if (v16 == i)
      {
        goto LABEL_233;
      }
    }

    if (!v212)
    {
      goto LABEL_208;
    }

LABEL_224:
    v220 = *&v206[v32 - 16];
    v3 = *&v206[v32 - 8];
    v16 = *&v206[v32];
    v624 = v656;
    *&v625 = v657;
    v221 = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 104) = v206;
    if ((v221 & 1) == 0)
    {
      v206 = specialized _ArrayBuffer._consumeAndCreateNew()(v206);
    }

    if (i >= *(v206 + 2))
    {
      goto LABEL_519;
    }

    v222 = &v206[v32];
    *(v222 - 7) = v609;
    v223 = v625;
    *(v222 - 3) = v624;
    *(v222 - 4) = v223;
    *(v222 - 3) = v213;
    *(v222 - 2) = v220;
    *(v222 - 1) = v3;
    *v222 = v16;
    v6 = v613;
    v613[13] = v206;
    v16 = v610;
    v3 = v611;
    goto LABEL_208;
  }

LABEL_233:
  v227 = *(v6 + 24);
  v610 = *(v6 + 32);
  v228 = *(v6 + 40);
  v229 = *(v6 + 48);
  v230 = *(v6 + 56);
  v231 = *(v6 + 64);
  v714[0] = v227;
  v714[1] = v610;
  v714[2] = v228;
  v714[3] = v229;
  v714[4] = v230;
  v714[5] = v231;
  *&v611 = BigString.UTF8View.count.getter();
  v232 = v604;
  v233 = *(v604 + 24);
  v627 = *(v604 + 8);
  v628 = v233;
  v234 = *(v604 + 56);
  v629 = *(v604 + 40);
  v630 = v234;
  *&v624 = v227;
  *(&v624 + 1) = v610;
  *&v625 = v228;
  *(&v625 + 1) = v229;
  *&v626 = v230;
  *(&v626 + 1) = v231;
  swift_unknownObjectRetain();
  BigString.init()();
  v235 = v646;
  *(v6 + 24) = v645;
  *(v6 + 40) = v235;
  *(v6 + 56) = v647;
  swift_unknownObjectRelease();
  i = &_ss15EmptyCollectionVys7UnicodeO6ScalarVGMR;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15EmptyCollectionVys7UnicodeO6ScalarVGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type EmptyCollection<Unicode.Scalar> and conformance EmptyCollection<A>, &_ss15EmptyCollectionVys7UnicodeO6ScalarVGMd);
  BigSubstring.UnicodeScalarView.replaceSubrange<A>(_:with:)();
  *(v6 + 24) = v624;
  *(v6 + 40) = v625;
  *(v6 + 56) = v626;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v236 = v628;
  *(v232 + 8) = v627;
  *(v232 + 24) = v236;
  v237 = v630;
  *(v232 + 40) = v629;
  *(v232 + 56) = v237;
  v18 = v611;
  v713[0] = *(v6 + 24);
  v713[1] = *(v6 + 40);
  v713[2] = *(v6 + 56);
  v16 = v713;
  v238 = BigString.UTF8View.count.getter();
  v239 = v238 - v18;
  if (__OFSUB__(v238, v18))
  {
    goto LABEL_541;
  }

  if (__OFADD__(v602 - v612, v239))
  {
    goto LABEL_542;
  }

  i = MEMORY[0x1E69E7CD0];
  v6 = v613;
  specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v612, v602, v602 - v612 + v239, v603, MEMORY[0x1E69E7CD0]);

  v712[0] = *(v6 + 24);
  v712[1] = *(v6 + 40);
  v712[2] = *(v6 + 56);
  v16 = v712;
  v240 = BigString.UTF8View.count.getter();
  v32 = v240 - v18;
  if (__OFSUB__(v240, v18))
  {
    goto LABEL_543;
  }

  v16 = *(v6 + 104);
  v241 = specialized Array.count.getter(v16);
  if (v241 < 0)
  {
    goto LABEL_544;
  }

  if (v241)
  {
    v242 = 0;
    i = 88;
    v243 = v612;
    v604 = v32;
    v601 = v241;
    do
    {
      if (v242 >= *(v16 + 16))
      {
        goto LABEL_457;
      }

      v607 = i;
      v608 = v242;
      v244 = *(v16 + i - 56);
      v3 = *(v16 + i - 48);
      v606 = *(v16 + i - 24);
      v603 = *(v16 + i - 16);
      v245 = *(v16 + i - 8);
      v609 = *(v16 + i);
      v610 = v245;
      v246 = v244 >> 11;
      if (v243 >= v244 >> 11)
      {
        v18 = v604;
        if (v602 != v243 || (v246 == v243 ? (v247 = v604 == 0) : (v247 = 1), v247))
        {
LABEL_250:
          v703 = *(v6 + 24);
          v704 = *(v6 + 40);
          v705 = *(v6 + 56);
          i = v703;
          swift_unknownObjectRetain();
          v250 = BigString.UTF8View.index(_:offsetBy:)();
          v3 = v255;
          v253 = v256;
          v16 = v257;
          swift_unknownObjectRelease();
          v32 = v18;
          goto LABEL_251;
        }
      }

      else
      {
        v18 = v604;
        if (!v604)
        {
          goto LABEL_250;
        }
      }

      v248 = *(v6 + 24);
      v710 = *(v6 + 40);
      v711 = *(v6 + 56);
      v709 = v248;
      v706 = *(v6 + 24);
      v707 = *(v6 + 40);
      v708 = *(v6 + 56);
      v16 = &v709;
      v6 = &v617;
      BigString.startIndex.getter();
      if (__OFADD__(v246, v18))
      {
        __break(1u);
LABEL_508:
        __break(1u);
LABEL_509:
        __break(1u);
LABEL_510:
        __break(1u);
LABEL_511:
        __break(1u);
LABEL_512:
        __break(1u);
LABEL_513:
        __break(1u);
LABEL_514:
        __break(1u);
LABEL_515:
        __break(1u);
LABEL_516:
        __break(1u);
        goto LABEL_517;
      }

      i = v249;
      v32 = v18;
      v727[0] = v709;
      v727[1] = v710;
      v728 = v711;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v727, &v617);
      v250 = BigString.UTF8View.index(_:offsetBy:)();
      v3 = v251;
      v253 = v252;
      v16 = v254;
      outlined destroy of BigString(&v709);
      v6 = v613;
LABEL_251:
      v18 = v606;
      v258 = v606 >> 11;
      *&v611 = v16;
      if (v612 >= v606 >> 11)
      {
        v264 = *(v6 + 104);
        if (v608 >= *(v264 + 16))
        {
          goto LABEL_514;
        }

        if ((*(v607 + v264 - 56) ^ v250) >= 0x400 && v32 != 0)
        {
LABEL_253:
          v605 = v253;
          v259 = *(v6 + 24);
          v701 = *(v6 + 40);
          v702 = *(v6 + 56);
          v700 = v259;
          v699[6] = *(v6 + 24);
          v699[7] = *(v6 + 40);
          v699[8] = *(v6 + 56);
          v16 = &v700;
          BigString.startIndex.getter();
          if (__OFADD__(v258, v32))
          {
            goto LABEL_508;
          }

          v729[0] = v700;
          v729[1] = v701;
          v730 = v702;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v729, &v617);
          v18 = BigString.UTF8View.index(_:offsetBy:)();
          v261 = v260;
          v609 = v263;
          v610 = v262;
          outlined destroy of BigString(&v700);
          v6 = v613;
          v32 = v604;
          goto LABEL_262;
        }
      }

      else if (v32)
      {
        goto LABEL_253;
      }

      v699[3] = *(v6 + 24);
      v699[4] = *(v6 + 40);
      v699[5] = *(v6 + 56);
      swift_unknownObjectRetain();
      v250 = BigString.UTF8View.index(_:offsetBy:)();
      v3 = v266;
      v605 = v267;
      *&v611 = v268;
      swift_unknownObjectRelease();
      v261 = v603;
LABEL_262:
      v16 = *(v6 + 104);
      v269 = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 104) = v16;
      v271 = v607;
      v270 = v608;
      if ((v269 & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      }

      v243 = v612;
      if (v270 >= *(v16 + 16))
      {
        goto LABEL_458;
      }

      v242 = (v270 + 1);
      v272 = (v271 + v16);
      *(v272 - 7) = v250;
      *(v272 - 6) = v3;
      *(v272 - 5) = v605;
      *(v272 - 4) = v611;
      *(v272 - 3) = v18;
      v273 = v610;
      *(v272 - 2) = v261;
      *(v272 - 1) = v273;
      *v272 = v609;
      i = (v271 + 8);
      *(v6 + 104) = v16;
    }

    while (v601 != v242);
  }

  if (__OFADD__(v600, v32))
  {
    goto LABEL_545;
  }

  if (v600 + v32 < v590)
  {
    goto LABEL_546;
  }

  v586 = v600 + v32;
  v274 = *(v6 + 80);
  v275 = *(v6 + 88);
  v276 = swift_unknownObjectRetain();
  LOBYTE(v274) = specialized Collection.isEmpty.getter(v276, v274, v275);
  swift_unknownObjectRelease();
  if (v274)
  {
    goto LABEL_269;
  }

  v278 = *(v6 + 24);
  v699[1] = *(v6 + 40);
  v699[2] = *(v6 + 56);
  v699[0] = v278;
  v696 = *(v6 + 24);
  v697 = *(v6 + 40);
  v698 = *(v6 + 56);
  v279 = *(v6 + 24);
  v731[1] = *(v6 + 40);
  v732 = *(v6 + 56);
  v731[0] = v279;
  BigString.startIndex.getter();
  i = v280;
  v3 = v281;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v731, &v617);
  v282 = v590;
  v283 = BigString.UTF8View.index(_:offsetBy:)();
  v285 = v284;
  v287 = v286;
  v289 = v288;
  outlined destroy of BigString(v699);
  v693 = *(v6 + 24);
  v694 = *(v6 + 40);
  v695 = *(v6 + 56);
  if (__OFSUB__(v586, v282))
  {
    goto LABEL_564;
  }

  swift_unknownObjectRetain();
  v290 = BigString.UTF8View.index(_:offsetBy:)();
  v581 = v291;
  v582 = v290;
  v579 = v293;
  v580 = v292;
  swift_unknownObjectRelease();
  v585 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySnySiGGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v690 = *(v6 + 24);
  v691 = *(v6 + 40);
  v692 = *(v6 + 56);
  swift_unknownObjectRetain();
  v577 = v285;
  v578 = v283;
  v575 = v287;
  v576 = v289;
  v294 = BigString.UnicodeScalarView.index(roundingDown:)();
  v182 = v295;
  v297 = v296;
  v583 = v298;
  swift_unknownObjectRelease();
  v687 = *(v6 + 24);
  v688 = *(v6 + 40);
  v689 = *(v6 + 56);
  v3 = v581;
  swift_unknownObjectRetain();
  v299 = BigString.UnicodeScalarView.index(roundingUp:)();
  v183 = v294;
  swift_unknownObjectRelease();
  i = v294 >> 11;
  if (v299 >> 11 < i)
  {
LABEL_565:
    __break(1u);
    goto LABEL_566;
  }

  v594 = v297;
  v605 = v299 >> 11;
  v300 = *(v6 + 72);
  v301 = *(v6 + 80);
  v302 = *(v6 + 88);
  v3 = *(v6 + 96);
  swift_unknownObjectRetain();
  swift_retain_n();
  v601 = i;
  if (specialized Rope.find<A>(at:in:preferEnd:)(i, 0, v300, v301, v302, v3) != v3)
  {
LABEL_566:
    __break(1u);
LABEL_567:
    __break(1u);
LABEL_568:
    __break(1u);
LABEL_569:
    v380 = swift_slowAlloc();

    v569 = v595;
    _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v380, i, v3, closure #1 in AttributedString._AttributeStorage.attributesForAddedText());
    v595 = v569;
    if (!v569)
    {
      i = v570;

      MEMORY[0x1865D2690](v380, -1, -1);
      v16 = i;
      goto LABEL_36;
    }

    goto LABEL_588;
  }

  v181 = v305;
  v603 = v303;
  v604 = v3;
  v602 = v304;
  if (!v300)
  {
    goto LABEL_278;
  }

  v600 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v3, v303, v304, v300, v301);
  swift_unknownObjectRelease();
LABEL_279:
  v306 = v183;

  v3 = v601;
  if (__OFSUB__(v601, v181))
  {
    goto LABEL_567;
  }

  v608 = &v601[-v181];
  v589 = v585;
LABEL_281:
  v18 = v182;
  v599 = v594;
  v597 = v306;
  v598 = v583;
  while (1)
  {
    v307 = *(v6 + 72);
    v308 = *(v6 + 80);
    v16 = *(v6 + 88);
    v309 = *(v6 + 96);
    swift_unknownObjectRetain();
    if (v3 == v605)
    {
      if (specialized Rope.find<A>(at:in:preferEnd:)(v3, 0, v307, v308, v16, v309) != v309)
      {
        goto LABEL_520;
      }

      i = v312;
      if (v307)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v309, v310, v311, v307, v308);
        swift_unknownObjectRelease();
      }

      v16 = &v3[-i];
      if (__OFSUB__(v3, i))
      {
        goto LABEL_521;
      }
    }

    else
    {
      specialized Rope._endPath.getter(v307);
      if (v307)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
      }
    }

    if (v608 == v16)
    {
      break;
    }

    v313 = *(v6 + 72);
    v314 = *(v6 + 80);
    v315 = *(v6 + 88);
    v316 = *(v6 + 96);
    swift_unknownObjectRetain();
    v317 = v603;
    v3 = v604;
    v318 = v602;
    specialized Rope.subscript.getter(v604, v603, v602, v313, v314, v315, v316);
    v607 = v319;
    v593 = v320;
    swift_unknownObjectRelease();
    v16 = *(v6 + 72);
    v321 = *(v6 + 80);
    v322 = *(v6 + 88);
    v323 = *(v6 + 96);
    swift_unknownObjectRetain();
    v324 = specialized Rope.subscript.getter(v3, v317, v318, v16, v321, v322, v323);
    i = v325;
    swift_unknownObjectRelease();

    v326 = (v608 + v324);
    if (__OFADD__(v608, v324))
    {
      goto LABEL_509;
    }

    if (v605 >= v608)
    {
      v327 = v608;
    }

    else
    {
      v327 = v605;
    }

    if (v608 < v601)
    {
      v327 = v601;
    }

    if (v326 <= v601)
    {
      v328 = v601;
    }

    else
    {
      v328 = (v608 + v324);
    }

    if (v605 >= v326)
    {
      v329 = v328;
    }

    else
    {
      v329 = v605;
    }

    if (v327 == v329)
    {
      goto LABEL_510;
    }

    if (__OFSUB__(v329, v327))
    {
      goto LABEL_511;
    }

    v596 = v18;
    v16 = *(v6 + 72);
    v330 = *(v6 + 80);
    v332 = *(v6 + 88);
    v331 = *(v6 + 96);
    v3 = v603;
    i = v604;
    *&v617 = v604;
    *(&v617 + 1) = v603;
    v18 = v602;
    *&v618 = v602;
    if (__OFADD__(v600, 1))
    {
      goto LABEL_512;
    }

    v600 = (v600 + 1);
    swift_unknownObjectRetain();
    i = specialized Rope.subscript.getter(i, v3, v18, v16, v330, v332, v331);
    v3 = v333;

    if (__OFADD__(v608, i))
    {
      goto LABEL_513;
    }

    v608 += i;
    specialized Rope.formIndex(after:)(&v617, v16, v330, v332, v331);
    swift_unknownObjectRelease();
    i = v605;
    if (v608 >= v605)
    {
      v16 = *(v6 + 72);
      v334 = *(v6 + 80);
      v335 = *(v6 + 88);
      v3 = *(v6 + 96);
      swift_unknownObjectRetain();
      v18 = v596;
      v604 = v3;
      if (v601 == i)
      {
        if (specialized Rope.find<A>(at:in:preferEnd:)(v601, 0, v16, v334, v335, v3) != v3)
        {
          goto LABEL_533;
        }

        i = v338;
        v602 = v337;
        v603 = v336;
        if (v16)
        {
          v600 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v3, v336, v337, v16, v334);
          swift_unknownObjectRelease();
        }

        else
        {
          v600 = 0;
        }

        if (__OFSUB__(v601, i))
        {
          goto LABEL_534;
        }

        v608 = &v601[-i];
      }

      else
      {
        v600 = v334;
        v608 = v335;
        v603 = specialized Rope._endPath.getter(v16);
        if (v16)
        {
          swift_unknownObjectRelease();
          v602 = 0;
        }

        else
        {
          v602 = 0;
          v600 = 0;
          v608 = 0;
        }
      }
    }

    else
    {
      v603 = *(&v617 + 1);
      v604 = v617;
      v602 = v618;
    }

    v684 = *(v6 + 24);
    v685 = *(v6 + 40);
    v686 = *(v6 + 56);
    swift_unknownObjectRetain();
    v339 = v597;
    v340 = BigString.UTF8View.index(_:offsetBy:)();
    v18 = v341;
    v594 = v342;
    v344 = v343;
    swift_unknownObjectRelease();
    v345 = v607;

    i = v593;

    v346 = v595;
    v347 = specialized Sequence.contains(where:)(v345);
    v595 = v346;

    if ((v347 & 1) != 0 && v340 >> 10 > v339 >> 10)
    {
      v573 = v340;
      v574 = v18;
      v583 = v344;
      v584 = v340 >> 10;
      v606 = v345 + 64;
LABEL_326:
      v681 = *(v6 + 24);
      v682 = *(v6 + 40);
      v683 = *(v6 + 56);
      swift_unknownObjectRetain();
      v591 = BigString.UnicodeScalarView.subscript.getter();
      swift_unknownObjectRelease();
      v348 = *(v6 + 40);
      v678 = *(v6 + 24);
      v679 = v348;
      v680 = *(v6 + 56);
      swift_unknownObjectRetain();
      v16 = BigString.UnicodeScalarView.index(after:)();
      v596 = v349;
      v598 = v351;
      v599 = v350;
      swift_unknownObjectRelease();
      v352 = 1 << *(v345 + 32);
      v353 = *(v345 + 64);
      v592 = (v352 + 63) >> 6;
      if (v352 < 64)
      {
        v354 = ~(-1 << v352);
      }

      else
      {
        v354 = -1;
      }

      v18 = v354 & v353;
      v597 = v16;
      v587 = v16 >> 11;
      v588 = v339 >> 11;

      v6 = 0;
      v355 = v606;
      if (!v18)
      {
LABEL_333:
        if (v592 <= v6 + 1)
        {
          v357 = v6 + 1;
        }

        else
        {
          v357 = v592;
        }

        v358 = v357 - 1;
        while (1)
        {
          v356 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v356 >= v592)
          {
            v373 = 0;
            v369 = 0;
            v372 = 0;
            v370 = 0;
            v371 = 0;
            v364 = 0;
            v365 = 0;
            v366 = 0;
            v367 = 0;
            i = 0;
            v368 = 0;
            v18 = 0;
            v6 = v358;
            goto LABEL_342;
          }

          v18 = *(v355 + 8 * v356);
          ++v6;
          if (v18)
          {
            v6 = v356;
            goto LABEL_341;
          }
        }

        __break(1u);
LABEL_422:

        v614 = 1;
        v445 = v16 >> 10;
        v18 = v582 >> 10;
        if (v16 >> 10 == v582 >> 10)
        {
          v446 = *(v6 + 40);
          v640 = *(v6 + 24);
          v641 = v446;
          v642 = *(v6 + 56);
          if (v445 <= BigString.startIndex.getter() >> 10 || v445 >= BigString.endIndex.getter() >> 10)
          {
            goto LABEL_269;
          }

          if (!__OFSUB__(v590, 1))
          {
            if ((AttributedString.Guts._needsParagraphFixing(from:to:)(v590 - 1, v590) & 1) == 0)
            {
              goto LABEL_269;
            }

            v447 = *(v6 + 24);
            v448 = *(v6 + 56);
            v676 = *(v6 + 40);
            v677 = v448;
            v675 = v447;
            v449 = *(v6 + 24);
            v450 = *(v6 + 40);
            *&v665 = *(v6 + 56);
            v663 = v449;
            v664 = v450;
            outlined init with copy of Rope<BigString._Chunk>._Node?(&v663, &v617);
            v451 = BigString.index(before:)();
            v453 = v452;
            v455 = v454;
            v457 = v456;
            outlined destroy of BigString(&v675);
            v612 = *(v6 + 24);
            v458 = *(v6 + 40);
            v669 = v612;
            v670 = v458;
            v671 = *(v6 + 56);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd);
            v459 = swift_allocObject();
            v460 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v459, 1);
            *v461 = 2;
            v462 = _NSBundleDeallocatingImmortalBundle(v460, v461);
            *&v611 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n(v462);
            swift_unknownObjectRetain();

            v463 = *(v6 + 24);
            v464 = *(v6 + 56);
            v673 = *(v6 + 40);
            v674 = v464;
            v672 = v463;
            v465 = *(v6 + 24);
            v466 = *(v6 + 40);
            *&v668 = *(v6 + 56);
            v666 = v465;
            v667 = v466;
            outlined init with copy of Rope<BigString._Chunk>._Node?(&v666, &v617);
            v467 = v451;
            v468 = v453;
            v469 = v455;
            v470 = BigString.index(after:)();
            v472 = v471;
            v474 = v473;
            v476 = v475;
            outlined destroy of BigString(&v672);
            v477 = v467;
            v478 = v467 >> 10;
            if (v478 > v470 >> 10)
            {
              goto LABEL_581;
            }

            *&v612 = v477;
            *&v631 = v477;
            *(&v631 + 1) = v468;
            v632 = v469;
            v633 = v457;
            v634 = v470;
            v635 = v472;
            v636 = v474;
            v637 = v476;
            v380 = &v669;
            specialized BidirectionalCollection<>._getBlock(for:in:)(v611, &v631, &v617);
            swift_unknownObjectRelease();
            if (*(&v620 + 1) != 2)
            {
              v6 = v613;
              if (v478 <= v619 >> 10)
              {
                LOBYTE(i) = 0;
                v479 = 0;
                v480 = 0;
                v481 = 0;
                v614 = 0;
                v32 = v612 >> 11;
                v3 = (v619 >> 11);
                goto LABEL_466;
              }

              goto LABEL_582;
            }

            goto LABEL_586;
          }

          goto LABEL_576;
        }

        v482 = *(v6 + 40);
        v675 = *(v6 + 24);
        v676 = v482;
        v677 = *(v6 + 56);
        if (v445 <= BigString.startIndex.getter() >> 10)
        {
          goto LABEL_441;
        }

        if (__OFSUB__(v590, 1))
        {
          goto LABEL_575;
        }

        if ((AttributedString.Guts._needsParagraphFixing(from:to:)(v590 - 1, v590) & 1) == 0)
        {
          goto LABEL_441;
        }

        v483 = *(v6 + 24);
        v484 = *(v6 + 56);
        v673 = *(v6 + 40);
        v674 = v484;
        v672 = v483;
        v485 = *(v6 + 24);
        v733[1] = *(v6 + 40);
        v734 = *(v6 + 56);
        v733[0] = v485;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v733, &v617);
        v486 = BigString.index(before:)();
        v488 = v487;
        v490 = v489;
        *&v612 = v491;
        outlined destroy of BigString(&v672);
        v611 = *(v6 + 24);
        v492 = *(v6 + 40);
        v666 = v611;
        v667 = v492;
        v668 = *(v6 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd);
        v493 = swift_allocObject();
        v494 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v493, 1);
        *v495 = 2;
        v496 = _NSBundleDeallocatingImmortalBundle(v494, v495);
        v610 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n(v496);
        swift_unknownObjectRetain();

        v497 = *(v6 + 24);
        v498 = *(v6 + 56);
        v670 = *(v6 + 40);
        v671 = v498;
        v669 = v497;
        v499 = *(v6 + 24);
        v735[1] = *(v6 + 40);
        v736 = *(v6 + 56);
        v735[0] = v499;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v735, &v617);
        v500 = v490;
        v501 = BigString.index(after:)();
        v503 = v502;
        v505 = v504;
        v507 = v506;
        outlined destroy of BigString(&v669);
        if (v486 >> 10 > v501 >> 10)
        {
LABEL_577:
          __break(1u);
        }

        else
        {
          v609 = v486;
          *&v631 = v486;
          *(&v631 + 1) = v488;
          v632 = v500;
          v633 = v612;
          v634 = v501;
          v635 = v503;
          v636 = v505;
          v637 = v507;
          v380 = &v666;
          specialized BidirectionalCollection<>._getBlock(for:in:)(v610, &v631, &v617);
          swift_unknownObjectRelease();
          if (*(&v620 + 1) == 2)
          {
            __break(1u);
            goto LABEL_585;
          }

          v6 = v613;
          if (v486 >> 10 <= v619 >> 10)
          {
            LOBYTE(i) = 0;
            v32 = v609 >> 11;
            v3 = (v619 >> 11);
            v614 = 0;
            goto LABEL_442;
          }
        }

        __break(1u);
        goto LABEL_579;
      }

      while (1)
      {
LABEL_332:
        v356 = v6;
LABEL_341:
        v359 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v360 = v359 | (v356 << 6);
        v361 = v607[7];
        v362 = (v607[6] + 16 * v360);
        v363 = v362[1];
        *&v612 = *v362;
        outlined init with copy of AttributedString._AttributeValue(v361 + 72 * v360, &v631);
        v610 = *(&v631 + 1);
        *&v611 = v631;
        v609 = v632;
        v364 = v633;
        v365 = v634;
        v366 = v635;
        v367 = v636;
        i = v637;
        v16 = v638;

        v368 = v16;
        v369 = v363;
        v371 = v609;
        v370 = v610;
        v372 = v611;
        v373 = v612;
LABEL_342:
        *&v617 = v373;
        *(&v617 + 1) = v369;
        *&v618 = v372;
        *(&v618 + 1) = v370;
        *&v619 = v371;
        *(&v619 + 1) = v364;
        *&v620 = v365;
        *(&v620 + 1) = v366;
        *&v621 = v367;
        *(&v621 + 1) = i;
        *&v622 = v368;
        if (!v369)
        {
          v345 = v607;

          v339 = v597;
          v6 = v613;
          if (v584 > v597 >> 10)
          {
            goto LABEL_326;
          }

          v3 = v601;
          v306 = v573;
          v182 = v574;
          goto LABEL_281;
        }

        v3 = v369;
        outlined copy of AttributedString.AttributeRunBoundaries?(v366, v367);
        outlined destroy of AttributedString._AttributeValue(&v618);
        if (v367 >= 2)
        {
          i = specialized Collection.first.getter(v366, v367);
          outlined consume of AttributedString.AttributeRunBoundaries?(v366, v367);
          if ((i & 0x100000000) == 0 && v591 != i)
          {
            break;
          }
        }

        v355 = v606;
        if (!v18)
        {
          goto LABEL_333;
        }
      }

      if (v587 < v588)
      {
        goto LABEL_553;
      }

      v16 = v585;
      i = swift_isUniquelyReferenced_nonNull_native();
      *&v631 = v16;
      v375 = specialized __RawDictionaryStorage.find<A>(_:)(v373, v3);
      v376 = *(v16 + 16);
      v377 = (v374 & 1) == 0;
      v378 = v376 + v377;
      if (__OFADD__(v376, v377))
      {
        goto LABEL_554;
      }

      v379 = v374;
      if (*(v16 + 24) >= v378)
      {
        if (i)
        {
          v589 = v16;
          if (v374)
          {
            goto LABEL_351;
          }
        }

        else
        {
          LODWORD(v611) = v374;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySnySiGGGMd);
          v589 = static _DictionaryStorage.copy(original:)();
          if (*(v16 + 16))
          {
            v388 = (v589 + 64);
            v389 = v585 + 8;
            v390 = ((1 << *(v589 + 32)) + 63) >> 6;
            if (v589 != v585 || v388 >= &v389[v390])
            {
              memmove(v388, v585 + 8, 8 * v390);
            }

            v391 = 0;
            v392 = v585;
            *(v589 + 16) = v585[2];
            v393 = 1 << *(v392 + 32);
            v394 = v392[8];
            if (v393 < 64)
            {
              v395 = ~(-1 << v393);
            }

            else
            {
              v395 = -1;
            }

            v396 = v395 & v394;
            v397 = (v393 + 63) >> 6;
            if (!v396)
            {
              goto LABEL_368;
            }

            while (1)
            {
              v398 = __clz(__rbit64(v396));
              for (*&v612 = (v396 - 1) & v396; ; *&v612 = (v400 - 1) & v400)
              {
                v401 = v398 | (v391 << 6);
                v402 = (v585[6] + 16 * v401);
                v403 = v402[1];
                i = *(v585[7] + 8 * v401);
                v404 = v589;
                v405 = (*(v589 + 48) + 16 * v401);
                *v405 = *v402;
                v405[1] = v403;
                *(*(v404 + 56) + 8 * v401) = i;

                v396 = v612;
                if (v612)
                {
                  break;
                }

LABEL_368:
                v399 = v391;
                do
                {
                  v391 = v399 + 1;
                  if (__OFADD__(v399, 1))
                  {
                    goto LABEL_583;
                  }

                  if (v391 >= v397)
                  {
                    goto LABEL_375;
                  }

                  v400 = v389[v391];
                  ++v399;
                }

                while (!v400);
                v398 = __clz(__rbit64(v400));
              }
            }
          }

LABEL_375:

          if (v611)
          {
            goto LABEL_351;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v378, i);
        v380 = v631;
        v589 = v631;
        v381 = specialized __RawDictionaryStorage.find<A>(_:)(v373, v3);
        if ((v379 & 1) != (v382 & 1))
        {
          goto LABEL_587;
        }

        v375 = v381;
        if (v379)
        {
LABEL_351:

          v383 = v589;
          goto LABEL_357;
        }
      }

      v383 = v589;
      *(v589 + 8 * (v375 >> 6) + 64) |= 1 << v375;
      v384 = (v383[6] + 16 * v375);
      *v384 = v373;
      v384[1] = v3;
      *(v383[7] + 8 * v375) = MEMORY[0x1E69E7CC0];
      v385 = v383[2];
      v45 = __OFADD__(v385, 1);
      v386 = v385 + 1;
      if (v45)
      {
        goto LABEL_568;
      }

      v383[2] = v386;
LABEL_357:
      v387 = v383;
      v16 = v383[7] + 8 * v375;
      Array<A>._extend(with:)(v588, v587);
      v585 = v387;
      v355 = v606;
      if (!v18)
      {
        goto LABEL_333;
      }

      goto LABEL_332;
    }

    v597 = v340;
    v598 = v344;
    v599 = v594;
    v3 = v601;
  }

  v406 = 0;
  v407 = v589 + 64;
  v408 = 1 << *(v589 + 32);
  v409 = -1;
  if (v408 < 64)
  {
    v409 = ~(-1 << v408);
  }

  v410 = v409 & *(v589 + 64);
  v411 = (v408 + 63) >> 6;
  v16 = v578;
  do
  {
LABEL_381:
    if (!v410)
    {
      do
      {
        v412 = v406 + 1;
        if (__OFADD__(v406, 1))
        {
          goto LABEL_530;
        }

        if (v412 >= v411)
        {
          goto LABEL_422;
        }

        v410 = *(v407 + 8 * v412);
        ++v406;
      }

      while (!v410);
      v406 = v412;
    }

    v413 = __clz(__rbit64(v410));
    v410 &= v410 - 1;
    v414 = v413 | (v406 << 6);
    v415 = *(*(v589 + 56) + 8 * v414);
    v607 = *(v415 + 16);
  }

  while (!v607);
  v602 = v410;
  v603 = v411;
  v604 = v406;
  v605 = v407;
  v416 = (*(v589 + 48) + 16 * v414);
  v417 = v416[1];
  v610 = *v416;
  v608 = v415 + 32;
  v418 = v415;

  v419 = v418;
  v420 = 0;
  v606 = v419;
  while (2)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v420, 1, v419);
    v421 = (v608 + 16 * v420);
    v32 = *v421;
    v422 = v421[1];
    v609 = v420 + 1;

    AttributedString._InternalRunsSlice.startIndex.getter(v6, v32, v648);
    v423 = v649;
    v617 = v648[0];
    v618 = v648[1];
    *&v619 = v649;
    *&v612 = v422;
    *&v611 = v32;
LABEL_392:
    v425 = *(v6 + 72);
    if (v32 == v422)
    {
      i = *(v6 + 80);
      v18 = *(v6 + 88);
      v426 = *(v6 + 96);
      swift_unknownObjectRetain();
      if (specialized Rope.find<A>(at:in:preferEnd:)(v32, 0, v425, i, v18, v426) != v426)
      {
        __break(1u);
LABEL_447:
        __break(1u);
        goto LABEL_448;
      }

      v3 = v429;
      if (v425)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v426, v427, v428, v425, i);
        swift_unknownObjectRelease();
      }

      v430 = v32 - v3;
      if (__OFSUB__(v32, v3))
      {
        goto LABEL_447;
      }

      v422 = v612;
    }

    else if (v425)
    {
      v430 = *(v6 + 88);
    }

    else
    {
      v430 = 0;
    }

    if (v423 >= v430)
    {

      v419 = v606;
      v420 = v609;
      if (v609 == v607)
      {

        v16 = v578;
        v406 = v604;
        v407 = v605;
        v410 = v602;
        v411 = v603;
        goto LABEL_381;
      }

      continue;
    }

    break;
  }

  specialized AttributedString.Guts.updateRun(at:within:with:)(&v617, v32, v422, v6, v610, v417);
  v32 = v417;

  i = *(&v617 + 1);
  v431 = v617;
  v432 = v619;
  v433 = v6;
  v6 = *(v6 + 72);
  v3 = v433[10];
  v18 = v433[11];
  v434 = v433[12];
  v631 = v617;
  v632 = v618;
  v435 = *(&v618 + 1) + 1;
  if (__OFADD__(*(&v618 + 1), 1))
  {
    __break(1u);
LABEL_439:
    __break(1u);
LABEL_440:
    __break(1u);
LABEL_441:
    v32 = 0;
    v3 = 0;
    LOBYTE(i) = 1;
LABEL_442:
    v508 = *(v6 + 40);
    v663 = *(v6 + 24);
    v664 = v508;
    v665 = *(v6 + 56);
    if (v18 >= BigString.endIndex.getter() >> 10)
    {
      goto LABEL_465;
    }

    if (i)
    {
      if (v586 < 1)
      {
        goto LABEL_269;
      }

LABEL_449:
      if ((AttributedString.Guts._needsParagraphFixing(from:to:)(v586 - 1, v586) & 1) == 0)
      {
        goto LABEL_465;
      }

      v609 = v3;
      v610 = v32;
      v509 = *(v6 + 24);
      v510 = *(v6 + 56);
      v662[1] = *(v6 + 40);
      v662[2] = v510;
      v662[0] = v509;
      v511 = *(v6 + 24);
      v737[1] = *(v6 + 40);
      v738 = *(v6 + 56);
      v737[0] = v511;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v737, &v617);
      v512 = BigString.index(before:)();
      v514 = v513;
      v516 = v515;
      v518 = v517;
      outlined destroy of BigString(v662);
      v612 = *(v6 + 24);
      v519 = *(v6 + 40);
      v660[0] = v612;
      v660[1] = v519;
      v660[2] = *(v6 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE22_BlockSearchingOptionsVGMd);
      v520 = swift_allocObject();
      v521 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(v520, 1);
      *v522 = 2;
      v523 = _NSBundleDeallocatingImmortalBundle(v521, v522);
      *&v611 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n(v523);
      swift_unknownObjectRetain();

      v524 = *(v6 + 24);
      v525 = *(v6 + 56);
      v661[1] = *(v6 + 40);
      v661[2] = v525;
      v661[0] = v524;
      v526 = *(v6 + 24);
      v739[1] = *(v6 + 40);
      v740 = *(v6 + 56);
      v739[0] = v526;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v739, &v617);
      v527 = v514;
      v528 = BigString.index(after:)();
      v530 = v529;
      v532 = v531;
      v534 = v533;
      outlined destroy of BigString(v661);
      if (v512 >> 10 <= v528 >> 10)
      {
        v608 = v512;
        *&v640 = v512;
        *(&v640 + 1) = v527;
        *&v641 = v516;
        *(&v641 + 1) = v518;
        *&v642 = v528;
        *(&v642 + 1) = v530;
        v643 = v532;
        v644 = v534;
        v380 = v660;
        specialized BidirectionalCollection<>._getBlock(for:in:)(v611, &v640, &v617);
        swift_unknownObjectRelease();
        if (*(&v620 + 1) != 2)
        {
          v6 = v613;
          v3 = v609;
          if (v512 >> 10 <= v619 >> 10)
          {
            v479 = v608 >> 11;
            v480 = v619 >> 11;
            v481 = 1;
            LOBYTE(i) = v614;
            v32 = v610;
            goto LABEL_466;
          }

LABEL_580:
          __break(1u);
LABEL_581:
          __break(1u);
LABEL_582:
          __break(1u);
LABEL_583:
          __break(1u);
        }

LABEL_585:
        __break(1u);
LABEL_586:
        __break(1u);
LABEL_587:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_588:

        result = MEMORY[0x1865D2690](v380, -1, -1);
        __break(1u);
        return result;
      }

LABEL_579:
      __break(1u);
      goto LABEL_580;
    }

LABEL_448:
    if (v3 >= v586)
    {
      goto LABEL_464;
    }

    goto LABEL_449;
  }

  if (v617 != v434)
  {
    goto LABEL_439;
  }

  if (v618)
  {
    v436 = *(v618 + 24 * ((*(&v617 + 1) >> ((4 * *(v618 + 18) + 8) & 0x3C)) & 0xFLL) + 24);
    swift_unknownObjectRetain();
    v45 = __OFADD__(v432, v436);
    v423 = v432 + v436;
    if (v45)
    {
      goto LABEL_440;
    }
  }

  else
  {
    swift_unknownObjectRetain();
    v437 = specialized Rope._Node.subscript.getter(i, v6);
    i = v438;

    v45 = __OFADD__(v432, v437);
    v423 = v432 + v437;
    if (v45)
    {
      goto LABEL_440;
    }
  }

  specialized Rope.formIndex(after:)(&v631, v6, v3, v18, v431);
  swift_unknownObjectRelease();
  v422 = v612;
  if (v423 < v612)
  {
    v3 = *(&v631 + 1);
    v6 = v631;
    v424 = v632;
LABEL_391:
    *&v617 = v6;
    *(&v617 + 1) = v3;
    *&v618 = v424;
    *(&v618 + 1) = v435;
    *&v619 = v423;
    v6 = v613;
    v417 = v32;
    v32 = v611;
    goto LABEL_392;
  }

  v18 = v613[9];
  v439 = v611;
  if (v611 != v612)
  {
    v6 = v613[12];
    if (v18)
    {
      v424 = 0;
      v435 = v613[10];
      v423 = v613[11];
      v3 = (((-15 << ((4 * *(v18 + 18) + 8) & 0x3C)) - 1) & *(v18 + 18) | (*(v18 + 16) << ((4 * *(v18 + 18) + 8) & 0x3C)));
    }

    else
    {
      v3 = 0;
      v424 = 0;
      v435 = 0;
      v423 = 0;
    }

    goto LABEL_391;
  }

  i = v613[10];
  v440 = v613[11];
  v6 = v613[12];
  swift_unknownObjectRetain();
  if (specialized Rope.find<A>(at:in:preferEnd:)(v439, 0, v18, i, v440, v6) == v6)
  {
    v3 = v441;
    v424 = v442;
    v444 = v443;
    if (v18)
    {
      v435 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v6, v441, v442, v18, i);
      swift_unknownObjectRelease();
    }

    else
    {
      v435 = 0;
    }

    v423 = v611 - v444;
    if (__OFSUB__(v611, v444))
    {
      goto LABEL_455;
    }

    v422 = v612;
    goto LABEL_391;
  }

  __break(1u);
LABEL_455:
  __break(1u);
LABEL_456:
  __break(1u);
LABEL_457:
  __break(1u);
LABEL_458:
  __break(1u);
LABEL_459:
  __break(1u);
LABEL_460:
  __break(1u);
LABEL_461:
  __break(1u);
LABEL_462:
  __break(1u);
LABEL_463:
  __break(1u);
LABEL_464:
  LOBYTE(i) = 0;
LABEL_465:
  v479 = 0;
  v480 = 0;
  v481 = 0;
LABEL_466:
  v535 = v590;
  *&v612 = v480;
  if ((i & 1) != 0 || v590 >= v3)
  {
    v552 = v586;
  }

  else
  {
    LODWORD(v607) = v481;
    v608 = v479;
    v617 = 0uLL;
    v536 = AttributedString.Guts._constrainedAttributes(at:with:)(v32, &v617);
    v538 = v537;
    *&v611 = v536;

    v610 = v538;

    AttributedString._InternalRunsSlice.startIndex.getter(v6, v535, v650);
    i = v651;
    v617 = v650[0];
    v618 = v650[1];
    *&v619 = v651;
    v609 = v3;
    while (1)
    {
      v542 = *(v6 + 72);
      if (v542)
      {
        v542 = *(v6 + 88);
      }

      if (i >= v542)
      {
        break;
      }

      v543 = v611;

      specialized AttributedString.Guts.updateRun(at:within:with:)(&v617, v590, v3, v6, v543, 0, 0);

      v18 = *(&v617 + 1);
      v544 = v617;
      v16 = v619;
      v545 = v6;
      v546 = *(v6 + 72);
      v6 = *(v6 + 80);
      v548 = *(v545 + 88);
      v547 = *(v545 + 96);
      v615 = v617;
      v616 = v618;
      v549 = *(&v618 + 1) + 1;
      if (__OFADD__(*(&v618 + 1), 1))
      {
        goto LABEL_547;
      }

      if (v617 != v547)
      {
        goto LABEL_548;
      }

      if (v618)
      {
        v550 = v618 + 24 * ((*(&v617 + 1) >> ((4 * *(v618 + 18) + 8) & 0x3C)) & 0xFLL);
        v18 = *(v550 + 24);
        v3 = *(v550 + 40);
        swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v18 = specialized Rope._Node.subscript.getter(v18, v546);
        v3 = v551;
      }

      i = v16 + v18;
      if (__OFADD__(v16, v18))
      {
        goto LABEL_549;
      }

      specialized Rope.formIndex(after:)(&v615, v546, v6, v548, v544);
      swift_unknownObjectRelease();
      v3 = v609;
      if (i < v609)
      {
        v540 = *(&v615 + 1);
        v539 = v615;
        v541 = v616;
        v6 = v613;
        v480 = v612;
      }

      else
      {
        v6 = v613;
        v540 = v613[9];
        v539 = v613[12];
        v480 = v612;
        v541 = 0;
        if (v540)
        {
          v549 = v613[10];
          i = v613[11];
          v540 = ((-15 << ((4 * *(v540 + 18) + 8) & 0x3C)) - 1) & *(v540 + 18) | (*(v540 + 16) << ((4 * *(v540 + 18) + 8) & 0x3C));
        }

        else
        {
          v549 = 0;
          i = 0;
        }
      }

      *&v617 = v539;
      *(&v617 + 1) = v540;
      *&v618 = v541;
      *(&v618 + 1) = v549;
      *&v619 = i;
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v552 = v586;
    v479 = v608;
    v481 = v607;
  }

  if (v552 < v480)
  {
    v553 = v481;
  }

  else
  {
    v553 = 0;
  }

  if (v553 == 1)
  {
    v617 = 0uLL;
    v554 = AttributedString.Guts._constrainedAttributes(at:with:)(v479, &v617);
    v556 = v555;
    *&v611 = v554;

    v610 = v556;

    AttributedString._InternalRunsSlice.startIndex.getter(v6, v586, &v652);
    for (i = v655; ; v655 = i)
    {
      v560 = *(v6 + 72);
      if (v560)
      {
        v560 = *(v6 + 88);
      }

      if (i >= v560)
      {
        break;
      }

      v561 = v611;

      specialized AttributedString.Guts.updateRun(at:within:with:)(&v652, v586, v480, v6, v561, 0, 0);

      v18 = *(&v652 + 1);
      v3 = v652;
      v16 = v655;
      v562 = *(v6 + 72);
      v563 = *(v6 + 80);
      v565 = *(v6 + 88);
      v564 = *(v6 + 96);
      v617 = v652;
      *&v618 = v653;
      v566 = v654 + 1;
      if (__OFADD__(v654, 1))
      {
        goto LABEL_550;
      }

      if (v652 != v564)
      {
        goto LABEL_551;
      }

      if (v653)
      {
        v567 = v653 + 24 * ((*(&v652 + 1) >> ((4 * *(v653 + 18) + 8) & 0x3C)) & 0xFLL);
        v18 = *(v567 + 24);
        v6 = *(v567 + 40);
        swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v18 = specialized Rope._Node.subscript.getter(v18, v562);
        v6 = v568;
      }

      i = v16 + v18;
      if (__OFADD__(v16, v18))
      {
        goto LABEL_552;
      }

      specialized Rope.formIndex(after:)(&v617, v562, v563, v565, v3);
      swift_unknownObjectRelease();
      v480 = v612;
      if (i < v612)
      {
        v558 = *(&v617 + 1);
        v557 = v617;
        v559 = v618;
        v6 = v613;
      }

      else
      {
        v6 = v613;
        v558 = v613[9];
        v557 = v613[12];
        v559 = 0;
        if (v558)
        {
          v566 = v613[10];
          i = v613[11];
          v558 = ((-15 << ((4 * *(v558 + 18) + 8) & 0x3C)) - 1) & *(v558 + 18) | (*(v558 + 16) << ((4 * *(v558 + 18) + 8) & 0x3C));
        }

        else
        {
          v566 = 0;
          i = 0;
        }
      }

      *&v652 = v557;
      *(&v652 + 1) = v558;
      v653 = v559;
      v654 = v566;
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

LABEL_269:
  v621 = v628;
  v622 = v629;
  v623 = v630;
  v617 = v624;
  v618 = v625;
  v619 = v626;
  v620 = v627;
  return outlined destroy of BigSubstring.UnicodeScalarView(&v617);
}