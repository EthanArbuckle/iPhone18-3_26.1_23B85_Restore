void specialized Collection.count.getter()
{
  v1 = *(v0 + 96);
  if (v1 == 2)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 88);
    v3 = *(*v0 + 16);
    v6 = *(v0 + 72);
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v4 = *(v0 + 208);
    if (v4 != 2)
    {
      v5 = *(v0 + 200);
      v10 = *(v0 + 184);
      v11 = v5;
      v12 = v4;
      v13 = v3;
      specialized BidirectionalCollection._distance(from:to:)(&v6, &v10);
      return;
    }
  }

  __break(1u);
}

uint64_t *specialized Collection.count.getter(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = result[9];
  v4 = result[11];
  if (v3)
  {
    v5 = result[11];
  }

  else
  {
    v5 = 0;
  }

  if (a2 < 0 || (v6 = a2, v5 < a2))
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v7 = a3;
  v8 = result;
  v9 = result[12];
  v60 = result[10];
  if (v3)
  {
    v10 = (v3 + 16);
    v11 = *(v3 + 16);
    if (v4 > a2 && v11 != 0)
    {
      v53 = a3;
      v54 = result[12];
      v18 = *(v3 + 18);
      result = swift_unknownObjectRetain_n();
      if (!v18)
      {
        v19 = 0;
        v15 = v3;
LABEL_31:
        v22 = 0;
        v27 = 24;
        v16 = v6;
        v9 = v11;
        while (1)
        {
          v28 = *(v15 + v27);
          v29 = v16 - v28;
          if (__OFSUB__(v16, v28))
          {
            break;
          }

          if (__OFADD__(v29, 1))
          {
            goto LABEL_92;
          }

          if (v29 + 1 < 1)
          {
            v9 = v22;
            goto LABEL_39;
          }

          ++v22;
          v27 += 24;
          v16 -= v28;
          if (v11 == v22)
          {
            if (v29)
            {
              goto LABEL_81;
            }

            goto LABEL_37;
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
        goto LABEL_97;
      }

      v58 = v4;
      v19 = v18;
      v20 = v3;
      do
      {
        v21 = *v10;
        if (*v10)
        {
          v23 = 0;
          v24 = (v20 + 40);
          while (1)
          {
            v25 = *v24;
            v24 += 3;
            v26 = v6 - v25;
            if (__OFSUB__(v6, v25))
            {
              goto LABEL_87;
            }

            if (__OFADD__(v26, 1))
            {
              goto LABEL_88;
            }

            if (v26 + 1 < 1)
            {
              v21 = v23;
              goto LABEL_17;
            }

            ++v23;
            v6 = v26;
            if (v21 == v23)
            {
              goto LABEL_26;
            }
          }
        }

        v26 = v6;
LABEL_26:
        if (v26)
        {
          goto LABEL_93;
        }

        v6 = 0;
LABEL_17:
        v19 = (v21 << ((4 * v18 + 8) & 0x3C)) | ((-15 << ((4 * v18 + 8) & 0x3C)) - 1) & v19;
        v15 = *(v20 + 24 + 24 * v21);
        swift_unknownObjectRetain();
        result = swift_unknownObjectRelease();
        v10 = (v15 + 16);
        LOBYTE(v18) = *(v15 + 18);
        v20 = v15;
      }

      while (v18);
      v11 = *v10;
      if (*v10)
      {
        goto LABEL_31;
      }

      v9 = 0;
      if (!v6)
      {
LABEL_37:
        v16 = 0;
LABEL_39:
        swift_unknownObjectRelease();
        v14 = v19 & 0xFFFFFFFFFFFFF0FFLL | (v9 << 8);
        v7 = v53;
        v9 = v54;
        goto LABEL_13;
      }

LABEL_81:
      __break(1u);
LABEL_82:
      v34 = v22;
LABEL_83:
      result = swift_unknownObjectRelease();
      v48 = v11 & 0xFFFFFFFFFFFFF0FFLL | (v34 << 8);
      v31 = a2;
      v14 = v51;
      if (v4)
      {
        goto LABEL_67;
      }

      goto LABEL_84;
    }
  }

  v13 = swift_unknownObjectRetain();
  result = specialized Rope._endPath.getter(v13);
  v14 = result;
  v15 = 0;
  v16 = 0;
  if (v3)
  {
LABEL_13:
    v17 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v9, v14, v15, v3, v60);
    result = swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
  }

  v30 = a2 - v16;
  if (__OFSUB__(a2, v16))
  {
    goto LABEL_98;
  }

  v31 = a2;
  v4 = v8[9];
  v32 = v8[10];
  v33 = v8[11];
  v57 = v30;
  v58 = v17;
  v60 = v8[12];
  v56 = v8;
  if (a2 != v7)
  {
    v43 = v14;
    v44 = v32;
    v45 = v33;
    v46 = v4;
    v47 = swift_unknownObjectRetain();
    v4 = v44;
    v48 = specialized Rope._endPath.getter(v47);
    if (v46)
    {
      swift_unknownObjectRelease();
      v3 = 0;
    }

    else
    {
      v3 = 0;
      v4 = 0;
      v45 = 0;
    }

    goto LABEL_69;
  }

  v53 = v7;
  v55 = v9;
  v52 = v8[10];
  if (v4)
  {
    if (v33 < a2)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v35 = (v4 + 16);
    LODWORD(v34) = *(v4 + 16);
    if (*(v4 + 16) && v33 > a2)
    {
      v51 = v14;
      v36 = *(v4 + 18);
      v3 = v8[9];
      result = swift_unknownObjectRetain_n();
      if (v36)
      {
        v11 = v36;
        v37 = v4;
        do
        {
          v38 = *v35;
          if (*v35)
          {
            v39 = 0;
            v40 = (v37 + 40);
            while (1)
            {
              v41 = *v40;
              v40 += 3;
              v42 = v31 - v41;
              if (__OFSUB__(v31, v41))
              {
                goto LABEL_89;
              }

              if (__OFADD__(v42, 1))
              {
                goto LABEL_90;
              }

              if (v42 + 1 < 1)
              {
                v38 = v39;
                goto LABEL_50;
              }

              ++v39;
              v31 = v42;
              if (v38 == v39)
              {
                goto LABEL_59;
              }
            }
          }

          v42 = v31;
LABEL_59:
          if (v42)
          {
            goto LABEL_96;
          }

          v31 = 0;
LABEL_50:
          v11 = (v38 << ((4 * v36 + 8) & 0x3C)) | ((-15 << ((4 * v36 + 8) & 0x3C)) - 1) & v11;
          v3 = *(v37 + 24 + 24 * v38);
          swift_unknownObjectRetain();
          result = swift_unknownObjectRelease();
          v35 = (v3 + 16);
          LOBYTE(v36) = *(v3 + 18);
          v37 = v3;
        }

        while (v36);
        LODWORD(v34) = *v35;
        if (*v35)
        {
          goto LABEL_73;
        }

        v34 = 0;
        v9 = v55;
LABEL_78:
        if (!v31)
        {
          v19 = 0;
          goto LABEL_83;
        }

        goto LABEL_101;
      }

      v11 = 0;
LABEL_73:
      v9 = v55;
      v22 = 0;
      v49 = 24;
      v19 = v31;
      v34 = v34;
      while (1)
      {
        v50 = *(v3 + v49);
        v31 = v19 - v50;
        if (__OFSUB__(v19, v50))
        {
          goto LABEL_94;
        }

        if (__OFADD__(v31, 1))
        {
          goto LABEL_95;
        }

        if (v31 + 1 < 1)
        {
          goto LABEL_82;
        }

        ++v22;
        v49 += 24;
        v19 -= v50;
        if (v34 == v22)
        {
          goto LABEL_78;
        }
      }
    }

LABEL_66:
    swift_unknownObjectRetain();
    result = specialized Rope._endPath.getter(v4);
    v48 = result;
    v3 = 0;
    v19 = 0;
    v9 = v55;
    if (v4)
    {
LABEL_67:
      v43 = v14;
      v4 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v60, v48, v3, v4, v52);
      result = swift_unknownObjectRelease();
      v45 = v31 - v19;
      if (!__OFSUB__(v31, v19))
      {
LABEL_68:
        v7 = v53;
LABEL_69:
        v62[0] = v60;
        v62[1] = v48;
        v62[2] = v3;
        v62[3] = v4;
        v62[4] = v45;
        v61[0] = v9;
        v61[1] = v43;
        v61[2] = v15;
        v61[3] = v58;
        v61[4] = v57;
        return specialized BidirectionalCollection._distance(from:to:)(v61, v62, v56, v31, v7);
      }

      goto LABEL_86;
    }

LABEL_84:
    v43 = v14;
    v45 = v31 - v19;
    if (!__OFSUB__(v31, v19))
    {
      goto LABEL_68;
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (a2 <= 0)
  {
    goto LABEL_66;
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
  return result;
}

unint64_t specialized Collection.count.getter(unint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1;
  }

  v3 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v3 = 11;
  }

  return String.UnicodeScalarView.distance(from:to:)(0xFuLL, v3 | (v2 << 16), a1, a2);
}

uint64_t specialized DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  v0 = StaticString.description.getter();
  MEMORY[0x1865CB0E0](v0);
}

uint64_t AttributedString._bounds.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = BigString.startIndex.getter();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(v3 + 16);
  result = BigString.endIndex.getter();
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v11;
  a1[5] = result;
  a1[6] = v13;
  a1[7] = v14;
  a1[8] = v15;
  a1[9] = v11;
  return result;
}

Swift::Int AttributedString.AttributeMergePolicy.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t AttributedStringProtocol.mergingAttributes(_:mergePolicy:)@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X2>, void (**a3)(void *__return_ptr, void, void)@<X3>, uint64_t *a4@<X8>)
{
  v8 = &v80;
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = (&v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *v12;
  v72 = v12[1];
  v73 = v13;
  LODWORD(v71) = *v14;
  (*(v15 + 16))(v11, v4, v9);
  AttributedString.init<A>(_:)(v11, a2, a3, a4);
  v16 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = &unk_1EA7B2000;
  v19 = &static AttributedString.Guts._nextVersion;
  if (isUniquelyReferenced_nonNull_native)
  {
    v20 = v16;
    goto LABEL_12;
  }

  v21 = *(v16 + 40);
  v85 = *(v16 + 24);
  v86 = v21;
  v87 = *(v16 + 56);
  v22 = *(v16 + 72);
  v23 = *(v16 + 80);
  v25 = *(v16 + 88);
  v24 = *(v16 + 96);
  type metadata accessor for AttributedString.Guts();
  v20 = swift_allocObject();
  v26 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v85, v74);
  v27 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v27);
  if (v22)
  {
    v28 = v25 == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v28;
  if (v29 != v26)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_35:
    swift_once();
  }

  v19 = &static AttributedString.Guts._nextVersion;
  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v31 = v86;
  *(v20 + 24) = v85;
  *(v20 + 16) = add_explicit;
  *(v20 + 40) = v31;
  *(v20 + 56) = v87;
  *(v20 + 72) = v22;
  *(v20 + 80) = v23;
  *(v20 + 88) = v25;
  *(v20 + 96) = v24;
  *(v20 + 104) = MEMORY[0x1E69E7CC0];

  *a4 = v20;
  v18 = &unk_1EA7B2000;
LABEL_12:
  if (v18[147] != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    *(v20 + 16) = atomic_fetch_add_explicit(v19, 1uLL, memory_order_relaxed);
    v32 = *(v20 + 24);
    v33 = *(v20 + 56);
    v8[4] = *(v20 + 40);
    v8[5] = v33;
    v8[3] = v32;
    v34 = *(v20 + 56);
    v35 = *(v20 + 64);
    v36 = *(v20 + 24);
    v65 = *(v20 + 40);
    v66 = v36;
    BigString.startIndex.getter();
    v37 = BigString.endIndex.getter();
    v69 = v38;
    v70 = v37;
    v67 = v40;
    v68 = v39;
    v41 = v66;
    v8[1] = v65;
    v80 = v41;
    v81 = v34;
    v82 = v35;
    v42 = v8[4];
    v8[9] = v8[3];
    v8[10] = v42;
    v89 = v84;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v88, v74);
    v43 = BigString.UnicodeScalarView.index(roundingDown:)();
    outlined destroy of BigString(v83);
    v44 = *(v20 + 40);
    v77 = *(v20 + 24);
    v78 = v44;
    v79 = *(v20 + 56);
    swift_unknownObjectRetain();
    v45 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v19 = (v43 >> 11);
    v8 = (v45 >> 11);
    v46 = v73;

    specialized AttributedString._InternalRunsSlice.updateEach(with:)(v20, v43 >> 11, v8, v46, v71);

    result = specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v46);
    if ((result & 1) == 0)
    {
      return result;
    }

    v48 = v46 + 64;
    v49 = 1 << *(v46 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & *(v46 + 64);
    v52 = (v49 + 63) >> 6;

    v53 = 0;
    v72 = MEMORY[0x1E69E7CC0];
    while (v51)
    {
      v54 = v73;
LABEL_24:
      v56 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
      outlined init with copy of AttributedString._AttributeValue(*(v54 + 56) + 72 * (v56 | (v53 << 6)), v74);
      v57 = v75;
      v58 = v76;
      outlined copy of AttributedString.AttributeRunBoundaries?(v75, v76);
      outlined destroy of AttributedString._AttributeValue(v74);
      if (v58 != 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v72 + 2) + 1, 1, v72);
        }

        v60 = *(v72 + 2);
        v59 = *(v72 + 3);
        v61 = v60 + 1;
        if (v60 >= v59 >> 1)
        {
          v70 = *(v72 + 2);
          v71 = v60 + 1;
          v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v72);
          v60 = v70;
          v61 = v71;
          v72 = v64;
        }

        v62 = v72;
        *(v72 + 2) = v61;
        v63 = &v62[16 * v60];
        *(v63 + 4) = v57;
        *(v63 + 5) = v58;
      }
    }

    v54 = v73;
    while (1)
    {
      v55 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v55 >= v52)
      {

        AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v19, v8, 0, v72);
      }

      v51 = *(v48 + 8 * v55);
      ++v53;
      if (v51)
      {
        v53 = v55;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }
}

uint64_t AttributedStringProtocol.replacingAttributes(_:with:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, ValueMetadata *a3@<X2>, void (**a4)(void *__return_ptr, void, void)@<X3>, uint64_t *a5@<X8>)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v5, v11);
  AttributedString.init<A>(_:)(v13, a3, a4, a5);
  v15 = *a1;
  v17 = *a2;
  v18 = v15;
  return AttributedString.replaceAttributes(_:with:)(&v18, &v17);
}

uint64_t static AttributedStringProtocol.== infix<A>(_:_:)(__int128 *a1, uint64_t a2, ValueMetadata *a3, ValueMetadata *a4, void (**a5)(void *__return_ptr, void, void), void (**a6)(void *__return_ptr, void, void))
{
  if (a3 == &type metadata for AttributedString)
  {
    if (a4 == &type metadata for AttributedString)
    {
      v19 = *a1;
      v20 = *a2;
      v21 = *(*a1 + 40);
      v76 = *(*a1 + 24);
      v77 = v21;
      v78 = *(v19 + 56);
      *&v64 = BigString.startIndex.getter();
      *(&v64 + 1) = v22;
      *&v65 = v23;
      *(&v65 + 1) = v24;
      *&v66 = BigString.endIndex.getter();
      *(&v66 + 1) = v25;
      *&v67 = v26;
      *(&v67 + 1) = v27;
      v28 = *(v20 + 40);
      v73 = *(v20 + 24);
      v74 = v28;
      v75 = *(v20 + 56);
      *&v68 = BigString.startIndex.getter();
      *(&v68 + 1) = v29;
      *&v69 = v30;
      *(&v69 + 1) = v31;
      *&v70 = BigString.endIndex.getter();
      *(&v70 + 1) = v32;
      *&v71 = v33;
      *(&v71 + 1) = v34;
      v17 = specialized static AttributedString.Guts.characterwiseIsEqual(_:in:to:in:)(v19, &v64, v20, &v68);
      return v17 & 1;
    }

    v11 = *a1;
    if (a4 != &type metadata for AttributedSubstring)
    {

      goto LABEL_10;
    }

    v35 = *a2;
    v62 = *(a2 + 40);
    v63 = *(a2 + 8);
    v60 = *(a2 + 56);
    v61 = *(a2 + 24);
    v36 = *(v11 + 40);
    v76 = *(v11 + 24);
    v77 = v36;
    v78 = *(v11 + 56);
    *&v64 = BigString.startIndex.getter();
    *(&v64 + 1) = v37;
    *&v65 = v38;
    *(&v65 + 1) = v39;
    *&v66 = BigString.endIndex.getter();
    *(&v66 + 1) = v40;
    *&v67 = v41;
    *(&v67 + 1) = v42;
    v68 = v63;
    v69 = v61;
    v70 = v62;
    v71 = v60;

    v17 = specialized static AttributedString.Guts.characterwiseIsEqual(_:in:to:in:)(v11, &v64, v35, &v68);
  }

  else
  {
    if (a3 != &type metadata for AttributedSubstring)
    {
      (a5)[7](&v68, a3, a5);
      v11 = v68;
LABEL_10:
      (a5)[4](&v68, a3, a5);
      (a5)[5](&v64, a3, a5);
      v76 = v68;
      v77 = v69;
      v78 = v64;
      v79 = v65;
      if (a4 == &type metadata for AttributedString)
      {
        v14 = *a2;
      }

      else if (a4 == &type metadata for AttributedSubstring)
      {
        v15 = *(a2 + 16);
        v68 = *a2;
        v69 = v15;
        v16 = *(a2 + 48);
        v70 = *(a2 + 32);
        v71 = v16;
        v72 = *(a2 + 64);
        v14 = v68;
        outlined init with copy of AttributedSubstring(&v68, &v64);
      }

      else
      {
        (a6)[7](&v68, a4, a6);
        v14 = v68;
      }

      (a6)[4](&v68, a4, a6);
      (a6)[5](&v64, a4, a6);
      v70 = v64;
      v71 = v65;
      v17 = specialized static AttributedString.Guts.characterwiseIsEqual(_:in:to:in:)(v11, &v76, v14, &v68);

      goto LABEL_16;
    }

    if (a4 == &type metadata for AttributedString)
    {
      v43 = *a2;
      v44 = *(a1 + 24);
      v64 = *(a1 + 8);
      v65 = v44;
      v45 = *(a1 + 56);
      v66 = *(a1 + 40);
      v67 = v45;
      v46 = *(v43 + 40);
      v76 = *(v43 + 24);
      v77 = v46;
      v78 = *(v43 + 56);
      *&v68 = BigString.startIndex.getter();
      *(&v68 + 1) = v47;
      *&v69 = v48;
      *(&v69 + 1) = v49;
      *&v70 = BigString.endIndex.getter();
      *(&v70 + 1) = v50;
      *&v71 = v51;
      *(&v71 + 1) = v52;

      v17 = specialized static AttributedString.Guts.characterwiseIsEqual(_:in:to:in:)(v53, &v64, v43, &v68);
    }

    else
    {
      if (a4 != &type metadata for AttributedSubstring)
      {
        v12 = a1[1];
        v68 = *a1;
        v69 = v12;
        v13 = a1[3];
        v70 = a1[2];
        v71 = v13;
        v72 = a1[4];
        v11 = v68;
        outlined init with copy of AttributedSubstring(&v68, &v64);
        goto LABEL_10;
      }

      v54 = *a1;
      v55 = *a2;
      v56 = *(a1 + 24);
      v64 = *(a1 + 8);
      v65 = v56;
      v57 = *(a1 + 56);
      v66 = *(a1 + 40);
      v67 = v57;
      v58 = *(a2 + 24);
      v68 = *(a2 + 8);
      v69 = v58;
      v59 = *(a2 + 56);
      v70 = *(a2 + 40);
      v71 = v59;

      v17 = specialized static AttributedString.Guts.characterwiseIsEqual(_:in:to:in:)(v54, &v64, v55, &v68);
    }
  }

LABEL_16:

  return v17 & 1;
}

uint64_t AttributedStringProtocol.index(afterCharacter:)(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  v6 = *(a1 + 4);
  (*(a3 + 56))(v11, a2, a3);
  v7 = *a1;
  v9[1] = a1[1];
  v9[0] = v7;
  v10 = v6;
  a4(v9);
  v12[1] = v11[1];
  v12[2] = v11[2];
  v12[3] = v11[3];
  v12[4] = v11[4];
  v12[0] = v11[0];
  return outlined destroy of AttributedString.CharacterView(v12);
}

uint64_t AttributedStringProtocol.index(_:offsetByCharacters:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  v6 = *(a1 + 4);
  (*(a3 + 56))(v11, a2, a3);
  v7 = *a1;
  v9[1] = a1[1];
  v9[0] = v7;
  v10 = v6;
  AttributedString.CharacterView._index(_:offsetBy:)(v9, a4);
  v12[1] = v11[1];
  v12[2] = v11[2];
  v12[3] = v11[3];
  v12[4] = v11[4];
  v12[0] = v11[0];
  return outlined destroy of AttributedString.CharacterView(v12);
}

uint64_t AttributedStringProtocol.index(afterUnicodeScalar:)(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  v6 = *(a1 + 4);
  (*(a3 + 64))(v11, a2, a3);
  v7 = *a1;
  v9[1] = a1[1];
  v9[0] = v7;
  v10 = v6;
  a4(v9);
  v12[1] = v11[1];
  v12[2] = v11[2];
  v12[3] = v11[3];
  v12[4] = v11[4];
  v12[0] = v11[0];
  return outlined destroy of AttributedString.UnicodeScalarView(v12);
}

uint64_t AttributedStringProtocol.index(_:offsetByUnicodeScalars:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  v6 = *(a1 + 4);
  (*(a3 + 64))(v11, a2, a3);
  v7 = *a1;
  v9[1] = a1[1];
  v9[0] = v7;
  v10 = v6;
  AttributedString.UnicodeScalarView.index(_:offsetBy:)(v9, a4);
  v12[1] = v11[1];
  v12[2] = v11[2];
  v12[3] = v11[3];
  v12[4] = v11[4];
  v12[0] = v11[0];
  return outlined destroy of AttributedString.UnicodeScalarView(v12);
}

void *AttributedStringProtocol.index(afterRun:)@<X0>(unint64_t *a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = *a1;
  if (a2 == &type metadata for AttributedString || a2 == &type metadata for AttributedSubstring)
  {
    v9 = *v4;
  }

  else
  {
    (*(a3 + 56))(v25, a2, a3);
    v9 = v25[0];
  }

  (*(a3 + 32))(v25, a2, a3);
  v10 = v25[0];
  result = (*(a3 + 40))(v24, a2, a3);
  if (v8 >> 10 < v10 >> 10 || (v12 = v24[0], v13 = v24[0] >> 10, v8 >> 10 >= v24[0] >> 10))
  {
    __break(1u);
  }

  else
  {
    v15 = v24[1];
    v14 = v24[2];
    v16 = v24[3];
    v17 = AttributedString.Guts.index(afterRun:)(v8);
    if (v13 >= v17 >> 10)
    {
      v21 = v17;
    }

    else
    {
      v21 = v12;
    }

    if (v13 >= v17 >> 10)
    {
      v22 = v18;
    }

    else
    {
      v22 = v15;
    }

    if (v13 >= v17 >> 10)
    {
      v14 = v19;
      v16 = v20;
    }

    v23 = *(v9 + 16);

    *a4 = v21;
    a4[1] = v22;
    a4[2] = v14;
    a4[3] = v16;
    a4[4] = v23;
  }

  return result;
}

void *AttributedStringProtocol.index(beforeRun:)@<X0>(unint64_t *a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = *a1;
  if (a2 == &type metadata for AttributedString || a2 == &type metadata for AttributedSubstring)
  {
    v9 = *v4;
  }

  else
  {
    (*(a3 + 56))(v26, a2, a3);
    v9 = v26[0];
  }

  (*(a3 + 32))(v26, a2, a3);
  v11 = v26[0];
  v10 = v26[1];
  v12 = v26[2];
  v13 = v26[3];
  result = (*(a3 + 40))(v25, a2, a3);
  v15 = v11 >> 10;
  if (v11 >> 10 >= v8 >> 10 || v25[0] >> 10 < v8 >> 10)
  {
    __break(1u);
  }

  else
  {
    v16 = AttributedString.Guts.index(beforeRun:)(v8);
    if (v15 >= v16 >> 10)
    {
      v20 = v11;
    }

    else
    {
      v20 = v16;
    }

    if (v15 >= v16 >> 10)
    {
      v21 = v10;
    }

    else
    {
      v21 = v17;
    }

    if (v15 >= v16 >> 10)
    {
      v22 = v12;
    }

    else
    {
      v22 = v18;
    }

    if (v15 >= v16 >> 10)
    {
      v23 = v13;
    }

    else
    {
      v23 = v19;
    }

    v24 = *(v9 + 16);

    *a4 = v20;
    a4[1] = v21;
    a4[2] = v22;
    a4[3] = v23;
    a4[4] = v24;
  }

  return result;
}

void *AttributedStringProtocol.index(_:offsetByRuns:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = *a1;
  if (a3 == &type metadata for AttributedString || a3 == &type metadata for AttributedSubstring)
  {
    v12 = *v5;
  }

  else
  {
    (*(a4 + 56))(&v111, a3, a4);
    v12 = v111;
  }

  (*(a4 + 32))(&v111, a3, a4);
  v13 = v111;
  v104 = v112;
  v105 = *(&v111 + 1);
  v103 = *(&v112 + 1);
  result = (*(a4 + 40))(v110, a3, a4);
  if (v11 >> 10 < v13 >> 10 || v110[0] >> 10 < v11 >> 10)
  {
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v106 = a2;
  v108 = v110[0];
  v15 = *(v12 + 72);
  v16 = *(v12 + 88);
  v17 = v11 >> 11;
  if (v15)
  {
    v18 = *(v12 + 88);
  }

  else
  {
    v18 = 0;
  }

  if (v18 < v17)
  {
    goto LABEL_130;
  }

  v100 = v110[0] >> 10;
  v101 = v13 >> 10;
  v107 = v13;
  v102 = a5;
  v98 = v110[2];
  v99 = v110[1];
  v19 = *(v12 + 96);
  v109 = v11 >> 11;
  v95 = *(v12 + 80);
  v97 = v110[3];
  if (v15 && v17 < v16 && (v20 = (v15 + 16), v11 = *(v15 + 16), *(v15 + 16)))
  {
    v92 = *(v12 + 88);
    v94 = *(v12 + 96);
    v21 = *(v15 + 18);
    result = swift_unknownObjectRetain_n();
    if (!v21)
    {
      v23 = 0;
      v22 = v17;
      v25 = v15;
LABEL_67:
      v66 = 0;
      v67 = 24;
      v21 = v22;
      v11 = v11;
      while (1)
      {
        v68 = *(v25 + v67);
        v69 = v21 - v68;
        if (__OFSUB__(v21, v68))
        {
          goto LABEL_123;
        }

        v26 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          goto LABEL_124;
        }

        if (v26 < 1)
        {
          v11 = v66;
          goto LABEL_75;
        }

        ++v66;
        v67 += 24;
        v21 = v69;
        if (v11 == v66)
        {
          if (v69)
          {
            goto LABEL_90;
          }

          goto LABEL_73;
        }
      }
    }

    v22 = v17;
    v23 = v21;
    v6 = v15;
    do
    {
      v24 = *v20;
      if (*v20)
      {
        v27 = 0;
        v28 = (v6 + 40);
        while (1)
        {
          v29 = *v28;
          v28 += 3;
          v30 = v22 - v29;
          if (__OFSUB__(v22, v29))
          {
            goto LABEL_119;
          }

          if (__OFADD__(v30, 1))
          {
            goto LABEL_120;
          }

          if (v30 + 1 < 1)
          {
            v24 = v27;
            goto LABEL_17;
          }

          ++v27;
          v22 = v30;
          if (v24 == v27)
          {
            goto LABEL_26;
          }
        }
      }

      v30 = v22;
LABEL_26:
      if (v30)
      {
        goto LABEL_125;
      }

      v22 = 0;
LABEL_17:
      v23 = (v24 << ((4 * v21 + 8) & 0x3C)) | ((-15 << ((4 * v21 + 8) & 0x3C)) - 1) & v23;
      v25 = *(v6 + 24 + 24 * v24);
      swift_unknownObjectRetain();
      result = swift_unknownObjectRelease();
      v20 = (v25 + 16);
      v21 = *(v25 + 18);
      v6 = v25;
    }

    while (*(v25 + 18));
    LODWORD(v11) = *v20;
    if (*v20)
    {
      v17 = v109;
      goto LABEL_67;
    }

    v11 = 0;
    v17 = v109;
    if (v22)
    {
LABEL_90:
      __break(1u);
LABEL_91:
      v63 = v26 != 0;
      goto LABEL_92;
    }

LABEL_73:
    v21 = 0;
LABEL_75:
    swift_unknownObjectRelease();
    v6 = v23 & 0xFFFFFFFFFFFFF0FFLL | (v11 << 8);
    v16 = v92;
    v19 = v94;
  }

  else
  {
    v31 = swift_unknownObjectRetain();
    v6 = specialized Rope._endPath.getter(v31);
    v25 = 0;
    v21 = 0;
    if (!v15)
    {
      v32 = 0;
      v33 = v17;
      goto LABEL_30;
    }
  }

  v32 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v19, v6, v25, v15, v95);
  result = swift_unknownObjectRelease();
  v33 = v17 - v21;
  if (__OFSUB__(v17, v21))
  {
    __break(1u);
LABEL_79:
    v54 = *v16;
    if (*v16)
    {
      v20 = v107;
      goto LABEL_82;
    }

    v21 = 0;
    v20 = v107;
    v15 = v108;
    if (v11)
    {
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

LABEL_88:
    v63 = 0;
LABEL_92:
    swift_unknownObjectRelease();
    v73 = v17 & 0xFFFFFFFFFFFFF0FFLL | (v21 << 8);
    v46 = v109;
    v64 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v92, v73, v25, v6, v91);
    goto LABEL_93;
  }

LABEL_30:
  v96 = v33;
  v34 = *(v12 + 72);
  v35 = *(v12 + 80);
  v36 = *(v12 + 88);
  v37 = *(v12 + 96);
  *&v111 = v19;
  *(&v111 + 1) = v6;
  *&v112 = v25;
  v110[0] = v106;
  swift_unknownObjectRetain();
  specialized Rope.formIndex<A>(_:offsetBy:in:preferEnd:)(&v111, v110, 0, v34, v35, v36, v37);
  v38 = v19;
  v39 = v111;
  v40 = v112;
  v93 = *(&v111 + 1);
  v41 = specialized Rope.distance<A>(from:to:in:)(v38, v6, v25, v111, *(&v111 + 1), v112, v34, v35, v36, v37);
  result = swift_unknownObjectRelease();
  if (__OFADD__(v32, v106))
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v42 = v96 + v41;
  if (__OFADD__(v96, v41))
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v106 += v32;
  v43 = *(v12 + 72);
  v44 = *(v12 + 88);
  v45 = swift_unknownObjectRetain();
  result = specialized Rope._endPath.getter(v45);
  if (v43)
  {
    result = swift_unknownObjectRelease();
    v46 = v109;
    if (v42 == v44)
    {
LABEL_34:
      v47 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v46 = v109;
    if (!v42)
    {
      goto LABEL_34;
    }
  }

  v48 = *(v12 + 72);
  v49 = *(v12 + 80);
  v50 = *(v12 + 88);
  v51 = *(v12 + 96);
  swift_unknownObjectRetain();
  v47 = specialized Rope.subscript.getter(v39, v93, v40, v48, v49, v50, v51);
  swift_unknownObjectRelease();

LABEL_37:
  v20 = v107;
  v15 = v108;
  if (__OFADD__(v42, v47))
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if ((v42 + v47) < (v107 >> 11))
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v11 = v108 >> 11;
  if (v42 >= (v108 >> 11))
  {
    v95 = v42;
    v6 = *(v12 + 72);
    if (v6)
    {
      v52 = *(v12 + 88);
    }

    else
    {
      v52 = 0;
    }

    if (v52 < v11)
    {
      goto LABEL_136;
    }

    v53 = *(v12 + 80);
    v92 = *(v12 + 96);
    if (v6)
    {
      if (v11 < *(v12 + 88))
      {
        v16 = (v6 + 16);
        v54 = *(v6 + 16);
        if (*(v6 + 16))
        {
          v91 = *(v12 + 80);
          v55 = *(v6 + 18);
          result = swift_unknownObjectRetain_n();
          if (v55)
          {
            v17 = v55;
            v56 = v6;
            while (1)
            {
              v57 = *v16;
              if (*v16)
              {
                break;
              }

              v61 = v11;
LABEL_59:
              if (v61)
              {
                goto LABEL_128;
              }

              v11 = 0;
LABEL_50:
              v17 = (v57 << ((4 * v55 + 8) & 0x3C)) | ((-15 << ((4 * v55 + 8) & 0x3C)) - 1) & v17;
              v25 = *(v56 + 24 + 24 * v57);
              swift_unknownObjectRetain();
              result = swift_unknownObjectRelease();
              v16 = (v25 + 16);
              LOBYTE(v55) = *(v25 + 18);
              v56 = v25;
              if (!v55)
              {
                goto LABEL_79;
              }
            }

            v58 = 0;
            v59 = (v56 + 40);
            while (1)
            {
              v60 = *v59;
              v59 += 3;
              v61 = v11 - v60;
              if (__OFSUB__(v11, v60))
              {
                break;
              }

              if (__OFADD__(v61, 1))
              {
                goto LABEL_122;
              }

              if ((v61 + 1) < 1)
              {
                v57 = v58;
                goto LABEL_50;
              }

              ++v58;
              v11 = v61;
              if (v57 == v58)
              {
                goto LABEL_59;
              }
            }

LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          v17 = 0;
          v25 = v6;
LABEL_82:
          v15 = v108;
          v21 = 0;
          v70 = 24;
          v26 = v11;
          while (1)
          {
            v71 = *(v25 + v70);
            v72 = v26 - v71;
            if (__OFSUB__(v26, v71))
            {
              break;
            }

            if (__OFADD__(v72, 1))
            {
              goto LABEL_127;
            }

            if (v72 + 1 < 1)
            {
              goto LABEL_91;
            }

            ++v21;
            v70 += 24;
            v26 -= v71;
            if (v54 == v21)
            {
              v21 = v54;
              if (v72)
              {
                goto LABEL_118;
              }

              goto LABEL_88;
            }
          }

LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }
      }
    }

    v62 = swift_unknownObjectRetain();
    result = specialized Rope._endPath.getter(v62);
    v63 = 0;
    if (!v6)
    {
      v65 = 0;
LABEL_94:
      v42 = v95;
      if (__OFADD__(v65, v63))
      {
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      if (v65 + v63 < v106)
      {
LABEL_138:
        __break(1u);
        return result;
      }

      goto LABEL_96;
    }

    v64 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v92, result, 0, v6, v53);
LABEL_93:
    v65 = v64;
    result = swift_unknownObjectRelease();
    goto LABEL_94;
  }

LABEL_96:
  v74 = *(v12 + 40);
  v111 = *(v12 + 24);
  v112 = v74;
  v113 = *(v12 + 56);
  if (__OFSUB__(v42, v46))
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  swift_unknownObjectRetain();
  v75 = BigString.UTF8View.index(_:offsetBy:)();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  swift_unknownObjectRelease();
  if (v101 >= v75 >> 10)
  {
    v82 = v20;
  }

  else
  {
    v82 = v75;
  }

  v83 = v103;
  v84 = v104;
  if (v101 < v75 >> 10)
  {
    v83 = v81;
    v84 = v79;
  }

  v85 = v105;
  if (v101 < v75 >> 10)
  {
    v85 = v77;
  }

  if (v100 >= v82 >> 10)
  {
    v86 = v82;
  }

  else
  {
    v86 = v15;
  }

  if (v100 >= v82 >> 10)
  {
    v87 = v85;
  }

  else
  {
    v87 = v99;
  }

  if (v100 >= v82 >> 10)
  {
    v88 = v84;
  }

  else
  {
    v88 = v98;
  }

  if (v100 >= v82 >> 10)
  {
    v89 = v83;
  }

  else
  {
    v89 = v97;
  }

  v90 = *(v12 + 16);

  *v102 = v86;
  v102[1] = v87;
  v102[2] = v88;
  v102[3] = v89;
  v102[4] = v90;
  return result;
}

uint64_t specialized Rope._Node.distanceFromStart<A>(to:in:)(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4 + 16;
  v8 = *(a4 + 16);
  v9 = *(a4 + 18);
  v10 = 4 * v9;
  v11 = (a2 >> ((4 * v9 + 8) & 0x3C)) & 0xF;
  if (v11 > v8)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  if (v11 == v8)
  {
    v9 = -1;
    if ((a2 & (~(-1 << (v10 & 0x3C)) << 8)) == 0)
    {
      return a6;
    }

    __break(1u);
  }

  v12 = a4 + 24;
  if (v9)
  {
    v13 = result;
    v15 = specialized Rope._UnsafeHandle.distance<A>(from:to:in:)(0, v11, v7, a4 + 24);
    v16 = (v12 + 24 * v11);
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v20 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v13, a2, a3, v17, v18, v19);
    result = swift_unknownObjectRelease();
    if (!__OFADD__(v15, v20))
    {
      swift_unknownObjectRelease();
      return v15 + v20;
    }

    goto LABEL_13;
  }

  v21 = a4 + 24;

  return specialized Rope._UnsafeHandle.distance<A>(from:to:in:)(0, v11, v7, v21);
}

uint64_t specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1)
{
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  v20 = 0;
  v21 = 0xE000000000000000;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2;
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = outlined destroy of TermOfAddress?(&v17, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd))
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    outlined init with copy of AttributedString._AttributeValue(*(a1 + 56) + 72 * v12, &v19);
    v17 = v14;
    v18 = v15;

    MEMORY[0x1865CB0E0](v14, v15);
    MEMORY[0x1865CB0E0](2112800, 0xE300000000000000);
    lazy protocol witness table accessor for type AttributedString._AttributeValue and conformance AttributedString._AttributeValue();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v16);

    MEMORY[0x1865CB0E0](10, 0xE100000000000000);
    MEMORY[0x1865CB0E0](9, 0xE100000000000000);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      v17 = 2683;
      v18 = 0xE200000000000000;
      MEMORY[0x1865CB0E0](v20, v21);

      MEMORY[0x1865CB0E0](125, 0xE100000000000000);
      MEMORY[0x1865CB0E0](v17, v18);
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.AttributeMergePolicy and conformance AttributedString.AttributeMergePolicy()
{
  result = lazy protocol witness table cache variable for type AttributedString.AttributeMergePolicy and conformance AttributedString.AttributeMergePolicy;
  if (!lazy protocol witness table cache variable for type AttributedString.AttributeMergePolicy and conformance AttributedString.AttributeMergePolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.AttributeMergePolicy and conformance AttributedString.AttributeMergePolicy);
  }

  return result;
}

uint64_t dispatch thunk of AttributedStringProtocol.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 88))();
}

{
  return (*(a5 + 112))();
}

{
  return (*(a5 + 136))();
}

{
  return (*(a5 + 160))();
}

uint64_t dispatch thunk of AttributedStringProtocol.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 96))();
}

{
  return (*(a6 + 120))();
}

{
  return (*(a6 + 144))();
}

uint64_t dispatch thunk of AttributedStringProtocol.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 104))();
}

{
  return (*(a6 + 128))();
}

{
  return (*(a6 + 152))();
}

uint64_t AttributedSubstring.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - v3;
  v5 = *(v0 + 24);
  v11[0] = *(v0 + 8);
  v11[1] = v5;
  v6 = *(v0 + 56);
  v11[2] = *(v0 + 40);
  v11[3] = v6;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  RangeSet.init(_:)();
  v7 = AttributedString.Guts.description(in:)(v4);
  v9 = v8;
  (*(v2 + 8))(v4, v1, v7);
  return v9;
}

uint64_t AttributedSubstring.mergeAttributes(_:mergePolicy:)(uint64_t *a1, _BYTE *a2)
{
  v3 = v2;
  v4 = &v46;
  v5 = *a1;
  LOBYTE(v37) = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  v39 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v7 + 40);
    v47[0] = *(v7 + 24);
    v47[1] = v9;
    v47[2] = *(v7 + 56);
    v10 = *(v7 + 72);
    v11 = *(v7 + 80);
    v13 = *(v7 + 88);
    v12 = *(v7 + 96);
    type metadata accessor for AttributedString.Guts();
    i = swift_allocObject();
    v14 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(v47, v40);
    v15 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v15);
    if (v10)
    {
      v16 = v13 == 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = v16;
    if (v17 != v14)
    {
      goto LABEL_31;
    }

    if (one-time initialization token for _nextVersion != -1)
    {
      goto LABEL_32;
    }

    goto LABEL_11;
  }

  for (i = *v2; ; *v3 = i)
  {
    v46 = *(i + 24);
    v20 = *(i + 56);
    v4[1] = *(i + 40);
    v4[2] = v20;
    swift_unknownObjectRetain();
    v21 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v22 = *(i + 40);
    v43 = *(i + 24);
    v44 = v22;
    v45 = *(i + 56);
    swift_unknownObjectRetain();
    v23 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v24 = v21 >> 11;
    v3 = (v23 >> 11);
    v12 = v39;

    specialized AttributedString._InternalRunsSlice.updateEach(with:)(i, v24, v23 >> 11, v39, v37);

    result = specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v39);
    if ((result & 1) == 0)
    {
      break;
    }

    v4 = (v39 + 64);
    v26 = 1 << *(v39 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v10 = v27 & *(v39 + 64);
    v11 = (v26 + 63) >> 6;

    v13 = 0;
    v38 = MEMORY[0x1E69E7CC0];
    if (!v10)
    {
      goto LABEL_18;
    }

    do
    {
LABEL_16:
      while (1)
      {
        v28 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        outlined init with copy of AttributedString._AttributeValue(*(v39 + 56) + 72 * (v28 | (v13 << 6)), v40);
        v12 = v41;
        v29 = v42;
        outlined copy of AttributedString.AttributeRunBoundaries?(v41, v42);
        outlined destroy of AttributedString._AttributeValue(v40);
        if (v29 != 1)
        {
          break;
        }

        if (!v10)
        {
          goto LABEL_18;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
      }

      v32 = *(v38 + 2);
      v31 = *(v38 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v36 = *(v38 + 2);
        v37 = v32 + 1;
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v38);
        v32 = v36;
        v33 = v37;
        v38 = v35;
      }

      *(v38 + 2) = v33;
      v34 = &v38[16 * v32];
      *(v34 + 4) = v12;
      *(v34 + 5) = v29;
    }

    while (v10);
LABEL_18:
    while (1)
    {
      v30 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v30 >= v11)
      {

        AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v24, v3, 0, v38);
      }

      v10 = *(v4 + v30);
      ++v13;
      if (v10)
      {
        v13 = v30;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
LABEL_11:
    add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v19 = v4[4];
    *(i + 24) = v4[3];
    *(i + 16) = add_explicit;
    *(i + 40) = v19;
    *(i + 56) = v4[5];
    *(i + 72) = v10;
    *(i + 80) = v11;
    *(i + 88) = v13;
    *(i + 96) = v12;
    *(i + 104) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t AttributedSubstring.subscript.setter(uint64_t a1, void *a2, uint64_t a3)
{
  specialized AttributedSubstring.subscript.setter(a1, *(*a2 + *MEMORY[0x1E69E77B0] + 8), a3);

  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

__n128 AttributedSubstring.init()@<Q0>(uint64_t a1@<X8>)
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

__n128 AttributedSubstring.startIndex.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 AttributedSubstring.endIndex.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t AttributedSubstring.setAttributes(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = &v46;
  v4 = *a1;
  v39 = a1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v6 + 40);
    v47[0] = *(v6 + 24);
    v47[1] = v8;
    v47[2] = *(v6 + 56);
    v9 = *(v6 + 72);
    v10 = *(v6 + 80);
    v11 = *(v6 + 88);
    v12 = *(v6 + 96);
    type metadata accessor for AttributedString.Guts();
    v7 = swift_allocObject();
    v13 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(v47, v40);
    v14 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v14);
    if (v9)
    {
      v15 = v11 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = v15;
    if (v16 == v13)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_11:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v18 = *(v3 + 4);
        *(v7 + 24) = *(v3 + 3);
        *(v7 + 16) = add_explicit;
        *(v7 + 40) = v18;
        *(v7 + 56) = *(v3 + 5);
        *(v7 + 72) = v9;
        *(v7 + 80) = v10;
        *(v7 + 88) = v11;
        *(v7 + 96) = v12;
        *(v7 + 104) = MEMORY[0x1E69E7CC0];

        *v2 = v7;
        goto LABEL_12;
      }
    }

    else
    {
LABEL_29:
      __break(1u);
    }

    swift_once();
    goto LABEL_11;
  }

  v7 = *v1;
LABEL_12:
  v9 = *(v2 + 16);
  v46 = *(v7 + 24);
  v19 = *(v7 + 56);
  *(v3 + 1) = *(v7 + 40);
  *(v3 + 2) = v19;
  swift_unknownObjectRetain();
  v20 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v21 = *(v7 + 40);
  v43 = *(v7 + 24);
  v44 = v21;
  v45 = *(v7 + 56);
  swift_unknownObjectRetain();
  v22 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v23 = v20 >> 11;
  v24 = v22 >> 11;
  v38 = v23;
  specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v23, v22 >> 11, (v22 >> 11) - v23, v4, v39);
  v11 = v4 + 64;
  v25 = 1 << *(v4 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v2 = v26 & *(v4 + 64);
  v12 = (v25 + 63) >> 6;

  v10 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    goto LABEL_17;
  }

  do
  {
LABEL_15:
    while (1)
    {
      v27 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      outlined init with copy of AttributedString._AttributeValue(*(v4 + 56) + 72 * (v27 | (v10 << 6)), v40);
      v28 = v41;
      v9 = v42;
      outlined copy of AttributedString.AttributeRunBoundaries?(v41, v42);
      outlined destroy of AttributedString._AttributeValue(v40);
      if (v9 != 1)
      {
        break;
      }

      if (!v2)
      {
        goto LABEL_17;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    }

    v31 = *(v3 + 2);
    v30 = *(v3 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v39 = v31 + 1;
      v34 = v3;
      v35 = *(v3 + 2);
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v34);
      v32 = v39;
      v31 = v35;
      v3 = v36;
    }

    *(v3 + 2) = v32;
    v33 = &v3[16 * v31];
    *(v33 + 4) = v28;
    *(v33 + 5) = v9;
  }

  while (v2);
  while (1)
  {
LABEL_17:
    v29 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v29 >= v12)
    {
      break;
    }

    v2 = *(v11 + 8 * v29);
    ++v10;
    if (v2)
    {
      v10 = v29;
      goto LABEL_15;
    }
  }

  AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v38, v24, 0, v3);
}

uint64_t AttributedSubstring.replaceAttributes(_:with:)(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v40 = *a2;
  v41 = v3;
  v4 = v3;
  v5 = v40;
  if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v3, v40))
  {
    result = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(*(&v41 + 1), *(&v40 + 1));
    if (result)
    {
      return result;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = MEMORY[0x1E69E7CC0];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v39 = v2;
    v9 = *v2;
    v10 = *(*v2 + 24);
    v11 = *(*v2 + 56);
    v44 = *(*v2 + 40);
    v45 = v11;
    v43 = v10;
    v12 = v9[9];
    v13 = v9[10];
    v14 = v9[11];
    v15 = v9[12];
    type metadata accessor for AttributedString.Guts();
    v16 = swift_allocObject();
    v17 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v43, v42);
    v18 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v18);
    if (v12)
    {
      v19 = v14 == 0;
    }

    else
    {
      v19 = 1;
    }

    v20 = v19;
    if (v20 == v17)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_12:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v22 = v44;
        *(v16 + 24) = v43;
        *(v16 + 16) = add_explicit;
        *(v16 + 40) = v22;
        *(v16 + 56) = v45;
        *(v16 + 72) = v12;
        *(v16 + 80) = v13;
        *(v16 + 88) = v14;
        *(v16 + 96) = v15;
        *(v16 + 104) = v8;

        v2 = v39;
        *v39 = v16;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_12;
  }

LABEL_13:
  if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v4))
  {
    v23 = 1;
  }

  else
  {
    v23 = specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v5);
  }

  v42[0] = v8;
  v24 = v2;
  v25 = *v2;
  v26 = v24[1] >> 11;
  v27 = v24[5] >> 11;
  MEMORY[0x1EEE9AC00](v23);
  v38[2] = v4;
  v38[3] = v28;
  *&v30 = MEMORY[0x1EEE9AC00](v29);
  v35[1] = v30;
  v35[2] = v31;
  v36 = v32 & 1;
  v37 = v42;

  AttributedString._InternalRunsSlice.updateEach(when:with:)(partial apply for closure #1 in AttributedString.replaceAttributes(_:with:), v38, partial apply for closure #2 in AttributedSubstring.replaceAttributes(_:with:), v35, v25, v26, v27);

  v33 = *(v42[0] + 16);
  if (v33)
  {
    v34 = (v42[0] + 40);
    do
    {
      AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(*(v34 - 1), *v34, 0, 0);
      v34 += 2;
      --v33;
    }

    while (v33);
  }
}

uint64_t closure #2 in AttributedSubstring.replaceAttributes(_:with:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, unint64_t *a9)
{
  v10 = a4;
  v12 = a4 + 64;
  v13 = 1 << *(a4 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  v118 = v10;
  while (v15)
  {
LABEL_13:
    v27 = (*(v10 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v15)))));
    v28 = *v27;
    v9 = v27[1];
    v135 = 0;
    memset(v134, 0, sizeof(v134));
    outlined init with copy of AttributedString._AttributeValue?(v134, &v129);
    v121 = v28;
    if (*(&v130 + 1))
    {
      v127[2] = v131;
      v127[3] = v132;
      v128 = v133;
      v127[0] = v129;
      v127[1] = v130;
      outlined init with copy of AttributedString._AttributeValue(v127, &v122);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = a1;
      v31 = *a1;
      v119 = v9;
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v9);
      v34 = *(v31 + 16);
      v35 = (v32 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v37 = v32;
      if (*(v31 + 24) >= v36)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v38 = v31;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v59 = static _DictionaryStorage.copy(original:)();
          v38 = v59;
          if (*(v31 + 16))
          {
            v60 = (v59 + 64);
            v61 = (v31 + 64);
            v62 = ((1 << *(v38 + 32)) + 63) >> 6;
            if (v38 != v31 || v60 >= &v61[8 * v62])
            {
              memmove(v60, v61, 8 * v62);
            }

            v63 = 0;
            *(v38 + 16) = *(v31 + 16);
            v64 = 1 << *(v31 + 32);
            if (v64 < 64)
            {
              v65 = ~(-1 << v64);
            }

            else
            {
              v65 = -1;
            }

            v66 = v65 & *(v31 + 64);
            v67 = (v64 + 63) >> 6;
            v103 = v67;
            if (v66)
            {
              do
              {
                v68 = __clz(__rbit64(v66));
                v112 = (v66 - 1) & v66;
LABEL_42:
                v71 = v68 | (v63 << 6);
                v106 = 16 * v71;
                v72 = (*(v31 + 48) + 16 * v71);
                v108 = v72[1];
                v110 = *v72;
                v104 = 72 * v71;
                outlined init with copy of AttributedString._AttributeValue(*(v31 + 56) + 72 * v71, &v129);
                v73 = (*(v38 + 48) + v106);
                *v73 = v110;
                v73[1] = v108;
                v74 = *(v38 + 56) + v104;
                *v74 = v129;
                v75 = v130;
                v76 = v131;
                v77 = v132;
                *(v74 + 64) = v133;
                *(v74 + 32) = v76;
                *(v74 + 48) = v77;
                *(v74 + 16) = v75;

                v67 = v103;
                v66 = v112;
              }

              while (v112);
            }

            v69 = v63;
            while (1)
            {
              v63 = v69 + 1;
              if (__OFADD__(v69, 1))
              {
                break;
              }

              if (v63 >= v67)
              {
                goto LABEL_44;
              }

              v70 = *(v31 + 64 + 8 * v63);
              ++v69;
              if (v70)
              {
                v68 = __clz(__rbit64(v70));
                v112 = (v70 - 1) & v70;
                goto LABEL_42;
              }
            }

            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

LABEL_44:
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, isUniquelyReferenced_nonNull_native);
        v38 = v31;
        v39 = specialized __RawDictionaryStorage.find<A>(_:)(v121, v119);
        if ((v37 & 1) != (v40 & 1))
        {
          goto LABEL_74;
        }

        v33 = v39;
      }

      a1 = v30;
      v10 = v118;
      if (v37)
      {
        v18 = *(v38 + 56) + 72 * v33;
        v20 = *(v18 + 16);
        v19 = *(v18 + 32);
        v21 = *(v18 + 48);
        v133 = *(v18 + 64);
        v132 = v21;
        v129 = *v18;
        v130 = v20;
        v131 = v19;
        v22 = *(v38 + 56) + 72 * v33;
        v23 = v123;
        v24 = v124;
        v25 = v125;
        *(v22 + 64) = v126;
        *(v22 + 32) = v24;
        *(v22 + 48) = v25;
        *(v22 + 16) = v23;
        *v22 = v122;
        outlined destroy of AttributedString._AttributeValue(v127);
        v9 = v119;
      }

      else
      {
        *(v38 + 8 * (v33 >> 6) + 64) |= 1 << v33;
        v51 = (*(v38 + 48) + 16 * v33);
        v9 = v119;
        *v51 = v121;
        v51[1] = v119;
        v52 = *(v38 + 56) + 72 * v33;
        *v52 = v122;
        v53 = v123;
        v54 = v124;
        v55 = v125;
        *(v52 + 64) = v126;
        *(v52 + 32) = v54;
        *(v52 + 48) = v55;
        *(v52 + 16) = v53;
        v56 = *(v38 + 16);
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_70;
        }

        *(v38 + 16) = v58;

        outlined destroy of AttributedString._AttributeValue(v127);
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v133 = 0;
      }

      *v30 = v38;
    }

    else
    {

      outlined destroy of TermOfAddress?(&v129, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v41 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v9);
      if (v42)
      {
        v43 = v41;
        v120 = v9;
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v45 = *a1;
        if (v44)
        {
          v46 = *a1;
        }

        else
        {
          v105 = a1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v78 = static _DictionaryStorage.copy(original:)();
          v46 = v78;
          if (*(v45 + 16))
          {
            v79 = (v78 + 64);
            v80 = (v45 + 64);
            v81 = ((1 << *(v46 + 32)) + 63) >> 6;
            if (v46 != v45 || v79 >= &v80[8 * v81])
            {
              memmove(v79, v80, 8 * v81);
            }

            v82 = 0;
            *(v46 + 16) = *(v45 + 16);
            v83 = 1 << *(v45 + 32);
            if (v83 < 64)
            {
              v84 = ~(-1 << v83);
            }

            else
            {
              v84 = -1;
            }

            v85 = v84 & *(v45 + 64);
            v86 = (v83 + 63) >> 6;
            v107 = v86;
            if (v85)
            {
              do
              {
                v87 = __clz(__rbit64(v85));
                v113 = (v85 - 1) & v85;
LABEL_59:
                v90 = v87 | (v82 << 6);
                v109 = 16 * v90;
                v91 = (*(v45 + 48) + 16 * v90);
                v92 = v91[1];
                v111 = *v91;
                v93 = 72 * v90;
                outlined init with copy of AttributedString._AttributeValue(*(v45 + 56) + 72 * v90, &v129);
                v94 = (*(v46 + 48) + v109);
                *v94 = v111;
                v94[1] = v92;
                v95 = *(v46 + 56) + v93;
                *v95 = v129;
                v96 = v130;
                v97 = v131;
                v98 = v132;
                *(v95 + 64) = v133;
                *(v95 + 32) = v97;
                *(v95 + 48) = v98;
                *(v95 + 16) = v96;

                v86 = v107;
                v85 = v113;
              }

              while (v113);
            }

            v88 = v82;
            while (1)
            {
              v82 = v88 + 1;
              if (__OFADD__(v88, 1))
              {
                goto LABEL_73;
              }

              if (v82 >= v86)
              {
                break;
              }

              v89 = *(v45 + 64 + 8 * v82);
              ++v88;
              if (v89)
              {
                v87 = __clz(__rbit64(v89));
                v113 = (v89 - 1) & v89;
                goto LABEL_59;
              }
            }
          }

          a1 = v105;
          v10 = v118;
        }

        v47 = *(v46 + 56) + 72 * v43;
        v129 = *v47;
        v49 = *(v47 + 32);
        v48 = *(v47 + 48);
        v50 = *(v47 + 64);
        v130 = *(v47 + 16);
        v131 = v49;
        v133 = v50;
        v132 = v48;
        specialized _NativeDictionary._delete(at:)(v43, v46);
        *a1 = v46;
        v9 = v120;
      }

      else
      {
        v133 = 0;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
      }
    }

    v15 &= v15 - 1;
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(v121, v9, &v129, v134);

    outlined destroy of TermOfAddress?(v134, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v129, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  }

  while (1)
  {
    v26 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_69;
    }

    if (v26 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v26);
    ++v17;
    if (v15)
    {
      v17 = v26;
      goto LABEL_13;
    }
  }

  LOBYTE(v134[0]) = 0;
  result = specialized AttributedString._AttributeStorage.mergeIn(_:mergePolicy:)(a6, v134);
  if ((a8 & 1) == 0)
  {
    return result;
  }

  v9 = a9;
  v15 = *a9;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a9 = v15;
  if ((result & 1) == 0)
  {
LABEL_71:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
    v15 = result;
    *v9 = result;
  }

  v101 = *(v15 + 16);
  v100 = *(v15 + 24);
  if (v101 >= v100 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1, v15);
    v15 = result;
    *v9 = result;
  }

  *(v15 + 16) = v101 + 1;
  v102 = v15 + 16 * v101;
  *(v102 + 32) = a2;
  *(v102 + 40) = a3;
  return result;
}

uint64_t AttributedSubstring.runs.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v144 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v145 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v138 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v139 = &v123 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v123 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  *&v150 = &v123 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v143 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v123 - v17;
  v19 = *v2;
  v20 = *(v2 + 3);
  v155 = *(v2 + 1);
  v156 = v20;
  v21 = *(v2 + 7);
  v157 = *(v2 + 5);
  v158 = v21;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  RangeSet.init(_:)();
  *(&v150 + 1) = v19;
  *v144 = v19;
  v146 = v15;
  v22 = v150;
  RangeSet.init()();
  v147 = v13;
  v140 = v18;
  RangeSet.ranges.getter();
  v23 = v145;
  (*(v145 + 16))(v22, v9, v3);
  v24 = *(v11 + 44);
  v25 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Collection.startIndex.getter();
  v141 = *(v23 + 8);
  v142 = v9;
  v145 = v23 + 8;
  v141(v9, v3);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v22 + v24) != v155)
  {
    v154 = v3;
    v148 = v24;
    v149 = v25;
    do
    {
      v41 = dispatch thunk of Collection.subscript.read();
      v43 = v42[5];
      v44 = v42[7];
      v152 = v42[6];
      v153 = v43;
      v151 = v44;
      v41(&v155, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v45 = *(&v150 + 1);
      v46 = *(*(&v150 + 1) + 40);
      v166 = *(*(&v150 + 1) + 24);
      v167 = v46;
      v168 = *(*(&v150 + 1) + 56);
      swift_unknownObjectRetain();
      v47 = BigString.UnicodeScalarView.index(roundingDown:)();
      v49 = v48;
      v51 = v50;
      v53 = v52;
      swift_unknownObjectRelease();
      v54 = *(v45 + 40);
      v163 = *(v45 + 24);
      v164 = v54;
      v165 = *(v45 + 56);
      swift_unknownObjectRetain();
      v55 = BigString.UnicodeScalarView.index(roundingDown:)();
      v57 = v56;
      v59 = v58;
      v61 = v60;
      swift_unknownObjectRelease();
      *&v155 = v47;
      *(&v155 + 1) = v49;
      *&v156 = v51;
      *(&v156 + 1) = v53;
      v3 = v154;
      *&v157 = v55;
      *(&v157 + 1) = v57;
      *&v158 = v59;
      *(&v158 + 1) = v61;
      if ((v55 ^ v47) >= 0x400)
      {
        v62 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v62(&v160, 0);
      }

      v22 = v150;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v22 + v148) != v155);
  }

  outlined destroy of TermOfAddress?(v22, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v26 = type metadata accessor for AttributedString.Runs();
  v27 = *(v26 + 24);
  v28 = v144;
  (*(v143 + 16))(v144 + v27, v146, v147);
  v29 = v142;
  RangeSet.ranges.getter();
  v30 = RangeSet.Ranges.count.getter();
  v31 = v29;
  v32 = v141;
  v141(v31, v3);
  v33 = *(v26 + 28);
  LODWORD(v148) = v30 > 1;
  *(v28 + v33) = v148;
  v34 = v139;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v160 == v155 || (v35 = dispatch thunk of Collection.subscript.read(), v37 = *v36, v136 = v36[1], v137 = v37, v38 = v36[2], v134 = v36[3], v135 = v38, v35(&v155, 0), v32(v34, v3), v34 = v138, RangeSet.ranges.getter(), (dispatch thunk of Collection.isEmpty.getter() & 1) != 0))
  {
    v32(v34, v3);
    v39 = *(&v150 + 1);
    v40 = *(*(&v150 + 1) + 72);
    if (v40)
    {
      v152 = *(v40 + 18);
    }

    else
    {
      v152 = 0;
    }

    v153 = *(*(&v150 + 1) + 96);
    v63 = *(*(&v150 + 1) + 40);
    v155 = *(*(&v150 + 1) + 24);
    v156 = v63;
    v157 = *(*(&v150 + 1) + 56);
    v151 = BigString.startIndex.getter();
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v70 = *(v39 + 72);
    v71 = *(v39 + 96);
    if (v70)
    {
      *(&v150 + 1) = *(v70 + 18);
      v72 = *(v143 + 8);
      swift_unknownObjectRetain();
      *&v150 = v71;
      v73 = v69;
      v74 = v67;
      v75 = v65;
      v76 = v147;
      v72(v140, v147);
      v77 = v76;
      v65 = v75;
      v67 = v74;
      v69 = v73;
      v71 = v150;
      v72(v146, v77);
      swift_unknownObjectRelease();
    }

    else
    {
      v78 = *(v143 + 8);
      v79 = v147;
      v78(v140, v147);
      v78(v146, v79);
      *(&v150 + 1) = 0;
    }

    v160 = *(v39 + 24);
    v80 = *(v39 + 56);
    v161 = *(v39 + 40);
    v162 = v80;
    result = BigString.startIndex.getter();
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = -1;
    v92 = v151;
    v91 = v152;
    v93 = v151;
    v94 = v65;
    v95 = v67;
    v96 = v69;
    v97 = result;
    v98 = v82;
    v99 = v83;
    v100 = v84;
    v101 = -1;
    v102 = v153;
  }

  else
  {
    v129 = v27;
    v103 = v32;
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v104 = dispatch thunk of Collection.subscript.read();
    v97 = v105[4];
    v106 = v105[5];
    v107 = v105[6];
    v108 = v105[7];
    v104(&v155, 0);
    v103(v34, v3);
    v109 = *(&v150 + 1);
    AttributedString.Guts.findRun(at:)(v137, v134, &v155);
    v152 = *(&v155 + 1);
    v153 = v155;
    v130 = *(&v156 + 1);
    v131 = v156;
    v151 = *(&v157 + 1);
    v149 = *(&v158 + 1);
    v138 = v158;
    v139 = v159;
    v160 = *(v109 + 24);
    v110 = *(v109 + 56);
    v161 = *(v109 + 40);
    v162 = v110;
    v111 = BigString.endIndex.getter();
    v132 = v108;
    v133 = v107;
    if ((v111 ^ v97) > 0x3FF)
    {
      AttributedString.Guts.findRun(at:)(v97, v108, &v155);
      v150 = v155;
      v89 = v156;
      v127 = v106;
      v128 = *(&v156 + 1);
      v125 = v158;
      v126 = *(&v157 + 1);
      v123 = v159;
      v124 = *(&v158 + 1);
      v119 = v142;
      v120 = v147;
      RangeSet.ranges.getter();
      v101 = RangeSet.Ranges.count.getter();
      v121 = *(v143 + 8);
      v121(v140, v120);
      v122 = v119;
      v71 = v150;
      v141(v122, v3);
      v121(v146, v120);
      v98 = v127;
      v88 = v128;
      v84 = v123;
      v83 = v124;
      v28 = v144;
      v82 = v125;
      result = v126;
      v90 = 0;
      v87 = v148;
      v91 = v152;
      v102 = v153;
      v94 = v136;
      v93 = v137;
      v96 = v134;
      v95 = v135;
      v92 = v151;
      v65 = v138;
      v69 = v139;
      v67 = v149;
      v100 = v132;
      v99 = v133;
      v85 = v130;
      v86 = v131;
    }

    else
    {
      v112 = *(v109 + 72);
      if (v112)
      {
        v113 = *(v109 + 80);
      }

      else
      {
        v113 = 0;
      }

      v128 = v113;
      v114 = *(v109 + 96);
      v115 = swift_unknownObjectRetain();
      *&v150 = v114;
      *(&v150 + 1) = specialized Rope._endPath.getter(v115);
      if (v112)
      {
        swift_unknownObjectRelease();
      }

      v28 = v144;
      v116 = v142;
      v117 = v147;
      RangeSet.ranges.getter();
      v101 = RangeSet.Ranges.count.getter();
      v118 = *(v143 + 8);
      v118(v140, v117);
      v141(v116, v3);
      v118(v146, v117);
      v90 = 0;
      v89 = 0;
      result = v97;
      v98 = v106;
      v82 = v106;
      v100 = v132;
      v99 = v133;
      v83 = v133;
      v84 = v132;
      v87 = v148;
      v91 = v152;
      v102 = v153;
      v94 = v136;
      v93 = v137;
      v96 = v134;
      v95 = v135;
      v92 = v151;
      v65 = v138;
      v69 = v139;
      v67 = v149;
      v71 = v150;
      v85 = v130;
      v86 = v131;
      v88 = v128;
    }
  }

  v28[1] = v85;
  v28[2] = v102;
  v28[3] = v91;
  v28[4] = v86;
  v28[5] = v92;
  v28[6] = v65;
  v28[7] = v67;
  v28[8] = v69;
  v28[9] = v93;
  v28[10] = v94;
  v28[11] = v95;
  v28[12] = v96;
  v28[13] = v90;
  *(v28 + 112) = 0;
  *(v28 + 113) = v87;
  v28[15] = v88;
  v28[16] = v71;
  v28[17] = *(&v150 + 1);
  v28[18] = v89;
  v28[19] = result;
  v28[20] = v82;
  v28[21] = v83;
  v28[22] = v84;
  v28[23] = v97;
  v28[24] = v98;
  v28[25] = v99;
  v28[26] = v100;
  v28[27] = v101;
  *(v28 + 224) = 0;
  *(v28 + 225) = v87;
  return result;
}

double AttributedSubstring.characters.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 3);
  v17 = *(v1 + 1);
  v18 = v4;
  v5 = *(v1 + 7);
  v19 = *(v1 + 5);
  v20 = v5;
  *(a1 + 72) = 0;
  *a1 = v3;
  v6 = *(v3 + 24);
  v7 = *(v3 + 56);
  v21[1] = *(v3 + 40);
  v21[2] = v7;
  v21[0] = v6;
  swift_retain_n();
  outlined init with copy of BigString(v21, v12);
  BigString.subscript.getter();

  outlined destroy of BigString(v21);
  outlined destroy of BigSubstring(v12);
  result = *&v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  *(a1 + 8) = v13;
  *(a1 + 24) = v9;
  *(a1 + 40) = v10;
  *(a1 + 56) = v11;
  return result;
}

double AttributedSubstring.unicodeScalars.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 3);
  v16 = *(v1 + 1);
  v17 = v4;
  v5 = *(v1 + 7);
  v18 = *(v1 + 5);
  v19 = v5;
  *(a1 + 72) = 0;
  *a1 = v3;
  v6 = *(v3 + 40);
  v20 = *(v3 + 24);
  v21 = v6;
  v22 = *(v3 + 56);
  swift_unknownObjectRetain();
  swift_retain_n();
  BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();

  outlined destroy of BigSubstring.UnicodeScalarView(v11);
  result = *&v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;
  *(a1 + 8) = v12;
  *(a1 + 24) = v8;
  *(a1 + 40) = v9;
  *(a1 + 56) = v10;
  return result;
}

double AttributedSubstring.subscript.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 3);
  v27 = *(v1 + 1);
  v28 = v4;
  v5 = *(v1 + 7);
  v29 = *(v1 + 5);
  v30 = v5;
  v6 = *(v3 + 24);
  v7 = *(v3 + 56);
  v31[1] = *(v3 + 40);
  v31[2] = v7;
  v31[0] = v6;

  outlined init with copy of BigString(v31, &v19);
  BigString.subscript.getter();
  outlined destroy of BigString(v31);
  outlined destroy of BigSubstring(v14);
  *v13 = v3;
  *&v13[8] = v15;
  *&v13[24] = v16;
  *&v13[40] = v17;
  *&v13[56] = v18;
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v32[2] = *&v13[32];
  v32[3] = *&v13[48];
  v32[4] = *&v13[64];
  v32[0] = *v13;
  v32[1] = *&v13[16];
  outlined destroy of AttributedString.CharacterView(v32);
  *(a1 + 72) = 0;
  *a1 = v3;
  v8 = *(v3 + 40);
  v24 = *(v3 + 24);
  v25 = v8;
  v26 = *(v3 + 56);
  swift_unknownObjectRetain();
  swift_retain_n();
  BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();

  outlined destroy of BigSubstring.UnicodeScalarView(&v19);
  result = *&v20;
  v10 = v21;
  v11 = v22;
  v12 = v23;
  *(a1 + 8) = v20;
  *(a1 + 24) = v10;
  *(a1 + 40) = v11;
  *(a1 + 56) = v12;
  return result;
}

Swift::Int AttributedSubstring.hashValue.getter()
{
  v1 = v0[3];
  v7 = v0[2];
  v8 = v1;
  v9 = v0[4];
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  Hasher.init(_seed:)();
  specialized AttributedStringProtocol.hash(into:)(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for AttributedStringProtocol.runs.getter in conformance AttributedSubstring@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = *v1;
  v7 = *(v1 + 24);
  v10[0] = *(v1 + 8);
  v10[1] = v7;
  v8 = *(v1 + 56);
  v10[2] = *(v1 + 40);
  v10[3] = v8;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  RangeSet.init(_:)();
  return AttributedString.Runs.init(_:in:)(v6, v5, a1);
}

double protocol witness for AttributedStringProtocol.characters.getter in conformance AttributedSubstring@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 3);
  v17 = *(v1 + 1);
  v18 = v4;
  v5 = *(v1 + 7);
  v19 = *(v1 + 5);
  v20 = v5;
  *(a1 + 72) = 0;
  *a1 = v3;
  v6 = *(v3 + 24);
  v7 = *(v3 + 56);
  v21[1] = *(v3 + 40);
  v21[2] = v7;
  v21[0] = v6;
  swift_retain_n();
  outlined init with copy of BigString(v21, v12);
  BigString.subscript.getter();

  outlined destroy of BigString(v21);
  outlined destroy of BigSubstring(v12);
  result = *&v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  *(a1 + 8) = v13;
  *(a1 + 24) = v9;
  *(a1 + 40) = v10;
  *(a1 + 56) = v11;
  return result;
}

double protocol witness for AttributedStringProtocol.unicodeScalars.getter in conformance AttributedSubstring@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 3);
  v16 = *(v1 + 1);
  v17 = v4;
  v5 = *(v1 + 7);
  v18 = *(v1 + 5);
  v19 = v5;
  *(a1 + 72) = 0;
  *a1 = v3;
  v6 = *(v3 + 40);
  v20 = *(v3 + 24);
  v21 = v6;
  v22 = *(v3 + 56);
  swift_unknownObjectRetain();
  swift_retain_n();
  BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();

  outlined destroy of BigSubstring.UnicodeScalarView(v11);
  result = *&v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;
  *(a1 + 8) = v12;
  *(a1 + 24) = v8;
  *(a1 + 40) = v9;
  *(a1 + 56) = v10;
  return result;
}

uint64_t AttributedSubstring.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-v10];
  v12 = *(v3 + 24);
  v21[0] = *(v3 + 8);
  v21[1] = v12;
  v13 = *(v3 + 56);
  v21[2] = *(v3 + 40);
  v21[3] = v13;
  AttributedString.Guts.getUniformValue<A>(in:key:)(v21, a1, a2, v19);
  if (v20)
  {
    outlined init with copy of Hashable & Sendable(v19, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
    v14 = swift_dynamicCast();
    v15 = *(*(AssociatedTypeWitness - 8) + 56);
    if (v14)
    {
      v16 = *(AssociatedTypeWitness - 8);
      v15(v11, 0, 1, AssociatedTypeWitness);
      (*(v16 + 32))(a3, v11, AssociatedTypeWitness);
      outlined destroy of AttributedString._AttributeValue(v19);
      return v15(a3, 0, 1, AssociatedTypeWitness);
    }

    else
    {
      v15(v11, 1, 1, AssociatedTypeWitness);
      result = (*(v9 + 8))(v11, v8);
      __break(1u);
    }
  }

  else
  {
    outlined destroy of TermOfAddress?(v19, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    return (*(*(AssociatedTypeWitness - 8) + 56))(a3, 1, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t (*protocol witness for AttributedStringProtocol.subscript.modify in conformance AttributedSubstring(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
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
  v8[4] = AttributedSubstring.subscript.modify(v8, a2, a3, a4);
  return protocol witness for AttributedStringProtocol.subscript.modify in conformance AttributedSubstring;
}

void (*AttributedSubstring.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v11[4] = v12;
  v13 = *(v12 - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  AttributedSubstring.subscript.getter(a3, a4, v15);
  return AttributedSubstring.subscript.modify;
}

void AttributedSubstring.subscript.modify(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = v2[2];
    v8 = v2[1];
    (*(v6 + 16))((*a1)[6], v4, v5);
    AttributedSubstring.subscript.setter(v3, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    AttributedSubstring.subscript.setter((*a1)[7], a2, v2[1], v2[2]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t protocol witness for AttributedStringProtocol.subscript.setter in conformance AttributedSubstring(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized AttributedSubstring.subscript.setter(a1, a3, a4);

  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

uint64_t (*protocol witness for AttributedStringProtocol.subscript.modify in conformance AttributedSubstring(void *a1, void *a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = AttributedSubstring.subscript.modify(v7, a2, a4);
  return protocol witness for AttributedStringProtocol.subscript.modify in conformance AttributedString;
}

void (*AttributedSubstring.subscript.modify(void *a1, void *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a3;
  v8[1] = v3;
  v10 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v8[2] = v10;
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v9[3] = v11;
  v12 = *(v11 - 8);
  v9[4] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v9[6] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v12 + 64));
    v9[6] = malloc(v13);
    v14 = malloc(v13);
  }

  v9[7] = v14;
  AttributedSubstring.subscript.getter(v10, a3, v14);
  return AttributedSubstring.subscript.modify;
}

void AttributedSubstring.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *((*a1)[4] + 16);
  v3((*a1)[6], v2[7], v2[3]);
  v5 = v2[6];
  v15 = v2[7];
  v7 = v2[4];
  v6 = v2[5];
  v9 = v2[2];
  v8 = v2[3];
  v10 = *v2;
  if (a2)
  {
    v3(v2[5], v5, v2[3]);
    AttributedSubstring.subscript.setter(v6, v11, v9, v10);
    v12 = *(v7 + 8);
    v12(v5, v8);
    v13 = v15;
    v12(v15, v8);
  }

  else
  {
    AttributedSubstring.subscript.setter(v5, v4, v2[2], *v2);
    v13 = v15;
    (*(v7 + 8))(v15, v8);
  }

  free(v13);
  free(v5);
  free(v6);

  free(v2);
}

uint64_t AttributedSubstring.subscript.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v7[0] = *(v1 + 8);
  v7[1] = v3;
  v4 = *(v1 + 56);
  v7[2] = *(v1 + 40);
  v7[3] = v4;
  result = AttributedString.Guts.getUniformValues(in:)(v7);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t AttributedSubstring.subscript.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[3];
  v41 = a1[2];
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_11;
  }

  v5 = *v1;
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 56);
  v53 = *(*v1 + 40);
  v54 = v7;
  v52 = v6;
  v8 = v5[9];
  v9 = v5[10];
  v11 = v5[11];
  v10 = v5[12];
  type metadata accessor for AttributedString.Guts();
  v12 = swift_allocObject();
  v13 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v52, v43);
  v14 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v14);
  if (v8)
  {
    v15 = v11 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15;
  if (v16 != v13)
  {
    goto LABEL_34;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v18 = v53;
    *(v12 + 24) = v52;
    *(v12 + 16) = add_explicit;
    *(v12 + 40) = v18;
    *(v12 + 56) = v54;
    *(v12 + 72) = v8;
    *(v12 + 80) = v9;
    *(v12 + 88) = v11;
    *(v12 + 96) = v10;
    *(v12 + 104) = MEMORY[0x1E69E7CC0];

    *v2 = v12;
LABEL_11:
    v42 = v3;

    if (v4)
    {
      v19 = *v2;
      v20 = *(*v2 + 40);
      v43[0] = *(*v2 + 24);
      v43[1] = v20;
      v44 = *(v19 + 56);
      swift_unknownObjectRetain();
      v21 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();
      v22 = *(v19 + 40);
      v49 = *(v19 + 24);
      v50 = v22;
      v51 = *(v19 + 56);
      swift_unknownObjectRetain();
      v23 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();
      AttributedString.Guts.removeAttributeValue(forKey:in:adjustConstrainedAttributes:)(v41, v4, v21 >> 11, v23 >> 11, 1);
      goto LABEL_32;
    }

    v4 = *v2;
    v41 = v2[5];
    v24 = *(*v2 + 40);
    v49 = *(*v2 + 24);
    v50 = v24;
    v51 = *(v4 + 56);
    swift_unknownObjectRetain();

    v25 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v26 = *(v4 + 40);
    v46 = *(v4 + 24);
    v47 = v26;
    v48 = *(v4 + 56);
    swift_unknownObjectRetain();
    v10 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v27 = v25 >> 11;
    v2 = (v10 >> 11);

    specialized AttributedString._InternalRunsSlice.updateEach(with:)(v4, v25 >> 11, v10 >> 11, v3, 0);

    if ((specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v3) & 1) == 0)
    {
      break;
    }

    v12 = v3;
    v3 += 64;
    v28 = 1 << *(v42 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v11 = v29 & *(v42 + 64);
    v8 = (v28 + 63) >> 6;

    v9 = 0;
    v30 = MEMORY[0x1E69E7CC0];
    if (!v11)
    {
      goto LABEL_19;
    }

    do
    {
LABEL_17:
      while (1)
      {
        v31 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        outlined init with copy of AttributedString._AttributeValue(*(v42 + 56) + 72 * (v31 | (v9 << 6)), v43);
        v12 = *(&v44 + 1);
        v10 = v45;
        outlined copy of AttributedString.AttributeRunBoundaries?(*(&v44 + 1), v45);
        outlined destroy of AttributedString._AttributeValue(v43);
        if (v10 != 1)
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_19;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
      }

      v34 = *(v30 + 2);
      v33 = *(v30 + 3);
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v41 = v34 + 1;
        v37 = v30;
        v38 = *(v30 + 2);
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v37);
        v35 = v41;
        v34 = v38;
        v30 = v39;
      }

      *(v30 + 2) = v35;
      v36 = &v30[16 * v34];
      *(v36 + 4) = v12;
      *(v36 + 5) = v10;
    }

    while (v11);
LABEL_19:
    while (1)
    {
      v32 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v32 >= v8)
      {

        AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v27, v2, 0, v30);

        goto LABEL_31;
      }

      v11 = *(v3 + 8 * v32);
      ++v9;
      if (v11)
      {
        v9 = v32;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_31:

LABEL_32:
}

uint64_t (*protocol witness for AttributedStringProtocol.subscript.modify in conformance AttributedSubstring(uint64_t **a1))()
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
  v2[4] = AttributedSubstring.subscript.modify(v2);
  return protocol witness for AttributedStringProtocol.subscript.modify in conformance AttributedSubstring;
}

void (*AttributedSubstring.subscript.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v4 + 536) = v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = *v1;
    v7 = *(*v1 + 24);
    v8 = *(*v1 + 40);
    *(v5 + 104) = *(*v1 + 56);
    *(v5 + 88) = v8;
    *(v5 + 72) = v7;
    v9 = v6[9];
    v10 = v6[10];
    v11 = v6[11];
    v12 = v6[12];
    type metadata accessor for AttributedString.Guts();
    v13 = swift_allocObject();
    v14 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(v5 + 72, v5);
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
LABEL_13:
        *(v13 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v18 = *(v5 + 72);
        v19 = *(v5 + 88);
        *(v13 + 56) = *(v5 + 104);
        *(v13 + 40) = v19;
        *(v13 + 24) = v18;
        *(v13 + 72) = v9;
        *(v13 + 80) = v10;
        *(v13 + 88) = v11;
        *(v13 + 96) = v12;
        *(v13 + 104) = MEMORY[0x1E69E7CC0];

        *v2 = v13;
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_13;
  }

LABEL_14:
  *(v5 + 520) = 0u;
  v20 = MEMORY[0x1E69E7CD0];
  *(v5 + 504) = MEMORY[0x1E69E7CC8];
  *(v5 + 512) = v20;
  return AttributedSubstring.subscript.modify;
}

void AttributedSubstring.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 264);
  v4 = *(*a1 + 536);
  v5 = *(*a1 + 528);
  if ((a2 & 1) == 0)
  {
    if (v5)
    {
      v68 = *(v2 + 520);
      v12 = *v4;
      v13 = *(*v4 + 40);
      v14 = *(*v4 + 56);
      *(*a1 + 408) = *(*v4 + 24);
      v3[10] = v13;
      v3[11] = v14;
      swift_unknownObjectRetain();

      v9 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();
      v15 = *(v12 + 40);
      v16 = *(v12 + 56);
      v3[12] = *(v12 + 24);
      v3[13] = v15;
      v3[14] = v16;
      swift_unknownObjectRetain();
      goto LABEL_6;
    }

    v41 = *v4;
    v70 = *(v2 + 504);
    v42 = *(*v4 + 40);
    v43 = *(*v4 + 56);
    *(*a1 + 312) = *(*v4 + 24);
    v3[4] = v42;
    v3[5] = v43;
    swift_unknownObjectRetain();

    v44 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v45 = *(v41 + 40);
    v46 = *(v41 + 56);
    v3[6] = *(v41 + 24);
    v3[7] = v45;
    v3[8] = v46;
    swift_unknownObjectRetain();
    v47 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v48 = v44 >> 11;
    v49 = v47 >> 11;

    specialized AttributedString._InternalRunsSlice.updateEach(with:)(v41, v44 >> 11, v49, v70, 0);

    if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v70))
    {
      v50 = -1;
      v51 = -1 << *(v70 + 32);
      if (-v51 < 64)
      {
        v50 = ~(-1 << -v51);
      }

      v52 = v50 & *(v70 + 64);
      v53 = (63 - v51) >> 6;

      v54 = 0;
      v74 = MEMORY[0x1E69E7CC0];
      if (!v52)
      {
        goto LABEL_29;
      }

      do
      {
LABEL_27:
        while (1)
        {
          v55 = __clz(__rbit64(v52));
          v52 &= v52 - 1;
          outlined init with copy of AttributedString._AttributeValue(*(v70 + 56) + 72 * (v55 | (v54 << 6)), v2);
          v56 = *(v2 + 40);
          v57 = *(v2 + 48);
          outlined copy of AttributedString.AttributeRunBoundaries?(v56, v57);
          outlined destroy of AttributedString._AttributeValue(v2);
          if (v57 != 1)
          {
            break;
          }

          if (!v52)
          {
            goto LABEL_29;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v74 + 2) + 1, 1, v74);
        }

        v60 = *(v74 + 2);
        v59 = *(v74 + 3);
        v61 = v60 + 1;
        if (v60 >= v59 >> 1)
        {
          v72 = v60 + 1;
          v67 = *(v74 + 2);
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v74);
          v61 = v72;
          v60 = v67;
          v74 = v63;
        }

        *(v74 + 2) = v61;
        v62 = &v74[16 * v60];
        *(v62 + 4) = v56;
        *(v62 + 5) = v57;
      }

      while (v52);
LABEL_29:
      while (1)
      {
        v58 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_47;
        }

        if (v58 >= v53)
        {

          v64 = v48;
          v65 = v49;
          v66 = v74;
LABEL_42:
          AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v64, v65, 0, v66);

          goto LABEL_43;
        }

        v52 = *(v70 + 64 + 8 * v58);
        ++v54;
        if (v52)
        {
          v54 = v58;
          goto LABEL_27;
        }
      }
    }

LABEL_39:

    goto LABEL_43;
  }

  if (!v5)
  {
    v18 = *v4;
    v19 = *(v2 + 504);
    v20 = *(*v4 + 40);
    v21 = *(*v4 + 56);
    *(v2 + 120) = *(*v4 + 24);
    *(v2 + 136) = v20;
    *(v2 + 152) = v21;
    swift_unknownObjectRetain();

    v22 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v23 = *(v18 + 40);
    v24 = *(v18 + 56);
    *(v2 + 168) = *(v18 + 24);
    *(v2 + 184) = v23;
    *(v2 + 200) = v24;
    swift_unknownObjectRetain();
    v25 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v26 = v25 >> 11;

    v75 = v22 >> 11;
    specialized AttributedString._InternalRunsSlice.updateEach(with:)(v18, v22 >> 11, v26, v19, 0);

    if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v19))
    {
      v27 = -1;
      v28 = -1 << *(v19 + 32);
      if (-v28 < 64)
      {
        v27 = ~(-1 << -v28);
      }

      v29 = v27 & *(v19 + 64);
      v30 = (63 - v28) >> 6;

      v31 = 0;
      v73 = MEMORY[0x1E69E7CC0];
      if (!v29)
      {
        goto LABEL_13;
      }

      do
      {
LABEL_11:
        while (1)
        {
          v32 = __clz(__rbit64(v29));
          v29 &= v29 - 1;
          outlined init with copy of AttributedString._AttributeValue(*(v19 + 56) + 72 * (v32 | (v31 << 6)), v2);
          v33 = *(v2 + 40);
          v34 = *(v2 + 48);
          outlined copy of AttributedString.AttributeRunBoundaries?(v33, v34);
          outlined destroy of AttributedString._AttributeValue(v2);
          if (v34 != 1)
          {
            break;
          }

          if (!v29)
          {
            goto LABEL_13;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 2) + 1, 1, v73);
        }

        v37 = *(v73 + 2);
        v36 = *(v73 + 3);
        v38 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v69 = *(v73 + 2);
          v71 = v37 + 1;
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v73);
          v37 = v69;
          v38 = v71;
          v73 = v40;
        }

        *(v73 + 2) = v38;
        v39 = &v73[16 * v37];
        *(v39 + 4) = v33;
        *(v39 + 5) = v34;
      }

      while (v29);
LABEL_13:
      while (1)
      {
        v35 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v35 >= v30)
        {

          v64 = v75;
          v65 = v26;
          v66 = v73;
          goto LABEL_42;
        }

        v29 = *(v19 + 64 + 8 * v35);
        ++v31;
        if (v29)
        {
          v31 = v35;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
      return;
    }

    goto LABEL_39;
  }

  v68 = *(v2 + 520);
  v6 = *v4;
  v7 = *(*v4 + 40);
  v8 = *(*v4 + 56);
  *(v2 + 216) = *(*v4 + 24);
  *(v2 + 232) = v7;
  *(v2 + 248) = v8;
  swift_unknownObjectRetain();

  v9 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v10 = *(v6 + 40);
  v11 = *(v6 + 56);
  *v3 = *(v6 + 24);
  v3[1] = v10;
  v3[2] = v11;
  swift_unknownObjectRetain();
LABEL_6:
  v17 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  AttributedString.Guts.removeAttributeValue(forKey:in:adjustConstrainedAttributes:)(v68, v5, v9 >> 11, v17 >> 11, 1);
LABEL_43:

  free(v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttributedSubstring()
{
  v1 = v0[3];
  v7 = v0[2];
  v8 = v1;
  v9 = v0[4];
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  Hasher.init(_seed:)();
  specialized AttributedStringProtocol.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributedSubstring()
{
  v1 = v0[3];
  v7 = v0[2];
  v8 = v1;
  v9 = v0[4];
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  Hasher.init(_seed:)();
  specialized AttributedStringProtocol.hash(into:)(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AttributedSubstring()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - v3;
  v5 = *(v0 + 24);
  v11[0] = *(v0 + 8);
  v11[1] = v5;
  v6 = *(v0 + 56);
  v11[2] = *(v0 + 40);
  v11[3] = v6;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  RangeSet.init(_:)();
  v7 = AttributedString.Guts.description(in:)(v4);
  v9 = v8;
  (*(v2 + 8))(v4, v1, v7);
  return v9;
}

uint64_t key path setter for AttributedSubstring.subscript<A>(dynamicMember:) : <A>AttributedSubstringA(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];

  v5 = AttributedSubstring.subscript.modify(v8);
  *v6 = v1;
  v6[1] = v2;
  v6[2] = v4;
  v6[3] = v3;

  return (v5)(v8, 0);
}

uint64_t specialized static AttributedSubstring.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v524 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v524 - v8;
  v579 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v10 = *(v579 - 8);
  MEMORY[0x1EEE9AC00](v579);
  v12 = &v524 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v524 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v554 = &v524 - v17;
  MEMORY[0x1EEE9AC00](v18);
  *&v556 = &v524 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v553 = &v524 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v555 = &v524 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v566 = &v524 - v25;
  v559 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v559);
  v571 = &v524 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v570 = &v524 - v28;
  v574 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v564 = *(v574 - 8);
  MEMORY[0x1EEE9AC00](v574);
  v551 = &v524 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v550 = &v524 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v568 = &v524 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v560 = &v524 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v567 = &v524 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v558 = &v524 - v39;
  v40 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v40);
  MEMORY[0x1EEE9AC00](v41);
  MEMORY[0x1EEE9AC00](v42);
  MEMORY[0x1EEE9AC00](v43);
  MEMORY[0x1EEE9AC00](v44);
  v51 = &v524 - v50;
  v52 = *a1;
  v53 = *(a1 + 8);
  v54 = *(a1 + 40);
  v55 = *(a2 + 40);
  v720 = *(a2 + 32);
  v56 = *a2;
  v57 = *(a2 + 8);
  v719 = *(a2 + 16);
  v717 = *(a2 + 48);
  v718 = *(a2 + 64);
  v572 = v52;
  v573 = v56;
  if (v52 == v56 && (v57 ^ v53) <= 0x3FF && (v55 ^ v54) < 0x400)
  {
    return 1;
  }

  v547 = v57;
  v548 = v55;
  v561 = v49;
  v562 = v45;
  v542 = v15;
  v543 = v9;
  v538 = v48;
  v539 = v4;
  v540 = v12;
  v557 = v51;
  v549 = v47;
  v544 = v6;
  v596 = *(a1 + 16);
  v59 = *(a1 + 32);
  v595 = v53;
  *&v597 = v59;
  v598 = *(a1 + 48);
  v60 = *(a1 + 64);
  *(&v597 + 1) = v54;
  *&v599 = v60;
  v61 = v46;
  v62 = lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  v63 = v572;

  RangeSet.init(_:)();
  *(&v556 + 1) = v61;
  *v61 = v63;
  v552 = v62;
  RangeSet.init()();
  v64 = v566;
  RangeSet.ranges.getter();
  v65 = v570;
  v66 = v579;
  v545 = *(v10 + 16);
  v546 = v10 + 16;
  v545(v570, v64, v579);
  v67 = *(v559 + 36);
  v68 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Collection.startIndex.getter();
  v69 = *(v10 + 8);
  v565 = v10 + 8;
  v563 = v69;
  v69(v64, v66);
  v70 = v65;
  dispatch thunk of Collection.endIndex.getter();
  v71 = *&v67[v65];
  v578 = v68;
  if (v71 != v595)
  {
    v569 = v67;
    do
    {
      v81 = dispatch thunk of Collection.subscript.read();
      v83 = v82[5];
      v84 = v82[7];
      v576 = v82[6];
      v577 = v83;
      v575 = v84;
      v81(&v595, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v85 = v572;
      v702 = *(v572 + 24);
      v703 = *(v572 + 40);
      v704 = *(v572 + 56);
      swift_unknownObjectRetain();
      v86 = BigString.UnicodeScalarView.index(roundingDown:)();
      v88 = v87;
      v90 = v89;
      v92 = v91;
      swift_unknownObjectRelease();
      v699 = *(v85 + 24);
      v700 = *(v85 + 40);
      v701 = *(v85 + 56);
      swift_unknownObjectRetain();
      v93 = BigString.UnicodeScalarView.index(roundingDown:)();
      v95 = v94;
      v97 = v96;
      v99 = v98;
      v66 = v579;
      swift_unknownObjectRelease();
      v595 = v86;
      *&v596 = v88;
      *(&v596 + 1) = v90;
      *&v597 = v92;
      *(&v597 + 1) = v93;
      *&v598 = v95;
      *(&v598 + 1) = v97;
      *&v599 = v99;
      if ((v93 ^ v86) >= 0x400)
      {
        v100 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v100(v623, 0);
      }

      v70 = v570;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v569[v70] != v595);
  }

  outlined destroy of TermOfAddress?(v70, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v72 = v562;
  v73 = *(&v556 + 1);
  v74 = *(&v556 + 1) + *(v562 + 6);
  v569 = *(v564 + 16);
  v570 = v564 + 16;
  (v569)(v74, v567, v574);
  v75 = v566;
  RangeSet.ranges.getter();
  v76 = RangeSet.Ranges.count.getter();
  v77 = v75;
  v78 = v563;
  v563(v77, v66);
  v79 = *(v72 + 7);
  LODWORD(v541) = v76 > 1;
  *(v73 + v79) = v541;
  v80 = v555;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v623[0] == v595)
  {
    v78(v80, v66);
LABEL_14:
    v106 = v572;
    v107 = *(v572 + 72);
    if (v107)
    {
      v577 = *(v107 + 18);
    }

    else
    {
      v577 = 0;
    }

    v576 = *(v572 + 96);
    v696 = *(v572 + 24);
    v697 = *(v572 + 40);
    v698 = *(v572 + 56);
    v108 = BigString.startIndex.getter();
    v110 = v109;
    v112 = v111;
    v113 = *(v106 + 72);
    v555 = *(v106 + 96);
    v115 = v114;
    if (v113)
    {
      v575 = *(v113 + 18);
    }

    else
    {
      v575 = 0;
    }

    v116 = *(v564 + 8);
    v117 = v574;
    v116(v567, v574);
    v567 = v116;
    v116(v558, v117);
    v693 = *(v106 + 24);
    v694 = *(v106 + 40);
    v695 = *(v106 + 56);
    v118 = BigString.startIndex.getter();
    v122 = 0;
    v123 = 0;
    v124 = 0;
    v125 = 0;
    v126 = 0;
    v127 = -1;
    v128 = v108;
    v129 = v108;
    v130 = v115;
    v131 = v115;
    v132 = v110;
    v133 = v110;
    v134 = v112;
    v135 = v112;
    v136 = v118;
    v137 = v119;
    v138 = v120;
    v139 = v121;
    v140 = -1;
    v141 = v563;
    v142 = v555;
    v143 = v566;
    goto LABEL_30;
  }

  v101 = dispatch thunk of Collection.subscript.read();
  v103 = *v102;
  v536 = v102[1];
  v537 = v103;
  v104 = v102[2];
  v534 = v102[3];
  v535 = v104;
  v101(&v595, 0);
  v78(v80, v66);
  v105 = v553;
  RangeSet.ranges.getter();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v78(v105, v66);
    goto LABEL_14;
  }

  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v144 = dispatch thunk of Collection.subscript.read();
  v146 = v145[5];
  v555 = v145[4];
  v147 = v145[7];
  v532 = v145[6];
  v533 = v146;
  v531 = v147;
  v144(&v595, 0);
  v78(v105, v66);
  v148 = v572;
  AttributedString.Guts.findRun(at:)(v537, v534, &v595);
  v576 = v595;
  v577 = v596;
  v527 = v597;
  v528 = *(&v596 + 1);
  v553 = v598;
  v529 = *(&v599 + 1);
  v132 = v599;
  v530 = *(&v598 + 1);
  v696 = *(v148 + 24);
  v697 = *(v148 + 40);
  v698 = *(v148 + 56);
  if ((BigString.endIndex.getter() ^ v555) >= 0x400)
  {
    AttributedString.Guts.findRun(at:)(v555, v531, &v595);
    v142 = v595;
    v126 = *(&v596 + 1);
    v575 = v596;
    v125 = v597;
    v572 = v598;
    v525 = v599;
    v526 = *(&v598 + 1);
    v524 = *(&v599 + 1);
    v154 = v566;
    v155 = v574;
    RangeSet.ranges.getter();
    v140 = RangeSet.Ranges.count.getter();
    v563(v154, v66);
    v156 = *(v564 + 8);
    v156(v567, v155);
    v567 = v156;
    v156(v558, v155);
    v136 = v555;
    v143 = v154;
    v141 = v563;
    v121 = v524;
    v120 = v525;
    v119 = v526;
    v118 = v572;
    v127 = 0;
    v124 = v541;
    v131 = v536;
    v129 = v537;
    v135 = v534;
    v133 = v535;
    v128 = v553;
    v134 = v529;
    v130 = v530;
    v138 = v532;
    v137 = v533;
    v139 = v531;
  }

  else
  {
    v141 = v78;
    v149 = *(v148 + 72);
    if (v149)
    {
      v125 = *(v148 + 80);
    }

    else
    {
      v125 = 0;
    }

    v142 = *(v148 + 96);
    v150 = swift_unknownObjectRetain();
    v575 = specialized Rope._endPath.getter(v150);
    if (v149)
    {
      swift_unknownObjectRelease();
    }

    v143 = v566;
    v151 = v574;
    RangeSet.ranges.getter();
    v152 = v579;
    v140 = RangeSet.Ranges.count.getter();
    v141(v143, v152);
    v153 = *(v564 + 8);
    v153(v567, v151);
    v567 = v153;
    v153(v558, v151);
    v127 = 0;
    v126 = 0;
    v136 = v555;
    v118 = v555;
    v138 = v532;
    v137 = v533;
    v119 = v533;
    v120 = v532;
    v130 = v530;
    v139 = v531;
    v121 = v531;
    v124 = v541;
    v131 = v536;
    v129 = v537;
    v135 = v534;
    v133 = v535;
    v128 = v553;
    v134 = v529;
  }

  v122 = v527;
  v123 = v528;
LABEL_30:
  v157 = *(&v556 + 1);
  *(*(&v556 + 1) + 8) = v122;
  *(v157 + 16) = v576;
  *(v157 + 24) = v577;
  *(v157 + 32) = v123;
  *(v157 + 40) = v128;
  *(v157 + 48) = v130;
  *(v157 + 56) = v132;
  *(v157 + 64) = v134;
  *(v157 + 72) = v129;
  *(v157 + 80) = v131;
  *(v157 + 88) = v133;
  *(v157 + 96) = v135;
  *(v157 + 104) = v127;
  *(v157 + 112) = 0;
  *(v157 + 113) = v124;
  *(v157 + 120) = v125;
  *(v157 + 128) = v142;
  *(v157 + 136) = v575;
  *(v157 + 144) = v126;
  *(v157 + 152) = v118;
  *(v157 + 160) = v119;
  *(v157 + 168) = v120;
  *(v157 + 176) = v121;
  *(v157 + 184) = v136;
  *(v157 + 192) = v137;
  *(v157 + 200) = v138;
  *(v157 + 208) = v139;
  *(v157 + 216) = v140;
  *(v157 + 224) = 0;
  *(v157 + 225) = v124;
  outlined init with take of AttributedString.Runs(v157, v557);
  v596 = v719;
  v595 = v547;
  *&v597 = v720;
  v598 = v717;
  *(&v597 + 1) = v548;
  *&v599 = v718;
  v158 = v573;

  RangeSet.init(_:)();
  *v561 = v158;
  RangeSet.init()();
  RangeSet.ranges.getter();
  v159 = v571;
  v160 = v579;
  v545(v571, v143, v579);
  v161 = *(v559 + 36);
  dispatch thunk of Collection.startIndex.getter();
  v141(v143, v160);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v159 + v161) != v595)
  {
    v572 = v161;
    do
    {
      v170 = dispatch thunk of Collection.subscript.read();
      v172 = v171[4];
      v576 = v171[5];
      v577 = v172;
      v575 = v171[6];
      v170(&v595, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v173 = v573;
      v690 = *(v573 + 24);
      v691 = *(v573 + 40);
      v692 = *(v573 + 56);
      swift_unknownObjectRetain();
      v174 = BigString.UnicodeScalarView.index(roundingDown:)();
      v176 = v175;
      v178 = v177;
      v180 = v179;
      swift_unknownObjectRelease();
      v687 = *(v173 + 24);
      v688 = *(v173 + 40);
      v689 = *(v173 + 56);
      swift_unknownObjectRetain();
      v181 = BigString.UnicodeScalarView.index(roundingDown:)();
      v183 = v182;
      v185 = v184;
      v187 = v186;
      swift_unknownObjectRelease();
      v595 = v174;
      *&v596 = v176;
      *(&v596 + 1) = v178;
      *&v597 = v180;
      *(&v597 + 1) = v181;
      *&v598 = v183;
      v160 = v579;
      *(&v598 + 1) = v185;
      *&v599 = v187;
      if ((v181 ^ v174) >= 0x400)
      {
        v188 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v188(v623, 0);
      }

      v159 = v571;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v159 + v572) != v595);
  }

  outlined destroy of TermOfAddress?(v159, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v163 = v561;
  v162 = v562;
  (v569)(v561 + *(v562 + 6), v568, v574);
  v164 = v566;
  RangeSet.ranges.getter();
  v165 = RangeSet.Ranges.count.getter();
  v166 = v164;
  v167 = v563;
  v563(v166, v160);
  v168 = *(v162 + 7);
  LODWORD(v571) = v165 > 1;
  *(v163 + v168) = v571;
  v169 = v556;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v623[0] == v595)
  {
    v167(v169, v160);
LABEL_39:
    v194 = v573;
    v195 = *(v573 + 72);
    if (v195)
    {
      v196 = *(v195 + 18);
    }

    else
    {
      v196 = 0;
    }

    v576 = *(v573 + 96);
    v684 = *(v573 + 24);
    v685 = *(v573 + 40);
    v686 = *(v573 + 56);
    v197 = BigString.startIndex.getter();
    v199 = v198;
    v201 = v200;
    v203 = v202;
    v204 = *(v194 + 72);
    v572 = *(v194 + 96);
    v577 = v196;
    if (v204)
    {
      v575 = *(v204 + 18);
    }

    else
    {
      v575 = 0;
    }

    v205 = v567;
    v206 = v574;
    (v567)(v568, v574);
    v205(v560, v206);
    v683[15] = *(v194 + 24);
    v683[16] = *(v194 + 40);
    v683[17] = *(v194 + 56);
    v207 = BigString.startIndex.getter();
    v211 = 0;
    v212 = 0;
    v213 = 0;
    v214 = 0;
    v215 = 0;
    v216 = -1;
    v217 = v197;
    v218 = v199;
    v219 = v199;
    v220 = v201;
    v221 = v201;
    v222 = v203;
    v223 = v203;
    v224 = v207;
    v225 = v208;
    v226 = v209;
    v227 = v210;
    v228 = -1;
    v229 = v572;
    v230 = v577;
    goto LABEL_46;
  }

  v189 = dispatch thunk of Collection.subscript.read();
  v191 = *v190;
  v558 = v190[1];
  v559 = v191;
  v192 = v190[3];
  *(&v556 + 1) = v190[2];
  v555 = v192;
  v189(&v595, 0);
  v167(v169, v160);
  v193 = v554;
  RangeSet.ranges.getter();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v167(v193, v160);
    goto LABEL_39;
  }

  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v251 = dispatch thunk of Collection.subscript.read();
  v253 = v252[5];
  *&v556 = v252[4];
  v553 = v253;
  v254 = v252[6];
  v547 = v252[7];
  v548 = v254;
  v251(&v595, 0);
  v167(v193, v160);
  v255 = v573;
  AttributedString.Guts.findRun(at:)(v559, v555, &v595);
  v576 = v595;
  v577 = v596;
  v545 = v597;
  v546 = *(&v596 + 1);
  v218 = *(&v598 + 1);
  v554 = v598;
  v222 = *(&v599 + 1);
  v220 = v599;
  v684 = *(v255 + 24);
  v685 = *(v255 + 40);
  v686 = *(v255 + 56);
  if ((BigString.endIndex.getter() ^ v556) >= 0x400)
  {
    AttributedString.Guts.findRun(at:)(v556, v547, &v595);
    v215 = *(&v596 + 1);
    v575 = v596;
    v541 = v597;
    v572 = v595;
    v573 = v598;
    v536 = v599;
    v537 = *(&v598 + 1);
    v535 = *(&v599 + 1);
    v269 = v566;
    v270 = v574;
    RangeSet.ranges.getter();
    v271 = v579;
    v228 = RangeSet.Ranges.count.getter();
    v167(v269, v271);
    v272 = v220;
    v273 = v218;
    v274 = v567;
    (v567)(v568, v270);
    v274(v560, v270);
    v221 = *(&v556 + 1);
    v224 = v556;
    v218 = v273;
    v220 = v272;
    v229 = v572;
    v207 = v573;
    v210 = v535;
    v209 = v536;
    v208 = v537;
    v216 = 0;
    v214 = v541;
    v213 = v571;
    v219 = v558;
    v217 = v559;
    v197 = v554;
    v223 = v555;
    v230 = v577;
    v225 = v553;
    v227 = v547;
    v226 = v548;
    v211 = v545;
    v212 = v546;
  }

  else
  {
    v256 = v556;
    v257 = *(v255 + 72);
    if (v257)
    {
      v258 = *(v255 + 80);
    }

    else
    {
      v258 = 0;
    }

    v541 = v258;
    v229 = *(v255 + 96);
    v259 = swift_unknownObjectRetain();
    v575 = specialized Rope._endPath.getter(v259);
    v260 = v566;
    if (v257)
    {
      swift_unknownObjectRelease();
    }

    v261 = v574;
    RangeSet.ranges.getter();
    v262 = v579;
    v228 = RangeSet.Ranges.count.getter();
    v563(v260, v262);
    v263 = v567;
    (v567)(v568, v261);
    v263(v560, v261);
    v216 = 0;
    v215 = 0;
    v224 = v256;
    v207 = v256;
    v225 = v553;
    v197 = v554;
    v208 = v553;
    v227 = v547;
    v226 = v548;
    v209 = v548;
    v210 = v547;
    v213 = v571;
    v219 = v558;
    v217 = v559;
    v221 = *(&v556 + 1);
    v223 = v555;
    v230 = v577;
    v211 = v545;
    v212 = v546;
    v214 = v541;
  }

LABEL_46:
  v231 = v561;
  *(v561 + 8) = v211;
  *(v231 + 16) = v576;
  *(v231 + 24) = v230;
  *(v231 + 32) = v212;
  *(v231 + 40) = v197;
  *(v231 + 48) = v218;
  *(v231 + 56) = v220;
  *(v231 + 64) = v222;
  *(v231 + 72) = v217;
  *(v231 + 80) = v219;
  *(v231 + 88) = v221;
  *(v231 + 96) = v223;
  *(v231 + 104) = v216;
  *(v231 + 112) = 0;
  *(v231 + 113) = v213;
  *(v231 + 120) = v214;
  *(v231 + 128) = v229;
  *(v231 + 136) = v575;
  *(v231 + 144) = v215;
  *(v231 + 152) = v207;
  *(v231 + 160) = v208;
  *(v231 + 168) = v209;
  *(v231 + 176) = v210;
  *(v231 + 184) = v224;
  *(v231 + 192) = v225;
  *(v231 + 200) = v226;
  *(v231 + 208) = v227;
  *(v231 + 216) = v228;
  *(v231 + 224) = 0;
  *(v231 + 225) = v213;
  v232 = v549;
  result = outlined init with take of AttributedString.Runs(v231, v549);
  v237 = v557;
  v238 = *v557;
  v239 = *v232;
  if (*v557 == *v232)
  {
    result = static RangeSet.== infix(_:_:)();
    if (result)
    {
      goto LABEL_79;
    }
  }

  v240 = v237[1];
  v241 = v237[9];
  v242 = v237[12];
  v243 = v237[15];
  v244 = v237[23];
  v245 = v237[26];
  v246 = v562;
  v247 = *(v237 + *(v562 + 7));
  v576 = v239;
  if (v247 == 1)
  {
    v236 = 0;
    v338 = *(v237 + 112);
    v339 = v237[13];
    v533 = v244 >> 10;
    v340 = v237[8];
    v547 = v237[7];
    v341 = v237[5];
    v548 = v237[6];
    v536 = v241 >> 10;
    v537 = v243;
    v534 = v564 + 8;
    v573 = v237[4];
    v342 = v240;
    v343 = v241;
    v344 = v242;
    result = v245;
    v234 = v243;
    v345 = v237[2];
    v575 = v237[3];
    v561 = v238;
    v553 = v242;
    v554 = v241;
    v552 = v240;
    while (1)
    {
      LOBYTE(v623[0]) = v338;
      if (v342 >= v243 && (v243 < v342 || v245 == 2 || v344 != 2 && v343 >> 10 >= v533))
      {
        goto LABEL_64;
      }

      if (v342 < v240)
      {
        goto LABEL_320;
      }

      v356 = v240 < v342 || v242 == 2;
      v357 = v356;
      v358 = v573;
      v359 = v575;
      if (!v356)
      {
        if (v344 == 2)
        {
          goto LABEL_357;
        }

        if (v536 > v343 >> 10)
        {
          goto LABEL_333;
        }
      }

      if (v342 >= v234)
      {
        if (v234 < v342)
        {
          goto LABEL_334;
        }

        if (result == 2)
        {
          goto LABEL_358;
        }

        if (v344 == 2)
        {
          if (!v357)
          {
            goto LABEL_353;
          }

          goto LABEL_135;
        }

        if (v343 >> 10 >= v244 >> 10)
        {
          goto LABEL_345;
        }
      }

      if ((v357 & 1) == 0)
      {
        if (v344 == 2)
        {
          goto LABEL_353;
        }

        if (v536 > v343 >> 10)
        {
          goto LABEL_339;
        }
      }

LABEL_135:
      if (v234 < v342)
      {
        goto LABEL_321;
      }

      if (v342 >= v234 && v344 != 2)
      {
        if (result == 2)
        {
          goto LABEL_359;
        }

        if (v244 >> 10 < v343 >> 10)
        {
          goto LABEL_335;
        }
      }

      if (v573 == 1 || v345 != *(v238 + 96))
      {
        goto LABEL_351;
      }

      v577 = v345;
      v559 = result;
      v560 = v244;
      v568 = v236;
      v558 = v234;
      *&v556 = v344;
      *(&v556 + 1) = v343;
      v555 = v340;
      v541 = v341;
      v545 = (v341 >> 11);
      if (v340 == 2)
      {
        v360 = v238;
        v361 = *(v238 + 72);
        if (v361)
        {
          v362 = *(v360 + 80);
          v363 = *(v360 + 88);
          swift_unknownObjectRetain();
          v572 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v577, v359, v358, v361, v362, v363);
          swift_unknownObjectRelease();
        }

        else
        {
          v572 = 0;
        }

        v370 = *(v360 + 24);
        v371 = *(v360 + 56);
        v643 = *(v360 + 40);
        v644 = v371;
        v372 = *(v360 + 40);
        v639 = *(v360 + 24);
        v640 = v372;
        v641 = *(v360 + 56);
        v642 = v370;
        BigString.startIndex.getter();
        v571 = v373;
        v546 = v374;
        v713[0] = v642;
        v713[1] = v643;
        v714 = v644;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v713, &v595);
        v375 = v572;
        v546 = BigString.UTF8View.index(_:offsetBy:)();
        result = outlined destroy of BigString(&v642);
        v368 = v575;
        v369 = v375;
      }

      else
      {
        v364 = *(v238 + 24);
        v365 = *(v238 + 40);
        v572 = v342;
        v366 = v341 >> 11;
        v636 = v364;
        v637 = v365;
        v638 = *(v238 + 56);
        v367 = v575;
        swift_unknownObjectRetain();
        v360 = v238;
        v368 = v367;
        v358 = v573;
        v546 = BigString.UTF8View.index(roundingDown:)();
        result = swift_unknownObjectRelease();
        v369 = v366;
        v342 = v572;
      }

      v376 = *(v360 + 72);
      v377 = *(v360 + 96);
      v378 = v577;
      v595 = v577;
      *&v596 = v368;
      *(&v596 + 1) = v358;
      v355 = __OFADD__(v342, 1);
      v379 = v342 + 1;
      if (v355)
      {
        goto LABEL_323;
      }

      if (v577 != v377)
      {
        goto LABEL_324;
      }

      if (v358)
      {
        v380 = *(v358 + 24 * ((v368 >> ((4 * *(v358 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v571 = v369 + v380;
        if (__OFADD__(v369, v380))
        {
          goto LABEL_328;
        }

        if (!v376)
        {
          goto LABEL_322;
        }

        result = swift_unknownObjectRetain();
      }

      else
      {
        v572 = v369;
        swift_unknownObjectRetain();
        v571 = specialized Rope._Node.subscript.getter(v368, v376);
        v535 = v381;

        v355 = __OFADD__(v572, v571);
        v571 += v572;
        if (v355)
        {
          goto LABEL_340;
        }

        if (!v376)
        {
          goto LABEL_322;
        }
      }

      if (v368 >= (((-15 << ((4 * *(v376 + 18) + 8) & 0x3C)) - 1) & *(v376 + 18) | (*(v376 + 16) << ((4 * *(v376 + 18) + 8) & 0x3C))))
      {
        goto LABEL_322;
      }

      if (v358)
      {
        v382 = (4 * *(v358 + 18) + 8) & 0x3C;
        v383 = v358;
        v384 = ((v575 >> v382) & 0xF) + 1;
        if (v384 < *(v383 + 16))
        {
          swift_unknownObjectRelease();
          v385 = (v384 << v382) | ((-15 << v382) - 1) & v575;
LABEL_162:
          v575 = v385;
          goto LABEL_164;
        }
      }

      if (specialized Rope._Node.formSuccessor(of:)(&v595, v376))
      {
        swift_unknownObjectRelease();
        v385 = v596;
        goto LABEL_162;
      }

      v386 = *(v376 + 18);
      v387 = *(v376 + 16);
      swift_unknownObjectRelease();
      v595 = v378;
      v575 = ((-15 << ((4 * v386 + 8) & 0x3C)) - 1) & v386 | (v387 << ((4 * v386 + 8) & 0x3C));
      v596 = v575;
LABEL_164:
      v232 = v549;
      v237 = v557;
      v577 = v595;
      v572 = v379;
      v573 = *(&v596 + 1);
      v388 = v563;
      v389 = v579;
      if (v623[0])
      {
        (v569)(v550, v557 + *(v562 + 6), v574);
        if (v556 == 2)
        {
          v390 = v546;
        }

        else
        {
          v390 = *(&v556 + 1);
        }

        v391 = v566;
        RangeSet.ranges.getter();
        v392 = RangeSet.Ranges.count.getter();
        result = v388(v391, v389);
        if (v392 < 1)
        {
          goto LABEL_309;
        }

        v393 = 0;
        v394 = v390 >> 10;
        while (1)
        {
          while (1)
          {
            if (__OFADD__(v393, v392))
            {
              goto LABEL_311;
            }

            v395 = (v393 + v392) / 2;
            v396 = v566;
            RangeSet.ranges.getter();
            v397 = v579;
            RangeSet.Ranges.subscript.getter();
            result = (v563)(v396, v397);
            if (v394 >= v595 >> 10)
            {
              break;
            }

            v392 = (v393 + v392) / 2;
            if (v393 >= v395)
            {
              goto LABEL_309;
            }
          }

          v339 = (v393 + v392) / 2;
          v398 = *(&v597 + 1);
          if (v394 < *(&v597 + 1) >> 10)
          {
            break;
          }

          v393 = v395 + 1;
          if (v395 + 1 >= v392)
          {
            goto LABEL_309;
          }
        }

        result = (v567)(v550, v574);
        v237 = v557;
      }

      else
      {
        v399 = v566;
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        result = v388(v399, v389);
        v398 = *(&v597 + 1);
      }

      if (v571 >= (v398 >> 11))
      {
        v355 = __OFADD__(v339++, 1);
        if (v355)
        {
          goto LABEL_336;
        }

        v577 = *(v562 + 6);
        v406 = v566;
        RangeSet.ranges.getter();
        v407 = v579;
        v408 = RangeSet.Ranges.count.getter();
        v563(v406, v407);
        if (v339 == v408)
        {
          v342 = v237[15];
          v345 = v237[16];
          v409 = v237[18];
          v575 = v237[17];
          v573 = v409;
          v341 = v237[19];
          v410 = v237[20];
          v340 = v237[22];
          v547 = v237[21];
          v548 = v410;
          v343 = v237[23];
          v344 = v237[26];
          v339 = v237[27];
          v244 = v343;
          result = v344;
          v234 = v342;
          v338 = *(v237 + 224);
          v246 = v562;
          v239 = v576;
          v242 = v553;
          v241 = v554;
          v240 = v552;
          v354 = v568;
          v243 = v537;
        }

        else
        {
          RangeSet.ranges.getter();
          RangeSet.Ranges.subscript.getter();
          result = (v563)(v406, v407);
          v411 = *(v561 + 72);
          v412 = *(v561 + 88);
          v413 = v595 >> 11;
          if (v411)
          {
            v414 = *(v561 + 88);
          }

          else
          {
            v414 = 0;
          }

          if (v414 < v413)
          {
            goto LABEL_347;
          }

          v415 = v596;
          v577 = *(v561 + 96);
          *&v556 = v597;
          *(&v556 + 1) = v595;
          v572 = *(&v596 + 1);
          if (v411)
          {
            v555 = *(v561 + 80);
            v417 = (v411 + 16);
            v416 = *(v411 + 16);
            v418 = *(v411 + 18);
            v571 = v412;
            if (v413 < v412 && v416)
            {
              result = swift_unknownObjectRetain_n();
              v547 = result;
              v548 = v415;
              if (v418)
              {
                v419 = v418;
                v420 = result;
                while (1)
                {
                  v421 = *v417;
                  if (*v417)
                  {
                    break;
                  }

                  v426 = v413;
LABEL_204:
                  if (v426)
                  {
                    goto LABEL_326;
                  }

                  v413 = 0;
LABEL_195:
                  v419 = (v421 << ((4 * v418 + 8) & 0x3C)) | ((-15 << ((4 * v418 + 8) & 0x3C)) - 1) & v419;
                  v422 = *(v420 + 24 + 24 * v421);
                  swift_unknownObjectRetain();
                  result = swift_unknownObjectRelease();
                  v417 = (v422 + 16);
                  LOBYTE(v418) = *(v422 + 18);
                  v420 = v422;
                  if (!v418)
                  {
                    v430 = v422;
                    v431 = v419 & 0xFFFFFFFFFFFFF0FFLL;
                    goto LABEL_210;
                  }
                }

                v423 = 0;
                v424 = (v420 + 40);
                while (1)
                {
                  v425 = *v424;
                  v424 += 3;
                  v426 = v413 - v425;
                  if (__OFSUB__(v413, v425))
                  {
                    goto LABEL_312;
                  }

                  if (__OFADD__(v426, 1))
                  {
                    break;
                  }

                  if (v426 + 1 < 1)
                  {
                    v421 = v423;
                    goto LABEL_195;
                  }

                  ++v423;
                  v413 = v426;
                  if (v421 == v423)
                  {
                    goto LABEL_204;
                  }
                }

LABEL_313:
                __break(1u);
LABEL_314:
                __break(1u);
LABEL_315:
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
                __break(1u);
LABEL_324:
                __break(1u);
LABEL_325:
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
LABEL_332:
                __break(1u);
LABEL_333:
                __break(1u);
LABEL_334:
                __break(1u);
LABEL_335:
                __break(1u);
LABEL_336:
                __break(1u);
LABEL_337:
                __break(1u);
LABEL_338:
                __break(1u);
LABEL_339:
                __break(1u);
LABEL_340:
                __break(1u);
LABEL_341:
                __break(1u);
LABEL_342:
                __break(1u);
LABEL_343:
                __break(1u);
LABEL_344:
                __break(1u);
LABEL_345:
                __break(1u);
LABEL_346:
                __break(1u);
LABEL_347:
                __break(1u);
LABEL_348:
                __break(1u);
LABEL_349:
                __break(1u);
LABEL_350:
                __break(1u);
LABEL_351:
                __break(1u);
LABEL_352:
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
                return result;
              }

              v431 = 0;
              v430 = result;
LABEL_210:
              result = specialized Rope._UnsafeHandle.findSlot<A>(at:in:preferEnd:)(v413, 0, v417, (v430 + 24));
              if (result < 0)
              {
                goto LABEL_349;
              }

              v433 = result;
              v427 = v432;
              swift_unknownObjectRelease();
              v428 = v431 | (v433 << 8);
              v237 = v557;
              v429 = v547;
            }

            else
            {
              v428 = ((-15 << ((4 * v418 + 8) & 0x3C)) - 1) & v418 | (v416 << ((4 * v418 + 8) & 0x3C));
              v429 = v411;
              swift_unknownObjectRetain();
              v427 = 0;
              v430 = 0;
            }

            v575 = v428;
            v573 = v430;
            v342 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v577, v428, v430, v429, v555);
            result = swift_unknownObjectRelease();
          }

          else
          {
            v427 = 0;
            v573 = 0;
            v575 = 0;
            v342 = 0;
          }

          v434 = *(v561 + 24);
          v435 = *(v561 + 40);
          v633 = v434;
          v634 = v435;
          v635 = *(v561 + 56);
          if (__OFSUB__(0, v427))
          {
            goto LABEL_348;
          }

          v571 = v434;
          swift_unknownObjectRetain();
          v343 = *(&v556 + 1);
          v436 = v556;
          v437 = BigString.UTF8View.index(_:offsetBy:)();
          v547 = v439;
          v548 = v438;
          v441 = v440;
          swift_unknownObjectRelease();
          v341 = v437;
          v340 = v441;
          v344 = v436;
          v338 = 0;
          v246 = v562;
          v239 = v576;
          v345 = v577;
          v242 = v553;
          v241 = v554;
          v240 = v552;
          result = v559;
          v244 = v560;
          v354 = v568;
          v234 = v558;
          v243 = v537;
        }
      }

      else
      {
        if (v555 == 2)
        {
          v346 = *(v561 + 24);
          v347 = *(v561 + 56);
          v631 = *(v561 + 40);
          v632 = v347;
          v348 = *(v561 + 40);
          v627 = *(v561 + 24);
          v628 = v348;
          v629 = *(v561 + 56);
          v630 = v346;
          BigString.startIndex.getter();
          v715[0] = v630;
          v715[1] = v631;
          v237 = v557;
          v716 = v632;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v715, &v595);
          v349 = BigString.UTF8View.index(_:offsetBy:)();
          v547 = v351;
          v548 = v350;
          v353 = v352;
          outlined destroy of BigString(&v630);
          v345 = v577;
          v342 = v572;
        }

        else
        {
          v400 = *(v561 + 24);
          v401 = *(v561 + 40);
          v624 = v400;
          v625 = v401;
          v626 = *(v561 + 56);
          v342 = v572;
          v402 = v577;
          if (__OFSUB__(v571, v545))
          {
            goto LABEL_346;
          }

          v571 = v400;
          swift_unknownObjectRetain();
          v349 = BigString.UTF8View.index(_:offsetBy:)();
          v547 = v404;
          v548 = v403;
          v353 = v405;
          swift_unknownObjectRelease();
          v345 = v402;
        }

        v338 = 0;
        v343 = v349;
        v344 = v353;
        v246 = v562;
        v239 = v576;
        v242 = v553;
        v241 = v554;
        v240 = v552;
        result = v559;
        v244 = v560;
        v354 = v568;
        v234 = v558;
        v243 = v537;
        v340 = v353;
        v341 = v349;
      }

      v355 = __OFADD__(v354, 1);
      v236 = (v354 + 1);
      v238 = v561;
      if (v355)
      {
        goto LABEL_325;
      }
    }
  }

  v248 = v243 - v240;
  if (__OFSUB__(v243, v240))
  {
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    v246 = 0;
    v442 = *(v232 + 112);
    v443 = *(v232 + 96);
    v577 = *(v232 + 104);
    v444 = *(v232 + 64);
    v445 = *(v232 + 72);
    v546 = *(v232 + 56);
    v446 = *(v232 + 40);
    v547 = *(v232 + 48);
    v573 = *(v232 + 32);
    v529 = v230 >> 10;
    v531 = v445 >> 10;
    v532 = v222;
    v530 = v564 + 8;
    v447 = v215;
    v533 = v235;
    v534 = v443;
    v448 = v443;
    v537 = v235;
    v449 = v222;
    v575 = *(v232 + 24);
    v571 = *(v232 + 16);
    v559 = result;
    v560 = v244;
    v568 = v236;
    v558 = v234;
    v561 = v238;
    v553 = v242;
    v554 = v241;
    v552 = v240;
    while (1)
    {
      LOBYTE(v623[0]) = v442;
      if (v447 >= v222 && (v222 < v447 || v235 == 2 || v448 != 2 && v445 >> 10 >= v529))
      {
        goto LABEL_304;
      }

      if (v447 < v215)
      {
        goto LABEL_314;
      }

      v461 = v215 < v447 || v534 == 2;
      v462 = v461;
      v463 = v571;
      if (!v461)
      {
        if (v448 == 2)
        {
          goto LABEL_354;
        }

        if (v531 > v445 >> 10)
        {
          goto LABEL_329;
        }
      }

      if (v447 >= v449)
      {
        if (v449 < v447)
        {
          goto LABEL_330;
        }

        if (v537 == 2)
        {
          goto LABEL_355;
        }

        if (v448 == 2)
        {
          if (!v462)
          {
            goto LABEL_352;
          }

          goto LABEL_246;
        }

        if (v445 >> 10 >= v230 >> 10)
        {
          goto LABEL_341;
        }
      }

      if ((v462 & 1) == 0)
      {
        if (v448 == 2)
        {
          goto LABEL_352;
        }

        if (v531 > v445 >> 10)
        {
          goto LABEL_337;
        }
      }

LABEL_246:
      if (v449 < v447)
      {
        goto LABEL_315;
      }

      if (v447 >= v449 && v448 != 2)
      {
        if (v537 == 2)
        {
          goto LABEL_356;
        }

        if (v230 >> 10 < v445 >> 10)
        {
          goto LABEL_331;
        }
      }

      if (v573 == 1 || v571 != *(v239 + 96))
      {
        goto LABEL_350;
      }

      v464 = v446 >> 11;
      v550 = v246;
      v545 = v449;
      v535 = v446;
      v536 = v446 >> 11;
      v572 = v447;
      *(&v556 + 1) = v444;
      v564 = v445;
      v555 = v448;
      if (v444 == 2)
      {
        v465 = *(v239 + 72);
        if (v465)
        {
          v466 = *(v239 + 80);
          v467 = *(v239 + 88);
          swift_unknownObjectRetain();
          v468 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v463, v575, v573, v465, v466, v467);
          swift_unknownObjectRelease();
        }

        else
        {
          v468 = 0;
        }

        v472 = *(v239 + 24);
        v664 = *(v239 + 40);
        v665 = *(v239 + 56);
        v663 = v472;
        v660 = *(v239 + 24);
        v661 = *(v239 + 40);
        v662 = *(v239 + 56);
        BigString.startIndex.getter();
        *&v556 = v473;
        v548 = v474;
        v709[0] = v663;
        v709[1] = v664;
        v710 = v665;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v709, &v595);
        v471 = v468;
        v541 = BigString.UTF8View.index(_:offsetBy:)();
        result = outlined destroy of BigString(&v663);
        v470 = v571;
      }

      else
      {
        v657 = *(v239 + 24);
        v658 = *(v239 + 40);
        v659 = *(v239 + 56);
        *&v556 = v657;
        v469 = v571;
        swift_unknownObjectRetain();
        v470 = v469;
        v541 = BigString.UTF8View.index(roundingDown:)();
        result = swift_unknownObjectRelease();
        v471 = v464;
      }

      v475 = *(v239 + 72);
      *&v556 = *(v239 + 80);
      v476 = *(v239 + 96);
      v595 = v470;
      *&v596 = v575;
      v477 = v573;
      *(&v596 + 1) = v573;
      if (__OFADD__(v572, 1))
      {
        goto LABEL_317;
      }

      if (v470 != v476)
      {
        goto LABEL_318;
      }

      ++v572;
      if (v573)
      {
        v478 = *(v573 + 24 * ((v575 >> ((4 * *(v573 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v548 = v471 + v478;
        if (__OFADD__(v471, v478))
        {
          goto LABEL_327;
        }

        if (!v475)
        {
          goto LABEL_316;
        }

        result = swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v479 = specialized Rope._Node.subscript.getter(v575, v475);

        v548 = v471 + v479;
        if (__OFADD__(v471, v479))
        {
          goto LABEL_338;
        }

        if (!v475)
        {
          goto LABEL_316;
        }
      }

      if (v575 >= (((-15 << ((4 * *(v475 + 18) + 8) & 0x3C)) - 1) & *(v475 + 18) | (*(v475 + 16) << ((4 * *(v475 + 18) + 8) & 0x3C))))
      {
        goto LABEL_316;
      }

      if (v477)
      {
        v480 = (4 * *(v477 + 18) + 8) & 0x3C;
        v481 = ((v575 >> v480) & 0xF) + 1;
        if (v481 < *(v477 + 16))
        {
          swift_unknownObjectRelease();
          v482 = (v481 << v480) | ((-15 << v480) - 1) & v575;
LABEL_273:
          v575 = v482;
          goto LABEL_275;
        }
      }

      if (specialized Rope._Node.formSuccessor(of:)(&v595, v475))
      {
        swift_unknownObjectRelease();
        v482 = v596;
        goto LABEL_273;
      }

      v483 = *(v475 + 18);
      v484 = *(v475 + 16);
      swift_unknownObjectRelease();
      v595 = v571;
      v575 = ((-15 << ((4 * v483 + 8) & 0x3C)) - 1) & v483 | (v484 << ((4 * v483 + 8) & 0x3C));
      v596 = v575;
LABEL_275:
      v232 = v549;
      v237 = v557;
      v571 = v595;
      v573 = *(&v596 + 1);
      if (v623[0])
      {
        (v569)(v551, v549 + *(v562 + 6), v574);
        if (v555 == 2)
        {
          v485 = v541;
        }

        else
        {
          v485 = v564;
        }

        v486 = v566;
        RangeSet.ranges.getter();
        v487 = v579;
        v488 = RangeSet.Ranges.count.getter();
        result = (v563)(v486, v487);
        if (v488 < 1)
        {
          goto LABEL_308;
        }

        v489 = 0;
        v490 = v485 >> 10;
        while (1)
        {
          while (1)
          {
            if (__OFADD__(v489, v488))
            {
              goto LABEL_310;
            }

            v491 = (v489 + v488) / 2;
            v492 = v566;
            RangeSet.ranges.getter();
            v493 = v579;
            RangeSet.Ranges.subscript.getter();
            result = (v563)(v492, v493);
            if (v490 >= v595 >> 10)
            {
              break;
            }

            v488 = (v489 + v488) / 2;
            if (v489 >= v491)
            {
              goto LABEL_308;
            }
          }

          v577 = (v489 + v488) / 2;
          v494 = *(&v597 + 1);
          if (v490 < *(&v597 + 1) >> 10)
          {
            break;
          }

          v489 = v577 + 1;
          if ((v577 + 1) >= v488)
          {
            goto LABEL_308;
          }
        }

        result = (v567)(v551, v574);
        v232 = v549;
        v237 = v557;
        v222 = v532;
      }

      else
      {
        v495 = v566;
        RangeSet.ranges.getter();
        v496 = v579;
        RangeSet.Ranges.subscript.getter();
        result = (v563)(v495, v496);
        v494 = *(&v597 + 1);
      }

      if (v548 >= (v494 >> 11))
      {
        v502 = v577 + 1;
        if (__OFADD__(v577, 1))
        {
          goto LABEL_332;
        }

        v577 = *(v562 + 6);
        v503 = v566;
        RangeSet.ranges.getter();
        v504 = v579;
        v505 = RangeSet.Ranges.count.getter();
        v506 = v563;
        v563(v503, v504);
        if (v502 == v505)
        {
          v447 = *(v232 + 120);
          v571 = *(v232 + 128);
          v507 = *(v232 + 144);
          v575 = *(v232 + 136);
          v573 = v507;
          v446 = *(v232 + 152);
          v508 = *(v232 + 160);
          v444 = *(v232 + 176);
          v546 = *(v232 + 168);
          v547 = v508;
          v445 = *(v232 + 184);
          v448 = *(v232 + 208);
          v577 = *(v232 + 216);
          v230 = v445;
          v537 = v448;
          v449 = v447;
          v442 = *(v232 + 224);
          v244 = v560;
          v238 = v561;
          v239 = v576;
          v242 = v553;
          v241 = v554;
          v240 = v552;
          v236 = v568;
          v234 = v558;
          result = v559;
          v222 = v532;
          v235 = v533;
          v460 = v550;
        }

        else
        {
          RangeSet.ranges.getter();
          v577 = v502;
          RangeSet.Ranges.subscript.getter();
          v506(v503, v504);
          v556 = v596;
          v555 = v597;
          v239 = v576;
          v509 = *(v576 + 72);
          v510 = *(v576 + 80);
          v511 = *(v576 + 88);
          v512 = *(v576 + 96);
          v564 = v595;
          v575 = v595 >> 11;
          swift_unknownObjectRetain();
          v572 = v510;
          result = specialized Rope.find<A>(at:in:preferEnd:)(v575, 0, v509, v510, v511, v512);
          v575 = v514;
          v573 = v515;
          v571 = v512;
          if (result != v512)
          {
            goto LABEL_343;
          }

          if (v509)
          {
            v516 = v513;
            v572 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v571, v575, v573, v509, v572);
            result = swift_unknownObjectRelease();
            v513 = v516;
          }

          else
          {
            v572 = 0;
          }

          v222 = v532;
          v517 = *(v239 + 24);
          v518 = *(v239 + 40);
          v654 = v517;
          v655 = v518;
          v656 = *(v239 + 56);
          if (__OFSUB__(0, v513))
          {
            goto LABEL_344;
          }

          v548 = v517;
          swift_unknownObjectRetain();
          v519 = v555;
          v446 = BigString.UTF8View.index(_:offsetBy:)();
          v546 = v521;
          v547 = v520;
          v523 = v522;
          swift_unknownObjectRelease();
          v448 = v519;
          v445 = v564;
          v444 = v523;
          v442 = 0;
          v244 = v560;
          v238 = v561;
          v242 = v553;
          v241 = v554;
          v240 = v552;
          v236 = v568;
          v234 = v558;
          result = v559;
          v235 = v533;
          v460 = v550;
          v449 = v545;
          v447 = v572;
        }
      }

      else
      {
        v239 = v576;
        if (*(&v556 + 1) == 2)
        {
          v450 = *(v576 + 24);
          v451 = *(v576 + 56);
          v652 = *(v576 + 40);
          v653 = v451;
          v452 = *(v576 + 40);
          v648 = *(v576 + 24);
          v649 = v452;
          v650 = *(v576 + 56);
          v651 = v450;
          BigString.startIndex.getter();
          v564 = v453;
          *&v556 = v455;
          *(&v556 + 1) = v454;
          v711[0] = v651;
          v711[1] = v652;
          v237 = v557;
          v712 = v653;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v711, &v595);
          v446 = BigString.UTF8View.index(_:offsetBy:)();
          v546 = v457;
          v547 = v456;
          v459 = v458;
          outlined destroy of BigString(&v651);
        }

        else
        {
          v497 = *(v576 + 24);
          v498 = *(v576 + 40);
          v645 = v497;
          v646 = v498;
          v647 = *(v576 + 56);
          if (__OFSUB__(v548, v536))
          {
            goto LABEL_342;
          }

          v564 = v497;
          swift_unknownObjectRetain();
          v446 = BigString.UTF8View.index(_:offsetBy:)();
          v546 = v500;
          v547 = v499;
          v459 = v501;
          swift_unknownObjectRelease();
        }

        v442 = 0;
        v445 = v446;
        v448 = v459;
        v244 = v560;
        v238 = v561;
        v242 = v553;
        v241 = v554;
        v240 = v552;
        v236 = v568;
        v234 = v558;
        result = v559;
        v235 = v533;
        v460 = v550;
        v449 = v545;
        v447 = v572;
        v444 = v459;
      }

      v355 = __OFADD__(v460, 1);
      v246 = v460 + 1;
      if (v355)
      {
        goto LABEL_319;
      }
    }
  }

  v249 = v237[22];
  if (v245 == 2)
  {
    v250 = v249 != 2;
  }

  else
  {
    v250 = v249 == 2 || (v244 ^ v237[19]) > 0x3FF;
  }

  v236 = (v248 + v250);
  if (__OFADD__(v248, v250))
  {
    goto LABEL_216;
  }

  result = v245;
  v234 = v243;
LABEL_64:
  v215 = *(v232 + 8);
  v222 = *(v232 + 120);
  v230 = *(v232 + 184);
  v235 = *(v232 + 208);
  if (*(v232 + *(v246 + 7)))
  {
    goto LABEL_217;
  }

  v264 = v222 - v215;
  if (__OFSUB__(v222, v215))
  {
    __break(1u);
  }

  else
  {
    v265 = *(v232 + 176);
    v266 = (v230 ^ *(v232 + 152)) > 0x3FF;
    if (v265 == 2)
    {
      v266 = 1;
    }

    if (v235 == 2)
    {
      v266 = v265 != 2;
    }

    v246 = (v264 + v266);
    v267 = v579;
    if (!__OFADD__(v264, v266))
    {
      if (v236 == v246)
      {
        goto LABEL_72;
      }

LABEL_87:
      v58 = 0;
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_304:
  v267 = v579;
  if (v236 != v246)
  {
    goto LABEL_87;
  }

LABEL_72:
  v268 = v542;
  if (v240 != v234)
  {
    goto LABEL_80;
  }

  if (v242 != 2)
  {
    if (result == 2 || (v244 ^ v241) >= 0x400)
    {
      goto LABEL_80;
    }

LABEL_79:
    v58 = 1;
    goto LABEL_88;
  }

  if (result == 2)
  {
    goto LABEL_79;
  }

LABEL_80:
  v561 = v238;
  if ((AttributedString.Runs._isPartial.getter() & 1) == 0 && (AttributedString.Runs._isPartial.getter() & 1) == 0)
  {
    v683[12] = *(v561 + 24);
    v683[13] = *(v561 + 40);
    v683[14] = *(v561 + 56);
    v275 = BigString.count.getter();
    v683[9] = *(v576 + 24);
    v683[10] = *(v576 + 40);
    v683[11] = *(v576 + 56);
    v267 = v579;
    if (v275 != BigString.count.getter())
    {
      goto LABEL_87;
    }
  }

  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v623[0] == v595)
  {
    v563(v268, v267);
    goto LABEL_87;
  }

  v276 = dispatch thunk of Collection.subscript.read();
  v278 = v277[1];
  v577 = *v277;
  v280 = v277[2];
  v279 = v277[3];
  v572 = v278;
  v573 = v280;
  v570 = v279;
  v276(&v595, 0);
  v281 = v268;
  v282 = v563;
  v563(v281, v267);
  v283 = v540;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v621 == v595)
  {
    v282(v283, v267);
    goto LABEL_87;
  }

  v284 = dispatch thunk of Collection.subscript.read();
  v286 = v285[1];
  v571 = *v285;
  v578 = v286;
  v287 = v285[2];
  v574 = v285[3];
  v575 = v287;
  v284(&v595, 0);
  v282(v283, v267);
  v288 = v538;
  outlined init with copy of AttributedString.Runs(v237, v538);
  v289 = v543;
  outlined init with copy of AttributedString.Runs(v288, v543);
  v290 = v539;
  v291 = (v289 + *(v539 + 36));
  v292 = *(v288 + 72);
  v612 = *(v288 + 56);
  v613 = v292;
  v614[0] = *(v288 + 88);
  *(v614 + 10) = *(v288 + 98);
  v293 = *(v288 + 24);
  v609 = *(v288 + 8);
  v610 = v293;
  v611 = *(v288 + 40);
  outlined destroy of AttributedString.Runs(v288);
  v294 = v614[0];
  v291[4] = v613;
  v291[5] = v294;
  *(v291 + 90) = *(v614 + 10);
  v295 = v610;
  *v291 = v609;
  v291[1] = v295;
  v296 = v612;
  v291[2] = v611;
  v291[3] = v296;
  outlined init with copy of AttributedString.Runs(v232, v288);
  v297 = v544;
  outlined init with copy of AttributedString.Runs(v288, v544);
  v298 = (v297 + *(v290 + 36));
  v299 = *(v288 + 56);
  v300 = *(v288 + 88);
  v619 = *(v288 + 72);
  v620[0] = v300;
  *(v620 + 10) = *(v288 + 98);
  v301 = *(v288 + 24);
  v615 = *(v288 + 8);
  v616 = v301;
  v617 = *(v288 + 40);
  v618 = v299;
  outlined destroy of AttributedString.Runs(v288);
  v302 = v620[0];
  v298[4] = v619;
  v298[5] = v302;
  *(v298 + 90) = *(v620 + 10);
  v303 = v616;
  *v298 = v615;
  v298[1] = v303;
  v304 = v618;
  v298[2] = v617;
  v298[3] = v304;
  v305 = v573;
  v306 = v570;
  while (1)
  {
    specialized IndexingIterator.next()(v589);
    v307 = v589[0];
    v308 = v589[1];
    v309 = v589[2];
    v310 = v592;
    specialized IndexingIterator.next()(&v581);
    v311 = v581;
    v312 = v582;
    v604 = v584;
    v605 = v585;
    v607 = v587;
    v608 = v588;
    v595 = v307;
    *&v596 = v308;
    v597 = v590;
    *&v598 = v591;
    *(&v596 + 1) = v309;
    *(&v598 + 1) = v310;
    v600 = v594;
    v599 = v593;
    v601 = v581;
    v602 = v582;
    v603 = v583;
    v606 = v586;
    if (!v307)
    {
      outlined destroy of TermOfAddress?(v544, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
      outlined destroy of TermOfAddress?(v543, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
      outlined destroy of TermOfAddress?(&v595, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
      if (!v311)
      {
        v58 = 1;
        v232 = v549;
        goto LABEL_88;
      }

      goto LABEL_102;
    }

    if (!v581)
    {
      outlined destroy of TermOfAddress?(&v595, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
      outlined destroy of TermOfAddress?(v544, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
      outlined destroy of TermOfAddress?(v543, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
LABEL_102:
      v58 = 0;
      v232 = v549;
      goto LABEL_88;
    }

    v569 = v586;
    v570 = v583;

    if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v307, v311) & 1) == 0)
    {
      break;
    }

    v313 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v308, v312);

    if ((v313 & 1) == 0)
    {
      goto LABEL_104;
    }

    v314 = v561;
    v683[6] = *(v561 + 24);
    v683[7] = *(v561 + 40);
    v683[8] = *(v561 + 56);
    swift_unknownObjectRetain();
    v315 = v306;
    v316 = v572;
    v317 = BigString.UTF8View.index(_:offsetBy:)();
    v567 = v318;
    v568 = v317;
    v579 = v319;
    v573 = v320;
    swift_unknownObjectRelease();
    v321 = v576;
    v683[3] = *(v576 + 24);
    v683[4] = *(v576 + 40);
    v683[5] = *(v576 + 56);
    swift_unknownObjectRetain();
    v322 = v571;
    v323 = BigString.UTF8View.index(_:offsetBy:)();
    v569 = v324;
    v570 = v323;
    v565 = v326;
    v566 = v325;
    result = swift_unknownObjectRelease();
    v683[0] = *(v314 + 24);
    v683[1] = *(v314 + 40);
    v683[2] = *(v314 + 56);
    if (v568 >> 10 < v577 >> 10)
    {
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
      goto LABEL_313;
    }

    v675 = v577;
    v676 = v316;
    v677 = v305;
    v678 = v315;
    v327 = v568;
    v679 = v568;
    v328 = v567;
    v680 = v567;
    v681 = v579;
    v682 = v573;
    v329 = *(v314 + 24);
    v706 = *(v314 + 56);
    v705[1] = *(v314 + 40);
    v705[0] = v329;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v705, v580);
    BigString.subscript.getter();
    result = outlined destroy of BigString(v683);
    v330 = *(v321 + 24);
    v674[1] = *(v321 + 40);
    v674[2] = *(v321 + 56);
    v674[0] = v330;
    v331 = v570;
    if (v570 >> 10 < v322 >> 10)
    {
      goto LABEL_307;
    }

    v332 = v327;
    v666 = v322;
    v667 = v578;
    v668 = v575;
    v669 = v574;
    v670 = v570;
    v333 = v569;
    v671 = v569;
    v335 = v565;
    v334 = v566;
    v672 = v566;
    v673 = v565;
    v336 = *(v321 + 24);
    v708 = *(v321 + 56);
    v707[1] = *(v321 + 40);
    v707[0] = v336;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v707, v580);
    BigString.subscript.getter();
    outlined destroy of BigString(v674);
    v337 = MEMORY[0x1865CA260](v622, v623);
    outlined destroy of BigSubstring(v622);
    outlined destroy of TermOfAddress?(&v595, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
    outlined destroy of BigSubstring(v623);
    if ((v337 & 1) == 0)
    {
      goto LABEL_105;
    }

    v571 = v331;
    v572 = v328;
    v577 = v332;
    v578 = v333;
    v574 = v335;
    v575 = v334;
    v305 = v579;
    v306 = v573;
    v237 = v557;
  }

LABEL_104:
  outlined destroy of TermOfAddress?(&v595, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
LABEL_105:
  outlined destroy of TermOfAddress?(v544, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  outlined destroy of TermOfAddress?(v543, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  v58 = 0;
  v232 = v549;
  v237 = v557;
LABEL_88:
  outlined destroy of AttributedString.Runs(v232);
  outlined destroy of AttributedString.Runs(v237);
  return v58;
}

uint64_t specialized AttributedSubstring.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  (*(v10 + 16))(&v13 - v8, a1, v7);
  return AttributedSubstring.subscript.setter(v9, v11, a2, a3);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance LoadedScopeCache.ScopeType(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      return *a1 == v2;
    }

    return 0;
  }

  return !v2;
}

uint64_t static AttributeScope.attributeKeys.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = static AttributeScope.scopeDescription.getter(a1);

  *a2 = v3;
  return result;
}

void _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16LoadedScopeCache33_4D406B8DD906487F9F362CE42830919ELLV0K4TypeOG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk9Cache33_4mnopqr7ELLV0J4S4OTG5ANxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAMIsgnndzo_Tf1nc_n(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __int128 *))
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v52 = a2;
    v53 = a1;
    v54 = 0;
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
    v60 = a3;
    while (1)
    {
      if (!v12)
      {
        v15 = v8;
        v16 = v54;
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

          v17 = *(v9 + 8 * v8);
          ++v15;
          if (v17)
          {
            v14 = __clz(__rbit64(v17));
            v12 = (v17 - 1) & v17;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_49;
      }

      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v16 = v14 | (v8 << 6);
      v18 = *(a3 + 56);
      v19 = (*(a3 + 48) + 16 * v16);
      v20 = v19[1];
      v58[0] = *v19;
      v58[1] = v20;
      v59 = *(v18 + 16 * v16);

      v21 = a4(v58, &v59);
      if (v4)
      {

        return;
      }

      v22 = v21;

      a3 = v60;
      if (v22)
      {
        *(v53 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        v23 = __OFADD__(v54++, 1);
        if (v23)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_19:
    if (!v16)
    {
LABEL_47:

      return;
    }

    if (v16 == *(a3 + 16))
    {
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16LoadedScopeCache33_4D406B8DD906487F9F362CE42830919ELLV0E4TypeOGMd);
    v24 = static _DictionaryStorage.allocate(capacity:)();
    v25 = v24;
    v26 = v52;
    if (v52)
    {
      v27 = v53;
      v28 = *v53;
    }

    else
    {
      v28 = 0;
      v27 = v53;
    }

    v29 = 0;
    v30 = v24 + 64;
    while (v28)
    {
      v31 = __clz(__rbit64(v28));
      v55 = (v28 - 1) & v28;
LABEL_35:
      v34 = 16 * (v31 | (v29 << 6));
      v35 = (*(v60 + 48) + v34);
      v36 = *v35;
      v37 = v35[1];
      v38 = (*(v60 + 56) + v34);
      v39 = v38[1];
      v57 = *v38;
      Hasher.init(_seed:)();

      String.hash(into:)();
      v40 = Hasher._finalize()();
      v41 = -1 << *(v25 + 32);
      v42 = v40 & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v30 + 8 * (v42 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v41) >> 6;
        while (++v43 != v46 || (v45 & 1) == 0)
        {
          v47 = v43 == v46;
          if (v43 == v46)
          {
            v43 = 0;
          }

          v45 |= v47;
          v48 = *(v30 + 8 * v43);
          if (v48 != -1)
          {
            v44 = __clz(__rbit64(~v48)) + (v43 << 6);
            goto LABEL_45;
          }
        }

        goto LABEL_50;
      }

      v44 = __clz(__rbit64((-1 << v42) & ~*(v30 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_45:
      *(v30 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
      v49 = 16 * v44;
      v50 = (*(v25 + 48) + v49);
      *v50 = v36;
      v50[1] = v37;
      v51 = (*(v25 + 56) + v49);
      *v51 = v57;
      v51[1] = v39;
      ++*(v25 + 16);
      v23 = __OFSUB__(v16--, 1);
      if (v23)
      {
        goto LABEL_52;
      }

      v26 = v52;
      v27 = v53;
      v28 = v55;
      if (!v16)
      {
        goto LABEL_47;
      }
    }

    v32 = v29;
    while (1)
    {
      v29 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v29 >= v26)
      {
        goto LABEL_47;
      }

      v33 = v27[v29];
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v55 = (v33 - 1) & v33;
        goto LABEL_35;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t getEnumTagSinglePayload for LoadedScopeCache.ScopeType(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LoadedScopeCache.ScopeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *specialized Collection<>.subscript.getter@<X0>(void *result@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = *(v2 + 120);
  if (v5 < v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = *(v2 + 72);
  v8 = *(v2 + 96);
  v9 = *(v2 + 184);
  v10 = *(v2 + 208);
  if (v4 < v5 || v8 == 2)
  {
    goto LABEL_8;
  }

  if (v10 != 2)
  {
    if (v9 >> 10 >= v7 >> 10)
    {
LABEL_8:
      v12 = *(v2 + 32);
      v28 = *(v2 + 16);
      v29 = v12;
      v30 = *(v2 + 48);
      v13 = *(v2 + 64);
      v33 = *(v2 + 80);
      v36 = *(v2 + 112);
      v14 = *(v2 + 104);
      v15 = *(v2 + 128);
      v16 = *(v2 + 144);
      v40 = *(v2 + 160);
      v39 = v16;
      v43 = *(v2 + 192);
      v46 = *(v2 + 224);
      v17 = *(v2 + 176);
      v38 = v15;
      v27 = v4;
      v18 = *(v2 + 216);
      v31 = v13;
      v32 = v7;
      v34 = v8;
      v35 = v14;
      v37 = v5;
      v41 = v17;
      v42 = v9;
      v44 = v10;
      v45 = v18;
      specialized Collection._failEarlyRangeCheck(_:bounds:)(result, &v27);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVy10Foundation16AttributedStringV4RunsVGMd);
      result = outlined init with copy of AttributedString.Runs.NSAttributesSlice(v2, a2 + *(v19 + 40), type metadata accessor for AttributedString.Runs);
      v20 = v6[5];
      a2[4] = v6[4];
      a2[5] = v20;
      *(a2 + 90) = *(v6 + 90);
      v21 = v6[1];
      *a2 = *v6;
      a2[1] = v21;
      v22 = v6[3];
      a2[2] = v6[2];
      a2[3] = v22;
      v23 = v6[8];
      a2[7] = v6[7];
      a2[8] = v23;
      v24 = v6[9];
      v25 = v6[10];
      *(a2 + 202) = *(v6 + 202);
      v26 = v6[12];
      a2[11] = v6[11];
      a2[12] = v26;
      a2[9] = v24;
      a2[10] = v25;
      return result;
    }

    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *specialized Collection<>.subscript.getter@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (v2[12] == 2)
  {
    goto LABEL_10;
  }

  if (v2[26] != 2)
  {
    v4 = v2[23] >> 10;
    v5 = v2[9] >> 10;
    if (v4 < v5)
    {
      __break(1u);
    }

    else
    {
      v6 = result;
      v7 = *result;
      if (v5 <= *result >> 10)
      {
        v8 = result[5];
        if (v4 >= v8 >> 10)
        {
          v9 = result[4];
          v10 = result[9];
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVy10Foundation16AttributedStringV4RunsV012NSAttributesA0VGMd);
          result = outlined init with copy of AttributedString.Runs.NSAttributesSlice(v2, a2 + *(v11 + 40), type metadata accessor for AttributedString.Runs.NSAttributesSlice);
          *a2 = v7;
          *(a2 + 8) = *(v6 + 1);
          *(a2 + 24) = v6[3];
          *(a2 + 32) = v9;
          *(a2 + 40) = v8;
          *(a2 + 48) = *(v6 + 3);
          *(a2 + 64) = v6[8];
          *(a2 + 72) = v10;
          return result;
        }

        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection<>.subscript.getter@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a2[9];
  if (v6)
  {
    v7 = a2[11];
  }

  else
  {
    v7 = 0;
  }

  if (a3 < 0 || (v8 = a3, v7 < a3))
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v10 = a2;
  v11 = result;
  if (v6)
  {
    v62 = result;
    v58 = a2[12];
    v60 = a2[10];
    v12 = (v6 + 16);
    v13 = *(v6 + 16);
    v14 = *(v6 + 18);
    if (a2[11] > a3 && v13 != 0)
    {
      result = swift_unknownObjectRetain_n();
      v64 = a4;
      if (v14)
      {
        v19 = v8;
        v20 = v14;
        v21 = v6;
        do
        {
          v22 = *v12;
          if (*v12)
          {
            v23 = 0;
            v24 = (v21 + 40);
            while (1)
            {
              v25 = *v24;
              v24 += 3;
              v26 = v19 - v25;
              if (__OFSUB__(v19, v25))
              {
                break;
              }

              if (__OFADD__(v26, 1))
              {
                goto LABEL_89;
              }

              if (v26 + 1 < 1)
              {
                v22 = v23;
                goto LABEL_17;
              }

              ++v23;
              v19 = v26;
              if (v22 == v23)
              {
                goto LABEL_26;
              }
            }

            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
            goto LABEL_92;
          }

          v26 = v19;
LABEL_26:
          if (v26)
          {
            goto LABEL_94;
          }

          v19 = 0;
LABEL_17:
          v20 = (v22 << ((4 * v14 + 8) & 0x3C)) | ((-15 << ((4 * v14 + 8) & 0x3C)) - 1) & v20;
          v18 = *(v21 + 24 + 24 * v22);
          swift_unknownObjectRetain();
          result = swift_unknownObjectRelease();
          v12 = (v18 + 16);
          LOBYTE(v14) = *(v18 + 18);
          v21 = v18;
        }

        while (v14);
        LODWORD(v13) = *v12;
        if (*v12)
        {
          goto LABEL_31;
        }

        v27 = 0;
        v11 = v62;
LABEL_37:
        if (!v19)
        {
          v17 = 0;
LABEL_39:
          swift_unknownObjectRelease();
          v16 = v20 & 0xFFFFFFFFFFFFF0FFLL | (v27 << 8);
          v10 = a2;
          a4 = v64;
          goto LABEL_40;
        }

        goto LABEL_106;
      }

      v20 = 0;
      v19 = v8;
      v18 = v6;
LABEL_31:
      v11 = v62;
      v27 = 0;
      v28 = 24;
      v17 = v19;
      while (1)
      {
        v29 = *(v18 + v28);
        v19 = v17 - v29;
        if (__OFSUB__(v17, v29))
        {
          break;
        }

        if (__OFADD__(v19, 1))
        {
          goto LABEL_93;
        }

        if (v19 + 1 < 1)
        {
          goto LABEL_39;
        }

        ++v27;
        v28 += 24;
        v17 -= v29;
        if (v13 == v27)
        {
          v27 = v13;
          goto LABEL_37;
        }
      }

LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v16 = ((-15 << ((4 * v14 + 8) & 0x3C)) - 1) & v14 | (v13 << ((4 * v14 + 8) & 0x3C));
    swift_unknownObjectRetain();
    v17 = 0;
    v18 = 0;
    v11 = v62;
LABEL_40:
    specialized Rope._Node.distanceFromStart<A>(to:in:)(v58, v16, v18, v6, v60);
    result = swift_unknownObjectRelease();
    v8 = a3;
  }

  else
  {
    v17 = 0;
  }

  v30 = __OFSUB__(v8, v17);
  v31 = v8 - v17;
  if (v30)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v32 = v10[9];
  if (v8 == a4)
  {
    v65 = a4;
    if (v32)
    {
      v33 = v10[11];
      if (v33 < v8)
      {
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      v59 = v10[10];
      v61 = v31;
      v55 = v10[12];
      v34 = (v32 + 16);
      v35 = *(v32 + 16);
      v36 = *(v32 + 18);
      if (*(v32 + 16) && v33 > v8)
      {
        v63 = v11;
        v57 = v10;
        result = swift_unknownObjectRetain_n();
        if (v36)
        {
          v37 = v8;
          v38 = v36;
          v39 = v32;
          do
          {
            v40 = *v34;
            if (*v34)
            {
              v42 = 0;
              v43 = (v39 + 40);
              while (1)
              {
                v44 = *v43;
                v43 += 3;
                v45 = v37 - v44;
                if (__OFSUB__(v37, v44))
                {
                  goto LABEL_90;
                }

                if (__OFADD__(v45, 1))
                {
                  goto LABEL_91;
                }

                if (v45 + 1 < 1)
                {
                  v40 = v42;
                  goto LABEL_50;
                }

                ++v42;
                v37 = v45;
                if (v40 == v42)
                {
                  goto LABEL_59;
                }
              }
            }

            v45 = v37;
LABEL_59:
            if (v45)
            {
              goto LABEL_97;
            }

            v37 = 0;
LABEL_50:
            v38 = (v40 << ((4 * v36 + 8) & 0x3C)) | ((-15 << ((4 * v36 + 8) & 0x3C)) - 1) & v38;
            v41 = *(v39 + 24 + 24 * v40);
            swift_unknownObjectRetain();
            result = swift_unknownObjectRelease();
            v34 = (v41 + 16);
            LOBYTE(v36) = *(v41 + 18);
            v39 = v41;
          }

          while (v36);
          LODWORD(v35) = *v34;
          if (*v34)
          {
            goto LABEL_70;
          }

          v49 = 0;
LABEL_76:
          if (!v37)
          {
            v47 = 0;
LABEL_78:
            swift_unknownObjectRelease();
            v48 = v38 & 0xFFFFFFFFFFFFF0FFLL | (v49 << 8);
            v10 = v57;
            v11 = v63;
            goto LABEL_79;
          }

          goto LABEL_107;
        }

        v38 = 0;
        v37 = v8;
        v41 = v32;
LABEL_70:
        v49 = 0;
        v50 = 24;
        v47 = v37;
        while (1)
        {
          v51 = *(v41 + v50);
          v37 = v47 - v51;
          if (__OFSUB__(v47, v51))
          {
            break;
          }

          if (__OFADD__(v37, 1))
          {
            goto LABEL_96;
          }

          if (v37 + 1 < 1)
          {
            goto LABEL_78;
          }

          ++v49;
          v50 += 24;
          v47 -= v51;
          if (v35 == v49)
          {
            v49 = v35;
            goto LABEL_76;
          }
        }

LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v48 = ((-15 << ((4 * v36 + 8) & 0x3C)) - 1) & v36 | (v35 << ((4 * v36 + 8) & 0x3C));
      swift_unknownObjectRetain();
      v47 = 0;
      v41 = 0;
LABEL_79:
      specialized Rope._Node.distanceFromStart<A>(to:in:)(v55, v48, v41, v32, v59);
      result = swift_unknownObjectRelease();
      v8 = a3;
      v31 = v61;
    }

    else
    {
      if (v8 > 0)
      {
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
        return result;
      }

      v47 = 0;
    }

    v46 = v8 - v47;
    if (__OFSUB__(v8, v47))
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    a4 = v65;
  }

  else
  {
    v46 = v10[11];
    result = swift_unknownObjectRetain();
    if (v32)
    {
      result = swift_unknownObjectRelease();
    }

    else
    {
      v46 = 0;
    }
  }

  if (v46 < v31)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v52 = *(v11 + 32);
  if (v52 < v31)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v53 = *(v11 + 72);
  if (v46 < v53)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  *(a5 + 88) = v8;
  *(a5 + 96) = a4;
  v54 = *(v11 + 16);
  *a5 = *v11;
  *(a5 + 16) = v54;
  *(a5 + 32) = v52;
  *(a5 + 40) = *(v11 + 40);
  *(a5 + 56) = *(v11 + 56);
  *(a5 + 72) = v53;
  *(a5 + 80) = v10;
}

unint64_t specialized Collection<>.subscript.getter@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (*(v3 + 80) >> 9) & 0x3FFFFFFFFFFFCLL;
  v5 = (*(v3 + 48) >> 9) & 0x3FFFFFFFFFFFCLL;
  if (v4 < v5)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 > result >> 14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 >= a2 >> 14)
  {
    v6 = *(v3 + 80);
    *(a3 + 80) = *(v3 + 64);
    *(a3 + 96) = v6;
    *(a3 + 112) = *(v3 + 96);
    v7 = *(v3 + 16);
    *(a3 + 16) = *v3;
    *(a3 + 32) = v7;
    v8 = *(v3 + 48);
    *(a3 + 48) = *(v3 + 32);
    *(a3 + 64) = v8;
    *a3 = result;
    *(a3 + 8) = a2;
    return outlined init with copy of AttributedString._IndexConverterFromString(v3, &v9);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *Range<>.init<A, B>(_:in:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v41 = a5;
  v43 = a7;
  Description = a4[-1].Description;
  MEMORY[0x1EEE9AC00](a1);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v15);
  v42 = v18;
  (*(v18 + 16))(&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySS5IndexVGMd);
  if (swift_dynamicCast())
  {
    v19 = v42;
    v41 = a3;
    v20 = v44;
    Description[2](v14, a2, a4);
    Range<>.init<A>(_range:in:)(v20, *(&v20 + 1), v14, a4, a6, &v54);
    (Description[1])(a2, a4);
    result = (*(v19 + 8))(a1, v41);
    v22 = *(&v55 + 1);
    if (*(&v55 + 1) != 2)
    {
      v63 = v54;
      v64 = v55;
      v60 = v56;
      v61 = v57;
      v23 = v58;
LABEL_12:
      v62 = v23;
      v34 = v43;
      *v43 = v63;
      *(v34 + 2) = v64;
      *(v34 + 3) = v22;
      v35 = v61;
      v34[2] = v60;
      v34[3] = v35;
      v34[4] = v62;
      return result;
    }

    goto LABEL_10;
  }

  v39 = a1;
  if (a4 == &type metadata for AttributedString || a4 == &type metadata for AttributedSubstring)
  {
    v24 = *a2;
  }

  else
  {
    (*(a6 + 56))(&v54, a4, a6);
    v24 = v54;
  }

  v25 = *(v24 + 40);
  v26 = *(v24 + 24);
  v27 = *(v24 + 64);
  *&v36 = *(v24 + 56);
  *(&v36 + 1) = v27;
  v37 = v26;
  v38 = v25;
  swift_unknownObjectRetain();

  (*(a6 + 32))(&v44, a4, a6);
  v40 = v44;
  v28 = v45;
  v29 = a2;
  result = (*(a6 + 40))(&v51, a4, a6);
  if (v51 >> 10 >= v40 >> 10)
  {
    v54 = v37;
    v55 = v38;
    v56 = v36;
    v57 = v40;
    v58 = v28;
    *(v59 + 8) = v52;
    *&v59[0] = v51;
    *(&v59[1] + 1) = v53;
    v48 = v28;
    v49 = v59[0];
    v50 = v59[1];
    v44 = v37;
    v45 = v38;
    v46 = v36;
    v47 = v40;
    lazy protocol witness table accessor for type AttributedString._IndexConverterFromString and conformance AttributedString._IndexConverterFromString();
    v30 = v39;
    dispatch thunk of RangeExpression.relative<A>(to:)();
    v31 = v51;
    v32 = v52;
    Description[2](v14, v29, a4);
    Range<>.init<A>(_range:in:)(v31, v32, v14, a4, a6, &v44);
    outlined destroy of AttributedString._IndexConverterFromString(&v54);
    (Description[1])(v29, a4);
    result = (*(v42 + 8))(v30, a3);
    v22 = *(&v45 + 1);
    if (*(&v45 + 1) != 2)
    {
      v63 = v44;
      v64 = v45;
      v60 = v46;
      v61 = v47;
      v23 = v48;
      goto LABEL_12;
    }

LABEL_10:
    v33 = v43;
    *v43 = 0;
    *(v33 + 1) = 0;
    *(v33 + 2) = 0;
    *(v33 + 3) = 2;
    v33[2] = 0u;
    v33[3] = 0u;
    v33[4] = 0u;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t String.init(_:)(_OWORD *a1)
{
  v1 = a1[7];
  v8[6] = a1[6];
  v8[7] = v1;
  v2 = a1[9];
  v8[8] = a1[8];
  v8[9] = v2;
  v3 = a1[3];
  v8[2] = a1[2];
  v8[3] = v3;
  v4 = a1[5];
  v8[4] = a1[4];
  v8[5] = v4;
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  Slice<>._characters.getter(v7);
  outlined destroy of TermOfAddress?(v8, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd);
  return MEMORY[0x1865CAF70](v7);
}

uint64_t String.init(_characters:)(_OWORD *a1)
{
  v1 = a1[4];
  *&v15[48] = a1[3];
  *&v15[64] = v1;
  v2 = a1[2];
  *&v15[16] = a1[1];
  *&v15[32] = v2;
  *v15 = *a1;
  v3 = *(*v15 + 56);
  v4 = *(*v15 + 64);
  v6 = *(*v15 + 24);
  v7 = *(*v15 + 40);
  swift_unknownObjectRetain();
  outlined destroy of AttributedString.CharacterView(v15);
  v11 = *&v15[8];
  v12 = *&v15[24];
  v13 = *&v15[40];
  v14 = *&v15[56];
  v8[0] = v6;
  v8[1] = v7;
  v9 = v3;
  v10 = v4;
  return MEMORY[0x1865CAF70](v8);
}

id static ObjectiveCConvertibleAttributedStringKey<>.objectiveCValue(for:)()
{
  swift_getAssociatedTypeWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  return [objc_allocWithZone(NSNumber) initWithInteger_];
}

id static ObjectiveCConvertibleAttributedStringKey<>.value(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77[4] = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v73 - v8;
  v77[0] = [a1 integerValue];
  dispatch thunk of RawRepresentable.init(rawValue:)();
  v10 = *(AssociatedTypeWitness - 8);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v10 + 32))(a2, v9, AssociatedTypeWitness);
  }

  (*(v6 + 8))(v9, v5);
  isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v12 = @"NSCocoaErrorDomain";
  v13 = v12;
  if (!isTaggedPointer)
  {
    goto LABEL_8;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v12);
  switch(TaggedPointerTag)
  {
    case 0:
LABEL_19:
      v75 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v21)
      {
        [(__CFString *)v13 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_36;
      }

      goto LABEL_33;
    case 0x16:
      result = [(__CFString *)v13 UTF8String];
      if (!result)
      {
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      String.init(utf8String:)(result);
      if (v20)
      {
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_19;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      *(&v73 - 2) = v13;
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_36;
  }

LABEL_8:
  LOBYTE(v73) = 0;
  v77[0] = 0;
  LOBYTE(v75) = 0;
  v76 = 0;
  IsCF = __CFStringIsCF();
  if (!IsCF)
  {
    v18 = v13;
    String.init(_nativeStorage:)();
    if (v19 || (v77[0] = [(__CFString *)v18 length]) == 0)
    {

      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v17 = v77[0];
  if (!v77[0])
  {
LABEL_33:

    goto LABEL_36;
  }

  if (v76 != 1)
  {
    if (v75)
    {
      if (v73 == 1)
      {
        MEMORY[0x1EEE9AC00](IsCF);
        *(&v73 - 4) = v13;
        *(&v73 - 3) = v77;
        *(&v73 - 4) = 1536;
        *(&v73 - 1) = v17;
      }

      else
      {
        v22 = [(__CFString *)v13 lengthOfBytesUsingEncoding:4];
        MEMORY[0x1EEE9AC00](v22);
        *(&v73 - 4) = v13;
        *(&v73 - 3) = v77;
        *(&v73 - 4) = 134217984;
        *(&v73 - 1) = v23;
      }

      v24 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v26 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v26 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    String.init(_cocoaString:)();
    goto LABEL_36;
  }

  if (v73)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_36:
  v27 = objc_allocWithZone(NSError);
  v28 = String._bridgeToObjectiveCImpl()();

  v29 = [v27 initWithDomain:v28 code:4866 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v30 = [v29 domain];
  if (!v30)
  {
    goto LABEL_50;
  }

  v31 = v30;
  v32 = _objc_isTaggedPointer(v30);
  v33 = v31;
  v34 = v33;
  if ((v32 & 1) == 0)
  {
LABEL_42:
    LOBYTE(v73) = 0;
    v77[0] = 0;
    LOBYTE(v75) = 0;
    v76 = 0;
    v39 = __CFStringIsCF();
    if (v39)
    {
      v40 = v77[0];
      if (v77[0])
      {
        if (v76 == 1)
        {
          if (v73)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v46 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_72;
        }

        if (v75)
        {
          if (v73 == 1)
          {
            MEMORY[0x1EEE9AC00](v39);
            *(&v73 - 4) = v34;
            *(&v73 - 3) = v77;
            *(&v73 - 4) = 1536;
            *(&v73 - 1) = v40;
          }

          else
          {
            v48 = [v34 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v48);
            *(&v73 - 4) = v34;
            *(&v73 - 3) = v77;
            *(&v73 - 4) = 134217984;
            *(&v73 - 1) = v49;
          }

          v50 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v38 = v51;
          v52 = HIBYTE(v51) & 0xF;
          if ((v51 & 0x2000000000000000) == 0)
          {
            v52 = v50 & 0xFFFFFFFFFFFFLL;
          }

          if (v52)
          {
            v36 = v50;
            goto LABEL_56;
          }
        }

LABEL_71:
        v46 = String.init(_cocoaString:)();
LABEL_72:
        v36 = v46;
        v38 = v47;
        goto LABEL_73;
      }
    }

    else
    {
      v41 = v34;
      v42 = String.init(_nativeStorage:)();
      if (v43)
      {
        v36 = v42;
        v38 = v43;

        goto LABEL_74;
      }

      v77[0] = [v41 length];
      if (v77[0])
      {
        goto LABEL_71;
      }
    }

LABEL_50:
    v36 = 0;
    v38 = 0xE000000000000000;
    goto LABEL_74;
  }

  v35 = _objc_getTaggedPointerTag(v33);
  if (!v35)
  {
    goto LABEL_54;
  }

  if (v35 != 22)
  {
    if (v35 == 2)
    {
      MEMORY[0x1EEE9AC00](v35);
      *(&v73 - 2) = v34;
      v36 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v38 = v37;

      goto LABEL_74;
    }

    goto LABEL_42;
  }

  result = [v34 UTF8String];
  if (!result)
  {
LABEL_116:
    __break(1u);
    return result;
  }

  v44 = String.init(utf8String:)(result);
  if (!v45)
  {
    __break(1u);
LABEL_54:
    v75 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v44 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v45)
    {
      [v34 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v36 = v73;
      v38 = v74;
      goto LABEL_73;
    }
  }

  v36 = v44;
  v38 = v45;
LABEL_56:

LABEL_73:
LABEL_74:
  v53 = v13;
  v54 = v53;
  if (!isTaggedPointer)
  {
    goto LABEL_79;
  }

  v55 = _objc_getTaggedPointerTag(v53);
  switch(v55)
  {
    case 0:
      goto LABEL_90;
    case 0x16:
      result = [(__CFString *)v54 UTF8String];
      if (result)
      {
        v63 = String.init(utf8String:)(result);
        if (v64)
        {
          goto LABEL_91;
        }

        __break(1u);
LABEL_90:
        v75 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v63 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v64)
        {
          [(__CFString *)v54 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v56 = v73;
          v58 = v74;
          goto LABEL_108;
        }

LABEL_91:
        v56 = v63;
        v58 = v64;

        goto LABEL_108;
      }

      goto LABEL_115;
    case 2:
      MEMORY[0x1EEE9AC00](v55);
      *(&v73 - 2) = v54;
      v56 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v58 = v57;

      goto LABEL_108;
  }

LABEL_79:
  LOBYTE(v73) = 0;
  v77[0] = 0;
  LOBYTE(v75) = 0;
  v76 = 0;
  v59 = __CFStringIsCF();
  if (v59)
  {
    v56 = v77[0];
    if (!v77[0])
    {

      v58 = 0xE000000000000000;
      goto LABEL_108;
    }

    if (v76 == 1)
    {
      if (v73)
      {
        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
      }

      else
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
      }

      v65 = String.init<A>(_immortalCocoaString:count:encoding:)();
      goto LABEL_107;
    }

    if (v75)
    {
      if (v73 == 1)
      {
        MEMORY[0x1EEE9AC00](v59);
        *(&v73 - 4) = v54;
        *(&v73 - 3) = v77;
        *(&v73 - 4) = 1536;
        *(&v73 - 1) = v56;
      }

      else
      {
        v67 = [(__CFString *)v54 lengthOfBytesUsingEncoding:4];
        MEMORY[0x1EEE9AC00](v67);
        *(&v73 - 4) = v54;
        *(&v73 - 3) = v77;
        *(&v73 - 4) = 134217984;
        *(&v73 - 1) = v68;
      }

      v69 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v58 = v70;
      v71 = HIBYTE(v70) & 0xF;
      if ((v70 & 0x2000000000000000) == 0)
      {
        v71 = v69 & 0xFFFFFFFFFFFFLL;
      }

      if (v71)
      {
        v56 = v69;

        goto LABEL_108;
      }
    }
  }

  else
  {
    v60 = v54;
    v61 = String.init(_nativeStorage:)();
    if (v62)
    {
      v56 = v61;
      v58 = v62;

      goto LABEL_108;
    }

    v77[0] = [(__CFString *)v60 length];
    if (!v77[0])
    {

      v56 = 0;
      v58 = 0xE000000000000000;
      goto LABEL_108;
    }
  }

  v65 = String.init(_cocoaString:)();
LABEL_107:
  v56 = v65;
  v58 = v66;
LABEL_108:
  if (v36 == v56 && v38 == v58)
  {
  }

  else
  {
    v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v72 & 1) == 0)
    {
      __break(1u);
    }
  }

  return swift_willThrow();
}

{
  v97 = a2;
  v103[4] = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v97 - v7;
  isTaggedPointer = _objc_isTaggedPointer(a1);
  v10 = a1;
  v11 = v10;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v10);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_18;
    case 0x16:
      v98 = v2;
      result = [v11 UTF8String];
      if (!result)
      {
        __break(1u);
        goto LABEL_150;
      }

      v22 = String.init(utf8String:)(result);
      if (v23)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_18:
      v98 = v2;
      v101 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v22 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v23)
      {
        [v11 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v13 = v99;
        v15 = v100;
        goto LABEL_36;
      }

LABEL_19:
      v13 = v22;
      v15 = v23;

      goto LABEL_36;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      *(&v97 - 2) = v11;
      v13 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v15 = v14;
      v98 = v2;

      goto LABEL_36;
  }

LABEL_6:
  LOBYTE(v99) = 0;
  v103[0] = 0;
  LOBYTE(v101) = 0;
  v102 = 0;
  IsCF = __CFStringIsCF();
  v98 = v2;
  if (!IsCF)
  {
    v18 = v11;
    v19 = String.init(_nativeStorage:)();
    if (v20)
    {
      v13 = v19;
      v15 = v20;

      goto LABEL_36;
    }

    v103[0] = [v18 length];
    if (v103[0])
    {
      goto LABEL_34;
    }

LABEL_14:
    v13 = 0;
    v15 = 0xE000000000000000;
    goto LABEL_36;
  }

  v17 = v103[0];
  if (!v103[0])
  {

    goto LABEL_14;
  }

  if (v102 == 1)
  {
    if (v99)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    v24 = String.init<A>(_immortalCocoaString:count:encoding:)();
    goto LABEL_35;
  }

  if (v101)
  {
    if (v99 == 1)
    {
      MEMORY[0x1EEE9AC00](IsCF);
      *(&v97 - 4) = v11;
      *(&v97 - 3) = v103;
      *(&v97 - 4) = 1536;
      *(&v97 - 1) = v17;
    }

    else
    {
      v26 = [v11 lengthOfBytesUsingEncoding_];
      MEMORY[0x1EEE9AC00](v26);
      *(&v97 - 4) = v11;
      *(&v97 - 3) = v103;
      *(&v97 - 4) = 134217984;
      *(&v97 - 1) = v27;
    }

    v28 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    v15 = v29;
    v98 = v2;
    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      v13 = v28;

      goto LABEL_36;
    }
  }

LABEL_34:
  v24 = String.init(_cocoaString:)();
LABEL_35:
  v13 = v24;
  v15 = v25;
LABEL_36:
  v103[0] = v13;
  v103[1] = v15;
  dispatch thunk of RawRepresentable.init(rawValue:)();
  v31 = *(AssociatedTypeWitness - 8);
  if ((*(v31 + 48))(v8, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v31 + 32))(v97, v8, AssociatedTypeWitness);
  }

  (*(v6 + 8))(v8, v5);
  v32 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v33 = @"NSCocoaErrorDomain";
  v34 = v33;
  if (!v32)
  {
    goto LABEL_43;
  }

  v35 = _objc_getTaggedPointerTag(v33);
  switch(v35)
  {
    case 0:
LABEL_54:
      v101 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v42)
      {
        [(__CFString *)v34 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0x16:
      result = [(__CFString *)v34 UTF8String];
      if (result)
      {
        String.init(utf8String:)(result);
        if (v41)
        {
          goto LABEL_68;
        }

        __break(1u);
        goto LABEL_54;
      }

LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    case 2:
      MEMORY[0x1EEE9AC00](v35);
      *(&v97 - 2) = v34;
      v36 = v98;
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v98 = v36;

      goto LABEL_71;
  }

LABEL_43:
  LOBYTE(v99) = 0;
  v103[0] = 0;
  LOBYTE(v101) = 0;
  v102 = 0;
  v37 = __CFStringIsCF();
  if (!v37)
  {
    v39 = v34;
    String.init(_nativeStorage:)();
    if (v40 || (v103[0] = [(__CFString *)v39 length]) == 0)
    {

      goto LABEL_71;
    }

    goto LABEL_70;
  }

  v38 = v103[0];
  if (!v103[0])
  {
LABEL_68:

    goto LABEL_71;
  }

  if (v102 != 1)
  {
    if (v101)
    {
      if (v99 == 1)
      {
        MEMORY[0x1EEE9AC00](v37);
        *(&v97 - 4) = v34;
        *(&v97 - 3) = v103;
        *(&v97 - 4) = 1536;
        *(&v97 - 1) = v38;
      }

      else
      {
        v43 = [(__CFString *)v34 lengthOfBytesUsingEncoding:4];
        MEMORY[0x1EEE9AC00](v43);
        *(&v97 - 4) = v34;
        *(&v97 - 3) = v103;
        *(&v97 - 4) = 134217984;
        *(&v97 - 1) = v44;
      }

      v45 = v98;
      v46 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v98 = v45;
      v48 = HIBYTE(v47) & 0xF;
      if ((v47 & 0x2000000000000000) == 0)
      {
        v48 = v46 & 0xFFFFFFFFFFFFLL;
      }

      if (v48)
      {
        goto LABEL_68;
      }
    }

LABEL_70:
    String.init(_cocoaString:)();
    goto LABEL_71;
  }

  if (v99)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_71:
  v49 = objc_allocWithZone(NSError);
  v50 = String._bridgeToObjectiveCImpl()();

  v51 = [v49 initWithDomain:v50 code:4866 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v52 = [v51 domain];
  if (!v52)
  {
    goto LABEL_85;
  }

  v53 = v52;
  v54 = _objc_isTaggedPointer(v52);
  v55 = v53;
  v56 = v55;
  if ((v54 & 1) == 0)
  {
LABEL_77:
    LOBYTE(v99) = 0;
    v103[0] = 0;
    LOBYTE(v101) = 0;
    v102 = 0;
    v62 = __CFStringIsCF();
    if (v62)
    {
      v63 = v103[0];
      if (v103[0])
      {
        if (v102 == 1)
        {
          if (v99)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v69 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_107;
        }

        if (v101)
        {
          if (v99 == 1)
          {
            MEMORY[0x1EEE9AC00](v62);
            *(&v97 - 4) = v56;
            *(&v97 - 3) = v103;
            *(&v97 - 4) = 1536;
            *(&v97 - 1) = v63;
          }

          else
          {
            v71 = [v56 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v71);
            *(&v97 - 4) = v56;
            *(&v97 - 3) = v103;
            *(&v97 - 4) = 134217984;
            *(&v97 - 1) = v72;
          }

          v73 = v98;
          v74 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v61 = v75;
          v98 = v73;
          v76 = HIBYTE(v75) & 0xF;
          if ((v75 & 0x2000000000000000) == 0)
          {
            v76 = v74 & 0xFFFFFFFFFFFFLL;
          }

          if (v76)
          {
            v59 = v74;
            goto LABEL_91;
          }
        }

LABEL_106:
        v69 = String.init(_cocoaString:)();
LABEL_107:
        v59 = v69;
        v61 = v70;
        goto LABEL_108;
      }
    }

    else
    {
      v64 = v56;
      v65 = String.init(_nativeStorage:)();
      if (v66)
      {
        v59 = v65;
        v61 = v66;

        goto LABEL_109;
      }

      v103[0] = [v64 length];
      if (v103[0])
      {
        goto LABEL_106;
      }
    }

LABEL_85:
    v59 = 0;
    v61 = 0xE000000000000000;
    goto LABEL_109;
  }

  v57 = _objc_getTaggedPointerTag(v55);
  if (!v57)
  {
    goto LABEL_89;
  }

  if (v57 != 22)
  {
    if (v57 == 2)
    {
      MEMORY[0x1EEE9AC00](v57);
      *(&v97 - 2) = v56;
      v58 = v98;
      v59 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v61 = v60;
      v98 = v58;

      goto LABEL_109;
    }

    goto LABEL_77;
  }

  result = [v56 UTF8String];
  if (!result)
  {
LABEL_152:
    __break(1u);
    return result;
  }

  v67 = String.init(utf8String:)(result);
  if (!v68)
  {
    __break(1u);
LABEL_89:
    v101 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v67 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v68)
    {
      [v56 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v59 = v99;
      v61 = v100;
      goto LABEL_108;
    }
  }

  v59 = v67;
  v61 = v68;
LABEL_91:

LABEL_108:
LABEL_109:
  v77 = v34;
  v78 = v77;
  if (!v32)
  {
    goto LABEL_114;
  }

  v79 = _objc_getTaggedPointerTag(v77);
  switch(v79)
  {
    case 0:
      goto LABEL_125;
    case 0x16:
      result = [(__CFString *)v78 UTF8String];
      if (result)
      {
        v87 = String.init(utf8String:)(result);
        if (v88)
        {
          goto LABEL_126;
        }

        __break(1u);
LABEL_125:
        v101 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v87 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v88)
        {
          [(__CFString *)v78 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v80 = v99;
          v82 = v100;
          goto LABEL_143;
        }

LABEL_126:
        v80 = v87;
        v82 = v88;

        goto LABEL_143;
      }

      goto LABEL_151;
    case 2:
      MEMORY[0x1EEE9AC00](v79);
      *(&v97 - 2) = v78;
      v80 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v82 = v81;

      goto LABEL_143;
  }

LABEL_114:
  LOBYTE(v99) = 0;
  v103[0] = 0;
  LOBYTE(v101) = 0;
  v102 = 0;
  v83 = __CFStringIsCF();
  if (v83)
  {
    v80 = v103[0];
    if (!v103[0])
    {

      v82 = 0xE000000000000000;
      goto LABEL_143;
    }

    if (v102 == 1)
    {
      if (v99)
      {
        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
      }

      else
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
      }

      v89 = String.init<A>(_immortalCocoaString:count:encoding:)();
      goto LABEL_142;
    }

    if (v101)
    {
      if (v99 == 1)
      {
        MEMORY[0x1EEE9AC00](v83);
        *(&v97 - 4) = v78;
        *(&v97 - 3) = v103;
        *(&v97 - 4) = 1536;
        *(&v97 - 1) = v80;
      }

      else
      {
        v91 = [(__CFString *)v78 lengthOfBytesUsingEncoding:4];
        MEMORY[0x1EEE9AC00](v91);
        *(&v97 - 4) = v78;
        *(&v97 - 3) = v103;
        *(&v97 - 4) = 134217984;
        *(&v97 - 1) = v92;
      }

      v93 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v82 = v94;
      v95 = HIBYTE(v94) & 0xF;
      if ((v94 & 0x2000000000000000) == 0)
      {
        v95 = v93 & 0xFFFFFFFFFFFFLL;
      }

      if (v95)
      {
        v80 = v93;

        goto LABEL_143;
      }
    }
  }

  else
  {
    v84 = v78;
    v85 = String.init(_nativeStorage:)();
    if (v86)
    {
      v80 = v85;
      v82 = v86;

      goto LABEL_143;
    }

    v103[0] = [(__CFString *)v84 length];
    if (!v103[0])
    {

      v80 = 0;
      v82 = 0xE000000000000000;
      goto LABEL_143;
    }
  }

  v89 = String.init(_cocoaString:)();
LABEL_142:
  v80 = v89;
  v82 = v90;
LABEL_143:
  if (v59 == v80 && v61 == v82)
  {
  }

  else
  {
    v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v96 & 1) == 0)
    {
      __break(1u);
    }
  }

  return swift_willThrow();
}

uint64_t static ObjectiveCConvertibleAttributedStringKey<>.objectiveCValue(for:)()
{
  swift_getAssociatedTypeWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v0 = String._bridgeToObjectiveCImpl()();

  return v0;
}

id _s10Foundation40ObjectiveCConvertibleAttributedStringKeyPAASo8NSStringC0B6CValueRtzSY5ValueRpzSSAH_03RawI0SYRTzrlE5value3forAiE_tKFZAA15AttributeScopesO0A10AttributesV019PersonNameComponentM0O_Tt1g5@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v69 = *MEMORY[0x1E69E9840];
  isTaggedPointer = _objc_isTaggedPointer(a1);
  v5 = a1;
  v6 = v5;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v5);
    switch(TaggedPointerTag)
    {
      case 0:
        _CFIndirectTaggedPointerStringGetContents();
        v21 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (v22)
        {
          v23 = v22;
          v24 = v21;

          v11._countAndFlagsBits = v24;
          v11._object = v23;
        }

        else
        {
          [v6 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v11 = v66;
        }

        goto LABEL_20;
      case 0x16:
        result = [v6 UTF8String];
        if (result)
        {
          result = String.init(utf8String:)(result);
          if (v18)
          {
            v19 = result;
            v20 = v18;

            v11._object = v20;
            v11._countAndFlagsBits = v19;
            goto LABEL_20;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_101;
      case 2:
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v8 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v10 = v9;

        v11._countAndFlagsBits = v8;
        v11._object = v10;
        goto LABEL_20;
    }
  }

  LOBYTE(v66._countAndFlagsBits) = 0;
  v68 = 0;
  if (__CFStringIsCF())
  {

LABEL_10:
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    goto LABEL_20;
  }

  v12 = v6;
  v13 = String.init(_nativeStorage:)();
  if (v14)
  {
    v15 = v14;
    v16 = v13;

    v11._countAndFlagsBits = v16;
    v11._object = v15;
    goto LABEL_20;
  }

  v68 = [v12 length];
  if (!v68)
  {

    goto LABEL_10;
  }

  v11._countAndFlagsBits = String.init(_cocoaString:)();
LABEL_20:
  result = AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component.init(rawValue:)(v11, &v67);
  if (v67 != 7)
  {
    *a2 = v67;
    return result;
  }

  v25 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v26 = @"NSCocoaErrorDomain";
  v27 = v26;
  if (!v25)
  {
    goto LABEL_27;
  }

  v28 = _objc_getTaggedPointerTag(v26);
  switch(v28)
  {
    case 0:
LABEL_37:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v32)
      {
        [(__CFString *)v27 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_44;
      }

      goto LABEL_38;
    case 0x16:
      result = [(__CFString *)v27 UTF8String];
      if (result)
      {
        String.init(utf8String:)(result);
        if (v31)
        {
          goto LABEL_38;
        }

        __break(1u);
        goto LABEL_37;
      }

LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    case 2:
      MEMORY[0x1EEE9AC00](v28);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_44;
  }

LABEL_27:
  LOBYTE(v66._countAndFlagsBits) = 0;
  v68 = 0;
  v67 = 0;
  if (!__CFStringIsCF())
  {
    v29 = v27;
    String.init(_nativeStorage:)();
    if (v30 || (v68 = [(__CFString *)v29 length]) == 0)
    {

      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if (!v68)
  {
LABEL_38:

    goto LABEL_44;
  }

  if (v67 == 1)
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    String.init<A>(_immortalCocoaString:count:encoding:)();
    goto LABEL_44;
  }

LABEL_43:
  String.init(_cocoaString:)();
LABEL_44:
  v33 = objc_allocWithZone(NSError);
  v34 = String._bridgeToObjectiveCImpl()();

  v35 = [v33 initWithDomain:v34 code:4866 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v36 = [v35 domain];
  if (!v36)
  {
    goto LABEL_57;
  }

  v37 = v36;
  v38 = _objc_isTaggedPointer(v36);
  v39 = v37;
  v40 = v39;
  if (!v38)
  {
LABEL_50:
    LOBYTE(v66._countAndFlagsBits) = 0;
    v68 = 0;
    v67 = 0;
    if (__CFStringIsCF())
    {
      if (v68)
      {
        if (v67 == 1)
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          v50 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_68:
          countAndFlagsBits = v50;
          object = v51;
          goto LABEL_69;
        }

LABEL_67:
        v50 = String.init(_cocoaString:)();
        goto LABEL_68;
      }
    }

    else
    {
      v45 = v40;
      v46 = String.init(_nativeStorage:)();
      if (v47)
      {
        countAndFlagsBits = v46;
        object = v47;

        goto LABEL_70;
      }

      v68 = [v45 length];
      if (v68)
      {
        goto LABEL_67;
      }
    }

LABEL_57:
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
    goto LABEL_70;
  }

  v41 = _objc_getTaggedPointerTag(v39);
  if (v41)
  {
    if (v41 != 22)
    {
      if (v41 == 2)
      {
        MEMORY[0x1EEE9AC00](v41);
        countAndFlagsBits = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        object = v43;

        goto LABEL_70;
      }

      goto LABEL_50;
    }

    result = [v40 UTF8String];
    if (!result)
    {
LABEL_103:
      __break(1u);
      return result;
    }

    v48 = String.init(utf8String:)(result);
    if (v49)
    {
      goto LABEL_62;
    }

    __break(1u);
  }

  _CFIndirectTaggedPointerStringGetContents();
  v48 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (!v49)
  {
    [v40 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    object = v66._object;
    countAndFlagsBits = v66._countAndFlagsBits;
    goto LABEL_69;
  }

LABEL_62:
  countAndFlagsBits = v48;
  object = v49;

LABEL_69:
LABEL_70:
  v52 = v27;
  v53 = v52;
  if (!v25)
  {
    goto LABEL_75;
  }

  v54 = _objc_getTaggedPointerTag(v52);
  switch(v54)
  {
    case 0:
      goto LABEL_85;
    case 0x16:
      result = [(__CFString *)v53 UTF8String];
      if (result)
      {
        v61 = String.init(utf8String:)(result);
        if (v62)
        {
          goto LABEL_86;
        }

        __break(1u);
LABEL_85:
        _CFIndirectTaggedPointerStringGetContents();
        v61 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v62)
        {
          [(__CFString *)v53 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v57 = v66._object;
          v55 = v66._countAndFlagsBits;
          goto LABEL_93;
        }

LABEL_86:
        v55 = v61;
        v57 = v62;

        goto LABEL_93;
      }

      goto LABEL_102;
    case 2:
      MEMORY[0x1EEE9AC00](v54);
      v55 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v57 = v56;

      goto LABEL_93;
  }

LABEL_75:
  v68 = 0;
  v67 = 0;
  if (!__CFStringIsCF())
  {
    v58 = v53;
    v59 = String.init(_nativeStorage:)();
    if (v60)
    {
      v55 = v59;
      v57 = v60;

      goto LABEL_93;
    }

    v68 = [(__CFString *)v58 length];
    if (!v68)
    {

      v55 = 0;
      v57 = 0xE000000000000000;
      goto LABEL_93;
    }

    goto LABEL_91;
  }

  v55 = v68;
  if (!v68)
  {

    v57 = 0xE000000000000000;
    goto LABEL_93;
  }

  if (v67 != 1)
  {
LABEL_91:
    v63 = String.init(_cocoaString:)();
    goto LABEL_92;
  }

  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  v63 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_92:
  v55 = v63;
  v57 = v64;
LABEL_93:
  if (countAndFlagsBits == v55 && object == v57)
  {
  }

  else
  {
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v65 & 1) == 0)
    {
      __break(1u);
    }
  }

  return swift_willThrow();
}

uint64_t AttributeContainer.init<A>(_:including:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v334 = a4;
  v335 = a2;
  v381 = *MEMORY[0x1E69E9840];
  LODWORD(v6) = a3;
  v7 = static AttributeScope.scopeDescription.getter(a3);

  v8 = 0;
  v357 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & v9;
  v15 = ((v12 + 63) >> 6);
  v360 = MEMORY[0x1E69E7CC8];
  v347 = v10;
  v348 = v7;
  v358 = v15;
  while (1)
  {
    if (v14)
    {
      v16 = v8;
      goto LABEL_18;
    }

    if (v15 <= v8 + 1)
    {
      v17 = (v8 + 1);
    }

    else
    {
      v17 = v15;
    }

    v18 = v17 - 1;
    do
    {
      v16 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_143;
      }

      if (v16 >= v15)
      {
        v14 = 0;
        v375[0] = 0;
        v8 = v18;
        v373 = 0u;
        v374 = 0u;
        goto LABEL_19;
      }

      v14 = *(v10 + 8 * v16);
      ++v8;
    }

    while (!v14);
    v8 = v16;
LABEL_18:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v16 << 6);
    v21 = *(*(v357 + 48) + 8 * v20);
    outlined init with copy of Any(*(v357 + 56) + 32 * v20, &v368);
    *&v373 = v21;
    outlined init with take of Any(&v368, (&v373 + 8));
    v22 = v21;
LABEL_19:
    v379[0] = v373;
    v379[1] = v374;
    v380 = v375[0];
    v23 = v373;
    if (!v373)
    {

      *v334 = v360;
      return result;
    }

    outlined init with take of Any((v379 + 8), &v377);
    isTaggedPointer = _objc_isTaggedPointer(v23);
    v25 = v23;
    v15 = v25;
    if (!isTaggedPointer)
    {
      goto LABEL_25;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v25);
    if (!TaggedPointerTag)
    {
      LOWORD(v366[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v37 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v38)
      {
        LODWORD(v6) = [v15 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        p_isa = *(&v368 + 1);
        v29 = v368;
        goto LABEL_62;
      }

      p_isa = v38;
LABEL_41:
      v6 = v37;
LABEL_42:

      v29 = v6;
      goto LABEL_62;
    }

    if (TaggedPointerTag == 22)
    {
      v34 = [v15 UTF8String];
      if (v34)
      {
        v35 = String.init(utf8String:)(v34);
        if (v36)
        {
          v6 = v35;
          p_isa = v36;
          goto LABEL_42;
        }

LABEL_364:
        __break(1u);
      }

      __break(1u);
    }

    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      *(&v332 - 2) = v15;
      v27 = v355;
      v6 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      p_isa = v28;
      v355 = v27;

      v29 = v6;
      goto LABEL_32;
    }

LABEL_25:
    LOBYTE(v368) = 0;
    *&v373 = 0;
    LOBYTE(v366[0]) = 0;
    LOBYTE(v361) = 0;
    IsCF = __CFStringIsCF();
    if (!IsCF)
    {
      v6 = v15;
      v31 = String.init(_nativeStorage:)();
      if (v32)
      {
        p_isa = v32;
        v33 = v31;

        v29 = v33;
LABEL_32:
        v7 = v348;
        goto LABEL_62;
      }

      *&v373 = [v6 length];
      if (!v373)
      {

        goto LABEL_35;
      }

LABEL_60:
      v29 = String.init(_cocoaString:)();
      goto LABEL_61;
    }

    v6 = v373;
    if (!v373)
    {

LABEL_35:
      v29 = 0;
      p_isa = 0xE000000000000000;
      goto LABEL_62;
    }

    if (v361 != 1)
    {
      if (v366[0])
      {
        if (v368 == 1)
        {
          MEMORY[0x1EEE9AC00](IsCF);
          *(&v332 - 4) = v15;
          *(&v332 - 3) = &v373;
          *(&v332 - 4) = 1536;
          *(&v332 - 1) = v6;
          v39 = v355;
          v40 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          p_isa = v41;
          v355 = v39;
          v42 = HIBYTE(v41) & 0xF;
          if ((v41 & 0x2000000000000000) == 0)
          {
            v42 = v40 & 0xFFFFFFFFFFFFLL;
          }

          if (v42)
          {
            v6 = v40;

            v29 = v6;
            goto LABEL_32;
          }

          v7 = v348;
        }

        else
        {
          v44 = [v15 lengthOfBytesUsingEncoding_];
          v6 = &v332;
          MEMORY[0x1EEE9AC00](v44);
          *(&v332 - 4) = v15;
          *(&v332 - 3) = &v373;
          *(&v332 - 4) = 134217984;
          *(&v332 - 1) = v45;
          v46 = v355;
          v37 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          p_isa = v47;
          v355 = v46;
          v48 = HIBYTE(v47) & 0xF;
          if ((v47 & 0x2000000000000000) == 0)
          {
            v48 = v37 & 0xFFFFFFFFFFFFLL;
          }

          if (v48)
          {
            goto LABEL_41;
          }
        }
      }

      goto LABEL_60;
    }

    if (v368)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    v29 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_61:
    p_isa = v43;
LABEL_62:
    if (!*(v7 + 16))
    {

LABEL_6:
      v15 = v358;
      goto LABEL_7;
    }

    v6 = specialized __RawDictionaryStorage.find<A>(_:)(v29, p_isa);
    v49 = v7;
    v51 = v50;

    if ((v51 & 1) == 0)
    {

      v7 = v49;
      v10 = v347;
      goto LABEL_6;
    }

    v52 = (*(v49 + 56) + 16 * v6);
    v53 = *v52;
    v344 = v52[1];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v55 = type metadata accessor for Optional();
    v346 = &v332;
    v352 = *(v55 - 8);
    v353 = v55;
    v6 = *(v352 + 64);
    MEMORY[0x1EEE9AC00](v55);
    v356 = &v332 - v56;
    p_isa = v378;
    v57 = __swift_project_boxed_opaque_existential_1(&v377, v378);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v59 = *(*(p_isa - 1) + 64);
    v354 = v6;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v350 = &v332;
      v148 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
      (*(v150 + 16))(&v332 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0), v57, p_isa, v148);
      v60 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      goto LABEL_67;
    }

    if (v59 != 8)
    {
      __break(1u);
LABEL_186:
      v221 = [p_isa lengthOfBytesUsingEncoding_];
      MEMORY[0x1EEE9AC00](v221);
      *(&v332 - 4) = p_isa;
      *(&v332 - 3) = &v373;
      *(&v332 - 4) = 134217984;
      *(&v332 - 1) = v222;
LABEL_187:
      v223 = v355;
      v224 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v355 = v223;
      v226 = HIBYTE(v225) & 0xF;
      if ((v225 & 0x2000000000000000) == 0)
      {
        v226 = v224 & 0xFFFFFFFFFFFFLL;
      }

      if (v226)
      {
LABEL_190:

        goto LABEL_198;
      }

LABEL_197:
      String.init(_cocoaString:)();
      goto LABEL_198;
    }

    v60 = *v57;
    swift_unknownObjectRetain();
LABEL_67:
    v61 = swift_conformsToProtocol2();
    v345 = v15;
    v351 = AssociatedTypeWitness;
    i = v53;
    if (v61)
    {
      if (v53)
      {
        break;
      }
    }

    v350 = &v332;
    v71 = *(AssociatedTypeWitness - 8);
    MEMORY[0x1EEE9AC00](v61);
    v342 = &v332 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
    v349 = &v332;
    *&v373 = v60;
    MEMORY[0x1EEE9AC00](v73);
    v75 = v60;
    v76 = &v332 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    swift_unknownObjectRetain();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v358 = v75;

      (*(v71 + 56))(v76, 1, 1, v351);
      (*(v352 + 8))(v76, v353);
      LODWORD(v201) = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
      v202 = @"NSCocoaErrorDomain";
      v203 = v202;
      if (!v201)
      {
        goto LABEL_148;
      }

      v204 = _objc_getTaggedPointerTag(v202);
      if (v204)
      {
        if (v204 != 22)
        {
          if (v204 == 2)
          {
            MEMORY[0x1EEE9AC00](v204);
            *(&v332 - 2) = v203;
            v205 = v355;
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v355 = v205;

            goto LABEL_231;
          }

LABEL_148:
          LOBYTE(v368) = 0;
          *&v373 = 0;
          LOBYTE(v366[0]) = 0;
          LOBYTE(v361) = 0;
          v209 = __CFStringIsCF();
          if (v209)
          {
            v210 = v373;
            if (!v373)
            {
LABEL_195:

              goto LABEL_231;
            }

            if (v361 == 1)
            {
              if (v368)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_231:
              v256 = objc_allocWithZone(NSError);
              v257 = String._bridgeToObjectiveCImpl()();

              v258 = [v256 initWithDomain:v257 code:4866 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v259 = [v258 domain];
              if (!v259)
              {
                goto LABEL_245;
              }

              v260 = v259;
              v261 = _objc_isTaggedPointer(v259);
              v262 = v260;
              v263 = v262;
              if ((v261 & 1) == 0)
              {
LABEL_237:
                LOBYTE(v368) = 0;
                *&v373 = 0;
                LOBYTE(v366[0]) = 0;
                LOBYTE(v361) = 0;
                v269 = __CFStringIsCF();
                if (v269)
                {
                  v270 = v373;
                  if (v373)
                  {
                    if (v361 == 1)
                    {
                      if (v368)
                      {
                        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                      }

                      else
                      {
                        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                      }

                      v277 = String.init<A>(_immortalCocoaString:count:encoding:)();
                      goto LABEL_316;
                    }

                    if (v366[0])
                    {
                      if (v368 == 1)
                      {
                        MEMORY[0x1EEE9AC00](v269);
                        *(&v332 - 4) = v263;
                        *(&v332 - 3) = &v373;
                        *(&v332 - 4) = 1536;
                        *(&v332 - 1) = v270;
                      }

                      else
                      {
                        v285 = [v263 lengthOfBytesUsingEncoding_];
                        MEMORY[0x1EEE9AC00](v285);
                        *(&v332 - 4) = v263;
                        *(&v332 - 3) = &v373;
                        *(&v332 - 4) = 134217984;
                        *(&v332 - 1) = v286;
                      }

                      v287 = v355;
                      v288 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v268 = v289;
                      v355 = v287;
                      v290 = HIBYTE(v289) & 0xF;
                      if ((v289 & 0x2000000000000000) == 0)
                      {
                        v290 = v288 & 0xFFFFFFFFFFFFLL;
                      }

                      if (!v290)
                      {
LABEL_314:

                        goto LABEL_315;
                      }

                      v266 = v288;
                      goto LABEL_251;
                    }

LABEL_315:
                    v277 = String.init(_cocoaString:)();
LABEL_316:
                    v266 = v277;
                    v268 = v278;
                    goto LABEL_317;
                  }
                }

                else
                {
                  v271 = v263;
                  v272 = String.init(_nativeStorage:)();
                  if (v273)
                  {
                    v266 = v272;
                    v268 = v273;

                    goto LABEL_318;
                  }

                  *&v373 = [v271 length];
                  if (v373)
                  {
                    goto LABEL_315;
                  }
                }

LABEL_245:
                v266 = 0;
                v268 = 0xE000000000000000;
                goto LABEL_318;
              }

              v264 = _objc_getTaggedPointerTag(v262);
              if (v264)
              {
                if (v264 != 22)
                {
                  if (v264 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v264);
                    *(&v332 - 2) = v263;
                    v265 = v355;
                    v266 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v268 = v267;
                    v355 = v265;

LABEL_318:
                    v310 = v203;
                    v311 = v310;
                    if (!v201)
                    {
                      goto LABEL_323;
                    }

                    v312 = _objc_getTaggedPointerTag(v310);
                    if (!v312)
                    {
                      goto LABEL_335;
                    }

                    if (v312 != 22)
                    {
                      if (v312 == 2)
                      {
                        MEMORY[0x1EEE9AC00](v312);
                        *(&v332 - 2) = v311;
                        v313 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v315 = v314;

                        goto LABEL_353;
                      }

LABEL_323:
                      LOBYTE(v368) = 0;
                      *&v373 = 0;
                      LOBYTE(v366[0]) = 0;
                      LOBYTE(v361) = 0;
                      v316 = __CFStringIsCF();
                      if (v316)
                      {
                        v317 = v373;
                        if (v373)
                        {
                          if (v361 == 1)
                          {
                            if (v368)
                            {
                              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                            }

                            else
                            {
                              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                            }

                            v324 = String.init<A>(_immortalCocoaString:count:encoding:)();
                            goto LABEL_352;
                          }

                          if (v366[0])
                          {
                            if (v368 == 1)
                            {
                              MEMORY[0x1EEE9AC00](v316);
                              *(&v332 - 4) = v311;
                              *(&v332 - 3) = &v373;
                              *(&v332 - 4) = 1536;
                              *(&v332 - 1) = v317;
                            }

                            else
                            {
                              v326 = [v311 lengthOfBytesUsingEncoding_];
                              MEMORY[0x1EEE9AC00](v326);
                              *(&v332 - 4) = v311;
                              *(&v332 - 3) = &v373;
                              *(&v332 - 4) = 134217984;
                              *(&v332 - 1) = v327;
                            }

                            v328 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                            v315 = v329;
                            v330 = HIBYTE(v329) & 0xF;
                            if ((v329 & 0x2000000000000000) == 0)
                            {
                              v330 = v328 & 0xFFFFFFFFFFFFLL;
                            }

                            if (v330)
                            {
                              v313 = v328;

                              goto LABEL_353;
                            }
                          }

LABEL_351:
                          v324 = String.init(_cocoaString:)();
LABEL_352:
                          v313 = v324;
                          v315 = v325;
LABEL_353:
                          if (v266 == v313 && v268 == v315)
                          {

                            v206 = v345;
                            goto LABEL_357;
                          }

                          v331 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          v206 = v345;
                          if (v331)
                          {
                            goto LABEL_357;
                          }

LABEL_361:
                          __break(1u);
LABEL_362:
                          __break(1u);
LABEL_363:
                          __break(1u);
                          goto LABEL_364;
                        }
                      }

                      else
                      {
                        v318 = v311;
                        v319 = String.init(_nativeStorage:)();
                        if (v320)
                        {
                          v313 = v319;
                          v315 = v320;

                          goto LABEL_353;
                        }

                        *&v373 = [v318 length];
                        if (v373)
                        {
                          goto LABEL_351;
                        }
                      }

                      v313 = 0;
                      v315 = 0xE000000000000000;
                      goto LABEL_353;
                    }

                    v321 = [v311 UTF8String];
                    if (v321)
                    {
                      v322 = String.init(utf8String:)(v321);
                      if (v323)
                      {
                        goto LABEL_336;
                      }

                      __break(1u);
LABEL_335:
                      LOWORD(v366[0]) = 0;
                      _CFIndirectTaggedPointerStringGetContents();
                      v322 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                      if (!v323)
                      {
                        [v311 mutableCopy];
                        _bridgeAnyObjectToAny(_:)();

                        swift_unknownObjectRelease();
                        swift_dynamicCast();
                        v315 = *(&v368 + 1);
                        v313 = v368;
                        goto LABEL_353;
                      }

LABEL_336:
                      v313 = v322;
                      v315 = v323;

                      goto LABEL_353;
                    }

                    goto LABEL_369;
                  }

                  goto LABEL_237;
                }

                v274 = [v263 UTF8String];
                if (!v274)
                {
LABEL_371:
                  __break(1u);
LABEL_372:
                  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
                  return result;
                }

                v275 = String.init(utf8String:)(v274);
                if (v276)
                {
LABEL_250:
                  v266 = v275;
                  v268 = v276;
LABEL_251:

LABEL_317:
                  goto LABEL_318;
                }

                __break(1u);
              }

              LOWORD(v366[0]) = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v275 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v276)
              {
                [v263 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v268 = *(&v368 + 1);
                v266 = v368;
                goto LABEL_317;
              }

              goto LABEL_250;
            }

            if (v366[0])
            {
              if (v368 == 1)
              {
                MEMORY[0x1EEE9AC00](v209);
                *(&v332 - 4) = v203;
                *(&v332 - 3) = &v373;
                *(&v332 - 4) = 1536;
                *(&v332 - 1) = v210;
              }

              else
              {
                v227 = [v203 lengthOfBytesUsingEncoding_];
                MEMORY[0x1EEE9AC00](v227);
                *(&v332 - 4) = v203;
                *(&v332 - 3) = &v373;
                *(&v332 - 4) = 134217984;
                *(&v332 - 1) = v228;
              }

              v229 = v355;
              v230 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v355 = v229;
              v232 = HIBYTE(v231) & 0xF;
              if ((v231 & 0x2000000000000000) == 0)
              {
                v232 = v230 & 0xFFFFFFFFFFFFLL;
              }

              if (v232)
              {
                goto LABEL_195;
              }
            }
          }

          else
          {
            v213 = v203;
            String.init(_nativeStorage:)();
            if (v214 || (*&v373 = [v213 length], !v373))
            {

              goto LABEL_231;
            }
          }

          String.init(_cocoaString:)();
          goto LABEL_231;
        }

        v218 = [v203 UTF8String];
        if (!v218)
        {
          goto LABEL_367;
        }

        String.init(utf8String:)(v218);
        if (v219)
        {
          goto LABEL_195;
        }

        __break(1u);
      }

      LOWORD(v366[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v220)
      {
        [v203 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_231;
      }

      goto LABEL_195;
    }

    swift_unknownObjectRelease();
    v69 = v351;
    (*(v71 + 56))(v76, 0, 1, v351);
    v341 = v71;
    v77 = *(v71 + 32);
    v78 = v342;
    v77(v342, v76, v69);
    v79 = v356;
    v77(v356, v78, v69);
    v70 = v341;
    v68 = v79;
LABEL_75:
    v80 = v70;
    v81 = (*(v70 + 7))(v68, 0, 1, v69);
    v339 = &v332;
    v342 = *(v70 + 8);
    MEMORY[0x1EEE9AC00](v81);
    v349 = (&v332 - v82);
    v340 = &v332;
    v341 = v82;
    v84 = MEMORY[0x1EEE9AC00](v83);
    v86 = &v332 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
    v87 = v352;
    v88 = v68;
    v89 = v353;
    (*(v352 + 16))(v86, v88, v353, v84);
    v90 = v80;
    v91 = *(v80 + 6);
    v92 = v69;
    if (v91(v86, 1, v69) == 1)
    {
      v93 = *(v87 + 8);
      v93(v86, v89);
      v94 = v89;
      v95 = v344[3]();
      p_isa = v96;
      v376 = 0;
      memset(v375, 0, sizeof(v375));
      v373 = 0u;
      v374 = 0u;
      v6 = &v360;
      specialized AttributedString._AttributeStorage.subscript.setter(&v373, v95, v96);

      v93(v356, v94);
      v10 = v347;
      v7 = v348;
      goto LABEL_6;
    }

    v350 = v90;
    (*(v90 + 4))(v349, v86, v69);
    v98 = i;
    v97 = v344;
    v340 = (v344[3])(i, v344);
    v354 = v99;
    v338 = &v332;
    v100 = MEMORY[0x1EEE9AC00](v340);
    v101 = (&v332 - v341);
    v102 = v350[2];
    v337 = (&v332 - v341);
    v103 = v102(&v332 - v341, v349, v92, v100);
    v336 = &v332;
    v104 = MEMORY[0x1EEE9AC00](v103);
    v105(&v332 - v341, v101, v92, v104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
    swift_dynamicCast();
    (v97[4])(&v368, v98, v97);
    *&v375[1] = v368;
    LOBYTE(v375[3]) = (v97[5])(v98, v97) & 1;
    v106 = (v97[6])(v98, v97);
    v107 = v350 + 1;
    v108 = v350[1];
    (v108)(v337, v92);
    v376 = v106;
    outlined init with copy of AttributedString._AttributeValue?(&v373, &v368);
    v350 = v107;
    v344 = v108;
    if (!*(&v369 + 1))
    {
      outlined destroy of TermOfAddress?(&v368, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v130 = v340;
      v131 = specialized __RawDictionaryStorage.find<A>(_:)(v340, v354);
      if (v132)
      {
        v133 = v131;
        v134 = v360;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v135 = v134;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v174 = static _DictionaryStorage.copy(original:)();
          v135 = v174;
          if (*(v134 + 16))
          {
            v175 = (v174 + 64);
            v176 = (v134 + 64);
            v177 = ((1 << *(v135 + 32)) + 63) >> 6;
            v336 = (v134 + 64);
            if (v135 != v134 || v175 >= &v176[8 * v177])
            {
              memmove(v175, v176, 8 * v177);
            }

            v178 = 0;
            *(v135 + 16) = *(v134 + 16);
            v179 = 1 << *(v134 + 32);
            if (v179 < 64)
            {
              v180 = ~(-1 << v179);
            }

            else
            {
              v180 = -1;
            }

            v181 = v180 & *(v134 + 64);
            v182 = (v179 + 63) >> 6;
            v337 = v182;
            if (!v181)
            {
              goto LABEL_122;
            }

            while (1)
            {
              v183 = __clz(__rbit64(v181));
              for (i = (v181 - 1) & v181; ; i = (v185 - 1) & v185)
              {
                v186 = v183 | (v178 << 6);
                v338 = (16 * v186);
                v187 = *(v134 + 56);
                v188 = (*(v134 + 48) + 16 * v186);
                v189 = *v188;
                v341 = v188[1];
                v342 = v189;
                v190 = 72 * v186;
                outlined init with copy of AttributedString._AttributeValue(v187 + 72 * v186, &v368);
                v191 = (v338 + *(v135 + 48));
                v192 = v341;
                *v191 = v342;
                v191[1] = v192;
                v193 = *(v135 + 56) + v190;
                *v193 = v368;
                v194 = v369;
                v195 = v370;
                v196 = v371;
                *(v193 + 64) = v372;
                *(v193 + 32) = v195;
                *(v193 + 48) = v196;
                *(v193 + 16) = v194;

                v182 = v337;
                v181 = i;
                if (i)
                {
                  break;
                }

LABEL_122:
                v184 = v178;
                do
                {
                  v178 = v184 + 1;
                  if (__OFADD__(v184, 1))
                  {
                    goto LABEL_363;
                  }

                  if (v178 >= v182)
                  {
                    goto LABEL_129;
                  }

                  v185 = v336[v178];
                  ++v184;
                }

                while (!v185);
                v183 = __clz(__rbit64(v185));
              }
            }
          }

LABEL_129:
        }

        v136 = *(v135 + 56) + 72 * v133;
        v368 = *v136;
        v138 = *(v136 + 32);
        v137 = *(v136 + 48);
        v139 = *(v136 + 64);
        v369 = *(v136 + 16);
        v370 = v138;
        v372 = v139;
        v371 = v137;
        specialized _NativeDictionary._delete(at:)(v133, v135);
        *&v360 = v135;
        p_isa = v345;
        v15 = v358;
        v140 = v340;
      }

      else
      {
        v140 = v130;
        v372 = 0;
        v370 = 0u;
        v371 = 0u;
        v368 = 0u;
        v369 = 0u;
        p_isa = v345;
        v15 = v358;
      }

      goto LABEL_93;
    }

    v366[2] = v370;
    v366[3] = v371;
    v367 = v372;
    v366[0] = v368;
    v366[1] = v369;
    outlined init with copy of AttributedString._AttributeValue(v366, &v361);
    v109 = v360;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v359 = v109;
    v111 = v340;
    v112 = specialized __RawDictionaryStorage.find<A>(_:)(v340, v354);
    v114 = *(v109 + 16);
    v115 = (v113 & 1) == 0;
    v116 = __OFADD__(v114, v115);
    v117 = v114 + v115;
    if (v116)
    {
      __break(1u);
LABEL_360:
      __break(1u);
      goto LABEL_361;
    }

    v118 = v113;
    if (*(v109 + 24) >= v117)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v119 = v109;
        v120 = v354;
        if ((v113 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v336 = v112;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v151 = static _DictionaryStorage.copy(original:)();
        v119 = v151;
        if (*(v109 + 16))
        {
          v152 = (v151 + 64);
          v153 = (v109 + 64);
          v154 = ((1 << *(v119 + 32)) + 63) >> 6;
          v333 = v109 + 64;
          if (v119 != v109 || v152 >= &v153[8 * v154])
          {
            memmove(v152, v153, 8 * v154);
          }

          v155 = 0;
          *(v119 + 16) = *(v109 + 16);
          v156 = 1 << *(v109 + 32);
          if (v156 < 64)
          {
            v157 = ~(-1 << v156);
          }

          else
          {
            v157 = -1;
          }

          v158 = v157 & *(v109 + 64);
          v159 = (v156 + 63) >> 6;
          v337 = v159;
          if (!v158)
          {
            goto LABEL_104;
          }

          while (1)
          {
            v160 = __clz(__rbit64(v158));
            for (i = (v158 - 1) & v158; ; i = (v162 - 1) & v162)
            {
              v163 = v160 | (v155 << 6);
              v338 = (16 * v163);
              v164 = *(v109 + 56);
              v165 = (*(v109 + 48) + 16 * v163);
              v166 = *v165;
              v341 = v165[1];
              v342 = v166;
              v167 = 72 * v163;
              outlined init with copy of AttributedString._AttributeValue(v164 + 72 * v163, &v368);
              v168 = (v338 + *(v119 + 48));
              v169 = v341;
              *v168 = v342;
              v168[1] = v169;
              v170 = *(v119 + 56) + v167;
              *v170 = v368;
              v171 = v369;
              v172 = v370;
              v173 = v371;
              *(v170 + 64) = v372;
              *(v170 + 32) = v172;
              *(v170 + 48) = v173;
              *(v170 + 16) = v171;

              v159 = v337;
              v158 = i;
              if (i)
              {
                break;
              }

LABEL_104:
              v161 = v155;
              do
              {
                v155 = v161 + 1;
                if (__OFADD__(v161, 1))
                {
                  goto LABEL_362;
                }

                if (v155 >= v159)
                {
                  goto LABEL_111;
                }

                v162 = *(v333 + 8 * v155);
                ++v161;
              }

              while (!v162);
              v160 = __clz(__rbit64(v162));
            }
          }
        }

LABEL_111:

        v112 = v336;
        v120 = v354;
        if ((v118 & 1) == 0)
        {
          goto LABEL_89;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v117, isUniquelyReferenced_nonNull_native);
      v119 = v359;
      v120 = v354;
      v112 = specialized __RawDictionaryStorage.find<A>(_:)(v111, v354);
      if ((v118 & 1) != (v121 & 1))
      {
        goto LABEL_372;
      }

      if ((v118 & 1) == 0)
      {
LABEL_89:
        *(v119 + 8 * (v112 >> 6) + 64) |= 1 << v112;
        v141 = (*(v119 + 48) + 16 * v112);
        *v141 = v111;
        v141[1] = v120;
        v142 = *(v119 + 56) + 72 * v112;
        *v142 = v361;
        v143 = v362;
        v144 = v363;
        v145 = v364;
        *(v142 + 64) = v365;
        *(v142 + 32) = v144;
        *(v142 + 48) = v145;
        *(v142 + 16) = v143;
        v146 = *(v119 + 16);
        v116 = __OFADD__(v146, 1);
        v147 = v146 + 1;
        if (v116)
        {
          goto LABEL_360;
        }

        *(v119 + 16) = v147;

        outlined destroy of AttributedString._AttributeValue(v366);
        v368 = 0u;
        v369 = 0u;
        v370 = 0u;
        v371 = 0u;
        v372 = 0;
        goto LABEL_91;
      }
    }

    v122 = *(v119 + 56) + 72 * v112;
    v124 = *(v122 + 16);
    v123 = *(v122 + 32);
    v125 = *(v122 + 48);
    v372 = *(v122 + 64);
    v371 = v125;
    v368 = *v122;
    v369 = v124;
    v370 = v123;
    v126 = *(v119 + 56) + 72 * v112;
    v127 = v362;
    v128 = v363;
    v129 = v364;
    *(v126 + 64) = v365;
    *(v126 + 32) = v128;
    *(v126 + 48) = v129;
    *(v126 + 16) = v127;
    *v126 = v361;
    outlined destroy of AttributedString._AttributeValue(v366);
LABEL_91:
    *&v360 = v119;
    p_isa = v345;
    v15 = v358;
    v140 = v111;
LABEL_93:
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(v140, v354, &v368, &v373);
    v6 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
    outlined destroy of TermOfAddress?(&v373, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v368, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

    (v344)(v349, v351);
    (*(v352 + 8))(v356, v353);
    v10 = v347;
    v7 = v348;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(&v377);
  }

  v62 = v61;
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  v63 = swift_dynamicCastUnknownClass();
  if (!v63)
  {

    v358 = v60;
    swift_unknownObjectRelease();
    LODWORD(v6) = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v198 = @"NSCocoaErrorDomain";
    p_isa = &v198->isa;
    if (v6)
    {
      v199 = _objc_getTaggedPointerTag(v198);
      if (!v199)
      {
LABEL_162:
        LOWORD(v366[0]) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (v217)
        {
          goto LABEL_190;
        }

        [p_isa mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_198;
      }

      if (v199 != 22)
      {
        if (v199 == 2)
        {
          MEMORY[0x1EEE9AC00](v199);
          *(&v332 - 2) = p_isa;
          v200 = v355;
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v355 = v200;

          goto LABEL_198;
        }

        goto LABEL_143;
      }

      v215 = [p_isa UTF8String];
      if (v215)
      {
        String.init(utf8String:)(v215);
        if (v216)
        {
          goto LABEL_190;
        }

        __break(1u);
        goto LABEL_162;
      }

      __break(1u);
LABEL_367:
      __break(1u);
      goto LABEL_368;
    }

LABEL_143:
    LOBYTE(v368) = 0;
    *&v373 = 0;
    LOBYTE(v366[0]) = 0;
    LOBYTE(v361) = 0;
    v207 = __CFStringIsCF();
    if (!v207)
    {
      v211 = p_isa;
      String.init(_nativeStorage:)();
      if (v212 || (*&v373 = [v211 length], !v373))
      {

        goto LABEL_198;
      }

      goto LABEL_197;
    }

    v208 = v373;
    if (!v373)
    {
      goto LABEL_190;
    }

    if (v361 != 1)
    {
      if (v366[0])
      {
        if (v368 != 1)
        {
          goto LABEL_186;
        }

        MEMORY[0x1EEE9AC00](v207);
        *(&v332 - 4) = p_isa;
        *(&v332 - 3) = &v373;
        *(&v332 - 4) = 1536;
        *(&v332 - 1) = v208;
        goto LABEL_187;
      }

      goto LABEL_197;
    }

    if (v368)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_198:
    v233 = objc_allocWithZone(NSError);
    v234 = String._bridgeToObjectiveCImpl()();

    v235 = [v233 initWithDomain:v234 code:4866 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v236 = [v235 domain];
    if (!v236)
    {
      v206 = v15;
      goto LABEL_210;
    }

    v237 = v236;
    v238 = _objc_isTaggedPointer(v236);
    v239 = v237;
    v240 = v239;
    if ((v238 & 1) == 0)
    {
LABEL_204:
      LOBYTE(v368) = 0;
      *&v373 = 0;
      LOBYTE(v366[0]) = 0;
      LOBYTE(v361) = 0;
      v246 = __CFStringIsCF();
      if (v246)
      {
        v247 = v373;
        if (v373)
        {
          if (v361 == 1)
          {
            v206 = v15;
            if (v368)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v254 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_272;
          }

          if (v366[0])
          {
            v206 = v15;
            if (v368 == 1)
            {
              MEMORY[0x1EEE9AC00](v246);
              *(&v332 - 4) = v240;
              *(&v332 - 3) = &v373;
              *(&v332 - 4) = 1536;
              *(&v332 - 1) = v247;
            }

            else
            {
              v279 = [v240 lengthOfBytesUsingEncoding_];
              MEMORY[0x1EEE9AC00](v279);
              *(&v332 - 4) = v240;
              *(&v332 - 3) = &v373;
              *(&v332 - 4) = 134217984;
              *(&v332 - 1) = v280;
            }

            v281 = v355;
            v282 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v245 = v283;
            v355 = v281;
            v284 = HIBYTE(v283) & 0xF;
            if ((v283 & 0x2000000000000000) == 0)
            {
              v284 = v282 & 0xFFFFFFFFFFFFLL;
            }

            if (v284)
            {
              v243 = v282;
              goto LABEL_219;
            }
          }

          else
          {
            v206 = v15;
          }

LABEL_271:
          v254 = String.init(_cocoaString:)();
LABEL_272:
          v243 = v254;
          v245 = v255;
          goto LABEL_273;
        }

        v206 = v15;
      }

      else
      {
        v206 = v15;
        v248 = v240;
        v249 = String.init(_nativeStorage:)();
        if (v250)
        {
          v243 = v249;
          v245 = v250;

          goto LABEL_274;
        }

        *&v373 = [v248 length];
        if (v373)
        {
          goto LABEL_271;
        }
      }

LABEL_210:
      v243 = 0;
      v245 = 0xE000000000000000;
      goto LABEL_274;
    }

    v241 = _objc_getTaggedPointerTag(v239);
    if (v241)
    {
      if (v241 != 22)
      {
        if (v241 == 2)
        {
          v206 = v15;
          MEMORY[0x1EEE9AC00](v241);
          *(&v332 - 2) = v240;
          v242 = v355;
          v243 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v245 = v244;
          v355 = v242;

LABEL_274:
          v291 = p_isa;
          v292 = v291;
          if (!v6)
          {
            goto LABEL_279;
          }

          v293 = _objc_getTaggedPointerTag(v291);
          if (!v293)
          {
            goto LABEL_291;
          }

          if (v293 != 22)
          {
            if (v293 == 2)
            {
              MEMORY[0x1EEE9AC00](v293);
              *(&v332 - 2) = v292;
              v263 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v201 = v294;

              goto LABEL_309;
            }

LABEL_279:
            LOBYTE(v368) = 0;
            *&v373 = 0;
            LOBYTE(v366[0]) = 0;
            LOBYTE(v361) = 0;
            v295 = __CFStringIsCF();
            if (v295)
            {
              v296 = v373;
              if (v373)
              {
                if (v361 == 1)
                {
                  if (v368)
                  {
                    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                  }

                  else
                  {
                    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                  }

                  v303 = String.init<A>(_immortalCocoaString:count:encoding:)();
                  goto LABEL_308;
                }

                if (v366[0])
                {
                  if (v368 == 1)
                  {
                    MEMORY[0x1EEE9AC00](v295);
                    *(&v332 - 4) = v292;
                    *(&v332 - 3) = &v373;
                    *(&v332 - 4) = 1536;
                    *(&v332 - 1) = v296;
                  }

                  else
                  {
                    v305 = [v292 lengthOfBytesUsingEncoding_];
                    MEMORY[0x1EEE9AC00](v305);
                    *(&v332 - 4) = v292;
                    *(&v332 - 3) = &v373;
                    *(&v332 - 4) = 134217984;
                    *(&v332 - 1) = v306;
                  }

                  v307 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v201 = v308;
                  v309 = HIBYTE(v308) & 0xF;
                  if ((v308 & 0x2000000000000000) == 0)
                  {
                    v309 = v307 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v309)
                  {
                    v263 = v307;

                    goto LABEL_309;
                  }
                }

LABEL_307:
                v303 = String.init(_cocoaString:)();
LABEL_308:
                v263 = v303;
                v201 = v304;
LABEL_309:
                if (v243 == v263 && v245 == v201)
                {

LABEL_357:
                  swift_willThrow();
                  swift_unknownObjectRelease();
                  goto LABEL_358;
                }

                v203 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v203)
                {
                  goto LABEL_357;
                }

                __break(1u);
                goto LABEL_314;
              }
            }

            else
            {
              v297 = v292;
              v298 = String.init(_nativeStorage:)();
              if (v299)
              {
                v263 = v298;
                v201 = v299;

                goto LABEL_309;
              }

              *&v373 = [v297 length];
              if (v373)
              {
                goto LABEL_307;
              }
            }

            v263 = 0;
            v201 = 0xE000000000000000;
            goto LABEL_309;
          }

          v300 = [v292 UTF8String];
          if (v300)
          {
            v301 = String.init(utf8String:)(v300);
            if (v302)
            {
              goto LABEL_292;
            }

            __break(1u);
LABEL_291:
            LOWORD(v366[0]) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v301 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v302)
            {
              [v292 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v201 = *(&v368 + 1);
              v263 = v368;
              goto LABEL_309;
            }

LABEL_292:
            v263 = v301;
            v201 = v302;

            goto LABEL_309;
          }

LABEL_368:
          __break(1u);
LABEL_369:
          __break(1u);
          goto LABEL_370;
        }

        goto LABEL_204;
      }

      v206 = v15;
      v251 = [v240 UTF8String];
      if (!v251)
      {
LABEL_370:
        __break(1u);
        goto LABEL_371;
      }

      v252 = String.init(utf8String:)(v251);
      if (v253)
      {
LABEL_218:
        v243 = v252;
        v245 = v253;
LABEL_219:

LABEL_273:
        goto LABEL_274;
      }

      __break(1u);
    }

    v206 = v15;
    LOWORD(v366[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v252 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v253)
    {
      [v240 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v245 = *(&v368 + 1);
      v243 = v368;
      goto LABEL_273;
    }

    goto LABEL_218;
  }

  v64 = v63;
  v65 = swift_getAssociatedTypeWitness();
  v350 = &v332;
  v66 = MEMORY[0x1EEE9AC00](v65);
  v67 = v355;
  (*(v62 + 32))(v64, v53, v62, v66);
  v355 = v67;
  if (!v67)
  {
    swift_unknownObjectRelease_n();
    v68 = v356;
    v69 = v351;
    swift_dynamicCast();
    v70 = *(v69 - 8);
    goto LABEL_75;
  }

  swift_unknownObjectRelease_n();

  v206 = v345;
LABEL_358:

  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(&v377);
}