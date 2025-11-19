uint64_t specialized AttributedString.CharacterView._replaceSubrange<A>(_:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a2;
  v26 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v7 + 40);
    v27 = *(v7 + 24);
    v28 = v8;
    v29 = *(v7 + 56);
    v9 = *(v7 + 72);
    v10 = *(v7 + 80);
    v11 = *(v7 + 88);
    v12 = *(v7 + 96);
    type metadata accessor for AttributedString.Guts();
    v13 = swift_allocObject();
    v14 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v27, v24);
    v15 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v15);
    if (v9)
    {
      v16 = v11 == 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = v16;
    if (v17 == v14)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_10:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v19 = v28;
        *(v13 + 24) = v27;
        *(v13 + 16) = add_explicit;
        *(v13 + 40) = v19;
        *(v13 + 56) = v29;
        *(v13 + 72) = v9;
        *(v13 + 80) = v10;
        *(v13 + 88) = v11;
        *(v13 + 96) = v12;
        *(v13 + 104) = MEMORY[0x1E69E7CC0];

        *v4 = v13;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  v24[0] = 1;
  v20 = AttributedString.Guts.attributesToUseForTextReplacement(in:)(a1);
  v22 = v21;
  MEMORY[0x1EEE9AC00](v20);
  AttributedString.CharacterView._mutateStringContents(in:attributes:with:)(a1, v20, v22, partial apply for specialized closure #1 in AttributedString.CharacterView._replaceSubrange<A>(_:with:));
}

uint64_t AttributedString.CharacterView._replaceSubrange<A>(_:with:)(void *a1, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    v35 = a1;
    v36 = a3;
    v9 = *v3;
    v10 = *(*v3 + 24);
    v11 = *(*v3 + 56);
    v42 = *(*v3 + 40);
    v43 = v11;
    v41 = v10;
    v13 = v9[9];
    v12 = v9[10];
    v14 = v9[11];
    v37 = v9[12];
    type metadata accessor for AttributedString.Guts();
    v15 = swift_allocObject();
    v16 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v41, v39);
    v17 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v17);
    if (v13)
    {
      v18 = v14 == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = v18;
    if (v19 == v16)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_10:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v21 = v42;
        *(v15 + 24) = v41;
        *(v15 + 16) = add_explicit;
        *(v15 + 40) = v21;
        *(v15 + 56) = v43;
        *(v15 + 72) = v13;
        *(v15 + 80) = v12;
        *(v15 + 88) = v14;
        *(v15 + 96) = v37;
        *(v15 + 104) = MEMORY[0x1E69E7CC0];

        *v4 = v15;
        a3 = v36;
        a1 = v35;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  if (a3 != MEMORY[0x1E6995600])
  {
LABEL_15:
    v32 = AttributedString.Guts.attributesToUseForTextReplacement(in:)(a1);
    v34 = v33;
    MEMORY[0x1EEE9AC00](v32);
    AttributedString.CharacterView._mutateStringContents(in:attributes:with:)(a1, v32, v34, partial apply for closure #1 in AttributedString.CharacterView._replaceSubrange<A>(_:with:));
  }

  v22 = a2[2];
  v23 = a2[3];
  v24 = *a2;
  v39[1] = a2[1];
  v39[2] = v22;
  v25 = a2[6];
  v26 = a2[4];
  v39[5] = a2[5];
  v39[6] = v25;
  v39[3] = v23;
  v39[4] = v26;
  v39[0] = v24;
  v27 = v4[1];
  v28 = v4[5];
  v29 = *(*v4 + 24);
  v30 = *(*v4 + 56);
  v40[1] = *(*v4 + 40);
  v40[2] = v30;
  v31 = *a1 >> 10;
  v40[0] = v29;
  if (v31 >= v27 >> 10 && v28 >> 10 >= a1[4] >> 10)
  {
    outlined init with copy of BigSubstring(v39, v38);
    outlined init with copy of BigString(v40, v38);
    BigSubstring.init(_:in:)();
    BigSubstring.isIdentical(to:)();
    outlined destroy of BigSubstring(v39);
    outlined destroy of BigSubstring(v38);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void (*AttributedString.CharacterView.subscript.modify(void (**a1)(uint64_t a1, char a2), uint64_t *a2))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xC0uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  v8 = a2[1];
  *(result + 18) = v2;
  *(result + 19) = v7;
  v9 = a2[2];
  *(result + 20) = v8;
  *(result + 21) = v9;
  *(result + 11) = *(a2 + 3);
  if (v7 >> 10 < v2[1] >> 10 || v7 >> 10 >= v2[5] >> 10)
  {
    __break(1u);
  }

  else
  {
    v10 = *v2;
    v11 = *(*v2 + 24);
    v12 = *(*v2 + 56);
    *(result + 1) = *(*v2 + 40);
    *(result + 2) = v12;
    *result = v11;
    v13 = *(v10 + 24);
    v14 = *(v10 + 40);
    *(result + 10) = *(v10 + 56);
    *(result + 3) = v13;
    *(result + 4) = v14;
    outlined init with copy of Rope<BigString._Chunk>._Node?(result + 48, result + 88);
    v15 = BigString.subscript.getter();
    v17 = v16;
    outlined destroy of BigString(v6);
    *(v6 + 128) = v15;
    *(v6 + 136) = v17;
    return AttributedString.CharacterView.subscript.modify;
  }

  return result;
}

void AttributedString.CharacterView.subscript.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  v5 = *(*a1 + 176);
  v4 = *(*a1 + 184);
  v7 = *(*a1 + 160);
  v6 = *(*a1 + 168);
  v8 = *(*a1 + 136);
  v9[0] = *(*a1 + 152);
  v9[1] = v7;
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = v4;
  if (a2)
  {

    specialized AttributedString.CharacterView.subscript.setter(v3, v8, v9);
  }

  else
  {
    specialized AttributedString.CharacterView.subscript.setter(v3, v8, v9);
  }

  free(v2);
}

uint64_t AttributedString.CharacterView.subscript.setter(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v11[7] = v2;
  v3 = a1[9];
  v11[8] = a1[8];
  v11[9] = v3;
  v4 = a1[3];
  v11[2] = a1[2];
  v11[3] = v4;
  v5 = a1[5];
  v11[4] = a1[4];
  v11[5] = v5;
  v6 = a1[1];
  v11[0] = *a1;
  v11[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v10[4] = a2[4];
  v8 = a2[1];
  v10[0] = *a2;
  v10[1] = v8;
  specialized AttributedString.CharacterView.replaceSubrange<A>(_:with:)(v10, v11);
  return outlined destroy of TermOfAddress?(v11, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd);
}

void (*AttributedString.CharacterView.subscript.modify(uint64_t *a1, _OWORD *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x378uLL);
  }

  *a1 = v5;
  *(v5 + 880) = v2;
  v6 = a2[3];
  *(v5 + 832) = a2[2];
  *(v5 + 848) = v6;
  *(v5 + 864) = a2[4];
  v7 = a2[1];
  *(v5 + 800) = *a2;
  *(v5 + 816) = v7;
  AttributedString.CharacterView.subscript.getter(a2, (v5 + 320));
  return AttributedString.CharacterView.subscript.modify;
}

void AttributedString.CharacterView.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 432);
  if (a2)
  {
    *(v2 + 96) = *(v2 + 416);
    *(v2 + 112) = v3;
    v4 = *(v2 + 464);
    *(v2 + 128) = *(v2 + 448);
    *(v2 + 144) = v4;
    v5 = *(v2 + 368);
    *(v2 + 32) = *(v2 + 352);
    *(v2 + 48) = v5;
    v6 = *(v2 + 400);
    *(v2 + 64) = *(v2 + 384);
    *(v2 + 80) = v6;
    v7 = *(v2 + 336);
    *v2 = *(v2 + 320);
    *(v2 + 16) = v7;
    outlined init with copy of FloatingPointRoundingRule?(v2, v2 + 640, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd);
    specialized AttributedString.CharacterView.replaceSubrange<A>(_:with:)((v2 + 800), v2);
    outlined destroy of TermOfAddress?(v2, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd);
    v8 = *(v2 + 432);
    *(v2 + 576) = *(v2 + 416);
    *(v2 + 592) = v8;
    v9 = *(v2 + 464);
    *(v2 + 608) = *(v2 + 448);
    *(v2 + 624) = v9;
    v10 = *(v2 + 368);
    *(v2 + 512) = *(v2 + 352);
    *(v2 + 528) = v10;
    v11 = *(v2 + 400);
    *(v2 + 544) = *(v2 + 384);
    *(v2 + 560) = v11;
    v12 = *(v2 + 336);
    *(v2 + 480) = *(v2 + 320);
    *(v2 + 496) = v12;
    v13 = v2 + 480;
  }

  else
  {
    *(v2 + 256) = *(v2 + 416);
    *(v2 + 272) = v3;
    v14 = *(v2 + 464);
    *(v2 + 288) = *(v2 + 448);
    *(v2 + 304) = v14;
    v15 = *(v2 + 368);
    *(v2 + 192) = *(v2 + 352);
    *(v2 + 208) = v15;
    v16 = *(v2 + 400);
    *(v2 + 224) = *(v2 + 384);
    *(v2 + 240) = v16;
    v17 = *(v2 + 336);
    *(v2 + 160) = *(v2 + 320);
    *(v2 + 176) = v17;
    specialized AttributedString.CharacterView.replaceSubrange<A>(_:with:)((v2 + 800), v2 + 160);
    v13 = v2 + 160;
  }

  outlined destroy of TermOfAddress?(v13, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd);

  free(v2);
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance AttributedString.CharacterView(unint64_t *result)
{
  v2 = *result >> 10;
  v3 = v1[1] >> 10;
  if (v2 >= v3 && v1[5] >> 10 >= v2)
  {
    v5 = result;
    v6 = *v1;
    v7 = *(*v1 + 24);
    v8 = *(*v1 + 56);
    v20[1] = *(*v1 + 40);
    v20[2] = v8;
    v20[0] = v7;
    v9 = *(v6 + 24);
    v22 = *(v6 + 56);
    v10 = *(v6 + 40);
    v21[0] = v9;
    v21[1] = v10;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v21, v19);
    v11 = BigString.index(before:)();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    result = outlined destroy of BigString(v20);
    if (v3 <= v11 >> 10)
    {
      v18 = *(v6 + 16);
      *v5 = v11;
      v5[1] = v13;
      v5[2] = v15;
      v5[3] = v17;
      v5[4] = v18;
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

uint64_t protocol witness for Collection.indices.getter in conformance AttributedString.CharacterView@<X0>(uint64_t a1@<X8>)
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
  return outlined init with copy of AttributedString.CharacterView(v10, &v9);
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance AttributedString.CharacterView(void *result, void *a2)
{
  v2 = *result >> 10;
  if (v2 < *a2 >> 10 || v2 >= a2[5] >> 10)
  {
    __break(1u);
  }

  return result;
}

{
  v2 = *result >> 10;
  if (v2 < *a2 >> 10 || a2[5] >> 10 < v2)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result >> 10 < *a2 >> 10 || a2[5] >> 10 < result[5] >> 10)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance AttributedString.CharacterView()
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
  v7 = BigSubstring.count.getter();
  outlined destroy of BigSubstring(v9);
  return v7;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance AttributedString.CharacterView()
{
  v1 = v0[3];
  v5[2] = v0[2];
  v5[3] = v1;
  v5[4] = v0[4];
  v2 = v0[1];
  v5[0] = *v0;
  v5[1] = v2;
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(v5);
  outlined destroy of AttributedString.CharacterView(v5);
  return v3;
}

void AttributedString.CharacterView._mutateStringContents(in:attributes:with:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, void *))
{
  v6 = *v4;
  v33 = a1[4] >> 11;
  v34 = *a1 >> 11;
  v29 = AttributedString.Guts.enforceAttributeConstraintsBeforeMutation(to:)(v34, v33);
  v30 = v7;
  AttributedString.Guts._prepareTrackedIndicesUpdate(mutationRange:)(a1);
  v8 = v6[4];
  v9 = v6[5];
  v10 = v6[6];
  v12 = v6[7];
  v11 = v6[8];
  v52 = v6[3];
  v53 = v8;
  v54 = v9;
  v55 = v10;
  v56 = v12;
  v57 = v11;
  v13 = BigString.UTF8View.count.getter();
  v14 = *(v4 + 24);
  v39 = *(v4 + 8);
  v40 = v14;
  v15 = *(v4 + 56);
  v41 = *(v4 + 40);
  v42 = v15;
  *&v36 = v52;
  *(&v36 + 1) = v8;
  v16 = v13;
  *&v37 = v9;
  *(&v37 + 1) = v10;
  *&v38 = v12;
  *(&v38 + 1) = v11;
  swift_unknownObjectRetain();
  BigString.init()();
  v17 = v44;
  *(v6 + 3) = v43;
  *(v6 + 5) = v17;
  *(v6 + 7) = v45;
  swift_unknownObjectRelease();
  a4(&v36, a1);
  v18 = v37;
  *(v6 + 3) = v36;
  *(v6 + 5) = v18;
  *(v6 + 7) = v38;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v19 = v40;
  *(v4 + 8) = v39;
  *(v4 + 24) = v19;
  v20 = v42;
  *(v4 + 40) = v41;
  *(v4 + 56) = v20;
  v21 = *(v6 + 5);
  v49 = *(v6 + 3);
  v50 = v21;
  v51 = *(v6 + 7);
  v22 = BigString.UTF8View.count.getter();
  v23 = v22 - v16;
  if (__OFSUB__(v22, v16))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFADD__(v33 - v34, v23))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v34, v33, v33 - v34 + v23, a2, a3);
  v24 = *(v6 + 5);
  v46 = *(v6 + 3);
  v47 = v24;
  v48 = *(v6 + 7);
  v25 = BigString.UTF8View.count.getter();
  v26 = __OFSUB__(v25, v16);
  v27 = v25 - v16;
  if (v26)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  AttributedString.Guts._finalizeTrackedIndicesUpdate(mutationStartOffset:isInsertion:utf8LengthDelta:)(v34, v33 == v34, v27);
  v28 = v30 + v27;
  if (__OFADD__(v30, v27))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v28 >= v29)
  {
    AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v29, v28, 1, 0);
    v58[4] = v40;
    v58[5] = v41;
    v58[6] = v42;
    v58[0] = v36;
    v58[1] = v37;
    v58[2] = v38;
    v58[3] = v39;
    outlined destroy of BigSubstring(v58);
    return;
  }

LABEL_11:
  __break(1u);
}

void closure #1 in AttributedString.CharacterView._replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  if (*v10 == 1)
  {
    (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a5, v9);
    BigSubstring.replaceSubrange<A>(_:with:)();
  }
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance AttributedString.CharacterView(uint64_t *a1, __int128 *a2, ValueMetadata *a3)
{
  AttributedString.CharacterView.replaceSubrange<A>(_:with:)(a1, a2, a3);
  v5 = *(a3[-1].Description + 1);

  return v5(a2, a3);
}

uint64_t protocol witness for RangeReplaceableCollection.append(_:) in conformance AttributedString.CharacterView(uint64_t a1)
{
  specialized RangeReplaceableCollection.append(_:)(*a1, *(a1 + 8));
}

uint64_t protocol witness for RangeReplaceableCollection.insert(_:at:) in conformance AttributedString.CharacterView(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v9[0] = *a2;
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v7;
  v9[5] = v9[0];
  v9[6] = v4;
  v9[7] = v5;
  v9[8] = v6;
  v9[9] = v7;
  specialized AttributedString.CharacterView.replaceSubrange<A>(_:with:)(v9, v2, v3);
}

uint64_t protocol witness for RangeReplaceableCollection.insert<A>(contentsOf:at:) in conformance AttributedString.CharacterView(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v10 = *(a2 + 32);
  specialized RangeReplaceableCollection.insert<A>(contentsOf:at:)(a1, v9, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a1, a3);
}

uint64_t *protocol witness for RangeReplaceableCollection.remove(at:) in conformance AttributedString.CharacterView@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v7 = *(a1 + 32);
  result = specialized RangeReplaceableCollection.remove(at:)(v6);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t *protocol witness for RangeReplaceableCollection.removeSubrange(_:) in conformance AttributedString.CharacterView(_OWORD *a1)
{
  v1 = a1[3];
  v4[2] = a1[2];
  v4[3] = v1;
  v4[4] = a1[4];
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return specialized AttributedString.CharacterView.replaceSubrange<A>(_:with:)(v4);
}

void protocol witness for RangeReplaceableCollection.removeFirst() in conformance AttributedString.CharacterView(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[5] >> 10;
  if (v3 >> 10 == v4)
  {
    __break(1u);
  }

  else if (v3 >> 10 < v4)
  {
    v5 = *v1;
    v6 = *(*v1 + 24);
    v7 = *(*v1 + 56);
    v14[1] = *(*v1 + 40);
    v14[2] = v7;
    v14[0] = v6;
    v8 = *(v5 + 24);
    v16 = *(v5 + 56);
    v9 = *(v5 + 40);
    v15[0] = v8;
    v15[1] = v9;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v15, v13);
    v10 = BigString.subscript.getter();
    v12 = v11;
    outlined destroy of BigString(v14);
    specialized RangeReplaceableCollection.removeFirst(_:)(1);
    *a1 = v10;
    a1[1] = v12;
    return;
  }

  __break(1u);
}

uint64_t specialized Sequence.contains(where:)(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    outlined init with copy of AttributedString._AttributeValue(*(a1 + 56) + 72 * (v10 | (v9 << 6)), v13);
    v11 = v14;
    result = outlined destroy of AttributedString._AttributeValue(v13);
    if (v11 >= 2)
    {
      v12 = 1;
LABEL_13:

      return v12;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v12 = 0;
      goto LABEL_13;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_11:
    outlined init with copy of AttributedString._AttributeValue(*(a1 + 56) + 72 * (__clz(__rbit64(v5)) | (v8 << 6)), v15);
    v12 = v16;
    v13 = v17;
    if (v17 == 1)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v16, 1);
      outlined consume of AttributedString.AttributeRunBoundaries?(v12, 1);
      v9 = 0;
      v10 = 0;
    }

    else
    {
      if (!v17)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v16, 0);
        swift_bridgeObjectRelease_n();
        outlined consume of AttributedString.AttributeRunBoundaries?(v12, 0);
        outlined destroy of AttributedString._AttributeValue(v15);
        v14 = 1;
LABEL_15:

        return v14;
      }

      outlined copy of AttributedString.AttributeRunBoundaries?(v16, v17);
      outlined copy of AttributedString.AttributeRunBoundaries?(v12, v13);

      v9 = v12;
      v10 = v13;
    }

    outlined consume of AttributedString.AttributeRunBoundaries?(v9, v10);
    v5 &= v5 - 1;
    result = outlined destroy of AttributedString._AttributeValue(v15);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {
      v14 = 0;
      goto LABEL_15;
    }

    v5 = *(v2 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n06_sSS10vjkw1_lm5VSbs5Y199_pIggndzo_SSAESbsAF_pIegnndzo_TR016_s10Foundation16bc85V4GutsC31_characterInvalidatedAttributes33_F78730925BDA028FE30A67F137F0E6B1LL2atAC17_d29StorageVSi_tFSbSS3key_AC01_Q5E15V5valuet_tXEfU_Tf3nnpf_nTf1nnc_n(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    goto LABEL_59;
  }

  if (a2)
  {
    bzero(a1, 8 * a2);
  }

  v52 = a1;
  v53 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v64 = a3;
  do
  {
    while (1)
    {
      if (!v10)
      {
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
            goto LABEL_26;
          }

          v14 = *(v7 + 8 * v6);
          ++v13;
          if (v14)
          {
            v12 = __clz(__rbit64(v14));
            v10 = (v14 - 1) & v14;
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_56;
      }

      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v15 = v12 | (v6 << 6);
      v16 = *(a3 + 56);
      v17 = (*(a3 + 48) + 16 * v15);
      v18 = *v17;
      v19 = v17[1];
      outlined init with copy of AttributedString._AttributeValue(v16 + 72 * v15, v63);
      *&v60 = v18;
      *(&v60 + 1) = v19;
      outlined init with copy of AttributedString._AttributeValue(v63, v61);
      outlined init with copy of FloatingPointRoundingRule?(&v60, &v54, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
      swift_bridgeObjectRetain_n();

      v20 = v59;
      if (v59)
      {
        if (*(v59 + 16))
        {
          Hasher.init(_seed:)();
          MEMORY[0x1865CD060](0);
          v21 = Hasher._finalize()();
          v22 = -1 << *(v20 + 32);
          v23 = v21 & ~v22;
          if ((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
          {
            break;
          }
        }
      }

LABEL_8:
      outlined destroy of TermOfAddress?(&v60, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
      outlined destroy of AttributedString._AttributeValue(&v55);
      outlined destroy of AttributedString._AttributeValue(v63);

      a3 = v64;
    }

    v24 = ~v22;
    while (*(*(v20 + 48) + 16 * v23 + 8))
    {
      v23 = (v23 + 1) & v24;
      if (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    outlined destroy of TermOfAddress?(&v60, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
    outlined destroy of AttributedString._AttributeValue(&v55);
    outlined destroy of AttributedString._AttributeValue(v63);

    *(v52 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    v25 = __OFADD__(v53++, 1);
    a3 = v64;
  }

  while (!v25);
  __break(1u);
LABEL_26:
  v26 = v53;
  if (!v53)
  {
LABEL_29:

    return;
  }

  if (v53 == *(a3 + 16))
  {
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  v27 = static _DictionaryStorage.allocate(capacity:)();
  v28 = v27;
  v29 = a2;
  if (a2)
  {
    v30 = v52;
    v31 = *v52;
  }

  else
  {
    v31 = 0;
    v30 = v52;
  }

  v32 = 0;
  v33 = v27 + 64;
  if (!v31)
  {
LABEL_35:
    v35 = v32;
    while (1)
    {
      v32 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v32 >= v29)
      {
        goto LABEL_29;
      }

      v36 = v30[v32];
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v31 = (v36 - 1) & v36;
        goto LABEL_40;
      }
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  while (1)
  {
    v34 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
LABEL_40:
    v37 = v34 | (v32 << 6);
    v38 = (*(a3 + 48) + 16 * v37);
    v39 = *v38;
    v40 = v38[1];
    outlined init with copy of AttributedString._AttributeValue(*(a3 + 56) + 72 * v37, &v60);
    v56 = v61[1];
    v57 = v61[2];
    v58 = v62;
    v54 = v60;
    v55 = v61[0];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v41 = Hasher._finalize()();
    v42 = -1 << *(v28 + 32);
    v43 = v41 & ~v42;
    v44 = v43 >> 6;
    if (((-1 << v43) & ~*(v33 + 8 * (v43 >> 6))) == 0)
    {
      break;
    }

    v45 = __clz(__rbit64((-1 << v43) & ~*(v33 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_50:
    *(v33 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
    v50 = (*(v28 + 48) + 16 * v45);
    *v50 = v39;
    v50[1] = v40;
    v51 = *(v28 + 56) + 72 * v45;
    *(v51 + 16) = v55;
    *(v51 + 32) = v56;
    *(v51 + 48) = v57;
    *(v51 + 64) = v58;
    *v51 = v54;
    ++*(v28 + 16);
    v25 = __OFSUB__(v26--, 1);
    if (v25)
    {
      goto LABEL_58;
    }

    if (!v26)
    {
      goto LABEL_29;
    }

    v29 = a2;
    v30 = v52;
    if (!v31)
    {
      goto LABEL_35;
    }
  }

  v46 = 0;
  v47 = (63 - v42) >> 6;
  while (++v44 != v47 || (v46 & 1) == 0)
  {
    v48 = v44 == v47;
    if (v44 == v47)
    {
      v44 = 0;
    }

    v46 |= v48;
    v49 = *(v33 + 8 * v44);
    if (v49 != -1)
    {
      v45 = __clz(__rbit64(~v49)) + (v44 << 6);
      goto LABEL_50;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

uint64_t specialized closure #1 in AttributedString.CharacterView._replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a3 == 1)
  {

    return BigSubstring.replaceSubrange<A>(_:with:)();
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation16AttributedStringV15_AttributeValueVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of FloatingPointRoundingRule?(v4, &v17, &_sSS_10Foundation16AttributedStringV15_AttributeValueVtMd);
      v5 = v17;
      v6 = v18;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 72 * result;
      *v10 = v19;
      v11 = v20;
      v12 = v21;
      v13 = v22;
      *(v10 + 64) = v23;
      *(v10 + 32) = v12;
      *(v10 + 48) = v13;
      *(v10 + 16) = v11;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      v4 += 88;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySnySiGGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySnySiGGGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t specialized Dictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v67 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v53 = v1;
    v51 = v4;
    v52 = &v50;
    MEMORY[0x1EEE9AC00](a1);
    v54 = (&v50 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v54, v5);
    v55 = v2;
    v56 = 0;
    v6 = 0;
    v4 = v2 + 64;
    v7 = 1 << *(v2 + 32);
    v8 = v7 < 64 ? ~(-1 << v7) : -1;
    v9 = v8 & *(v2 + 64);
    v10 = (v7 + 63) >> 6;
    do
    {
      while (1)
      {
        if (!v9)
        {
          v12 = v6;
          while (1)
          {
            v6 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v6 >= v10)
            {
              goto LABEL_24;
            }

            v13 = *(v4 + 8 * v6);
            ++v12;
            if (v13)
            {
              v11 = __clz(__rbit64(v13));
              v9 = (v13 - 1) & v13;
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_50;
        }

        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_14:
        v14 = v11 | (v6 << 6);
        v15 = (*(v2 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        outlined init with copy of AttributedString._AttributeValue(*(v2 + 56) + 72 * v14, v66);
        *&v63 = v16;
        *(&v63 + 1) = v17;
        outlined init with copy of AttributedString._AttributeValue(v66, v64);
        outlined init with copy of FloatingPointRoundingRule?(&v63, &v57, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
        swift_bridgeObjectRetain_n();

        v18 = v62;
        if (v62)
        {
          if (*(v62 + 16))
          {
            Hasher.init(_seed:)();
            MEMORY[0x1865CD060](0);
            v19 = Hasher._finalize()();
            v20 = -1 << *(v18 + 32);
            v21 = v19 & ~v20;
            if ((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
            {
              break;
            }
          }
        }

LABEL_6:
        outlined destroy of TermOfAddress?(&v63, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
        outlined destroy of AttributedString._AttributeValue(&v58);
        outlined destroy of AttributedString._AttributeValue(v66);

        v2 = v55;
      }

      v22 = ~v20;
      while (*(*(v18 + 48) + 16 * v21 + 8))
      {
        v21 = (v21 + 1) & v22;
        if (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      outlined destroy of TermOfAddress?(&v63, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
      outlined destroy of AttributedString._AttributeValue(&v58);
      outlined destroy of AttributedString._AttributeValue(v66);

      v2 = v55;
      *(v54 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    }

    while (!__OFADD__(v56++, 1));
    __break(1u);
LABEL_24:
    v24 = v56;
    if (!v56)
    {
      return MEMORY[0x1E69E7CC8];
    }

    if (v56 == *(v2 + 16))
    {

      return v2;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
    v25 = static _DictionaryStorage.allocate(capacity:)();
    v26 = 0;
    v27 = v54;
    v28 = *v54;
    v4 = v25 + 64;
    while (v28)
    {
      v56 = v24;
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_38:
      v35 = v32 | (v26 << 6);
      v36 = (*(v2 + 48) + 16 * v35);
      v37 = *v36;
      v38 = v36[1];
      outlined init with copy of AttributedString._AttributeValue(*(v2 + 56) + 72 * v35, &v63);
      v59 = v64[1];
      v60 = v64[2];
      v61 = v65;
      v57 = v63;
      v58 = v64[0];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v39 = Hasher._finalize()();
      v40 = -1 << *(v25 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v4 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v4 + 8 * v42);
          if (v46 != -1)
          {
            v29 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_30;
          }
        }

        goto LABEL_51;
      }

      v29 = __clz(__rbit64((-1 << v41) & ~*(v4 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
      *(v4 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v30 = (*(v25 + 48) + 16 * v29);
      *v30 = v37;
      v30[1] = v38;
      v31 = *(v25 + 56) + 72 * v29;
      *(v31 + 16) = v58;
      *(v31 + 32) = v59;
      *(v31 + 48) = v60;
      *(v31 + 64) = v61;
      *v31 = v57;
      ++*(v25 + 16);
      v24 = v56 - 1;
      v27 = v54;
      if (v56 == 1)
      {
        return v25;
      }
    }

    v33 = v26;
    while (1)
    {
      v26 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v26 >= v51)
      {
        return v25;
      }

      v34 = v27[v26];
      ++v33;
      if (v34)
      {
        v56 = v24;
        v32 = __clz(__rbit64(v34));
        v28 = (v34 - 1) & v34;
        goto LABEL_38;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v48 = swift_slowAlloc();
  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n06_sSS10vjkw1_lm5VSbs5Y199_pIggndzo_SSAESbsAF_pIegnndzo_TR016_s10Foundation16bc85V4GutsC31_characterInvalidatedAttributes33_F78730925BDA028FE30A67F137F0E6B12atAC17_d29StorageVSi_tFSbSS3key_AC01_Q5E15V5valuet_tXEfU_Tf3nnpf_nTf1nnc_n(v48, v4, v2);
  v2 = v49;
  MEMORY[0x1865D2690](v48, -1, -1);
  return v2;
}

uint64_t specialized AttributedString.CharacterView.subscript.setter(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *a3 >> 10;
  if (v5 < v3[1] >> 10)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 >= v3[5] >> 10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v7 = a3[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = *v3;
  v11 = *(*v3 + 24);
  v12 = *(*v3 + 56);
  v36[1] = *(*v3 + 40);
  v36[2] = v12;
  v36[0] = v11;
  v13 = *(v10 + 24);
  v38 = *(v10 + 56);
  v14 = *(v10 + 40);
  v37[0] = v13;
  v37[1] = v14;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v37, v34);
  v15 = MEMORY[0x1865CA460](v4, v7, v8, v9);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  outlined destroy of BigString(v36);
  v22 = *(v10 + 24);
  v23 = *(v10 + 56);
  v35[1] = *(v10 + 40);
  v35[2] = v23;
  v35[0] = v22;
  v24 = *(v10 + 24);
  v40 = *(v10 + 56);
  v25 = *(v10 + 40);
  v39[0] = v24;
  v39[1] = v25;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v39, v34);
  v26 = BigString.index(after:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  result = outlined destroy of BigString(v35);
  if (v26 >> 10 >= v15 >> 10)
  {
    v34[0] = v15;
    v34[1] = v17;
    v34[2] = v19;
    v34[3] = v21;
    v34[4] = v26;
    v34[5] = v28;
    v34[6] = v30;
    v34[7] = v32;
    return specialized AttributedString.CharacterView._replaceSubrange<A>(_:with:)(v34, v6, a2);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<AttributedString.CharacterView> and conformance <> DefaultIndices<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<AttributedString.CharacterView> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<AttributedString.CharacterView> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<AttributedString.CharacterView> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd);
    lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<AttributedString.CharacterView> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributedString.CharacterView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for AttributedString.CharacterView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type BigSubstring and conformance BigSubstring()
{
  result = lazy protocol witness table cache variable for type BigSubstring and conformance BigSubstring;
  if (!lazy protocol witness table cache variable for type BigSubstring and conformance BigSubstring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BigSubstring and conformance BigSubstring);
  }

  return result;
}

unint64_t *AttributedString.Guts.getUniformValue<A>(in:key:)@<X0>(unint64_t *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v130 = a2;
  v131 = a3;
  v161 = 0;
  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v126 = *result;
  v5 = v126 >> 11;
  v6 = v4[9];
  v7 = v4[11];
  if (v6)
  {
    v8 = v4[11];
  }

  else
  {
    v8 = 0;
  }

  if (v8 < v5)
  {
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
    goto LABEL_215;
  }

  v125 = a4;
  v9 = result[4];
  v10 = v4[10];
  v132 = v4;
  v11 = v4[12];
  v134 = v126 >> 11;
  if (!v6 || ((v13 = (v6 + 16), v12 = *(v6 + 16), v5 < v7) ? (v14 = v12 == 0) : (v14 = 1), v14))
  {
    swift_unknownObjectRetain();
    v15 = v132;

    v16 = v10;
    result = specialized Rope._endPath.getter(v6);
    v141 = result;
    v17 = 0;
    v18 = 0;
    v140 = 0;
    if (!v6)
    {
      goto LABEL_174;
    }

LABEL_12:
    v138 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v11, v141, v17, v6, v16);
    result = swift_unknownObjectRelease();
    v19 = v5 - v18;
    if (!__OFSUB__(v5, v18))
    {
      goto LABEL_13;
    }

LABEL_176:
    __break(1u);
LABEL_177:
    outlined destroy of TermOfAddress?(&v157, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    (*(v5 + 56))(v11, 1, 1, v16);
    (v15[1])(v11, v9);
    outlined destroy of AttributedString._AttributeValue(&v147);
LABEL_178:
    outlined destroy of AttributedString._AttributeValue(&v152);
LABEL_179:

    v124 = v125;
    *(v125 + 64) = 0;
    v124[2] = 0u;
    v124[3] = 0u;
    *v124 = 0u;
    v124[1] = 0u;
    return result;
  }

  v139 = v11;
  v140 = v7;
  v108 = *(v6 + 18);
  swift_unknownObjectRetain_n();

  v16 = v10;
  if (!v108)
  {
    v26 = 0;
    v33 = v134;
    result = v6;
    v15 = v132;
    goto LABEL_165;
  }

  v141 = v9;
  v33 = v134;
  v26 = v108;
  v109 = v6;
  do
  {
    v110 = *v13;
    if (*v13)
    {
      v111 = 0;
      v112 = (v109 + 5);
      while (1)
      {
        v113 = *v112;
        v112 += 3;
        v114 = v33 - v113;
        if (__OFSUB__(v33, v113))
        {
          goto LABEL_187;
        }

        if (__OFADD__(v114, 1))
        {
          break;
        }

        if (v114 + 1 < 1)
        {
          v110 = v111;
          goto LABEL_147;
        }

        ++v111;
        v33 = v114;
        if (v110 == v111)
        {
          goto LABEL_156;
        }
      }

LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
      goto LABEL_197;
    }

    v114 = v33;
LABEL_156:
    if (v114)
    {
      goto LABEL_204;
    }

    v33 = 0;
LABEL_147:
    v26 = (v110 << ((4 * v108 + 8) & 0x3C)) | ((-15 << ((4 * v108 + 8) & 0x3C)) - 1) & v26;
    v108 = v109[3 * v110 + 3];
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    result = v108;
    v13 = (v108 + 16);
    LODWORD(v108) = *(v108 + 18);
    v109 = result;
  }

  while (v108);
  v12 = *v13;
  if (*v13)
  {
    v15 = v132;
    v9 = v141;
LABEL_165:
    v118 = 0;
    v119 = 3;
    v18 = v33;
    v120 = v12;
    while (1)
    {
      v121 = result[v119];
      v122 = v18 - v121;
      if (__OFSUB__(v18, v121))
      {
        goto LABEL_202;
      }

      if (__OFADD__(v122, 1))
      {
        goto LABEL_203;
      }

      if ((v122 + 1) < 1)
      {
        break;
      }

      ++v118;
      v119 += 3;
      v18 -= v121;
      if (v12 == v118)
      {
        if (!v122)
        {
          goto LABEL_171;
        }

LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
        goto LABEL_188;
      }
    }

    v120 = v118;
  }

  else
  {
LABEL_183:
    v120 = 0;
    v15 = v132;
    v9 = v141;
    if (v33)
    {
      goto LABEL_184;
    }

LABEL_171:
    v18 = 0;
  }

  v123 = result;
  result = swift_unknownObjectRelease();
  v17 = v123;
  v141 = v26 & 0xFFFFFFFFFFFFF0FFLL | (v120 << 8);
  v5 = v134;
  v11 = v139;
  v140 = v123;
  if (v6)
  {
    goto LABEL_12;
  }

LABEL_174:
  v138 = 0;
  v19 = v5 - v18;
  if (__OFSUB__(v5, v18))
  {
    goto LABEL_176;
  }

LABEL_13:
  v137 = v19;
  v20 = v9 >> 11;
  v129 = v131 + 24;
  for (i = v9 >> 11; ; v20 = i)
  {
    v21 = v15[9];
    v22 = v140;
    if (v5 == v20)
    {
      v139 = v11;
      if (v21)
      {
        v6 = v15[11];
        if (v6 < v5)
        {
          goto LABEL_209;
        }

        v23 = v15[10];
        v16 = v15[12];
        v25 = (v21 + 16);
        v24 = *(v21 + 16);
        v26 = *(v21 + 18);
        if (*(v21 + 16))
        {
          v27 = v5 < v6;
        }

        else
        {
          v27 = 0;
        }

        v136 = v16;
        if (v27)
        {
          v133 = v23;
          result = swift_unknownObjectRetain_n();
          if (v26)
          {
            v32 = v26;
            v33 = v21;
            do
            {
              v34 = *v25;
              if (*v25)
              {
                v35 = 0;
                v36 = (v33 + 40);
                while (1)
                {
                  v37 = *v36;
                  v36 += 3;
                  v38 = v5 - v37;
                  if (__OFSUB__(v5, v37))
                  {
                    break;
                  }

                  if (__OFADD__(v38, 1))
                  {
                    goto LABEL_182;
                  }

                  if (v38 + 1 < 1)
                  {
                    v34 = v35;
                    goto LABEL_34;
                  }

                  ++v35;
                  v5 = v38;
                  if (v34 == v35)
                  {
                    goto LABEL_43;
                  }
                }

                __break(1u);
LABEL_182:
                __break(1u);
                goto LABEL_183;
              }

              v38 = v5;
LABEL_43:
              if (v38)
              {
                goto LABEL_191;
              }

              v5 = 0;
LABEL_34:
              v32 = (v34 << ((4 * v26 + 8) & 0x3C)) | ((-15 << ((4 * v26 + 8) & 0x3C)) - 1) & v32;
              v16 = *(v33 + 24 + 24 * v34);
              swift_unknownObjectRetain();
              result = swift_unknownObjectRelease();
              v25 = (v16 + 16);
              v26 = *(v16 + 18);
              v33 = v16;
            }

            while (*(v16 + 18));
            LODWORD(v24) = *v25;
            if (*v25)
            {
              goto LABEL_48;
            }

            v39 = 0;
            v15 = v132;
LABEL_54:
            if (!v5)
            {
              v29 = 0;
LABEL_56:
              swift_unknownObjectRelease();
              v28 = v32 & 0xFFFFFFFFFFFFF0FFLL | (v39 << 8);
              v23 = v133;
              v5 = v134;
              goto LABEL_57;
            }

LABEL_215:
            __break(1u);
            goto LABEL_216;
          }

          v32 = 0;
          v16 = v21;
LABEL_48:
          v15 = v132;
          v39 = 0;
          v40 = 24;
          v29 = v5;
          while (1)
          {
            v41 = *(v16 + v40);
            v5 = v29 - v41;
            if (__OFSUB__(v29, v41))
            {
              goto LABEL_189;
            }

            if (__OFADD__(v5, 1))
            {
              goto LABEL_190;
            }

            if (v5 + 1 < 1)
            {
              goto LABEL_56;
            }

            ++v39;
            v40 += 24;
            v29 -= v41;
            if (v24 == v39)
            {
              v39 = v24;
              goto LABEL_54;
            }
          }
        }

        v28 = ((-15 << ((4 * v26 + 8) & 0x3C)) - 1) & v26 | (v24 << ((4 * v26 + 8) & 0x3C));
        swift_unknownObjectRetain();
        v29 = 0;
        v16 = 0;
        v15 = v132;
LABEL_57:
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v136, v28, v16, v21, v23);
        result = swift_unknownObjectRelease();
        v20 = i;
        v22 = v140;
      }

      else
      {
        if (v126 >= 0x800)
        {
          goto LABEL_211;
        }

        v29 = 0;
      }

      v42 = v5 - v29;
      v31 = v137;
      if (__OFSUB__(v5, v29))
      {
        goto LABEL_205;
      }

      v11 = v139;
      if (v137 == v42)
      {
LABEL_158:

        v115 = v160;
        v116 = v125;
        *(v125 + 32) = v159;
        *(v116 + 48) = v115;
        *(v116 + 64) = v161;
        v117 = v158;
        *v116 = v157;
        *(v116 + 16) = v117;
        return result;
      }
    }

    else
    {
      if (v21)
      {
        v30 = v15[11];
      }

      else
      {
        v30 = 0;
      }

      v31 = v137;
      if (v137 == v30)
      {
        goto LABEL_158;
      }
    }

    if (v11 != v15[12])
    {
      goto LABEL_192;
    }

    if (v22)
    {
      v43 = (v22 + 24 * ((v141 >> ((4 * *(v22 + 18) + 8) & 0x3C)) & 0xF));
      v44 = v43[4];
      v45 = v43[5];
      v46 = v43[3];
      v47 = v31 + v46;
      v48 = __OFADD__(v31, v46);
      v136 = v44;

      v133 = v45;

      if (v48)
      {
        goto LABEL_200;
      }

      v49 = v5;
      if (v31 >= v5)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v57 = v15[9];
      swift_unknownObjectRetain();
      v58 = v141;
      specialized Rope._Node.subscript.getter(v141, v57);
      v60 = v59;
      v133 = v61;
      result = swift_unknownObjectRelease();
      if (v11 != v15[12])
      {
        goto LABEL_206;
      }

      v136 = v60;
      v62 = v15[9];
      swift_unknownObjectRetain();
      v63 = specialized Rope._Node.subscript.getter(v58, v62);
      swift_unknownObjectRelease();

      v31 = v137;
      v55 = __OFADD__(v137, v63);
      v47 = v137 + v63;
      if (v55)
      {
        goto LABEL_207;
      }

      v49 = v5;
      v20 = i;
      if (v137 >= v5)
      {
LABEL_67:
        if (v20 >= v31)
        {
          v49 = v31;
        }

        else
        {
          v49 = v20;
        }
      }
    }

    if (v47 <= v5)
    {
      v50 = v5;
    }

    else
    {
      v50 = v47;
    }

    if (v20 < v47)
    {
      v50 = v20;
    }

    if (v49 == v50)
    {
      goto LABEL_193;
    }

    v51 = v15[9];
    v52 = v15[12];
    v53 = v141;
    *&v152 = v11;
    *(&v152 + 1) = v141;
    *&v153 = v140;
    if (__OFADD__(v138, 1))
    {
      goto LABEL_195;
    }

    if (v11 != v52)
    {
      goto LABEL_196;
    }

    ++v138;
    if (v140)
    {
      v54 = *(v140 + 24 * ((v141 >> ((4 * *(v140 + 18) + 8) & 0x3C)) & 0xF) + 24);
      v55 = __OFADD__(v31, v54);
      v56 = v31 + v54;
      if (v55)
      {
        goto LABEL_201;
      }

      if (!v51)
      {
        goto LABEL_194;
      }

      result = swift_unknownObjectRetain();
    }

    else
    {
      v64 = v11;
      swift_unknownObjectRetain();
      v65 = specialized Rope._Node.subscript.getter(v53, v51);

      v55 = __OFADD__(v31, v65);
      v56 = v31 + v65;
      if (v55)
      {
        goto LABEL_208;
      }

      v11 = v64;
      v20 = i;
      if (!v51)
      {
        goto LABEL_194;
      }
    }

    if (v53 >= (((-15 << ((4 * *(v51 + 18) + 8) & 0x3C)) - 1) & *(v51 + 18) | (*(v51 + 16) << ((4 * *(v51 + 18) + 8) & 0x3C))))
    {
      goto LABEL_194;
    }

    if (v140)
    {
      v66 = (4 * *(v140 + 18) + 8) & 0x3C;
      v67 = ((v141 >> v66) & 0xF) + 1;
      if (v67 < *(v140 + 16))
      {
        result = swift_unknownObjectRelease();
        v68 = (v67 << v66) | ((-15 << v66) - 1) & v141;
LABEL_94:
        v141 = v68;
        goto LABEL_96;
      }
    }

    if (specialized Rope._Node.formSuccessor(of:)(&v152, v51))
    {
      result = swift_unknownObjectRelease();
      v68 = *(&v152 + 1);
      goto LABEL_94;
    }

    v69 = *(v51 + 18);
    v70 = *(v51 + 16);
    result = swift_unknownObjectRelease();
    *&v152 = v11;
    *(&v152 + 1) = ((-15 << ((4 * v69 + 8) & 0x3C)) - 1) & v69 | (v70 << ((4 * v69 + 8) & 0x3C));
    v141 = *(&v152 + 1);
    *&v153 = 0;
LABEL_96:
    v5 = v134;
    v71 = v136;
    if (v56 < v20)
    {
      v11 = v152;
      v140 = v153;
      goto LABEL_138;
    }

    v72 = v15[9];
    if (v134 != v20)
    {
      v11 = v15[12];
      if (v72)
      {
        v56 = v15[11];
        v138 = v15[10];
        v86 = ((-15 << ((4 * *(v72 + 18) + 8) & 0x3C)) - 1) & *(v72 + 18) | (*(v72 + 16) << ((4 * *(v72 + 18) + 8) & 0x3C));
        v140 = 0;
        v141 = v86;
      }

      else
      {
        v140 = 0;
        v141 = 0;
        v138 = 0;
        v56 = 0;
      }

      goto LABEL_138;
    }

    v139 = v15[12];
    if (!v72)
    {
      if (v126 >= 0x800)
      {
        goto LABEL_214;
      }

      v87 = 0;
      v140 = 0;
      v141 = 0;
      v138 = 0;
      goto LABEL_136;
    }

    v73 = v15[11];
    if (v73 < v134)
    {
      goto LABEL_213;
    }

    v74 = v15[10];
    v76 = (v72 + 16);
    v75 = *(v72 + 16);
    v77 = *(v72 + 18);
    if (*(v72 + 16))
    {
      if (v134 < v73)
      {
        break;
      }
    }

    v88 = ((-15 << ((4 * v77 + 8) & 0x3C)) - 1) & v77 | (v75 << ((4 * v77 + 8) & 0x3C));
    swift_unknownObjectRetain();
    v87 = 0;
    v89 = 0;
    v15 = v132;
LABEL_135:
    v140 = v89;
    v141 = v88;
    v138 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v139, v88, v89, v72, v74);
    result = swift_unknownObjectRelease();
LABEL_136:
    v56 = v5 - v87;
    if (__OFSUB__(v5, v87))
    {
      goto LABEL_210;
    }

    v11 = v139;
    v71 = v136;
LABEL_138:
    v94 = (*(v131 + 24))();
    if (!*(v71 + 16))
    {

LABEL_161:

      outlined destroy of TermOfAddress?(&v157, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      goto LABEL_179;
    }

    v96 = specialized __RawDictionaryStorage.find<A>(_:)(v94, v95);
    v98 = v97;

    if ((v98 & 1) == 0)
    {

      goto LABEL_161;
    }

    v137 = v56;
    outlined init with copy of AttributedString._AttributeValue(*(v71 + 56) + 72 * v96, &v147);

    v154 = v149;
    v155 = v150;
    v156 = v151;
    v152 = v147;
    v153 = v148;
    outlined init with copy of FloatingPointRoundingRule?(&v157, &v142, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    if (*(&v143 + 1))
    {
      v139 = v11;
      v149 = v144;
      v150 = v145;
      v151 = v146;
      v147 = v142;
      v148 = v143;
      v16 = *(&v153 + 1);
      v128 = v154;
      v127 = __swift_project_boxed_opaque_existential_1(&v152, *(&v153 + 1));
      v99 = __swift_project_boxed_opaque_existential_1(&v147, *(&v148 + 1));
      v136 = &v125;
      v5 = *(v16 - 8);
      MEMORY[0x1EEE9AC00](v99);
      v101 = &v125 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
      v133 = &v125;
      v103 = MEMORY[0x1EEE9AC00](v102);
      (*(v105 + 16))(&v125 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0), v103);
      v9 = type metadata accessor for Optional();
      v15 = *(v9 - 8);
      MEMORY[0x1EEE9AC00](v9);
      v11 = &v125 - v106;
      if (!swift_dynamicCast())
      {
        goto LABEL_177;
      }

      (*(v5 + 56))(v11, 0, 1, v16);
      (*(v5 + 32))(v101, v11, v16);
      v107 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v5 + 8))(v101, v16);
      outlined destroy of TermOfAddress?(&v157, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      result = outlined destroy of AttributedString._AttributeValue(&v147);
      v15 = v132;
      v5 = v134;
      v11 = v139;
      if ((v107 & 1) == 0)
      {
        goto LABEL_178;
      }
    }

    else
    {
      outlined destroy of TermOfAddress?(&v157, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      result = outlined destroy of TermOfAddress?(&v142, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    }

    v159 = v154;
    v160 = v155;
    v161 = v156;
    v157 = v152;
    v158 = v153;
  }

  result = swift_unknownObjectRetain_n();
  v78 = v5;
  if (!v77)
  {
    v79 = 0;
    result = v72;
LABEL_126:
    v15 = v132;
    v90 = 0;
    v91 = 3;
    v87 = v78;
    while (1)
    {
      v92 = result[v91];
      v78 = v87 - v92;
      if (__OFSUB__(v87, v92))
      {
        break;
      }

      if (__OFADD__(v78, 1))
      {
        goto LABEL_198;
      }

      if (v78 + 1 < 1)
      {
        goto LABEL_134;
      }

      ++v90;
      v91 += 3;
      v87 -= v92;
      if (v75 == v90)
      {
        v90 = v75;
        goto LABEL_132;
      }
    }

LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
    goto LABEL_212;
  }

  v79 = v77;
  v80 = v72;
  do
  {
    v81 = *v76;
    if (*v76)
    {
      v82 = 0;
      v83 = (v80 + 5);
      while (1)
      {
        v84 = *v83;
        v83 += 3;
        v85 = v78 - v84;
        if (__OFSUB__(v78, v84))
        {
          goto LABEL_185;
        }

        if (__OFADD__(v85, 1))
        {
          goto LABEL_186;
        }

        if (v85 + 1 < 1)
        {
          v81 = v82;
          goto LABEL_106;
        }

        ++v82;
        v78 = v85;
        if (v81 == v82)
        {
          goto LABEL_115;
        }
      }
    }

    v85 = v78;
LABEL_115:
    if (v85)
    {
      goto LABEL_199;
    }

    v78 = 0;
LABEL_106:
    v79 = (v81 << ((4 * v77 + 8) & 0x3C)) | ((-15 << ((4 * v77 + 8) & 0x3C)) - 1) & v79;
    v77 = v80[3 * v81 + 3];
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    result = v77;
    v76 = (v77 + 16);
    LODWORD(v77) = *(v77 + 18);
    v80 = result;
  }

  while (v77);
  LODWORD(v75) = *v76;
  if (*v76)
  {
    goto LABEL_126;
  }

  v90 = 0;
  v15 = v132;
LABEL_132:
  if (!v78)
  {
    v87 = 0;
LABEL_134:
    v93 = result;
    swift_unknownObjectRelease();
    v89 = v93;
    v88 = v79 & 0xFFFFFFFFFFFFF0FFLL | (v90 << 8);
    v5 = v134;
    goto LABEL_135;
  }

LABEL_216:
  __break(1u);
  return result;
}

uint64_t AttributedString.Guts.getUniformValues(in:)(unint64_t *a1)
{
  v228 = *MEMORY[0x1E69E9840];
  v183 = *a1;
  v2 = v183 >> 11;
  v3 = v1[9];
  v4 = v1[11];
  if (v3)
  {
    v5 = v1[11];
  }

  else
  {
    v5 = 0;
  }

  if (v5 < v2)
  {
    goto LABEL_260;
  }

  v6 = a1[4];
  v7 = v1[10];
  v185 = v1;
  v8 = v1[12];
  v200 = v183 >> 11;
  v194 = v8;
  if (!v3 || ((v9 = (v3 + 16), v10 = *(v3 + 16), v2 < v4) ? (v11 = v10 == 0) : (v11 = 1), v11))
  {
    swift_unknownObjectRetain();
    v12 = v185;

    v13 = specialized Rope._endPath.getter(v3);
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v206 = 0;
    if (!v3)
    {
      goto LABEL_222;
    }

    goto LABEL_12;
  }

  v209 = v7;
  v166 = *(v3 + 18);
  swift_unknownObjectRetain_n();

  if (v166)
  {
    v208 = v6;
    v8 = v166;
    v167 = v3;
    while (1)
    {
      v168 = *v9;
      if (*v9)
      {
        break;
      }

      v173 = v2;
LABEL_205:
      if (v173)
      {
        goto LABEL_252;
      }

      v2 = 0;
LABEL_196:
      v8 = (v168 << ((4 * v166 + 8) & 0x3C)) | ((-15 << ((4 * v166 + 8) & 0x3C)) - 1) & v8;
      v169 = *(v167 + 24 + 24 * v168);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v13 = v169;
      v9 = (v169 + 16);
      LOBYTE(v166) = *(v13 + 18);
      v167 = v13;
      if (!v166)
      {
        v10 = *v9;
        if (!*v9)
        {
          goto LABEL_227;
        }

        v6 = v208;
        goto LABEL_212;
      }
    }

    v170 = 0;
    v171 = (v167 + 40);
    while (1)
    {
      v172 = *v171;
      v171 += 3;
      v173 = v2 - v172;
      if (__OFSUB__(v2, v172))
      {
        goto LABEL_232;
      }

      if (__OFADD__(v173, 1))
      {
        break;
      }

      if (v173 + 1 < 1)
      {
        v168 = v170;
        goto LABEL_196;
      }

      ++v170;
      v2 = v173;
      if (v168 == v170)
      {
        goto LABEL_205;
      }
    }

LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

  v8 = 0;
  v13 = v3;
LABEL_212:
  v109 = 0;
  v175 = 24;
  v16 = v2;
  v176 = v10;
  v12 = v185;
  do
  {
    v177 = *(v13 + v175);
    v178 = v16 - v177;
    if (__OFSUB__(v16, v177))
    {
      goto LABEL_250;
    }

    if (__OFADD__(v178, 1))
    {
      goto LABEL_251;
    }

    if ((v178 + 1) < 1)
    {
      goto LABEL_220;
    }

    v109 = (v109 + 1);
    v175 += 24;
    v16 = (v16 - v177);
  }

  while (v176 != v109);
  if (v178)
  {
    goto LABEL_228;
  }

  while (1)
  {
    v16 = 0;
LABEL_221:
    v179 = v13;
    v13 = swift_unknownObjectRelease();
    v15 = v179;
    v14 = v8 & 0xFFFFFFFFFFFFF0FFLL | (v176 << 8);
    v2 = v200;
    v8 = v194;
    v7 = v209;
    v206 = v15;
    if (v3)
    {
      break;
    }

LABEL_222:
    v199 = 0;
    v17 = v2 - v16;
    if (!__OFSUB__(v2, v16))
    {
      goto LABEL_13;
    }

LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    v176 = 0;
    v12 = v185;
    v6 = v208;
    if (v2)
    {
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
      goto LABEL_233;
    }
  }

LABEL_12:
  v199 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v8, v14, v15, v3, v7);
  v13 = swift_unknownObjectRelease();
  v17 = v2 - v16;
  if (__OFSUB__(v2, v16))
  {
    goto LABEL_224;
  }

LABEL_13:
  v204 = v14;
  v205 = v17;
  v181 = 0;
  v18 = v6 >> 11;
  v182 = MEMORY[0x1E69E7CD0];
  v19 = MEMORY[0x1E69E7CC8];
  v20 = 1;
  v201 = v6 >> 11;
  while (1)
  {
    v21 = v206;
LABEL_15:
    LODWORD(v208) = v20;
    v22 = *(v12 + 72);
    v23 = v200;
    v206 = v21;
    v207 = v19;
    if (v200 != v18)
    {
      v2 = v205;
      if (v22)
      {
        v31 = *(v12 + 88);
      }

      else
      {
        v31 = 0;
      }

      v32 = v194;
      if (v205 == v31)
      {
        goto LABEL_207;
      }

      goto LABEL_59;
    }

    v2 = v205;
    if (v22)
    {
      v3 = *(v12 + 88);
      if (v3 < v200)
      {
        goto LABEL_256;
      }

      v24 = *(v12 + 80);
      v25 = (v22 + 16);
      v26 = *(v22 + 16);
      v27 = *(v22 + 18);
      if (*(v22 + 16))
      {
        v28 = v200 < v3;
      }

      else
      {
        v28 = 0;
      }

      v209 = *(v12 + 96);
      if (!v28)
      {
        v29 = ((-15 << ((4 * v27 + 8) & 0x3C)) - 1) & v27 | (v26 << ((4 * v27 + 8) & 0x3C));
        swift_unknownObjectRetain();
        v30 = 0;
        v2 = 0;
        v18 = v201;
LABEL_56:
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v209, v29, v2, v22, v24);
        swift_unknownObjectRelease();
        v23 = v200;
        v21 = v206;
        v19 = v207;
        v2 = v205;
        goto LABEL_57;
      }

      v203 = v24;
      v13 = swift_unknownObjectRetain_n();
      if (v27)
      {
        v33 = v27;
        v34 = v22;
        v8 = -15;
        do
        {
          v35 = *v25;
          if (*v25)
          {
            v36 = 0;
            v37 = (v34 + 40);
            while (1)
            {
              v38 = *v37;
              v37 += 3;
              v39 = v23 - v38;
              if (__OFSUB__(v23, v38))
              {
                goto LABEL_225;
              }

              if (__OFADD__(v39, 1))
              {
                goto LABEL_226;
              }

              if (v39 + 1 < 1)
              {
                break;
              }

              ++v36;
              v23 = v39;
              if (v35 == v36)
              {
                goto LABEL_42;
              }
            }

            v35 = v36;
          }

          else
          {
            v39 = v23;
LABEL_42:
            if (v39)
            {
              goto LABEL_237;
            }

            v23 = 0;
          }

          v33 = (v35 << ((4 * v27 + 8) & 0x3C)) | ((-15 << ((4 * v27 + 8) & 0x3C)) - 1) & v33;
          v2 = *(v34 + 24 + 24 * v35);
          swift_unknownObjectRetain();
          v13 = swift_unknownObjectRelease();
          v25 = (v2 + 16);
          LOBYTE(v27) = *(v2 + 18);
          v34 = v2;
        }

        while (v27);
        LODWORD(v26) = *v25;
        if (!*v25)
        {
          v40 = 0;
          v18 = v201;
LABEL_53:
          if (v23)
          {
            goto LABEL_262;
          }

          v30 = 0;
LABEL_55:
          swift_unknownObjectRelease();
          v29 = v33 & 0xFFFFFFFFFFFFF0FFLL | (v40 << 8);
          v24 = v203;
          goto LABEL_56;
        }
      }

      else
      {
        v33 = 0;
        v2 = v22;
      }

      v40 = 0;
      v41 = 24;
      v30 = v23;
      v42 = v26;
      v18 = v201;
      do
      {
        v43 = *(v2 + v41);
        v23 = v30 - v43;
        if (__OFSUB__(v30, v43))
        {
          goto LABEL_235;
        }

        if (__OFADD__(v23, 1))
        {
          goto LABEL_236;
        }

        if (v23 + 1 < 1)
        {
          goto LABEL_55;
        }

        ++v40;
        v41 += 24;
        v30 -= v43;
      }

      while (v42 != v40);
      v40 = v42;
      goto LABEL_53;
    }

    if (v183 >= 0x800)
    {
      goto LABEL_258;
    }

    v30 = 0;
LABEL_57:
    v44 = v23 - v30;
    v32 = v194;
    if (__OFSUB__(v23, v30))
    {
      goto LABEL_249;
    }

    v12 = v185;
    if (v2 == v44)
    {
LABEL_207:
      v138 = v19;
      goto LABEL_208;
    }

LABEL_59:
    if (v32 != *(v12 + 96))
    {
      goto LABEL_238;
    }

    if (v21)
    {
      v45 = (v21 + 24 * ((v204 >> ((4 * *(v21 + 18) + 8) & 0x3C)) & 0xF));
      v46 = v45[4];
      v47 = v45[5];
      v48 = v45[3];
      v49 = v2 + v48;
      v50 = __OFADD__(v2, v48);
      v209 = v46;

      v202 = v47;

      if (v50)
      {
        goto LABEL_247;
      }
    }

    else
    {
      v51 = *(v12 + 72);
      swift_unknownObjectRetain();
      v52 = v204;
      specialized Rope._Node.subscript.getter(v204, v51);
      v209 = v53;
      v202 = v54;
      swift_unknownObjectRelease();
      if (v32 != *(v12 + 96))
      {
        goto LABEL_253;
      }

      v55 = *(v12 + 72);
      swift_unknownObjectRetain();
      v56 = specialized Rope._Node.subscript.getter(v52, v55);
      swift_unknownObjectRelease();

      v57 = __OFADD__(v2, v56);
      v49 = v2 + v56;
      if (v57)
      {
        goto LABEL_254;
      }
    }

    v58 = v23;
    if (v2 >= v23)
    {
      if (v18 >= v2)
      {
        v58 = v2;
      }

      else
      {
        v58 = v18;
      }
    }

    if (v49 <= v23)
    {
      v59 = v23;
    }

    else
    {
      v59 = v49;
    }

    if (v18 < v49)
    {
      v59 = v18;
    }

    if (v58 == v59)
    {
      goto LABEL_239;
    }

    v60 = v59 - v58;
    if (__OFSUB__(v59, v58))
    {
      goto LABEL_240;
    }

    v61 = *(v12 + 72);
    v62 = *(v12 + 96);
    v63 = v204;
    *&v222 = v32;
    *(&v222 + 1) = v204;
    *&v223 = v206;
    if (__OFADD__(v199, 1))
    {
      goto LABEL_242;
    }

    if (v32 != v62)
    {
      goto LABEL_243;
    }

    ++v199;
    if (v206)
    {
      v64 = *(v206 + 24 * ((v204 >> ((4 * *(v206 + 18) + 8) & 0x3C)) & 0xF) + 24);
      v57 = __OFADD__(v205, v64);
      v205 += v64;
      if (v57)
      {
        goto LABEL_248;
      }

      if (!v61)
      {
        goto LABEL_241;
      }

      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v65 = specialized Rope._Node.subscript.getter(v63, v61);

      v57 = __OFADD__(v205, v65);
      v205 += v65;
      if (v57)
      {
        goto LABEL_255;
      }

      v63 = v204;
      if (!v61)
      {
        goto LABEL_241;
      }
    }

    if (v63 >= (((-15 << ((4 * *(v61 + 18) + 8) & 0x3C)) - 1) & *(v61 + 18) | (*(v61 + 16) << ((4 * *(v61 + 18) + 8) & 0x3C))))
    {
      goto LABEL_241;
    }

    if (v206)
    {
      v66 = (4 * *(v206 + 18) + 8) & 0x3C;
      v67 = ((v204 >> v66) & 0xF) + 1;
      if (v67 < *(v206 + 16))
      {
        v68 = swift_unknownObjectRelease();
        v69 = (v67 << v66) | ((-15 << v66) - 1) & v204;
LABEL_93:
        v204 = v69;
        goto LABEL_95;
      }
    }

    if (specialized Rope._Node.formSuccessor(of:)(&v222, v61))
    {
      v68 = swift_unknownObjectRelease();
      v69 = *(&v222 + 1);
      goto LABEL_93;
    }

    v70 = *(v61 + 18);
    v71 = *(v61 + 16);
    v68 = swift_unknownObjectRelease();
    *&v222 = v32;
    *(&v222 + 1) = ((-15 << ((4 * v70 + 8) & 0x3C)) - 1) & v70 | (v71 << ((4 * v70 + 8) & 0x3C));
    v204 = *(&v222 + 1);
    *&v223 = 0;
LABEL_95:
    v18 = v201;
    v16 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd;
    v3 = v207;
    if (v205 < v201)
    {
      v194 = v222;
      v72 = v223;
      goto LABEL_137;
    }

    v73 = *(v12 + 72);
    if (v200 != v201)
    {
      v194 = *(v12 + 96);
      if (v73)
      {
        v72 = 0;
        v88 = *(v12 + 80);
        v205 = *(v12 + 88);
        v199 = v88;
        v204 = ((-15 << ((4 * *(v73 + 18) + 8) & 0x3C)) - 1) & *(v73 + 18) | (*(v73 + 16) << ((4 * *(v73 + 18) + 8) & 0x3C));
      }

      else
      {
        v204 = 0;
        v205 = 0;
        v72 = 0;
        v199 = 0;
      }

      goto LABEL_137;
    }

    v194 = *(v12 + 96);
    if (!v73)
    {
      if (v183 >= 0x800)
      {
        goto LABEL_261;
      }

      v89 = 0;
      v90 = 0;
      v204 = 0;
      v199 = 0;
      goto LABEL_135;
    }

    v74 = *(v12 + 88);
    if (v74 < v200)
    {
      goto LABEL_259;
    }

    v75 = (v73 + 16);
    v76 = *(v73 + 16);
    v77 = *(v73 + 18);
    v206 = *(v12 + 80);
    if (v76 && v200 < v74)
    {
      swift_unknownObjectRetain_n();
      if (v77)
      {
        v78 = v200;
        v79 = v77;
        v80 = v73;
        do
        {
          v81 = *v75;
          if (*v75)
          {
            v84 = 0;
            v85 = (v80 + 40);
            while (1)
            {
              v86 = *v85;
              v85 += 3;
              v87 = v78 - v86;
              if (__OFSUB__(v78, v86))
              {
                goto LABEL_229;
              }

              if (__OFADD__(v87, 1))
              {
                goto LABEL_230;
              }

              if (v87 + 1 < 1)
              {
                break;
              }

              ++v84;
              v78 = v87;
              if (v81 == v84)
              {
                goto LABEL_114;
              }
            }

            v81 = v84;
          }

          else
          {
            v87 = v78;
LABEL_114:
            if (v87)
            {
              goto LABEL_246;
            }

            v78 = 0;
          }

          v79 = (v81 << ((4 * v77 + 8) & 0x3C)) | ((-15 << ((4 * v77 + 8) & 0x3C)) - 1) & v79;
          v82 = *(v80 + 24 + 24 * v81);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v83 = v82;
          v75 = (v82 + 16);
          LOBYTE(v77) = *(v83 + 18);
          v80 = v83;
        }

        while (v77);
        LODWORD(v76) = *v75;
        if (!*v75)
        {
          v93 = 0;
          v18 = v201;
          v16 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd;
LABEL_131:
          if (v78)
          {
            goto LABEL_263;
          }

          v89 = 0;
LABEL_133:
          v97 = v83;
          swift_unknownObjectRelease();
          v92 = v97;
          v91 = v79 & 0xFFFFFFFFFFFFF0FFLL | (v93 << 8);
          v12 = v185;
          goto LABEL_134;
        }
      }

      else
      {
        v79 = 0;
        v78 = v200;
        v83 = v73;
      }

      v16 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd;
      v93 = 0;
      v94 = 24;
      v89 = v78;
      v95 = v76;
      v18 = v201;
      do
      {
        v96 = *(v83 + v94);
        v78 = v89 - v96;
        if (__OFSUB__(v89, v96))
        {
          goto LABEL_244;
        }

        if (__OFADD__(v78, 1))
        {
          goto LABEL_245;
        }

        if (v78 + 1 < 1)
        {
          goto LABEL_133;
        }

        ++v93;
        v94 += 24;
        v89 -= v96;
      }

      while (v95 != v93);
      v93 = v95;
      goto LABEL_131;
    }

    v91 = ((-15 << ((4 * v77 + 8) & 0x3C)) - 1) & v77 | (v76 << ((4 * v77 + 8) & 0x3C));
    swift_unknownObjectRetain();
    v89 = 0;
    v92 = 0;
    v18 = v201;
    v16 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd;
LABEL_134:
    v204 = v91;
    v98 = v91;
    v90 = v92;
    v199 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v194, v98, v92, v73, v206);
    v68 = swift_unknownObjectRelease();
LABEL_135:
    v205 = v200 - v89;
    if (__OFSUB__(v200, v89))
    {
      goto LABEL_257;
    }

    v72 = v90;
    v3 = v207;
LABEL_137:
    v206 = v72;
    if ((v208 & 1) == 0)
    {
      break;
    }

    v20 = 0;
    v182 = v202;
    v19 = v209;
  }

  v191 = &v180;
  MEMORY[0x1EEE9AC00](v68);
  v99 = v209;
  *(&v180 - 4) = v60;
  *(&v180 - 3) = v99;
  *(&v180 - 2) = v202;
  MEMORY[0x1EEE9AC00](v100);
  *(&v180 - 2) = partial apply for closure #1 in AttributedString.Guts.getUniformValues(in:);
  *(&v180 - 1) = v102;
  v103 = *(v3 + 32);
  v184 = ((1 << v103) + 63) >> 6;
  if ((v103 & 0x3Fu) <= 0xD)
  {
    goto LABEL_139;
  }

  v162 = v3;

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_139:
    v190 = &v180;
    MEMORY[0x1EEE9AC00](v101);
    v193 = (&v180 - ((v104 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v193, v104);
    v192 = 0;
    v12 = 0;
    v8 = v3 + 64;
    v105 = 1 << *(v3 + 32);
    if (v105 < 64)
    {
      v106 = ~(-1 << v105);
    }

    else
    {
      v106 = -1;
    }

    v107 = v106 & *(v3 + 64);
    v6 = (v105 + 63) >> 6;
LABEL_143:
    if (v107)
    {
      v108 = __clz(__rbit64(v107));
      v208 = (v107 - 1) & v107;
      goto LABEL_150;
    }

    v109 = v12;
    while (1)
    {
      v12 = v109 + 1;
      if (__OFADD__(v109, 1))
      {
        break;
      }

      if (v12 >= v6)
      {
        v137 = v192;
        if (v192)
        {
          v12 = v185;
          if (v192 == *(v3 + 16))
          {

            v138 = v3;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
            v138 = static _DictionaryStorage.allocate(capacity:)();
            v139 = 0;
            v140 = v193;
            v141 = *v193;
            v142 = v138 + 64;
            do
            {
              if (v141)
              {
                v146 = __clz(__rbit64(v141));
                v141 &= v141 - 1;
              }

              else
              {
                v147 = v139;
                v18 = v201;
                do
                {
                  v139 = v147 + 1;
                  if (__OFADD__(v147, 1))
                  {
                    goto LABEL_231;
                  }

                  if (v139 >= v184)
                  {
                    goto LABEL_166;
                  }

                  v148 = v140[v139];
                  ++v147;
                }

                while (!v148);
                v146 = __clz(__rbit64(v148));
                v141 = (v148 - 1) & v148;
              }

              v149 = v146 | (v139 << 6);
              v150 = *(v3 + 56);
              v151 = (*(v3 + 48) + 16 * v149);
              v152 = *v151;
              v153 = v151[1];
              outlined init with copy of AttributedString._AttributeValue(v150 + 72 * v149, &v222);
              v214 = v224;
              v215 = v225;
              v216 = v226;
              v212 = v222;
              v213 = v223;
              Hasher.init(_seed:)();

              String.hash(into:)();
              v154 = Hasher._finalize()();
              v155 = -1 << *(v138 + 32);
              v156 = v154 & ~v155;
              v157 = v156 >> 6;
              if (((-1 << v156) & ~*(v142 + 8 * (v156 >> 6))) != 0)
              {
                v143 = __clz(__rbit64((-1 << v156) & ~*(v142 + 8 * (v156 >> 6)))) | v156 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v158 = 0;
                v159 = (63 - v155) >> 6;
                do
                {
                  if (++v157 == v159 && (v158 & 1) != 0)
                  {
                    goto LABEL_234;
                  }

                  v160 = v157 == v159;
                  if (v157 == v159)
                  {
                    v157 = 0;
                  }

                  v158 |= v160;
                  v161 = *(v142 + 8 * v157);
                }

                while (v161 == -1);
                v143 = __clz(__rbit64(~v161)) + (v157 << 6);
              }

              *(v142 + ((v143 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v143;
              v144 = (*(v138 + 48) + 16 * v143);
              *v144 = v152;
              v144[1] = v153;
              v145 = *(v138 + 56) + 72 * v143;
              *(v145 + 16) = v213;
              *(v145 + 32) = v214;
              *(v145 + 48) = v215;
              *(v145 + 64) = v216;
              *v145 = v212;
              ++*(v138 + 16);
              --v137;
              v3 = v207;
              v140 = v193;
            }

            while (v137);
          }
        }

        else
        {
          v138 = MEMORY[0x1E69E7CC8];
          v12 = v185;
        }

        v18 = v201;
LABEL_166:

LABEL_167:

        v20 = 0;
        v19 = v138;
        v21 = v206;
        if (!*(v138 + 16))
        {
LABEL_208:

          return v138;
        }

        goto LABEL_15;
      }

      v110 = *(v8 + 8 * v12);
      v109 = (v109 + 1);
      if (v110)
      {
        v108 = __clz(__rbit64(v110));
        v208 = (v110 - 1) & v110;
LABEL_150:
        v111 = v108 | (v12 << 6);
        v112 = *(v3 + 56);
        v113 = (*(v3 + 48) + 16 * v111);
        v114 = *v113;
        v115 = v113[1];
        v203 = v111;
        outlined init with copy of AttributedString._AttributeValue(v112 + 72 * v111, v227);
        *&v222 = v114;
        *(&v222 + 1) = v115;
        outlined init with copy of AttributedString._AttributeValue(v227, &v223);
        outlined init with copy of FloatingPointRoundingRule?(&v222, &v212, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
        v116 = v212;
        v117 = *(v209 + 16);
        swift_bridgeObjectRetain_n();
        if (v117)
        {
          v118 = specialized __RawDictionaryStorage.find<A>(_:)(v116, *(&v116 + 1));
          v120 = v119;

          if (v120)
          {
            outlined init with copy of AttributedString._AttributeValue(*(v209 + 56) + 72 * v118, v210);
            v219 = v210[2];
            v220 = v210[3];
            v221 = v211;
            v217 = v210[0];
            v218 = v210[1];
            outlined destroy of AttributedString._AttributeValue(&v213);
            v121 = *(&v218 + 1);
            v189 = v219;
            v188 = __swift_project_boxed_opaque_existential_1(&v217, *(&v218 + 1));
            v122 = __swift_project_boxed_opaque_existential_1(&v223, *(&v224 + 1));
            v198 = &v180;
            v196 = *(v121 - 8);
            MEMORY[0x1EEE9AC00](v122);
            v187 = &v180 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
            v197 = &v180;
            v125 = MEMORY[0x1EEE9AC00](v124);
            (*(v127 + 16))(&v180 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0), v125);
            v128 = type metadata accessor for Optional();
            v195 = &v180;
            v186 = v128;
            v129 = *(v128 - 8);
            MEMORY[0x1EEE9AC00](v128);
            v131 = &v180 - v130;
            v132 = v196;
            v133 = swift_dynamicCast();
            v134 = *(v132 + 56);
            if (v133)
            {
              v134(v131, 0, 1, v121);
              v135 = v187;
              (*(v132 + 32))(v187, v131, v121);
              v136 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*(v132 + 8))(v135, v121);
              outlined destroy of AttributedString._AttributeValue(&v217);
              v16 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd;
              outlined destroy of TermOfAddress?(&v222, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
              outlined destroy of AttributedString._AttributeValue(v227);

              v3 = v207;
              v107 = v208;
              if ((v136 & 1) == 0)
              {
                goto LABEL_143;
              }

              *(v193 + ((v203 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v203;
              v57 = __OFADD__(v192++, 1);
              if (!v57)
              {
                goto LABEL_143;
              }

LABEL_264:
              __break(1u);
            }

            v134(v131, 1, 1, v121);
            (*(v129 + 8))(v131, v186);
            outlined destroy of AttributedString._AttributeValue(&v217);
            v16 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd;
            outlined destroy of TermOfAddress?(&v222, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
LABEL_159:
            outlined destroy of AttributedString._AttributeValue(v227);

            v3 = v207;
            v107 = v208;
            goto LABEL_143;
          }
        }

        else
        {
        }

        outlined destroy of TermOfAddress?(&v222, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
        outlined destroy of AttributedString._AttributeValue(&v213);
        goto LABEL_159;
      }
    }

    __break(1u);
LABEL_220:
    v176 = v109;
    goto LABEL_221;
  }

  v163 = swift_slowAlloc();

  v164 = v181;
  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v163, v184, v162, thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed AttributedString._AttributeValue) -> (@unowned Bool, @error @owned Error)partial apply);
  v181 = v164;
  if (!v164)
  {
    v138 = v165;

    MEMORY[0x1865D2690](v163, -1, -1);

    goto LABEL_167;
  }

  result = MEMORY[0x1865D2690](v163, -1, -1);
  __break(1u);
  return result;
}

void *specialized Rope.update<A>(at:by:)(void *result, void *a2, uint64_t *a3)
{
  v3 = *result;
  if (*result != a2[3])
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!*a2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  specialized Rope._Node._prepareModify(at:)(result[1], v11);
  v15 = v13;
  v14 = v12;
  v8 = *a3;
  v7 = a3[1];

  outlined destroy of TermOfAddress?(&v14, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  result = outlined destroy of TermOfAddress?(&v15, &_sShySSGMd);
  v12 = v8;
  v13 = v7;
  a2[3] = v3 + 1;
  *v6 = v3 + 1;
  if (*a2)
  {
    v9 = specialized Rope._Node._finalizeModify(_:)(&v10, v11);

    v6[2] = v9;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t AttributedString.Guts.attributesToUseForTextReplacement(in:)(uint64_t a1)
{
  v2 = v1;
  v115 = *MEMORY[0x1E69E9840];
  v4 = *(v1 + 40);
  v110 = *(v1 + 24);
  v111 = v4;
  v112 = *(v1 + 56);
  v5 = *(v1 + 40);
  v92 = *(v1 + 24);
  v93 = v5;
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  if (BigString.isEmpty.getter())
  {
    return MEMORY[0x1E69E7CC8];
  }

  v9 = *a1;
  if (*a1 >= 0x800uLL && (*(a1 + 32) ^ v9) <= 0x3FF)
  {
    a1 = *(a1 + 8);
    *&v106[72] = v92;
    v107 = v93;
    v108 = v6;
    v109 = v7;
    v113[0] = v110;
    v113[1] = v111;
    v114 = v112;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v113, &v103);
    v9 = BigString.UTF8View.index(before:)();
    outlined destroy of BigString(&v110);
  }

  v10 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = v9 >> 11;
  if (v10)
  {
    v13 = *(v2 + 88);
  }

  else
  {
    v13 = 0;
  }

  if (v13 < v12)
  {
    goto LABEL_98;
  }

  v87 = 0;
  v14 = *(v2 + 80);
  *&v93 = *(v2 + 96);
  if (!v10 || v12 >= v11 || (a1 = v10 + 16, v15 = *(v10 + 16), !*(v10 + 16)))
  {
    v25 = swift_unknownObjectRetain();
    v26 = specialized Rope._endPath.getter(v25);
    v20 = 0;
    v27 = 0;
    if (!v10)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v91 = v14;
  v16 = *(v10 + 18);
  swift_unknownObjectRetain_n();
  *&v92 = v11;
  if (!v16)
  {
    v17 = 0;
    v20 = v10;
LABEL_82:
    v80 = 0;
    v79 = v15;
    v81 = 24;
    while (1)
    {
      v82 = *(v20 + v81);
      v57 = __OFSUB__(v12, v82);
      v12 -= v82;
      if (v57)
      {
        goto LABEL_94;
      }

      if (__OFADD__(v12, 1))
      {
        goto LABEL_95;
      }

      if (v12 + 1 < 1)
      {
        goto LABEL_88;
      }

      ++v80;
      v81 += 24;
      if (v15 == v80)
      {
        goto LABEL_87;
      }
    }
  }

  v17 = v16;
  v18 = v10;
  do
  {
    v19 = *a1;
    if (*a1)
    {
      v21 = 0;
      v22 = (v18 + 40);
      while (1)
      {
        v23 = *v22;
        v22 += 3;
        v24 = v12 - v23;
        if (__OFSUB__(v12, v23))
        {
          __break(1u);
LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

        if (__OFADD__(v24, 1))
        {
          goto LABEL_90;
        }

        if (v24 + 1 < 1)
        {
          break;
        }

        ++v21;
        v12 = v24;
        if (v19 == v21)
        {
          goto LABEL_25;
        }
      }

      v19 = v21;
    }

    else
    {
      v24 = v12;
LABEL_25:
      if (v24)
      {
        goto LABEL_96;
      }

      v12 = 0;
    }

    v17 = (v19 << ((4 * v16 + 8) & 0x3C)) | ((-15 << ((4 * v16 + 8) & 0x3C)) - 1) & v17;
    v20 = *(v18 + 24 + 24 * v19);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    a1 = v20 + 16;
    LOBYTE(v16) = *(v20 + 18);
    v18 = v20;
  }

  while (v16);
  v15 = *a1;
  if (*a1)
  {
    goto LABEL_82;
  }

  v79 = 0;
LABEL_87:
  v80 = v79;
  if (v12)
  {
    __break(1u);
  }

LABEL_88:
  swift_unknownObjectRelease();
  v26 = v17 & 0xFFFFFFFFFFFFF0FFLL | (v80 << 8);
  v14 = v91;
LABEL_28:
  specialized Rope._Node.distanceFromStart<A>(to:in:)(v93, v26, v20, v10, v14);
  swift_unknownObjectRelease();
  v27 = v20;
LABEL_29:
  v29 = *(v2 + 72);
  v28 = *(v2 + 80);
  v31 = *(v2 + 88);
  v30 = *(v2 + 96);
  swift_unknownObjectRetain();
  specialized Rope.subscript.getter(v93, v26, v27, v29, v28, v31, v30);
  v2 = v32;
  a1 = v33;
  v34 = swift_unknownObjectRelease();
  v35 = *(v2 + 32);
  v88 = ((1 << v35) + 63) >> 6;
  if ((v35 & 0x3Fu) > 0xD)
  {
    goto LABEL_99;
  }

  while (1)
  {
    v89 = &v86;
    v90 = a1;
    MEMORY[0x1EEE9AC00](v34);
    v91 = (&v86 - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v91, v36);
    *&v93 = 0;
    v37 = 0;
    a1 = v2 + 64;
    v38 = 1 << *(v2 + 32);
    v39 = v38 < 64 ? ~(-1 << v38) : -1;
    v40 = v39 & *(v2 + 64);
    v41 = (v38 + 63) >> 6;
    *&v92 = v2;
    while (v40)
    {
      v42 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
LABEL_42:
      v45 = v42 | (v37 << 6);
      v46 = *(v2 + 56);
      v47 = (*(v2 + 48) + 16 * v45);
      v49 = *v47;
      v48 = v47[1];
      outlined init with copy of AttributedString._AttributeValue(v46 + 72 * v45, v106);
      *&v103 = v49;
      *(&v103 + 1) = v48;
      outlined init with copy of AttributedString._AttributeValue(v106, v104);
      outlined init with copy of FloatingPointRoundingRule?(&v103, &v97, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);

      LODWORD(v48) = v102;
      outlined destroy of AttributedString._AttributeValue(&v98);
      if (v48 == 1)
      {
        outlined init with copy of FloatingPointRoundingRule?(&v103, &v94, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);

        v50 = v96;
        if (v96 && *(v96 + 16) && (Hasher.init(_seed:)(), MEMORY[0x1865CD060](0), v51 = Hasher._finalize()(), v52 = v50 + 56, v53 = -1 << *(v50 + 32), v54 = v51 & ~v53, ((*(v50 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) != 0))
        {
          v55 = ~v53;
          v56 = *(v50 + 48);
          v2 = v92;
          while (*(v56 + 16 * v54 + 8))
          {
            v54 = (v54 + 1) & v55;
            if (((*(v52 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
            {
              goto LABEL_49;
            }
          }

          outlined destroy of TermOfAddress?(&v103, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
          outlined destroy of AttributedString._AttributeValue(v106);
          outlined destroy of AttributedString._AttributeValue(v95);
        }

        else
        {
          v2 = v92;
LABEL_49:
          outlined destroy of TermOfAddress?(&v103, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
          outlined destroy of AttributedString._AttributeValue(v106);
          outlined destroy of AttributedString._AttributeValue(v95);
          *(v91 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
          v57 = __OFADD__(v93, 1);
          *&v93 = v93 + 1;
          if (v57)
          {
            goto LABEL_97;
          }
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v103, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
        outlined destroy of AttributedString._AttributeValue(v106);
        v2 = v92;
      }
    }

    v43 = v37;
    while (1)
    {
      v37 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v37 >= v41)
      {
        if (!v93)
        {
          v8 = MEMORY[0x1E69E7CC8];
          goto LABEL_58;
        }

        if (v93 == *(v2 + 16))
        {

          v8 = v2;
          goto LABEL_58;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v8 = static _DictionaryStorage.allocate(capacity:)();
        a1 = 0;
        v59 = *v91;
        v60 = v8 + 64;
        while (v59)
        {
          v64 = __clz(__rbit64(v59));
          v59 &= v59 - 1;
LABEL_70:
          v67 = v64 | (a1 << 6);
          v68 = *(v2 + 56);
          v69 = (*(v2 + 48) + 16 * v67);
          v70 = *v69;
          v2 = v69[1];
          outlined init with copy of AttributedString._AttributeValue(v68 + 72 * v67, &v103);
          v99 = v104[1];
          v100 = v104[2];
          v101 = v105;
          v97 = v103;
          v98 = v104[0];
          Hasher.init(_seed:)();

          String.hash(into:)();
          v71 = Hasher._finalize()();
          v72 = -1 << *(v8 + 32);
          v73 = v71 & ~v72;
          v74 = v73 >> 6;
          if (((-1 << v73) & ~*(v60 + 8 * (v73 >> 6))) == 0)
          {
            v75 = 0;
            v76 = (63 - v72) >> 6;
            while (++v74 != v76 || (v75 & 1) == 0)
            {
              v77 = v74 == v76;
              if (v74 == v76)
              {
                v74 = 0;
              }

              v75 |= v77;
              v78 = *(v60 + 8 * v74);
              if (v78 != -1)
              {
                v61 = __clz(__rbit64(~v78)) + (v74 << 6);
                goto LABEL_62;
              }
            }

            goto LABEL_93;
          }

          v61 = __clz(__rbit64((-1 << v73) & ~*(v60 + 8 * (v73 >> 6)))) | v73 & 0x7FFFFFFFFFFFFFC0;
LABEL_62:
          *(v60 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
          v62 = (*(v8 + 48) + 16 * v61);
          *v62 = v70;
          v62[1] = v2;
          v63 = *(v8 + 56) + 72 * v61;
          *(v63 + 16) = v98;
          *(v63 + 32) = v99;
          *(v63 + 48) = v100;
          *(v63 + 64) = v101;
          *v63 = v97;
          ++*(v8 + 16);
          *&v93 = v93 - 1;
          v2 = v92;
          if (!v93)
          {
            goto LABEL_58;
          }
        }

        v65 = a1;
        while (1)
        {
          a1 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            goto LABEL_92;
          }

          if (a1 >= v88)
          {
            goto LABEL_58;
          }

          v66 = v91[a1];
          ++v65;
          if (v66)
          {
            v64 = __clz(__rbit64(v66));
            v59 = (v66 - 1) & v66;
            goto LABEL_70;
          }
        }
      }

      v44 = *(a1 + 8 * v37);
      ++v43;
      if (v44)
      {
        v42 = __clz(__rbit64(v44));
        v40 = (v44 - 1) & v44;
        goto LABEL_42;
      }
    }

LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v83 = swift_slowAlloc();

  v84 = v87;
  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v83, v88, v2, closure #1 in AttributedString._AttributeStorage.attributesForAddedText());
  if (!v84)
  {
    v8 = v85;

    MEMORY[0x1865D2690](v83, -1, -1);
LABEL_58:

    return v8;
  }

  result = MEMORY[0x1865D2690](v83, -1, -1);
  __break(1u);
  return result;
}

uint64_t AttributedString.Guts.init(string:runs:)(_OWORD *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = BigString.isEmpty.getter() & 1;
  specialized Rope._endPath.getter(a2);
  if (a2)
  {
    v13 = a4 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  if (v14 != v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_11:
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v16 = a1[1];
  *(v6 + 24) = *a1;
  *(v6 + 16) = add_explicit;
  *(v6 + 40) = v16;
  *(v6 + 56) = a1[2];
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  *(v6 + 88) = a4;
  *(v6 + 96) = a5;
  *(v6 + 104) = MEMORY[0x1E69E7CC0];
  return v6;
}

__n128 AttributedString.Guts.description(in:)(uint64_t a1)
{
  v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  MEMORY[0x1EEE9AC00](v431);
  v419 = &v398 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v440 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v424 = &v398 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v426 = &v398 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v398 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v436 = &v398 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v439 = &v398 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v398 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v398 - v20;
  v429 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v429);
  v428 = &v398 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v398 - v24);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v399 = &v398 - v28;
  v469 = 0;
  v470 = 0xE000000000000000;
  v430 = v14;
  v401 = *(v14 + 16);
  v402 = v14 + 16;
  v401(v21, a1, v13, v27);
  v432 = v25;
  *v25 = v425;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  v433 = v18;
  v29 = v436;
  RangeSet.init()();
  v445 = v13;
  v427 = v21;
  RangeSet.ranges.getter();
  v30 = v440;
  (*(v440 + 16))(v29, v9, v3);
  v31 = *(v11 + 44);
  v32 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Collection.startIndex.getter();
  v33 = *(v30 + 8);
  v442 = v9;
  v440 = v30 + 8;
  v444 = v33;
  v33(v9, v3);
  dispatch thunk of Collection.endIndex.getter();
  v34 = *(v29 + v31);
  v443 = v3;
  if (v34 != v515)
  {
    v434 = v31;
    v435 = v32;
    do
    {
      v42 = dispatch thunk of Collection.subscript.read();
      v44 = v43[5];
      v441 = v43[4];
      v437 = v43[6];
      v438 = v44;
      v42(&v515, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v45 = v425;
      v46 = *(v425 + 40);
      v534 = *(v425 + 24);
      v535 = v46;
      v536 = *(v425 + 56);
      swift_unknownObjectRetain();
      v47 = BigString.UnicodeScalarView.index(roundingDown:)();
      v49 = v48;
      v51 = v50;
      v53 = v52;
      swift_unknownObjectRelease();
      v54 = *(v45 + 40);
      v531 = *(v45 + 24);
      v532 = v54;
      v533 = *(v45 + 56);
      swift_unknownObjectRetain();
      v55 = BigString.UnicodeScalarView.index(roundingDown:)();
      v57 = v56;
      v59 = v58;
      v61 = v60;
      swift_unknownObjectRelease();
      *&v515 = v47;
      *(&v515 + 1) = v49;
      *&v516 = v51;
      *(&v516 + 1) = v53;
      *&v517 = v55;
      *(&v517 + 1) = v57;
      *&v518 = v59;
      v3 = v443;
      *(&v518 + 1) = v61;
      if ((v55 ^ v47) >= 0x400)
      {
        v62 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v62(v471, 0);
      }

      v29 = v436;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v29 + v434) != v515);
  }

  outlined destroy of TermOfAddress?(v29, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v35 = v429;
  v36 = v432;
  (v401)(v432 + *(v429 + 24), v433, v445);
  v37 = v442;
  RangeSet.ranges.getter();
  v38 = RangeSet.Ranges.count.getter();
  v444(v37, v3);
  v39 = *(v35 + 28);
  LODWORD(v423) = v38 > 1;
  *(v36 + v39) = v423;
  v40 = v426;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v471[0] == v515)
  {
    v444(v40, v3);
    v41 = v425;
  }

  else
  {
    v63 = dispatch thunk of Collection.subscript.read();
    v65 = *v64;
    v421 = v64[1];
    v422 = v65;
    v66 = v64[3];
    v420 = v64[2];
    v418 = v66;
    v63(&v515, 0);
    v67 = v444;
    v444(v40, v3);
    v68 = v424;
    RangeSet.ranges.getter();
    v69 = dispatch thunk of Collection.isEmpty.getter();
    v41 = v425;
    if ((v69 & 1) == 0)
    {
      v356 = v68;
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
      dispatch thunk of BidirectionalCollection.index(before:)();
      v357 = dispatch thunk of Collection.subscript.read();
      v359 = v358[4];
      v417 = v358[5];
      v360 = v358[6];
      v361 = v358[7];
      v357(&v515, 0);
      v67(v356, v3);
      AttributedString.Guts.findRun(at:)(v422, v418, &v515);
      v416 = v515;
      v411 = *(&v516 + 1);
      v412 = v516;
      v441 = *(&v517 + 1);
      v437 = *(&v518 + 1);
      v438 = v518;
      v436 = v519;
      v362 = *(v41 + 40);
      v528 = *(v41 + 24);
      v529 = v362;
      v530 = *(v41 + 56);
      v363 = BigString.endIndex.getter();
      v414 = v360;
      v415 = v359;
      v413 = v361;
      if ((v363 ^ v359) >= 0x400)
      {
        AttributedString.Guts.findRun(at:)(v359, v361, &v515);
        v112 = v515;
        v424 = v516;
        v409 = *(&v517 + 1);
        v410 = *(&v516 + 1);
        v434 = v518;
        v435 = *(&v515 + 1);
        v370 = v67;
        v89 = *(&v518 + 1);
        v91 = v519;
        v71 = v442;
        v371 = v445;
        RangeSet.ranges.getter();
        v426 = RangeSet.Ranges.count.getter();
        v370(v71, v3);
        v372 = *(v430 + 8);
        v372(v433, v371);
        v372(v427, v371);
        v108 = v424;
        v87 = v409;
        v95 = v410;
        v105 = v415;
        v73 = v416;
        v96 = 0;
        v111 = v431;
        v94 = v423;
        v72 = *(&v416 + 1);
        v107 = v417;
        v101 = v421;
        v98 = v422;
        v102 = v420;
        v104 = v418;
        v97 = v441;
        v100 = v437;
        v99 = v438;
        v103 = v436;
        v110 = v413;
        v109 = v414;
        v92 = v411;
        v93 = v412;
      }

      else
      {
        v364 = *(v41 + 72);
        if (v364)
        {
          v365 = *(v41 + 80);
        }

        else
        {
          v365 = 0;
        }

        v410 = v365;
        v366 = *(v41 + 96);
        v367 = swift_unknownObjectRetain();
        v424 = v366;
        v435 = specialized Rope._endPath.getter(v367);
        if (v364)
        {
          swift_unknownObjectRelease();
        }

        v71 = v442;
        v368 = v445;
        RangeSet.ranges.getter();
        v3 = v443;
        v426 = RangeSet.Ranges.count.getter();
        v67(v71, v3);
        v369 = *(v430 + 8);
        v369(v433, v368);
        v369(v427, v368);
        v96 = 0;
        v108 = 0;
        v109 = v414;
        v105 = v415;
        v87 = v415;
        v72 = *(&v416 + 1);
        v107 = v417;
        v434 = v417;
        v89 = v414;
        v93 = v412;
        v110 = v413;
        v91 = v413;
        v111 = v431;
        v94 = v423;
        v101 = v421;
        v98 = v422;
        v73 = v416;
        v102 = v420;
        v104 = v418;
        v97 = v441;
        v100 = v437;
        v99 = v438;
        v103 = v436;
        v112 = v424;
        v95 = v410;
        v92 = v411;
      }

      goto LABEL_17;
    }

    v67(v68, v3);
  }

  v70 = *(v41 + 72);
  v71 = v442;
  if (v70)
  {
    v72 = *(v70 + 18);
  }

  else
  {
    v72 = 0;
  }

  v73 = *(v41 + 96);
  v74 = *(v41 + 40);
  v528 = *(v41 + 24);
  v529 = v74;
  v530 = *(v41 + 56);
  v441 = BigString.startIndex.getter();
  v437 = v76;
  v438 = v75;
  v436 = v77;
  v78 = *(v41 + 72);
  v424 = *(v41 + 96);
  if (v78)
  {
    v435 = *(v78 + 18);
    v79 = *(v430 + 8);
    swift_unknownObjectRetain();
    v80 = v73;
    v81 = v72;
    v82 = v445;
    v79(v433, v445);
    v83 = v82;
    v72 = v81;
    v73 = v80;
    v79(v427, v83);
    swift_unknownObjectRelease();
  }

  else
  {
    v84 = *(v430 + 8);
    v85 = v445;
    v84(v433, v445);
    v84(v427, v85);
    v435 = 0;
  }

  v86 = *(v41 + 40);
  v527[2] = *(v41 + 24);
  v527[3] = v86;
  v527[4] = *(v41 + 56);
  v87 = BigString.startIndex.getter();
  v89 = v88;
  v91 = v90;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = -1;
  v97 = v441;
  v98 = v441;
  v100 = v437;
  v99 = v438;
  v101 = v438;
  v102 = v437;
  v103 = v436;
  v104 = v436;
  v105 = v87;
  v434 = v106;
  v107 = v106;
  v108 = 0;
  v109 = v89;
  v110 = v91;
  v426 = -1;
  v111 = v431;
  v112 = v424;
LABEL_17:
  v113 = v432;
  *(v432 + 8) = v92;
  *(v113 + 16) = v73;
  *(v113 + 24) = v72;
  *(v113 + 32) = v93;
  *(v113 + 40) = v97;
  *(v113 + 48) = v99;
  *(v113 + 56) = v100;
  *(v113 + 64) = v103;
  *(v113 + 72) = v98;
  *(v113 + 80) = v101;
  *(v113 + 88) = v102;
  *(v113 + 96) = v104;
  *(v113 + 104) = v96;
  *(v113 + 112) = 0;
  *(v113 + 113) = v94;
  *(v113 + 120) = v95;
  *(v113 + 128) = v112;
  v114 = v434;
  *(v113 + 136) = v435;
  *(v113 + 144) = v108;
  *(v113 + 152) = v87;
  *(v113 + 160) = v114;
  *(v113 + 168) = v89;
  *(v113 + 176) = v91;
  *(v113 + 184) = v105;
  *(v113 + 192) = v107;
  *(v113 + 200) = v109;
  *(v113 + 208) = v110;
  *(v113 + 216) = v426;
  *(v113 + 224) = 0;
  *(v113 + 225) = v94;
  v115 = v399;
  outlined init with take of AttributedString.Runs(v113, v399);
  v116 = v428;
  outlined init with copy of AttributedString.Runs(v115, v428);
  v117 = v419;
  outlined init with copy of AttributedString.Runs(v116, v419);
  v118 = v117 + *(v111 + 36);
  v119 = *(v116 + 8);
  v120 = *(v116 + 16);
  v121 = *(v116 + 48);
  v466 = *(v116 + 32);
  v467 = v121;
  v122 = *(v116 + 72);
  v468 = *(v116 + 64);
  v464 = *(v116 + 80);
  v465 = v120;
  v463 = *(v116 + 112);
  v123 = *(v116 + 96);
  v462 = *(v116 + 104);
  outlined destroy of AttributedString.Runs(v116);
  v124 = v464;
  *(v118 + 8) = v465;
  v125 = v467;
  *(v118 + 24) = v466;
  *(v118 + 40) = v125;
  *v118 = v119;
  *(v118 + 56) = v468;
  *(v118 + 64) = v122;
  *(v118 + 72) = v124;
  v126 = v462;
  *(v118 + 88) = v123;
  *(v118 + 96) = v126;
  *(v118 + 104) = v463;
  v127 = *(v118 + 8);
  v128 = *(v118 + 16);
  v437 = v123;
  v438 = v127;
  v130 = *(v118 + 24);
  v129 = *(v118 + 32);
  v435 = v122;
  v436 = v130;
  v431 = v129;
  v432 = v119;
  v131 = *(v118 + 48);
  v132 = *(v118 + 56);
  v427 = *(v118 + 40);
  v428 = v132;
  v133 = *(v118 + 72);
  v421 = *(v118 + 80);
  v422 = v133;
  v400 = (v430 + 8);
  LODWORD(v426) = *(v118 + 104);
  v398 = v118;
  for (i = *(v118 + 105); ; i = v434)
  {
    *&v509 = v432;
    *(&v509 + 1) = v438;
    v433 = v128;
    *&v510 = v128;
    *(&v510 + 1) = v436;
    *&v511 = v431;
    *(&v511 + 1) = v427;
    v512.n128_u64[0] = v131;
    v512.n128_u64[1] = v428;
    *&v513 = v435;
    *(&v513 + 1) = v422;
    *&v514[0] = v421;
    *(&v514[0] + 1) = v437;
    *&v514[1] = v126;
    BYTE8(v514[1]) = v426;
    BYTE9(v514[1]) = i;
    if (v432 == *(v117 + 120))
    {
      v136 = *(v117 + 208);
      if (v437 == 2)
      {
        if (v136 == 2)
        {
          goto LABEL_256;
        }
      }

      else if (v136 != 2 && (*(v117 + 184) ^ v435) < 0x400)
      {
        goto LABEL_256;
      }
    }

    v430 = v131;
    v441 = v126;
    v137 = *(v117 + 184);
    v525 = *(v117 + 168);
    v526 = v137;
    v527[0] = *(v117 + 200);
    *(v527 + 10) = *(v117 + 210);
    v138 = *(v117 + 120);
    v521 = *(v117 + 104);
    v522 = v138;
    v139 = *(v117 + 152);
    v523 = *(v117 + 136);
    v524 = v139;
    v140 = *(v117 + 56);
    v517 = *(v117 + 40);
    v518 = v140;
    v141 = *(v117 + 88);
    v519 = *(v117 + 72);
    v520 = v141;
    v142 = *(v117 + 24);
    v515 = *(v117 + 8);
    v516 = v142;
    v143 = v515;
    v418 = v519;
    v144 = *(&v520 + 1);
    v145 = specialized Range.contains(_:)(&v509);
    v146 = v432;
    if (v432 < v143 || (v145 & 1) == 0)
    {
      goto LABEL_263;
    }

    v147 = v143 < v432 || v144 == 2;
    v148 = v147;
    if (!v147)
    {
      if (v437 == 2)
      {
        goto LABEL_285;
      }

      if (v435 >> 10 < v418 >> 10)
      {
        goto LABEL_275;
      }
    }

    if (v522 < v432)
    {
      goto LABEL_264;
    }

    v149 = v432 < v522 || v437 == 2;
    v150 = v149;
    if (!v149)
    {
      if (*(&v527[0] + 1) == 2)
      {
        goto LABEL_286;
      }

      if (v526 >> 10 < v435 >> 10)
      {
        goto LABEL_276;
      }
    }

    v417 = v526;
    v424 = (v431 >> 11);
    v415 = *(&v527[0] + 1);
    *&v416 = v522;
    LODWORD(v414) = v150;
    DWORD2(v416) = v148;
    if (v436 == 1 || v438 != *(*v117 + 96))
    {
      if (*(v117 + *(v429 + 28)))
      {
        goto LABEL_271;
      }

      v160 = *v117;
      v162 = *(*v117 + 72);
      v161 = *(*v117 + 80);
      v163 = v161;
      if (!v162)
      {
        v161 = 0;
      }

      if (v432 < 0 || v161 < v432)
      {
        goto LABEL_272;
      }

      v164 = *(v160 + 96);
      v423 = *(v160 + 88);
      v420 = v164;
      v434 = v160;
      if (v162)
      {
        v166 = (v162 + 16);
        v165 = *(v162 + 16);
        if (*(v162 + 16))
        {
          if (v432 < v163)
          {
            v167 = *(v162 + 18);
            swift_unknownObjectRetain_n();
            if (v167)
            {
              v168 = v167;
              v169 = v162;
              do
              {
                v170 = *v166;
                if (*v166)
                {
                  v172 = 0;
                  v173 = (v169 + 32);
                  while (1)
                  {
                    v174 = *v173;
                    v173 += 3;
                    v175 = v146 - v174;
                    if (__OFSUB__(v146, v174))
                    {
                      goto LABEL_251;
                    }

                    if (__OFADD__(v175, 1))
                    {
                      goto LABEL_252;
                    }

                    if (v175 + 1 < 1)
                    {
                      v170 = v172;
                      goto LABEL_62;
                    }

                    ++v172;
                    v146 = v175;
                    if (v170 == v172)
                    {
                      goto LABEL_71;
                    }
                  }
                }

                v175 = v146;
LABEL_71:
                if (v175)
                {
                  goto LABEL_260;
                }

                v146 = 0;
LABEL_62:
                v168 = (v170 << ((4 * v167 + 8) & 0x3C)) | ((-15 << ((4 * v167 + 8) & 0x3C)) - 1) & v168;
                v167 = *(v169 + 24 + 24 * v170);
                swift_unknownObjectRetain();
                swift_unknownObjectRelease();
                v171 = v167;
                v166 = (v167 + 16);
                LODWORD(v167) = *(v167 + 18);
                v169 = v171;
              }

              while (v167);
              v165 = *v166;
              if (*v166)
              {
                goto LABEL_79;
              }

              v181 = 0;
              v71 = v442;
              v3 = v443;
LABEL_84:
              v183 = v181;
              if (!v146)
              {
LABEL_85:
                v184 = v171;
                swift_unknownObjectRelease();
                v179 = v184;
                v178 = v168 & 0xFFFFFFFFFFFFF0FFLL | (v183 << 8);
                v177 = v423;
                v410 = v178;
                v411 = v184;
                goto LABEL_74;
              }

LABEL_283:
              __break(1u);
              goto LABEL_284;
            }

            v168 = 0;
            v171 = v162;
LABEL_79:
            v71 = v442;
            v3 = v443;
            v182 = 0;
            v181 = v165;
            v183 = v146 & ~(v146 >> 63);
            while ((v146 ^ v182) != 0x8000000000000000)
            {
              if (v183 == v182)
              {
                goto LABEL_85;
              }

              if (v181 == ++v182)
              {
                v146 -= v182;
                goto LABEL_84;
              }
            }

            goto LABEL_259;
          }
        }
      }

      v176 = swift_unknownObjectRetain();
      v177 = v423;
      v178 = specialized Rope._endPath.getter(v176);
      v179 = 0;
      v3 = v443;
      v410 = v178;
      v411 = 0;
      if (v162)
      {
LABEL_74:
        v180 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v420, v178, v179, v162, v163, v177);
        swift_unknownObjectRelease();
      }

      else
      {
        v180 = 0;
      }

      v151 = v428;
    }

    else
    {
      v434 = *v117;
      v151 = v428;
      if (v428 == 2)
      {
        v152 = v434;
        v153 = *(v434 + 72);
        if (v153)
        {
          v154 = *(v434 + 88);
          v155 = *(v434 + 80);
          swift_unknownObjectRetain();
          v156 = v438;
          v157 = v433;
          v158 = v436;
          v159 = v155;
          v152 = v434;
          specialized Rope._Node.distanceFromStart<A>(to:in:)(v438, v433, v436, v153, v159, v154);
          swift_unknownObjectRelease();
        }

        else
        {
          v156 = v438;
          v158 = v436;
          v157 = v433;
        }

        v403 = 0;
        LODWORD(v423) = 1;
        v410 = v157;
        v411 = v158;
        v420 = v156;
        goto LABEL_94;
      }

      v420 = v438;
      v410 = v433;
      v411 = v436;
      v180 = v424;
    }

    LODWORD(v423) = v151 == 2;
    v403 = v151 != 2;
    if (v151 != 2 && v424 == v180)
    {
      v185 = *(v434 + 40);
      v500 = *(v434 + 24);
      v501 = v185;
      v502 = *(v434 + 56);
      swift_unknownObjectRetain();
      v186 = BigString.UTF8View.index(roundingDown:)();
      v409 = v187;
      v412 = v189;
      v413 = v188;
      swift_unknownObjectRelease();
      LODWORD(v423) = 0;
      goto LABEL_95;
    }

    v152 = v434;
LABEL_94:
    v190 = *(v152 + 24);
    v191 = *(v152 + 56);
    v507 = *(v152 + 40);
    v508 = v191;
    v192 = *(v152 + 40);
    v503 = *(v152 + 24);
    v504 = v192;
    v434 = v152;
    v505 = *(v152 + 56);
    v506 = v190;
    BigString.startIndex.getter();
    v537[0] = v506;
    v537[1] = v507;
    v538 = v508;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v537, &v455);
    v186 = BigString.UTF8View.index(_:offsetBy:)();
    v409 = v193;
    v412 = v195;
    v413 = v194;
    outlined destroy of BigString(&v506);
    v71 = v442;
    v117 = v419;
LABEL_95:
    v196 = v444;
    if (v426)
    {
      v408 = v186;
      if (v437 == 2)
      {
        v197 = v186;
      }

      else
      {
        v197 = v435;
      }

      RangeSet.ranges.getter();
      v198 = RangeSet.Ranges.count.getter();
      v196(v71, v3);
      if (v198 < 1)
      {
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
        goto LABEL_253;
      }

      v199 = 0;
      v200 = v197 >> 10;
      while (!__OFADD__(v199, v198))
      {
        v201 = (v199 + v198) / 2;
        v202 = v117;
        v203 = v442;
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        v444(v203, v3);
        v204 = v455;
        if (v200 >= v455 >> 10)
        {
          v205 = v458;
          if (v200 < v458 >> 10)
          {
            v206 = v456;
            v208 = *(&v457 + 1);
            v207 = v457;
            v210 = v431;
            v209 = v427;
            v186 = v408;
            goto LABEL_109;
          }

          v199 = v201 + 1;
          v201 = v198;
        }

        v198 = v201;
        v3 = v443;
        v117 = v202;
        if (v199 >= v201)
        {
          goto LABEL_250;
        }
      }

      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
      goto LABEL_261;
    }

    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    v196(v71, v3);
    v204 = v455;
    v206 = v456;
    v208 = *(&v457 + 1);
    v207 = v457;
    v205 = v458;
    v209 = v427;
    if (v437 == 2)
    {
      v210 = v431;
LABEL_109:
      v212 = v412;
      v211 = v413;
    }

    else
    {
      v210 = v431;
      v212 = v412;
      v211 = v413;
      if (v435 >> 10 < v455 >> 10 || v435 >> 10 >= v458 >> 10)
      {
        goto LABEL_281;
      }
    }

    v408 = v208;
    v412 = v207;
    v413 = v206;
    v213 = v209;
    v214 = v430;
    v215 = v428;
    if (v423)
    {
      v210 = v186;
      v213 = v409;
      v214 = v211;
      v215 = v212;
    }

    v405 = v214;
    v406 = v215;
    v407 = v213;
    v216 = v434;
    if (v437 == 2)
    {
      v217 = v186;
    }

    else
    {
      v217 = v435;
    }

    v218 = v422;
    if (v437 == 2)
    {
      v218 = v409;
    }

    v409 = v218;
    v219 = v421;
    if (v437 == 2)
    {
      v219 = v211;
    }

    v421 = v219;
    if (v437 == 2)
    {
      v220 = v212;
    }

    else
    {
      v220 = v437;
    }

    v404 = v220;
    v221 = *(v434 + 72);
    v222 = *(v434 + 80);
    v223 = *(v434 + 88);
    v224 = *(v434 + 96);
    swift_unknownObjectRetain();
    v225 = specialized Rope.subscript.getter(v420, v410, v411, v221, v222, v223, v224);
    v227 = v226;
    v229 = v228;
    swift_unknownObjectRelease();
    if (v204 >> 10 >= v210 >> 10)
    {
      v230 = v204;
    }

    else
    {
      v230 = v210;
    }

    if (v204 >> 10 >= v210 >> 10)
    {
      v231 = v413;
    }

    else
    {
      v231 = v407;
    }

    if (v204 >> 10 >= v210 >> 10)
    {
      v232 = v412;
    }

    else
    {
      v232 = v405;
    }

    if (v204 >> 10 >= v210 >> 10)
    {
      v233 = v408;
    }

    else
    {
      v233 = v406;
    }

    v234 = v225 + (v210 >> 11);
    if (__OFADD__(v225, v210 >> 11))
    {
      goto LABEL_265;
    }

    if ((v205 >> 11) < v234)
    {
      v234 = v205 >> 11;
    }

    v236 = *(v216 + 24);
    v235 = (v216 + 24);
    v237 = v235[1];
    v238 = v235[2];
    v497 = v236;
    v498 = v237;
    v499 = v238;
    if (__OFSUB__(v234, v217 >> 11))
    {
      goto LABEL_266;
    }

    v422 = v235;
    v239 = v230;
    v412 = v231;
    v413 = v232;
    v420 = v233;
    swift_unknownObjectRetain();
    v240 = BigString.UTF8View.index(_:offsetBy:)();
    v242 = v241;
    v244 = v243;
    v246 = v245;
    swift_unknownObjectRelease();
    v455 = v227;
    v456 = v229;
    *&v457 = v239;
    *(&v457 + 1) = v412;
    *&v458 = v413;
    *(&v458 + 1) = v420;
    *&v459 = v240;
    *(&v459 + 1) = v242;
    *&v460 = v244;
    v247 = v434;
    *(&v460 + 1) = v246;
    v461 = v434;
    if (DWORD2(v416))
    {
      v248 = v432;
      v117 = v419;
      v3 = v443;
      v249 = v429;
      v250 = v438;
      v251 = v436;
      v252 = v417;
      v253 = v422;
      if (v432 >= v416)
      {
        if (v415 == 2)
        {
          goto LABEL_287;
        }

        if (v437 != 2)
        {
          v254 = v435 >> 10;
          goto LABEL_149;
        }
      }
    }

    else
    {
      v250 = v438;
      v3 = v443;
      v249 = v429;
      v248 = v432;
      v251 = v436;
      v252 = v417;
      if (v437 == 2)
      {
        goto LABEL_288;
      }

      v254 = v435 >> 10;
      v117 = v419;
      v253 = v422;
      if (v435 >> 10 < v418 >> 10)
      {
        goto LABEL_277;
      }

      if (v432 >= v416)
      {
        if (v415 == 2)
        {
          goto LABEL_287;
        }

LABEL_149:
        if (v254 >= v252 >> 10)
        {
          goto LABEL_280;
        }
      }
    }

    if (!v414)
    {
      if (v415 == 2)
      {
        goto LABEL_289;
      }

      if (v252 >> 10 < v435 >> 10)
      {
        goto LABEL_278;
      }
    }

    if (v251 != 1 && v250 == *(v434 + 96))
    {
      if ((v423 & 1) == 0)
      {

        v282 = v424;
        goto LABEL_199;
      }

      v255 = *(v434 + 72);
      if (v255)
      {
        v256 = *(v434 + 88);
        v257 = *(v434 + 80);

        swift_unknownObjectRetain();
        v258 = v250;
        v259 = v251;
        v260 = v255;
        v261 = v257;
        v262 = v433;
        v247 = v434;
        v263 = v256;
LABEL_197:
        v282 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v258, v262, v259, v260, v261, v263);
        swift_unknownObjectRelease();
        goto LABEL_199;
      }

      goto LABEL_198;
    }

    if (*(v117 + *(v249 + 28)))
    {
      goto LABEL_273;
    }

    v264 = *(v434 + 72);
    v265 = *(v434 + 80);
    if (v264)
    {
      v266 = *(v434 + 80);
    }

    else
    {
      v266 = 0;
    }

    if (v248 < 0 || v266 < v248)
    {
      goto LABEL_274;
    }

    v267 = *(v434 + 88);
    v438 = *(v434 + 96);
    v436 = v267;
    if (v264)
    {
      v268 = (v264 + 16);
      v269 = *(v264 + 16);
      if (*(v264 + 16))
      {
        if (v248 < v265)
        {
          break;
        }
      }
    }

    v281 = swift_unknownObjectRetain();
    v250 = v438;
    v262 = specialized Rope._endPath.getter(v281);
    v251 = 0;
    v3 = v443;
    v433 = v262;
    if (v264)
    {
LABEL_196:
      v258 = v250;
      v259 = v251;
      v260 = v264;
      v261 = v265;
      v263 = v436;
      goto LABEL_197;
    }

LABEL_198:
    v282 = 0;
LABEL_199:
    v287 = v403;
    if (v424 != v282)
    {
      v287 = 0;
    }

    v438 = v250;
    v436 = v251;
    v421 = v282;
    if (v287)
    {
      v288 = *(v247 + 40);
      v488 = *(v247 + 24);
      v489 = v288;
      v490 = *(v247 + 56);
      swift_unknownObjectRetain();
      v420 = BigString.UTF8View.index(roundingDown:)();
      swift_unknownObjectRelease();
      v289 = v251;
      v290 = v250;
      v291 = v248;
    }

    else
    {
      v292 = *v253;
      v293 = v253[2];
      v495 = v253[1];
      v496 = v293;
      v294 = *(v247 + 40);
      v491 = *(v247 + 24);
      v492 = v294;
      v493 = *(v247 + 56);
      v494 = v292;
      v420 = BigString.startIndex.getter();
      v539[0] = v494;
      v539[1] = v495;
      v540 = v496;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v539, &v446);
      v247 = v434;
      v291 = v248;
      v295 = v436;
      v296 = v438;
      v420 = BigString.UTF8View.index(_:offsetBy:)();
      outlined destroy of BigString(&v494);
      v289 = v295;
      v290 = v296;
    }

    v297 = *(v247 + 72);
    v298 = *(v247 + 80);
    v300 = *(v247 + 88);
    v299 = *(v247 + 96);
    v301 = v433;
    v446 = v290;
    v447 = v433;
    v448 = v289;
    v302 = __OFADD__(v291, 1);
    v303 = v291 + 1;
    if (v302)
    {
      goto LABEL_267;
    }

    v432 = v303;
    v304 = v290;
    v305 = v289;
    swift_unknownObjectRetain();
    v306 = v305;
    v307 = v297;
    v308 = specialized Rope.subscript.getter(v304, v301, v306, v297, v298, v300, v299);
    v309 = v438;

    if (__OFADD__(v421, v308))
    {
      goto LABEL_268;
    }

    if (v309 != v299)
    {
      goto LABEL_269;
    }

    v310 = v309;
    v311 = v421 + v308;
    v312 = specialized Rope._endPath.getter(v307);
    if (v433 >= v312)
    {
      goto LABEL_270;
    }

    if (v436 && (v313 = (4 * *(v436 + 18) + 8) & 0x3C, v314 = ((v433 >> v313) & 0xF) + 1, v314 < *(v436 + 16)))
    {
      v315 = v433;
      swift_unknownObjectRelease();
      v316 = (v314 << v313) | ((-15 << v313) - 1) & v315;
      v71 = v442;
    }

    else
    {
      v317 = v310;
      v318 = specialized Rope._Node.formSuccessor(of:)(&v446, v307);
      v71 = v442;
      if (v318)
      {
        swift_unknownObjectRelease();
        v316 = v447;
      }

      else
      {
        v319 = v317;
        v320 = specialized Rope._endPath.getter(v307);
        swift_unknownObjectRelease();
        v316 = v320;
        v446 = v319;
        v447 = v320;
        v448 = 0;
      }
    }

    v433 = v316;
    v438 = v446;
    v321 = *(v429 + 24);
    v436 = v448;
    if (v426)
    {
      (v401)(v439, v117 + v321, v445);
      if (v437 == 2)
      {
        v322 = v420;
      }

      else
      {
        v322 = v435;
      }

      RangeSet.ranges.getter();
      v117 = RangeSet.Ranges.count.getter();
      v444(v71, v3);
      if (v117 >= 1)
      {
        v323 = 0;
        v324 = v322 >> 10;
        while (!__OFADD__(v323, v117))
        {
          v325 = (v323 + v117) / 2;
          RangeSet.ranges.getter();
          RangeSet.Ranges.subscript.getter();
          v444(v71, v3);
          if (v324 < v446 >> 10)
          {
            v117 = (v323 + v117) / 2;
            if (v323 >= v325)
            {
              goto LABEL_253;
            }
          }

          else
          {
            v441 = (v323 + v117) / 2;
            v326 = v450;
            if (v324 < v450 >> 10)
            {
              (*v400)(v439, v445);
              v117 = v419;
              v327 = v444;
              if (v311 < (v326 >> 11))
              {
                goto LABEL_227;
              }

              goto LABEL_230;
            }

            v323 = v441 + 1;
            if (v441 + 1 >= v117)
            {
              goto LABEL_253;
            }
          }
        }

        goto LABEL_258;
      }

LABEL_253:
      __break(1u);
LABEL_254:
      __break(1u);
LABEL_255:
      __break(1u);
LABEL_256:
      v373 = v514[0];
      v375 = v398;
      v374 = v399;
      v398[4] = v513;
      v375[5] = v373;
      *(v375 + 90) = *(v514 + 10);
      v376 = v510;
      *v375 = v509;
      v375[1] = v376;
      v377 = v512;
      v375[2] = v511;
      v375[3] = v377;
      outlined destroy of AttributedString.Runs(v374);
      outlined destroy of TermOfAddress?(v117, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
      return result;
    }

    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    v327 = v444;
    v444(v71, v3);
    if (v311 >= (v450 >> 11))
    {
LABEL_230:
      if (__OFADD__(v441, 1))
      {
        goto LABEL_279;
      }

      v338 = v429;
      ++v441;
      RangeSet.ranges.getter();
      v339 = RangeSet.Ranges.count.getter();
      v327(v71, v3);
      if (v441 == v339)
      {
        v340 = *(v117 + 128);
        v342 = *(v117 + 136);
        v341 = *(v117 + 144);
        v432 = *(v117 + 120);
        v433 = v342;
        v436 = v341;
        v343 = *(v117 + 152);
        v344 = *(v117 + 160);
        v430 = *(v117 + 168);
        v431 = v343;
        v346 = *(v117 + 176);
        v345 = *(v117 + 184);
        v427 = v344;
        v428 = v346;
        v435 = v345;
        v347 = *(v117 + 192);
        v421 = *(v117 + 200);
        v422 = v347;
        v348 = *(v117 + 216);
        v437 = *(v117 + 208);
        v438 = v340;
        v441 = v348;
        LODWORD(v426) = *(v117 + 224);
        v349 = *(v117 + 225);
      }

      else
      {
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        v327(v71, v3);
        v435 = v446;
        v421 = v448;
        v422 = v447;
        v437 = v449;
        AttributedString.Guts.findRun(at:)(v446, v449, &v446);
        LODWORD(v426) = 0;
        v438 = v446;
        v436 = v448;
        v432 = v449;
        v433 = v447;
        v430 = v453;
        v431 = v451;
        v427 = v452;
        v428 = v454;
        v349 = *(v117 + *(v338 + 28));
      }

      LODWORD(v434) = v349;
    }

    else
    {
LABEL_227:
      if (v423)
      {
        v328 = *v422;
        v329 = v422[2];
        v486 = v422[1];
        v487 = v329;
        v330 = *(v434 + 40);
        v482 = *(v434 + 24);
        v483 = v330;
        v484 = *(v434 + 56);
        v485 = v328;
        v437 = BigString.startIndex.getter();
        v541[0] = v485;
        v541[1] = v486;
        v542 = v487;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v541, &v446);
        v71 = v442;
        v331 = BigString.UTF8View.index(_:offsetBy:)();
        v333 = v332;
        v335 = v334;
        v337 = v336;
        outlined destroy of BigString(&v485);
      }

      else
      {
        v350 = *(v434 + 40);
        v479 = *(v434 + 24);
        v480 = v350;
        v481 = *(v434 + 56);
        if (__OFSUB__(v311, v424))
        {
          goto LABEL_282;
        }

        swift_unknownObjectRetain();
        v331 = BigString.UTF8View.index(_:offsetBy:)();
        v333 = v351;
        v335 = v352;
        v337 = v353;
        swift_unknownObjectRelease();
      }

      LODWORD(v426) = 0;
      LODWORD(v434) = *(v117 + *(v429 + 28));
      v430 = v335;
      v431 = v331;
      v435 = v331;
      v427 = v333;
      v428 = v337;
      v421 = v335;
      v422 = v333;
      v437 = v337;
    }

    v354 = *(v425 + 40);
    v476 = *(v425 + 24);
    v477 = v354;
    v478 = *(v425 + 56);
    v472 = v457;
    v473 = v458;
    v474 = v459;
    v475 = v460;
    swift_unknownObjectRetain();
    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    MEMORY[0x1865CAF60](v471);
    v355 = v469 & 0xFFFFFFFFFFFFLL;
    if ((v470 & 0x2000000000000000) != 0)
    {
      v355 = HIBYTE(v470) & 0xF;
    }

    if (v355)
    {
      MEMORY[0x1865CB0E0](10, 0xE100000000000000);
    }

    v446 = 0;
    v447 = 0xE000000000000000;
    MEMORY[0x1865CB0E0]();

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);
    v135 = v455;

    specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v135);

    MEMORY[0x1865CB0E0](v446, v447);

    outlined destroy of AttributedString.Runs.Run(&v455);
    v126 = v441;
    v131 = v430;
    v128 = v433;
  }

  v433 = v265;
  v270 = *(v264 + 18);
  swift_unknownObjectRetain_n();

  if (!v270)
  {
    v273 = 0;
    v272 = v432;
    v283 = v264;
    v250 = v438;
LABEL_187:
    v284 = 0;
    v285 = v269;
    v286 = v272 & ~(v272 >> 63);
    v3 = v443;
    while ((v272 ^ v284) != 0x8000000000000000)
    {
      if (v286 == v284)
      {
        goto LABEL_195;
      }

      if (v285 == ++v284)
      {
        v286 = v285;
        if (v272 == v284)
        {
          goto LABEL_195;
        }

        goto LABEL_284;
      }
    }

LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
LABEL_264:
    __break(1u);
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
LABEL_269:
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
    goto LABEL_283;
  }

  v271 = v253;
  v272 = v432;
  v273 = v270;
  v274 = v264;
  do
  {
    v275 = *v268;
    if (*v268)
    {
      v277 = 0;
      v278 = (v274 + 32);
      while (1)
      {
        v279 = *v278;
        v278 += 3;
        v280 = v272 - v279;
        if (__OFSUB__(v272, v279))
        {
          goto LABEL_254;
        }

        if (__OFADD__(v280, 1))
        {
          goto LABEL_255;
        }

        if (v280 + 1 < 1)
        {
          v275 = v277;
          goto LABEL_170;
        }

        ++v277;
        v272 = v280;
        if (v275 == v277)
        {
          goto LABEL_179;
        }
      }
    }

    v280 = v272;
LABEL_179:
    if (v280)
    {
      goto LABEL_262;
    }

    v272 = 0;
LABEL_170:
    v273 = (v275 << ((4 * v270 + 8) & 0x3C)) | ((-15 << ((4 * v270 + 8) & 0x3C)) - 1) & v273;
    v276 = *(v274 + 24 + 24 * v275);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v268 = (v276 + 16);
    LOBYTE(v270) = *(v276 + 18);
    v274 = v276;
  }

  while (v270);
  v283 = v276;
  v269 = *v268;
  if (*v268)
  {
    v250 = v438;
    v253 = v271;
    goto LABEL_187;
  }

  v3 = v443;
  v250 = v438;
  v253 = v271;
  v286 = 0;
  if (!v272)
  {
LABEL_195:
    v251 = v283;
    swift_unknownObjectRelease();
    v262 = v273 & 0xFFFFFFFFFFFFF0FFLL | (v286 << 8);
    v248 = v432;
    v265 = v433;
    v247 = v434;
    v433 = v262;
    goto LABEL_196;
  }

LABEL_284:
  __break(1u);
LABEL_285:
  v379 = v514[0];
  v380 = v398;
  v398[4] = v513;
  v380[5] = v379;
  *(v380 + 90) = *(v514 + 10);
  v381 = v510;
  *v380 = v509;
  v380[1] = v381;
  v382 = v512;
  v380[2] = v511;
  v380[3] = v382;
  __break(1u);
LABEL_286:
  v383 = v514[0];
  v384 = v398;
  v398[4] = v513;
  v384[5] = v383;
  *(v384 + 90) = *(v514 + 10);
  v385 = v510;
  *v384 = v509;
  v384[1] = v385;
  v386 = v512;
  v384[2] = v511;
  v384[3] = v386;
  __break(1u);
LABEL_287:
  v387 = v514[0];
  v388 = v398;
  v398[4] = v513;
  v388[5] = v387;
  *(v388 + 90) = *(v514 + 10);
  v389 = v510;
  *v388 = v509;
  v388[1] = v389;
  v390 = v512;
  v388[2] = v511;
  v388[3] = v390;
  __break(1u);
LABEL_288:
  v391 = v514[0];
  v392 = v398;
  v398[4] = v513;
  v392[5] = v391;
  *(v392 + 90) = *(v514 + 10);
  v393 = v510;
  *v392 = v509;
  v392[1] = v393;
  v394 = v512;
  v392[2] = v511;
  v392[3] = v394;
  __break(1u);
LABEL_289:
  result = v512;
  v395 = v514[0];
  v396 = v398;
  v398[4] = v513;
  v396[5] = v395;
  *(v396 + 90) = *(v514 + 10);
  v397 = v510;
  *v396 = v509;
  v396[1] = v397;
  v396[2] = v511;
  v396[3] = result;
  __break(1u);
  return result;
}

uint64_t AttributedString.Guts.unicodeScalarRange(roundingDown:)@<X0>(uint64_t *a1@<X8>)
{
  swift_unknownObjectRetain();
  v16 = BigString.UnicodeScalarView.index(roundingDown:)();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  v8 = BigString.UnicodeScalarView.index(roundingDown:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = swift_unknownObjectRelease();
  *a1 = v16;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v10;
  a1[6] = v12;
  a1[7] = v14;
  return result;
}

unint64_t AttributedString.Guts.index(afterRun:)(unint64_t result)
{
  v2 = v1[9];
  v3 = result >> 11;
  if (v2)
  {
    v4 = v1[11];
  }

  else
  {
    v4 = 0;
  }

  if (v4 < v3)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v5 = v1[10];
  v6 = v1[12];
  v40 = result >> 11;
  if (v2)
  {
    v7 = (v2 + 16);
    v8 = *(v2 + 16);
    if (v3 < v1[11] && v8 != 0)
    {
      v38 = v1[10];
      v39 = v1[12];
      v25 = *(v2 + 18);
      result = swift_unknownObjectRetain_n();
      if (v25)
      {
        v26 = v3;
        v27 = v25;
        v28 = v2;
        do
        {
          v29 = *v7;
          if (*v7)
          {
            v30 = 0;
            v31 = (v28 + 40);
            while (1)
            {
              v32 = *v31;
              v31 += 3;
              v33 = v26 - v32;
              if (__OFSUB__(v26, v32))
              {
                break;
              }

              if (__OFADD__(v33, 1))
              {
                goto LABEL_44;
              }

              if (v33 + 1 < 1)
              {
                v29 = v30;
                goto LABEL_20;
              }

              ++v30;
              v26 = v33;
              if (v29 == v30)
              {
                goto LABEL_29;
              }
            }

            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          v33 = v26;
LABEL_29:
          if (v33)
          {
            goto LABEL_47;
          }

          v26 = 0;
LABEL_20:
          v27 = (v29 << ((4 * v25 + 8) & 0x3C)) | ((-15 << ((4 * v25 + 8) & 0x3C)) - 1) & v27;
          v14 = *(v28 + 24 + 24 * v29);
          swift_unknownObjectRetain();
          result = swift_unknownObjectRelease();
          v7 = (v14 + 16);
          LOBYTE(v25) = *(v14 + 18);
          v28 = v14;
        }

        while (v25);
        v8 = *v7;
        if (*v7)
        {
          goto LABEL_34;
        }

        v34 = 0;
LABEL_39:
        if (!v26)
        {
          v13 = 0;
LABEL_42:
          swift_unknownObjectRelease();
          v11 = v27 & 0xFFFFFFFFFFFFF0FFLL | (v34 << 8);
          v3 = v40;
          v6 = v39;
          v12 = v38;
          goto LABEL_12;
        }

        goto LABEL_52;
      }

      v26 = v3;
      v27 = 0;
      v14 = v2;
LABEL_34:
      v35 = 0;
      v36 = 24;
      v13 = v26;
      v34 = v8;
      while (1)
      {
        v37 = *(v14 + v36);
        v26 = v13 - v37;
        if (__OFSUB__(v13, v37))
        {
          break;
        }

        if (__OFADD__(v26, 1))
        {
          goto LABEL_46;
        }

        if (v26 + 1 < 1)
        {
          v34 = v35;
          goto LABEL_42;
        }

        ++v35;
        v36 += 24;
        v13 -= v37;
        if (v8 == v35)
        {
          goto LABEL_39;
        }
      }

LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }
  }

  v10 = swift_unknownObjectRetain();
  result = specialized Rope._endPath.getter(v10);
  v11 = result;
  v12 = v5;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (v2)
  {
LABEL_12:
    specialized Rope._Node.distanceFromStart<A>(to:in:)(v6, v11, v14, v2, v12);
    result = swift_unknownObjectRelease();
    v15 = v13;
    v16 = v14;
  }

  v17 = v6;
  v18 = v3 - v15;
  if (__OFSUB__(v3, v15))
  {
    goto LABEL_49;
  }

  v19 = v1[9];
  v20 = v1[10];
  v21 = v1[11];
  v22 = v1[12];
  swift_unknownObjectRetain();
  v23 = specialized Rope.subscript.getter(v17, v11, v16, v19, v20, v21, v22);
  swift_unknownObjectRelease();

  if (!__OFADD__(v18, v23))
  {
    if (!__OFSUB__(v18 + v23, v40))
    {
      swift_unknownObjectRetain();
      v24 = BigString.UTF8View.index(_:offsetBy:)();
      swift_unknownObjectRelease();
      return v24;
    }

    goto LABEL_51;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

unint64_t AttributedString.Guts.index(beforeRun:)(unint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  v56 = *(v1 + 24);
  v57 = v4;
  v58 = *(v1 + 56);
  swift_unknownObjectRetain();
  v5 = BigString.UTF8View.index(before:)();
  result = swift_unknownObjectRelease();
  v7 = *(v1 + 72);
  v8 = v5 >> 11;
  if (v7)
  {
    v9 = *(v1 + 88);
  }

  else
  {
    v9 = 0;
  }

  if (v9 < v8)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v51 = *(v1 + 80);
  v52 = *(v1 + 96);
  v50 = a1;
  if (v7)
  {
    if (v8 < *(v1 + 88))
    {
      v10 = (v7 + 16);
      LODWORD(v11) = *(v7 + 16);
      if (*(v7 + 16))
      {
        v12 = *(v7 + 18);
        result = swift_unknownObjectRetain_n();
        if (v12)
        {
          v13 = v5 >> 11;
          v49 = v5 >> 11;
          v14 = v12;
          v15 = v7;
          do
          {
            v16 = *v10;
            if (*v10)
            {
              v18 = 0;
              v19 = (v15 + 40);
              while (1)
              {
                v20 = *v19;
                v19 += 3;
                v21 = v13 - v20;
                if (__OFSUB__(v13, v20))
                {
                  goto LABEL_48;
                }

                if (__OFADD__(v21, 1))
                {
                  goto LABEL_49;
                }

                if ((v21 + 1) < 1)
                {
                  v16 = v18;
                  goto LABEL_11;
                }

                ++v18;
                v13 = v21;
                if (v16 == v18)
                {
                  goto LABEL_20;
                }
              }
            }

            v21 = v13;
LABEL_20:
            if (v21)
            {
              goto LABEL_52;
            }

            v13 = 0;
LABEL_11:
            v14 = (v16 << ((4 * v12 + 8) & 0x3C)) | ((-15 << ((4 * v12 + 8) & 0x3C)) - 1) & v14;
            v17 = *(v15 + 24 + 24 * v16);
            swift_unknownObjectRetain();
            result = swift_unknownObjectRelease();
            v10 = (v17 + 16);
            LOBYTE(v12) = *(v17 + 18);
            v15 = v17;
          }

          while (v12);
          LODWORD(v11) = *v10;
          if (*v10)
          {
            v8 = v49;
            goto LABEL_37;
          }

          v11 = 0;
          v8 = v49;
          if (!v13)
          {
LABEL_43:
            v25 = 0;
LABEL_45:
            swift_unknownObjectRelease();
            v24 = v14 & 0xFFFFFFFFFFFFF0FFLL | (v11 << 8);
            v23 = v51;
            goto LABEL_23;
          }

LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
        }

        else
        {
          v14 = 0;
          v13 = v8;
          v17 = v7;
LABEL_37:
          v45 = 0;
          v46 = 24;
          v25 = v13;
          v11 = v11;
          while (1)
          {
            v47 = *(v17 + v46);
            v48 = v25 - v47;
            if (__OFSUB__(v25, v47))
            {
              break;
            }

            if (__OFADD__(v48, 1))
            {
              goto LABEL_51;
            }

            if (v48 + 1 < 1)
            {
              v11 = v45;
              goto LABEL_45;
            }

            ++v45;
            v46 += 24;
            v25 -= v47;
            if (v11 == v45)
            {
              if (v48)
              {
                goto LABEL_47;
              }

              goto LABEL_43;
            }
          }
        }

        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }
  }

  v22 = swift_unknownObjectRetain();
  v23 = v51;
  result = specialized Rope._endPath.getter(v22);
  v24 = result;
  v25 = 0;
  v17 = 0;
  v26 = 0;
  v27 = 0;
  if (v7)
  {
LABEL_23:
    specialized Rope._Node.distanceFromStart<A>(to:in:)(v52, v24, v17, v7, v23);
    result = swift_unknownObjectRelease();
    v26 = v25;
    v27 = v17;
  }

  v28 = v8 - v26;
  if (__OFSUB__(v8, v26))
  {
    goto LABEL_54;
  }

  v29 = v8;
  v30 = *(v2 + 72);
  v31 = *(v2 + 80);
  v32 = *(v2 + 88);
  v33 = *(v2 + 96);
  swift_unknownObjectRetain();
  v34 = specialized Rope.subscript.getter(v52, v24, v27, v30, v31, v32, v33);
  swift_unknownObjectRelease();

  if (__OFADD__(v28, v34))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if ((v28 + v34) <= (v50 >> 11))
  {
    goto LABEL_32;
  }

  if (v28 < 1)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v35 = v29;
  v36 = *(v2 + 72);
  v37 = *(v2 + 80);
  v38 = *(v2 + 88);
  v39 = *(v2 + 96);
  *&v53 = v52;
  *(&v53 + 1) = v24;
  *&v54 = v27;
  swift_unknownObjectRetain();
  specialized Rope.formIndex(before:)(&v53, v36, v37, v38, v39);
  v40 = specialized Rope.subscript.getter(v53, *(&v53 + 1), v54, v36, v37, v38, v39);
  v29 = v41;
  swift_unknownObjectRelease();

  if (!__OFSUB__(v28, v40))
  {
    v42 = *(v2 + 40);
    v53 = *(v2 + 24);
    v54 = v42;
    v55 = *(v2 + 56);
    if (!__OFSUB__(v28 - v40, v35))
    {
      goto LABEL_33;
    }

    __break(1u);
LABEL_32:
    v43 = *(v2 + 40);
    v53 = *(v2 + 24);
    v54 = v43;
    v55 = *(v2 + 56);
    if (__OFSUB__(v28, v29))
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_33:
    swift_unknownObjectRetain();
    v44 = BigString.UTF8View.index(_:offsetBy:)();
    swift_unknownObjectRelease();
    return v44;
  }

LABEL_58:
  __break(1u);
  return result;
}

uint64_t closure #1 in AttributedString.Guts.getUniformValues(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a1;
  v17[1] = a2;
  outlined init with copy of AttributedString._AttributeValue(a3, v18);
  outlined init with copy of FloatingPointRoundingRule?(v17, v14, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
  v7 = v14[0];
  v6 = v14[1];
  v8 = *(a5 + 16);

  if (!v8)
  {

    goto LABEL_5;
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_5:
    outlined destroy of TermOfAddress?(v17, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
    outlined destroy of AttributedString._AttributeValue(v15);
    v12 = 0;
    return v12 & 1;
  }

  outlined init with copy of AttributedString._AttributeValue(*(a5 + 56) + 72 * v9, v16);
  outlined destroy of AttributedString._AttributeValue(v15);
  v12 = specialized static AttributedString._AttributeValue.== infix(_:_:)(v16, v18);
  outlined destroy of AttributedString._AttributeValue(v16);
  outlined destroy of TermOfAddress?(v17, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
  return v12 & 1;
}

uint64_t AttributedString.Guts.removeAttributeValue(forKey:in:adjustConstrainedAttributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v381 = *MEMORY[0x1E69E9840];

  specialized AttributedString._InternalRunsSlice.updateEach(with:)(v6, a3, a4, a1, a2);

  if ((a5 & 1) == 0)
  {
    return result;
  }

  v13 = *(v6 + 72);
  v14 = *(v6 + 88);
  v15 = swift_unknownObjectRetain();
  result = specialized Rope._endPath.getter(v15);
  if (!v13)
  {
    return result;
  }

  result = swift_unknownObjectRelease();
  if (!v14 || a3 == a4)
  {
    return result;
  }

  v16 = *(v6 + 40);
  v378[0] = *(v6 + 24);
  v378[1] = v16;
  v378[2] = *(v6 + 56);
  v379[0] = v378[0];
  v17 = *(v6 + 40);
  v375 = *(v6 + 24);
  v376 = v17;
  v377 = *(v6 + 56);
  v379[1] = v16;
  v380 = *(v6 + 56);
  BigString.startIndex.getter();
  outlined init with copy of Rope<BigString._Chunk>._Node?(v379, &v344);
  v18 = BigString.UTF8View.index(_:offsetBy:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  outlined destroy of BigString(v378);
  v25 = *(v6 + 24);
  v26 = *(v6 + 40);
  v372 = v25;
  v373 = v26;
  v374 = *(v6 + 56);
  v315 = a4;
  v316 = a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_382:
    __break(1u);
    goto LABEL_383;
  }

  v341 = v25;
  swift_unknownObjectRetain();
  v27 = BigString.UTF8View.index(_:offsetBy:)();
  v29 = v28;
  v342 = v30;
  v343 = v28;
  v31 = v30;
  v33 = v32;
  swift_unknownObjectRelease();
  v356[0] = v18;
  v356[1] = v20;
  v356[2] = v22;
  v356[3] = v24;
  v356[4] = v27;
  v356[5] = v29;
  v356[6] = v31;
  v356[7] = v33;
  v34 = *(v6 + 40);
  v369 = *(v6 + 24);
  v370 = v34;
  v371 = *(v6 + 56);
  swift_unknownObjectRetain();
  v35 = BigString.UnicodeScalarView.index(roundingDown:)();
  v333 = v36;
  v38 = v37;
  v317 = v39;
  swift_unknownObjectRelease();
  v40 = *(v6 + 40);
  v366 = *(v6 + 24);
  v367 = v40;
  v368 = *(v6 + 56);
  swift_unknownObjectRetain();
  v41 = BigString.UnicodeScalarView.index(roundingUp:)();
  swift_unknownObjectRelease();
  v320 = v35;
  v22 = v35 >> 11;
  v42 = v41 >> 11;
  if (v41 >> 11 < v35 >> 11)
  {
LABEL_383:
    __break(1u);
LABEL_384:
    __break(1u);
LABEL_385:
    __break(1u);
LABEL_386:
    __break(1u);
LABEL_387:
    __break(1u);
LABEL_388:
    __break(1u);
    goto LABEL_389;
  }

  v43 = *(v6 + 72);
  v44 = *(v6 + 88);
  if (v43)
  {
    v45 = *(v6 + 88);
  }

  else
  {
    v45 = 0;
  }

  if (v45 < v22)
  {
    goto LABEL_384;
  }

  v343 = *(v6 + 80);
  v339 = *(v6 + 96);
  v340 = v6;
  v321 = v22;
  v334 = v41 >> 11;
  v46 = v317;
  if (v43)
  {
    if (v22 < v44)
    {
      v47 = v43 + 16;
      LODWORD(v48) = *(v43 + 16);
      if (*(v43 + 16))
      {
        v341 = v44;
        v49 = *(v43 + 18);
        swift_unknownObjectRetain_n();

        v329 = v38;
        if (v49)
        {
          v42 = -15;
          v50 = v321;
          v22 = v49;
          v38 = v43;
          while (1)
          {
            v51 = *v47;
            if (*v47)
            {
              v54 = 0;
              v55 = (v38 + 40);
              while (1)
              {
                v56 = *v55;
                v55 += 3;
                v57 = (v50 - v56);
                if (__OFSUB__(v50, v56))
                {
                  goto LABEL_345;
                }

                if (__OFADD__(v57, 1))
                {
                  goto LABEL_346;
                }

                if (v57 + 1 < 1)
                {
                  break;
                }

                ++v54;
                v50 = v57;
                if (v51 == v54)
                {
                  goto LABEL_26;
                }
              }

              v51 = v54;
            }

            else
            {
              v57 = v50;
LABEL_26:
              if (v57)
              {
                goto LABEL_373;
              }

              v50 = 0;
            }

            v22 = (v51 << ((4 * v49 + 8) & 0x3C)) | ((-15 << ((4 * v49 + 8) & 0x3C)) - 1) & v22;
            v52 = *(v38 + 24 + 24 * v51);
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            v53 = v52;
            v47 = v52 + 16;
            LOBYTE(v49) = *(v53 + 18);
            v38 = v53;
            if (!v49)
            {
              LODWORD(v48) = *v47;
              if (!*v47)
              {
                goto LABEL_328;
              }

              v42 = v334;
              v46 = v317;
              goto LABEL_275;
            }
          }
        }

        goto LABEL_274;
      }
    }
  }

  swift_unknownObjectRetain();

  v47 = v343;
  v58 = v339;
  v342 = specialized Rope._endPath.getter(v43);
  v59 = 0;
  v60 = 0;
  v341 = 0;
  if (!v43)
  {
    goto LABEL_332;
  }

LABEL_29:
  v336 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v58, v342, v59, v43, v47);
  swift_unknownObjectRelease();
  v61 = v22 - v60;
  if (__OFSUB__(v22, v60))
  {
    goto LABEL_334;
  }

LABEL_30:
  v313 = 0;
  v62 = v320;
  v314 = MEMORY[0x1E69E7CC8];
  v328 = MEMORY[0x1E69E7CC8];
  v63 = v340;
LABEL_31:
  v331 = v38;
  v332 = v333;
  v330 = v46;
  while (1)
  {
    v65 = v63[9];
    v64 = v63[10];
    v66 = v63[11];
    v67 = v63[12];
    v343 = v61;
    v335 = v62;
    if (v22 != v42)
    {
      v77 = swift_unknownObjectRetain();
      specialized Rope._endPath.getter(v77);
      if (v65)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v66 = 0;
      }

      goto LABEL_78;
    }

    v338 = v67;
    v339 = v58;
    if (v65)
    {
      if (v66 < v22)
      {
        goto LABEL_370;
      }

      v46 = (v65 + 16);
      v68 = *(v65 + 16);
      if (*(v65 + 16))
      {
        v69 = v22 < v66;
      }

      else
      {
        v69 = 0;
      }

      if (v69)
      {
        v70 = *(v65 + 18);
        swift_unknownObjectRetain_n();
        v337 = v64;
        v42 = v22;
        if (!v70)
        {
          v22 = 0;
          v72 = v65;
LABEL_66:
          v83 = 0;
          v84 = 24;
          v80 = v42;
          v82 = v68;
          v78 = v338;
          v58 = v339;
          while (1)
          {
            v85 = *(v72 + v84);
            v42 = v80 - v85;
            if (__OFSUB__(v80, v85))
            {
              break;
            }

            if (__OFADD__(v42, 1))
            {
              goto LABEL_353;
            }

            if (v42 + 1 < 1)
            {
              v82 = v83;
              goto LABEL_74;
            }

            ++v83;
            v84 += 24;
            v80 -= v85;
            if (v82 == v83)
            {
              goto LABEL_71;
            }
          }

          __break(1u);
LABEL_353:
          __break(1u);
LABEL_354:
          __break(1u);
LABEL_355:
          __break(1u);
LABEL_356:
          __break(1u);
LABEL_357:
          __break(1u);
LABEL_358:
          __break(1u);
LABEL_359:
          __break(1u);
LABEL_360:
          __break(1u);
LABEL_361:
          __break(1u);
LABEL_362:
          __break(1u);
LABEL_363:
          __break(1u);
LABEL_364:
          __break(1u);
LABEL_365:
          __break(1u);
LABEL_366:
          __break(1u);
LABEL_367:
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
LABEL_375:
          __break(1u);
LABEL_376:
          __break(1u);
LABEL_377:
          __break(1u);
LABEL_378:
          __break(1u);
LABEL_379:
          __break(1u);
LABEL_380:
          __break(1u);
LABEL_381:
          __break(1u);
          goto LABEL_382;
        }

        v22 = v70;
        v43 = v65;
        LODWORD(v48) = 24;
        do
        {
          v71 = *v46;
          if (*v46)
          {
            v73 = 0;
            v74 = (v43 + 40);
            while (1)
            {
              v75 = *v74;
              v74 += 3;
              v76 = v42 - v75;
              if (__OFSUB__(v42, v75))
              {
                goto LABEL_272;
              }

              if (__OFADD__(v76, 1))
              {
                goto LABEL_273;
              }

              if (v76 + 1 < 1)
              {
                break;
              }

              ++v73;
              v42 = v76;
              if (v71 == v73)
              {
                goto LABEL_54;
              }
            }

            v71 = v73;
          }

          else
          {
            v76 = v42;
LABEL_54:
            if (v76)
            {
              goto LABEL_354;
            }

            v42 = 0;
          }

          v22 = (v71 << ((4 * v70 + 8) & 0x3C)) | ((-15 << ((4 * v70 + 8) & 0x3C)) - 1) & v22;
          v72 = *(v43 + 24 + 24 * v71);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v46 = (v72 + 16);
          LOBYTE(v70) = *(v72 + 18);
          v43 = v72;
        }

        while (v70);
        v68 = *v46;
        if (*v46)
        {
          goto LABEL_66;
        }

        v82 = 0;
        v78 = v338;
        v58 = v339;
LABEL_71:
        if (v42)
        {
          goto LABEL_386;
        }

        v80 = 0;
LABEL_74:
        swift_unknownObjectRelease();
        v42 = v334;
        v81 = v22 & 0xFFFFFFFFFFFFF0FFLL | (v82 << 8);
        v22 = v321;
        v64 = v337;
        goto LABEL_75;
      }
    }

    else if (v320 >= 0x800)
    {
      goto LABEL_377;
    }

    swift_unknownObjectRetain();
    v78 = v338;
    v79 = specialized Rope._endPath.getter(v65);
    v80 = 0;
    if (v65)
    {
      v81 = v79;
      v72 = 0;
      v58 = v339;
LABEL_75:
      specialized Rope._Node.distanceFromStart<A>(to:in:)(v78, v81, v72, v65, v64);
      swift_unknownObjectRelease();
      v61 = v343;
      goto LABEL_76;
    }

    v58 = v339;
LABEL_76:
    v66 = v22 - v80;
    if (__OFSUB__(v22, v80))
    {
      goto LABEL_369;
    }

    v63 = v340;
LABEL_78:
    if (v61 == v66)
    {

      v218 = 0;
      v219 = v328;
      v220 = 1 << v328[32];
      v221 = -1;
      if (v220 < 64)
      {
        v221 = ~(-1 << v220);
      }

      v222 = v221 & *(v328 + 8);
      v223 = (v220 + 63) >> 6;
      while (v222)
      {
LABEL_234:
        v225 = __clz(__rbit64(v222));
        v222 &= v222 - 1;
        v226 = v225 | (v218 << 6);
        v227 = *(*(v219 + 7) + 8 * v226);
        v228 = *(v227 + 16);
        if (v228)
        {
          v229 = (*(v219 + 6) + 16 * v226);
          v22 = *v229;
          v230 = v229[1];

          v343 = v227;
          v231 = (v227 + 40);
          do
          {
            AttributedString.Guts.removeAttributeValue(forKey:in:adjustConstrainedAttributes:)(v22, v230, *(v231 - 1), *v231, 0);
            v231 += 2;
            --v228;
          }

          while (v228);

          v219 = v328;
        }
      }

      while (1)
      {
        v224 = v218 + 1;
        if (__OFADD__(v218, 1))
        {
          goto LABEL_357;
        }

        if (v224 >= v223)
        {
          break;
        }

        v222 = *&v328[8 * v224 + 64];
        ++v218;
        if (v222)
        {
          v218 = v224;
          goto LABEL_234;
        }
      }

      v232 = v340;
      v43 = v340[9];
      v233 = v340[11];
      if (v43)
      {
        v234 = v340[11];
      }

      else
      {
        v234 = 0;
      }

      v42 = v316;
      if (v316 < 0 || v234 < v316)
      {
        goto LABEL_388;
      }

      v235 = v340[10];
      v236 = v340[12];
      if (!v43 || ((v58 = (v43 + 16), v22 = *(v43 + 16), *(v43 + 16)) ? (v237 = v233 <= v316) : (v237 = 1), v237))
      {
        v238 = swift_unknownObjectRetain();
        v239 = specialized Rope._endPath.getter(v238);
        v240 = v235;
        v38 = 0;
        v241 = 0;
        if (!v43)
        {
          goto LABEL_251;
        }

        goto LABEL_250;
      }

      v342 = v340[10];
      v343 = v233;
      v272 = *(v43 + 18);
      swift_unknownObjectRetain_n();
      if (v272)
      {
        v341 = v236;
        v22 = 24;
        v47 = v272;
        v273 = v43;
        while (1)
        {
          v274 = *v58;
          if (*v58)
          {
            v275 = 0;
            v276 = (v273 + 40);
            while (1)
            {
              v277 = *v276;
              v276 += 3;
              v278 = v42 - v277;
              if (__OFSUB__(v42, v277))
              {
                goto LABEL_355;
              }

              if (__OFADD__(v278, 1))
              {
                goto LABEL_356;
              }

              if (v278 + 1 < 1)
              {
                break;
              }

              ++v275;
              v42 = v278;
              if (v274 == v275)
              {
                goto LABEL_296;
              }
            }

            v274 = v275;
          }

          else
          {
            v278 = v42;
LABEL_296:
            if (v278)
            {
              goto LABEL_381;
            }

            v42 = 0;
          }

          v47 = (v274 << ((4 * v272 + 8) & 0x3C)) | ((-15 << ((4 * v272 + 8) & 0x3C)) - 1) & v47;
          v38 = *(v273 + 24 + 24 * v274);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v58 = (v38 + 16);
          LOBYTE(v272) = *(v38 + 18);
          v273 = v38;
          if (!v272)
          {
            goto LABEL_335;
          }
        }
      }

      v47 = 0;
      v38 = v43;
LABEL_338:
      v304 = 0;
      v305 = v22;
      v306 = 24;
      while (1)
      {
        v307 = *(v38 + v306);
        v101 = __OFSUB__(v42, v307);
        v42 -= v307;
        if (v101)
        {
          goto LABEL_379;
        }

        if (__OFADD__(v42, 1))
        {
          goto LABEL_380;
        }

        if (v42 + 1 < 1)
        {
          goto LABEL_349;
        }

        ++v304;
        v306 += 24;
        if (v22 == v304)
        {
          goto LABEL_348;
        }
      }
    }

    v86 = v63[9];
    v87 = v63[10];
    v88 = v63[11];
    v89 = v63[12];
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v58, v342, v341, v86, v87, v88, v89);
    v337 = v90;
    v338 = v91;
    swift_unknownObjectRelease();
    v92 = v63[9];
    v93 = v63[10];
    v94 = v63[11];
    v95 = v63[12];
    swift_unknownObjectRetain();
    v22 = v58;
    v96 = specialized Rope.subscript.getter(v58, v342, v341, v92, v93, v94, v95);
    swift_unknownObjectRelease();

    v97 = v343 + v96;
    if (__OFADD__(v343, v96))
    {
      goto LABEL_358;
    }

    if (v42 >= v343)
    {
      v98 = v343;
    }

    else
    {
      v98 = v42;
    }

    v99 = v321;
    if (v343 < v321)
    {
      v98 = v321;
    }

    if (v97 > v321)
    {
      v99 = (v343 + v96);
    }

    if (v42 >= v97)
    {
      v100 = v99;
    }

    else
    {
      v100 = v42;
    }

    if (v98 == v100)
    {
      goto LABEL_359;
    }

    v101 = __OFSUB__(v100, v98);
    v102 = v100 - v98;
    if (v101)
    {
      goto LABEL_360;
    }

    v103 = v340[9];
    v104 = v340[10];
    v106 = v340[11];
    v105 = v340[12];
    *&v344 = v58;
    *(&v344 + 1) = v342;
    *&v345 = v341;
    if (__OFADD__(v336, 1))
    {
      goto LABEL_361;
    }

    v333 = v102;
    ++v336;
    swift_unknownObjectRetain();
    v107 = specialized Rope.subscript.getter(v58, v342, v341, v103, v104, v106, v105);

    v101 = __OFADD__(v343, v107);
    v343 += v107;
    v61 = v343;
    if (v101)
    {
      goto LABEL_362;
    }

    if (v58 != v105)
    {
      goto LABEL_363;
    }

    if (v342 >= specialized Rope._endPath.getter(v103))
    {
      goto LABEL_364;
    }

    if (v341 && specialized closure #1 in Rope.formIndex(after:)(v341 + 8, &v344))
    {
      swift_unknownObjectRelease();
      v108 = v334;
      v22 = v321;
    }

    else
    {
      v108 = v334;
      v22 = v321;
      if (specialized Rope._Node.formSuccessor(of:)(&v344, v103))
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v109 = v58;
        v110 = specialized Rope._endPath.getter(v103);
        swift_unknownObjectRelease();
        *&v344 = v109;
        *(&v344 + 1) = v110;
        *&v345 = 0;
      }
    }

    v111 = v340;
    if (v343 >= v108)
    {
      v112 = v340[9];
      v113 = v340[10];
      v61 = v340[11];
      v339 = v340[12];
      if (v22 == v108)
      {
        if (v112)
        {
          if (v61 < v22)
          {
            goto LABEL_378;
          }

          v114 = v61;
          v50 = (v112 + 16);
          v115 = *(v112 + 16);
          if (*(v112 + 16) && v22 < v114)
          {
            v116 = *(v112 + 18);
            v53 = swift_unknownObjectRetain_n();
            if (!v116)
            {
              v117 = 0;
              v53 = v112;
              goto LABEL_135;
            }

            v117 = v116;
            v43 = v112;
            while (1)
            {
              v118 = *v50;
              if (*v50)
              {
                break;
              }

              v122 = v22;
LABEL_121:
              if (v122)
              {
                goto LABEL_368;
              }

              v22 = 0;
LABEL_112:
              v117 = (v118 << ((4 * v116 + 8) & 0x3C)) | ((-15 << ((4 * v116 + 8) & 0x3C)) - 1) & v117;
              v116 = *(v43 + 24 + 24 * v118);
              swift_unknownObjectRetain();
              swift_unknownObjectRelease();
              v53 = v116;
              v50 = (v116 + 16);
              LODWORD(v116) = *(v116 + 18);
              v43 = v53;
              if (!v116)
              {
                v115 = *v50;
                if (!*v50)
                {
                  v128 = 0;
                  v124 = v339;
LABEL_140:
                  if (v22)
                  {
                    goto LABEL_387;
                  }

                  v126 = 0;
                  goto LABEL_143;
                }

LABEL_135:
                v129 = 0;
                v130 = 24;
                v126 = v22;
                v128 = v115;
                v124 = v339;
                while (1)
                {
                  v131 = *(v53 + v130);
                  v22 = v126 - v131;
                  if (__OFSUB__(v126, v131))
                  {
                    goto LABEL_366;
                  }

                  if (__OFADD__(v22, 1))
                  {
                    goto LABEL_367;
                  }

                  if (v22 + 1 < 1)
                  {
                    break;
                  }

                  ++v129;
                  v130 += 24;
                  v126 -= v131;
                  if (v128 == v129)
                  {
                    goto LABEL_140;
                  }
                }

                v128 = v129;
LABEL_143:
                v132 = v53;
                swift_unknownObjectRelease();
                v125 = v132;
                v342 = v117 & 0xFFFFFFFFFFFFF0FFLL | (v128 << 8);
                v111 = v340;
                v22 = v321;
                v341 = v125;
LABEL_129:
                v127 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v124, v342, v125, v112, v113);
                swift_unknownObjectRelease();
                v61 = v22 - v126;
                if (__OFSUB__(v22, v126))
                {
                  goto LABEL_375;
                }

                goto LABEL_145;
              }
            }

            v119 = 0;
            v120 = (v43 + 40);
            while (1)
            {
              v121 = *v120;
              v120 += 3;
              v122 = v22 - v121;
              if (__OFSUB__(v22, v121))
              {
                break;
              }

              if (__OFADD__(v122, 1))
              {
                goto LABEL_327;
              }

              if (v122 + 1 < 1)
              {
                v118 = v119;
                goto LABEL_112;
              }

              ++v119;
              v22 = v122;
              if (v118 == v119)
              {
                goto LABEL_121;
              }
            }

            __break(1u);
LABEL_327:
            __break(1u);
LABEL_328:
            v270 = 0;
            v42 = v334;
            v58 = v339;
            v46 = v317;
LABEL_329:
            if (v50)
            {
              goto LABEL_393;
            }

            v60 = 0;
            goto LABEL_331;
          }
        }

        else if (v320 >= 0x800)
        {
          goto LABEL_385;
        }

        swift_unknownObjectRetain();
        v124 = v339;
        v342 = specialized Rope._endPath.getter(v112);
        v125 = 0;
        v126 = 0;
        v341 = 0;
        if (v112)
        {
          goto LABEL_129;
        }

        v127 = 0;
        v61 = v22;
LABEL_145:
        v336 = v127;
      }

      else
      {
        v123 = swift_unknownObjectRetain();
        v342 = specialized Rope._endPath.getter(v123);
        if (v112)
        {
          v336 = v113;
          swift_unknownObjectRelease();
          v341 = 0;
        }

        else
        {
          v341 = 0;
          v336 = 0;
          v61 = 0;
        }
      }
    }

    else
    {
      v339 = v344;
      v341 = v345;
      v342 = *(&v344 + 1);
    }

    v133 = *(v111 + 5);
    v363 = *(v111 + 3);
    v364 = v133;
    v365 = *(v111 + 7);
    swift_unknownObjectRetain();
    v327 = BigString.UTF8View.index(_:offsetBy:)();
    v333 = v134;
    v329 = v135;
    v46 = v136;
    swift_unknownObjectRelease();
    v43 = v337;
    v42 = v337 + 64;
    v137 = 1 << *(v337 + 32);
    if (v137 < 64)
    {
      v138 = ~(-1 << v137);
    }

    else
    {
      v138 = -1;
    }

    v139 = v138 & *(v337 + 64);
    v140 = (v137 + 63) >> 6;
    swift_bridgeObjectRetain_n();

    v141 = 0;
    if (!v139)
    {
LABEL_151:
      while (1)
      {
        v48 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          break;
        }

        if (v48 >= v140)
        {

          swift_bridgeObjectRelease_n();

          v62 = v327;
          goto LABEL_33;
        }

        v139 = *(v42 + 8 * v48);
        ++v141;
        if (v139)
        {
          goto LABEL_154;
        }
      }

      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      v22 = 0;
      v50 = v321;
      v53 = v43;
LABEL_275:
      v268 = 0;
      v269 = 24;
      v60 = v50;
      v270 = v48;
      v58 = v339;
      while (1)
      {
        v271 = *(v53 + v269);
        v50 = (v60 - v271);
        if (__OFSUB__(v60, v271))
        {
          goto LABEL_371;
        }

        if (__OFADD__(v50, 1))
        {
          goto LABEL_372;
        }

        if (v50 + 1 < 1)
        {
          break;
        }

        ++v268;
        v269 += 24;
        v60 = (v60 - v271);
        if (v270 == v268)
        {
          goto LABEL_329;
        }
      }

      v270 = v268;
LABEL_331:
      v303 = v53;
      swift_unknownObjectRelease();
      v59 = v303;
      v342 = v22 & 0xFFFFFFFFFFFFF0FFLL | (v270 << 8);
      v22 = v321;
      v38 = v329;
      v47 = v343;
      v341 = v59;
      if (!v43)
      {
LABEL_332:
        v336 = 0;
        v61 = v22 - v60;
        if (!__OFSUB__(v22, v60))
        {
          goto LABEL_30;
        }

LABEL_334:
        __break(1u);
LABEL_335:
        v22 = *v58;
        if (*v58)
        {
          v236 = v341;
          goto LABEL_338;
        }

LABEL_347:
        v305 = 0;
        v236 = v341;
LABEL_348:
        v304 = v305;
        if (v42)
        {
          goto LABEL_399;
        }

LABEL_349:
        swift_unknownObjectRelease();
        v239 = v47 & 0xFFFFFFFFFFFFF0FFLL | (v304 << 8);
        v241 = v38;
        v232 = v340;
        v240 = v342;
        if (!v43)
        {
LABEL_251:
          v242 = v232[9];
          v243 = v232[10];
          v244 = v232[11];
          v245 = v232[12];
          swift_unknownObjectRetain();
          specialized Rope.subscript.getter(v236, v239, v241, v242, v243, v244, v245);
          v22 = v246;
          v342 = v247;
          v248 = swift_unknownObjectRelease();
          v341 = &v310;
          MEMORY[0x1EEE9AC00](v248);
          MEMORY[0x1EEE9AC00](v249);
          *(v251 - 16) = 0;
          *(v251 - 8) = 0;
          v309[2] = partial apply for closure #1 in AttributedString.Guts._constrainedAttributes(at:with:);
          v309[3] = v252;
          LOBYTE(v251) = *(v22 + 32);
          v338 = ((1 << v251) + 63) >> 6;
          if ((v251 & 0x3Fu) <= 0xD)
          {
LABEL_252:
            v339 = v309;
            MEMORY[0x1EEE9AC00](v250);
            v254 = (v309 - ((v253 + 15) & 0x3FFFFFFFFFFFFFF0));
            bzero(v254, v253);
            v343 = 0;
            v255 = 0;
            v256 = 1 << *(v22 + 32);
            v257 = -1;
            if (v256 < 64)
            {
              v257 = ~(-1 << v256);
            }

            v258 = v257 & *(v22 + 64);
            v259 = (v256 + 63) >> 6;
            while (1)
            {
              if (!v258)
              {
                v261 = v255;
                v258 = v340;
                v262 = v343;
                while (1)
                {
                  v255 = v261 + 1;
                  if (__OFADD__(v261, 1))
                  {
                    goto LABEL_365;
                  }

                  if (v255 >= v259)
                  {
                    goto LABEL_266;
                  }

                  v263 = *(v22 + 64 + 8 * v255);
                  ++v261;
                  if (v263)
                  {
                    v260 = __clz(__rbit64(v263));
                    v258 = (v263 - 1) & v263;
                    goto LABEL_262;
                  }
                }
              }

              v260 = __clz(__rbit64(v258));
              v258 &= v258 - 1;
LABEL_262:
              v262 = v260 | (v255 << 6);
              v264 = (*(v22 + 48) + 16 * v262);
              v265 = *v264;
              v266 = v264[1];
              outlined init with copy of AttributedString._AttributeValue(*(v22 + 56) + 72 * v262, &v344);

              LOBYTE(v265) = closure #1 in AttributedString.Guts._constrainedAttributes(at:with:)(v265, v266, &v344, 0, 0);
              outlined destroy of AttributedString._AttributeValue(&v344);

              if (v265)
              {
                *(v254 + ((v262 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v262;
                v101 = __OFADD__(v343++, 1);
                if (v101)
                {
                  break;
                }
              }
            }

            __break(1u);
LABEL_266:
            if (v262)
            {
              if (v262 != *(v22 + 16))
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
                v267 = static _DictionaryStorage.allocate(capacity:)();
                v279 = 0;
                v280 = *v254;
                v281 = v267 + 64;
                while (v280)
                {
                  v285 = __clz(__rbit64(v280));
                  v280 &= v280 - 1;
LABEL_308:
                  v288 = v285 | (v279 << 6);
                  v289 = (*(v22 + 48) + 16 * v288);
                  v290 = *v289;
                  v291 = v289[1];
                  outlined init with copy of AttributedString._AttributeValue(*(v22 + 56) + 72 * v288, &v344);
                  v353 = v346;
                  v354 = v347;
                  v355 = v348;
                  v351 = v344;
                  v352 = v345;
                  Hasher.init(_seed:)();

                  v343 = v290;
                  String.hash(into:)();
                  v292 = Hasher._finalize()();
                  v293 = -1 << *(v267 + 32);
                  v294 = v292 & ~v293;
                  v295 = v294 >> 6;
                  if (((-1 << v294) & ~*(v281 + 8 * (v294 >> 6))) == 0)
                  {
                    v296 = 0;
                    v297 = (63 - v293) >> 6;
                    while (++v295 != v297 || (v296 & 1) == 0)
                    {
                      v298 = v295 == v297;
                      if (v295 == v297)
                      {
                        v295 = 0;
                      }

                      v296 |= v298;
                      v299 = *(v281 + 8 * v295);
                      if (v299 != -1)
                      {
                        v282 = __clz(__rbit64(~v299)) + (v295 << 6);
                        goto LABEL_300;
                      }
                    }

                    goto LABEL_376;
                  }

                  v282 = __clz(__rbit64((-1 << v294) & ~*(v281 + 8 * (v294 >> 6)))) | v294 & 0x7FFFFFFFFFFFFFC0;
LABEL_300:
                  *(v281 + ((v282 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v282;
                  v283 = (*(v267 + 48) + 16 * v282);
                  *v283 = v343;
                  v283[1] = v291;
                  v284 = *(v267 + 56) + 72 * v282;
                  *(v284 + 16) = v352;
                  *(v284 + 32) = v353;
                  *(v284 + 48) = v354;
                  *(v284 + 64) = v355;
                  *v284 = v351;
                  ++*(v267 + 16);
                  if (!--v262)
                  {
                    v258 = v340;
                    goto LABEL_282;
                  }
                }

                v286 = v279;
                v171 = v315;
                while (1)
                {
                  v279 = v286 + 1;
                  if (__OFADD__(v286, 1))
                  {
                    goto LABEL_374;
                  }

                  if (v279 >= v338)
                  {
                    v258 = v340;
                    goto LABEL_318;
                  }

                  v287 = v254[v279];
                  ++v286;
                  if (v287)
                  {
                    v285 = __clz(__rbit64(v287));
                    v280 = (v287 - 1) & v287;
                    goto LABEL_308;
                  }
                }
              }

              v267 = v22;
            }

            else
            {
              v267 = MEMORY[0x1E69E7CC8];
            }

LABEL_282:
            v171 = v315;
LABEL_318:

            while (1)
            {
              v22 = v342;
              v300 = *(v258 + 40);
              v351 = *(v258 + 24);
              v352 = v300;
              v353 = *(v258 + 56);
              v170 = v351;
              swift_unknownObjectRetain();
              specialized BidirectionalCollection<>._getBlock(for:in:)(3, v356, &v344);
              swift_unknownObjectRelease();
              if (*(&v345 + 1) == 2)
              {
                break;
              }

              if (*(&v347 + 1) == 2)
              {
                goto LABEL_404;
              }

              v301 = v344 >> 11;
              if ((v344 >> 11) > v316 || v346 >> 10 < v344 >> 10)
              {
                __break(1u);
              }

              else
              {
                v302 = v346 >> 11;

                specialized AttributedString._InternalRunsSlice.updateEach(with:)(v258, v301, v316, v267);

                if (v302 >= v171)
                {

                  specialized AttributedString._InternalRunsSlice.updateEach(with:)(v258, v171, v302, v267);
                  swift_bridgeObjectRelease_n();
                }
              }

              __break(1u);
LABEL_393:
              __break(1u);
LABEL_394:
              v171 = swift_slowAlloc();

              v170 = v313;
              _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v171, v338, v22, partial apply for thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed AttributedString._AttributeValue) -> (@unowned Bool, @error @owned Error));
              if (v170)
              {
                goto LABEL_406;
              }

              v267 = v308;

              MEMORY[0x1865D2690](v171, -1, -1);

              v258 = v340;
              v171 = v315;
            }

LABEL_403:
            __break(1u);
LABEL_404:
            __break(1u);
            goto LABEL_405;
          }

LABEL_389:

          if (!swift_stdlib_isStackAllocationSafe())
          {
            goto LABEL_394;
          }

          goto LABEL_252;
        }

LABEL_250:
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v236, v239, v38, v43, v240);
        swift_unknownObjectRelease();
        v241 = v38;
        goto LABEL_251;
      }

      goto LABEL_29;
    }

    while (1)
    {
      v48 = v141;
LABEL_154:
      outlined init with copy of AttributedString._AttributeValue(*(v337 + 56) + 72 * (__clz(__rbit64(v139)) | (v48 << 6)), &v344);
      if (v347 > 1)
      {
        break;
      }

      v139 &= v139 - 1;
      outlined destroy of AttributedString._AttributeValue(&v344);
      v141 = v48;
      if (!v139)
      {
        goto LABEL_151;
      }
    }

    outlined destroy of AttributedString._AttributeValue(&v344);

    swift_bridgeObjectRelease_n();
    v142 = v335;
    if (v327 >> 10 > v335 >> 10)
    {
      break;
    }

    v62 = v327;
LABEL_33:
    v42 = v334;
    v331 = v329;
    v332 = v333;
    v330 = v46;
    v58 = v339;
    v63 = v340;
  }

  v343 = v61;
  v63 = v340;
  v317 = v46;
  v310 = v327 >> 10;
  while (1)
  {
    v143 = v142;
    v144 = *(v63 + 5);
    v360 = *(v63 + 3);
    v361 = v144;
    v362 = *(v63 + 7);
    swift_unknownObjectRetain();
    v318 = BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    v145 = *(v63 + 5);
    v357 = *(v63 + 3);
    v358 = v145;
    v359 = *(v63 + 7);
    v38 = v357;
    swift_unknownObjectRetain();
    v43 = v337;
    v47 = BigString.UnicodeScalarView.index(after:)();
    v331 = v147;
    v332 = v146;
    v330 = v148;
    swift_unknownObjectRelease();
    v149 = 1 << *(v337 + 32);
    v150 = *(v337 + 64);
    v319 = (v149 + 63) >> 6;
    v151 = v149 < 64 ? ~(-1 << v149) : -1;
    v152 = v151 & v150;
    v335 = v47;
    v311 = v143 >> 11;
    v312 = v47 >> 11;

    v153 = 0;
LABEL_166:
    if (v152)
    {
LABEL_167:
      v154 = v153;
      goto LABEL_176;
    }

LABEL_168:
    v155 = v319 <= v153 + 1 ? v153 + 1 : v319;
    v156 = v155 - 1;
    do
    {
      v154 = v153 + 1;
      if (__OFADD__(v153, 1))
      {
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
        goto LABEL_347;
      }

      if (v154 >= v319)
      {
        v38 = 0;
        v165 = 0;
        v47 = 0;
        v163 = 0;
        v162 = 0;
        v168 = 0;
        v166 = 0;
        v169 = 0;
        v167 = 0;
        v161 = 0;
        v170 = 0;
        v152 = 0;
        v153 = v156;
        goto LABEL_177;
      }

      v152 = *(v42 + 8 * v154);
      ++v153;
    }

    while (!v152);
    v153 = v154;
LABEL_176:
    v157 = __clz(__rbit64(v152));
    v152 &= v152 - 1;
    v158 = v157 | (v154 << 6);
    v159 = *(v43 + 56);
    v160 = (*(v43 + 48) + 16 * v158);
    v161 = v160[1];
    v326 = *v160;
    outlined init with copy of AttributedString._AttributeValue(v159 + 72 * v158, &v351);
    v324 = v352;
    v325 = v351;
    v162 = v353;
    v322 = *(&v352 + 1);
    v323 = *(&v351 + 1);
    v163 = *(&v353 + 1);
    v164 = *(&v354 + 1);
    v47 = v354;
    v38 = v355;

    v165 = v164;
    v166 = v324;
    v167 = v325;
    v168 = v322;
    v169 = v323;
    v170 = v326;
LABEL_177:
    *&v344 = v170;
    *(&v344 + 1) = v161;
    *&v345 = v167;
    *(&v345 + 1) = v169;
    *&v346 = v166;
    *(&v346 + 1) = v168;
    *&v347 = v162;
    *(&v347 + 1) = v163;
    v348 = v47;
    v349 = v165;
    v350 = v38;
    if (v161)
    {
      break;
    }

    v142 = v335;
    v58 = v339;
    v63 = v340;
    v46 = v317;
    if (v310 <= v335 >> 10)
    {

      v22 = v321;
      v42 = v334;
      v61 = v343;
      v38 = v329;
      v62 = v327;
      goto LABEL_31;
    }
  }

  outlined copy of AttributedString.AttributeRunBoundaries?(v163, v47);
  outlined destroy of AttributedString._AttributeValue(&v345);
  v43 = v337;
  if (v47 < 2 || (v38 = specialized Collection.first.getter(v163, v47), outlined consume of AttributedString.AttributeRunBoundaries?(v163, v47), (v38 & 0x100000000) != 0) || v318 == v38)
  {

    goto LABEL_166;
  }

  v171 = v311;
  if (v312 < v311)
  {
    __break(1u);
LABEL_397:
    __break(1u);
    goto LABEL_398;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v351 = v314;
  v174 = specialized __RawDictionaryStorage.find<A>(_:)(v170, v161);
  v175 = v314[2];
  v176 = (v173 & 1) == 0;
  v177 = v175 + v176;
  if (__OFADD__(v175, v176))
  {
    goto LABEL_397;
  }

  if (v314[3] >= v177)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v179 = v314;
      if ((v173 & 1) == 0)
      {
        goto LABEL_190;
      }
    }

    else
    {
      LODWORD(v325) = v173;
      v326 = v174;
      v324 = v161;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySnySiGGGMd);
      v199 = static _DictionaryStorage.copy(original:)();
      v200 = v199;
      if (v314[2])
      {
        v201 = (v199 + 64);
        v202 = 1 << *(v200 + 32);
        v328 = v314 + 8;
        v203 = (v202 + 63) >> 6;
        if (v200 != v314 || v201 >= &v328[8 * v203])
        {
          memmove(v201, v328, 8 * v203);
        }

        v204 = 0;
        v205 = v314;
        *(v200 + 16) = v314[2];
        v206 = 1 << *(v205 + 32);
        v207 = v205[8];
        if (v206 < 64)
        {
          v208 = ~(-1 << v206);
        }

        else
        {
          v208 = -1;
        }

        v171 = v208 & v207;
        v209 = (v206 + 63) >> 6;
        if ((v208 & v207) != 0)
        {
          do
          {
            v210 = __clz(__rbit64(v171));
            v171 &= v171 - 1;
LABEL_221:
            v213 = v210 | (v204 << 6);
            v214 = (v314[6] + 16 * v213);
            v215 = v214[1];
            v216 = *(v314[7] + 8 * v213);
            v217 = (*(v200 + 48) + 16 * v213);
            *v217 = *v214;
            v217[1] = v215;
            *(*(v200 + 56) + 8 * v213) = v216;
          }

          while (v171);
        }

        v211 = v204;
        while (1)
        {
          v204 = v211 + 1;
          if (__OFADD__(v211, 1))
          {
            break;
          }

          if (v204 >= v209)
          {
            goto LABEL_223;
          }

          v212 = *&v328[8 * v204];
          ++v211;
          if (v212)
          {
            v210 = __clz(__rbit64(v212));
            v171 = (v212 - 1) & v212;
            goto LABEL_221;
          }
        }

        __break(1u);
        goto LABEL_403;
      }

LABEL_223:

      v179 = v200;
      v171 = v311;
      v161 = v324;
      v174 = v326;
      if ((v325 & 1) == 0)
      {
        goto LABEL_190;
      }
    }

LABEL_186:
    v182 = v174;

    v174 = v182;
LABEL_192:
    v328 = v179;
    v186 = v179[7];
    v47 = *(v186 + 8 * v174);
    v187 = *(v47 + 16);
    if (v187 && (v188 = v187 - 1, v189 = v47 + 16 * (v187 - 1), *(v189 + 40) == v171))
    {
      v171 = *(v189 + 32);
      if (v312 < v171)
      {
        goto LABEL_400;
      }

      v38 = v174;
      v190 = swift_isUniquelyReferenced_nonNull_native();
      *(v186 + 8 * v38) = v47;
      if ((v190 & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew()(v47);
        *(v186 + 8 * v38) = v47;
      }

      if (v187 > *(v47 + 16))
      {
LABEL_401:
        __break(1u);
      }

      v191 = v328;
    }

    else
    {
      v192 = v174;
      v193 = swift_isUniquelyReferenced_nonNull_native();
      *(v186 + 8 * v192) = v47;
      if (v193)
      {
        v194 = v192;
      }

      else
      {
        v198 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v187 + 1, 1, v47);
        v194 = v192;
        v47 = v198;
        *(v186 + 8 * v192) = v198;
      }

      v191 = v328;
      v188 = *(v47 + 16);
      v195 = *(v47 + 24);
      v38 = v188 + 1;
      if (v188 >= v195 >> 1)
      {
        v326 = v194;
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v195 > 1), v188 + 1, 1, v47);
        *(v186 + 8 * v326) = v47;
      }

      *(v47 + 16) = v38;
    }

    v196 = v47 + 16 * v188;
    v197 = v312;
    *(v196 + 32) = v171;
    *(v196 + 40) = v197;
    v314 = v191;
    v43 = v337;
    v328 = v191;
    if (v152)
    {
      goto LABEL_167;
    }

    goto LABEL_168;
  }

  v178 = v173;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v177, isUniquelyReferenced_nonNull_native);
  v179 = v351;
  v180 = specialized __RawDictionaryStorage.find<A>(_:)(v170, v161);
  if ((v178 & 1) == (v181 & 1))
  {
    v174 = v180;
    if (v178)
    {
      goto LABEL_186;
    }

LABEL_190:
    v179[(v174 >> 6) + 8] |= 1 << v174;
    v183 = (v179[6] + 16 * v174);
    *v183 = v170;
    v183[1] = v161;
    *(v179[7] + 8 * v174) = MEMORY[0x1E69E7CC0];
    v184 = v179[2];
    v101 = __OFADD__(v184, 1);
    v185 = v184 + 1;
    if (!v101)
    {
      v179[2] = v185;
      goto LABEL_192;
    }

LABEL_398:
    __break(1u);
LABEL_399:
    __break(1u);
LABEL_400:
    __break(1u);
    goto LABEL_401;
  }

LABEL_405:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_406:

  result = MEMORY[0x1865D2690](v171, -1, -1);
  __break(1u);
  return result;
}

uint64_t specialized AttributedString.Guts.updateRun(at:within:with:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return specialized AttributedString.Guts.updateRun(at:within:with:)(a1, a2, a3, a4, a5, a6, a7, a8, closure #1 in AttributedString.Guts.enforceAttributeConstraintsBeforeMutation(to:));
}

{
  return specialized AttributedString.Guts.updateRun(at:within:with:)(a1, a2, a3, a4, a5, a6, a7, a8, closure #2 in AttributedString.Guts.enforceAttributeConstraintsBeforeMutation(to:));
}

uint64_t specialized AttributedString.Guts.updateRun(at:within:with:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t *, uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v68 = a1[4];
  v14 = a4[9];
  v13 = a4[10];
  v15 = a4 + 9;
  v17 = a4[11];
  v16 = a4[12];
  swift_unknownObjectRetain();
  specialized Rope.subscript.getter(v11, v10, v12, v14, v13, v17, v16);
  v19 = v18;
  v21 = v20;
  swift_unknownObjectRelease();
  v22 = *v15;
  v23 = v15[1];
  v60 = v15;
  v25 = v15[2];
  v24 = v15[3];
  swift_unknownObjectRetain();
  v58 = v11;
  v26 = specialized Rope.subscript.getter(v11, v10, v12, v22, v23, v25, v24);
  swift_unknownObjectRelease();

  v28 = v68 + v26;
  if (__OFADD__(v68, v26))
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v71 = v19;
  v72 = v21;
  if (v68 >= a3)
  {
    v29 = a3;
  }

  else
  {
    v29 = v68;
  }

  if (v68 >= a2)
  {
    v30 = v29;
  }

  else
  {
    v30 = a2;
  }

  if (v28 <= a2)
  {
    v31 = a2;
  }

  else
  {
    v31 = v68 + v26;
  }

  if (v28 <= a3)
  {
    v32 = v31;
  }

  else
  {
    v32 = a3;
  }

  if (v30 == v32)
  {
    goto LABEL_70;
  }

  v70 = 1;
  if (v30 != v68 || v32 != v28)
  {
    result = a9(&v71, v30, v32, &v70, a5, a6, a7, a8);
    if (v70 == 1)
    {
      if (__OFSUB__(v32, v30))
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      result = specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v30, v32, v32 - v30, v71, v72);
      v34 = a4[9];
      if (v34)
      {
        v35 = a4[11];
      }

      else
      {
        v35 = 0;
      }

      if (v68 < 0 || v35 < v68)
      {
        goto LABEL_76;
      }

      v36 = a4[10];
      v37 = a4[12];
      if (v34)
      {
        v38 = (v34 + 16);
        v39 = *(v34 + 16);
        if (*(v34 + 16))
        {
          if (v68 < a4[11])
          {
            v67 = a4[10];
            v40 = *(v34 + 18);
            result = swift_unknownObjectRetain_n();
            if (v40)
            {
              v41 = v68;
              v42 = v40;
              v43 = v34;
              do
              {
                v44 = *v38;
                if (*v38)
                {
                  v46 = 0;
                  v47 = (v43 + 40);
                  while (1)
                  {
                    v48 = *v47;
                    v47 += 3;
                    v49 = v41 - v48;
                    if (__OFSUB__(v41, v48))
                    {
                      break;
                    }

                    if (__OFADD__(v49, 1))
                    {
                      goto LABEL_68;
                    }

                    if (v49 + 1 < 1)
                    {
                      v44 = v46;
                      goto LABEL_35;
                    }

                    ++v46;
                    v41 = v49;
                    if (v44 == v46)
                    {
                      goto LABEL_44;
                    }
                  }

                  __break(1u);
LABEL_68:
                  __break(1u);
                  goto LABEL_69;
                }

                v49 = v41;
LABEL_44:
                if (v49)
                {
                  goto LABEL_73;
                }

                v41 = 0;
LABEL_35:
                v42 = (v44 << ((4 * v40 + 8) & 0x3C)) | ((-15 << ((4 * v40 + 8) & 0x3C)) - 1) & v42;
                v45 = *(v43 + 24 + 24 * v44);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v38 = (v45 + 16);
                LOBYTE(v40) = *(v45 + 18);
                v43 = v45;
              }

              while (v40);
              v39 = *v38;
              if (*v38)
              {
                goto LABEL_52;
              }

              v56 = 0;
LABEL_60:
              if (!v41)
              {
                v52 = 0;
LABEL_62:
                swift_unknownObjectRelease();
                v51 = v42 & 0xFFFFFFFFFFFFF0FFLL | (v56 << 8);
                v36 = v67;
                goto LABEL_48;
              }

              goto LABEL_78;
            }

            v42 = 0;
            v41 = v68;
            v45 = v34;
LABEL_52:
            v54 = 0;
            v55 = 24;
            v52 = v41;
            v56 = v39;
            while (1)
            {
              v57 = *(v45 + v55);
              v41 = v52 - v57;
              if (__OFSUB__(v52, v57))
              {
                goto LABEL_71;
              }

              if (__OFADD__(v41, 1))
              {
                goto LABEL_72;
              }

              if (v41 + 1 < 1)
              {
                v56 = v54;
                goto LABEL_62;
              }

              ++v54;
              v55 += 24;
              v52 -= v57;
              if (v39 == v54)
              {
                goto LABEL_60;
              }
            }
          }
        }
      }

      v50 = swift_unknownObjectRetain();
      result = specialized Rope._endPath.getter(v50);
      v51 = result;
      v45 = 0;
      v52 = 0;
      if (v34)
      {
LABEL_48:
        v53 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v37, v51, v45, v34, v36);
        result = swift_unknownObjectRelease();
      }

      else
      {
        v53 = 0;
      }

      if (__OFSUB__(v68, v52))
      {
        goto LABEL_77;
      }

      *a1 = v37;
      a1[1] = v51;
      a1[2] = v45;
      a1[3] = v53;
      a1[4] = v68 - v52;
    }

LABEL_66:
  }

  if (v58 != a4[12])
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (!*v60)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  specialized Rope._Node._prepareModify(at:)(v10, v73);
  v76 = v74;
  v77 = v75;
  outlined destroy of TermOfAddress?(&v76, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  result = outlined destroy of TermOfAddress?(&v77, &_sShySSGMd);
  v74 = MEMORY[0x1E69E7CC8];
  v75 = MEMORY[0x1E69E7CD0];
  a4[12] = v58 + 1;
  *a1 = v58 + 1;
  if (a4[9])
  {
    v33 = specialized Rope._Node._finalizeModify(_:)(v69, v73);

    a1[2] = v33;
    a9(&v71, v68, v28, &v70, a5, a6, a7, a8);
    if (v70 == 1)
    {
      specialized AttributedString._InternalRuns.updateAndCoalesce(at:with:)(a1, v60, &v71);
    }

    else
    {
      specialized Rope.update<A>(at:by:)(a1, v60, &v71);
    }

    goto LABEL_66;
  }

LABEL_80:
  __break(1u);
  return result;
}

uint64_t specialized AttributedString.Guts.updateRun(at:within:with:)(unint64_t *a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v204 = a1[4];
  v11 = a4[9];
  v13 = a4[10];
  v12 = a4 + 9;
  v15 = a4[11];
  v14 = a4[12];
  swift_unknownObjectRetain();
  specialized Rope.subscript.getter(v8, v9, v10, v11, v13, v15, v14);
  v17 = v16;
  v202 = v18;
  swift_unknownObjectRelease();
  v19 = *v12;
  v20 = v12[1];
  v198 = v12;
  v22 = v12[2];
  v21 = v12[3];
  swift_unknownObjectRetain();
  v23 = specialized Rope.subscript.getter(v8, v9, v10, v19, v20, v22, v21);
  v25 = v24;
  swift_unknownObjectRelease();

  v26 = v204;

  v28 = v204 + v23;
  if (__OFADD__(v204, v23))
  {
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __src = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
    v82 = static _DictionaryStorage.copy(original:)();
    v46 = v82;
    if (*(v22 + 16))
    {
      v83 = (v82 + 64);
      v84 = ((1 << *(v46 + 32)) + 63) >> 6;
      v195 = v22;
      if (v46 != v22 || v83 >= v22 + 64 + 8 * v84)
      {
        memmove(v83, (v22 + 64), 8 * v84);
      }

      v192 = v22 + 64;
      v85 = 0;
      *(v46 + 16) = *(v22 + 16);
      v86 = 1 << *(v22 + 32);
      v87 = -1;
      if (v86 < 64)
      {
        v87 = ~(-1 << v86);
      }

      v202 = v87 & *(v22 + 64);
      v17 = (v86 + 63) >> 6;
      for (i = v202; v202; i = v202)
      {
        v202 = (i - 1) & i;
        v89 = __clz(__rbit64(i)) | (v85 << 6);
        v90 = v195;
LABEL_65:
        v93 = 16 * v89;
        v94 = *(v90 + 56);
        v95 = (*(v90 + 48) + 16 * v89);
        v97 = *v95;
        v96 = v95[1];
        v98 = 72 * v89;
        outlined init with copy of AttributedString._AttributeValue(v94 + 72 * v89, &v217);
        v99 = (*(v46 + 48) + v93);
        *v99 = v97;
        v99[1] = v96;
        v100 = *(v46 + 56) + v98;
        *v100 = v217;
        v101 = v218;
        v102 = v219;
        v103 = v220;
        *(v100 + 64) = v221;
        *(v100 + 32) = v102;
        *(v100 + 48) = v103;
        *(v100 + 16) = v101;
      }

      v91 = v85;
      v19 = a5;
      v26 = v204;
      v90 = v195;
      while (1)
      {
        v85 = v91 + 1;
        if (__OFADD__(v91, 1))
        {
          break;
        }

        if (v85 >= v17)
        {
          goto LABEL_82;
        }

        v92 = *(v192 + 8 * v85);
        ++v91;
        if (v92)
        {
          v202 = (v92 - 1) & v92;
          v89 = __clz(__rbit64(v92)) | (v85 << 6);
          goto LABEL_65;
        }
      }

      __break(1u);
      goto LABEL_173;
    }

LABEL_82:

    v31 = a6;
    v27 = __src;
    if ((a2 & 1) == 0)
    {
      goto LABEL_83;
    }

LABEL_40:
    v66 = *(v46 + 56) + 72 * v27;
    v68 = *(v66 + 16);
    v67 = *(v66 + 32);
    v69 = *(v66 + 48);
    v221 = *(v66 + 64);
    v220 = v69;
    v217 = *v66;
    v218 = v68;
    v219 = v67;
    v70 = *(v46 + 56) + 72 * v27;
    v71 = v208;
    v72 = v209;
    v73 = v210;
    *(v70 + 64) = v211;
    *(v70 + 32) = v72;
    *(v70 + 48) = v73;
    *(v70 + 16) = v71;
    *v70 = v207;
    outlined destroy of AttributedString._AttributeValue(&v212);
LABEL_84:
    v227 = v46;
    goto LABEL_85;
  }

  v227 = v17;
  v228 = v202;
  if (v204 >= a3)
  {
    v29 = a3;
  }

  else
  {
    v29 = v204;
  }

  if (v204 >= a2)
  {
    v25 = v29;
  }

  else
  {
    v25 = a2;
  }

  if (v28 <= a2)
  {
    v30 = a2;
  }

  else
  {
    v30 = v204 + v23;
  }

  if (v28 <= a3)
  {
    a3 = v30;
  }

  if (v25 == a3)
  {
    goto LABEL_48;
  }

  v22 = v17;
  if (v25 == v204 && a3 == v28)
  {
    a2 = v17;
    v19 = a4;
    v25 = a6;
    v22 = a5;
    if (v8 == a4[12])
    {
      v17 = v198;
      if (!*v198)
      {
LABEL_174:
        __break(1u);
        goto LABEL_175;
      }

      specialized Rope._Node._prepareModify(at:)(v9, v229);
      v230 = v229[1];
      v222 = v229[0];
      v224 = v229[2];
      outlined destroy of TermOfAddress?(&v230, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      outlined destroy of TermOfAddress?(&v230 + 8, &_sShySSGMd);
      v223 = MEMORY[0x1E69E7CC8];
      a4[12] = v8 + 1;
      v31 = a1;
      *a1 = v8 + 1;
      if (!a4[9])
      {
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
        goto LABEL_178;
      }

      v19 = specialized Rope._Node._finalizeModify(_:)(&v217, &v222);

      a1[2] = v19;
      v226 = 0;
      v224 = 0u;
      v225 = 0u;
      v222 = 0u;
      v223 = 0u;
      outlined init with copy of FloatingPointRoundingRule?(&v222, &v217, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (!*(&v218 + 1))
      {

        outlined destroy of TermOfAddress?(&v217, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v58 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
        if ((v59 & 1) == 0)
        {
          v221 = 0;
          v219 = 0u;
          v220 = 0u;
          v217 = 0u;
          v218 = 0u;
LABEL_138:
          AttributedString._AttributeStorage._attributeModified(_:old:new:)(v22, v25, &v217, &v222);
          outlined destroy of TermOfAddress?(&v222, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v217, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

          specialized AttributedString._InternalRuns.updateAndCoalesce(at:with:)(v31, v17, &v227);
          goto LABEL_139;
        }

        v60 = v58;
        v61 = v227;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v39 = v61;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v169 = static _DictionaryStorage.copy(original:)();
          v39 = v169;
          if (*(v61 + 16))
          {
            v170 = (v169 + 64);
            v171 = v61 + 64;
            v172 = ((1 << *(v39 + 32)) + 63) >> 6;
            if (v39 != v61 || v170 >= v171 + 8 * v172)
            {
              memmove(v170, (v61 + 64), 8 * v172);
            }

            v173 = 0;
            *(v39 + 16) = *(v61 + 16);
            v174 = 1 << *(v61 + 32);
            v175 = -1;
            if (v174 < 64)
            {
              v175 = ~(-1 << v174);
            }

            v176 = (v174 + 63) >> 6;
            v177 = v175 & *(v61 + 64);
            if (v177)
            {
              do
              {
                v178 = __clz(__rbit64(v177));
                v206 = (v177 - 1) & v177;
LABEL_168:
                v181 = v178 | (v173 << 6);
                v182 = 16 * v181;
                v183 = (*(v61 + 48) + 16 * v181);
                v185 = *v183;
                v184 = v183[1];
                v186 = 72 * v181;
                outlined init with copy of AttributedString._AttributeValue(*(v61 + 56) + 72 * v181, &v217);
                v187 = (*(v39 + 48) + v182);
                *v187 = v185;
                v187[1] = v184;
                v188 = *(v39 + 56) + v186;
                *v188 = v217;
                v189 = v218;
                v190 = v219;
                v191 = v220;
                *(v188 + 64) = v221;
                *(v188 + 32) = v190;
                *(v188 + 48) = v191;
                *(v188 + 16) = v189;

                v177 = v206;
              }

              while (v206);
            }

            v179 = v173;
            while (1)
            {
              v173 = v179 + 1;
              if (__OFADD__(v179, 1))
              {
                goto LABEL_177;
              }

              if (v173 >= v176)
              {
                break;
              }

              v180 = *(v171 + 8 * v173);
              ++v179;
              if (v180)
              {
                v178 = __clz(__rbit64(v180));
                v206 = (v180 - 1) & v180;
                goto LABEL_168;
              }
            }
          }

          v31 = a1;
          v17 = v198;
          v25 = a6;
          v22 = a5;
        }

        v62 = *(v39 + 56) + 72 * v60;
        v217 = *v62;
        v64 = *(v62 + 32);
        v63 = *(v62 + 48);
        v65 = *(v62 + 64);
        v218 = *(v62 + 16);
        v219 = v64;
        v221 = v65;
        v220 = v63;
        specialized _NativeDictionary._delete(at:)(v60, v39);
LABEL_137:
        v227 = v39;
        goto LABEL_138;
      }

      v214 = v219;
      v215 = v220;
      v216 = v221;
      v212 = v217;
      v213 = v218;
      outlined init with copy of AttributedString._AttributeValue(&v212, &v207);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
      v35 = *(a2 + 16);
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (!v37)
      {
        LOBYTE(v26) = v34;
        if (*(a2 + 24) < v38)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v38, isUniquelyReferenced_nonNull_native);
          v39 = a2;
          v33 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
          if ((v26 & 1) != (v40 & 1))
          {
            goto LABEL_178;
          }

LABEL_43:
          if (v26)
          {
LABEL_44:
            v74 = *(v39 + 56) + 72 * v33;
            v76 = *(v74 + 16);
            v75 = *(v74 + 32);
            v77 = *(v74 + 48);
            v221 = *(v74 + 64);
            v220 = v77;
            v217 = *v74;
            v218 = v76;
            v219 = v75;
            v78 = *(v39 + 56) + 72 * v33;
            v79 = v208;
            v80 = v209;
            v81 = v210;
            *(v78 + 64) = v211;
            *(v78 + 32) = v80;
            *(v78 + 48) = v81;
            *(v78 + 16) = v79;
            *v78 = v207;
            outlined destroy of AttributedString._AttributeValue(&v212);
            goto LABEL_137;
          }

LABEL_136:
          specialized _NativeDictionary._insert(at:key:value:)(v33, v22, v25, &v207, v39);

          outlined destroy of AttributedString._AttributeValue(&v212);
          v217 = 0u;
          v218 = 0u;
          v219 = 0u;
          v220 = 0u;
          v221 = 0;
          goto LABEL_137;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v39 = a2;
          goto LABEL_43;
        }

        v202 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v104 = static _DictionaryStorage.copy(original:)();
        v39 = v104;
        if (*(a2 + 16))
        {
          v105 = (v104 + 64);
          v106 = a2 + 64;
          v107 = ((1 << *(v39 + 32)) + 63) >> 6;
          if (v39 != a2 || v105 >= v106 + 8 * v107)
          {
            memmove(v105, (a2 + 64), 8 * v107);
          }

          v108 = 0;
          *(v39 + 16) = *(a2 + 16);
          v109 = 1 << *(a2 + 32);
          v110 = -1;
          if (v109 < 64)
          {
            v110 = ~(-1 << v109);
          }

          v111 = (v109 + 63) >> 6;
          v112 = v110 & *(a2 + 64);
          if (v112)
          {
            do
            {
              v113 = __clz(__rbit64(v112));
              v205 = (v112 - 1) & v112;
LABEL_80:
              v116 = v113 | (v108 << 6);
              v117 = 16 * v116;
              v118 = (*(a2 + 48) + 16 * v116);
              v120 = *v118;
              v119 = v118[1];
              v121 = 72 * v116;
              outlined init with copy of AttributedString._AttributeValue(*(a2 + 56) + 72 * v116, &v217);
              v122 = (*(v39 + 48) + v117);
              *v122 = v120;
              v122[1] = v119;
              v123 = *(v39 + 56) + v121;
              *v123 = v217;
              v124 = v218;
              v125 = v219;
              v126 = v220;
              *(v123 + 64) = v221;
              *(v123 + 32) = v125;
              *(v123 + 48) = v126;
              *(v123 + 16) = v124;

              v112 = v205;
            }

            while (v205);
          }

          v114 = v108;
          v31 = a1;
          v17 = v198;
          while (1)
          {
            v108 = v114 + 1;
            if (__OFADD__(v114, 1))
            {
              break;
            }

            if (v108 >= v111)
            {
              goto LABEL_135;
            }

            v115 = *(v106 + 8 * v108);
            ++v114;
            if (v115)
            {
              v113 = __clz(__rbit64(v115));
              v205 = (v115 - 1) & v115;
              goto LABEL_80;
            }
          }

LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

LABEL_135:

        v25 = a6;
        v33 = v202;
        v22 = a5;
        if (v26)
        {
          goto LABEL_44;
        }

        goto LABEL_136;
      }

      goto LABEL_51;
    }

    goto LABEL_49;
  }

  v226 = 0;
  v224 = 0u;
  v225 = 0u;
  v222 = 0u;
  v223 = 0u;
  outlined init with copy of FloatingPointRoundingRule?(&v222, &v217, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  v31 = a6;
  v19 = a5;
  if (!*(&v218 + 1))
  {

    outlined destroy of TermOfAddress?(&v217, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v49 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
    if (v50)
    {
      v51 = v49;
      v52 = v227;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v53 = v52;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v149 = static _DictionaryStorage.copy(original:)();
        v53 = v149;
        if (*(v52 + 16))
        {
          v150 = (v149 + 64);
          __srca = (v52 + 64);
          v151 = ((1 << *(v53 + 32)) + 63) >> 6;
          if (v53 != v52 || v150 >= &__srca[8 * v151])
          {
            memmove(v150, __srca, 8 * v151);
          }

          v152 = 0;
          *(v53 + 16) = *(v52 + 16);
          v153 = 1 << *(v52 + 32);
          v154 = -1;
          if (v153 < 64)
          {
            v154 = ~(-1 << v153);
          }

          v202 = v154 & *(v52 + 64);
          v17 = (v153 + 63) >> 6;
          for (j = v202; v202; j = v202)
          {
            v156 = __clz(__rbit64(j));
            v202 = (j - 1) & j;
LABEL_153:
            v159 = v156 | (v152 << 6);
            v160 = 16 * v159;
            v161 = (*(v52 + 48) + 16 * v159);
            v162 = v161[1];
            v196 = *v161;
            v163 = 72 * v159;
            outlined init with copy of AttributedString._AttributeValue(*(v52 + 56) + 72 * v159, &v217);
            v164 = (*(v53 + 48) + v160);
            *v164 = v196;
            v164[1] = v162;
            v165 = *(v53 + 56) + v163;
            *v165 = v217;
            v166 = v218;
            v167 = v219;
            v168 = v220;
            *(v165 + 64) = v221;
            *(v165 + 32) = v167;
            *(v165 + 48) = v168;
            *(v165 + 16) = v166;
          }

          v157 = v152;
          while (1)
          {
            v152 = v157 + 1;
            if (__OFADD__(v157, 1))
            {
              goto LABEL_176;
            }

            if (v152 >= v17)
            {
              break;
            }

            v158 = *&__srca[8 * v152];
            ++v157;
            if (v158)
            {
              v156 = __clz(__rbit64(v158));
              v202 = (v158 - 1) & v158;
              goto LABEL_153;
            }
          }
        }

        v31 = a6;
        v26 = v204;
      }

      v54 = *(v53 + 56) + 72 * v51;
      v217 = *v54;
      v56 = *(v54 + 32);
      v55 = *(v54 + 48);
      v57 = *(v54 + 64);
      v218 = *(v54 + 16);
      v219 = v56;
      v221 = v57;
      v220 = v55;
      specialized _NativeDictionary._delete(at:)(v51, v53);
      v227 = v53;
      v19 = a5;
    }

    else
    {
      v221 = 0;
      v219 = 0u;
      v220 = 0u;
      v217 = 0u;
      v218 = 0u;
    }

LABEL_85:
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(v19, v31, &v217, &v222);
    v39 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
    outlined destroy of TermOfAddress?(&v222, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v217, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

    if (!__OFSUB__(a3, v25))
    {
      v127 = v227;
      v39 = v198;
      specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v25, a3, a3 - v25, v227, v228);
      v128 = a4[9];
      v17 = a4[11];
      if (v128)
      {
        v129 = a4[11];
      }

      else
      {
        v129 = 0;
      }

      if (v26 < 0 || v129 < v26)
      {
        goto LABEL_133;
      }

      v130 = a4[10];
      a5 = a4[12];
      if (!v128 || (v31 = (v128 + 16), v39 = *(v128 + 16), !*(v128 + 16)) || v26 >= v17)
      {
        v140 = swift_unknownObjectRetain();
        v141 = specialized Rope._endPath.getter(v140);
        v26 = 0;
        v142 = 0;
        if (v128)
        {
LABEL_109:
          v143 = specialized Rope._Node.distanceFromStart<A>(to:in:)(a5, v141, v26, v128, v130);
          swift_unknownObjectRelease();
        }

        else
        {
          v143 = 0;
        }

        if (!__OFSUB__(v204, v142))
        {
          *a1 = a5;
          a1[1] = v141;
          a1[2] = v26;
          a1[3] = v143;
          a1[4] = v204 - v142;
LABEL_139:
        }

        goto LABEL_134;
      }

      a6 = a4[10];
      v202 = v127;
      v131 = *(v128 + 18);
      swift_unknownObjectRetain_n();
      if (v131)
      {
        v200 = v17;
        v17 = -15;
        v39 = 24;
        v132 = v26;
        v133 = v131;
        v134 = v128;
        do
        {
          v135 = *v31;
          if (*v31)
          {
            v136 = 0;
            v137 = (v134 + 40);
            while (1)
            {
              v138 = *v137;
              v137 += 3;
              v139 = v132 - v138;
              if (__OFSUB__(v132, v138))
              {
                goto LABEL_127;
              }

              if (__OFADD__(v139, 1))
              {
                goto LABEL_128;
              }

              if (v139 + 1 < 1)
              {
                v135 = v136;
                goto LABEL_97;
              }

              ++v136;
              v132 = v139;
              if (v135 == v136)
              {
                goto LABEL_106;
              }
            }
          }

          v139 = v132;
LABEL_106:
          if (v139)
          {
            goto LABEL_131;
          }

          v132 = 0;
LABEL_97:
          v133 = (v135 << ((4 * v131 + 8) & 0x3C)) | ((-15 << ((4 * v131 + 8) & 0x3C)) - 1) & v133;
          v26 = *(v134 + 24 + 24 * v135);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v31 = (v26 + 16);
          LOBYTE(v131) = *(v26 + 18);
          v134 = v26;
        }

        while (v131);
        LODWORD(v39) = *v31;
        if (*v31)
        {
          v17 = v200;
          goto LABEL_113;
        }

        v39 = 0;
        v17 = v200;
        if (!v132)
        {
LABEL_119:
          v142 = 0;
LABEL_121:
          swift_unknownObjectRelease();
          v141 = v133 & 0xFFFFFFFFFFFFF0FFLL | (v39 << 8);
          v130 = a6;
          goto LABEL_109;
        }

LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
      }

      else
      {
        v133 = 0;
        v132 = v26;
        v26 = v128;
LABEL_113:
        v144 = 0;
        v145 = 24;
        v142 = v132;
        v39 = v39;
        while (1)
        {
          v146 = *(v26 + v145);
          v147 = v142 - v146;
          if (__OFSUB__(v142, v146))
          {
            break;
          }

          if (__OFADD__(v147, 1))
          {
            goto LABEL_130;
          }

          if (v147 + 1 < 1)
          {
            v39 = v144;
            goto LABEL_121;
          }

          ++v144;
          v145 += 24;
          v142 -= v146;
          if (v39 == v144)
          {
            if (v147)
            {
              goto LABEL_126;
            }

            goto LABEL_119;
          }
        }
      }

      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
    }

    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v214 = v219;
  v215 = v220;
  v216 = v221;
  v212 = v217;
  v213 = v218;
  outlined init with copy of AttributedString._AttributeValue(&v212, &v207);

  v41 = swift_isUniquelyReferenced_nonNull_native();
  *&v229[0] = v17;
  v27 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
  v43 = *(v17 + 16);
  v44 = (v42 & 1) == 0;
  v45 = v43 + v44;
  if (__OFADD__(v43, v44))
  {
    goto LABEL_50;
  }

  LOBYTE(a2) = v42;
  if (*(v17 + 24) >= v45)
  {
    if ((v41 & 1) == 0)
    {
      goto LABEL_52;
    }

    v46 = v17;
    if (v42)
    {
      goto LABEL_40;
    }

LABEL_83:
    specialized _NativeDictionary._insert(at:key:value:)(v27, v19, v31, &v207, v46);

    outlined destroy of AttributedString._AttributeValue(&v212);
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v220 = 0u;
    v221 = 0;
    goto LABEL_84;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, v41);
  v46 = *&v229[0];
  v47 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
  if ((a2 & 1) == (v48 & 1))
  {
    v27 = v47;
    if (a2)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_178:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}