uint64_t get_enum_tag_for_layout_string_10Foundation13XMLPlistErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t getEnumTagSinglePayload for XMLPlistError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for XMLPlistError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for XMLPlistError(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void *destructiveInjectEnumTag for XMLPlistMap.Value(void *result, uint64_t a2)
{
  if (a2 < 8)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 8)) | 0x8000000000000000;
  }

  return result;
}

void specialized XMLPlistMap.Value._skipIntegerWhitespace(_:)(uint64_t *a1)
{
  v2 = type metadata accessor for Unicode.Scalar.Properties();
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[3];
  v7 = a1[4];
  v8 = v6 + 1;
  if (v7 >= (v6 + 1))
  {
    v9 = *a1;
    if ((*a1 + a1[1] - v7) >= 0)
    {
      v10 = (v3 + 8);
      while (v7 >= v6)
      {
        if (&v6[-v9] < 0)
        {
          goto LABEL_15;
        }

        if ((v7 - v6) < 0)
        {
          goto LABEL_16;
        }

        v11 = *v6;
        if (v11 >= 0x21 && v11 - 127 > 0x21)
        {
          if ((BufferView<A>._decodeScalar()(v6, v7 - v6) & 0x100000000) != 0)
          {
            return;
          }

          v13 = v12;
          Unicode.Scalar.properties.getter();
          v14 = Unicode.Scalar.Properties.isWhitespace.getter();
          (*v10)(v5, v2);
          if ((v14 & 1) == 0)
          {
            return;
          }

          v8 = &v6[v13];
        }

        a1[3] = v8;
        v6 = v8++;
        if (v7 < v8)
        {
          return;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t getEnumTagSinglePayload for XMLPlistTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XMLPlistTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XMLPlistTag and conformance XMLPlistTag()
{
  result = lazy protocol witness table cache variable for type XMLPlistTag and conformance XMLPlistTag;
  if (!lazy protocol witness table cache variable for type XMLPlistTag and conformance XMLPlistTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XMLPlistTag and conformance XMLPlistTag);
  }

  return result;
}

uint64_t BidirectionalCollection._range<A>(of:anchored:backwards:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void (**a7)(char *)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v146 = a8;
  LODWORD(v153) = a3;
  LODWORD(v150) = a2;
  v160 = a1;
  v129 = a9;
  v158 = a6;
  v13 = a6[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v123 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v124 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v122 = &v119 - v17;
  v145 = swift_getAssociatedTypeWitness();
  v140 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v144 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v143 = &v119 - v20;
  v141 = a7;
  v147 = a7[1];
  v159 = swift_getAssociatedTypeWitness();
  v137 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v156 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v161 = &v119 - v23;
  v135 = type metadata accessor for Optional();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v152 = &v119 - v26;
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v28);
  v157 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v120 = &v119 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v119 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v119 = &v119 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v139 = &v119 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v119 - v40;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = type metadata accessor for Range();
  v132 = type metadata accessor for Optional();
  v130 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v121 = &v119 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = &v119 - v46;
  v48 = *(v42 - 8);
  v127 = *(v48 + 56);
  v126 = v48 + 56;
  v127(&v119 - v46, 1, 1, v42, v45);
  v148 = v9;
  v149 = v34;
  v154 = v13;
  v155 = a4;
  v128 = v42;
  v131 = v47;
  if (v153)
  {
    dispatch thunk of Collection.endIndex.getter();
    v49 = v152;
    BidirectionalCollection._index<A>(_:backwardsOffsetByCountOf:)(v160, a5, v158, v141, v152);
    v50 = *(v27 + 8);
    v50(v34, AssociatedTypeWitness);
    if ((*(v27 + 48))(v49, 1, AssociatedTypeWitness) == 1)
    {
      (*(v130 + 8))(v131, v132);
      (*(v134 + 8))(v152, v135);
      return (v127)(v129, 1, 1, v128);
    }

    v136 = a5;
    v56 = *(v27 + 32);
    v57 = v119;
    v56(v119, v152, AssociatedTypeWitness);
    v135 = v27;
    v58 = *(v27 + 16);
    v58(v41, v57, AssociatedTypeWitness);
    if (v150)
    {
      v50(v57, AssociatedTypeWitness);
      v59 = v120;
      v58(v120, v41, AssociatedTypeWitness);
    }

    else
    {
      v65 = v120;
      dispatch thunk of Collection.startIndex.getter();
      v50(v57, AssociatedTypeWitness);
      v59 = v65;
    }

    v52 = v41;
    v56(v139, v59, AssociatedTypeWitness);
    v54 = AssociatedTypeWitness;
    a5 = v136;
    v55 = v157;
    v53 = v135;
  }

  else
  {
    v51 = v158;
    dispatch thunk of Collection.startIndex.getter();
    v52 = v41;
    if (v150)
    {
      v53 = v27;
      v54 = AssociatedTypeWitness;
      (*(v27 + 16))(v139, v41, AssociatedTypeWitness);
      v55 = v157;
    }

    else
    {
      v138 = v41;
      v60 = v149;
      dispatch thunk of Collection.endIndex.getter();
      v61 = v133;
      BidirectionalCollection._index<A>(_:backwardsOffsetByCountOf:)(v160, a5, v51, v141, v133);
      v53 = v27;
      v62 = *(v27 + 8);
      v62(v60, AssociatedTypeWitness);
      v63 = (*(v27 + 48))(v61, 1, AssociatedTypeWitness);
      v55 = v157;
      if (v63 == 1)
      {
        v62(v138, AssociatedTypeWitness);
        (*(v130 + 8))(v131, v132);
        (*(v134 + 8))(v61, v135);
        return (v127)(v129, 1, 1, v128);
      }

      (*(v27 + 32))(v139, v61, AssociatedTypeWitness);
      v54 = AssociatedTypeWitness;
      v52 = v138;
    }
  }

  v66 = v140;
  v67 = v137;
  v68 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v69 = 1;
  if ((v68 & 1) == 0)
  {
    v69 = -1;
  }

  v133 = v69;
  v71 = *(v53 + 16);
  v70 = v53 + 16;
  v137 = v71;
  v158 = v67 + 8;
  v150 = v70 - 8;
  v141 = (v66 + 2);
  v140 = v66 + 1;
  v134 = v70 + 16;
  v72 = v54;
  v136 = a5;
  v142 = v54;
  v138 = v52;
  v135 = v70;
  while (1)
  {
    (v137)(v55, v52, v72);
    dispatch thunk of Collection.startIndex.getter();
    while (1)
    {
      v73 = v156;
      dispatch thunk of Collection.endIndex.getter();
      v74 = v159;
      v152 = swift_getAssociatedConformanceWitness();
      v75 = dispatch thunk of static Comparable.< infix(_:_:)();
      v153 = *v158;
      v153(v73, v74);
      if ((v75 & 1) == 0)
      {
        break;
      }

      v76 = v72;
      v77 = v149;
      dispatch thunk of Collection.endIndex.getter();
      v78 = dispatch thunk of static Comparable.< infix(_:_:)();
      v79 = v77;
      v72 = v76;
      (*v150)(v79, v76);
      if ((v78 & 1) == 0)
      {
        break;
      }

      v80 = dispatch thunk of Collection.subscript.read();
      v81 = *v141;
      v82 = v143;
      v83 = v145;
      (*v141)(v143);
      v80(v162, 0);
      v84 = dispatch thunk of Collection.subscript.read();
      v85 = v144;
      v81(v144);
      (v84)(v162, 0);
      LOBYTE(v84) = dispatch thunk of static Equatable.== infix(_:_:)();
      v86 = *v140;
      (*v140)(v85, v83);
      v86(v82, v83);
      v72 = v142;
      if ((v84 & 1) == 0)
      {
        break;
      }

      dispatch thunk of Collection.formIndex(after:)();
      dispatch thunk of Collection.formIndex(after:)();
    }

    v87 = v156;
    dispatch thunk of Collection.endIndex.getter();
    v88 = v159;
    v89 = dispatch thunk of static Equatable.== infix(_:_:)();
    v90 = v153;
    v153(v87, v88);
    if (v89)
    {
      break;
    }

    v52 = v138;
    v91 = dispatch thunk of static Equatable.== infix(_:_:)();
    v55 = v157;
    v92 = v150;
    if (v91)
    {
      v90(v161, v159);
      v117 = v52;
      v118 = *v92;
      (*v92)(v55, v72);
      v118(v139, v72);
      v118(v117, v72);
      return (*(v130 + 32))(v129, v131, v132);
    }

    v93 = v72;
    v94 = v149;
    (*v134)(v149, v52, v93);
    dispatch thunk of Collection.index(_:offsetBy:)();
    v95 = *v92;
    v96 = v94;
    v72 = v93;
    (*v92)(v96, v93);
    v90(v161, v159);
    v95(v55, v93);
  }

  v97 = v138;
  v98 = v157;
  v99 = v72;
  v100 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v90(v161, v159);
  v101 = *v150;
  (*v150)(v139, v72);
  v102 = v130;
  result = (*(v130 + 8))(v131, v132);
  v103 = TupleTypeMetadata2;
  if (v100)
  {
    v161 = v101;
    v104 = *v134;
    v105 = v122;
    (*v134)(v122, v97, v72);
    v104(&v105[*(v103 + 48)], v98, v72);
    v106 = v123;
    v107 = v124;
    (*(v123 + 16))(v124, v105, v103);
    v108 = *(v103 + 48);
    v109 = v102;
    v110 = v121;
    v104(v121, v107, v99);
    (v161)(&v107[v108], v99);
    v111 = v105;
    v112 = v132;
    (*(v106 + 32))(v107, v111, v103);
    v113 = v128;
    v104(&v110[*(v128 + 36)], &v107[*(v103 + 48)], v99);
    (v161)(v107, v99);
    v114 = v113;
    v115 = v131;
    (v127)(v110, 0, 1, v114);
    v116 = *(v109 + 32);
    v116(v115, v110, v112);
    return (v116)(v129, v115, v112);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t BidirectionalCollection<>._alignIndex(roundingUp:)(unint64_t a1)
{
  dispatch thunk of BidirectionalCollection.index(_:offsetBy:)();
  if (v3 >> 14 < a1 >> 14)
  {
    dispatch thunk of Collection.endIndex.getter();
  }

  return v3;
}

uint64_t BidirectionalCollection._index<A>(_:backwardsOffsetByCountOf:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v39 = a5;
  v42 = a4;
  v8 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v49 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v41 = a3;
  v44 = *(a3 + 8);
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v19 = *(v15 + 16);
  v47 = &v38 - v21;
  v48 = v20;
  v19(v18);
  v50 = v8;
  dispatch thunk of Collection.endIndex.getter();
  v51 = (v9 + 8);
  v38 = v15;
  v45 = (v15 + 8);
  v22 = MEMORY[0x1E69E6610];
  v40 = a1;
  v46 = v13;
  while (1)
  {
    v23 = v49;
    dispatch thunk of Collection.startIndex.getter();
    v24 = AssociatedTypeWitness;
    swift_getAssociatedConformanceWitness();
    v25 = dispatch thunk of static Comparable.> infix(_:_:)();
    v26 = *v51;
    (*v51)(v23, v24);
    if ((v25 & 1) == 0)
    {
      v26(v46, AssociatedTypeWitness);
      v35 = v38;
      v34 = v39;
      v29 = v48;
      (*(v38 + 32))(v39, v47, v48);
      v36 = 0;
      return (*(v35 + 56))(v34, v36, 1, v29);
    }

    v27 = a2;
    v28 = v43;
    dispatch thunk of Collection.startIndex.getter();
    v29 = v48;
    v30 = v22;
    swift_getAssociatedConformanceWitness();
    v31 = v47;
    v32 = dispatch thunk of static Comparable.> infix(_:_:)();
    v33 = *v45;
    (*v45)(v28, v29);
    if ((v32 & 1) == 0)
    {
      break;
    }

    a2 = v27;
    dispatch thunk of BidirectionalCollection.formIndex(before:)();
    dispatch thunk of BidirectionalCollection.formIndex(before:)();
    v22 = v30;
  }

  v26(v46, AssociatedTypeWitness);
  v33(v31, v29);
  v36 = 1;
  v35 = v38;
  v34 = v39;
  return (*(v35 + 56))(v34, v36, 1, v29);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RegexPatternCache.Key()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance RegexPatternCache.Key()
{
  v1 = *(v0 + 16);
  String.hash(into:)();
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RegexPatternCache.Key()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RegexPatternCache.Key(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t closure #1 in RegexPatternCache.regex(for:caseInsensitive:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W6>, char *a7@<X8>)
{
  v98 = a5;
  LODWORD(v91) = a6;
  v95 = a7;
  v11 = type metadata accessor for RegexWordBoundaryKind();
  v89 = *(v11 - 8);
  v90 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd);
  v15 = *(v14 - 8);
  v96 = v14;
  v97 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v94 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v79 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v79 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v93 = &v79 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v79 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v79 - v28;
  v92 = a1;
  v30 = *a1;
  if (*(v30 + 16))
  {
    v31 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 1);
    if (v32)
    {
      v33 = v96;
      v34 = v97;
      (*(v97 + 16))(v26, *(v30 + 56) + *(v97 + 72) * v31, v96);
      v35 = *(v34 + 32);
      v35(v29, v26, v33);
      v36 = v95;
      v35(v95, v29, v33);
      return (*(v34 + 56))(v36, 0, 1, v33);
    }
  }

  v38 = a4;
  v87 = a3;
  v88 = a2;

  v39 = v99;
  result = Regex<A>.init(_:)();
  if (!v39)
  {
    v99 = 0;
    MEMORY[0x1865C9FA0](result);
    v40 = v93;
    v41 = v96;
    Regex.wordBoundaryKind(_:)();
    (*(v89 + 8))(v13, v90);
    v42 = v97;
    v43 = *(v97 + 8);
    v43(v21, v41);
    if (v91)
    {
      v44 = v86;
      Regex.ignoresCase(_:)();
      v43(v40, v41);
      (*(v42 + 32))(v40, v44, v41);
    }

    v45 = *(v42 + 16);
    v45(v94, v40, v41);
    v46 = v87;

    v47 = v92;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100 = *v47;
    v49 = v100;
    v51 = specialized __RawDictionaryStorage.find<A>(_:)(v88, v46, v38 & 1);
    v52 = *(v49 + 16);
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      __break(1u);
    }

    else
    {
      if (*(v49 + 24) < v54)
      {
        v55 = v50;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v54, isUniquelyReferenced_nonNull_native);
        v56 = v100;
        v57 = v87;
        v58 = v88;
        v59 = specialized __RawDictionaryStorage.find<A>(_:)(v88, v87, v38 & 1);
        if ((v55 & 1) == (v60 & 1))
        {
          v51 = v59;
          v61 = v95;
          if ((v55 & 1) == 0)
          {
            goto LABEL_32;
          }

LABEL_14:
          v62 = v51;

          (*(v42 + 40))(*(v56 + 56) + *(v42 + 72) * v62, v94, v41);
LABEL_33:
          *v47 = v56;
          (*(v42 + 32))(v61, v93, v41);
          return (*(v42 + 56))(v61, 0, 1, v41);
        }

LABEL_36:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v56 = v49;
        v61 = v95;
        v57 = v87;
        v58 = v88;
        if (v50)
        {
          goto LABEL_14;
        }

        goto LABEL_32;
      }
    }

    v82 = v51;
    v83 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation17RegexPatternCacheV3Key33_B716E24E4B0E6BAE66DBA40DF02722D8LLV17_StringProcessing0D0VyAI03AnyD6OutputVGGMd);
    v63 = static _DictionaryStorage.copy(original:)();
    v56 = v63;
    if (*(v49 + 16))
    {
      v64 = (v63 + 64);
      v65 = ((1 << *(v56 + 32)) + 63) >> 6;
      if (v56 != v49 || v64 >= v49 + 64 + 8 * v65)
      {
        memmove(v64, (v49 + 64), 8 * v65);
      }

      v66 = 0;
      *(v56 + 16) = *(v49 + 16);
      v67 = 1 << *(v49 + 32);
      v68 = -1;
      if (v67 < 64)
      {
        v68 = ~(-1 << v67);
      }

      v98 = v68 & *(v49 + 64);
      v80 = (v67 + 63) >> 6;
      v81 = v49 + 64;
      v84 = v97 + 32;
      for (i = v98; v98; i = v98)
      {
        v98 = (i - 1) & i;
        v70 = __clz(__rbit64(i)) | (v66 << 6);
        v42 = v97;
LABEL_29:
        v89 = 24 * v70;
        v73 = *(v49 + 56);
        v74 = *(v49 + 48) + 24 * v70;
        v75 = *(v74 + 8);
        v91 = *v74;
        LODWORD(v90) = *(v74 + 16);
        v85 = *(v42 + 72) * v70;
        v76 = v86;
        v77 = v96;
        v45(v86, (v73 + v85), v96);
        v78 = *(v56 + 48) + v89;
        *v78 = v91;
        *(v78 + 8) = v75;
        *(v78 + 16) = v90;
        (*(v97 + 32))(*(v56 + 56) + v85, v76, v77);
      }

      v71 = v66;
      v42 = v97;
      v47 = v92;
      while (1)
      {
        v66 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          break;
        }

        if (v66 >= v80)
        {
          goto LABEL_31;
        }

        v72 = *(v81 + 8 * v66);
        ++v71;
        if (v72)
        {
          v98 = (v72 - 1) & v72;
          v70 = __clz(__rbit64(v72)) | (v66 << 6);
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_31:

    v61 = v95;
    v41 = v96;
    v57 = v87;
    v58 = v88;
    v51 = v82;
    if (v83)
    {
      goto LABEL_14;
    }

LABEL_32:
    specialized _NativeDictionary._insert(at:key:value:)(v51, v58, v57, v38 & 1, v94, v56);
    goto LABEL_33;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RegexPatternCache.Key and conformance RegexPatternCache.Key()
{
  result = lazy protocol witness table cache variable for type RegexPatternCache.Key and conformance RegexPatternCache.Key;
  if (!lazy protocol witness table cache variable for type RegexPatternCache.Key and conformance RegexPatternCache.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegexPatternCache.Key and conformance RegexPatternCache.Key);
  }

  return result;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance String@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

NSString __swiftcall Substring._bridgeToObjectiveC()()
{
  MEMORY[0x1865CAE80]();
  v0 = String._bridgeToObjectiveCImpl()();

  return v0;
}

uint64_t protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance Substring()
{
  MEMORY[0x1865CAE80](*v0, v0[1], v0[2], v0[3]);
  v1 = String._bridgeToObjectiveCImpl()();

  return v1;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance Substring@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = specialized static Substring._unconditionallyBridgeFromObjectiveC(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

id specialized static Substring._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{

  isTaggedPointer = _objc_isTaggedPointer(a1);
  v5 = a1;
  v6 = v5;
  if (!isTaggedPointer)
  {
LABEL_6:
    if (!__CFStringIsCF())
    {
      v8 = v6;
      String.init(_nativeStorage:)();
      if (!v9 && [v8 length])
      {
        String.init(_cocoaString:)();
      }

      else
      {
      }

      goto LABEL_19;
    }

    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v5);
  if (!TaggedPointerTag)
  {
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [v6 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_19:
      v13 = String.subscript.getter();
      v15 = v14;
      v17 = v16;
      v19 = v18;

      *a2 = v13;
      a2[1] = v15;
      a2[2] = v17;
      a2[3] = v19;
      return result;
    }

    goto LABEL_6;
  }

  result = [v6 UTF8String];
  if (result)
  {
    String.init(utf8String:)(result);
    if (v11)
    {
LABEL_7:

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t specialized static Substring._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{

  isTaggedPointer = _objc_isTaggedPointer(a1);
  v5 = a1;
  v6 = v5;
  if (!isTaggedPointer)
  {
LABEL_6:
    if (!__CFStringIsCF())
    {
      v8 = v6;
      String.init(_nativeStorage:)();
      if (!v9 && [v8 length])
      {
        String.init(_cocoaString:)();
      }

      else
      {
      }

      goto LABEL_19;
    }

    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v5);
  if (!TaggedPointerTag)
  {
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [v6 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_19:
      v13 = String.subscript.getter();
      v15 = v14;
      v17 = v16;
      v19 = v18;

      *a2 = v13;
      a2[1] = v15;
      a2[2] = v17;
      a2[3] = v19;
      return 1;
    }

    goto LABEL_6;
  }

  result = [v6 UTF8String];
  if (result)
  {
    String.init(utf8String:)(result);
    if (v11)
    {
LABEL_7:

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id specialized static Substring._unconditionallyBridgeFromObjectiveC(_:)(void *a1)
{
  if (!a1)
  {
    goto LABEL_21;
  }

  isTaggedPointer = _objc_isTaggedPointer(a1);
  v3 = a1;
  v4 = v3;
  if (!isTaggedPointer)
  {
LABEL_7:
    if (!__CFStringIsCF())
    {
      v6 = v4;
      String.init(_nativeStorage:)();
      if (!v7 && [v6 length])
      {
        String.init(_cocoaString:)();
      }

      else
      {
      }

      goto LABEL_21;
    }

    goto LABEL_8;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v3);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v10)
    {
      [v4 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_21:
      v11 = String.subscript.getter();

      return v11;
    }

    goto LABEL_7;
  }

  result = [v4 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v9)
    {
LABEL_8:

      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void Substring._enumerateComponents(separatedBy:options:withBlock:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t), uint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11)
{
  v105 = a3;
  v106 = a4;
  v107 = a1;
  v108 = a2;
  v112 = a10;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVyAA03AnyC6OutputV_GSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v80 - v19;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVyAA03AnyC6OutputV_GMd);
  v21 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v85 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v84 = &v80 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGSgMd);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v99 = &v80 - v26;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd);
  MEMORY[0x1EEE9AC00](v98);
  v86 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v87 = &v80 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v104 = &v80 - v32;
  v111 = a9;
  v33 = a9 >> 14;
  v115 = a8 >> 14;
  if (a8 >> 14 >= a9 >> 14)
  {
    v74 = v115;
LABEL_31:
    if (v33 >= v74)
    {
      v76 = Substring.subscript.getter();
      a6(v76);

      return;
    }
  }

  else
  {
    v82 = v20;
    v83 = v17;
    v110 = a5;
    v96 = a5 & 1;
    v95 = (v31 + 48);
    v91 = (v31 + 32);
    v90 = (v21 + 48);
    v89 = (v21 + 32);
    v81 = v21;
    v88 = (v21 + 8);
    v94 = (v108 ^ v107) >> 14;
    v114 = a8;
    v101 = a9 >> 14;
    v93 = a6;
    v92 = a7;
    v102 = a11;
    v103 = a8;
    v100 = (v31 + 8);
    while (v33 >= v115)
    {
      v34 = Substring.subscript.getter();
      v38 = v34;
      v39 = v35;
      if ((v110 & 0x400) != 0)
      {
        v109 = v37;
        if (one-time initialization token for cache != -1)
        {
          swift_once();
        }

        v44 = static RegexPatternCache.cache;

        v45 = MEMORY[0x1865CAE80](v107, v108, v105, v106);
        MEMORY[0x1EEE9AC00](v45);
        os_unfair_lock_lock((v44 + 24));
        v46 = v99;
        v47 = v113;
        partial apply for closure #1 in RegexPatternCache.regex(for:caseInsensitive:)((v44 + 16), v99);
        v113 = v47;
        v48 = v104;
        v49 = (v44 + 24);
        if (v47)
        {
          os_unfair_lock_unlock(v49);

          return;
        }

        os_unfair_lock_unlock(v49);

        v50 = v98;
        if ((*v95)(v46, 1, v98) == 1)
        {

          outlined destroy of TermOfAddress?(v46, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGSgMd);
          v74 = v115;
          a6 = v93;
LABEL_38:
          v33 = v101;
          goto LABEL_31;
        }

        (*v91)(v48, v46, v50);
        v51 = v39 >> 14;
        if ((v110 & 8) != 0)
        {
          lazy protocol witness table accessor for type Regex<AnyRegexOutput> and conformance Regex<A>();
          v66 = v87;
          dispatch thunk of RegexComponent.regex.getter();
          v67 = v100;
          if (v51 < v38 >> 14)
          {
            goto LABEL_49;
          }

          Substring.subscript.getter();
          v68 = v82;
          v69 = v113;
          Regex.prefixMatch(in:)();
          if (v69)
          {

            v77 = *v67;
            (*v67)(v66, v50);
            v77(v48, v50);
            (*(v81 + 56))(v68, 1, 1, v97);
            v113 = 0;
            goto LABEL_44;
          }

          v113 = 0;
          v57 = *v67;
          (*v67)(v66, v50);

          v70 = v97;
          if ((*v90)(v68, 1, v97) == 1)
          {

            v57(v48, v50);
LABEL_44:
            v79 = v68;
LABEL_45:
            outlined destroy of TermOfAddress?(v79, &_s17_StringProcessing5RegexV5MatchVyAA03AnyC6OutputV_GSgMd);
            v74 = v115;
            v33 = v101;
            a6 = v93;
            goto LABEL_31;
          }

          v71 = v84;
          (*v89)(v84, v68, v70);
          v72 = v48;
          v60 = Regex.Match.range.getter();
          v62 = v73;

          (*v88)(v71, v70);
          v63 = v72;
          v64 = v50;
        }

        else
        {
          v52 = v100;
          if (v51 < v38 >> 14)
          {
            goto LABEL_50;
          }

          Substring.subscript.getter();
          lazy protocol witness table accessor for type Regex<AnyRegexOutput> and conformance Regex<A>();
          v53 = v86;
          v54 = v50;
          dispatch thunk of RegexComponent.regex.getter();
          v55 = v83;
          v56 = v113;
          Regex.firstMatch(in:)();
          if (v56)
          {

            v78 = *v52;
            (*v52)(v53, v54);
            v78(v104, v54);
            (*(v81 + 56))(v55, 1, 1, v97);
            v113 = 0;
LABEL_42:
            v79 = v55;
            goto LABEL_45;
          }

          v113 = 0;
          v57 = *v52;
          (*v52)(v53, v54);

          v58 = v97;
          if ((*v90)(v55, 1, v97) == 1)
          {

            v57(v104, v54);
            goto LABEL_42;
          }

          v59 = v85;
          (*v89)(v85, v55, v58);
          v60 = Regex.Match.range.getter();
          v62 = v61;

          (*v88)(v59, v58);
          v63 = v104;
          v64 = v54;
        }

        v57(v63, v64);
        a6 = v93;
      }

      else
      {
        if ((v34 ^ v35) < 0x4000 || !v94)
        {

          v74 = v115;
          goto LABEL_31;
        }

        v40 = (v110 >> 8) & 1;
        if ((v110 & 2) != 0)
        {
          v41 = specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v107, v108, v105, v106, v40, (v110 & 0x80) != 0, v110 & 1, (v110 >> 3) & 1, (v110 & 4) != 0, v34, v35, v36, v37);
        }

        else
        {
          v41 = specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v107, v108, v105, v106, v40, (v110 & 0x80) != 0, v110 & 1, (v110 & 8) != 0, (v110 & 4) != 0, v34, v35);
        }

        v60 = v41;
        v62 = v42;
        v65 = v43;

        if (v65)
        {
          v74 = v115;
          goto LABEL_38;
        }
      }

      v74 = v62 >> 14;
      if (v60 >> 14 == v62 >> 14)
      {
        v74 = v115;
        v33 = v101;
        goto LABEL_31;
      }

      if (v60 >> 14 < v115)
      {
        goto LABEL_47;
      }

      v75 = Substring.subscript.getter();
      a6(v75);

      v114 = v62;
      v115 = v62 >> 14;
      v33 = v101;
      if (v74 >= v101)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t UInt8._numericValue.getter(char a1)
{
  if ((a1 - 58) >= 0xF6u)
  {
    return (a1 - 48);
  }

  else
  {
    return 0;
  }
}

unint64_t specialized _StringCompareOptionsIterable.consumeNumbers(from:initialValue:)(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v33 = type metadata accessor for Unicode.Scalar.Properties();
  MEMORY[0x1EEE9AC00](v33);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  v16 = *a1 >> 14;
  v32 = a4;
  v17 = a4 >> 14;
  if (v16 >= a4 >> 14)
  {
    return a2;
  }

  v18 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v18) = 1;
  }

  v19 = 4 << v18;
  v30 = a3;
  v31 = a3 >> 14;
  v28 = a6 & 0xFFFFFFFFFFFFFFLL;
  v29 = HIBYTE(a6) & 0xF;
  v27[0] = a5 & 0xFFFFFFFFFFFFLL;
  v27[1] = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v20 = (v12 + 8);
  while (1)
  {
    if ((result & 0xC) == v19 || (result & 1) == 0)
    {
      if ((result & 0xC) == v19)
      {
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a5, a6);
      }

      if (result >> 14 < v31 || result >> 14 >= v17)
      {
        goto LABEL_36;
      }

      if ((result & 1) == 0)
      {
        _StringGuts.scalarAlignSlow(_:)(result, a5, a6);
      }
    }

    else if (v16 < v31 || v16 >= v17)
    {
      goto LABEL_37;
    }

    if ((a6 & 0x1000000000000000) != 0)
    {
      _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((a6 & 0x2000000000000000) != 0)
      {
        v34 = a5;
        v35 = v28;
      }

      else if ((a5 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      _decodeScalar(_:startingAt:)();
    }

    Unicode.Scalar.properties.getter();
    v22 = COERCE_DOUBLE(Unicode.Scalar.Properties.numericValue.getter());
    v24 = v23;
    result = (*v20)(v14, v33);
    if (v24)
    {
      return a2;
    }

    if ((~*&v22 & 0x7FF0000000000000) == 0)
    {
      break;
    }

    if (v22 <= -9.22337204e18)
    {
      goto LABEL_34;
    }

    if (v22 >= 9.22337204e18)
    {
      goto LABEL_35;
    }

    v25 = 10 * a2;
    if ((a2 * 10) >> 64 == (10 * a2) >> 63)
    {
      v26 = v25 + v22;
      if (!__OFADD__(v25, v22))
      {
        Substring.UnicodeScalarView.formIndex(after:)();
        result = *a1;
        v16 = *a1 >> 14;
        a2 = v26;
        if (v16 < v17)
        {
          continue;
        }
      }
    }

    return a2;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

unint64_t specialized _StringCompareOptionsIterable._consumeExtendCharacters(from:)(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  result = *a1;
  v7 = result >> 14;
  v8 = a3 >> 14;
  if (result >> 14 < a3 >> 14)
  {
    v11 = (a4 >> 59) & 1;
    if ((a5 & 0x1000000000000000) == 0)
    {
      LOBYTE(v11) = 1;
    }

    v12 = 4 << v11;
    v13 = a2 >> 14;
    while (1)
    {
      if ((result & 0xC) == v12 || (result & 1) == 0)
      {
        if ((result & 0xC) == v12)
        {
          result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a4, a5);
        }

        if (result >> 14 < v13 || result >> 14 >= v8)
        {
          goto LABEL_29;
        }

        if ((result & 1) == 0)
        {
          _StringGuts.scalarAlignSlow(_:)(result, a4, a5);
        }
      }

      else if (v7 < v13)
      {
        __break(1u);
LABEL_29:
        __break(1u);
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        result = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((a5 & 0x2000000000000000) == 0 && (a4 & 0x1000000000000000) == 0)
        {
          _StringObject.sharedUTF8.getter();
        }

        result = _decodeScalar(_:startingAt:)();
      }

      if (BYTE2(result) <= 0xEu)
      {
        v15 = *(&__CFUniCharGraphemeExtendCharacterSetBitmap_0 + BYTE2(result));
        if (v15)
        {
          if ((*(v15 + (result >> 3)) >> (result & 7)))
          {
            Substring.UnicodeScalarView.formIndex(after:)();
            result = *a1;
            v7 = *a1 >> 14;
            if (v7 < v8)
            {
              continue;
            }
          }
        }
      }

      return result;
    }
  }

  return result;
}

unint64_t specialized _StringCompareOptionsIterable._consumeExtendCharacters(from:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 14;
  if (a3 >> 14 > *result >> 14)
  {
    v4 = result;
    while (1)
    {
      v6 = Substring.subscript.getter();
      v7 = v5;
      if (v6 == 2573 && v5 == 0xE200000000000000)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      if ((v7 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v7) & 0xF;
      }

      else
      {
        v8 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (!v8)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      if ((v7 & 0x1000000000000000) != 0)
      {
        v9 = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        v9 = _StringGuts.fastUTF8ScalarLength(startingAt:)(0) << 16;
      }

      if (v9 >> 14 == 4 * v8)
      {
        result = specialized Collection.first.getter(v6, v7);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_27;
        }

        if ((result & 0xFFFFFF80) == 0)
        {
          result = specialized Collection.first.getter(v6, v7);
          if ((result & 0x100000000) == 0)
          {
            v11 = result;

            if ((v11 & 0xFFFFFF00) == 0)
            {
              return result;
            }

            goto LABEL_26;
          }

          goto LABEL_28;
        }
      }

      v10 = specialized Sequence.allSatisfy(_:)(v6, v7);

      if (v10)
      {
        result = Substring.index(after:)();
        *v4 = result;
        if (v3 > result >> 14)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 4 * v3;
  if ((4 * v3) > *result >> 14)
  {
    v5 = result;
    while (1)
    {
      v7 = String.subscript.getter();
      v8 = v6;
      if (v7 == 2573 && v6 == 0xE200000000000000)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      if ((v8 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(v8) & 0xF;
      }

      else
      {
        v9 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (!v9)
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return result;
      }

      if ((v8 & 0x1000000000000000) != 0)
      {
        v10 = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        v10 = _StringGuts.fastUTF8ScalarLength(startingAt:)(0) << 16;
      }

      if (v10 >> 14 == 4 * v9)
      {
        result = specialized Collection.first.getter(v7, v8);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_29;
        }

        if ((result & 0xFFFFFF80) == 0)
        {
          result = specialized Collection.first.getter(v7, v8);
          if ((result & 0x100000000) == 0)
          {
            v12 = result;

            if ((v12 & 0xFFFFFF00) == 0)
            {
              return result;
            }

            goto LABEL_28;
          }

          goto LABEL_30;
        }
      }

      v11 = specialized Sequence.allSatisfy(_:)(v7, v8);

      if (v11)
      {
        result = String.index(after:)();
        *v5 = result;
        if (v4 > result >> 14)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

unint64_t specialized _StringCompareOptionsIterable._consumeExtendCharacters(from:)(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v49 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = *a1;
  if (4 * v4 > result >> 14)
  {
    v8 = (a2 >> 59) & 1;
    if ((a3 & 0x1000000000000000) == 0)
    {
      LOBYTE(v8) = 1;
    }

    v9 = 4 << v8;
    v46 = a3 & 0xFFFFFFFFFFFFFFLL;
    v10 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v11 = &__CFUniCharGraphemeExtendCharacterSetBitmap_0;
    do
    {
      v13 = result & 0xC;
      v14 = (result & 1) == 0 || v13 == v9;
      v15 = v14;
      if (v14)
      {
        v16 = result;
        if (v13 == v9)
        {
          v45 = result;
          v38 = v11;
          v39 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
          v11 = v38;
          v16 = v39;
          result = v45;
        }

        v17 = v16 >> 16;
        if (v16 >> 16 >= v4)
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
        }

        if ((v16 & 1) == 0)
        {
          v42 = result;
          v18 = v11;
          v19 = _StringGuts.scalarAlignSlow(_:)(v16, a2, a3);
          v11 = v18;
          v20 = v19;
          result = v42;
          v17 = v20 >> 16;
        }
      }

      else
      {
        v17 = result >> 16;
        if (result >> 16 >= v4)
        {
          goto LABEL_59;
        }
      }

      if ((a3 & 0x1000000000000000) != 0)
      {
        v44 = result;
        v36 = v11;
        v37 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v11 = v36;
        v25 = v37;
        result = v44;
      }

      else
      {
        if ((a3 & 0x2000000000000000) != 0)
        {
          v47 = a2;
          v48 = v46;
          v21 = &v47;
        }

        else
        {
          v21 = v10;
          if ((a2 & 0x1000000000000000) == 0)
          {
            v43 = result;
            v22 = _StringObject.sharedUTF8.getter();
            v11 = &__CFUniCharGraphemeExtendCharacterSetBitmap_0;
            v21 = v22;
            result = v43;
          }
        }

        v23 = v21 + v17;
        v24 = *(v21 + v17);
        v25 = *(v21 + v17);
        if (v24 < 0)
        {
          v33 = (__clz(v25 ^ 0xFF) - 24);
          if (v33 > 2)
          {
            if (v33 == 3)
            {
              v25 = ((v25 & 0xF) << 12) | ((v23[1] & 0x3F) << 6) | v23[2] & 0x3F;
            }

            else
            {
              v25 = ((v25 & 0xF) << 18) | ((v23[1] & 0x3F) << 12) | ((v23[2] & 0x3F) << 6) | v23[3] & 0x3F;
            }
          }

          else if (v33 != 1)
          {
            v25 = v23[1] & 0x3F | ((v25 & 0x1F) << 6);
          }
        }
      }

      if (BYTE2(v25) > 0xEu)
      {
        break;
      }

      v26 = v11[BYTE2(v25)];
      if (!v26 || ((v26[v25 >> 3] >> (v25 & 7)) & 1) == 0)
      {
        break;
      }

      if (v15)
      {
        if (v13 == v9)
        {
          v40 = v11;
          result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
          v11 = v40;
          if (v4 <= result >> 16)
          {
            goto LABEL_60;
          }
        }

        else if (v4 <= result >> 16)
        {
          goto LABEL_60;
        }

        if ((result & 1) == 0)
        {
          v27 = result;
          v28 = v11;
          v29 = _StringGuts.scalarAlignSlow(_:)(result, a2, a3);
          v11 = v28;
          result = v27 & 0xC | v29 & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else if (v4 <= result >> 16)
      {
        goto LABEL_61;
      }

      if ((a3 & 0x1000000000000000) != 0)
      {
        v12 = v11;
        result = String.UnicodeScalarView._foreignIndex(after:)();
        v11 = v12;
      }

      else
      {
        v30 = result >> 16;
        if ((a3 & 0x2000000000000000) != 0)
        {
          v47 = a2;
          v48 = v46;
          v32 = *(&v47 + v30);
        }

        else
        {
          v31 = v10;
          if ((a2 & 0x1000000000000000) == 0)
          {
            v41 = v11;
            v31 = _StringObject.sharedUTF8.getter();
            v11 = v41;
          }

          v32 = *(v31 + v30);
        }

        v34 = v32;
        v35 = __clz(v32 ^ 0xFF) - 24;
        if (v34 >= 0)
        {
          LOBYTE(v35) = 1;
        }

        result = ((v30 + v35) << 16) | 5;
      }

      *a1 = result;
    }

    while (4 * v4 > result >> 14);
  }

  return result;
}

uint64_t specialized _StringCompareOptionsIterable._compare<A>(_:toHalfWidth:diacriticsInsensitive:caseFold:numeric:forceOrdering:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, char a5, char a6, char a7, int a8, char a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13)
{
  v13 = a6;
  v16 = a10;
  v233 = a1;
  v234[0] = a10;
  v17 = a10 >> 14;
  v225 = a11 >> 14;
  if (a10 >> 14 >= a11 >> 14)
  {
    v220 = 0;
LABEL_265:
    v169 = a2;
    if ((v13 & 1) == 0)
    {
LABEL_267:

      if ((v233 ^ v169) >> 14)
      {
        v170 = -1;
      }

      else
      {
        v170 = 0;
      }

      if (v225 == v234[0] >> 14)
      {
        v171 = v170;
      }

      else
      {
        v171 = 1;
      }

      if (v171)
      {
        return v171;
      }

      else
      {
        return v220;
      }
    }

LABEL_266:
    specialized _StringCompareOptionsIterable._consumeExtendCharacters(from:)(v234, a10, a11, a12, a13);
    specialized _StringCompareOptionsIterable._consumeExtendCharacters(from:)(&v233, a1, v169, a3, a4);
    goto LABEL_267;
  }

  v18 = 0;
  v19 = 0;
  v205 = 0;
  v20 = 0;
  v220 = 0;
  v221 = a2 >> 14;
  v219 = a4 & 0xFFFFFFFFFFFFFFLL;
  v193 = a5 | a6 | a7;
  v21 = 0xE000000000000000;
  v229 = 15;
  v22 = 0xE000000000000000;
  v23 = 15;
  while (1)
  {
    v203 = v20;
    v222 = v21 & 0x2000000000000000;
    v24 = v18 & 0xFFFFFFFFFFFFLL;
    v210 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) != 0)
    {
      v24 = HIBYTE(v21) & 0xF;
    }

    v226 = v24;
    v25 = v24 == 0;
    v197 = v22 & 0x2000000000000000;
    v214 = v19;
    v217 = v22;
    v26 = HIBYTE(v22) & 0xF;
    v196 = v26;
    v200 = v19 & 0xFFFFFFFFFFFFLL;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v26 = v19 & 0xFFFFFFFFFFFFLL;
    }

    v223 = v26;
    v27 = v25 & a8;
    v198 = v17;
    v28 = v17;
    v29 = v220;
LABEL_8:
    v211 = v29;
    while (1)
    {
      v30 = v233;
      if (v221 <= v233 >> 14)
      {
LABEL_276:
        v220 = v211;
LABEL_277:
        v169 = a2;
        if ((a6 & 1) == 0)
        {
          goto LABEL_267;
        }

        goto LABEL_266;
      }

      if (v226)
      {
        v31 = _StringGuts.validateScalarIndex(_:)(v229, v18, v21);
        if ((v21 & 0x1000000000000000) != 0)
        {
          v36 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
          _StringGuts.validateScalarIndex(_:)(v229, v18, v21);
          v229 = String.UnicodeScalarView._foreignIndex(after:)();
        }

        else
        {
          v32 = v31 >> 16;
          if (v222)
          {
            v231 = v18;
            v232 = v21 & 0xFFFFFFFFFFFFFFLL;
            v38 = &v231 + v32;
            v39 = *(&v231 + v32);
            v36 = *(&v231 + v32);
            if (v39 < 0)
            {
              v40 = (__clz(v36 ^ 0xFF) - 24);
              if (v40 > 2)
              {
                if (v40 == 3)
                {
                  v44 = v38[1];
                  v45 = v38[2];
                  v46 = ((v36 & 0xF) << 12) | ((v44 & 0x3F) << 6);
                }

                else
                {
                  v53 = v38[1];
                  v54 = v38[2];
                  v45 = v38[3];
                  v46 = ((v36 & 0xF) << 18) | ((v53 & 0x3F) << 12) | ((v54 & 0x3F) << 6);
                }

                v36 = v46 & 0xFFFFFFC0 | v45 & 0x3F;
              }

              else if (v40 != 1)
              {
                v36 = v38[1] & 0x3F | ((v36 & 0x1F) << 6);
              }
            }

            v51 = _StringGuts.validateScalarIndex(_:)(v229, v18, v21) >> 16;
            v231 = v18;
            v232 = v21 & 0xFFFFFFFFFFFFFFLL;
            v52 = *(&v231 + v51);
          }

          else
          {
            v33 = (v21 & 0xFFFFFFFFFFFFFFFLL) + 32;
            if ((v18 & 0x1000000000000000) == 0)
            {
              v33 = _StringObject.sharedUTF8.getter();
            }

            v34 = (v33 + v32);
            v35 = *(v33 + v32);
            v36 = *(v33 + v32);
            if (v35 < 0)
            {
              v37 = (__clz(v36 ^ 0xFF) - 24);
              if (v37 > 2)
              {
                if (v37 == 3)
                {
                  v41 = v34[1];
                  v42 = v34[2];
                  v43 = ((v36 & 0xF) << 12) | ((v41 & 0x3F) << 6);
                }

                else
                {
                  v47 = v34[1];
                  v48 = v34[2];
                  v42 = v34[3];
                  v43 = ((v36 & 0xF) << 18) | ((v47 & 0x3F) << 12) | ((v48 & 0x3F) << 6);
                }

                v36 = v43 & 0xFFFFFFC0 | v42 & 0x3F;
              }

              else if (v37 != 1)
              {
                v36 = v34[1] & 0x3F | ((v36 & 0x1F) << 6);
              }
            }

            v49 = _StringGuts.validateScalarIndex(_:)(v229, v18, v21);
            v50 = (v21 & 0xFFFFFFFFFFFFFFFLL) + 32;
            if ((v18 & 0x1000000000000000) == 0)
            {
              v230 = v49;
              v50 = _StringObject.sharedUTF8.getter();
              v49 = v230;
            }

            v51 = v49 >> 16;
            v52 = *(v50 + v51);
          }

          v55 = v52;
          v56 = __clz(v52 ^ 0xFF) - 24;
          if (v55 >= 0)
          {
            LOBYTE(v56) = 1;
          }

          v229 = ((v51 + v56) << 16) | 5;
        }
      }

      else
      {
        _StringGuts.validateScalarIndex(_:in:)(v16, a10, a11, a12, a13);
        if ((a13 & 0x1000000000000000) != 0)
        {
          v36 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        }

        else
        {
          if ((a13 & 0x2000000000000000) != 0)
          {
            v231 = a12;
            v232 = a13 & 0xFFFFFFFFFFFFFFLL;
          }

          else if ((a12 & 0x1000000000000000) == 0)
          {
            _StringObject.sharedUTF8.getter();
          }

          v36 = _decodeScalar(_:startingAt:)();
        }
      }

      if (v223)
      {
        break;
      }

      _StringGuts.validateScalarIndex(_:in:)(v30, a1, a2, a3, a4);
      if ((a4 & 0x1000000000000000) == 0)
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v231 = a3;
          v232 = v219;
        }

        else if ((a3 & 0x1000000000000000) == 0)
        {
          _StringObject.sharedUTF8.getter();
        }

        v57 = _decodeScalar(_:startingAt:)();
        if (v27)
        {
          goto LABEL_52;
        }

LABEL_74:
        v13 = a6;
        v22 = v217;
        v65 = v23;
LABEL_75:
        v64 = v198;
        goto LABEL_99;
      }

      v57 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      if (!v27)
      {
        goto LABEL_74;
      }

LABEL_52:
      Unicode.Scalar.intValue.getter();
      if (v58 & 1) != 0 || (Unicode.Scalar.intValue.getter(), (v59))
      {
        v220 = v211;
        v64 = v28;
        v13 = a6;
        v22 = v217;
        v65 = v23;
        goto LABEL_99;
      }

      v60 = specialized _StringCompareOptionsIterable.consumeNumbers(from:initialValue:)(v234, 0, a10, a11, a12, a13);
      v61 = specialized _StringCompareOptionsIterable.consumeNumbers(from:initialValue:)(&v233, 0, a1, a2, a3, a4);
      if (v60 != v61)
      {
        v173 = v61;

        if (v60 >= v173)
        {
          return v173 < v60;
        }

        return -1;
      }

      v16 = v234[0];
      v28 = v234[0] >> 14;
      if (a9)
      {
        v62 = String.UnicodeScalarView.distance(from:to:)(a10, v234[0], a12, a13);
        v63 = String.UnicodeScalarView.distance(from:to:)(a1, v233, a3, a4);
        if (v62 != v63)
        {
          if (v62 < v63)
          {
            v29 = -1;
          }

          else
          {
            v29 = v63 < v62;
          }

          if (v28 >= v225)
          {
            v220 = v29;
            goto LABEL_277;
          }

          goto LABEL_8;
        }
      }

      if (v28 >= v225)
      {
        goto LABEL_276;
      }
    }

    v22 = v217;
    v66 = _StringGuts.validateScalarIndex(_:)(v23, v214, v217);
    if ((v217 & 0x1000000000000000) != 0)
    {
      v57 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      _StringGuts.validateScalarIndex(_:)(v23, v214, v217);
      v65 = String.UnicodeScalarView._foreignIndex(after:)();
      v13 = a6;
      goto LABEL_75;
    }

    v67 = v66 >> 16;
    if (v197)
    {
      v231 = v214;
      v232 = v217 & 0xFFFFFFFFFFFFFFLL;
      v70 = &v231 + v67;
      v57 = *(&v231 + v67);
      if (*(&v231 + v67) < 0)
      {
        v72 = (__clz(v57 ^ 0xFF) - 24);
        v13 = a6;
        if (v72 > 2)
        {
          if (v72 == 3)
          {
            v76 = v70[1];
            v77 = v70[2];
            v78 = ((v57 & 0xF) << 12) | ((v76 & 0x3F) << 6);
          }

          else
          {
            v85 = v70[1];
            v86 = v70[2];
            v77 = v70[3];
            v78 = ((v57 & 0xF) << 18) | ((v85 & 0x3F) << 12) | ((v86 & 0x3F) << 6);
          }

          v57 = v78 & 0xFFFFFFC0 | v77 & 0x3F;
        }

        else if (v72 != 1)
        {
          v57 = v70[1] & 0x3F | ((v57 & 0x1F) << 6);
        }
      }

      else
      {
        v13 = a6;
      }

      v22 = v217;
      v83 = _StringGuts.validateScalarIndex(_:)(v23, v214, v217) >> 16;
      v231 = v214;
      v232 = v217 & 0xFFFFFFFFFFFFFFLL;
      v84 = *(&v231 + v83);
    }

    else
    {
      if ((v214 & 0x1000000000000000) != 0)
      {
        v68 = (v217 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v68 = _StringObject.sharedUTF8.getter();
      }

      v13 = a6;
      v69 = (v68 + v67);
      v57 = *(v68 + v67);
      if (*(v68 + v67) < 0)
      {
        v71 = (__clz(v57 ^ 0xFF) - 24);
        v22 = v217;
        if (v71 > 2)
        {
          if (v71 == 3)
          {
            v73 = v69[1];
            v74 = v69[2];
            v75 = ((v57 & 0xF) << 12) | ((v73 & 0x3F) << 6);
          }

          else
          {
            v79 = v69[1];
            v80 = v69[2];
            v74 = v69[3];
            v75 = ((v57 & 0xF) << 18) | ((v79 & 0x3F) << 12) | ((v80 & 0x3F) << 6);
          }

          v57 = v75 & 0xFFFFFFC0 | v74 & 0x3F;
        }

        else if (v71 != 1)
        {
          v57 = v69[1] & 0x3F | ((v57 & 0x1F) << 6);
        }
      }

      else
      {
        v22 = v217;
      }

      v81 = _StringGuts.validateScalarIndex(_:)(v23, v214, v22);
      if ((v214 & 0x1000000000000000) != 0)
      {
        v82 = (v22 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v82 = _StringObject.sharedUTF8.getter();
      }

      v83 = v81 >> 16;
      v84 = *(v82 + (v81 >> 16));
    }

    v64 = v198;
    v87 = v84;
    v88 = __clz(v84 ^ 0xFF) - 24;
    if (v87 >= 0)
    {
      LOBYTE(v88) = 1;
    }

    v65 = ((v83 + v88) << 16) | 5;
LABEL_99:
    if (a10 >> 14 >= v64 || (v13 & 1) == 0)
    {
      v89 = v65;
      goto LABEL_114;
    }

    if (v226)
    {
      v89 = v65;
      goto LABEL_107;
    }

    v89 = v65;
    v90 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v36), 5u);
    if (!BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v36, v90, 0x700030005))
    {
LABEL_107:
      if (v223)
      {
        goto LABEL_114;
      }

      v91 = 0;
LABEL_109:
      v92 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v57), 5u);
      if (!BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v57, v92, 0x700030005))
      {
        v22 = v217;
        if (v91)
        {
          goto LABEL_113;
        }

        goto LABEL_114;
      }

      v22 = v217;
      if (v91)
      {
LABEL_115:
        v19 = v214;
      }

      else
      {
        Substring.UnicodeScalarView.formIndex(before:)();
        v19 = v214;
      }

      v23 = v89;
      v93 = v203;
LABEL_117:
      v94 = v21;
      v95 = v205;
      v209 = v93;
      if (!v226)
      {
        goto LABEL_179;
      }

      goto LABEL_174;
    }

    v36 = v57;
    if (!v223)
    {
      v91 = 1;
      v36 = v57;
      goto LABEL_109;
    }

LABEL_113:
    Substring.UnicodeScalarView.formIndex(before:)();
LABEL_114:
    if (v36 == v57)
    {
      goto LABEL_115;
    }

    if ((v193 & 1) == 0)
    {

      if (v36 >= v57)
      {
        return v57 < v36;
      }

      return -1;
    }

    v23 = v89;
    if ((a9 & 1) != 0 && !v220)
    {
      if (v36 >= v57)
      {
        v96 = v57 < v36;
      }

      else
      {
        v96 = -1;
      }

      v220 = v96;
    }

    if (v226)
    {
      v97 = v36;
      v199 = v205;
      v212 = v21;
    }

    else
    {
      v98 = Unicode.Scalar._transform(toHalfWidth:stripDiacritics:caseFolding:)(a5 & 1, v13 & 1, a7 & 1, v36);
      v100 = v99;
      v101 = specialized Collection.first.getter(v98, v99);
      if ((v101 & 0x100000000) != 0)
      {

        v97 = v36;
        v199 = v205;
        v212 = v21;
        v22 = v217;
      }

      else
      {
        v206 = v101;

        v102 = _StringGuts.validateScalarIndex(_:)(0xFuLL, v98, v100);
        v212 = v100;
        v18 = v98;
        v199 = v98;
        if ((v100 & 0x1000000000000000) != 0)
        {
          v229 = String.UnicodeScalarView._foreignIndex(after:)();
          v21 = v100;
          v22 = v217;
          v97 = v206;
        }

        else
        {
          v103 = v102 >> 16;
          if ((v100 & 0x2000000000000000) != 0)
          {
            v231 = v98;
            v232 = v100 & 0xFFFFFFFFFFFFFFLL;
            v105 = *(&v231 + v103);
            v22 = v217;
            v97 = v206;
          }

          else
          {
            if ((v98 & 0x1000000000000000) != 0)
            {
              v104 = (v100 & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              v104 = _StringObject.sharedUTF8.getter();
            }

            v22 = v217;
            v97 = v206;
            v105 = *(v104 + v103);
          }

          v106 = v105;
          v107 = __clz(v105 ^ 0xFF) - 24;
          if (v106 >= 0)
          {
            LOBYTE(v107) = 1;
          }

          v229 = ((v103 + v107) << 16) | 5;
          v21 = v100;
        }
      }
    }

    v222 = v21 & 0x2000000000000000;
    v108 = v18 & 0xFFFFFFFFFFFFLL;
    v210 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) != 0)
    {
      v108 = HIBYTE(v21) & 0xF;
    }

    v226 = v108;
    if (!v108)
    {
      if (!v223)
      {
        goto LABEL_146;
      }

      v184 = v97;

      if (v184 >= v57)
      {
        return v57 < v184;
      }

      return -1;
    }

    if (v223)
    {
      v224 = v22;
      v209 = v203;
      v19 = v214;
      v94 = v212;
      v109 = v196;
      goto LABEL_166;
    }

    v109 = v196;
    if (v97 == v57)
    {
      v224 = v22;
      v209 = v203;
      v19 = v214;
      v94 = v212;
      goto LABEL_166;
    }

LABEL_146:
    v207 = v97;
    v110 = Unicode.Scalar._transform(toHalfWidth:stripDiacritics:caseFolding:)(a5 & 1, v13 & 1, a7 & 1, v57);
    v112 = v111;
    v113 = specialized Collection.first.getter(v110, v111);
    if ((v113 & 0x100000000) != 0)
    {

      v119 = v57;
      v209 = v203;
      v224 = v22;
      v19 = v214;
      v94 = v212;
      v120 = v197;
      v121 = v207;
    }

    else
    {
      v215 = v113;

      v209 = v110;
      v114 = _StringGuts.validateScalarIndex(_:)(0xFuLL, v110, v112);
      v22 = v112;
      v224 = v112;
      if ((v112 & 0x1000000000000000) != 0)
      {
        v19 = v110;
        v23 = String.UnicodeScalarView._foreignIndex(after:)();

        v120 = v112 & 0x2000000000000000;
        v94 = v212;
      }

      else
      {
        v115 = v114 >> 16;
        v94 = v212;
        if ((v22 & 0x2000000000000000) != 0)
        {
          v231 = v110;
          v232 = v22 & 0xFFFFFFFFFFFFFFLL;
          v117 = v22;
          v118 = *(&v231 + v115);
        }

        else
        {
          if ((v110 & 0x1000000000000000) != 0)
          {
            v116 = (v22 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            v116 = _StringObject.sharedUTF8.getter();
          }

          v117 = v22;
          v118 = *(v116 + v115);
        }

        v120 = v117 & 0x2000000000000000;
        v122 = __clz(v118 ^ 0xFF) - 24;
        if ((v118 & 0x80u) == 0)
        {
          v123 = 1;
        }

        else
        {
          v123 = v122;
        }

        v23 = ((v115 + v123) << 16) | 5;
        v22 = v117;
        v19 = v110;
      }

      v121 = v207;
      v119 = v215;
    }

    v109 = HIBYTE(v22) & 0xF;
    v124 = v19 & 0xFFFFFFFFFFFFLL;
    v200 = v19 & 0xFFFFFFFFFFFFLL;
    if (v120)
    {
      v124 = HIBYTE(v22) & 0xF;
    }

    if (!v124 || v121 != v119)
    {
      v180 = v119;

      if (v207 >= v180)
      {
        return v180 < v207;
      }

      return -1;
    }

    if (!v226)
    {
      v205 = v199;
      v21 = v94;
      v22 = v224;
      goto LABEL_179;
    }

LABEL_166:
    v125 = v200;
    if ((v22 & 0x2000000000000000) != 0)
    {
      v125 = v109;
    }

    if (v125)
    {
      break;
    }

LABEL_173:
    v22 = v224;
    v95 = v199;
LABEL_174:
    v128 = v95 & 0xFFFFFFFFFFFFLL;
    if (v222)
    {
      v128 = v210;
    }

    if (v229 >> 14 == 4 * v128)
    {

      v205 = 0;
      v18 = 0;
      v21 = 0xE000000000000000;
      v229 = 15;
    }

    else
    {
      v205 = v95;
      v21 = v94;
    }

LABEL_179:
    v129 = HIBYTE(v22) & 0xF;
    v130 = v19 & 0xFFFFFFFFFFFFLL;
    if ((v22 & 0x2000000000000000) != 0)
    {
      v130 = HIBYTE(v22) & 0xF;
    }

    if (v130)
    {
      v20 = v209;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v129 = v209 & 0xFFFFFFFFFFFFLL;
      }

      if (v23 >> 14 == 4 * v129)
      {

        v20 = 0;
        v19 = 0;
        v22 = 0xE000000000000000;
        v23 = 15;
      }
    }

    else
    {
      v20 = v209;
    }

    v131 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v131 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (!v131)
    {
      Substring.UnicodeScalarView.formIndex(after:)();
    }

    v132 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v132 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (!v132)
    {
      Substring.UnicodeScalarView.formIndex(after:)();
    }

    v16 = v234[0];
    v17 = v234[0] >> 14;
    if (v234[0] >> 14 >= v225)
    {
      goto LABEL_265;
    }
  }

  v126 = v199 & 0xFFFFFFFFFFFFLL;
  if (v222)
  {
    v126 = HIBYTE(v21) & 0xF;
  }

  v127 = 4 * v126;
  if (4 * v126 == v229 >> 14)
  {
    v13 = a6;
    goto LABEL_173;
  }

  v133 = v209 & 0xFFFFFFFFFFFFLL;
  if ((v22 & 0x2000000000000000) != 0)
  {
    v133 = v109;
  }

  v216 = v19;
  v218 = 4 * v133;
  v201 = v22 & 0xFFFFFFFFFFFFFFLL;
  v204 = (v21 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v208 = (v22 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (2)
  {
    if (v218 == v23 >> 14)
    {
LABEL_256:
      v93 = v209;
      v205 = v199;
      v22 = v224;
      v21 = v94;
      v13 = a6;
      goto LABEL_117;
    }

    v134 = _StringGuts.validateScalarIndex(_:)(v229, v18, v94);
    if ((v21 & 0x1000000000000000) != 0)
    {
      v138 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v135 = v134 >> 16;
      if (v222)
      {
        v231 = v18;
        v232 = v21 & 0xFFFFFFFFFFFFFFLL;
        v137 = &v231 + v135;
      }

      else
      {
        v136 = (v21 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v18 & 0x1000000000000000) == 0)
        {
          v136 = _StringObject.sharedUTF8.getter();
        }

        v137 = (v136 + v135);
      }

      v138 = *v137;
      if (*v137 < 0)
      {
        v149 = (__clz(v138 ^ 0xFF) - 24);
        if (v149 > 2)
        {
          if (v149 == 3)
          {
            v138 = ((v138 & 0xF) << 12) | ((v137[1] & 0x3F) << 6) | v137[2] & 0x3F;
          }

          else
          {
            v138 = ((v138 & 0xF) << 18) | ((v137[1] & 0x3F) << 12) | ((v137[2] & 0x3F) << 6) | v137[3] & 0x3F;
          }
        }

        else if (v149 != 1)
        {
          v138 = v137[1] & 0x3F | ((v138 & 0x1F) << 6);
        }
      }
    }

    v139 = v23;
    v140 = _StringGuts.validateScalarIndex(_:)(v23, v19, v224);
    if ((v22 & 0x1000000000000000) != 0)
    {
      v147 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      goto LABEL_233;
    }

    v141 = v22;
    v142 = v140 >> 16;
    v143 = v141;
    if ((v141 & 0x2000000000000000) != 0)
    {
      v231 = v19;
      v232 = v201;
      v145 = &v231 + v142;
      v147 = *(&v231 + v142);
      if (*(&v231 + v142) < 0)
      {
        v150 = (__clz(v147 ^ 0xFF) - 24);
        if (v150 > 2)
        {
          v22 = v143;
          if (v150 == 3)
          {
            goto LABEL_229;
          }

          goto LABEL_231;
        }

        if (v150 != 1)
        {
          v147 = v145[1] & 0x3F | ((v147 & 0x1F) << 6);
          v22 = v143;
          goto LABEL_233;
        }
      }

      v22 = v143;
      goto LABEL_233;
    }

    v144 = v208;
    if ((v19 & 0x1000000000000000) == 0)
    {
      v144 = _StringObject.sharedUTF8.getter();
    }

    v145 = (v144 + v142);
    v146 = *(v144 + v142);
    v147 = *(v144 + v142);
    v22 = v143;
    if (v146 < 0)
    {
      v148 = (__clz(v147 ^ 0xFF) - 24);
      if (v148 <= 2)
      {
        if (v148 != 1)
        {
          v147 = v145[1] & 0x3F | ((v147 & 0x1F) << 6);
        }

        goto LABEL_233;
      }

      if (v148 == 3)
      {
LABEL_229:
        v151 = v145[1];
        v152 = v145[2];
        v153 = ((v147 & 0xF) << 12) | ((v151 & 0x3F) << 6);
LABEL_232:
        v147 = v153 & 0xFFFFFFC0 | v152 & 0x3F;
        goto LABEL_233;
      }

LABEL_231:
      v154 = v145[1];
      v155 = v145[2];
      v152 = v145[3];
      v153 = ((v147 & 0xF) << 18) | ((v154 & 0x3F) << 12) | ((v155 & 0x3F) << 6);
      goto LABEL_232;
    }

LABEL_233:
    v156 = _StringGuts.validateScalarIndex(_:)(v229, v18, v212);
    if (v138 == v147)
    {
      v157 = v139;
      if ((v21 & 0x1000000000000000) != 0)
      {
        v94 = v212;
        v229 = String.UnicodeScalarView._foreignIndex(after:)();
        v19 = v216;
      }

      else
      {
        v158 = v156 >> 16;
        v19 = v216;
        v94 = v212;
        if (v222)
        {
          v231 = v18;
          v232 = v21 & 0xFFFFFFFFFFFFFFLL;
          v160 = *(&v231 + v158);
        }

        else
        {
          v159 = (v21 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v18 & 0x1000000000000000) == 0)
          {
            v159 = _StringObject.sharedUTF8.getter();
          }

          v160 = *(v159 + v158);
        }

        v161 = v160;
        v162 = __clz(v160 ^ 0xFF) - 24;
        if (v161 >= 0)
        {
          LOBYTE(v162) = 1;
        }

        v229 = ((v158 + v162) << 16) | 5;
      }

      v163 = _StringGuts.validateScalarIndex(_:)(v157, v19, v224);
      if ((v22 & 0x1000000000000000) != 0)
      {
        v23 = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        v164 = v163 >> 16;
        if ((v22 & 0x2000000000000000) != 0)
        {
          v231 = v19;
          v232 = v201;
          v166 = *(&v231 + v164);
        }

        else
        {
          v165 = v208;
          if ((v19 & 0x1000000000000000) == 0)
          {
            v165 = _StringObject.sharedUTF8.getter();
          }

          v166 = *(v165 + v164);
        }

        v167 = v166;
        v168 = __clz(v166 ^ 0xFF) - 24;
        if (v167 >= 0)
        {
          LOBYTE(v168) = 1;
        }

        v23 = ((v164 + v168) << 16) | 5;
      }

      if (v127 == v229 >> 14)
      {
        goto LABEL_256;
      }

      continue;
    }

    break;
  }

  if ((v21 & 0x1000000000000000) != 0)
  {
    v178 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    v175 = v216;
    v176 = v139;
  }

  else
  {
    v174 = v156 >> 16;
    v175 = v216;
    v176 = v139;
    if (v222)
    {
      v231 = v18;
      v232 = v21 & 0xFFFFFFFFFFFFFFLL;
      v177 = &v231 + v174;
      v178 = *(&v231 + v174);
      if (*(&v231 + v174) < 0)
      {
        goto LABEL_289;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) == 0)
      {
        v204 = _StringObject.sharedUTF8.getter();
        v176 = v139;
      }

      v177 = (v204 + v174);
      v178 = *(v204 + v174);
      if (*(v204 + v174) < 0)
      {
LABEL_289:
        v179 = (__clz(v178 ^ 0xFF) - 24);
        if (v179 > 2)
        {
          if (v179 == 3)
          {
            v181 = v177[1];
            v182 = v177[2];
            v183 = ((v178 & 0xF) << 12) | ((v181 & 0x3F) << 6);
          }

          else
          {
            v185 = v177[1];
            v186 = v177[2];
            v182 = v177[3];
            v183 = ((v178 & 0xF) << 18) | ((v185 & 0x3F) << 12) | ((v186 & 0x3F) << 6);
          }

          v178 = v183 & 0xFFFFFFC0 | v182 & 0x3F;
        }

        else if (v179 != 1)
        {
          v178 = v177[1] & 0x3F | ((v178 & 0x1F) << 6);
        }
      }
    }
  }

  v187 = _StringGuts.validateScalarIndex(_:)(v176, v175, v224);
  if ((v22 & 0x1000000000000000) != 0)
  {
    v191 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
  }

  else
  {
    v188 = v187 >> 16;
    if ((v22 & 0x2000000000000000) != 0)
    {
      v231 = v175;
      v232 = v201;
      v189 = &v231;
    }

    else
    {
      if ((v175 & 0x1000000000000000) == 0)
      {
        v208 = _StringObject.sharedUTF8.getter();
      }

      v189 = v208;
    }

    v190 = v189 + v188;
    v191 = *v190;
    if (*v190 < 0)
    {
      v192 = (__clz(v191 ^ 0xFF) - 24);
      if (v192 > 2)
      {
        if (v192 == 3)
        {
          v191 = ((v191 & 0xF) << 12) | ((v190[1] & 0x3F) << 6) | v190[2] & 0x3F;
        }

        else
        {
          v191 = ((v191 & 0xF) << 18) | ((v190[1] & 0x3F) << 12) | ((v190[2] & 0x3F) << 6) | v190[3] & 0x3F;
        }
      }

      else if (v192 != 1)
      {
        v191 = v190[1] & 0x3F | ((v191 & 0x1F) << 6);
      }
    }
  }

  if (v178 < v191)
  {
    return -1;
  }

  else
  {
    return v191 < v178;
  }
}

unint64_t specialized _StringCompareOptionsIterable._compare<A>(_:toHalfWidth:diacriticsInsensitive:caseFold:numeric:forceOrdering:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, unsigned __int8 a8, char a9, unint64_t a10, unint64_t a11)
{
  v11 = a2;
  v12 = a1;
  v14 = a10;
  v13 = a11;
  v147 = a1;
  v148 = a10;
  v146 = a11 >> 14;
  v116 = a10 >> 14;
  if (a10 >> 14 >= a11 >> 14)
  {
    v129 = 0;
    v22 = a1;
    v21 = a10;
LABEL_185:
    v147 = v22;
    v148 = v21;
    if (a6)
    {
      specialized _StringCompareOptionsIterable._consumeExtendCharacters(from:)(&v148, v14, v13);
      specialized _StringCompareOptionsIterable._consumeExtendCharacters(from:)(&v147, v12, v11);

      v99 = v147;
      v100 = v148;
    }

    else
    {
      v99 = v22;
      v100 = v21;
    }

    if ((v99 ^ v11) >> 14)
    {
      v101 = -1;
    }

    else
    {
      v101 = 0;
    }

    if (v146 != v100 >> 14)
    {
      v101 = 1;
    }

    if (v101)
    {
      return v101;
    }

    else
    {
      return v129;
    }
  }

  v15 = a8;
  v16 = 0;
  v17 = 0;
  v129 = 0;
  v145 = a2 >> 14;
  v112 = a5 | a6 | a7;
  v131 = 0xE000000000000000;
  v126 = 15;
  v18 = 0xE000000000000000;
  v19 = a10;
  v20 = a1;
  v21 = a10;
  v22 = a1;
  v23 = a10;
  v119 = 15;
  while (1)
  {
    v125 = v16;
    v24 = v16 & 0xFFFFFFFFFFFFLL;
    v114 = v24;
    if ((v131 & 0x2000000000000000) != 0)
    {
      v24 = HIBYTE(v131) & 0xF;
    }

    v121 = v18;
    v130 = v17;
    v25 = v17 & 0xFFFFFFFFFFFFLL;
    v115 = HIBYTE(v18) & 0xF;
    v117 = v25;
    v118 = v18 & 0x2000000000000000;
    if ((v18 & 0x2000000000000000) != 0)
    {
      v25 = HIBYTE(v18) & 0xF;
    }

    v134 = v25;
    v132 = (v24 == 0) & v15;
    v128 = v19;
    v138 = v19;
    v124 = v20;
    v26 = v20;
    v122 = v21;
    v27 = v21;
    v127 = v22;
    v28 = v22;
    v120 = v129;
    v135 = v24;
    while (1)
    {
      if (v145 <= v26 >> 14)
      {
LABEL_184:
        v129 = v120;
        v22 = v28;
        v21 = v27;
        v11 = a2;
        goto LABEL_185;
      }

      if (v24)
      {
        break;
      }

      v29 = Substring.subscript.getter();
      v143 = v30;
      if (v134)
      {
        v133 = v27;
        goto LABEL_52;
      }

      v31 = Substring.subscript.getter();
      v141 = v32;
      if (!v132)
      {
        v133 = v27;
        v18 = v121;
        goto LABEL_54;
      }

      Character.wholeNumberValue.getter();
      if (v33 & 1) != 0 || (Character.wholeNumberValue.getter(), (v34))
      {
        v133 = v27;
        v129 = v120;
        v52 = v138;
        v124 = v26;
        v122 = v27;
        v127 = v28;
        v18 = v121;
        v11 = a2;
LABEL_55:
        v56 = v135;
        v128 = v52;
        if ((a6 & 1) == 0 || v116 >= v27 >> 14)
        {
          v57 = v141;
          v54 = v143;
          goto LABEL_96;
        }

        v57 = v141;
        v54 = v143;
        if (v135)
        {
          goto LABEL_76;
        }

        if (v29 == 2573 && v143 == 0xE200000000000000)
        {
          v54 = 0xE200000000000000;
          v29 = 2573;
          goto LABEL_76;
        }

        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (Character._isSingleScalar.getter())
          {
            result = specialized Collection.first.getter(v29, v143);
            if ((result & 0x100000000) != 0)
            {
              goto LABEL_231;
            }

            if ((result & 0xFFFFFF80) == 0)
            {
              result = specialized Collection.first.getter(v29, v143);
              if ((result & 0x100000000) != 0)
              {
                goto LABEL_232;
              }

              v56 = 0;
              if ((result & 0xFFFFFF00) != 0)
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
                return result;
              }

LABEL_76:
              v60 = 0;
              v62 = 0;
              v61 = v117;
LABEL_77:
              if (v118)
              {
                v61 = v115;
                v62 = v60;
              }

              if (v61 || v31 == 2573 && v57 == 0xE200000000000000)
              {
LABEL_88:
                if ((v62 & 1) == 0)
                {
                  goto LABEL_95;
                }
              }

              else if (_stringCompareWithSmolCheck(_:_:expecting:)())
              {
                v56 = v135;
                if ((v62 & 1) == 0)
                {
                  goto LABEL_95;
                }
              }

              else
              {
                if (Character._isSingleScalar.getter())
                {
                  result = specialized Collection.first.getter(v31, v57);
                  if ((result & 0x100000000) != 0)
                  {
                    goto LABEL_229;
                  }

                  if ((result & 0xFFFFFF80) == 0)
                  {
                    result = specialized Collection.first.getter(v31, v57);
                    if ((result & 0x100000000) != 0)
                    {
                      goto LABEL_230;
                    }

                    v56 = v135;
                    if ((result & 0xFFFFFF00) != 0)
                    {
                      __break(1u);
                      goto LABEL_228;
                    }

                    goto LABEL_88;
                  }
                }

                if (specialized Sequence.allSatisfy(_:)(v31, v57))
                {

                  v31 = v29;
                  v57 = v54;
                  if (!v62)
                  {
                    v122 = Substring.index(before:)();
                    v133 = v122;
                    v128 = v122;
                  }

                  v11 = a2;
LABEL_90:
                  v56 = v135;
                  goto LABEL_96;
                }

                v56 = v135;
                if ((v62 & 1) == 0)
                {
LABEL_95:
                  v11 = a2;
                  goto LABEL_96;
                }
              }

              v11 = a2;
              v127 = Substring.index(before:)();
              v124 = v127;
              goto LABEL_90;
            }
          }

          if (specialized Sequence.allSatisfy(_:)(v29, v143))
          {
            v57 = v141;

            v60 = 1;
            v29 = v31;
            v54 = v141;
            v61 = v117;
            v62 = 1;
            v56 = 0;
            goto LABEL_77;
          }

          v57 = v141;
        }

        v56 = 0;
        goto LABEL_76;
      }

      v35 = v28 >> 14;
      if (v146 <= v27 >> 14)
      {
        if (v35 >= v145)
        {
          goto LABEL_40;
        }

        v37 = 0;
      }

      else
      {
        Substring.subscript.getter();
        v36 = Character.wholeNumberValue.getter();
        v37 = 0;
        if ((v38 & 1) == 0)
        {
          do
          {
            v39 = 10 * v37;
            if ((v37 * 10) >> 64 != (10 * v37) >> 63)
            {
              break;
            }

            v40 = __OFADD__(v39, v36);
            v41 = v39 + v36;
            if (v40)
            {
              break;
            }

            v37 = v41;
            v27 = Substring.index(after:)();

            if (v146 <= v27 >> 14)
            {
              v138 = v27;
              v12 = a1;
              goto LABEL_20;
            }

            Substring.subscript.getter();
            v36 = Character.wholeNumberValue.getter();
            v138 = v27;
            v12 = a1;
          }

          while ((v42 & 1) == 0);
        }

LABEL_20:
        v14 = a10;
        if (v35 >= v145)
        {
          if (v37)
          {

            if ((v37 & 0x8000000000000000) == 0)
            {
              return 1;
            }

            return -1;
          }

          goto LABEL_40;
        }
      }

      if (v35 >= v145)
      {
        v44 = 0;
        if (v37)
        {
          goto LABEL_196;
        }
      }

      else
      {
        Substring.subscript.getter();
        v43 = Character.wholeNumberValue.getter();
        v44 = 0;
        if ((v45 & 1) == 0)
        {
          do
          {
            v46 = 10 * v44;
            if ((v44 * 10) >> 64 != (10 * v44) >> 63)
            {
              break;
            }

            v40 = __OFADD__(v46, v43);
            v47 = v46 + v43;
            if (v40)
            {
              break;
            }

            v44 = v47;
            v12 = a1;
            v28 = Substring.index(after:)();

            if (v145 <= v28 >> 14)
            {
              v26 = v28;
              v14 = a10;
              if (v37 == v44)
              {
                goto LABEL_40;
              }

              goto LABEL_196;
            }

            Substring.subscript.getter();
            v43 = Character.wholeNumberValue.getter();
            v26 = v28;
            v14 = a10;
          }

          while ((v48 & 1) == 0);
        }

        v12 = a1;
        if (v37 != v44)
        {
LABEL_196:

          if (v37 >= v44)
          {
            return v44 < v37;
          }

          return -1;
        }
      }

LABEL_40:
      if (a9)
      {
        v49 = Substring.distance(from:to:)();
        v50 = Substring.distance(from:to:)();

        if (v49 != v50)
        {
          v51 = v50 < v49;
          if (v49 < v50)
          {
            v51 = -1;
          }

          v120 = v51;
        }
      }

      else
      {
      }

      v13 = a11;
      v23 = v27;
      v24 = v135;
      if (v146 <= v138 >> 14)
      {
        goto LABEL_184;
      }
    }

    v133 = v23;
    v29 = String.subscript.getter();
    v54 = v53;
    v126 = String.index(after:)();
    if (v134)
    {
      v143 = v54;
      v27 = v138;
LABEL_52:
      v18 = v121;
      v31 = String.subscript.getter();
      v141 = v55;
      v119 = String.index(after:)();
LABEL_54:
      v11 = a2;
      v52 = v128;
      goto LABEL_55;
    }

    v11 = a2;
    v31 = Substring.subscript.getter();
    v57 = v59;
    if ((a6 & 1) == 0)
    {
      v18 = v121;
      goto LABEL_90;
    }

    v18 = v121;
    v56 = v135;
    if (v116 < v138 >> 14)
    {
      goto LABEL_76;
    }

LABEL_96:
    v142 = v57;
    v144 = v54;
    if (v29 == v31 && v54 == v57)
    {
      v63 = a11;
      v64 = v131;
      if (!v56)
      {
        goto LABEL_153;
      }

LABEL_149:
      if (v126 >> 14 != 4 * v56)
      {
        goto LABEL_153;
      }

      v64 = 0xE000000000000000;
      v125 = 0;
      v126 = 15;
      if ((v18 & 0x2000000000000000) != 0)
      {
        goto LABEL_151;
      }

LABEL_154:
      v86 = v130 & 0xFFFFFFFFFFFFLL;
      goto LABEL_155;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

    v63 = a11;
LABEL_102:
    v56 = v135;
    v64 = v131;
    if (v135)
    {
      goto LABEL_149;
    }

LABEL_153:
    if ((v18 & 0x2000000000000000) == 0)
    {
      goto LABEL_154;
    }

LABEL_151:
    v86 = HIBYTE(v18) & 0xF;
LABEL_155:
    v131 = v64;
    v15 = a8;
    if (!v86)
    {
      goto LABEL_161;
    }

    v87 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v87 = v130 & 0xFFFFFFFFFFFFLL;
    }

    if (v119 >> 14 == 4 * v87)
    {

      v18 = 0xE000000000000000;
      v130 = 0;
      if ((v64 & 0x2000000000000000) == 0)
      {
        v119 = 15;
        goto LABEL_162;
      }

      v119 = 15;
LABEL_165:
      if ((v64 & 0xF00000000000000) == 0)
      {
        goto LABEL_166;
      }
    }

    else
    {
LABEL_161:
      if ((v64 & 0x2000000000000000) != 0)
      {
        goto LABEL_165;
      }

LABEL_162:
      if ((v125 & 0xFFFFFFFFFFFFLL) == 0)
      {
LABEL_166:
        v122 = Substring.index(after:)();
        v133 = v122;
        v128 = v122;
      }
    }

    v88 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v88 = v130 & 0xFFFFFFFFFFFFLL;
    }

    if (!v88)
    {
      v127 = Substring.index(after:)();
      v124 = v127;
    }

    v22 = v127;
    v19 = v128;
    v13 = v63;
    v21 = v122;
    v20 = v124;
    v16 = v125;
    v17 = v130;
    v12 = a1;
    v23 = v133;
    if (v146 <= v128 >> 14)
    {
      goto LABEL_185;
    }
  }

  if ((v112 & 1) == 0)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_206;
    }

    goto LABEL_221;
  }

  v65 = v135;
  if ((a9 & 1) != 0 && !v129)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v66 = -1;
    }

    else
    {
      v66 = _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
    }

    v129 = v66;
    v65 = v135;
  }

  if (v65)
  {
    object = v131;
    goto LABEL_113;
  }

  v70 = Character._transform(toHalfWidth:stripDiacritics:caseFolding:)(a5 & 1, a6 & 1, a7 & 1);
  v69 = v70._object & 0x2000000000000000;
  if ((v70._object & 0x2000000000000000) != 0)
  {
    v71 = (v70._object >> 56) & 0xF;
  }

  else
  {
    v71 = v70._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v71)
  {
    v29 = String.subscript.getter();
    v136 = v72;

    object = v70._object;
    v126 = String.index(after:)();
    v56 = v70._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v68 = (v70._object >> 56) & 0xF;
    v144 = v136;
    countAndFlagsBits = v70._countAndFlagsBits;
    v18 = v121;
  }

  else
  {

    object = v131;
    v18 = v121;
LABEL_113:
    countAndFlagsBits = v125;
    v68 = HIBYTE(v131) & 0xF;
    v69 = v131 & 0x2000000000000000;
    v56 = v114;
  }

  if (v69)
  {
    v56 = v68;
  }

  if (v134 && !v56)
  {
    if (v29 == v31 && v144 == v57)
    {

      return 0;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
LABEL_206:

      goto LABEL_224;
    }

LABEL_221:
    v108 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v108 & 1;
  }

  v125 = countAndFlagsBits;
  if (!v134)
  {
    v73 = v56;
    if (v56 && (v29 == v31 && v144 == v142 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v63 = a11;
      v56 = v73;
      v74 = v117;
      v75 = v118;
      v76 = v115;
      v64 = object;
      goto LABEL_144;
    }

    v77 = Character._transform(toHalfWidth:stripDiacritics:caseFolding:)(a5 & 1, a6 & 1, a7 & 1);
    v78 = specialized Collection.first.getter(v77._countAndFlagsBits, v77._object);
    if (v79)
    {
      v31 = v78;
      v80 = v79;

      v119 = String.index(after:)();
      v81 = v77._object & 0x2000000000000000;
      v82 = (v77._object >> 56) & 0xF;
      v83 = v77._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      v142 = v80;
      v130 = v77._countAndFlagsBits;
      v121 = v77._object;
    }

    else
    {
      v83 = v117;
      v81 = v118;
      v82 = v115;
    }

    if (v81)
    {
      v84 = v82;
    }

    else
    {
      v84 = v83;
    }

    if (!v84 || (v29 != v31 || v144 != v142) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (v29 == v31 && v144 == v142)
      {

        v106 = 0;
      }

      else
      {
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {

LABEL_224:

          return -1;
        }

        v109 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v106 = v109 & 1;
      }

      goto LABEL_217;
    }

    v18 = v121;
    v56 = v73;
  }

  v63 = a11;
  v64 = object;
  if (!v56)
  {
    v11 = a2;
    goto LABEL_153;
  }

  v75 = v18 & 0x2000000000000000;
  v76 = HIBYTE(v18) & 0xF;
  v74 = v130 & 0xFFFFFFFFFFFFLL;
LABEL_144:
  if (v75)
  {
    v74 = v76;
  }

  if (!v74 || (v85 = 4 * v56, 4 * v56 == v126 >> 14))
  {
    v11 = a2;
    goto LABEL_149;
  }

  v135 = v56;
  v89 = 4 * v74;
  v90 = v119;
  while (2)
  {
    if (v89 == v90 >> 14)
    {
LABEL_178:
      v119 = v90;
      v131 = v64;
      v11 = a2;
      goto LABEL_102;
    }

    v94 = String.subscript.getter();
    v96 = v95;
    v97 = v18;
    if (v94 == String.subscript.getter() && v96 == v98)
    {

LABEL_173:
      v64 = object;
      v92 = String.index(after:)();
      v18 = v97;
      v90 = String.index(after:)();
      v126 = v92;
      v93 = v85 == v92 >> 14;
      v63 = a11;
      if (v93)
      {
        goto LABEL_178;
      }

      continue;
    }

    break;
  }

  v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v91)
  {
    goto LABEL_173;
  }

  v102 = String.subscript.getter();
  v104 = v103;
  if (v102 == String.subscript.getter() && v104 == v105)
  {

    v106 = 0;
    goto LABEL_216;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    goto LABEL_224;
  }

  v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v106 = v107 & 1;
LABEL_216:

LABEL_217:

  return v106;
}

uint64_t Unicode.Scalar._transform(toHalfWidth:stripDiacritics:caseFolding:)(char a1, char a2, char a3, uint64_t a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for Unicode.Scalar.Properties();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 && (a4 - 65280) <= 0xEE)
  {
    LODWORD(v19[0]) = a4;
    CFUniCharCompatibilityDecompose();
    a4 = LODWORD(v19[0]);
    if (LODWORD(v19[0]) >> 11 == 27)
    {
      __break(1u);
    }

    if (HIWORD(LODWORD(v19[0])) > 0x10u)
    {
      __break(1u);
LABEL_16:
      v16 = (a4 & 0x3F) << 8;
      if (a4 >= 0x800)
      {
        v17 = (v16 | (a4 >> 6) & 0x3F) << 8;
        v18 = (((v17 | (a4 >> 12) & 0x3F) << 8) | (a4 >> 18)) - 2122219023;
        v15 = (a4 >> 12) + v17 + 8487393;
        if (WORD1(a4))
        {
          v15 = v18;
        }
      }

      else
      {
        v15 = (a4 >> 6) + v16 + 33217;
      }

      goto LABEL_13;
    }
  }

  if (a2)
  {
    v12 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(a4), 5u);
    if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(a4, v12, 0x700030005))
    {
      return 0;
    }

    LODWORD(a4) = Unicode.Scalar._stripDiacritics()(a4);
  }

  if (a3)
  {
    Unicode.Scalar.properties.getter();
    v14 = Unicode.Scalar.Properties._caseFolded.getter();
    (*(v9 + 8))(v11, v8);
    return v14;
  }

  if (a4 > 0x7F)
  {
    goto LABEL_16;
  }

  v15 = a4 + 1;
LABEL_13:
  v19[0] = (v15 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v15) >> 3))));
  return static String._uncheckedFromUTF8(_:)();
}

uint64_t Unicode.Scalar.intValue.getter()
{
  v0 = type metadata accessor for Unicode.Scalar.Properties();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Unicode.Scalar.properties.getter();
  v4 = COERCE_DOUBLE(Unicode.Scalar.Properties.numericValue.getter());
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  result = 0;
  if ((v6 & 1) == 0)
  {
    if ((~*&v4 & 0x7FF0000000000000) != 0)
    {
      if (v4 > -9.22337204e18)
      {
        if (v4 < 9.22337204e18)
        {
          return v4;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t Substring.UnicodeScalarView._compare(_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v7 = a5 >> 14;
  v12 = a6 >> 14;
  if (a5 >> 14 >= a6 >> 14 || (v11 = a2 >> 14, a2 >> 14 <= a1 >> 14))
  {
LABEL_6:
    if (v7 == v12)
    {
      if ((a1 ^ a2) >> 14)
      {
        return -1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    while (1)
    {
      v8 = Substring.UnicodeScalarView.subscript.getter();
      v9 = Substring.UnicodeScalarView.subscript.getter();
      if (v8 != v9)
      {
        break;
      }

      Substring.UnicodeScalarView.formIndex(after:)();
      Substring.UnicodeScalarView.formIndex(after:)();
      v7 = a5 >> 14;
      if (a5 >> 14 >= v12 || v11 <= a1 >> 14)
      {
        goto LABEL_6;
      }
    }

    if (v8 >= v9)
    {
      return v9 < v8;
    }

    else
    {
      return -1;
    }
  }
}

BOOL _allASCII(_:)(char *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = 0;
  if (a2 >= 1 && (a1 & 7) != 0)
  {
    if (*a1 < 0)
    {
      return 0;
    }

    v2 = 1;
    if (a2 >= 2 && ((a1 + 1) & 7) != 0)
    {
      if (a1[1] < 0)
      {
        return 0;
      }

      v2 = 2;
      if (a2 >= 3 && ((a1 + 2) & 7) != 0)
      {
        if (a1[2] < 0)
        {
          return 0;
        }

        v2 = 3;
        if (a2 >= 4 && ((a1 + 3) & 7) != 0)
        {
          if (a1[3] < 0)
          {
            return 0;
          }

          v2 = 4;
          if (a2 >= 5 && (a1 & 7) != 4)
          {
            if (a1[4] < 0)
            {
              return 0;
            }

            v2 = 5;
            if (a2 >= 6 && ((a1 + 5) & 7) != 0)
            {
              if (a1[5] < 0)
              {
                return 0;
              }

              v2 = 6;
              if (a2 >= 7 && ((a1 + 6) & 7) != 0)
              {
                if (a1[6] < 0)
                {
                  return 0;
                }

                v2 = 7;
                if (a2 >= 8 && ((a1 - 1) & 7) != 0)
                {
                  if ((a1[7] & 0x80000000) == 0)
                  {
                    v2 = 8;
                    goto LABEL_27;
                  }

                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_27:
  if (v2 + 8 <= a2)
  {
    v4 = &a1[v2];
    while ((*v4 & 0x8080808080808080) == 0)
    {
      v4 += 8;
      v3 = v2 + 8;
      v5 = v2 + 16;
      v2 += 8;
      if (v5 > a2)
      {
        goto LABEL_32;
      }
    }

    return 0;
  }

  v3 = v2;
LABEL_32:
  if (v3 >= a2)
  {
    return 1;
  }

  v6 = ~v3 + a2;
  v7 = &a1[v3];
  do
  {
    v9 = *v7++;
    v8 = v9;
    result = v9 >= 0;
    v11 = v6-- != 0;
  }

  while (v11 && (v8 & 0x80000000) == 0);
  return result;
}

unint64_t lazy protocol witness table accessor for type Regex<AnyRegexOutput> and conformance Regex<A>()
{
  result = lazy protocol witness table cache variable for type Regex<AnyRegexOutput> and conformance Regex<A>;
  if (!lazy protocol witness table cache variable for type Regex<AnyRegexOutput> and conformance Regex<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex<AnyRegexOutput> and conformance Regex<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Character and conformance Character()
{
  result = lazy protocol witness table cache variable for type Character and conformance Character;
  if (!lazy protocol witness table cache variable for type Character and conformance Character)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Character and conformance Character);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for String(uint64_t a1)
{
  result = lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Substring(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Substring and conformance Substring();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Unicode.Scalar and conformance Unicode.Scalar()
{
  result = lazy protocol witness table cache variable for type Unicode.Scalar and conformance Unicode.Scalar;
  if (!lazy protocol witness table cache variable for type Unicode.Scalar and conformance Unicode.Scalar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.Scalar and conformance Unicode.Scalar);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for String.UnicodeScalarView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type String.UnicodeScalarView and conformance String.UnicodeScalarView();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type String.UnicodeScalarView and conformance String.UnicodeScalarView()
{
  result = lazy protocol witness table cache variable for type String.UnicodeScalarView and conformance String.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type String.UnicodeScalarView and conformance String.UnicodeScalarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.UnicodeScalarView and conformance String.UnicodeScalarView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.UnicodeScalarView and conformance String.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type String.UnicodeScalarView and conformance String.UnicodeScalarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.UnicodeScalarView and conformance String.UnicodeScalarView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.UnicodeScalarView and conformance String.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type String.UnicodeScalarView and conformance String.UnicodeScalarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.UnicodeScalarView and conformance String.UnicodeScalarView);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Substring.UnicodeScalarView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView()
{
  result = lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for String.UTF8View(uint64_t a1)
{
  result = lazy protocol witness table accessor for type String.UTF8View and conformance String.UTF8View();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type String.UTF8View and conformance String.UTF8View()
{
  result = lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View;
  if (!lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View;
  if (!lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Substring.UTF8View(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Substring.UTF8View and conformance Substring.UTF8View();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Substring.UTF8View and conformance Substring.UTF8View()
{
  result = lazy protocol witness table cache variable for type Substring.UTF8View and conformance Substring.UTF8View;
  if (!lazy protocol witness table cache variable for type Substring.UTF8View and conformance Substring.UTF8View)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring.UTF8View and conformance Substring.UTF8View);
  }

  return result;
}

unint64_t _StringGuts.validateScalarIndex(_:in:)(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_8;
  }

  if (result >> 14 < a2 >> 14 || result >> 14 >= a3 >> 14)
  {
    __break(1u);
LABEL_8:
    result = _StringGuts.validateSubscalarIndex(_:in:)(result, a2, a3, a4, a5);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a4, a5) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateSubscalarIndex(_:in:)(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    v6 = a2;
    v7 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a4, a5);
    a2 = v6;
    a3 = v7;
  }

  if (result >> 14 < a2 >> 14 || result >> 14 >= a3 >> 14)
  {
    __break(1u);
  }

  return result;
}

id String.Encoding.description.getter()
{
  result = [objc_opt_self() localizedNameOfStringEncoding_];
  if (result)
  {
    v2 = result;
    isTaggedPointer = _objc_isTaggedPointer(result);
    v4 = v2;
    v5 = v4;
    if (!isTaggedPointer)
    {
LABEL_7:
      if (__CFStringIsCF())
      {

        return 0;
      }

      v8 = v5;
      v9 = String.init(_nativeStorage:)();
      if (v10)
      {
        v11 = v9;

        return v11;
      }

      if (![v8 length])
      {

        return 0;
      }

      v16 = String.init(_cocoaString:)();
      goto LABEL_22;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v4);
    if (!TaggedPointerTag)
    {
      _CFIndirectTaggedPointerStringGetContents();
      v14 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        [v5 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v16 = v17;
      }

LABEL_22:

      return v16;
    }

    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        return v7;
      }

      goto LABEL_7;
    }

    result = [v5 UTF8String];
    if (result)
    {
      result = String.init(utf8String:)(result);
      if (v12)
      {
        v13 = result;

        return v13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

id protocol witness for CustomStringConvertible.description.getter in conformance String.Encoding()
{
  v1 = [objc_opt_self() localizedNameOfStringEncoding_];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)(v1);

  return v2;
}

unint64_t lazy protocol witness table accessor for type String.Encoding and conformance String.Encoding()
{
  result = lazy protocol witness table cache variable for type String.Encoding and conformance String.Encoding;
  if (!lazy protocol witness table cache variable for type String.Encoding and conformance String.Encoding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.Encoding and conformance String.Encoding);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnicodeScalarToDataAdaptor.Iterator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
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

uint64_t storeEnumTagSinglePayload for UnicodeScalarToDataAdaptor.Iterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UTF16EndianAdaptor(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFD)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      v16 = v15 >= 2;
      v17 = v15 - 2;
      if (!v16)
      {
        v17 = -1;
      }

      if (v17 + 1 >= 2)
      {
        return v17;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
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
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
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

unsigned int *storeEnumTagSinglePayload for UTF16EndianAdaptor(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
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
      if (v6 < 0xFD)
      {
        *(result + v8) = a2 + 2;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Endianness and conformance Endianness()
{
  result = lazy protocol witness table cache variable for type Endianness and conformance Endianness;
  if (!lazy protocol witness table cache variable for type Endianness and conformance Endianness)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Endianness and conformance Endianness);
  }

  return result;
}

Swift::UInt16_optional __swiftcall UTF16EndianAdaptor.Iterator.next()()
{
  v2 = v0;
  v3 = *(v0 + 40);
  if (*(v1 + v3) == 1)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
LABEL_3:
    dispatch thunk of IteratorProtocol.next()();
    if (v17 & 1) != 0 || (dispatch thunk of IteratorProtocol.next()(), (v15))
    {
      LOWORD(v4) = 0;
      v5 = 1;
      return (v4 | (v5 << 16));
    }

    v4 = v16 | (v14 << 8);
    v8 = *(v1 + *(v2 + 36));
    if (v8 != 2 && (v8 & 1) == 0)
    {
LABEL_28:
      v5 = 0;
      return (v4 | (v5 << 16));
    }

LABEL_20:
    v5 = 0;
    v4 = bswap32(v4) >> 16;
    return (v4 | (v5 << 16));
  }

  v5 = 1;
  *(v1 + v3) = 1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if (v23)
  {
LABEL_7:
    LOWORD(v4) = 0;
    return (v4 | (v5 << 16));
  }

  if (v22 < 0xFEu)
  {
    dispatch thunk of IteratorProtocol.next()();
    if ((v21 & 1) == 0)
    {
      v4 = v22 | (v20 << 8);
      v9 = *(v1 + *(v2 + 36));
      if (v9 != 2 && (v9 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    goto LABEL_7;
  }

  dispatch thunk of IteratorProtocol.next()();
  if (v19)
  {
    goto LABEL_7;
  }

  if (v22 == 255 && v18 == 254)
  {
    v6 = *(v2 + 36);
    v7 = *(v1 + v6);
    if (v7 == 2)
    {
      *(v1 + v6) = 0;
      goto LABEL_3;
    }

    v5 = 0;
    if (v7)
    {
      LOWORD(v4) = -2;
    }

    else
    {
      LOWORD(v4) = -257;
    }
  }

  else
  {
    if (v22 != 254 || v18 != 255)
    {
      v4 = v22 | (v18 << 8);
      v12 = *(v1 + *(v2 + 36));
      if (v12 == 2 || (v12 & 1) != 0)
      {
        v5 = 0;
        LOWORD(v4) = __rev16(v4);
        return (v4 | (v5 << 16));
      }

      goto LABEL_28;
    }

    v10 = *(v2 + 36);
    v11 = *(v1 + v10);
    if (v11 == 2)
    {
      *(v1 + v10) = 1;
      goto LABEL_3;
    }

    v5 = 0;
    if (v11)
    {
      LOWORD(v4) = -257;
    }

    else
    {
      LOWORD(v4) = -2;
    }
  }

  return (v4 | (v5 << 16));
}

uint64_t protocol witness for IteratorProtocol.next() in conformance UTF16EndianAdaptor<A>.Iterator@<X0>(uint64_t a1@<X8>)
{
  *&result = UTF16EndianAdaptor.Iterator.next()();
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t UTF16EndianAdaptor.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, uint64_t, void)@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v19[-v13];
  v15 = *(v8 + 16);
  v15(&v19[-v13], v3, v7, v12);
  v20 = *(v3 + *(a1 + 36));
  v16 = a2(0, v7, *(a1 + 24));
  v17 = *(v16 + 36);
  *(a3 + *(v16 + 40)) = 0;
  (v15)(v10, v14, v7);
  dispatch thunk of Sequence.makeIterator()();
  result = (*(v8 + 8))(v14, v7);
  *(a3 + v17) = v20;
  return result;
}

Swift::UInt32_optional __swiftcall UTF32EndianAdaptor.Iterator.next()()
{
  v2 = v0;
  v3 = *(v0 + 40);
  if (*(v1 + v3) == 1)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
LABEL_3:
    dispatch thunk of IteratorProtocol.next()();
    if (v15)
    {
LABEL_18:
      v11 = 0;
      v6 = 1;
      return (v11 | (v6 << 32));
    }

    v4 = v14;
    dispatch thunk of IteratorProtocol.next()();
    v5 = v14;
    dispatch thunk of IteratorProtocol.next()();
    goto LABEL_17;
  }

  v6 = 1;
  *(v1 + v3) = 1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if (v15)
  {
LABEL_16:
    v11 = 0;
    return (v11 | (v6 << 32));
  }

  v4 = v14;
  if (v14 != 255 && v14)
  {
    dispatch thunk of IteratorProtocol.next()();
    if ((v15 & 1) == 0)
    {
      v5 = v14;
      dispatch thunk of IteratorProtocol.next()();
LABEL_17:
      v7 = v14;
      dispatch thunk of IteratorProtocol.next()();
      if (v15)
      {
        goto LABEL_18;
      }

      v8 = v14;
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  dispatch thunk of IteratorProtocol.next()();
  if (v15)
  {
    goto LABEL_16;
  }

  v5 = v14;
  dispatch thunk of IteratorProtocol.next()();
  v7 = v14;
  dispatch thunk of IteratorProtocol.next()();
  v8 = v14;
  if (v14 == 255 && v14 == 254 && !v14)
  {
    v9 = *(v2 + 36);
    v10 = *(v1 + v9);
    if (v10 != 2)
    {
      v6 = 0;
      if (v10)
      {
        v11 = -131072;
      }

      else
      {
        v11 = 65279;
      }

      return (v11 | (v6 << 32));
    }

    *(v1 + v9) = 0;
    goto LABEL_3;
  }

LABEL_21:
  v11 = v4 | (v5 << 8) | (v7 << 16) | (v8 << 24);
  v13 = *(v1 + *(v2 + 36));
  if (v13 == 2 || (v13 & 1) != 0)
  {
    v6 = 0;
    v11 = bswap32(v11);
  }

  else
  {
    v6 = 0;
  }

  return (v11 | (v6 << 32));
}

uint64_t protocol witness for IteratorProtocol.next() in conformance UTF32EndianAdaptor<A>.Iterator@<X0>(uint64_t a1@<X8>)
{
  *&result = UTF32EndianAdaptor.Iterator.next()();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance UTF16EndianAdaptor<A>@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, uint64_t, void)@<X2>, uint64_t a3@<X8>)
{
  UTF16EndianAdaptor.makeIterator()(a1, a2, a3);
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance UTF16EndianAdaptor<A>(uint64_t a1)
{
  v3 = specialized Sequence._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

Swift::UInt8_optional __swiftcall UnicodeScalarToDataAdaptor.Iterator.next()()
{
  if ((*(v0 + 49) & 1) == 0)
  {
    v1 = *(v0 + 8);
    if (v1 >= 1)
    {
      v3 = v1 + 1;
      if (!__OFADD__(v1, 1))
      {
        v2 = 0;
        LOBYTE(v1) = *(v0 + v1);
        if (v3 == 4)
        {
          v3 = 0;
        }

LABEL_21:
        *(v0 + 8) = v3;
        return (v1 | (v2 << 8));
      }

      __break(1u);
LABEL_30:
      LOBYTE(v1) = 0;
      v2 = 1;
      *(v0 + 49) = 1;
      return (v1 | (v2 << 8));
    }

    v4 = *(v0 + 32);
    if (v4 >= *(v0 + 40))
    {
      goto LABEL_30;
    }

    v5 = *(v0 + 24);
    if ((v5 & 0x1000000000000000) != 0)
    {
      v13 = *(v0 + 32);
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v4 = v13;
      goto LABEL_17;
    }

    if ((v5 & 0x2000000000000000) != 0)
    {
      v15[0] = *(v0 + 16);
      v15[1] = v5 & 0xFFFFFFFFFFFFFFLL;
      v7 = v15 + v4;
    }

    else
    {
      if ((*(v0 + 16) & 0x1000000000000000) != 0)
      {
        v6 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v14 = *(v0 + 32);
        v6 = _StringObject.sharedUTF8.getter();
        v4 = v14;
      }

      v7 = (v6 + v4);
    }

    v8 = *v7;
    if (*v7 < 0)
    {
      v12 = (__clz(v8 ^ 0xFF) - 24);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v8 = ((v8 & 0xF) << 12) | ((v7[1] & 0x3F) << 6) | v7[2] & 0x3F;
          v9 = 3;
        }

        else
        {
          v8 = ((v8 & 0xF) << 18) | ((v7[1] & 0x3F) << 12) | ((v7[2] & 0x3F) << 6) | v7[3] & 0x3F;
          v9 = 4;
        }

LABEL_17:
        v2 = 0;
        *(v0 + 32) = v9 + v4;
        v10 = bswap32(v8);
        if (*(v0 + 48))
        {
          LODWORD(v1) = v10;
        }

        else
        {
          LODWORD(v1) = v8;
        }

        *v0 = v1;
        v3 = 1;
        goto LABEL_21;
      }

      if (v12 != 1)
      {
        v9 = 2;
        v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        goto LABEL_17;
      }
    }

    v9 = 1;
    goto LABEL_17;
  }

  LOBYTE(v1) = 0;
  v2 = 1;
  return (v1 | (v2 << 8));
}

Swift::UInt8_optional protocol witness for IteratorProtocol.next() in conformance UnicodeScalarToDataAdaptor.Iterator@<W0>(Swift::UInt8 *a1@<X8>)
{
  result = UnicodeScalarToDataAdaptor.Iterator.next()();
  *a1 = result.value;
  a1[1] = result.is_nil;
  return result;
}

void type metadata completion function for UTF32EndianAdaptor.Iterator()
{
  swift_getAssociatedTypeWitness();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Endianness?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for UTF32EndianAdaptor.Iterator(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 > v7)
  {
    v9 = v8 + 2;
    v10 = 8 * (v8 + 2);
    if ((v8 + 2) > 3)
    {
      goto LABEL_7;
    }

    v12 = ((a2 - v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 >= 2)
    {
LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
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
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
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

      v17 = v7 + (v9 | v13);
      return (v17 + 1);
    }
  }

LABEL_25:
  if (v6 < 0xFE)
  {
    v16 = *(a1 + v8 + 1);
    if (v16 < 2)
    {
      return 0;
    }

    v17 = (v16 + 2147483646) & 0x7FFFFFFF;
    return (v17 + 1);
  }

  v14 = *(v5 + 48);

  return v14(a1);
}

void storeEnumTagSinglePayload for UTF32EndianAdaptor.Iterator(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = v8 + 2;
  v11 = a3 - v9;
  if (a3 <= v9)
  {
    v12 = 0;
    if (v9 < a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 1;
    if (v10 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v9 < a2)
    {
LABEL_16:
      v17 = ~v9 + a2;
      if (v10 < 4)
      {
        v18 = (v17 >> (8 * v10)) + 1;
        if (v8 != -2)
        {
          v19 = v17 & ~(-1 << (8 * v10));
          bzero(a1, v10);
          if (v10 != 3)
          {
            if (v10 == 2)
            {
              *a1 = v19;
              if (v12 > 1)
              {
LABEL_44:
                if (v12 == 2)
                {
                  *&a1[v10] = v18;
                }

                else
                {
                  *&a1[v10] = v18;
                }

                return;
              }
            }

            else
            {
              *a1 = v17;
              if (v12 > 1)
              {
                goto LABEL_44;
              }
            }

            goto LABEL_41;
          }

          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        if (v12 > 1)
        {
          goto LABEL_44;
        }
      }

      else
      {
        bzero(a1, v10);
        *a1 = v17;
        v18 = 1;
        if (v12 > 1)
        {
          goto LABEL_44;
        }
      }

LABEL_41:
      if (v12)
      {
        a1[v10] = v18;
      }

      return;
    }
  }

  if (v12 > 1)
  {
    if (v12 != 2)
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

  else if (v12)
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
    a1[v8 + 1] = a2 + 1;
  }

  else
  {
    v20 = *(v6 + 56);

    v20(a1, a2);
  }
}

Swift::String __swiftcall String._trimmingWhitespace()()
{
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    specialized BidirectionalCollection._trimmingCharacters(while:)(v0, v1);
    v3 = String.init(_:)();
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t String.init(_utf16:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    return specialized String.init(_utf16:)(result, a3);
  }

  __break(1u);
  return result;
}

Swift::Int specialized String.withFileSystemRepresentation<A>(_:)(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v11[1] = *MEMORY[0x1E69E9840];
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = String.UTF8View._foreignCount()();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(a2) & 0xF;
  }

  else
  {
    result = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 3 * result;
  if ((result * 3) >> 64 != (3 * result) >> 63)
  {
    __break(1u);
LABEL_13:
    v9 = a2;
    result = swift_stdlib_isStackAllocationSafe();
    if ((result & 1) == 0)
    {
      v10 = swift_slowAlloc();
      specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v10, v9, a1, v2);
      return MEMORY[0x1865D2690](v10, -1, -1);
    }

    goto LABEL_8;
  }

  if (v5 < -1)
  {
    __break(1u);
    return result;
  }

  a2 = v5 + 1;
  if (v5 >= 1024)
  {
    goto LABEL_13;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](result);
  v7 = v11 - v6;
  result = String._fileSystemRepresentation(into:)(v11 - v6, v8, a1, v2);
  if (result)
  {
    return unlink(v7);
  }

  return result;
}

uint64_t specialized String.withFileSystemRepresentation<A>(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, const std::__fs::filesystem::path *a3@<X2>, const std::__fs::filesystem::path *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11)
{
  v34 = a9;
  v40 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x1000000000000000) != 0)
  {
    v12 = v11;
    v13 = a6;
    v14 = a5;
    v31 = a4;
    v15 = a3;
    v20 = String.UTF8View._foreignCount()();
    a3 = v15;
    a4 = v31;
    a5 = v14;
    a6 = v13;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v21 = 3 * v20;
  if ((v20 * 3) >> 64 == (3 * v20) >> 63)
  {
    if (v21 < -1)
    {
      __break(1u);
    }

    v35 = a3;
    v36 = a4;
    v37 = a5;
    v38 = a6;
    v39 = v11;
    LODWORD(v15) = a11;
    v12 = a10;
    v13 = v21 + 1;

    LOBYTE(v14) = a11 & 1;
    isStackAllocationSafe = outlined copy of PathOrURL(a8, a10, a11 & 1);
    if (v21 < 1024)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v32 = swift_slowAlloc();

    outlined copy of PathOrURL(a8, v12, v15 & 1);
    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v32, v13, a1, a2, v35, v36, v37, v38, a7, a8, v12, v15 & 1);
    MEMORY[0x1865D2690](v32, -1, -1);

    v28 = a8;
    v29 = v12;
    v27 = v15 & 1;
    goto LABEL_14;
  }

LABEL_8:
  LODWORD(v34) = v15;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v24 = (&v33 - v23);
  if (String._fileSystemRepresentation(into:)(&v33 - v23, v13, a1, a2))
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = v39;
  closure #1 in closure #1 in closure #3 in closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(v25, v35, v36, v37, v38, a7, a8, v12, v14);
  if (v26)
  {
    swift_willThrow();
  }

  LOBYTE(v15) = v34;
  v27 = v34 & 1;
  v28 = a8;
  v29 = v12;
LABEL_14:
  outlined consume of PathOrURL(v28, v29, v27);

  return outlined consume of PathOrURL(a8, v12, v15 & 1);
}

size_t specialized String.withFileSystemRepresentation<A>(_:)(uint64_t a1, unint64_t a2)
{
  return specialized String.withFileSystemRepresentation<A>(_:)(a1, a2, specialized closure #1 in String.withFileSystemRepresentation<A>(_:), 0x100uLL);
}

{
  return specialized String.withFileSystemRepresentation<A>(_:)(a1, a2, specialized closure #1 in String.withFileSystemRepresentation<A>(_:), 0x401uLL);
}

size_t specialized String.withFileSystemRepresentation<A>(_:)(uint64_t a1, unint64_t a2, void (*a3)(void *__return_ptr, void, void, void, void), size_t a4)
{
  v6 = a2;
  v19[1] = *MEMORY[0x1E69E9840];
  if ((a2 & 0x1000000000000000) != 0)
  {
    v14 = a3;
    isStackAllocationSafe = String.UTF8View._foreignCount()();
    a3 = v14;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    isStackAllocationSafe = HIBYTE(a2) & 0xF;
  }

  else
  {
    isStackAllocationSafe = a1 & 0xFFFFFFFFFFFFLL;
  }

  v9 = 3 * isStackAllocationSafe;
  if ((isStackAllocationSafe * 3) >> 64 == (3 * isStackAllocationSafe) >> 63)
  {
    if (v9 < -1)
    {
      __break(1u);
      return v19[0];
    }

    a2 = v9 + 1;
    if (v9 < 1024)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  v15 = a2;
  v16 = a3;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v17 = v15;
    v18 = swift_slowAlloc();
    v16(v19, v18, v17, a1, v6);
    result = MEMORY[0x1865D2690](v18, -1, -1);
    if (v4)
    {
      return result;
    }

    return v19[0];
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v11 = v19 - v10;
  if (String._fileSystemRepresentation(into:)(v19 - v10, v12, a1, v6))
  {
    return strnlen(v11, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, __CFString *a6, void *a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if ((result & 1) == 0)
  {
    closure #1 in writeToFileNoAux(path:buffer:options:attributes:reportProgress:)(0, a5, a6, a7, a8 & 1, a9 & 1, a10, a11, a12);
    v17 = a8 & 1;
    v18 = a6;
    v19 = a7;
    goto LABEL_5;
  }

  if (a1)
  {
    closure #1 in writeToFileNoAux(path:buffer:options:attributes:reportProgress:)(a1, a5, a6, a7, a8 & 1, a9 & 1, a10, a11, a12);
    v17 = a8 & 1;
    v18 = a6;
    v19 = a7;
LABEL_5:
    outlined consume of PathOrURL(v18, v19, v17);
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, __CFString *a5, unint64_t a6, char a7, void *a8, char a9, __int128 *a10, std::__fs::filesystem::path *a11, uint64_t a12)
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if ((result & 1) == 0)
  {
    closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(0, a5, a6, a7 & 1, a8, a9 & 1, a10, a11, a12);
    goto LABEL_5;
  }

  if (a1)
  {
    closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(a1, a5, a6, a7 & 1, a8, a9 & 1, a10, a11, a12);
LABEL_5:
    outlined consume of PathOrURL(a5, a6, a7 & 1);
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(char *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if (result)
  {
    if (a1)
    {
      return unlink(a1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)@<X0>(__CFString *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, std::error_code *a5@<X4>, __CFString *a6@<X5>, std::__fs::filesystem::path *a7@<X6>, char a8@<W7>, void *a9@<X8>, void *a10, uint64_t *a11, __int128 *a12, std::__fs::filesystem::path *a13, uint64_t a14, uint64_t a15, int *a16)
{
  v50 = a6;
  v51 = a7;
  v52 = a5;
  v48 = a9;
  v53 = *MEMORY[0x1E69E9840];
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if ((result & 1) == 0)
  {
    closure #3 in closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(0, v52, v50, v51, a8 & 1, a10, a11, a12, a13, a14, a15, a16);
    outlined consume of PathOrURL(v50, v51, a8 & 1);
  }

  v44 = a16;
  v45 = a15;
  v46 = a13;
  v47 = a12;
  v20 = v50;
  v19 = v51;
  v48 = a10;
  if (a1)
  {
    v21 = a1;
    v22 = *&v52->__val_;
    cat = v52->__cat_;
    v43 = a11;
    v24 = v22;
    if ((cat & 0x1000000000000000) != 0)
    {
      v25 = String.UTF8View._foreignCount()();
    }

    else if ((cat & 0x2000000000000000) != 0)
    {
      v25 = HIBYTE(cat) & 0xF;
    }

    else
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    v26 = 3 * v25;
    if ((v25 * 3) >> 64 == (3 * v25) >> 63)
    {
      if (v26 < -1)
      {
        __break(1u);
      }

      v50 = v21;
      v21 = (v26 + 1);
      outlined copy of PathOrURL(v20, v51, a8 & 1);

      outlined copy of PathOrURL(v20, v51, a8 & 1);

      if (v26 < 1024)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v36 = swift_slowAlloc();
      outlined copy of PathOrURL(v20, v51, a8 & 1);

      specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v36, v21, v24, cat, v50, v52, v20, v51, a8 & 1, v48, v43, v47, v46, a14, v45, v44);
      MEMORY[0x1865D2690](v36, -1, -1);
      v34 = v20;
      v35 = v51;
      v33 = a8 & 1;
LABEL_17:
      outlined consume of PathOrURL(v34, v35, v33);

      outlined consume of PathOrURL(v20, v19, a8 & 1);

      outlined consume of PathOrURL(v20, v19, a8 & 1);
    }

LABEL_10:
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v29 = (&v42 - v28);
    if (String._fileSystemRepresentation(into:)(&v42 - v28, v21, v24, cat))
    {
      v40 = v45;
      v41 = v44;
      v30 = a8 & 1;
      v38 = v46;
      v39 = a14;
      v37 = v47;
      v31 = v29;
    }

    else
    {
      v40 = v45;
      v41 = v44;
      v30 = a8 & 1;
      v38 = v46;
      v39 = a14;
      v37 = v47;
      v31 = 0;
    }

    v32 = v49;
    closure #1 in closure #3 in closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(v31, v50, v52, v20, v19, v30, v48, v43, v37, v38, v39, v40, v41);
    if (v32)
    {
      swift_willThrow();
    }

    v33 = a8 & 1;
    v34 = v20;
    v35 = v19;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(std::__fs::filesystem::path *a1, uint64_t a2, uint64_t a3, unint64_t a4, std::__fs::filesystem::path *a5, std::error_code *a6, __CFString *a7, std::__fs::filesystem::path *a8, char a9, void *a10, uint64_t *a11, __int128 *a12, std::__fs::filesystem::path *a13, uint64_t a14, uint64_t a15, int *a16)
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if ((result & 1) == 0)
  {
    closure #1 in closure #3 in closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(0, a5, a6, a7, a8, a9 & 1, a10, a11, a12, a13, a14, a15, a16);
    v18 = a9 & 1;
    v19 = a7;
    v20 = a8;
    goto LABEL_5;
  }

  if (a1)
  {
    closure #1 in closure #3 in closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(a1, a5, a6, a7, a8, a9 & 1, a10, a11, a12, a13, a14, a15, a16);
    v18 = a9 & 1;
    v19 = a7;
    v20 = a8;
LABEL_5:
    outlined consume of PathOrURL(v19, v20, v18);
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(std::__fs::filesystem::path *a1, uint64_t a2, uint64_t a3, unint64_t a4, const std::__fs::filesystem::path *a5, const std::__fs::filesystem::path *a6, uint64_t *a7, uint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, char a12)
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if ((result & 1) == 0)
  {
    closure #1 in closure #1 in closure #3 in closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(0, a5, a6, a7, a8, a9, a10, a11, a12 & 1);
    goto LABEL_5;
  }

  if (a1)
  {
    closure #1 in closure #1 in closure #3 in closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(a1, a5, a6, a7, a8, a9, a10, a11, a12 & 1);
LABEL_5:

    return outlined consume of PathOrURL(a10, a11, a12 & 1);
  }

  __break(1u);
  return result;
}

void specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, void *a7)
{
  if ((String._fileSystemRepresentation(into:)(a1, a2, a3, a4) & 1) == 0)
  {
    closure #1 in static _FileOperations.removeFile(_:with:)(0, a5, a6, a7);
    goto LABEL_5;
  }

  if (a1)
  {
    specialized static _FileOperations._removeFile(_:_:with:)(a1, a5, a6, a7);
LABEL_5:

    return;
  }

  __break(1u);
}

uint64_t closure #1 in String.withFileSystemRepresentation<A>(_:)(_BYTE *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(_BYTE *))
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if ((result & 1) == 0)
  {
    v8 = 0;
    return a5(v8);
  }

  if (a1)
  {
    v8 = a1;
    return a5(v8);
  }

  __break(1u);
  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = type metadata accessor for Unicode.CanonicalCombiningClass();
  v8 = *(v43 - 8);
  v9 = MEMORY[0x1EEE9AC00](v43);
  v42 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v31 - v11;
  v40 = type metadata accessor for Unicode.Scalar.Properties();
  v12 = MEMORY[0x1EEE9AC00](v40);
  v39 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v38 = &v31 - v16;
  v32 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v36 = (v8 + 8);
    v37 = v15 + 8;
    v44 = v17;
    v18 = (v17 + 4 * a3 - 4);
    v19 = a1 - a3;
    v20 = (v15 + 8);
LABEL_5:
    v34 = v18;
    v35 = a3;
    v33 = v19;
    while (1)
    {
      v21 = v38;
      Unicode.Scalar.properties.getter();
      v22 = v41;
      Unicode.Scalar.Properties.canonicalCombiningClass.getter();
      v45 = *v20;
      v23 = v40;
      v45(v21, v40);
      LOBYTE(v46) = Unicode.CanonicalCombiningClass.rawValue.getter();
      v46 = v46;
      v24 = *v36;
      v25 = v22;
      v26 = v43;
      (*v36)(v25, v43);
      v27 = v39;
      Unicode.Scalar.properties.getter();
      v28 = v42;
      Unicode.Scalar.Properties.canonicalCombiningClass.getter();
      v45(v27, v23);
      LOBYTE(v27) = Unicode.CanonicalCombiningClass.rawValue.getter();
      result = (v24)(v28, v26);
      if (v46 >= v27)
      {
LABEL_4:
        a3 = v35 + 1;
        v18 = v34 + 1;
        v19 = v33 - 1;
        if (v35 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v29 = *v18;
      result = v18[1];
      *v18 = result;
      v18[1] = v29;
      --v18;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(unint64_t *a1, char *a2, uint64_t *a3)
{
  v60 = a3;
  v68 = a2;
  v78 = type metadata accessor for Unicode.CanonicalCombiningClass();
  v4 = *(v78 - 8);
  v5 = MEMORY[0x1EEE9AC00](v78);
  v77 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v59 - v7;
  v75 = type metadata accessor for Unicode.Scalar.Properties();
  v8 = *(v75 - 8);
  v9 = MEMORY[0x1EEE9AC00](v75);
  v74 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v59 - v11;
  v61 = a1;
  v12 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_62;
  }

  result = v12;
LABEL_3:
  *v61 = result;
  v14 = *(result + 16);
  if (v14 < 2)
  {
    return 1;
  }

  v71 = (v4 + 8);
  v72 = (v8 + 8);
  while (1)
  {
    v15 = *v60;
    if (!*v60)
    {
      break;
    }

    v12 = v14 - 1;
    v16 = *(result + 16 * (v14 - 1) + 32);
    v17 = *(result + 16 * (v14 - 1) + 40);
    v66 = *(result + 16 * v14);
    v18 = 4 * v66;
    v19 = (v15 + 4 * v66);
    v20 = 4 * v16;
    v8 = (v15 + 4 * v16);
    v64 = result;
    v65 = v17;
    v21 = 4 * v17;
    v22 = v15 + 4 * v17;
    v4 = 4 * v16 - 4 * v66;
    v23 = 4 * v17 - 4 * v16;
    if (v4 < v23)
    {
      v24 = v68;
      if (v19 != v68 || v8 <= v68)
      {
        memmove(v68, (v15 + v18), 4 * v16 - v18);
        v24 = v68;
      }

      v82 = &v24[v4];
      if (v4 < 1 || v21 <= v20)
      {
        v32 = v24;
        v27 = v19;
        goto LABEL_37;
      }

      v62 = v14 - 1;
      v63 = v14;
      v32 = v24;
      v81 = v22;
      while (1)
      {
        v79 = v19;
        v80 = v8;
        v70 = v32;
        v33 = v73;
        Unicode.Scalar.properties.getter();
        v34 = v76;
        Unicode.Scalar.Properties.canonicalCombiningClass.getter();
        v35 = *v72;
        v36 = v75;
        (*v72)(v33, v75);
        LOBYTE(v69) = Unicode.CanonicalCombiningClass.rawValue.getter();
        v69 = v69;
        v37 = *v71;
        v38 = v78;
        (*v71)(v34, v78);
        v39 = v74;
        Unicode.Scalar.properties.getter();
        v40 = v77;
        Unicode.Scalar.Properties.canonicalCombiningClass.getter();
        v35(v39, v36);
        v4 = Unicode.CanonicalCombiningClass.rawValue.getter();
        v37(v40, v38);
        if (v69 >= v4)
        {
          break;
        }

        v41 = v79;
        v42 = v80;
        v8 = v80 + 4;
        v32 = v70;
        if (v79 != v80)
        {
          goto LABEL_33;
        }

LABEL_34:
        v19 = v41 + 4;
        if (v32 >= v82 || v8 >= v81)
        {
          v27 = v19;
          v12 = v62;
          v14 = v63;
LABEL_37:
          v31 = v64;
          goto LABEL_49;
        }
      }

      v42 = v70;
      v32 = v70 + 4;
      v41 = v79;
      v8 = v80;
      if (v79 == v70)
      {
        goto LABEL_34;
      }

LABEL_33:
      *v41 = *v42;
      goto LABEL_34;
    }

    v28 = v68;
    v4 = v15 + 4 * v16;
    if (v8 != v68 || v22 <= v68)
    {
      v8 = (4 * v66);
      memmove(v68, (v15 + 4 * v16), 4 * v17 - 4 * v16);
      v18 = v8;
      v28 = v68;
    }

    v82 = &v28[v23];
    if (v23 < 1 || v20 <= v18)
    {
      v32 = v28;
      v31 = v64;
      v27 = v4;
    }

    else
    {
      v62 = v14 - 1;
      v63 = v14;
      v79 = v19;
      do
      {
        v80 = v4;
        v43 = (v22 - 4);
        v44 = v82;
        v67 = (v4 - 4);
        while (1)
        {
          v81 = v43;
          v70 = v43 + 4;
          v44 -= 4;
          v45 = v73;
          Unicode.Scalar.properties.getter();
          v46 = v76;
          Unicode.Scalar.Properties.canonicalCombiningClass.getter();
          v8 = *v72;
          v47 = v75;
          (*v72)(v45, v75);
          LOBYTE(v69) = Unicode.CanonicalCombiningClass.rawValue.getter();
          v69 = v69;
          v48 = *v71;
          v49 = v46;
          v50 = v78;
          (*v71)(v49, v78);
          v51 = v74;
          Unicode.Scalar.properties.getter();
          v52 = v77;
          Unicode.Scalar.Properties.canonicalCombiningClass.getter();
          (v8)(v51, v47);
          v4 = Unicode.CanonicalCombiningClass.rawValue.getter();
          v48(v52, v50);
          if (v69 < v4)
          {
            break;
          }

          v53 = v81;
          if (v70 != v82)
          {
            *v81 = *v44;
          }

          v43 = v53 - 4;
          v82 = v44;
          if (v44 <= v68)
          {
            v82 = v44;
            v32 = v68;
            v14 = v63;
            v31 = v64;
            v12 = v62;
            v27 = v80;
            goto LABEL_49;
          }
        }

        v54 = v79;
        v22 = v81;
        v27 = v67;
        if (v70 != v80)
        {
          *v81 = *v67;
        }

        v14 = v63;
        v31 = v64;
        v12 = v62;
        if (v82 <= v68)
        {
          break;
        }

        v4 = v27;
      }

      while (v54 < v27);
      v32 = v68;
    }

LABEL_49:
    if (v27 != v32 || v27 >= &v32[(v82 - v32 + ((v82 - v32) < 0 ? 3uLL : 0)) & 0xFFFFFFFFFFFFFFFCLL])
    {
      v4 = v31;
      memmove(v27, v32, 4 * ((v82 - v32) / 4));
      v31 = v4;
    }

    if (v65 < v66)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
      goto LABEL_3;
    }

    v4 = v31;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v55 = v4;
    }

    else
    {
      v55 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    }

    if ((v14 - 2) >= *(v55 + 2))
    {
      goto LABEL_61;
    }

    v56 = &v55[16 * v14];
    v57 = v65;
    *v56 = v66;
    *(v56 + 1) = v57;
    v58 = v61;
    *v61 = v55;
    specialized Array.remove(at:)(v12);
    result = *v58;
    v14 = *(*v58 + 16);
    if (v14 <= 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4)
{
  v61 = type metadata accessor for Unicode.CanonicalCombiningClass();
  v55 = *(v61 - 8);
  v8 = MEMORY[0x1EEE9AC00](v61);
  v60 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v47 - v10;
  v58 = type metadata accessor for Unicode.Scalar.Properties();
  v11 = *(v58 - 8);
  v12 = MEMORY[0x1EEE9AC00](v58);
  v57 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v47 - v14;
  v15 = a2 - a1 + 3;
  if (a2 - a1 >= 0)
  {
    v15 = a2 - a1;
  }

  v16 = v15 >> 2;
  v17 = a3 - a2 + 3;
  if (a3 - a2 >= 0)
  {
    v17 = a3 - a2;
  }

  v18 = v17 >> 2;
  if (v16 >= v17 >> 2)
  {
    v62 = a1;
    if (a4 != a2 || &a2[4 * v18] <= a4)
    {
      memmove(a4, a2, 4 * v18);
    }

    v64 = &a4[4 * v18];
    if (a3 - a2 >= 4 && a2 > v62)
    {
      v49 = a4;
      v50 = (v11 + 8);
      v48 = (v55 + 8);
LABEL_27:
      v55 = a2;
      v32 = a2 - 4;
      v33 = a3 - 4;
      v34 = v64;
      v51 = a2 - 4;
      do
      {
        v63 = v33;
        v54 = v33 + 4;
        v34 -= 4;
        LODWORD(v52) = *v32;
        v35 = v56;
        Unicode.Scalar.properties.getter();
        v36 = v59;
        Unicode.Scalar.Properties.canonicalCombiningClass.getter();
        v37 = *v50;
        v38 = v58;
        (*v50)(v35, v58);
        LOBYTE(v53) = Unicode.CanonicalCombiningClass.rawValue.getter();
        v53 = v53;
        v39 = *v48;
        v40 = v61;
        (*v48)(v36, v61);
        v41 = v57;
        Unicode.Scalar.properties.getter();
        v42 = v60;
        Unicode.Scalar.Properties.canonicalCombiningClass.getter();
        v37(v41, v38);
        LOBYTE(v38) = Unicode.CanonicalCombiningClass.rawValue.getter();
        v39(v42, v40);
        if (v53 < v38)
        {
          a4 = v49;
          v44 = v62;
          a3 = v63;
          v45 = v51;
          if (v54 != v55)
          {
            *v63 = *v51;
          }

          if (v64 <= a4 || (a2 = v45, v45 <= v44))
          {
            a2 = v45;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        a4 = v49;
        v43 = v63;
        if (v54 != v64)
        {
          *v63 = *v34;
        }

        v33 = v43 - 4;
        v64 = v34;
        v32 = v51;
      }

      while (v34 > a4);
      v64 = v34;
      a2 = v55;
    }
  }

  else
  {
    v19 = a1;
    if (a4 != a1 || &a1[4 * v16] <= a4)
    {
      memmove(a4, a1, 4 * v16);
    }

    v64 = &a4[4 * v16];
    if (a2 - a1 >= 4 && a2 < a3)
    {
      v63 = a3;
      v51 = v55 + 8;
      v52 = (v11 + 8);
      while (1)
      {
        v55 = a2;
        v62 = v19;
        v53 = *a4;
        v20 = v56;
        Unicode.Scalar.properties.getter();
        v21 = v59;
        Unicode.Scalar.Properties.canonicalCombiningClass.getter();
        v22 = *v52;
        v23 = v58;
        (*v52)(v20, v58);
        LOBYTE(v54) = Unicode.CanonicalCombiningClass.rawValue.getter();
        LODWORD(v54) = v54;
        v24 = a4;
        v25 = *v51;
        v26 = v61;
        (*v51)(v21, v61);
        v27 = v57;
        Unicode.Scalar.properties.getter();
        v28 = v60;
        Unicode.Scalar.Properties.canonicalCombiningClass.getter();
        v22(v27, v23);
        v29 = Unicode.CanonicalCombiningClass.rawValue.getter();
        v25(v28, v26);
        if (v54 >= v29)
        {
          break;
        }

        v30 = v55;
        a2 = v55 + 4;
        v31 = v62;
        a4 = v24;
        if (v62 != v55)
        {
          goto LABEL_16;
        }

LABEL_17:
        v19 = v31 + 4;
        if (a4 >= v64 || a2 >= v63)
        {
          goto LABEL_19;
        }
      }

      v30 = v24;
      a4 = v24 + 4;
      v31 = v62;
      a2 = v55;
      if (v62 == v24)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v31 = *v30;
      goto LABEL_17;
    }

LABEL_19:
    a2 = v19;
  }

LABEL_38:
  if (a2 != a4 || a2 >= &a4[(v64 - a4 + (v64 - a4 < 0 ? 3uLL : 0)) & 0xFFFFFFFFFFFFFFFCLL])
  {
    memmove(a2, a4, 4 * ((v64 - a4) / 4));
  }

  return 1;
}

uint64_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if ((result & 1) == 0)
  {
    goto LABEL_4;
  }

  if (a1)
  {
    a5 = String.init(cString:)();
    v13 = v12;

    a6 = v13;
LABEL_4:
    *a7 = a5;
    a7[1] = a6;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *(*a5)(void *__return_ptr, _BYTE *)@<X4>, void *a6@<X8>)
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if (result)
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  result = a5(v13, v11);
  if (!v6)
  {
    v12 = v13[1];
    *a6 = v13[0];
    a6[1] = v12;
  }

  return result;
}

uint64_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if ((result & 1) == 0)
  {

    v13 = 0uLL;
    goto LABEL_6;
  }

  if (!a1)
  {
    __break(1u);
    return result;
  }

  closure #1 in String._resolvingSymlinksInPath()(a1, a5, a6, &v14);

  if (!v7)
  {
    v13 = v14;
LABEL_6:
    *a7 = v13;
  }

  return result;
}

uint64_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, BOOL *a6@<X8>)
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if ((result & 1) == 0)
  {
    v10 = 0;
    goto LABEL_5;
  }

  if (a1)
  {
    result = access(a1, a5);
    v10 = result == 0;
LABEL_5:
    *a6 = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if (result)
  {
    if (a1)
    {
      result = open(_:_:_:)();
      *a5 = result;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    result = closure #1 in readBytesFromFile(path:reportProgress:maxLength:options:attributesToRead:attributes:)(0, &v9);
    if (!v5)
    {
      *a5 = v9;
    }
  }

  return result;
}

uint64_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, void *a10, unint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  v30 = a12;
  if (result)
  {
    v19 = v25;
    if (!a1)
    {
      __break(1u);
      return result;
    }

    closure #1 in createProtectedTemporaryFile(at:inPath:options:variant:)(a1, a5, a6, a7, a8, a10, a11, v30 & 1, &v26, a13, a14);
  }

  else
  {
    v19 = v25;
    closure #1 in createProtectedTemporaryFile(at:inPath:options:variant:)(0, a5, a6, a7, a8, a10, a11, a12 & 1, &v26, a13, a14);
  }

  if (!v19)
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    *a9 = v26;
    *(a9 + 8) = v20;
    *(a9 + 16) = v21;
    *(a9 + 24) = v22;
  }

  outlined consume of PathOrURL(a10, a11, v30 & 1);
}

uint64_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if (result)
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  closure #1 in _FileManagerImpl.subpathsOfDirectory(atPath:)(v13, a5, a6, &v14);

  if (!v7)
  {
    *a7 = v14;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser()
{
  result = lazy protocol witness table cache variable for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser;
  if (!lazy protocol witness table cache variable for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UnsafeBufferPointer<UInt16>.DecompositionError and conformance UnsafeBufferPointer<A>.DecompositionError(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Sequence<>.starts<A>(with:)()
{

  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v5.value._countAndFlagsBits && object == v5.value._object)
      {
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v3 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v4 = String.Iterator.next()();
      countAndFlagsBits = v4.value._countAndFlagsBits;
      object = v4.value._object;
    }

    while (v4.value._object);
  }

  v6 = String.Iterator.next()().value._object;

  if (!v6)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  if ((a4 ^ a3) >= 0x4000)
  {
    while (1)
    {
      v9 = Substring.index(before:)();
      v10 = Substring.subscript.getter();
      v12 = v11;
      if (v6 < 0x4000)
      {
        break;
      }

      v13 = v10;
      v6 = String.index(before:)();
      if (v13 == String.subscript.getter() && v12 == v14)
      {
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      if ((v9 ^ a3) < 0x4000)
      {
        goto LABEL_14;
      }
    }

    v16 = 1;
    goto LABEL_17;
  }

LABEL_14:
  if (v6 >= 0x4000)
  {
    String.index(before:)();
    String.subscript.getter();
    v16 = 0;
LABEL_17:

    return v16;
  }

  return 1;
}

unint64_t encodingFromDataForExtendedAttribute(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = specialized Data.withContiguousStorageIfAvailable<A>(_:)(a1, a2);
  if (v7 == 1)
  {
    outlined copy of Data._Representation(a1, a2);
    v8 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a1, a2);
    v9 = (v8 + 32);
    v10 = *(v8 + 16);
    if (specialized Sequence<>.starts<A>(with:)(&outlined read-only object #0 of encodingFromDataForExtendedAttribute(_:), v8 + 32, v10))
    {
      v11 = v10 >= 3;
      v10 -= 3;
      if (!v11)
      {
        __break(1u);
LABEL_23:

        goto LABEL_24;
      }

      v9 = (v8 + 35);
    }

    v12 = static String._tryFromUTF8(_:)();
    if (v13)
    {
      v14 = v12;
      v15 = v13;
    }

    else
    {
      v14 = _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O4UTF8O_SRys5UInt8VGTt0t1g5(v9, v10);
      v15 = v16;

      if (!v15)
      {
LABEL_29:
        result = 0;
        v45 = 1;
        goto LABEL_30;
      }
    }
  }

  else
  {
    v14 = v6;
    v15 = v7;
    if (!v7)
    {
      goto LABEL_29;
    }
  }

  specialized Collection<>.firstIndex(of:)(59, 0xE100000000000000, v14, v15);
  if (v17)
  {
    goto LABEL_24;
  }

  v18 = String.index(after:)();
  v19 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v19 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v18 >> 14 >= 4 * v19)
  {
    goto LABEL_24;
  }

  v20 = String.subscript.getter();
  v24 = v23;
  if (!((v20 ^ v21) >> 14))
  {
    goto LABEL_23;
  }

  v25 = v20;
  v26 = v21;
  v27 = v22;
  v28 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SuSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Su_SsTG5SiTf1cn_n(v20, v21, v22, v23, 10);
  if ((v29 & 0x100) != 0)
  {
    v30 = specialized _parseInteger<A, B>(ascii:radix:)(v25, v26, v27, v24, 10);
    v34 = v33;

    if (v34)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v30 = v28;
    v31 = v29;

    if (v31)
    {
      goto LABEL_24;
    }
  }

  if (!HIDWORD(v30))
  {
    if (CFStringIsEncodingAvailable(v30))
    {

      v35 = v30;
      goto LABEL_28;
    }

LABEL_24:
    v36 = String.subscript.getter();
    v38 = v37;
    v40 = v39;
    v42 = v41;

    if ((v36 ^ v38) < 0x4000)
    {

      goto LABEL_29;
    }

    MEMORY[0x1865CAE80](v36, v38, v40, v42);

    v43 = String._bridgeToObjectiveCImpl()();

    v44 = CFStringConvertIANACharSetNameToEncoding(v43);
    swift_unknownObjectRelease();
    if (v44 == -1)
    {
      goto LABEL_29;
    }

    v35 = v44;
LABEL_28:
    result = CFStringConvertEncodingToNSStringEncoding(v35);
    v45 = 0;
LABEL_30:
    *a3 = result;
    *(a3 + 8) = v45;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t specialized UTF32EndianAdaptor.Iterator.next()()
{
  if (*(v0 + 41) == 1)
  {
    v1 = *(v0 + 8);
    v2 = *(v0 + 32);
LABEL_3:
    if (v2 != v1)
    {
      v3 = *(v0 + 16);
      v4 = *(v3 + v2);
      *(v0 + 32) = v2 + 1;
      if (v2 + 1 != v1)
      {
        v5 = *(v3 + v2 + 1);
        *(v0 + 32) = v2 + 2;
        if (v2 + 2 != v1)
        {
          v6 = *(v3 + v2 + 2);
          *(v0 + 32) = v2 + 3;
          if (v2 + 3 != v1)
          {
            v7 = v2 + 4;
            v8 = *(v3 + v2 + 3);
LABEL_41:
            *(v0 + 32) = v7;
            v23 = *(v0 + 40);
            v11 = v4 | (v5 << 8) | (v6 << 16) | (v8 << 24);
            if (v23 == 2 || (v23 & 1) != 0)
            {
LABEL_43:
              v9 = 0;
              v11 = bswap32(v11);
              return v11 | (v9 << 32);
            }

LABEL_46:
            v9 = 0;
            return v11 | (v9 << 32);
          }
        }
      }
    }

    goto LABEL_32;
  }

  v9 = 1;
  *(v0 + 41) = 1;
  v1 = *(v0 + 8);
  v10 = *(v0 + 32);
  if (v10 == v1)
  {
    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 16);
    v4 = *(v12 + v10);
    v13 = v10 + 1;
    *(v0 + 32) = v10 + 1;
    if (v4 != 255 && v4 != 0)
    {
      if (v13 != v1)
      {
        v5 = *(v12 + v13);
        *(v0 + 32) = v10 + 2;
        if (v10 + 2 != v1)
        {
          v6 = *(v12 + v10 + 2);
          *(v0 + 32) = v10 + 3;
          if (v10 + 3 != v1)
          {
            v7 = v10 + 4;
            v8 = *(v12 + v10 + 3);
            goto LABEL_41;
          }
        }
      }

      goto LABEL_32;
    }

    if (v13 == v1 || (v15 = *(v12 + v13), *(v0 + 32) = v10 + 2, v10 + 2 == v1) || (v16 = *(v12 + v10 + 2), *(v0 + 32) = v10 + 3, v10 + 3 == v1))
    {
LABEL_32:
      v11 = 0;
      v9 = 1;
      return v11 | (v9 << 32);
    }

    v17 = *(v12 + v10 + 3);
    v2 = v10 + 4;
    *(v0 + 32) = v10 + 4;
    if (v4 == 255 && (v15 == 254 ? (v18 = v16 == 0) : (v18 = 0), v18 ? (v19 = v17 == 0) : (v19 = 0), v19))
    {
      v20 = *(v0 + 40);
      if (v20 == 2)
      {
        *(v0 + 40) = 0;
        goto LABEL_3;
      }

      v9 = 0;
      if (v20)
      {
        v11 = -131072;
      }

      else
      {
        v11 = 65279;
      }
    }

    else
    {
      v22 = *(v0 + 40);
      if (v4 || v15 || v16 != 254 || v17 != 255)
      {
        v11 = v4 | (v15 << 8) | (v16 << 16) | (v17 << 24);
        if (v22 == 2 || (v22 & 1) != 0)
        {
          goto LABEL_43;
        }

        goto LABEL_46;
      }

      if (v22 == 2)
      {
        *(v0 + 40) = 1;
        goto LABEL_3;
      }

      v9 = 0;
      if (v22)
      {
        v11 = 65279;
      }

      else
      {
        v11 = -131072;
      }
    }
  }

  return v11 | (v9 << 32);
}

{
  if (*(v0 + 65))
  {
    goto LABEL_2;
  }

  v9 = 1;
  *(v0 + 65) = 1;
  v10 = Data.Iterator.next()();
  if ((*&v10 & 0x100) != 0)
  {
    goto LABEL_23;
  }

  value = v10.value;
  v12 = v10.value;
  if (v10.value != 255 && v10.value)
  {
    v18 = Data.Iterator.next()();
    if ((*&v18 & 0x100) == 0)
    {
      v19 = v18;
      v20 = Data.Iterator.next()();
      if ((*&v20 & 0x100) == 0)
      {
        v16 = v20.value;
        LOWORD(v7) = Data.Iterator.next()();
        if ((v7 & 0x100) == 0)
        {
          v21 = value | (*&v19 << 8);
LABEL_31:
          v8 = v21 | (v16 << 16);
          goto LABEL_32;
        }

LABEL_22:
        v22 = 0;
        v9 = 1;
        return v22 | (v9 << 32);
      }
    }

LABEL_23:
    v22 = 0;
    return v22 | (v9 << 32);
  }

  v13 = Data.Iterator.next()();
  if ((*&v13 & 0x100) != 0)
  {
    goto LABEL_23;
  }

  v14 = v13;
  v15 = Data.Iterator.next()();
  if ((*&v15 & 0x100) != 0)
  {
    goto LABEL_23;
  }

  v16 = v15.value;
  LOWORD(v7) = Data.Iterator.next()();
  if ((v7 & 0x100) != 0)
  {
    goto LABEL_22;
  }

  if (v12 == 255 && v14.value == 254 && !(v16 | v7))
  {
    v17 = *(v0 + 64);
    if (v17 != 2)
    {
      v9 = 0;
      if (v17)
      {
        v22 = -131072;
      }

      else
      {
        v22 = 65279;
      }

      return v22 | (v9 << 32);
    }

    *(v0 + 64) = 0;
    goto LABEL_2;
  }

  if (v12 | v14.value || v16 != 254 || v7 != 255)
  {
    v21 = value | (*&v14 << 8);
    goto LABEL_31;
  }

  v24 = *(v0 + 64);
  if (v24 != 2)
  {
    v9 = 0;
    if (v24)
    {
      v22 = 65279;
    }

    else
    {
      v22 = -131072;
    }

    return v22 | (v9 << 32);
  }

  *(v0 + 64) = 1;
LABEL_2:
  v1 = Data.Iterator.next()();
  if ((*&v1 & 0x100) != 0)
  {
    goto LABEL_22;
  }

  v2 = v1.value;
  v3 = Data.Iterator.next()();
  if ((*&v3 & 0x100) != 0)
  {
    goto LABEL_22;
  }

  v4 = v3;
  v5 = Data.Iterator.next()();
  if ((*&v5 & 0x100) != 0)
  {
    goto LABEL_22;
  }

  v6 = v5.value;
  LOWORD(v7) = Data.Iterator.next()();
  if ((v7 & 0x100) != 0)
  {
    goto LABEL_22;
  }

  v8 = (v2 | (*&v4 << 8)) | (v6 << 16);
LABEL_32:
  v22 = v8 | (v7 << 24);
  v25 = *(v0 + 64);
  if (v25 == 2 || (v25 & 1) != 0)
  {
    v9 = 0;
    v22 = bswap32(v22);
  }

  else
  {
    v9 = 0;
  }

  return v22 | (v9 << 32);
}

{
  if (*(v0 + 17))
  {
    goto LABEL_2;
  }

  v9 = 1;
  *(v0 + 17) = 1;
  v10 = *v0;
  if (*v0 >= v0[1])
  {
    v8 = 0;
    return v8 | (v9 << 32);
  }

  v12 = *v10;
  v11 = v12;
  *v0 = v10 + 1;
  if (v12 && v11 != 255)
  {
    v19 = specialized BufferViewIterator.next()();
    if ((v19 & 0x100) != 0)
    {
      goto LABEL_23;
    }

    v20 = v19;
    v21 = specialized BufferViewIterator.next()();
    if ((v21 & 0x100) != 0)
    {
      goto LABEL_23;
    }

    v16 = v21;
    v17 = specialized BufferViewIterator.next()();
    if ((v17 & 0x100) != 0)
    {
      goto LABEL_23;
    }

    v22 = v11 | (v20 << 8);
LABEL_31:
    v8 = v22 | (v16 << 16) | (v17 << 24);
    goto LABEL_32;
  }

  v13 = specialized BufferViewIterator.next()();
  if ((v13 & 0x100) != 0)
  {
    goto LABEL_23;
  }

  v14 = v13;
  v15 = specialized BufferViewIterator.next()();
  if ((v15 & 0x100) != 0)
  {
    goto LABEL_23;
  }

  v16 = v15;
  v17 = specialized BufferViewIterator.next()();
  if ((v17 & 0x100) != 0)
  {
    goto LABEL_23;
  }

  if (v11 == 255 && v14 == 254 && !(v16 | v17))
  {
    v18 = *(v0 + 16);
    if (v18 != 2)
    {
      v9 = 0;
      if (v18)
      {
        v8 = -131072;
      }

      else
      {
        v8 = 65279;
      }

      return v8 | (v9 << 32);
    }

    *(v0 + 16) = 0;
    goto LABEL_2;
  }

  if (v11 | v14 || v16 != 254 || v17 != 255)
  {
    v22 = v11 | (v14 << 8);
    goto LABEL_31;
  }

  v24 = *(v0 + 16);
  if (v24 != 2)
  {
    v9 = 0;
    if (v24)
    {
      v8 = 65279;
    }

    else
    {
      v8 = -131072;
    }

    return v8 | (v9 << 32);
  }

  *(v0 + 16) = 1;
LABEL_2:
  v1 = *v0;
  if (*v0 >= v0[1] || (v2 = *v1, *v0 = v1 + 1, v3 = specialized BufferViewIterator.next()(), (v3 & 0x100) != 0) || (v4 = v3, v5 = specialized BufferViewIterator.next()(), (v5 & 0x100) != 0) || (v6 = v5, v7 = specialized BufferViewIterator.next()(), (v7 & 0x100) != 0))
  {
LABEL_23:
    v8 = 0;
    v9 = 1;
    return v8 | (v9 << 32);
  }

  v8 = v2 & 0xFF0000FF | (v4 << 8) | (v6 << 16) | (v7 << 24);
LABEL_32:
  v25 = *(v0 + 16);
  if (v25 == 2 || (v25 & 1) != 0)
  {
    v9 = 0;
    v8 = bswap32(v8);
  }

  else
  {
    v9 = 0;
  }

  return v8 | (v9 << 32);
}

{
  v1 = *v0;
  if (*(v0 + 17))
  {
    if (!v1)
    {
LABEL_31:
      v7 = 1;
      return v1 | (v7 << 32);
    }
  }

  else
  {
    v7 = 1;
    *(v0 + 17) = 1;
    if (!v1)
    {
      return v1 | (v7 << 32);
    }

    v8 = v0[1];
    if (v1 == v8)
    {
      LODWORD(v1) = 0;
      return v1 | (v7 << 32);
    }

    v9 = v1 + 1;
    *v0 = v1 + 1;
    v10 = *v1;
    if (*v1 && v10 != 255)
    {
      if (v9 != v8)
      {
        *v0 = v1 + 2;
        if (v1 + 2 != v8)
        {
          v16 = v1[1];
          *v0 = v1 + 3;
          if (v1 + 3 != v8)
          {
            v17 = v1[2];
            *v0 = v1 + 4;
            v6 = v10 | (v16 << 8) | (v17 << 16);
            goto LABEL_26;
          }
        }
      }

      goto LABEL_30;
    }

    if (v9 == v8 || (*v0 = v1 + 2, v1 + 2 == v8) || (v11 = v1[1], *v0 = v1 + 3, v1 + 3 == v8))
    {
LABEL_30:
      LODWORD(v1) = 0;
      goto LABEL_31;
    }

    v12 = v1[2];
    v13 = v1 + 4;
    *v0 = v1 + 4;
    v14 = v1[3];
    if (v10 != 255 || v11 != 254 || v12 || v14)
    {
      if (v10 || v11 || v12 != 254 || v14 != 255)
      {
        v6 = v10 | (v11 << 8) | (v12 << 16);
        goto LABEL_27;
      }

      v20 = *(v0 + 16);
      if (v20 != 2)
      {
        v7 = 0;
        if (v20)
        {
          LODWORD(v1) = 65279;
        }

        else
        {
          LODWORD(v1) = -131072;
        }

        return v1 | (v7 << 32);
      }

      *(v0 + 16) = 1;
    }

    else
    {
      v15 = *(v0 + 16);
      if (v15 != 2)
      {
        v7 = 0;
        if (v15)
        {
          LODWORD(v1) = -131072;
        }

        else
        {
          LODWORD(v1) = 65279;
        }

        return v1 | (v7 << 32);
      }

      *(v0 + 16) = 0;
    }

    v1 = v13;
  }

  v2 = v0[1];
  if (v1 == v2)
  {
    goto LABEL_30;
  }

  *v0 = v1 + 1;
  if (v1 + 1 == v2)
  {
    goto LABEL_30;
  }

  v3 = *v1;
  *v0 = v1 + 2;
  if (v1 + 2 == v2)
  {
    goto LABEL_30;
  }

  v4 = v1[1];
  *v0 = v1 + 3;
  if (v1 + 3 == v2)
  {
    goto LABEL_30;
  }

  v5 = v1[2];
  *v0 = v1 + 4;
  v6 = v3 | (v4 << 8) | (v5 << 16);
LABEL_26:
  v14 = v1[3];
LABEL_27:
  LODWORD(v1) = v6 | (v14 << 24);
  v18 = *(v0 + 16);
  if (v18 == 2 || (v18 & 1) != 0)
  {
    v7 = 0;
    LODWORD(v1) = bswap32(v1);
  }

  else
  {
    v7 = 0;
  }

  return v1 | (v7 << 32);
}

void (*_sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O5UTF16O_AA0I13EndianAdaptorVys5SliceVySrys5UInt8VGGGTt0t1g5(__int128 *a1))(_BYTE *, void)
{
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0, MEMORY[0x1E69E7CC0]);
  v3 = *(a1 + 32);
  v4 = a1[1];
  v40 = *a1;
  v41 = v4;
  v42 = v40;
  v43 = v3;
  v44 = 0;
  v38 = 0;
  v39 = 0;
  v5 = 1;
LABEL_2:
  v6 = specialized UTF16EndianAdaptor.Iterator.next()();
  if ((v6 & 0x10000) != 0)
  {
    goto LABEL_51;
  }

  if ((v6 & 0xF800) != 0xD800)
  {
    v7 = v6;
    i = 1;
    goto LABEL_23;
  }

  v7 = v6 & 0xDFFF | (HIWORD(v38) << 16);
  v8 = 16;
LABEL_5:
  v9 = specialized UTF16EndianAdaptor.Iterator.next()();
  if ((v9 & 0x10000) != 0)
  {
    v10 = v8;
  }

  else
  {
    v7 = ((-65535 << v8) - 1) & v7 | (v9 << v8);
    v10 = v8 + 16;
    if ((v8 + 16) > 0x1Fu)
    {
      goto LABEL_14;
    }

    v11 = specialized UTF16EndianAdaptor.Iterator.next()();
    if ((v11 & 0x10000) == 0)
    {
      v7 = ((-65535 << v10) - 1) & v7 | (v11 << v10);
      v10 = v8 + 32;
      if (v8 >= 0xE0u)
      {
        v12 = specialized UTF16EndianAdaptor.Iterator.next()();
        if ((v12 & 0x10000) == 0)
        {
          v7 = ((-65535 << v8) - 1) & v7 | (v12 << v8);
          v10 = v8 + 48;
          goto LABEL_14;
        }

        goto LABEL_13;
      }

LABEL_14:
      v14 = v7 & 0xFC00FC00;
      if ((v7 & 0xFC00FC00) == 0xDC00D800)
      {
        v15 = 32;
      }

      else
      {
        v15 = 16;
      }

      v39 = v10 - v15;
      v16 = v14 == -603924480;
      if (v14 == -603924480)
      {
        v17 = 32;
      }

      else
      {
        v17 = 16;
      }

      v38 = v7 >> v17;
      if (!v16)
      {

        return 0;
      }

      for (i = 0; ; i = 1)
      {
LABEL_23:
        if (v7 >= 0x80u)
        {
          v26 = (v7 & 0x3F) << 8;
          if (v7 < 0x800u)
          {
            v27 = v26 + (v7 >> 6);
            v28 = 33217;
LABEL_41:
            v18 = v27 + v28;
            goto LABEL_25;
          }

          if ((v7 & 0xF800) != 0xD800)
          {
            v27 = ((v26 | (v7 >> 6) & 0x3F) << 8) | (v7 >> 12);
            v28 = 8487393;
            goto LABEL_41;
          }

          if ((i & 1) == 0)
          {
            v32 = ((v7 & 0x3FF) << 10) | HIWORD(v7) & 0x3FF;
            v27 = ((v32 + 0x10000) >> 4) & 0x3F00 | ((v32 + 0x10000) >> 18) | (((v32 >> 6) & 0x3F | (((v32 + 0x10000) & 0x3F) << 8)) << 16);
            v28 = -2122219023;
            goto LABEL_41;
          }

          v29 = (v7 & 0x3F) << 8;
          v30 = (v7 >> 6) + v29 + 33217;
          v31 = ((v7 >> 12) | ((v29 | (v7 >> 6) & 0x3F) << 8)) + 8487393;
          if (v7 >= 0x800u)
          {
            v30 = v31;
          }

          if (v7 <= 0x7Fu)
          {
            v18 = v7 + 1;
          }

          else
          {
            v18 = v30;
          }
        }

        else
        {
          v18 = (v7 + 1);
          if (v7 == 0xFF)
          {
LABEL_34:
            v23 = v5;
            goto LABEL_35;
          }
        }

LABEL_25:
        v19 = *(v2 + 2);
        do
        {
          v20 = v18;
          while (1)
          {
            v21 = *(v2 + 3);
            if (v19 >= v21 >> 1)
            {
              v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v19 + 1, 1, v2);
            }

            v18 = v20 >> 8;
            *(v2 + 2) = v19 + 1;
            v2[v19 + 32] = v20 - 1;
            if ((v5 & ((v20 - 1) < 0)) == 1)
            {
              break;
            }

            ++v19;
            v22 = v20 >= 0x100;
            v20 >>= 8;
            if (!v22)
            {
              goto LABEL_34;
            }
          }

          v23 = 0;
          v5 = 0;
          ++v19;
        }

        while (v20 >= 0x100);
LABEL_35:
        v8 = v39;
        v5 = v23;
        if (!v39)
        {
          goto LABEL_2;
        }

        v7 = v38;
        if ((v38 & 0xF800) == 0xD800)
        {
          goto LABEL_5;
        }

        lazy protocol witness table accessor for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser();
        result = WeekendRange.onsetTime.modify();
        v25 = *(v24 + 4);
        if (!v25)
        {
          __break(1u);
          return result;
        }

        *v24 = *(v24 + 2);
        *(v24 + 4) = v25 - 16;
        result(v37, 0);
        v7 = v7;
      }
    }
  }

LABEL_13:
  if (v10)
  {
    goto LABEL_14;
  }

LABEL_51:
  v33 = static String._tryFromUTF8(_:)();
  v35 = v34;

  if (v35)
  {
    return v33;
  }

  else
  {
    return 0;
  }
}

unint64_t _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O5UTF32O_AA0I13EndianAdaptorVys5SliceVySrys5UInt8VGGGTt0t1g5()
{
  v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0, MEMORY[0x1E69E7CC0]);
  result = specialized UTF32EndianAdaptor.Iterator.next()();
  if ((result & 0x100000000) == 0)
  {
    v2 = 1;
    do
    {
      if (result >> 11 == 27 || result >= 0x110000)
      {

        return 0;
      }

      if ((result & 0x1FFF80) != 0)
      {
        v9 = (result & 0x3F) << 8;
        v10 = (v9 | (result >> 6) & 0x3F) << 8;
        v11 = (result >> 18) + ((v10 | (result >> 12) & 0x3F) << 8) - 2122219023;
        v12 = (result >> 12) + v10 + 8487393;
        if (WORD1(result))
        {
          v12 = v11;
        }

        v3 = (result >> 6) + v9 + 33217;
        if (result > 0x7FF)
        {
          v3 = v12;
        }
      }

      else
      {
        if (result > 0xFF)
        {
          __break(1u);
          return result;
        }

        v3 = result + 1;
      }

      v4 = *(v0 + 2);
      do
      {
        v5 = v3;
        while (1)
        {
          v6 = *(v0 + 3);
          if (v4 >= v6 >> 1)
          {
            v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v4 + 1, 1, v0);
          }

          v3 = v5 >> 8;
          *(v0 + 2) = v4 + 1;
          v0[v4 + 32] = v5 - 1;
          if ((v2 & ((v5 - 1) < 0)) == 1)
          {
            break;
          }

          ++v4;
          v7 = v5 >= 0x100;
          v5 >>= 8;
          if (!v7)
          {
            v8 = v2;
            goto LABEL_16;
          }
        }

        v8 = 0;
        v2 = 0;
        ++v4;
      }

      while (v5 >= 0x100);
LABEL_16:
      result = specialized UTF32EndianAdaptor.Iterator.next()();
      v2 = v8;
    }

    while ((result & 0x100000000) == 0);
  }

  v13 = static String._tryFromUTF8(_:)();
  v15 = v14;

  if (v15)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

void specialized String.init<A, B>(_validating:as:)(uint64_t a1, unint64_t a2, char a3)
{
  v224 = *MEMORY[0x1E69E9840];
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0, MEMORY[0x1E69E7CC0]);
  v7 = a2;
  v8 = v6;
  HIBYTE(v223) = 0;
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v10 = 0;
    if (v9 == 2)
    {
      v10 = *(a1 + 16);
    }
  }

  else if (v9)
  {
    v10 = a1;
  }

  else
  {
    v10 = 0;
  }

  Data.Iterator.init(_:at:)(a1, v7, v10, &v219);
  LOBYTE(v223) = a3;
  v217[2] = v221;
  v217[3] = v222;
  v217[0] = v219;
  v217[1] = v220;
  v218 = v223;
  v214 = v221;
  v215 = v222;
  v216 = v223;
  v212 = v219;
  v213 = v220;
  v200 = 0;
  v201 = 0;
  outlined init with copy of FloatingPointRoundingRule?(v217, &__dst, &_s10Foundation18UTF16EndianAdaptorV8IteratorVyAA4DataV_GMd);
  v11 = 0;
  for (i = 1; ; i = v181)
  {
    v199 = i;
    if (!v11)
    {
      break;
    }

    v14 = v200;
    if ((v200 & 0xF800) == 0xD800)
    {
      goto LABEL_12;
    }

    lazy protocol witness table accessor for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser();
    v182 = WeekendRange.onsetTime.modify();
    v184 = *(v183 + 4);
    if (!v184)
    {
      goto LABEL_352;
    }

    *v183 = *(v183 + 2);
    *(v183 + 4) = v184 - 16;
    v182(&__dst, 0);
    v14 = v200;
LABEL_260:
    v170 = 1;
LABEL_275:
    if (v14 >= 0x80u)
    {
      v185 = (v14 & 0x3F) << 8;
      if (v14 < 0x800u)
      {
        v176 = v185 + (v14 >> 6) + 33217;
        goto LABEL_277;
      }

      if ((v14 & 0xF800) != 0xD800)
      {
        v186 = ((v185 | (v14 >> 6) & 0x3F) << 8) | (v14 >> 12);
        goto LABEL_295;
      }

      if ((v170 & 1) == 0)
      {
        v188 = ((v14 & 0x3FF) << 10) | HIWORD(v14) & 0x3FF;
        v186 = ((v188 + 0x10000) >> 4) & 0x3F00 | ((v188 + 0x10000) >> 18) | (((v188 >> 6) & 0x3F | (((v188 + 0x10000) & 0x3F) << 8)) << 16);
        v187 = -2122219023;
        goto LABEL_296;
      }

      if (v14 > 0x7Fu)
      {
        v189 = (v14 & 0x3F) << 8;
        if (v14 >= 0x800u)
        {
          v186 = (v14 >> 12) | ((v189 | (v14 >> 6) & 0x3F) << 8);
LABEL_295:
          v187 = 8487393;
        }

        else
        {
          v186 = (v14 >> 6) + v189;
          v187 = 33217;
        }

LABEL_296:
        v176 = v186 + v187;
        i = v199;
        goto LABEL_277;
      }

      v176 = v14 + 1;
      i = v199;
    }

    else
    {
      v176 = (v14 + 1);
      if (v14 == 0xFF)
      {
LABEL_286:
        v181 = i;
        goto LABEL_287;
      }
    }

LABEL_277:
    v177 = *(v8 + 2);
    do
    {
      v178 = v176;
      while (1)
      {
        v179 = *(v8 + 3);
        if (v177 >= v179 >> 1)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v179 > 1), v177 + 1, 1, v8);
        }

        v176 = v178 >> 8;
        *(v8 + 2) = v177 + 1;
        v8[v177 + 32] = v178 - 1;
        if ((i & ((v178 - 1) < 0)) == 1)
        {
          break;
        }

        ++v177;
        v180 = v178 >= 0x100;
        v178 >>= 8;
        if (!v180)
        {
          goto LABEL_286;
        }
      }

      v181 = 0;
      i = 0;
      ++v177;
    }

    while (v178 >= 0x100);
LABEL_287:
    v11 = v201;
  }

  v13 = specialized UTF16EndianAdaptor.Iterator.next()();
  if ((v13 & 0x10000) != 0)
  {
LABEL_304:
    v204 = v221;
    v205 = v222;
    v206 = v223;
    v202 = v219;
    v203 = v220;
    outlined destroy of TermOfAddress?(&v202, &_s10Foundation18UTF16EndianAdaptorV8IteratorVyAA4DataV_GMd);
    v209 = v214;
    v210 = v215;
    v211 = v216;
    __dst = v212;
    v208 = v213;
    outlined destroy of TermOfAddress?(&__dst, &_s10Foundation18UTF16EndianAdaptorV8IteratorVyAA4DataV_GMd);
    static String._tryFromUTF8(_:)();

    return;
  }

  if ((v13 & 0xF800) != 0xD800)
  {
    v14 = v13;
    goto LABEL_260;
  }

  v14 = v13 & 0xDFFF | (HIWORD(v200) << 16);
  v11 = 16;
LABEL_12:
  v15 = HIBYTE(v216);
  v16 = *(&v215 + 1);
  v17 = v215;
  v18 = v216;
  v197 = HIBYTE(v216);
  v198 = *(&v215 + 1);
  while (2)
  {
    if (v15)
    {
      v20 = v17;
      i = v199;
      if (v20 >= v16)
      {
        goto LABEL_261;
      }

      goto LABEL_17;
    }

    if (v17 >= v16)
    {
      goto LABEL_262;
    }

    v26 = v17 + 1;
    *&v215 = v17 + 1;
    v27 = *(&v212 + 1);
    v28 = v212;
    v29 = *(&v212 + 1) >> 62;
    if ((*(&v212 + 1) >> 62) > 1)
    {
      v30 = 0;
      if (v29 == 2)
      {
        v30 = *(v212 + 16);
      }
    }

    else
    {
      v30 = v212;
      if (!v29)
      {
        v30 = 0;
      }
    }

    v31 = __OFSUB__(v17, v30);
    v44 = v17 - v30;
    if (v31)
    {
      goto LABEL_307;
    }

    v33 = -v44 < 0;
    v45 = -v44 & 0x1F;
    v46 = v44 & 0x1F;
    if (v33)
    {
      v47 = v46;
    }

    else
    {
      v47 = -v45;
    }

    if (v47)
    {
      goto LABEL_147;
    }

    __dst = v213;
    v208 = v214;
    if (__OFSUB__(v16, v17))
    {
      goto LABEL_314;
    }

    v48 = v16;
    if (v16 - v17 >= 33)
    {
      v48 = v17 + 32;
      if (__OFADD__(v17, 32))
      {
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_320:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_321:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_322:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_323:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_324:
        HIBYTE(v216) = v197;
        __break(1u);
LABEL_325:
        HIBYTE(v216) = v197;
        __break(1u);
LABEL_326:
        HIBYTE(v216) = v197;
        __break(1u);
LABEL_327:
        HIBYTE(v216) = v197;
        __break(1u);
LABEL_328:
        HIBYTE(v216) = v197;
        __break(1u);
LABEL_329:
        HIBYTE(v216) = v197;
        __break(1u);
LABEL_330:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_331:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_332:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_333:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_334:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_335:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_336:
        HIBYTE(v216) = v197;
        __break(1u);
LABEL_337:
        HIBYTE(v216) = v197;
        __break(1u);
LABEL_338:
        HIBYTE(v216) = v197;
        __break(1u);
LABEL_339:
        HIBYTE(v216) = v197;
        __break(1u);
LABEL_340:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_341:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_342:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_343:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_344:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_345:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_346:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_347:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_348:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_349:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_350:
        HIBYTE(v216) = v197;
        __break(1u);
LABEL_351:
        HIBYTE(v216) = v197;
        __break(1u);
LABEL_352:
        __break(1u);
      }
    }

    if (v48 < v17)
    {
      goto LABEL_315;
    }

    if (v29 > 1)
    {
      if (v29 != 2)
      {
        if (v48 | v17)
        {
          goto LABEL_331;
        }

        goto LABEL_146;
      }

      v58 = *(v212 + 16);
      v59 = *(v212 + 24);
      v60 = *((*(&v212 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (v60)
      {
        v61 = *((*(&v212 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v31 = __OFSUB__(v58, v61);
        v62 = v58 - v61;
        if (v31)
        {
          goto LABEL_340;
        }

        v63 = v62 + v60;
        v31 = __OFSUB__(v59, v58);
        v64 = v59 - v58;
        if (v31)
        {
          goto LABEL_333;
        }
      }

      else
      {
        v63 = 0;
        v31 = __OFSUB__(v59, v58);
        v64 = v59 - v58;
        if (v31)
        {
          goto LABEL_333;
        }
      }

      v197 = v17 + 1;
      v111 = v18;
      v112 = v14;
      v113 = *((*(&v212 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (v113 >= v64)
      {
        v113 = v64;
      }

      v114 = v113 + v63;
      if (v63)
      {
        v115 = v114;
      }

      else
      {
        v115 = 0;
      }

      v116 = *(&v212 + 1);
      v83 = v212;
      specialized closure #1 in DataProtocol<>.copyBytes<A, B>(to:from:)(v63, v115, v212, *(&v212 + 1), v17, v48, &__dst);
      v16 = v198;
      v14 = v112;
      v18 = v111;
      v27 = v116;
      v26 = v17 + 1;
LABEL_145:
      v28 = v83;
      goto LABEL_146;
    }

    if (v29)
    {
      v75 = (v212 >> 32) - v212;
      if (v212 >> 32 < v212)
      {
        goto LABEL_330;
      }

      v76 = *((*(&v212 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v195 = v18;
      if (!v76)
      {
        goto LABEL_87;
      }

      v77 = *((*(&v212 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v78 = v212 - v77;
      if (__OFSUB__(v212, v77))
      {
        goto LABEL_341;
      }

      if (*((*(&v212 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v75)
      {
        v75 = *((*(&v212 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      }

      v79 = v78 + v76;
      if (v78 + v76)
      {
        v80 = v14;
        v81 = v75 + v79;
      }

      else
      {
LABEL_87:
        v80 = v14;
        v79 = 0;
        v81 = 0;
      }

      v82 = *(&v212 + 1);
      v83 = v212;
      specialized closure #1 in DataProtocol<>.copyBytes<A, B>(to:from:)(v79, v81, v212, *(&v212 + 1), v17, v48, &__dst);
      v16 = v198;
      v14 = v80;
      v18 = v195;
      v27 = v82;
      goto LABEL_145;
    }

    LODWORD(v202) = v212;
    WORD2(v202) = WORD2(v212);
    *(&v202 + 6) = *(&v212 + 6);
    if (v17 > BYTE14(v212) || v48 > BYTE14(v212))
    {
      goto LABEL_332;
    }

    v49 = v14;
    v50 = v11;
    v51 = v18;
    v52 = *(&v212 + 1);
    v53 = v212;
    memcpy(&__dst, &v202 + v17, v48 - v17);
    v28 = v53;
    v27 = v52;
    v26 = v17 + 1;
    v18 = v51;
    v11 = v50;
    v14 = v49;
    v16 = v198;
LABEL_146:
    v213 = __dst;
    v214 = v208;
LABEL_147:
    v117 = *(&v213 + v47);
    if (v117 > 0xFD)
    {
      if (v26 >= v16)
      {
        goto LABEL_262;
      }

      v20 = v17 + 2;
      *&v215 = v17 + 2;
      if (v29 > 1)
      {
        v118 = 0;
        if (v29 == 2)
        {
          v118 = *(v28 + 16);
        }
      }

      else
      {
        v118 = v28;
        if (!v29)
        {
          v118 = 0;
        }
      }

      v31 = __OFSUB__(v26, v118);
      v120 = v26 - v118;
      if (v31)
      {
        goto LABEL_308;
      }

      v33 = -v120 < 0;
      v121 = -v120 & 0x1F;
      v122 = v120 & 0x1F;
      if (v33)
      {
        v123 = v122;
      }

      else
      {
        v123 = -v121;
      }

      if (v123)
      {
        i = v199;
      }

      else
      {
        __dst = v213;
        v208 = v214;
        if (__OFSUB__(v16, v26))
        {
          goto LABEL_321;
        }

        v133 = v16;
        if (v16 - v26 >= 33)
        {
          v133 = v17 + 33;
          if (__OFADD__(v17, 33))
          {
            goto LABEL_334;
          }
        }

        if (v133 <= v17)
        {
          goto LABEL_323;
        }

        if (v29 > 1)
        {
          i = v199;
          if (v29 == 2)
          {
            v144 = *(v28 + 16);
            v145 = *(v28 + 24);
            v146 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            if (v146)
            {
              v147 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
              v31 = __OFSUB__(v144, v147);
              v148 = v144 - v147;
              if (v31)
              {
                goto LABEL_346;
              }

              v149 = (v148 + v146);
              v31 = __OFSUB__(v145, v144);
              v150 = v145 - v144;
              if (v31)
              {
                goto LABEL_344;
              }
            }

            else
            {
              v149 = 0;
              v31 = __OFSUB__(v145, v144);
              v150 = v145 - v144;
              if (v31)
              {
                goto LABEL_344;
              }
            }

            v162 = v18;
            v163 = v14;
            v167 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            if (v167 >= v150)
            {
              v167 = v150;
            }

            v168 = (v149 + v167);
            if (v149)
            {
              v164 = v168;
            }

            else
            {
              v164 = 0;
            }
          }

          else
          {
            v162 = v18;
            v163 = v14;
            *(&v202 + 6) = 0;
            *&v202 = 0;
            v149 = &v202;
            v164 = &v202;
          }

          specialized closure #1 in DataProtocol<>.copyBytes<A, B>(to:from:)(v149, v164, v28, v27, v26, v133, &__dst);
          v14 = v163;
          v18 = v162;
        }

        else
        {
          i = v199;
          v196 = v18;
          if (v29)
          {
            v155 = (v28 >> 32) - v28;
            if (v28 >> 32 < v28)
            {
              goto LABEL_343;
            }

            v156 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            if (!v156)
            {
              goto LABEL_217;
            }

            v157 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
            v158 = v28 - v157;
            if (__OFSUB__(v28, v157))
            {
              goto LABEL_349;
            }

            if (*((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v155)
            {
              v155 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            }

            v136 = (v158 + v156);
            if (v158 + v156)
            {
              v134 = v14;
              v135 = v136 + v155;
            }

            else
            {
LABEL_217:
              v134 = v14;
              v136 = 0;
              v135 = 0;
            }
          }

          else
          {
            v134 = v14;
            *&v202 = v28;
            WORD4(v202) = v27;
            BYTE10(v202) = BYTE2(v27);
            BYTE11(v202) = BYTE3(v27);
            BYTE12(v202) = BYTE4(v27);
            BYTE13(v202) = BYTE5(v27);
            v135 = &v202 + BYTE6(v27);
            v136 = &v202;
          }

          specialized closure #1 in DataProtocol<>.copyBytes<A, B>(to:from:)(v136, v135, v28, v27, v26, v133, &__dst);
          v14 = v134;
          v18 = v196;
        }

        v213 = __dst;
        v214 = v208;
        v16 = v198;
      }

      v169 = *(&v213 + v123);
      if (v117 == 255 && v169 == 254)
      {
        if (v18 == 2)
        {
          v18 = 0;
          goto LABEL_247;
        }

        if (v18)
        {
          LOWORD(v19) = -2;
        }

        else
        {
          LOWORD(v19) = -257;
        }

LABEL_258:
        v197 = 1;
        v88 = v20;
LABEL_14:
        v14 = (v19 << v11) | ((-65535 << v11) - 1) & v14;
        v11 += 16;
        v15 = 1;
        v17 = v88;
        if (v11 >= 0x20u)
        {
          HIBYTE(v216) = v197;
          i = v199;
          goto LABEL_266;
        }

        continue;
      }

      if (v117 != 254 || v169 != 255)
      {
        v19 = v117 | (v169 << 8);
        if (v18 == 2 || (v18 & 1) != 0)
        {
          LOWORD(v19) = __rev16(v19);
        }

        goto LABEL_258;
      }

      if (v18 != 2)
      {
        if (v18)
        {
          LOWORD(v19) = -257;
        }

        else
        {
          LOWORD(v19) = -2;
        }

        goto LABEL_258;
      }

      v18 = 1;
LABEL_247:
      LOBYTE(v216) = v18;
      v197 = 1;
      if (v20 >= v16)
      {
LABEL_261:
        v171 = v197;
        goto LABEL_263;
      }

LABEL_17:
      v21 = v20 + 1;
      *&v215 = v20 + 1;
      v22 = *(&v212 + 1);
      v23 = v212;
      v24 = *(&v212 + 1) >> 62;
      if ((*(&v212 + 1) >> 62) > 1)
      {
        v25 = 0;
        if (v24 == 2)
        {
          v25 = *(v212 + 16);
        }
      }

      else
      {
        v25 = v212;
        if (!v24)
        {
          v25 = 0;
        }
      }

      v31 = __OFSUB__(v20, v25);
      v32 = v20 - v25;
      if (v31)
      {
        HIBYTE(v216) = v197;
        __break(1u);
LABEL_306:
        HIBYTE(v216) = v197;
        __break(1u);
LABEL_307:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_308:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_309:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_310:
        HIBYTE(v216) = v197;
        __break(1u);
LABEL_311:
        HIBYTE(v216) = v197;
        __break(1u);
LABEL_312:
        HIBYTE(v216) = v197;
        __break(1u);
LABEL_313:
        HIBYTE(v216) = v197;
        __break(1u);
LABEL_314:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_315:
        HIBYTE(v216) = 1;
        __break(1u);
LABEL_316:
        HIBYTE(v216) = v197;
        __break(1u);
LABEL_317:
        HIBYTE(v216) = v197;
        __break(1u);
        goto LABEL_318;
      }

      v33 = -v32 < 0;
      v34 = -v32 & 0x1F;
      v35 = v32 & 0x1F;
      if (v33)
      {
        v36 = v35;
      }

      else
      {
        v36 = -v34;
      }

      if (v36)
      {
        goto LABEL_94;
      }

      __dst = v213;
      v208 = v214;
      if (__OFSUB__(v16, v20))
      {
        goto LABEL_310;
      }

      v37 = v16;
      if (v16 - v20 >= 33)
      {
        v37 = v20 + 32;
        if (__OFADD__(v20, 32))
        {
          goto LABEL_316;
        }
      }

      v38 = v37 - v20;
      if (v37 < v20)
      {
        goto LABEL_311;
      }

      if (v24 > 1)
      {
        if (v24 != 2)
        {
          v74 = v37 | v20;
          i = v199;
          if (v74)
          {
            goto LABEL_325;
          }

          goto LABEL_93;
        }

        v54 = *((*(&v212 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v55 = *(v212 + 16);
        v192 = v14;
        v194 = v18;
        v193 = v20 + 1;
        if (v54)
        {
          v56 = *((*(&v212 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v31 = __OFSUB__(v55, v56);
          v57 = v55 - v56;
          if (v31)
          {
            goto LABEL_336;
          }

          v190 = v57 + v54;
        }

        else
        {
          v190 = 0;
        }

        v84 = *(&v212 + 1);
        v85 = specialized RandomAccessCollection<>.distance(from:to:)(v55, v20, v212, *(&v212 + 1));
        v86 = specialized RandomAccessCollection<>.distance(from:to:)(v20, v37, v23, v84);
        if (!v190)
        {
          goto LABEL_350;
        }

        memcpy(&__dst, (v190 + v85), v86);
        i = v199;
        v14 = v192;
        v18 = v194;
        v22 = v84;
      }

      else
      {
        if (!v24)
        {
          LODWORD(v202) = v212;
          WORD2(v202) = WORD2(v212);
          *(&v202 + 6) = *(&v212 + 6);
          if (v20 > BYTE14(v212) || v37 > BYTE14(v212))
          {
            goto LABEL_324;
          }

          v39 = v14;
          v40 = v11;
          v41 = v18;
          v42 = v8;
          v43 = *(&v212 + 1);
          memcpy(&__dst, &v202 + v20, v38);
          v21 = v20 + 1;
          v22 = v43;
          v8 = v42;
          v18 = v41;
          v11 = v40;
          v14 = v39;
          v16 = v198;
          i = v199;
LABEL_93:
          v213 = __dst;
          v214 = v208;
LABEL_94:
          if (v21 >= v16)
          {
            goto LABEL_261;
          }

          v87 = *(&v213 + v36);
          v88 = v20 + 2;
          *&v215 = v20 + 2;
          if (v24 > 1)
          {
            v89 = 0;
            if (v24 == 2)
            {
              v89 = *(v23 + 16);
            }
          }

          else
          {
            v89 = v23;
            if (!v24)
            {
              v89 = 0;
            }
          }

          v31 = __OFSUB__(v21, v89);
          v90 = v21 - v89;
          if (v31)
          {
            goto LABEL_306;
          }

          v33 = -v90 < 0;
          v91 = -v90 & 0x1F;
          v92 = v90 & 0x1F;
          if (v33)
          {
            v93 = v92;
          }

          else
          {
            v93 = -v91;
          }

          if (!v93)
          {
            __dst = v213;
            v208 = v214;
            if (__OFSUB__(v16, v21))
            {
              goto LABEL_312;
            }

            v94 = v16;
            if (v16 - v21 >= 33)
            {
              v94 = v20 + 33;
              if (__OFADD__(v20, 33))
              {
                goto LABEL_317;
              }
            }

            if (v94 <= v20)
            {
              goto LABEL_313;
            }

            if (v24 > 1)
            {
              if (v24 == 2)
              {
                v99 = *(v23 + 16);
                v100 = *(v23 + 24);
                v101 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                if (v101)
                {
                  v102 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
                  v31 = __OFSUB__(v99, v102);
                  v103 = v99 - v102;
                  if (v31)
                  {
                    goto LABEL_338;
                  }

                  v98 = (v103 + v101);
                  v31 = __OFSUB__(v100, v99);
                  v104 = v100 - v99;
                  if (v31)
                  {
                    goto LABEL_329;
                  }
                }

                else
                {
                  v98 = 0;
                  v31 = __OFSUB__(v100, v99);
                  v104 = v100 - v99;
                  if (v31)
                  {
                    goto LABEL_329;
                  }
                }

                v95 = v18;
                v96 = v14;
                v109 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                if (v109 >= v104)
                {
                  v109 = v104;
                }

                v110 = v98 + v109;
                if (v98)
                {
                  v97 = v110;
                }

                else
                {
                  v97 = 0;
                }
              }

              else
              {
                v95 = v18;
                v96 = v14;
                *(&v202 + 6) = 0;
                *&v202 = 0;
                v98 = &v202;
                v97 = &v202;
              }
            }

            else if (v24)
            {
              v105 = (v23 >> 32) - v23;
              if (v23 >> 32 < v23)
              {
                goto LABEL_328;
              }

              v106 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              if (!v106)
              {
                goto LABEL_127;
              }

              v107 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
              v108 = v23 - v107;
              if (__OFSUB__(v23, v107))
              {
                goto LABEL_339;
              }

              if (*((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v105)
              {
                v105 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              }

              v98 = (v108 + v106);
              if (v108 + v106)
              {
                v95 = v18;
                v96 = v14;
                v97 = v98 + v105;
              }

              else
              {
LABEL_127:
                v95 = v18;
                v96 = v14;
                v98 = 0;
                v97 = 0;
              }
            }

            else
            {
              v95 = v18;
              v96 = v14;
              *&v202 = v23;
              WORD4(v202) = v22;
              BYTE10(v202) = BYTE2(v22);
              BYTE11(v202) = BYTE3(v22);
              BYTE12(v202) = BYTE4(v22);
              BYTE13(v202) = BYTE5(v22);
              v97 = &v202 + BYTE6(v22);
              v98 = &v202;
            }

            specialized closure #1 in DataProtocol<>.copyBytes<A, B>(to:from:)(v98, v97, v23, v22, v21, v94, &__dst);
            v16 = v198;
            v14 = v96;
            v18 = v95;
            v213 = __dst;
            v214 = v208;
          }

          v19 = v87 | (*(&v213 + v93) << 8);
          if (v18 == 2 || (v18 & 1) != 0)
          {
            v19 = bswap32(v19) >> 16;
          }

          goto LABEL_14;
        }

        if (v212 >> 32 < v212)
        {
          goto LABEL_326;
        }

        v65 = *((*(&v212 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        if (v65)
        {
          v66 = *((*(&v212 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v31 = __OFSUB__(v212, v66);
          v67 = v212 - v66;
          if (v31)
          {
            goto LABEL_337;
          }

          v65 += v67;
        }

        if (v212 >> 32 < v20 || v20 < v212)
        {
          goto LABEL_327;
        }

        v193 = v20 + 1;
        v191 = v11;
        v68 = v18;
        v69 = v14;
        v70 = v37;
        v71 = *(&v212 + 1);
        v72 = v65;
        v73 = specialized RandomAccessCollection<>.distance(from:to:)(v20, v70, v212, *(&v212 + 1));
        if (!v72)
        {
          goto LABEL_351;
        }

        memcpy(&__dst, (v72 + v20 - v23), v73);
        i = v199;
        v14 = v69;
        v16 = v198;
        v18 = v68;
        v11 = v191;
        v22 = v71;
      }

      v21 = v193;
      goto LABEL_93;
    }

    break;
  }

  if (v26 < v16)
  {
    v88 = v17 + 2;
    *&v215 = v17 + 2;
    if (v29 > 1)
    {
      v119 = 0;
      if (v29 == 2)
      {
        v119 = *(v28 + 16);
      }
    }

    else
    {
      v119 = v28;
      if (!v29)
      {
        v119 = 0;
      }
    }

    v31 = __OFSUB__(v26, v119);
    v124 = v26 - v119;
    if (v31)
    {
      goto LABEL_309;
    }

    v33 = -v124 < 0;
    v125 = -v124 & 0x1F;
    v126 = v124 & 0x1F;
    if (v33)
    {
      v127 = v126;
    }

    else
    {
      v127 = -v125;
    }

    if (!v127)
    {
      __dst = v213;
      v208 = v214;
      if (__OFSUB__(v16, v26))
      {
        goto LABEL_320;
      }

      v128 = v16;
      if (v16 - v26 >= 33)
      {
        v128 = v17 + 33;
        if (__OFADD__(v17, 33))
        {
          goto LABEL_335;
        }
      }

      if (v128 <= v17)
      {
        goto LABEL_322;
      }

      if (v29 > 1)
      {
        if (v29 == 2)
        {
          v137 = *(v28 + 16);
          v138 = *(v28 + 24);
          v139 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          if (v139)
          {
            v140 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
            v31 = __OFSUB__(v137, v140);
            v141 = v137 - v140;
            if (v31)
            {
              goto LABEL_347;
            }

            v142 = (v141 + v139);
            v31 = __OFSUB__(v138, v137);
            v143 = v138 - v137;
            if (v31)
            {
              goto LABEL_345;
            }
          }

          else
          {
            v142 = 0;
            v31 = __OFSUB__(v138, v137);
            v143 = v138 - v137;
            if (v31)
            {
              goto LABEL_345;
            }
          }

          v159 = v18;
          v160 = v14;
          v165 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          if (v165 >= v143)
          {
            v165 = v143;
          }

          v166 = (v142 + v165);
          if (v142)
          {
            v161 = v166;
          }

          else
          {
            v161 = 0;
          }
        }

        else
        {
          v159 = v18;
          v160 = v14;
          *(&v202 + 6) = 0;
          *&v202 = 0;
          v142 = &v202;
          v161 = &v202;
        }

        specialized closure #1 in DataProtocol<>.copyBytes<A, B>(to:from:)(v142, v161, v28, v27, v26, v128, &__dst);
        v14 = v160;
        v18 = v159;
      }

      else
      {
        if (v29)
        {
          v151 = (v28 >> 32) - v28;
          if (v28 >> 32 < v28)
          {
            goto LABEL_342;
          }

          v152 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          if (!v152)
          {
            goto LABEL_215;
          }

          v153 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v154 = v28 - v153;
          if (__OFSUB__(v28, v153))
          {
            goto LABEL_348;
          }

          if (*((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v151)
          {
            v151 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          }

          v132 = (v154 + v152);
          if (v154 + v152)
          {
            v129 = v18;
            v130 = v14;
            v131 = v132 + v151;
          }

          else
          {
LABEL_215:
            v129 = v18;
            v130 = v14;
            v132 = 0;
            v131 = 0;
          }
        }

        else
        {
          v129 = v18;
          v130 = v14;
          *&v202 = v28;
          WORD4(v202) = v27;
          BYTE10(v202) = BYTE2(v27);
          BYTE11(v202) = BYTE3(v27);
          BYTE12(v202) = BYTE4(v27);
          BYTE13(v202) = BYTE5(v27);
          v131 = &v202 + BYTE6(v27);
          v132 = &v202;
        }

        specialized closure #1 in DataProtocol<>.copyBytes<A, B>(to:from:)(v132, v131, v28, v27, v26, v128, &__dst);
        v14 = v130;
        v18 = v129;
      }

      v213 = __dst;
      v214 = v208;
      v16 = v198;
    }

    v19 = v117 | (*(&v213 + v127) << 8);
    if (v18 == 2 || (v18 & 1) != 0)
    {
      v19 = bswap32(v19) >> 16;
    }

    v197 = 1;
    goto LABEL_14;
  }

LABEL_262:
  v171 = 1;
  i = v199;
LABEL_263:
  HIBYTE(v216) = v171;
  if (!v11)
  {
    goto LABEL_304;
  }

LABEL_266:
  v172 = v14 & 0xFC00FC00;
  if ((v14 & 0xFC00FC00) == 0xDC00D800)
  {
    v173 = 32;
  }

  else
  {
    v173 = 16;
  }

  v201 = v11 - v173;
  v174 = v172 == -603924480;
  if (v172 == -603924480)
  {
    v175 = 32;
  }

  else
  {
    v175 = 16;
  }

  v200 = v14 >> v175;
  if (v174)
  {
    v170 = 0;
    goto LABEL_275;
  }

LABEL_318:
  v204 = v221;
  v205 = v222;
  v206 = v223;
  v202 = v219;
  v203 = v220;
  outlined destroy of TermOfAddress?(&v202, &_s10Foundation18UTF16EndianAdaptorV8IteratorVyAA4DataV_GMd);
  v209 = v214;
  v210 = v215;
  v211 = v216;
  __dst = v212;
  v208 = v213;
  outlined destroy of TermOfAddress?(&__dst, &_s10Foundation18UTF16EndianAdaptorV8IteratorVyAA4DataV_GMd);
}