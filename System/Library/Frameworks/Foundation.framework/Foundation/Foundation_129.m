uint64_t implicit closure #6 in String.LocalizationValue.resolve<A>(key:options:table:bundle:locale:scope:performLocalization:)(char a1, id a2)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  v2 = [a2 preferredLocalizations];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for __SwiftDeferredNSArray();
    if (swift_dynamicCastClass())
    {
    }

    else
    {
      v6 = v3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v5 = v7;

      if (*(v5 + 2))
      {
        goto LABEL_11;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      [v3 copy];
      v9 = _bridgeCocoaArray<A>(_:)();
      swift_unknownObjectRelease();
      v5 = specialized _arrayForceCast<A, B>(_:)(v9);

      if (*(v5 + 2))
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_11:
      v8 = *(v5 + 4);

      return v8;
    }
  }

  return 0;
}

unint64_t closure #1 in String.LocalizationValue.restoreAttributedStringArguments(_:in:)(uint64_t *a1, unint64_t a2, uint64_t a3, char a4)
{
  v6 = &v177;
  v7 = *a3;
  v146 = a1[1];
  v147 = *(a3 + 8);
  v148 = *(a3 + 16);
  v149 = *(a3 + 40);
  v8 = *(a3 + 64);
  v150 = *(a3 + 56);
  v151 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a2;
  v145 = a2;
  if (a4)
  {
    v45 = &unk_1EA7B2000;
    v35 = &static AttributedString.Guts._nextVersion;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v46 = *(v10 + 40);
      v194 = *(v10 + 24);
      v195 = v46;
      v196 = *(v10 + 56);
      v12 = *(v10 + 72);
      v13 = *(v10 + 80);
      v14 = *(v10 + 88);
      v15 = *(v10 + 96);
      type metadata accessor for AttributedString.Guts();
      v10 = swift_allocObject();
      v47 = BigString.isEmpty.getter() & 1;
      outlined init with copy of BigString(&v194, v178);
      v48 = swift_unknownObjectRetain();
      specialized Rope._endPath.getter(v48);
      if (v12)
      {
        v49 = v14 == 0;
      }

      else
      {
        v49 = 1;
      }

      v50 = v49;
      if (v50 != v47)
      {
        goto LABEL_96;
      }

      if (one-time initialization token for _nextVersion != -1)
      {
        swift_once();
      }

      v35 = &static AttributedString.Guts._nextVersion;
      add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
      v52 = v195;
      *(v10 + 24) = v194;
      *(v10 + 16) = add_explicit;
      *(v10 + 40) = v52;
      *(v10 + 56) = v196;
      *(v10 + 72) = v12;
      *(v10 + 80) = v13;
      *(v10 + 88) = v14;
      *(v10 + 96) = v15;
      *(v10 + 104) = MEMORY[0x1E69E7CC0];

      *a2 = v10;
      v45 = &unk_1EA7B2000;
    }

    if (v45[147] == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_91;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_12;
  }

  v144 = v8;
  v11 = *(v10 + 40);
  v187 = *(v10 + 24);
  v188 = v11;
  v189 = *(v10 + 56);
  v12 = *(v10 + 72);
  v13 = *(v10 + 80);
  v14 = *(v10 + 88);
  v15 = *(v10 + 96);
  type metadata accessor for AttributedString.Guts();
  v10 = swift_allocObject();
  v16 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v187, v178);
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
    goto LABEL_95;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_97;
  }

  while (1)
  {
    v20 = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v21 = *(v6 + 14);
    *(v10 + 24) = *(v6 + 13);
    *(v10 + 16) = v20;
    *(v10 + 40) = v21;
    *(v10 + 56) = *(v6 + 15);
    *(v10 + 72) = v12;
    *(v10 + 80) = v13;
    *(v10 + 88) = v14;
    *(v10 + 96) = v15;
    *(v10 + 104) = MEMORY[0x1E69E7CC0];

    *a2 = v10;
    v8 = v144;
LABEL_12:
    if (one-time initialization token for _nextVersion != -1)
    {
LABEL_89:
      swift_once();
    }

    *(v10 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v22 = *(v10 + 40);
    *(v6 + 29) = *(v10 + 24);
    *(v6 + 30) = v22;
    *(v6 + 31) = *(v10 + 56);
    v23 = BigString.startIndex.getter();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = BigString.endIndex.getter();
    v167 = v10;
    v168 = v23;
    v169 = v25;
    v170 = v27;
    v171 = v29;
    v172 = v30;
    v173 = v31;
    v174 = v32;
    v175 = v33;
    v176 = 0;

    outlined destroy of AttributedString.CharacterView(&v167);
    v152[0] = v7;
    v152[1] = v147;
    v153 = v148;
    v154 = v149;
    v155 = v150;
    v156 = v8;
    v34 = *(v10 + 40);
    *(v6 + 26) = *(v10 + 24);
    *(v6 + 27) = v34;
    *(v6 + 28) = *(v10 + 56);
    swift_unknownObjectRetain();

    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(v178);
    *(&v149 + 1) = v180;
    v150 = v179;
    v14 = v181;
    v35 = v182;
    v36 = v183;
    v15 = v184;
    v7 = v185;
    v37 = v186;
    if (one-time initialization token for currentIdentity != -1)
    {
      swift_once();
    }

    v8 = static AttributedString.currentIdentity;
    os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
    v38 = *(v8 + 16);
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (!v39)
    {
      break;
    }

    __break(1u);
LABEL_91:
    swift_once();
LABEL_31:
    *(v10 + 16) = atomic_fetch_add_explicit(v35, 1uLL, memory_order_relaxed);
    v53 = *(v10 + 40);
    *(v6 + 26) = *(v10 + 24);
    *(v6 + 27) = v53;
    *(v6 + 28) = *(v10 + 56);
    v54 = BigString.startIndex.getter();
    v13 = v55;
    v57 = v56;
    v59 = v58;
    v60 = BigString.endIndex.getter();
    v167 = v10;
    v168 = v54;
    v169 = v13;
    v170 = v57;
    v171 = v59;
    v172 = v60;
    v173 = v61;
    v174 = v62;
    v175 = v63;
    v176 = 0;

    outlined destroy of AttributedString.CharacterView(&v167);
    *&v187 = v7;
    *(&v187 + 1) = v147;
    v188 = v148;
    v189 = v149;
    v190 = v150;
    v191 = v8;
    v64 = *(v10 + 24);
    v65 = *(v10 + 40);
    *(v6 + 23) = v64;
    *(v6 + 24) = v65;
    v12 = v64;
    *(v6 + 25) = *(v10 + 56);
    swift_unknownObjectRetain();

    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(v178);
    v14 = v179;
    v15 = v180;
    v7 = v181;
    *(&v149 + 1) = v183;
    v150 = v182;
    *(&v148 + 1) = v185;
    *&v149 = v184;
    *&v148 = v186;
    if (one-time initialization token for currentIdentity != -1)
    {
      swift_once();
    }

    v66 = static AttributedString.currentIdentity;
    os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
    v67 = *(v66 + 16);
    v39 = __OFADD__(v67, 1);
    v68 = v67 + 1;
    if (v39)
    {
      __break(1u);
      goto LABEL_93;
    }

    v141 = v68;
    *(v66 + 16) = v68;
    os_unfair_lock_unlock((v66 + 24));
    BigString.init()();
    v157 = 0;
    MEMORY[0x1865D26B0](&v157, 8);
    v69 = v157;
    v12 = type metadata accessor for AttributedString.Guts();
    v13 = swift_allocObject();
    if (BigString.isEmpty.getter())
    {
      v70 = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
      v71 = *(v6 + 1);
      *(v13 + 24) = *v6;
      *(v13 + 16) = v70;
      *(v13 + 40) = v71;
      *(v13 + 56) = *(v6 + 2);
      *(v13 + 72) = 0;
      *(v13 + 80) = 0;
      *(v13 + 88) = 0;
      *(v13 + 96) = v69;
      *(v13 + 104) = MEMORY[0x1E69E7CC0];

      *a2 = v13;
      v147 = v14;
      v143 = v7;
      v144 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = *(v10 + 40);
        *(v6 + 20) = *(v10 + 24);
        *(v6 + 21) = v72;
        *(v6 + 22) = *(v10 + 56);
        v73 = *(v10 + 72);
        v74 = *(v10 + 80);
        v75 = *(v10 + 88);
        v76 = *(v10 + 96);
        v77 = swift_allocObject();
        v78 = BigString.isEmpty.getter() & 1;
        outlined init with copy of BigString(v192, &v157);
        v79 = swift_unknownObjectRetain();
        result = specialized Rope._endPath.getter(v79);
        if (v73)
        {
          v81 = v75 == 0;
        }

        else
        {
          v81 = 1;
        }

        v82 = v81;
        if (v82 != v78)
        {
          __break(1u);
LABEL_99:
          __break(1u);
          return result;
        }

        *(v77 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v83 = *(v6 + 21);
        *(v77 + 24) = *(v6 + 20);
        *(v77 + 40) = v83;
        *(v77 + 56) = *(v6 + 22);
        *(v77 + 72) = v73;
        *(v77 + 80) = v74;
        *(v77 + 88) = v75;
        *(v77 + 96) = v76;
        *(v77 + 104) = MEMORY[0x1E69E7CC0];

        v10 = v77;
      }

      v84 = *(v10 + 40);
      *(v6 + 17) = *(v10 + 24);
      *(v6 + 18) = v84;
      *(v6 + 19) = *(v10 + 56);
      swift_unknownObjectRetain();
      v85 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();
      v86 = *(v10 + 40);
      *(v6 + 10) = *(v10 + 24);
      *(v6 + 11) = v86;
      *(v6 + 12) = *(v10 + 56);
      swift_unknownObjectRetain();
      v87 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();
      v88 = v85 >> 11;
      v89 = v87 >> 11;
      specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v88, v87 >> 11, (v87 >> 11) - v88, v151, v146);
      v6 = (v151 + 64);
      v90 = 1 << *(v151 + 32);
      v91 = -1;
      if (v90 < 64)
      {
        v91 = ~(-1 << v90);
      }

      a2 = v91 & *(v151 + 64);
      v7 = (v90 + 63) >> 6;

      v8 = 0;
      v92 = MEMORY[0x1E69E7CC0];
      if (!a2)
      {
        goto LABEL_49;
      }

      do
      {
LABEL_47:
        while (1)
        {
          v93 = __clz(__rbit64(a2));
          a2 &= a2 - 1;
          outlined init with copy of AttributedString._AttributeValue(*(v151 + 56) + 72 * (v93 | (v8 << 6)), v152);
          v94 = *(&v154 + 1);
          v95 = v155;
          outlined copy of AttributedString.AttributeRunBoundaries?(*(&v154 + 1), v155);
          outlined destroy of AttributedString._AttributeValue(v152);
          if (v95 != 1)
          {
            break;
          }

          if (!a2)
          {
            goto LABEL_49;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v92 + 2) + 1, 1, v92);
        }

        v98 = *(v92 + 2);
        v97 = *(v92 + 3);
        v99 = v98 + 1;
        if (v98 >= v97 >> 1)
        {
          v146 = v98 + 1;
          v101 = v92;
          v102 = *(v92 + 2);
          v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1, v101);
          v99 = v146;
          v98 = v102;
          v92 = v103;
        }

        *(v92 + 2) = v99;
        v100 = &v92[16 * v98];
        *(v100 + 4) = v94;
        *(v100 + 5) = v95;
      }

      while (a2);
LABEL_49:
      while (1)
      {
        v96 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v96 >= v7)
        {

          AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v88, v89, 0, v92);

          *v145 = v10;
          v157 = v10;
          v158 = v147;
          v159 = v144;
          v160 = v143;
          v161 = v150;
          v162 = *(&v149 + 1);
          v163 = v149;
          v164 = *(&v148 + 1);
          v165 = v148;
          goto LABEL_86;
        }

        a2 = *&v6[8 * v96];
        ++v8;
        if (a2)
        {
          v8 = v96;
          goto LABEL_47;
        }
      }

      __break(1u);
      goto LABEL_88;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    swift_once();
  }

  *&v148 = v37;
  *(&v148 + 1) = v36;
  *&v149 = v35;
  v141 = v40;
  *(v8 + 16) = v40;
  os_unfair_lock_unlock((v8 + 24));
  BigString.init()();
  v157 = 0;
  MEMORY[0x1865D26B0](&v157, 8);
  v41 = v157;
  v12 = type metadata accessor for AttributedString.Guts();
  v13 = swift_allocObject();
  if ((BigString.isEmpty.getter() & 1) == 0)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v144 = v7;
  v147 = v15;
  v42 = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v43 = *(v6 + 11);
  *(v13 + 24) = *(v6 + 10);
  *(v13 + 16) = v42;
  *(v13 + 40) = v43;
  *(v13 + 56) = *(v6 + 12);
  *(v13 + 72) = 0;
  *(v13 + 80) = 0;
  *(v13 + 88) = 0;
  *(v13 + 96) = v41;
  v44 = MEMORY[0x1E69E7CC0];
  *(v13 + 104) = MEMORY[0x1E69E7CC0];

  *a2 = v13;
  v142 = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v104 = *(v10 + 40);
    *(v6 + 23) = *(v10 + 24);
    *(v6 + 24) = v104;
    *(v6 + 25) = *(v10 + 56);
    v105 = *(v10 + 72);
    v106 = *(v10 + 80);
    v107 = *(v10 + 88);
    v108 = *(v10 + 96);
    v109 = swift_allocObject();
    v110 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(v193, &v157);
    v111 = swift_unknownObjectRetain();
    result = specialized Rope._endPath.getter(v111);
    if (v105)
    {
      v112 = v107 == 0;
    }

    else
    {
      v112 = 1;
    }

    v113 = v112;
    if (v113 != v110)
    {
      goto LABEL_99;
    }

    *(v109 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v114 = *(v6 + 24);
    *(v109 + 24) = *(v6 + 23);
    *(v109 + 40) = v114;
    *(v109 + 56) = *(v6 + 25);
    *(v109 + 72) = v105;
    *(v109 + 80) = v106;
    *(v109 + 88) = v107;
    *(v109 + 96) = v108;
    *(v109 + 104) = v44;

    v10 = v109;
  }

  v115 = *(v10 + 40);
  *(v6 + 20) = *(v10 + 24);
  *(v6 + 21) = v115;
  *(v6 + 22) = *(v10 + 56);
  swift_unknownObjectRetain();
  v116 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v117 = *(v10 + 40);
  *(v6 + 17) = *(v10 + 24);
  *(v6 + 18) = v117;
  *(v6 + 19) = *(v10 + 56);
  swift_unknownObjectRetain();
  v118 = *(&v148 + 1);
  v119 = v148;
  v120 = v147;
  v121 = v144;
  v122 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v123 = v116 >> 11;
  v124 = v122 >> 11;
  v125 = v149;

  specialized AttributedString._InternalRunsSlice.updateEach(with:)(v10, v116 >> 11, v124, v151, 0);
  v126 = v150;

  if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v151))
  {
    v6 = (v151 + 64);
    v127 = 1 << *(v151 + 32);
    v128 = -1;
    if (v127 < 64)
    {
      v128 = ~(-1 << v127);
    }

    a2 = v128 & *(v151 + 64);
    v7 = (v127 + 63) >> 6;

    v8 = 0;
    v129 = MEMORY[0x1E69E7CC0];
    if (!a2)
    {
      goto LABEL_74;
    }

    do
    {
LABEL_72:
      while (1)
      {
        v130 = __clz(__rbit64(a2));
        a2 &= a2 - 1;
        outlined init with copy of AttributedString._AttributeValue(*(v151 + 56) + 72 * (v130 | (v8 << 6)), &v157);
        v131 = v162;
        v132 = v163;
        outlined copy of AttributedString.AttributeRunBoundaries?(v162, v163);
        outlined destroy of AttributedString._AttributeValue(&v157);
        if (v132 != 1)
        {
          break;
        }

        if (!a2)
        {
          goto LABEL_74;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v129 + 2) + 1, 1, v129);
      }

      v135 = *(v129 + 2);
      v134 = *(v129 + 3);
      v136 = v135 + 1;
      if (v135 >= v134 >> 1)
      {
        v146 = v135 + 1;
        v138 = v129;
        v139 = *(v129 + 2);
        v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v134 > 1), v135 + 1, 1, v138);
        v136 = v146;
        v135 = v139;
        v129 = v140;
      }

      *(v129 + 2) = v136;
      v137 = &v129[16 * v135];
      *(v137 + 4) = v131;
      *(v137 + 5) = v132;
    }

    while (a2);
LABEL_74:
    while (1)
    {
      v133 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v133 >= v7)
      {

        AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v123, v124, 0, v129);

        v126 = v150;
        v118 = *(&v148 + 1);
        v125 = v149;
        v120 = v147;
        v119 = v148;
        v121 = v144;
        goto LABEL_85;
      }

      a2 = *&v6[8 * v133];
      ++v8;
      if (a2)
      {
        v8 = v133;
        goto LABEL_72;
      }
    }

LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

LABEL_85:

  *v145 = v10;
  v157 = v10;
  v158 = v126;
  v159 = *(&v149 + 1);
  v160 = v142;
  v161 = v125;
  v162 = v118;
  v163 = v120;
  v164 = v121;
  v165 = v119;
LABEL_86:
  v166 = v141;
  return outlined destroy of AttributedSubstring(&v157);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance String.LocalizationValue.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE900000000000073)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.LocalizationValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.CodingKeys and conformance String.LocalizationValue.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.LocalizationValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.CodingKeys and conformance String.LocalizationValue.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

float protocol witness for _FormatSpecifiable._arg.getter in conformance Float@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t LocalizedStringResource.defaultValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t LocalizedStringResource.table.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

__n128 LocalizedStringResource.locale.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *(v1 + 56) = *a1;
  return result;
}

uint64_t LocalizedStringResource.bundle.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 80) | 0x4000000000000000;
  *a1 = *(v1 + 72);
  a1[1] = v2;
  return swift_unknownObjectRetain();
}

uint64_t LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)@<X0>(uint64_t *a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, __int128 *a4@<X6>, uint64_t *a5@<X7>, uint64_t a6@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v19 = *a4;
  v10 = *a5;
  v11 = a5[1];
  v12 = StaticString.description.getter();
  v14 = v13;
  v22[2] = v10;
  v22[3] = v11;
  LocalizedStringResource.BundleDescription.resolvedURL.getter(v22);
  v15 = v22[0];
  v16 = v22[1];
  ObjectType = swift_getObjectType();
  if ((*(v16 + 144))(ObjectType, v16))
  {
    result = outlined consume of LocalizedStringResource.BundleDescription(v10, v11);
    *a6 = v12;
    *(a6 + 8) = v14;
    *(a6 + 16) = v8;
    *(a6 + 24) = v7;
    *(a6 + 32) = v9;
    *(a6 + 40) = a2;
    *(a6 + 48) = a3;
    *(a6 + 56) = v19;
    *(a6 + 72) = v15;
    *(a6 + 80) = v16;
    *(a6 + 88) = 0;
    *(a6 + 96) = 0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t LocalizedStringResource.localizedStringResource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return outlined init with copy of LocalizedStringResource(v10, v9);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LocalizedStringResource.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized LocalizedStringResource.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LocalizedStringResource.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LocalizedStringResource.CodingKeys and conformance LocalizedStringResource.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LocalizedStringResource.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LocalizedStringResource.CodingKeys and conformance LocalizedStringResource.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t specialized LocalizedStringResource._withExtensionForBundle<A>(_:)@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t *)@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v5 = a1;
  v6 = a2;
  if (*(v2 + 96))
  {
    v8 = *(v2 + 80);
    ObjectType = swift_getObjectType();
    (*(v8 + 296))(v32, closure #1 in LocalizedStringResource._withExtensionForBundle<A>(_:), 0, MEMORY[0x1E69E72F0], ObjectType, v8);
    if (LODWORD(v32[0]))
    {
      String.utf8CString.getter();
      v10 = sandbox_extension_consume();

      if (v10 == -1)
      {
        if (one-time initialization token for localizedStringLogger != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        __swift_project_value_buffer(v20, localizedStringLogger);
        outlined init with copy of LocalizedStringResource(v2, v32);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();
        outlined destroy of LocalizedStringResource(v4);
        if (os_log_type_enabled(v21, v22))
        {
          log = v21;
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v32[0] = v24;
          *v23 = 136315394;
          v25 = (*(v8 + 240))(ObjectType, v8);
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v32);

          *(v23 + 4) = v27;
          *(v23 + 12) = 1026;
          *(v23 + 14) = MEMORY[0x1865CA7A0](v28);
          _os_log_impl(&dword_18075C000, log, v22, "Unable to consume sandbox extension for path '%s' (errno: %{public}d)", v23, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v24);
          MEMORY[0x1865D2690](v24, -1, -1);
          MEMORY[0x1865D2690](v23, -1, -1);
        }

        else
        {
        }

        v11 = 1;
      }

      else
      {
        v11 = 0;
      }

      v6 = a2;
      v5 = a1;
    }

    else
    {
      if (one-time initialization token for localizedStringLogger != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, localizedStringLogger);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      v6 = a2;
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_18075C000, v17, v18, "LocalizedStringResource contained a sandbox extension token but sandbox check passed without consuming the token. Proceeding to lookup localized string without consuming a sandbox extension.", v19, 2u);
        MEMORY[0x1865D2690](v19, -1, -1);
      }

      v11 = 1;
      v5 = a1;
    }
  }

  else
  {
    if (one-time initialization token for localizedStringLogger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, localizedStringLogger);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_18075C000, v13, v14, "LocalizedStringResource did not contain a sandbox extension token. Proceeding to lookup localized string without consuming a sandbox extension.", v15, 2u);
      MEMORY[0x1865D2690](v15, -1, -1);
    }

    v11 = 1;
  }

  v34 = *(v4 + 72);
  *v32 = *(v4 + 72);
  outlined init with copy of URL(&v34, v33);
  v5(&v35, v32);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    if ((v11 & 1) == 0)
    {
      result = sandbox_extension_release();
    }

    *v6 = v35;
  }

  return result;
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance LocalizedStringResource@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return outlined init with copy of LocalizedStringResource(v10, v9);
}

uint64_t _NSLocalizedStringResourceSwiftWrapper.description.getter()
{
  _StringGuts.grow(_:)(51);
  MEMORY[0x1865CB0E0](0xD000000000000030, 0x8000000181488E40);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t _NSLocalizedStringResourceSwiftWrapper.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of FloatingPointRoundingRule?(a1, &v46, &_sypSgMd);
  if (!*(&v47 + 1))
  {
    outlined destroy of TermOfAddress?(&v46, &_sypSgMd);
LABEL_6:
    v20 = 0;
    return v20 & 1;
  }

  outlined init with take of Any(&v46, v55);
  outlined init with copy of Any(v55, v54);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
    goto LABEL_6;
  }

  v3 = v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped;
  v4 = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 48);
  v5 = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 80);
  v39 = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 64);
  v40 = v5;
  v6 = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 16);
  v36[0] = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped);
  v36[1] = v6;
  v7 = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 48);
  v9 = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped);
  v8 = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 16);
  v37 = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 32);
  v38 = v7;
  v10 = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 80);
  v33 = v39;
  v34 = v10;
  v11 = v53;
  v41 = *(v3 + 96);
  v35 = *(v3 + 96);
  v29 = v9;
  v30 = v8;
  v31 = v37;
  v32 = v4;
  v12 = *&v53[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped];
  v13 = *&v53[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 32];
  v42[1] = *&v53[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 16];
  v42[2] = v13;
  v42[0] = v12;
  v14 = *&v53[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 48];
  v15 = *&v53[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 64];
  v16 = *&v53[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 80];
  v43 = *&v53[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 96];
  v42[4] = v15;
  v42[5] = v16;
  v42[3] = v14;
  v17 = *&v53[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 80];
  v26 = *&v53[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 64];
  v27 = v17;
  v28 = *&v53[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 96];
  v18 = *&v53[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 16];
  v22 = *&v53[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped];
  v23 = v18;
  v19 = *&v53[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 48];
  v24 = *&v53[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 32];
  v25 = v19;
  outlined init with copy of LocalizedStringResource(v36, &v46);
  outlined init with copy of LocalizedStringResource(v42, &v46);
  v20 = specialized static LocalizedStringResource.== infix(_:_:)(&v29, &v22);

  v44[4] = v26;
  v44[5] = v27;
  v45 = v28;
  v44[0] = v22;
  v44[1] = v23;
  v44[2] = v24;
  v44[3] = v25;
  outlined destroy of LocalizedStringResource(v44);
  v50 = v33;
  v51 = v34;
  v52 = v35;
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v49 = v32;
  outlined destroy of LocalizedStringResource(&v46);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return v20 & 1;
}

Swift::String __swiftcall _NSLocalizedStringResourceSwiftWrapper.localizeParsingMarkdown()()
{
  v1 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 80);
  v98 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 64);
  v99 = v1;
  v100 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 96);
  v2 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 16);
  v94 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped);
  v95 = v2;
  v3 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 48);
  v96 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 32);
  v97 = v3;
  v79 = 1;
  v83 = 0uLL;
  LOWORD(v84) = 1;
  *(&v84 + 1) = 0;
  LOWORD(v85) = 256;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  if (!v100)
  {
    outlined init with copy of LocalizedStringResource(&v94, &v71);
    outlined init with copy of LocalizedStringResource(&v94, &v71);
    outlined init with copy of AttributedString.LocalizationOptions(&v83, &v71);
    if (one-time initialization token for localizedStringLogger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, localizedStringLogger);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_15;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "LocalizedStringResource did not contain a sandbox extension token. Proceeding to lookup localized string without consuming a sandbox extension.";
LABEL_13:
    _os_log_impl(&dword_18075C000, v10, v11, v13, v12, 2u);
    v15 = v12;
LABEL_14:
    MEMORY[0x1865D2690](v15, -1, -1);
    goto LABEL_15;
  }

  v4 = v99;
  ObjectType = swift_getObjectType();
  v6 = *(v99 + 296);
  outlined init with copy of LocalizedStringResource(&v94, &v71);
  outlined init with copy of LocalizedStringResource(&v94, &v71);
  outlined init with copy of AttributedString.LocalizationOptions(&v83, &v71);
  v6(&v71, closure #1 in LocalizedStringResource._withExtensionForBundle<A>(_:), 0, MEMORY[0x1E69E72F0], ObjectType, v4);
  if (!v71)
  {
    if (one-time initialization token for localizedStringLogger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, localizedStringLogger);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_15;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "LocalizedStringResource contained a sandbox extension token but sandbox check passed without consuming the token. Proceeding to lookup localized string without consuming a sandbox extension.";
    goto LABEL_13;
  }

  String.utf8CString.getter();
  v7 = sandbox_extension_consume();

  if (v7 != -1)
  {
    v8 = 0;
    goto LABEL_16;
  }

  if (one-time initialization token for localizedStringLogger != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, localizedStringLogger);
  outlined init with copy of LocalizedStringResource(&v94, &v71);
  v10 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  outlined destroy of LocalizedStringResource(&v94);
  if (os_log_type_enabled(v10, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v71 = v35;
    *v34 = 136315394;
    v36 = (*(v4 + 240))(ObjectType, v4);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v71);

    *(v34 + 4) = v38;
    *(v34 + 12) = 1026;
    *(v34 + 14) = MEMORY[0x1865CA7A0](v39);
    _os_log_impl(&dword_18075C000, v10, v33, "Unable to consume sandbox extension for path '%s' (errno: %{public}d)", v34, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1865D2690](v35, -1, -1);
    v15 = v34;
    goto LABEL_14;
  }

LABEL_15:

  v8 = 1;
LABEL_16:
  v16 = v99;
  v17 = objc_allocWithZone(NSBundle);
  v18 = swift_getObjectType();
  v19 = *(v16 + 432);
  swift_unknownObjectRetain_n();
  v20 = v19(v18, v16);
  v21 = [v17 initWithURL_];
  swift_unknownObjectRelease();

  if (v21)
  {
    v23 = v86;
    v22 = v87;
    v80 = v83;
    v81 = v84;
    *&v82 = v85;
    v70 = v21;
    if (v87)
    {
      outlined init with copy of AttributedString.LocalizationOptions(&v83, &v71);
      goto LABEL_38;
    }

    outlined init with copy of AttributedString.LocalizationOptions(&v83, &v71);
    v25 = [v21 localizations];
    if (!v25)
    {
      v25 = _ContiguousArrayBuffer._asCocoaArray()();
    }

    v26 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_181218E20;
    v28 = v98;
    v29 = swift_getObjectType();
    *(v27 + 32) = (*(v28 + 64))(v29, v28);
    *(v27 + 40) = v30;
    v31 = [v26 preferredLocalizationsFromArray:v25 forPreferences:_ContiguousArrayBuffer._asCocoaArray()()];

    swift_unknownObjectRelease();
    if (v31)
    {
      type metadata accessor for __SwiftDeferredNSArray();
      if (swift_dynamicCastClass())
      {
      }

      else
      {
        v41 = v31;
      }

      v42 = swift_dynamicCastClass();
      if (v42)
      {
        v40 = v42;

        if (*(v40 + 2))
        {
          goto LABEL_35;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        [v31 copy];
        v43 = _bridgeCocoaArray<A>(_:)();
        swift_unknownObjectRelease();
        v40 = specialized _arrayForceCast<A, B>(_:)(v43);

        if (*(v40 + 2))
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_35:
        v23 = *(v40 + 4);
        v22 = *(v40 + 5);

        goto LABEL_38;
      }
    }

    v23 = 0;
    v22 = 0;
LABEL_38:
    v69 = v95;
    v45 = *(&v94 + 1);
    v44 = v94;
    v89[0] = v80;
    v89[1] = v81;
    v90 = v82;
    v91 = v23;
    v92 = v22;
    v93 = 1;
    v46 = v96;
    v47 = v97;
    v48 = v98;
    v49 = v70;
    _sSS10FoundationE17LocalizationValueV7resolve3key7options5table6bundle6locale5scope07performB0AA16AttributedStringVSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14AttributeScopeRzlFAA0Q6ScopesO0A10AttributesV_Tt5B5(v44, v45, v89, *(&v46 + 1), v47, v70, *(&v47 + 1), v48, 1u, v69, *(&v69 + 1), v46);

    v24 = v71;
    v71 = v80;
    v72 = v81;
    v73 = v82;
    v74 = v23;
    v75 = v22;
    LOBYTE(v76) = 1;
    outlined destroy of AttributedString.LocalizationOptions(&v71);
    swift_unknownObjectRelease();
    if (v8)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  swift_unknownObjectRelease();
  v24 = 0;
  if ((v8 & 1) == 0)
  {
LABEL_39:
    sandbox_extension_release();
  }

LABEL_40:
  outlined destroy of AttributedString.LocalizationOptions(&v83);
  outlined destroy of LocalizedStringResource(&v94);
  if (v24)
  {
    outlined destroy of AttributedString.LocalizationOptions(&v83);
    outlined destroy of LocalizedStringResource(&v94);
  }

  else
  {
    v50 = v95;
    v51 = v96;
    v52 = *(&v97 + 1);
    v53 = v98;

    swift_unknownObjectRetain();
    _sSS10FoundationE17LocalizationValueV7resolve3key7options5table6bundle6locale5scope07performB0AA16AttributedStringVSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14AttributeScopeRzlFAA0Q6ScopesO0A10AttributesV_Tt5B5(0, 0, &v83, 0, 0, 0, v52, v53, 0, v50, *(&v50 + 1), v51);
    outlined destroy of LocalizedStringResource(&v94);

    swift_unknownObjectRelease();
    outlined destroy of AttributedString.LocalizationOptions(&v83);
    v24 = v71;
  }

  v80 = *(v24 + 24);
  v54 = *(v24 + 56);
  v81 = *(v24 + 40);
  v82 = v54;
  v55 = BigString.startIndex.getter();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = BigString.endIndex.getter();
  *&v71 = v24;
  *(&v71 + 1) = v55;
  *&v72 = v57;
  *(&v72 + 1) = v59;
  v73 = v61;
  v74 = v62;
  v75 = v63;
  v76 = v64;
  v77 = v65;
  v78 = 0;
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();
  v66 = String.init<A>(_:)();
  result._object = v67;
  result._countAndFlagsBits = v66;
  return result;
}

__n128 LocalizedStringResource.init(nsLocalizedStringResource:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Any(a1, v17);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for _NSLocalizedStringResource);
  swift_dynamicCast();
  v4 = [v16 resource];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  type metadata accessor for _NSLocalizedStringResourceSwiftWrapper();
  swift_dynamicCast();
  v5 = v15;
  v7 = *&v15[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 16];
  v6 = *&v15[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 32];
  v18 = *&v15[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped];
  v19 = v7;
  v20 = v6;
  v9 = *&v15[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 64];
  v8 = *&v15[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 80];
  v10 = *&v15[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 48];
  v24 = *&v15[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 96];
  v22 = v9;
  v23 = v8;
  v21 = v10;
  outlined init with copy of LocalizedStringResource(&v18, v14);

  v11 = v23;
  *(a2 + 64) = v22;
  *(a2 + 80) = v11;
  *(a2 + 96) = v24;
  v12 = v19;
  *a2 = v18;
  *(a2 + 16) = v12;
  result = v21;
  *(a2 + 32) = v20;
  *(a2 + 48) = result;
  return result;
}

uint64_t AttributedString.init<A>(localized:including:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  AttributedString.init<A>(localized:including:)(a1, a2, a2, a3, &v6);

  *a4 = v6;
  return result;
}

uint64_t AttributedString.init<A>(localized:options:including:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v10 = a1[5];
  *&v26[16] = a1[4];
  v27 = v10;
  v28 = *(a1 + 12);
  v11 = a1[1];
  v23 = *a1;
  v24 = v11;
  v12 = a1[3];
  v25 = a1[2];
  *v26 = v12;
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  *(v31 + 9) = *(a2 + 41);
  v30 = v14;
  v31[0] = v15;
  v29 = v13;
  specialized LocalizedStringResource._withExtensionForBundle<A>(_:)(closure #1 in AttributedString.init<A>(localized:options:including:)partial apply, v20);
  v16 = *&v20[0];
  if (*&v20[0])
  {
    outlined destroy of AttributedString.LocalizationOptions(&v29);
    result = outlined destroy of LocalizedStringResource(&v23);
  }

  else
  {
    v32 = v24;
    v33 = v25;
    v21[2] = v24;
    v22 = v25;
    v20[0] = v29;
    v20[1] = v30;
    v21[0] = v31[0];
    *(v21 + 9) = *(v31 + 9);
    v34 = *&v26[8];
    v19 = *&v26[8];
    outlined init with copy of String.LocalizationValue(&v32, v18);
    outlined init with copy of Locale(&v34, v18);
    String.LocalizationValue.resolve<A>(key:options:table:bundle:locale:scope:performLocalization:)(0, 0, v20, 0, 0, 0, &v19, a3, 0, a4, a5);
    outlined destroy of LocalizedStringResource(&v23);
    swift_unknownObjectRelease();

    result = outlined destroy of AttributedString.LocalizationOptions(&v29);
    v16 = v18[0];
  }

  *a6 = v16;
  return result;
}

uint64_t AttributedString.init(localized:options:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v3 = a1[5];
  v85 = a1[4];
  v86 = v3;
  v87 = *(a1 + 12);
  v4 = a1[1];
  v81 = *a1;
  v82 = v4;
  v5 = a1[3];
  v83 = a1[2];
  v84 = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  *&v80[9] = *(a2 + 41);
  v79 = v7;
  *v80 = v8;
  v78 = v6;
  if (!v87)
  {
    outlined init with copy of AttributedString.LocalizationOptions(&v78, v73);
    outlined init with copy of LocalizedStringResource(&v81, v73);
    if (one-time initialization token for localizedStringLogger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, localizedStringLogger);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_14;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_18075C000, v15, v16, "LocalizedStringResource did not contain a sandbox extension token. Proceeding to lookup localized string without consuming a sandbox extension.", v17, 2u);
    v18 = v17;
    goto LABEL_13;
  }

  v9 = v86;
  ObjectType = swift_getObjectType();
  v11 = *(v86 + 296);
  outlined init with copy of AttributedString.LocalizationOptions(&v78, v73);
  outlined init with copy of LocalizedStringResource(&v81, v73);
  v11(v73, closure #1 in LocalizedStringResource._withExtensionForBundle<A>(_:), 0, MEMORY[0x1E69E72F0], ObjectType, v9);
  if (!LODWORD(v73[0]))
  {
    if (one-time initialization token for localizedStringLogger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, localizedStringLogger);
    v15 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v15, v20))
    {
      goto LABEL_14;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_18075C000, v15, v20, "LocalizedStringResource contained a sandbox extension token but sandbox check passed without consuming the token. Proceeding to lookup localized string without consuming a sandbox extension.", v21, 2u);
    v18 = v21;
LABEL_13:
    MEMORY[0x1865D2690](v18, -1, -1);
LABEL_14:

    goto LABEL_15;
  }

  String.utf8CString.getter();
  v12 = sandbox_extension_consume();

  if (v12 != -1)
  {
    v13 = 0;
    goto LABEL_16;
  }

  if (one-time initialization token for localizedStringLogger != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, localizedStringLogger);
  outlined init with copy of LocalizedStringResource(&v81, v73);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  outlined destroy of LocalizedStringResource(&v81);
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v73[0] = v42;
    *v41 = 136315394;
    v43 = (*(v9 + 240))(ObjectType, v9);
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v73);

    *(v41 + 4) = v45;
    *(v41 + 12) = 1026;
    *(v41 + 14) = MEMORY[0x1865CA7A0](v46);
    _os_log_impl(&dword_18075C000, v39, v40, "Unable to consume sandbox extension for path '%s' (errno: %{public}d)", v41, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1865D2690](v42, -1, -1);
    MEMORY[0x1865D2690](v41, -1, -1);
  }

LABEL_15:
  v13 = 1;
LABEL_16:
  v22 = v86;
  v23 = objc_allocWithZone(NSBundle);
  v24 = swift_getObjectType();
  v25 = *(v22 + 432);
  swift_unknownObjectRetain_n();
  v26 = v25(v24, v22);
  v27 = [v23 initWithURL_];
  swift_unknownObjectRelease();

  if (v27)
  {
    v28 = *&v80[16];
    v70 = v78;
    v71 = v79;
    v72 = *v80;
    if (*&v80[16])
    {
      v29 = *&v80[8];
      outlined init with copy of AttributedString.LocalizationOptions(&v78, v73);
      goto LABEL_39;
    }

    outlined init with copy of AttributedString.LocalizationOptions(&v78, v73);
    v31 = [v27 localizations];
    if (!v31)
    {
      v31 = _ContiguousArrayBuffer._asCocoaArray()();
    }

    v32 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_181218E20;
    v34 = v85;
    v35 = swift_getObjectType();
    *(v33 + 32) = (*(v34 + 64))(v35, v34);
    *(v33 + 40) = v36;
    v37 = [v32 preferredLocalizationsFromArray:v31 forPreferences:_ContiguousArrayBuffer._asCocoaArray()()];

    swift_unknownObjectRelease();
    if (v37)
    {
      type metadata accessor for __SwiftDeferredNSArray();
      if (swift_dynamicCastClass())
      {
      }

      else
      {
        v48 = v37;
      }

      v49 = swift_dynamicCastClass();
      if (v49)
      {
        v47 = v49;

        if (*(v47 + 2))
        {
          goto LABEL_36;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        [v37 copy];
        v50 = _bridgeCocoaArray<A>(_:)();
        swift_unknownObjectRelease();
        v47 = specialized _arrayForceCast<A, B>(_:)(v50);

        if (*(v47 + 2))
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      v47 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_36:
        v29 = *(v47 + 4);
        v28 = *(v47 + 5);

        goto LABEL_39;
      }
    }

    v29 = 0;
    v28 = 0;
LABEL_39:
    v63 = v29;
    v73[0] = v70;
    v62 = v82;
    v51 = v81;
    v73[1] = v71;
    v74 = v72;
    v75 = v29;
    v76 = v28;
    v77 = 1;
    v52 = v83;
    v53 = v84;
    v54 = v85;
    v55 = v27;
    _sSS10FoundationE17LocalizationValueV7resolve3key7options5table6bundle6locale5scope07performB0AA16AttributedStringVSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14AttributeScopeRzlFAA0Q6ScopesO0A10AttributesV_Tt5B5(v51, *(&v51 + 1), v73, *(&v52 + 1), v53, v27, *(&v53 + 1), v54, 1u, v62, *(&v62 + 1), v52);

    v30 = *&v65[0];
    v65[0] = v70;
    v65[1] = v71;
    v66 = v72;
    v67 = v63;
    v68 = v28;
    v69 = 1;
    outlined destroy of AttributedString.LocalizationOptions(v65);
    swift_unknownObjectRelease();
    if (v13)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  swift_unknownObjectRelease();
  v30 = 0;
  if ((v13 & 1) == 0)
  {
LABEL_40:
    sandbox_extension_release();
  }

LABEL_41:
  outlined destroy of AttributedString.LocalizationOptions(&v78);
  outlined destroy of LocalizedStringResource(&v81);
  if (v30)
  {
    outlined destroy of AttributedString.LocalizationOptions(&v78);
    result = outlined destroy of LocalizedStringResource(&v81);
  }

  else
  {
    v58 = *(&v82 + 1);
    v57 = v82;
    v59 = v83;
    v60 = *(&v84 + 1);
    v61 = v85;

    swift_unknownObjectRetain();
    _sSS10FoundationE17LocalizationValueV7resolve3key7options5table6bundle6locale5scope07performB0AA16AttributedStringVSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14AttributeScopeRzlFAA0Q6ScopesO0A10AttributesV_Tt5B5(0, 0, &v78, 0, 0, 0, v60, v61, 0, v57, v58, v59);
    outlined destroy of LocalizedStringResource(&v81);

    swift_unknownObjectRelease();
    result = outlined destroy of AttributedString.LocalizationOptions(&v78);
    v30 = *&v65[0];
  }

  *a3 = v30;
  return result;
}

uint64_t AttributedString.init<A>(localized:options:including:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v8 = a1[5];
  *&v24[16] = a1[4];
  v25 = v8;
  v26 = *(a1 + 12);
  v9 = a1[1];
  v21 = *a1;
  v22 = v9;
  v10 = a1[3];
  v23 = a1[2];
  *v24 = v10;
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  *(v29 + 9) = *(a2 + 41);
  v28 = v12;
  v29[0] = v13;
  v27 = v11;
  specialized LocalizedStringResource._withExtensionForBundle<A>(_:)(closure #1 in AttributedString.init<A>(localized:options:including:)partial apply, v18);
  v14 = *&v18[0];
  if (*&v18[0])
  {

    outlined destroy of AttributedString.LocalizationOptions(&v27);
    result = outlined destroy of LocalizedStringResource(&v21);
  }

  else
  {
    v30 = v22;
    v31 = v23;
    v19[2] = v22;
    v20 = v23;
    v18[0] = v27;
    v18[1] = v28;
    v19[0] = v29[0];
    *(v19 + 9) = *(v29 + 9);
    v32 = *&v24[8];
    v17 = *&v24[8];
    outlined init with copy of String.LocalizationValue(&v30, v16);
    outlined init with copy of Locale(&v32, v16);
    String.LocalizationValue.resolve<A>(key:options:table:bundle:locale:scope:performLocalization:)(0, 0, v18, 0, 0, 0, &v17, a3, 0, a3, a4);

    outlined destroy of LocalizedStringResource(&v21);
    swift_unknownObjectRelease();

    result = outlined destroy of AttributedString.LocalizationOptions(&v27);
    v14 = v16[0];
  }

  *a5 = v14;
  return result;
}

void closure #1 in AttributedString.init<A>(localized:options:including:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v55 = a4;
  v10 = *(a1 + 8);
  v11 = objc_allocWithZone(NSBundle);
  ObjectType = swift_getObjectType();
  v13 = *(v10 + 432);
  swift_unknownObjectRetain();
  v14 = v13(ObjectType, v10);
  v15 = [v11 initWithURL_];
  swift_unknownObjectRelease();

  if (!v15)
  {
    *a7 = 0;
    return;
  }

  v38 = a7;
  v16 = *(a2 + 40);
  v17 = *(a2 + 48);
  v18 = *(a2 + 16);
  v49 = *a2;
  v50 = v18;
  v51 = *(a2 + 32);
  v37 = v15;
  if (!v17)
  {
    outlined init with copy of AttributedString.LocalizationOptions(a2, &v46);
    v19 = [v15 localizations];
    if (!v19)
    {
      v19 = _ContiguousArrayBuffer._asCocoaArray()();
    }

    v20 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_181218E20;
    v22 = a3[8];
    v23 = swift_getObjectType();
    *(v21 + 32) = (*(v22 + 64))(v23, v22);
    *(v21 + 40) = v24;
    v25 = [v20 preferredLocalizationsFromArray:v19 forPreferences:_ContiguousArrayBuffer._asCocoaArray()()];

    swift_unknownObjectRelease();
    if (v25)
    {
      type metadata accessor for __SwiftDeferredNSArray();
      if (swift_dynamicCastClass())
      {
      }

      else
      {
        v27 = v25;
      }

      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v26 = v28;

        if (*(v26 + 2))
        {
          goto LABEL_15;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        [v25 copy];
        v29 = _bridgeCocoaArray<A>(_:)();
        swift_unknownObjectRelease();
        v26 = specialized _arrayForceCast<A, B>(_:)(v29);

        if (*(v26 + 2))
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_15:
        v16 = *(v26 + 4);
        v17 = *(v26 + 5);

        goto LABEL_18;
      }
    }

    v16 = 0;
    v17 = 0;
    goto LABEL_18;
  }

  outlined init with copy of AttributedString.LocalizationOptions(a2, &v46);
LABEL_18:
  v54 = a3[4];
  v30 = *(a3 + 1);
  v35 = a3[1];
  v36 = *a3;
  v42[0] = v49;
  v42[1] = v50;
  *v43 = v51;
  *&v43[8] = v16;
  *&v43[16] = v17;
  v43[24] = 1;
  v46 = v49;
  v47 = v50;
  *v48 = *v43;
  v31 = a3 + 7;
  *&v48[9] = *&v43[9];
  v33 = *(v31 - 2);
  v32 = *(v31 - 1);
  v52 = *v31;
  v53 = v30;
  outlined init with copy of String.LocalizationValue(&v53, v44);
  outlined init with copy of AttributedString.LocalizationOptions(v42, v44);
  v34 = v37;
  outlined init with copy of Locale(&v52, v44);
  String.LocalizationValue.resolve<A>(key:options:table:bundle:locale:scope:performLocalization:)(&v41, v36, v35, &v46, v33, v32, v37, v31, v55, 1, a5, a6);

  swift_unknownObjectRelease();
  v44[0] = v46;
  v44[1] = v47;
  v45[0] = *v48;
  *(v45 + 9) = *&v48[9];
  outlined destroy of AttributedString.LocalizationOptions(v44);

  *v38 = v41;
  v46 = v49;
  v47 = v50;
  *v48 = v51;
  *&v48[8] = v16;
  *&v48[16] = v17;
  v48[24] = 1;
  outlined destroy of AttributedString.LocalizationOptions(&v46);
}

uint64_t specialized static InflectionConcept.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      outlined copy of InflectionConcept();
      outlined copy of InflectionConcept();
      v5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation13TermOfAddressV_Tt1g5(v2, v3);
      outlined consume of InflectionConcept();
      goto LABEL_11;
    }

LABEL_9:
    outlined copy of InflectionConcept();
    outlined copy of InflectionConcept();
    outlined consume of InflectionConcept();
    outlined consume of InflectionConcept();
    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v2 != v3 || *(a1 + 8) != *(a2 + 8))
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of InflectionConcept();
    outlined copy of InflectionConcept();
    outlined consume of InflectionConcept();
LABEL_11:
    outlined consume of InflectionConcept();
    return v5 & 1;
  }

  outlined copy of InflectionConcept();
  outlined copy of InflectionConcept();
  outlined consume of InflectionConcept();
  outlined consume of InflectionConcept();
  return 1;
}

uint64_t specialized static LocalizedStringResource.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v15 = *(a1 + 72);
  v16 = *(a1 + 56);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v17 = *(a2 + 72);
  v18 = *(a2 + 56);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS10FoundationE17LocalizationValueV14FormatArgumentV_Tt1g5(v2))
  {
    if (v4 == v7 && v3 == v9)
    {
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    if (v6)
    {
      if (!v10 || (v5 != v8 || v6 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (v10)
    {
      goto LABEL_9;
    }

    v19 = v18;
    v20 = v16;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v14 = specialized static Locale.== infix(_:_:)(&v20, &v19);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v14)
    {
      v19 = v17;
      v20 = v15;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v11 = static URL.== infix(_:_:)(&v20, &v19);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v11 & 1;
    }
  }

  else
  {
  }

LABEL_9:
  v11 = 0;
  return v11 & 1;
}

void partial apply for closure #1 in AttributedString.init<A>(localized:options:including:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  partial apply for closure #1 in AttributedString.init<A>(localized:options:including:)(a1, a2);
}

{
  closure #1 in AttributedString.init<A>(localized:options:including:)(a1, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 16), *(v2 + 24), a2);
}

unint64_t lazy protocol witness table accessor for type String.LocalizationOptions._PluralizationNumber.CodingKeys and conformance String.LocalizationOptions._PluralizationNumber.CodingKeys()
{
  result = lazy protocol witness table cache variable for type String.LocalizationOptions._PluralizationNumber.CodingKeys and conformance String.LocalizationOptions._PluralizationNumber.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationOptions._PluralizationNumber.CodingKeys and conformance String.LocalizationOptions._PluralizationNumber.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationOptions._PluralizationNumber.CodingKeys and conformance String.LocalizationOptions._PluralizationNumber.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationOptions._PluralizationNumber.CodingKeys and conformance String.LocalizationOptions._PluralizationNumber.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationOptions._PluralizationNumber.CodingKeys and conformance String.LocalizationOptions._PluralizationNumber.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationOptions._PluralizationNumber.CodingKeys and conformance String.LocalizationOptions._PluralizationNumber.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationOptions._PluralizationNumber.CodingKeys and conformance String.LocalizationOptions._PluralizationNumber.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationOptions._PluralizationNumber.CodingKeys and conformance String.LocalizationOptions._PluralizationNumber.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationOptions._PluralizationNumber.CodingKeys and conformance String.LocalizationOptions._PluralizationNumber.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationOptions._PluralizationNumber.CodingKeys and conformance String.LocalizationOptions._PluralizationNumber.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationOptions._PluralizationNumber.CodingKeys and conformance String.LocalizationOptions._PluralizationNumber.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationOptions._PluralizationNumber.CodingKeys and conformance String.LocalizationOptions._PluralizationNumber.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String.LocalizationValue.Placeholder.CodingKeys and conformance String.LocalizationValue.Placeholder.CodingKeys()
{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder.CodingKeys and conformance String.LocalizationValue.Placeholder.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder.CodingKeys and conformance String.LocalizationValue.Placeholder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder.CodingKeys and conformance String.LocalizationValue.Placeholder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder.CodingKeys and conformance String.LocalizationValue.Placeholder.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder.CodingKeys and conformance String.LocalizationValue.Placeholder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder.CodingKeys and conformance String.LocalizationValue.Placeholder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder.CodingKeys and conformance String.LocalizationValue.Placeholder.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder.CodingKeys and conformance String.LocalizationValue.Placeholder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder.CodingKeys and conformance String.LocalizationValue.Placeholder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder.CodingKeys and conformance String.LocalizationValue.Placeholder.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder.CodingKeys and conformance String.LocalizationValue.Placeholder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder.CodingKeys and conformance String.LocalizationValue.Placeholder.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InflectionConcept.CodingKeys and conformance InflectionConcept.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InflectionConcept.CodingKeys and conformance InflectionConcept.CodingKeys;
  if (!lazy protocol witness table cache variable for type InflectionConcept.CodingKeys and conformance InflectionConcept.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InflectionConcept.CodingKeys and conformance InflectionConcept.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InflectionConcept.CodingKeys and conformance InflectionConcept.CodingKeys;
  if (!lazy protocol witness table cache variable for type InflectionConcept.CodingKeys and conformance InflectionConcept.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InflectionConcept.CodingKeys and conformance InflectionConcept.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InflectionConcept.CodingKeys and conformance InflectionConcept.CodingKeys;
  if (!lazy protocol witness table cache variable for type InflectionConcept.CodingKeys and conformance InflectionConcept.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InflectionConcept.CodingKeys and conformance InflectionConcept.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InflectionConcept.CodingKeys and conformance InflectionConcept.CodingKeys;
  if (!lazy protocol witness table cache variable for type InflectionConcept.CodingKeys and conformance InflectionConcept.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InflectionConcept.CodingKeys and conformance InflectionConcept.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [TermOfAddress] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation13TermOfAddressVGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys and conformance AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys and conformance AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys and conformance AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys and conformance AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys and conformance AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys and conformance AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys and conformance AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys and conformance AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys and conformance AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys and conformance AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys and conformance AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys and conformance AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys and conformance AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String.LocalizationOptions._PluralizationNumber and conformance String.LocalizationOptions._PluralizationNumber()
{
  result = lazy protocol witness table cache variable for type String.LocalizationOptions._PluralizationNumber and conformance String.LocalizationOptions._PluralizationNumber;
  if (!lazy protocol witness table cache variable for type String.LocalizationOptions._PluralizationNumber and conformance String.LocalizationOptions._PluralizationNumber)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationOptions._PluralizationNumber and conformance String.LocalizationOptions._PluralizationNumber);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String.LocalizationValue.StringInterpolation and conformance String.LocalizationValue.StringInterpolation()
{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.StringInterpolation and conformance String.LocalizationValue.StringInterpolation;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.StringInterpolation and conformance String.LocalizationValue.StringInterpolation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.StringInterpolation and conformance String.LocalizationValue.StringInterpolation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InflectionConcept and conformance InflectionConcept()
{
  result = lazy protocol witness table cache variable for type InflectionConcept and conformance InflectionConcept;
  if (!lazy protocol witness table cache variable for type InflectionConcept and conformance InflectionConcept)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InflectionConcept and conformance InflectionConcept);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.LocalizationOptions._PluralizationNumber and conformance AttributedString.LocalizationOptions._PluralizationNumber()
{
  result = lazy protocol witness table cache variable for type AttributedString.LocalizationOptions._PluralizationNumber and conformance AttributedString.LocalizationOptions._PluralizationNumber;
  if (!lazy protocol witness table cache variable for type AttributedString.LocalizationOptions._PluralizationNumber and conformance AttributedString.LocalizationOptions._PluralizationNumber)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.LocalizationOptions._PluralizationNumber and conformance AttributedString.LocalizationOptions._PluralizationNumber);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions()
{
  result = lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions;
  if (!lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions;
  if (!lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions;
  if (!lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions;
  if (!lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions()
{
  result = lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions;
  if (!lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions;
  if (!lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions;
  if (!lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions;
  if (!lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for CGFloat(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for String.LocalizationOptions(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for String.LocalizationOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributedString.LocalizationOptions(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for AttributedString.LocalizationOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_10Foundation23LocalizedStringResourceV17BundleDescriptionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t getEnumTagSinglePayload for LocalizedStringResource.BundleDescription(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 16))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for LocalizedStringResource.BundleDescription(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t specialized LocalizedStringResource.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x56746C7561666564 && a2 == 0xEC00000065756C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C626174 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5255656C646E7562 && a2 == 0xE90000000000004CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000181488D20 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t specialized String.LocalizationValue.Placeholder.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7630441 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953393013 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616F6C66 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t lazy protocol witness table accessor for type NSNumber and conformance NSObject(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSMorphologyPronoun(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for _FoundationPlusScope()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _FoundationPlusScope(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + *(v4 + 80)) & ~*(v4 + 80));
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + *(v4 + 80)) & ~*(v4 + 80));
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
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

  return v5 + (v6 | v11) + 1;
}

void storeEnumTagSinglePayload for _FoundationPlusScope(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
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
  v18 = *(v6 + 56);
  v19 = &a1[v8] & ~v8;

  v18(v19);
}

unint64_t lazy protocol witness table accessor for type String.LocalizationValue.AttributedStringCache.CacheKey and conformance String.LocalizationValue.AttributedStringCache.CacheKey()
{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.AttributedStringCache.CacheKey and conformance String.LocalizationValue.AttributedStringCache.CacheKey;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.AttributedStringCache.CacheKey and conformance String.LocalizationValue.AttributedStringCache.CacheKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.AttributedStringCache.CacheKey and conformance String.LocalizationValue.AttributedStringCache.CacheKey);
  }

  return result;
}

uint64_t TermOfAddress.isSupportedInLanguage(_:)(__int128 *a1)
{
  v2 = *(v1 + 12);
  if ((v2 - 1) >= 3)
  {
    if (v2)
    {
      v10 = v1[3];
      v41 = v1[2];
      v42 = v10;
      v11 = v1[5];
      v43 = v1[4];
      v44 = v11;
      v12 = v1[1];
      v39 = *v1;
      v40 = v12;
      Locale.Language.languageCode.getter(v38);
      v14 = v38[0];
      v15 = v38[1];
      v17 = v38[2];
      v16 = v38[3];
      v18 = a1[3];
      v34 = a1[2];
      v35 = v18;
      v19 = a1[5];
      v36 = a1[4];
      v37 = v19;
      v20 = a1[1];
      v32 = *a1;
      v33 = v20;
      Locale.Language.languageCode.getter(&v28);
      v22 = v28;
      v21 = v29;
      if (v15)
      {
        if (v29)
        {
          if (v17 == v30 && v16 == v31)
          {
            outlined copy of Locale.LanguageCode?(v14, v15);
            outlined consume of Locale.LanguageCode?(v22, v21);
            v3 = 1;
          }

          else
          {
            v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
            outlined copy of Locale.LanguageCode?(v14, v15);
            outlined consume of Locale.LanguageCode?(v22, v21);
          }

          v25 = v14;
          v26 = v15;
          goto LABEL_22;
        }

        outlined copy of Locale.LanguageCode?(v14, v15);
      }

      else if (!v29)
      {
        outlined consume of Locale.LanguageCode?(v14, 0);
        v3 = 1;
        return v3 & 1;
      }

      outlined consume of Locale.LanguageCode?(v14, v15);
      v23 = v22;
      v24 = v21;
    }

    else
    {
      v4 = a1[3];
      v41 = a1[2];
      v42 = v4;
      v5 = a1[5];
      v43 = a1[4];
      v44 = v5;
      v6 = a1[1];
      v39 = *a1;
      v40 = v6;
      Locale.Language.languageCode.getter(&v32);
      v7 = v32;
      v8 = v33;
      v9 = String.lowercased()();
      if (*(&v7 + 1))
      {
        if (v8 == v9)
        {
          outlined copy of Locale.LanguageCode?(v7, *(&v7 + 1));
          outlined consume of Locale.LanguageCode?(28261, 0xE200000000000000);
          v3 = 1;
        }

        else
        {
          v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of Locale.LanguageCode?(v7, *(&v7 + 1));
          outlined consume of Locale.LanguageCode?(28261, 0xE200000000000000);
        }

        v26 = *(&v7 + 1);
        v25 = v7;
LABEL_22:
        outlined consume of Locale.LanguageCode?(v25, v26);
        return v3 & 1;
      }

      outlined consume of Locale.LanguageCode?(v7, 0);
      v23 = 28261;
      v24 = 0xE200000000000000;
    }

    outlined consume of Locale.LanguageCode?(v23, v24);
    v3 = 0;
    return v3 & 1;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t TermOfAddress.morphology(for:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  v5 = v2[5];
  v54 = v2[4];
  v55 = v5;
  v6 = *(v2 + 12);
  v56 = v6;
  v7 = v2[1];
  v50 = *v2;
  v51 = v7;
  v8 = v2[3];
  v9 = 3;
  v52 = v2[2];
  v53 = v8;
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v9 = 0;
LABEL_12:
        v4 = 1;
        goto LABEL_13;
      }
    }

    else
    {
      v4 = 1;
      v9 = 2;
    }

    goto LABEL_13;
  }

  if (v6 == 2)
  {
    v9 = 1;
    goto LABEL_12;
  }

  if (v6 != 3)
  {
LABEL_13:
    v37 = v9;
    v16 = 134656;
    v17 = a1[3];
    *v47 = a1[2];
    *&v47[16] = v17;
    v18 = a1[5];
    v48 = a1[4];
    v49 = v18;
    v19 = a1[1];
    *v46 = *a1;
    *&v46[16] = v19;
    outlined init with copy of TermOfAddress._TermOfAddress(&v50, &v39);
    Locale.Language.languageCode.getter(v38);
    v20 = v38[0];
    v21 = v38[1];
    v23 = v38[2];
    v22 = v38[3];
    v24 = String.lowercased()();
    if (v21)
    {
      if (v23 == v24._countAndFlagsBits && v22 == v24._object)
      {
        outlined copy of Locale.LanguageCode?(v20, v21);
        outlined consume of Locale.LanguageCode?(28261, 0xE200000000000000);

        result = outlined consume of Locale.LanguageCode?(v20, v21);
LABEL_19:
        if ((v56 - 1) < 2)
        {
LABEL_33:
          v16 = 3584;
          goto LABEL_34;
        }

        if (v56)
        {
          if (v56 == 3)
          {
LABEL_40:
            __break(1u);
            return result;
          }

          v43 = v54;
          v44 = v55;
          v45 = v56;
          v39 = v50;
          v40 = v51;
          v41 = v52;
          v42 = v53;
          result = outlined destroy of Locale.Language(&v39);
          v26 = v45;
          v27 = *(v45 + 16);
          if (v27)
          {
            v28 = 0;
            v29 = 32;
            while (v28 < *(v26 + 16))
            {
              v30 = *(v26 + v29);
              v31 = *(v26 + v29 + 45);
              v32 = *(v26 + v29 + 32);
              *&v46[16] = *(v26 + v29 + 16);
              *v47 = v32;
              *&v47[13] = v31;
              *v46 = v30;
              if (!v32)
              {
                String.lowercased()();
                outlined init with copy of Morphology.Pronoun(v46, v38);
                v33._countAndFlagsBits = 31077;
                v33._object = 0xE200000000000000;
                v34 = String.hasSuffix(_:)(v33);
                outlined destroy of Morphology.Pronoun(v46);

                if (v34)
                {

                  goto LABEL_34;
                }
              }

              ++v28;
              v29 += 64;
              if (v27 == v28)
              {
                goto LABEL_32;
              }
            }

            __break(1u);
            goto LABEL_40;
          }

LABEL_32:

          goto LABEL_33;
        }

LABEL_34:
        v36 = MEMORY[0x1E69E7CC8];
        *a2 = v16 | v37;
        *(a2 + 8) = v36;
        *(a2 + 16) = 33751822;
        *(a2 + 20) = 2;
        return result;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of Locale.LanguageCode?(v20, v21);
      outlined consume of Locale.LanguageCode?(28261, 0xE200000000000000);

      result = outlined consume of Locale.LanguageCode?(v20, v21);
      if (v25)
      {
        goto LABEL_19;
      }
    }

    else
    {
      outlined consume of Locale.LanguageCode?(v20, 0);
      outlined consume of Locale.LanguageCode?(28261, 0xE200000000000000);
    }

    result = outlined destroy of TermOfAddress._TermOfAddress(&v50);
    if (v4)
    {
      v16 = 396800;
      goto LABEL_34;
    }

    v35 = v37 + 396800;
    goto LABEL_36;
  }

  objc_opt_self();
  v10 = +[NSMorphology _userMorphologyWithOverrides];
  if (v10)
  {
    memset(v46, 0, 21);
    v11 = v10;
    specialized static Morphology._conditionallyBridgeFromObjectiveC(_:result:)(v10, v46);

    *&v39 = 396803;
    *(&v39 + 1) = MEMORY[0x1E69E7CC8];
    BYTE4(v40) = 2;
    LODWORD(v40) = 33751822;
    result = outlined destroy of Morphology(&v39);
    v13 = *&v46[8];
    if (*&v46[8])
    {
      v14 = *&v46[16];
      v15 = v46[20];
      *a2 = *v46;
      *(a2 + 8) = v13;
      *(a2 + 20) = v15;
      *(a2 + 16) = v14;
      return result;
    }

    goto LABEL_37;
  }

  v35 = 396803;
LABEL_36:
  *&v39 = v35;
  *(&v39 + 1) = MEMORY[0x1E69E7CC8];
  LODWORD(v40) = 33751822;
  BYTE4(v40) = 2;
  result = outlined destroy of Morphology(&v39);
LABEL_37:
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 13) = 0;
  return result;
}

Swift::Bool __swiftcall NSTermOfAddress.isSupportedInLanguage(_:)(Swift::String a1)
{
  v41 = *MEMORY[0x1E69E9840];
  memset(v40, 0, sizeof(v40));
  outlined destroy of Locale.Language.Components(v40);
  String.utf8CString.getter();
  Language = uloc_getLanguage();

  if (Language <= 0)
  {
    v2 = 0;
    v4 = 0;
  }

  else
  {
    v39[Language] = 0;
    v2 = MEMORY[0x1865CAEB0](v39);
    v4 = v3;
  }

  LODWORD(v35[0]) = 0;
  String.utf8CString.getter();
  Script = uloc_getScript();

  v6 = 0;
  v7 = 0;
  if (Script > 0)
  {
    v38[Script] = 0;
    v6 = MEMORY[0x1865CAEB0](v38);
    v7 = v8;
  }

  LODWORD(v35[0]) = 0;
  String.utf8CString.getter();
  Country = uloc_getCountry();

  v10 = 0;
  v11 = 0;
  if (Country > 0)
  {
    v37[Country] = 0;
    v10 = MEMORY[0x1865CAEB0](v37);
    v11 = v12;
  }

  if (v4)
  {
    v13 = String.lowercased()();
    object = v13._object;
    countAndFlagsBits = v13._countAndFlagsBits;
    v24 = v4;
    if (v7)
    {
      goto LABEL_10;
    }

LABEL_13:
    v6 = 0;
    v15 = 0;
    v16 = 0;
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_14:
    v10 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_15;
  }

  v2 = 0;
  object = 0;
  countAndFlagsBits = 0;
  v24 = 0;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_10:
  *&v35[0] = v6;
  *(&v35[0] + 1) = v7;

  String.init<A>(_:)();
  v14 = String._capitalized()();
  v15 = v14._countAndFlagsBits;
  v16 = v14._object;

  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_11:
  v17 = String.uppercased()();
  v18 = v17._countAndFlagsBits;
  v19 = v17._object;
LABEL_15:
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  *&v29 = v2;
  *(&v29 + 1) = v24;
  *&v30 = countAndFlagsBits;
  *(&v30 + 1) = object;
  *&v31 = v6;
  *(&v31 + 1) = v7;
  *&v32 = v15;
  *(&v32 + 1) = v16;
  *&v33 = v10;
  *(&v33 + 1) = v11;
  *&v34 = v18;
  *(&v34 + 1) = v19;
  v26[2] = v31;
  v26[3] = v32;
  v26[4] = v33;
  v26[5] = v34;
  v26[0] = v29;
  v26[1] = v30;
  TermOfAddress.init(_:)(v25, v27);
  v20 = TermOfAddress.isSupportedInLanguage(_:)(v26);
  v35[4] = v27[4];
  v35[5] = v27[5];
  v36 = v28;
  v35[0] = v27[0];
  v35[1] = v27[1];
  v35[2] = v27[2];
  v35[3] = v27[3];
  outlined destroy of TermOfAddress(v35);
  outlined destroy of Locale.Language.Components(&v29);
  return v20 & 1;
}

Foundation::Morphology_optional __swiftcall NSTermOfAddress.morphologyForLanguage(_:)(Swift::String a1)
{
  v44 = *MEMORY[0x1E69E9840];
  memset(v43, 0, sizeof(v43));
  outlined destroy of Locale.Language.Components(v43);
  String.utf8CString.getter();
  Language = uloc_getLanguage();

  if (Language <= 0)
  {
    v2 = 0;
    v4 = 0;
  }

  else
  {
    v42[Language] = 0;
    v2 = MEMORY[0x1865CAEB0](v42);
    v4 = v3;
  }

  LODWORD(v38[0]) = 0;
  String.utf8CString.getter();
  Script = uloc_getScript();

  v6 = 0;
  v7 = 0;
  if (Script > 0)
  {
    v41[Script] = 0;
    v6 = MEMORY[0x1865CAEB0](v41);
    v7 = v8;
  }

  LODWORD(v38[0]) = 0;
  String.utf8CString.getter();
  Country = uloc_getCountry();

  v10 = 0;
  v11 = 0;
  if (Country > 0)
  {
    v40[Country] = 0;
    v10 = MEMORY[0x1865CAEB0](v40);
    v11 = v12;
  }

  if (v4)
  {
    v13 = String.lowercased()();
    object = v13._object;
    countAndFlagsBits = v13._countAndFlagsBits;
    v26 = v2;
    if (v7)
    {
      goto LABEL_10;
    }

LABEL_13:
    v6 = 0;
    v15 = 0;
    v16 = 0;
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_14:
    v10 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_15;
  }

  object = 0;
  countAndFlagsBits = 0;
  v26 = 0;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_10:
  *&v38[0] = v6;
  *(&v38[0] + 1) = v7;

  String.init<A>(_:)();
  v14 = String._capitalized()();
  v15 = v14._countAndFlagsBits;
  v16 = v14._object;

  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_11:
  v17 = String.uppercased()();
  v18 = v17._countAndFlagsBits;
  v19 = v17._object;
LABEL_15:
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  *&v32 = v26;
  *(&v32 + 1) = v4;
  *&v33 = countAndFlagsBits;
  *(&v33 + 1) = object;
  *&v34 = v6;
  *(&v34 + 1) = v7;
  *&v35 = v15;
  *(&v35 + 1) = v16;
  *&v36 = v10;
  *(&v36 + 1) = v11;
  *&v37 = v18;
  *(&v37 + 1) = v19;
  v29[2] = v34;
  v29[3] = v35;
  v29[4] = v36;
  v29[5] = v37;
  v29[0] = v32;
  v29[1] = v33;
  TermOfAddress.init(_:)(v27, v30);
  TermOfAddress.morphology(for:)(v29, v28);
  v38[4] = v30[4];
  v38[5] = v30[5];
  v39 = v31;
  v38[0] = v30[0];
  v38[1] = v30[1];
  v38[2] = v30[2];
  v38[3] = v30[3];
  outlined destroy of TermOfAddress(v38);
  v20 = outlined destroy of Locale.Language.Components(&v32);
  *&result.value.grammaticalCase.value = v22;
  result.value.definiteness.value = BYTE4(v22);
  result.value.customPronouns._rawValue = v21;
  *&result.value.grammaticalGender.value = v20;
  result.value.number.value = BYTE2(v20);
  result.is_nil = v23;
  return result;
}

unint64_t type metadata accessor for NSMorphology()
{
  result = lazy cache variable for type metadata for NSMorphology;
  if (!lazy cache variable for type metadata for NSMorphology)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSMorphology);
  }

  return result;
}

uint64_t one-time initialization function for IDNScriptAllowedList()
{
  result = closure #1 in variable initialization expression of static URL.UnicodeLookalikeTable.IDNScriptAllowedList();
  static URL.UnicodeLookalikeTable.IDNScriptAllowedList = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static URL.UnicodeLookalikeTable.IDNScriptAllowedList()
{
  v24 = MEMORY[0x1E69E7CD0];
  v23 = xmmword_1812E8B90;
  v0 = MEMORY[0x1865D2930](4106, &v23);
  if (v0 < 0xD0)
  {
    specialized Set._Variant.insert(_:)(&v23, v0);
  }

  v23 = xmmword_1812E8BA0;
  v1 = MEMORY[0x1865D2930](4106, &v23);
  if (v1 < 0xD0)
  {
    specialized Set._Variant.insert(_:)(&v23, v1);
  }

  v23 = xmmword_1812E8BB0;
  v2 = MEMORY[0x1865D2930](4106, &v23);
  if (v2 < 0xD0)
  {
    specialized Set._Variant.insert(_:)(&v23, v2);
  }

  v23 = xmmword_1812E8BC0;
  v3 = MEMORY[0x1865D2930](4106, &v23);
  if (v3 < 0xD0)
  {
    specialized Set._Variant.insert(_:)(&v23, v3);
  }

  v23 = xmmword_1812E8BD0;
  v4 = MEMORY[0x1865D2930](4106, &v23);
  if (v4 < 0xD0)
  {
    specialized Set._Variant.insert(_:)(&v23, v4);
  }

  if (("n3URL21UnicodeLookalikeTable" & 0x1000000000000000) != 0)
  {
    _StringGuts._slowWithCString<A>(_:)();
    v6 = v23;
    if (v23 < 0xD0)
    {
LABEL_16:
      specialized Set._Variant.insert(_:)(&v23, v6);
    }
  }

  else
  {
    if (("n3URL21UnicodeLookalikeTable" & 0x2000000000000000) != 0)
    {
      *&v23 = 0xD000000000000013;
      *(&v23 + 1) = "n3URL21UnicodeLookalikeTable" & 0xFFFFFFFFFFFFF0;
      v5 = &v23;
    }

    else
    {
      v5 = (("n3URL21UnicodeLookalikeTable" & 0xFFFFFFFFFFFFFF0) + 32);
    }

    v6 = MEMORY[0x1865D2930](4106, v5);
    if (v6 < 0xD0)
    {
      goto LABEL_16;
    }
  }

  v23 = xmmword_1812E8BE0;
  v7 = MEMORY[0x1865D2930](4106, &v23);
  if (v7 < 0xD0)
  {
    specialized Set._Variant.insert(_:)(&v23, v7);
  }

  v23 = xmmword_1812E8BF0;
  v8 = MEMORY[0x1865D2930](4106, &v23);
  if (v8 < 0xD0)
  {
    specialized Set._Variant.insert(_:)(&v23, v8);
  }

  v23 = xmmword_1812E8C00;
  v9 = MEMORY[0x1865D2930](4106, &v23);
  if (v9 < 0xD0)
  {
    specialized Set._Variant.insert(_:)(&v23, v9);
  }

  v23 = xmmword_1812E8C10;
  v10 = MEMORY[0x1865D2930](4106, &v23);
  if (v10 < 0xD0)
  {
    specialized Set._Variant.insert(_:)(&v23, v10);
  }

  v23 = xmmword_1812E8C20;
  v11 = MEMORY[0x1865D2930](4106, &v23);
  if (v11 < 0xD0)
  {
    specialized Set._Variant.insert(_:)(&v23, v11);
  }

  v23 = xmmword_1812E8C30;
  v12 = MEMORY[0x1865D2930](4106, &v23);
  if (v12 < 0xD0)
  {
    specialized Set._Variant.insert(_:)(&v23, v12);
  }

  v23 = xmmword_1812E8C40;
  v13 = MEMORY[0x1865D2930](4106, &v23);
  if (v13 < 0xD0)
  {
    specialized Set._Variant.insert(_:)(&v23, v13);
  }

  v23 = xmmword_1812E8C50;
  v14 = MEMORY[0x1865D2930](4106, &v23);
  if (v14 < 0xD0)
  {
    specialized Set._Variant.insert(_:)(&v23, v14);
  }

  if (("Canadian_Aboriginal" & 0x1000000000000000) != 0)
  {
    _StringGuts._slowWithCString<A>(_:)();
    v16 = v23;
    if (v23 < 0xD0)
    {
LABEL_38:
      specialized Set._Variant.insert(_:)(&v23, v16);
    }
  }

  else
  {
    if (("Canadian_Aboriginal" & 0x2000000000000000) != 0)
    {
      *&v23 = 0xD000000000000014;
      *(&v23 + 1) = "Canadian_Aboriginal" & 0xFFFFFFFFFFFFF0;
      v15 = &v23;
    }

    else
    {
      v15 = (("Canadian_Aboriginal" & 0xFFFFFFFFFFFFFF0) + 32);
    }

    v16 = MEMORY[0x1865D2930](4106, v15);
    if (v16 < 0xD0)
    {
      goto LABEL_38;
    }
  }

  v23 = xmmword_1812E8C60;
  v17 = MEMORY[0x1865D2930](4106, &v23);
  if (v17 < 0xD0)
  {
    specialized Set._Variant.insert(_:)(&v23, v17);
  }

  v23 = xmmword_1812E8C70;
  v18 = MEMORY[0x1865D2930](4106, &v23);
  if (v18 < 0xD0)
  {
    specialized Set._Variant.insert(_:)(&v23, v18);
  }

  v23 = xmmword_1812E8C80;
  v19 = MEMORY[0x1865D2930](4106, &v23);
  if (v19 < 0xD0)
  {
    specialized Set._Variant.insert(_:)(&v23, v19);
  }

  v23 = xmmword_1812E8C90;
  v20 = MEMORY[0x1865D2930](4106, &v23);
  if (v20 < 0xD0)
  {
    specialized Set._Variant.insert(_:)(&v23, v20);
  }

  v23 = xmmword_1812E8CA0;
  v21 = MEMORY[0x1865D2930](4106, &v23);
  if (v21 < 0xD0)
  {
    specialized Set._Variant.insert(_:)(&v23, v21);
  }

  return v24;
}

uint64_t closure #1 in allowIDNScript #1 (_:to:) in closure #1 in variable initialization expression of static URL.UnicodeLookalikeTable.IDNScriptAllowedList@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = MEMORY[0x1865D2930](4106, a1);
  *a2 = result;
  return result;
}

BOOL Unicode.Scalar.isLookalikeScalarOfScriptType(_:)(int a1, int a2)
{
  if (a1 > 37)
  {
    if (a1 == 38)
    {
      return a2 == 3585;
    }

    if (a1 != 40)
    {
      return 0;
    }

    if (a2 > 5572)
    {
      if (((a2 - 5573) > 0x2F || ((1 << (a2 + 59)) & 0x901002000001) == 0) && (a2 - 5741) >= 2)
      {
        return 0;
      }
    }

    else if (((a2 - 5229) > 0x3D || ((1 << (a2 - 109)) & 0x2000000000000025) == 0) && ((a2 - 5500) > 0x38 || ((1 << (a2 - 124)) & 0x108000000000801) == 0))
    {
      return 0;
    }

    return 1;
  }

  v2 = 0x2221000000002221uLL >> (a2 - 72);
  if ((a2 - 1352) >= 0x3E)
  {
    LOBYTE(v2) = 0;
  }

  v3 = a2 == 3046;
  if (a1 != 35)
  {
    v3 = 0;
  }

  if (a1 != 3)
  {
    LOBYTE(v2) = v3;
  }

  return v2 & 1;
}

uint64_t _sSS17UnicodeScalarViewV10FoundationEyABxcSTRzs6UInt32V7ElementRtzlu33_7A5247D30B7F99334E6F213A4742534ALlfCSayAEG_Tt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v20;
  if (v2)
  {
    v4 = *(a1 + 16);
    v5 = (a1 + 32);
    v6 = v2;
    result = a1;
    while (v4)
    {
      v8 = *v5;
      if (*v5 >> 11 == 27)
      {
        goto LABEL_24;
      }

      if (v8 > 0x10FFFF)
      {
        goto LABEL_22;
      }

      v21 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        v11 = result;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        result = v11;
        v3 = v21;
      }

      *(v3 + 16) = v10 + 1;
      *(v3 + 4 * v10 + 32) = v8;
      ++v5;
      --v4;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = a1;
LABEL_11:
  v12 = *(result + 16);
  v13 = v12 - v2;
  if (v12 == v2)
  {
LABEL_12:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays7UnicodeO6ScalarVGMd);
    lazy protocol witness table accessor for type [Unicode.Scalar] and conformance [A]();
    String.UnicodeScalarView.append<A>(contentsOf:)();

    return 0;
  }

  if (v12 > v2)
  {
    v14 = (result + 4 * v2 + 32);
    while (1)
    {
      v16 = *v14++;
      v15 = v16;
      if (v16 >> 11 == 27)
      {
        break;
      }

      if (v15 > 0x10FFFF)
      {
        goto LABEL_23;
      }

      v18 = *(v3 + 16);
      v17 = *(v3 + 24);
      if (v18 >= v17 >> 1)
      {
        v19 = result;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        result = v19;
      }

      *(v3 + 16) = v18 + 1;
      *(v3 + 4 * v18 + 32) = v15;
      if (!--v13)
      {
        goto LABEL_12;
      }
    }

LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t String.UnicodeScalarView.hasSuffix(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1;
  }

  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v9 = 11;
  }

  else
  {
    v9 = 7;
  }

  v10 = v9 | (v8 << 16);
  v11 = String.UnicodeScalarView.distance(from:to:)(0xFuLL, v10, a1, a2);
  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v13 = 11;
  }

  else
  {
    v13 = 7;
  }

  v14 = v13 | (v12 << 16);
  if (v11 >= String.UnicodeScalarView.distance(from:to:)(0xFuLL, v14, a3, a4))
  {
    return 0;
  }

  result = String.UnicodeScalarView.distance(from:to:)(0xFuLL, v10, a1, a2);
  if (__OFSUB__(0, result))
  {
    __break(1u);
  }

  else
  {
    result = String.UnicodeScalarView.index(_:offsetBy:)(v14, -result, a3, a4);
    if (4 * v12 >= result >> 14)
    {
      String.UnicodeScalarView.subscript.getter();
      lazy protocol witness table accessor for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView();
      String.UnicodeScalarView.append<A>(contentsOf:)();
      v16 = specialized Sequence<>.elementsEqual<A>(_:)(a1, a2, 0, 0xE000000000000000);

      return v16;
    }
  }

  __break(1u);
  return result;
}

unint64_t String.UnicodeScalarView.index(_:offsetBy:limitedBy:)(unint64_t result, int64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = a3;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  if ((a3 & 0xC) == 4 << v9)
  {
LABEL_53:
    v28 = result;
    v7 = _StringGuts._slowEnsureMatchingEncoding(_:)(v7, a4, a5);
    result = v28;
  }

  v11 = result;
  if ((result & 0xC) == v10)
  {
    v29 = result;
    v11 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a4, a5);
    result = v29;
  }

  result = _StringGuts.validateInclusiveScalarIndex(_:)(result, a4, a5);
  v7 >>= 14;
  if (a2 < 0)
  {
    v10 = 0;
    v18 = v11 >> 14;
    v19 = &v31 + 7;
    v20 = &v31 + 6;
    while (v18 < v7 || v7 < result >> 14)
    {
      if (result < 0x10000)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        v31 = v19;
        v27 = v20;
        result = String.UnicodeScalarView._foreignIndex(before:)();
        v20 = v27;
        v19 = v31;
      }

      else
      {
        v21 = result >> 16;
        if ((a5 & 0x2000000000000000) != 0)
        {
          v32 = a4;
          v33 = a5 & 0xFFFFFFFFFFFFFFLL;
          if ((v19[v21] & 0xC0) == 0x80)
          {
            v24 = &v20[v21];
            v25 = 1;
            do
            {
              ++v25;
              v26 = *v24--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v25 = 1;
          }

          v21 -= v25;
        }

        else
        {
          v22 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a4 & 0x1000000000000000) == 0)
          {
            v30 = v20;
            v31 = v19;
            v22 = _StringObject.sharedUTF8.getter();
            v20 = v30;
            v19 = v31;
          }

          do
          {
            v23 = *(v22 - 1 + v21--) & 0xC0;
          }

          while (v23 == 128);
        }

        result = (v21 << 16) | 5;
      }

      if (--v10 <= a2)
      {
        if (v18 < v7 || result >> 14 >= v7)
        {
          return result;
        }

        return 0;
      }
    }

    return 0;
  }

  v12 = v11 >> 14;
  if (a2)
  {
    if ((a5 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(a5) & 0xF;
    }

    else
    {
      v10 = a4 & 0xFFFFFFFFFFFFLL;
    }

    while (v7 < v12 || result >> 14 < v7)
    {
      v16 = result >> 16;
      if (result >> 16 >= v10)
      {
        __break(1u);
        goto LABEL_52;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
        if (!--a2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if ((a5 & 0x2000000000000000) != 0)
        {
          v32 = a4;
          v33 = a5 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v32 + v16);
        }

        else
        {
          v17 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a4 & 0x1000000000000000) == 0)
          {
            v17 = _StringObject.sharedUTF8.getter();
          }

          v13 = *(v17 + v16);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        result = ((v16 + v15) << 16) | 5;
        if (!--a2)
        {
          goto LABEL_24;
        }
      }
    }

    return 0;
  }

LABEL_24:
  if (v7 >= v12 && v7 < result >> 14)
  {
    return 0;
  }

  return result;
}

unint64_t specialized URL.UnicodeLookalikeTable.isLookalikeSequence(withScalar:previousScalar:ofScriptType:)(int a1, uint64_t c, int a3)
{
  LOBYTE(v3) = 0;
  if ((c & 0x100000000) == 0)
  {
    v4 = c;
    if (c != 47)
    {
      if (a3 == 2)
      {
        if ((a1 - 1632) >= 0xFFFFFFEB)
        {
          if ((c & 0x80000000) == 0)
          {
            LOBYTE(v3) = ublock_getCode(c) != UBLOCK_ARABIC;
            return v3 & 1;
          }

          __break(1u);
          goto LABEL_28;
        }

LABEL_19:
        LOBYTE(v3) = 0;
        return v3 & 1;
      }

      if (Unicode.Scalar.isLookalikeScalarOfScriptType(_:)(a3, a1))
      {
        if (v4 < 0)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
        }

        if (uscript_getScript() != a3)
        {
          if ((v4 - 65) > 0xFFFFFFDF)
          {
            if (v4 - 35) < 0x1E && ((0x30801005u >> (v4 - 35)))
            {
              goto LABEL_26;
            }
          }

          else
          {
            LOBYTE(v3) = 1;
            if ((v4 - 94) > 0x20 || ((1 << (v4 - 94)) & 0x1E0000007) == 0)
            {
              return v3 & 1;
            }
          }
        }
      }

      if (!Unicode.Scalar.isLookalikeScalarOfScriptType(_:)(a3, v4))
      {
        goto LABEL_19;
      }

      if (a1 < 0)
      {
        goto LABEL_29;
      }

      if (uscript_getScript() == a3)
      {
        goto LABEL_19;
      }

      if ((a1 - 65) > 0xFFFFFFDF)
      {
        if ((a1 - 35) < 0x1E)
        {
          LODWORD(v3) = 0x30801005u >> (a1 - 35);
          return v3 & 1;
        }

        goto LABEL_19;
      }

      if ((a1 - 94) < 0x21)
      {
        v3 = 0x1FFFFFF8uLL >> (a1 - 94);
        return v3 & 1;
      }

LABEL_26:
      LOBYTE(v3) = 1;
    }
  }

  return v3 & 1;
}

uint64_t specialized URL.UnicodeLookalikeTable.isLookalikeScalar(_:withPreviousScalar:)(uint64_t result, unint64_t a2)
{
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_55;
  }

  v2 = a2;
  v3 = result;
  if (!u_isprint(result) || u_isUWhiteSpace(v3) || u_hasBinaryProperty(v3, UCHAR_DEFAULT_IGNORABLE_CODE_POINT))
  {
    goto LABEL_5;
  }

  Code = ublock_getCode(v3);
  LOBYTE(result) = 1;
  if (Code == UBLOCK_IPA_EXTENSIONS || Code == UBLOCK_DESERET)
  {
    return result & 1;
  }

  if (v3 > 5940)
  {
    if (v3 <= 8207)
    {
      if (v3 <= 7835)
      {
        if ((v3 - 7428) <= 0x1E && ((1 << (v3 - 4)) & 0x71000801) != 0 || v3 == 5941)
        {
          return result & 1;
        }

        goto LABEL_42;
      }

      if ((v3 - 7836) < 2)
      {
        return result & 1;
      }

      v5 = -7934;
    }

    else
    {
      if ((v3 - 8531) < 0xB || (v3 - 8228) <= 0x2E && ((1 << (v3 - 36)) & 0x400120600009) != 0)
      {
        return result & 1;
      }

      v5 = -8208;
    }

    if ((v3 + v5) < 2)
    {
      return result & 1;
    }
  }

  else if (v3 > 1523)
  {
    if ((v3 - 1748) <= 0x30 && ((1 << (v3 + 44)) & 0x1E00010000001) != 0 || (v3 - 1524) <= 0x16 && ((1 << (v3 + 12)) & 0x600001) != 0 || (v3 - 1616) <= 0x1A && ((1 << (v3 - 80)) & 0x4010001) != 0)
    {
      return result & 1;
    }
  }

  else if (v3 <= 719)
  {
    if (v3 > 450)
    {
      if ((v3 - 567) <= 0x2A && ((1 << (v3 - 55)) & 0x40004000001) != 0 || v3 == 451)
      {
        return result & 1;
      }
    }

    else if ((v3 - 188) < 3 || v3 == 448)
    {
      return result & 1;
    }
  }

  else if ((v3 - 1417) <= 0x3B && ((1 << (v3 + 119)) & 0xF0B080000000001) != 0 || (v3 - 821) <= 3 && v3 != 822 || v3 == 720)
  {
    return result & 1;
  }

LABEL_42:
  if (v3 > 12289)
  {
    if (v3 > 65043)
    {
      if (v3 <= 65376)
      {
        if ((v3 - 65087) <= 0x1F && ((1 << (v3 - 63)) & 0xC0000001) != 0 || (v3 - 65044) < 2)
        {
          return result & 1;
        }

        v6 = -65294;
        goto LABEL_63;
      }

      if ((v3 - 128271) < 5 || (v3 - 65532) < 2)
      {
        return result & 1;
      }

      v9 = 65377;
    }

    else
    {
      if (v3 <= 13229)
      {
        if ((v3 - 12290) <= 0x33 && ((1 << (v3 - 2)) & 0xA0000000C0041) != 0)
        {
          return result & 1;
        }

        v6 = -12829;
LABEL_63:
        if ((v3 + v6) < 2)
        {
          return result & 1;
        }

        goto LABEL_97;
      }

      if (v3 <= 42800)
      {
        if ((v3 - 13230) > 0x31)
        {
          goto LABEL_97;
        }

        v7 = 1 << (v3 + 82);
        v8 = 0x2000001000003;
LABEL_84:
        if ((v7 & v8) != 0)
        {
          return result & 1;
        }

        goto LABEL_97;
      }

      if (v3 == 42801 || v3 == 42865)
      {
        return result & 1;
      }

      v9 = 42889;
    }

    goto LABEL_96;
  }

LABEL_55:
  if (v3 <= 10743)
  {
    if (v3 <= 9022)
    {
      if (v3 <= 8721)
      {
        if ((v3 - 8542) < 2)
        {
          return result & 1;
        }

        if (v3 != 46)
        {
          if (v3 != 775)
          {
            goto LABEL_97;
          }

          if ((v2 & 0x100000000) == 0 && (v2 == 305 || v2 == 567 || v2 == 1493))
          {
            return result & 1;
          }
        }

        LOBYTE(result) = 0;
        return result & 1;
      }

      if ((v3 - 8722) > 0x24)
      {
        goto LABEL_97;
      }

      v7 = 1 << (v3 - 18);
      v8 = 0x1000000019;
      goto LABEL_84;
    }

    if (v3 > 9584)
    {
      if ((v3 - 9585) < 2)
      {
        return result & 1;
      }

      v9 = 10742;
    }

    else
    {
      if (v3 == 9023 || v3 == 9134)
      {
        return result & 1;
      }

      v9 = 9290;
    }

LABEL_96:
    if (v3 == v9)
    {
      return result & 1;
    }

    goto LABEL_97;
  }

  if (v3 <= 12271)
  {
    if (v3 == 10744 || v3 == 11003)
    {
      return result & 1;
    }

    v9 = 11005;
    goto LABEL_96;
  }

  if ((v3 - 12272) < 0xC)
  {
    return result & 1;
  }

LABEL_97:
  v10 = HIDWORD(v2) & 1;
  if (specialized URL.UnicodeLookalikeTable.isLookalikeSequence(withScalar:previousScalar:ofScriptType:)(v3, v2 | (v10 << 32), 3) & 1) != 0 || (specialized URL.UnicodeLookalikeTable.isLookalikeSequence(withScalar:previousScalar:ofScriptType:)(v3, v2 | (v10 << 32), 35) & 1) != 0 || (specialized URL.UnicodeLookalikeTable.isLookalikeSequence(withScalar:previousScalar:ofScriptType:)(v3, v2 | (v10 << 32), 40))
  {
LABEL_5:
    LOBYTE(result) = 1;
    return result & 1;
  }

  LOBYTE(result) = specialized URL.UnicodeLookalikeTable.isLookalikeSequence(withScalar:previousScalar:ofScriptType:)(v3, v2 | (v10 << 32), 38);
  if (result)
  {
    return result & 1;
  }

  if ((v2 & 0x100000000) != 0)
  {
    return result & 1;
  }

  result = 0;
  if ((v3 - 1632) < 0xFFFFFFEB || v2 == 47)
  {
    return result & 1;
  }

  if ((v2 & 0x80000000) == 0)
  {
    LOBYTE(result) = ublock_getCode(v2) != UBLOCK_ARABIC;
    return result & 1;
  }

  __break(1u);
  return result;
}

uint64_t specialized URL.UnicodeLookalikeTable.allCharactersInIDNScriptAllowList(in:)(uint64_t a1, unint64_t a2)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v27 = v2;
  if (!v2)
  {
    return 1;
  }

  v25 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v26 = a2 & 0xFFFFFFFFFFFFFFLL;

  v5 = 0;
  v6 = 0;
  v7 = 1;
  v8 = &unk_1EA7B2000;
  while (1)
  {
    if ((a2 & 0x1000000000000000) == 0)
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v28[0] = a1;
        v28[1] = v26;
        v10 = v28 + v6;
      }

      else
      {
        v9 = v25;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v9 = _StringObject.sharedUTF8.getter();
        }

        v10 = (v9 + v6);
      }

      v13 = *v10;
      if ((*v10 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      v23 = (__clz(v13 ^ 0xFF) - 24);
      if (v23 > 2)
      {
        if (v23 == 3)
        {
          v13 = ((v13 & 0xF) << 12) | ((v10[1] & 0x3F) << 6) | v10[2] & 0x3F;
          v14 = 3;
        }

        else
        {
          v13 = ((v13 & 0xF) << 18) | ((v10[1] & 0x3F) << 12) | ((v10[2] & 0x3F) << 6) | v10[3] & 0x3F;
          v14 = 4;
        }

        goto LABEL_15;
      }

      if (v23 == 1)
      {
LABEL_14:
        v14 = 1;
      }

      else
      {
        v13 = v10[1] & 0x3F | ((v13 & 0x1F) << 6);
        v14 = 2;
      }

LABEL_15:
      LODWORD(v28[0]) = 0;
      goto LABEL_16;
    }

    v11 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    LODWORD(v28[0]) = 0;
    if ((v11 & 0x80000000) != 0)
    {
      break;
    }

    v13 = v11;
    v14 = v12;
LABEL_16:
    Script = uscript_getScript();
    if (SLODWORD(v28[0]) >= 1)
    {
      goto LABEL_34;
    }

    v16 = Script;
    v17 = v8;
    if (v8[268] != -1)
    {
      swift_once();
    }

    v18 = static URL.UnicodeLookalikeTable.IDNScriptAllowedList;
    if (!*(static URL.UnicodeLookalikeTable.IDNScriptAllowedList + 16))
    {
      goto LABEL_34;
    }

    v19 = MEMORY[0x1865CD030](*(static URL.UnicodeLookalikeTable.IDNScriptAllowedList + 40), v16);
    v20 = -1 << *(v18 + 32);
    v21 = v19 & ~v20;
    if (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      goto LABEL_34;
    }

    v6 += v14;
    v22 = ~v20;
    while (*(*(v18 + 48) + 8 * v21) != v16)
    {
      v21 = (v21 + 1) & v22;
      if (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    LOBYTE(v28[0]) = v7;
    if (specialized URL.UnicodeLookalikeTable.isLookalikeScalar(_:withPreviousScalar:)(v13, v5 | ((v7 & 1) << 32)))
    {
LABEL_34:

      return 0;
    }

    v7 = 0;
    v5 = v13;
    v8 = v17;
    if (v6 >= v27)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_36:

  return 1;
}

uint64_t specialized BidirectionalCollection.dropLast(_:)(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v3 = a2;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    String.UnicodeScalarView.index(_:offsetBy:limitedBy:)(v4 | (v3 << 16), -result, 0xFuLL, a2, a3);

    return String.UnicodeScalarView.subscript.getter();
  }

  return result;
}

unint64_t specialized URL.UnicodeLookalikeTable.secondLevelDomain(_:allowedBy:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a1 >> 14;
  v5 = a2 >> 14;
  if (a2 >> 14 == a1 >> 14)
  {
    return 1;
  }

  v8 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;

  while (1)
  {
    Substring.UnicodeScalarView.formIndex(before:)();
    if ((a2 & 0xC) == v9 || (a2 & 1) == 0)
    {
      break;
    }

    v13 = a2 >> 14 < v4 || a2 >> 14 >= v5;
    result = a2;
    if (v13)
    {
      goto LABEL_37;
    }

LABEL_23:
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      if (v14 != 1105)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if ((a4 & 0x2000000000000000) == 0 && (a3 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      v14 = _decodeScalar(_:startingAt:)();
      if (v14 != 1105)
      {
LABEL_30:
        if ((v14 - 1072) >= 0x20 && v14 != 45 && (v14 - 48) > 9)
        {
          v15 = v14;

          return v15 == 46;
        }
      }
    }

    if (v4 == a2 >> 14)
    {

      return 1;
    }
  }

  result = a2;
  if ((a2 & 0xC) == v9)
  {
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a3, a4);
  }

  if (result >> 14 >= v4 && result >> 14 < v5)
  {
    if ((result & 1) == 0)
    {
      _StringGuts.scalarAlignSlow(_:)(result, a3, a4);
    }

    goto LABEL_23;
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

{
  v4 = a1 >> 14;
  v5 = a2 >> 14;
  v6 = 1;
  if (a2 >> 14 == a1 >> 14)
  {
    return v6;
  }

  v9 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;

  while (1)
  {
    Substring.UnicodeScalarView.formIndex(before:)();
    if ((a2 & 0xC) == v10 || (a2 & 1) == 0)
    {
      break;
    }

    v14 = a2 >> 14 < v4 || a2 >> 14 >= v5;
    result = a2;
    if (v14)
    {
      goto LABEL_39;
    }

LABEL_24:
    if ((a4 & 0x1000000000000000) != 0)
    {
      v15 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((a4 & 0x2000000000000000) == 0 && (a3 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      v15 = _decodeScalar(_:startingAt:)();
    }

    if ((v15 - 1104) <= 0xFFFFFFDF && ((v15 - 1105) > 0xD || ((1 << (v15 - 81)) & 0x2021) == 0) && v15 != 8217 && v15 != 45 && (v15 - 48) > 9)
    {
      v16 = v15;

      return v16 == 46;
    }

    if (v4 == a2 >> 14)
    {

      return 1;
    }
  }

  result = a2;
  if ((a2 & 0xC) == v10)
  {
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a3, a4);
  }

  if (result >> 14 >= v4 && result >> 14 < v5)
  {
    if ((result & 1) == 0)
    {
      _StringGuts.scalarAlignSlow(_:)(result, a3, a4);
    }

    goto LABEL_24;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

{
  v4 = a1 >> 14;
  v5 = a2 >> 14;
  if (a2 >> 14 == a1 >> 14)
  {
    return 1;
  }

  v8 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;

  while (1)
  {
    Substring.UnicodeScalarView.formIndex(before:)();
    if ((a2 & 0xC) == v9 || (a2 & 1) == 0)
    {
      break;
    }

    v13 = a2 >> 14 < v4 || a2 >> 14 >= v5;
    result = a2;
    if (v13)
    {
      goto LABEL_44;
    }

LABEL_24:
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((a4 & 0x2000000000000000) == 0 && (a3 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      v14 = _decodeScalar(_:startingAt:)();
    }

    if ((v14 - 1104) <= 0xFFFFFFDF)
    {
      if (v14 <= 1170)
      {
        if (v14 != 1105 && v14 != 1110)
        {
          goto LABEL_38;
        }
      }

      else if (((v14 - 1171) > 0x28 || ((1 << (v14 + 109)) & 0x10050010101) == 0) && v14 != 1241 && v14 != 1257)
      {
LABEL_38:
        if (v14 != 45 && (v14 - 48) > 9)
        {
          v15 = v14;

          return v15 == 46;
        }
      }
    }

    if (v4 == a2 >> 14)
    {

      return 1;
    }
  }

  result = a2;
  if ((a2 & 0xC) == v9)
  {
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a3, a4);
  }

  if (result >> 14 >= v4 && result >> 14 < v5)
  {
    if ((result & 1) == 0)
    {
      _StringGuts.scalarAlignSlow(_:)(result, a3, a4);
    }

    goto LABEL_24;
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

{
  v4 = a1 >> 14;
  v5 = a2 >> 14;
  if (a2 >> 14 == a1 >> 14)
  {
    return 1;
  }

  v8 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;

  while (1)
  {
    Substring.UnicodeScalarView.formIndex(before:)();
    if (a2 & 0xC) != v9 && (a2)
    {
      break;
    }

    result = a2;
    if ((a2 & 0xC) == v9)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a3, a4);
    }

    if (result >> 14 < v4 || result >> 14 >= v5)
    {
      goto LABEL_40;
    }

    if ((result & 1) == 0)
    {
      _StringGuts.scalarAlignSlow(_:)(result, a3, a4);
    }

LABEL_24:
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((a4 & 0x2000000000000000) == 0 && (a3 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      v14 = _decodeScalar(_:startingAt:)();
    }

    if ((v14 - 1104) <= 0xFFFFFFDF && ((v14 - 1110) > 0x3B || ((1 << (v14 - 86)) & 0x800000000000003) == 0) && v14 != 1028 && v14 != 1105 && v14 != 45 && (v14 - 48) > 9)
    {
      v15 = v14;

      return v15 == 46;
    }

    if (v4 == a2 >> 14)
    {

      return 1;
    }
  }

  v13 = a2 >> 14 < v4 || a2 >> 14 >= v5;
  result = a2;
  if (!v13)
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

{
  v4 = a1 >> 14;
  v5 = a2 >> 14;
  v6 = 1;
  if (a2 >> 14 == a1 >> 14)
  {
    return v6;
  }

  v9 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;

  while (1)
  {
    Substring.UnicodeScalarView.formIndex(before:)();
    if (a2 & 0xC) != v10 && (a2)
    {
      break;
    }

    result = a2;
    if ((a2 & 0xC) == v10)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a3, a4);
    }

    if (result >> 14 < v4 || result >> 14 >= v5)
    {
      goto LABEL_41;
    }

    if ((result & 1) == 0)
    {
      _StringGuts.scalarAlignSlow(_:)(result, a3, a4);
    }

LABEL_23:
    if ((a4 & 0x1000000000000000) != 0)
    {
      v15 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((a4 & 0x2000000000000000) == 0 && (a3 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      v15 = _decodeScalar(_:startingAt:)();
    }

    v16 = (v15 - 1081) > 0xFFFFFFF6 || (v15 - 1097) > 0xFFFFFFF0;
    if (!v16 && ((v15 - 1106) > 0xD || ((1 << (v15 - 82)) & 0x23C1) == 0) && v15 != 45 && (v15 - 48) > 9)
    {
      v17 = v15;

      return v17 == 46;
    }

    if (v4 == a2 >> 14)
    {

      return 1;
    }
  }

  v14 = a2 >> 14 < v4 || a2 >> 14 >= v5;
  result = a2;
  if (!v14)
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

{
  v4 = a1 >> 14;
  v5 = a2 >> 14;
  v6 = 1;
  if (a2 >> 14 == a1 >> 14)
  {
    return v6;
  }

  v9 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;

  while (1)
  {
    Substring.UnicodeScalarView.formIndex(before:)();
    if (a2 & 0xC) != v10 && (a2)
    {
      break;
    }

    result = a2;
    if ((a2 & 0xC) == v10)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a3, a4);
    }

    if (result >> 14 < v4 || result >> 14 >= v5)
    {
      goto LABEL_41;
    }

    if ((result & 1) == 0)
    {
      _StringGuts.scalarAlignSlow(_:)(result, a3, a4);
    }

LABEL_23:
    if ((a4 & 0x1000000000000000) != 0)
    {
      v15 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((a4 & 0x2000000000000000) == 0 && (a3 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      v15 = _decodeScalar(_:startingAt:)();
    }

    v16 = (v15 - 1081) > 0xFFFFFFF6 || (v15 - 1097) > 0xFFFFFFF0;
    if (!v16 && ((v15 - 1107) > 0xC || ((1 << (v15 - 83)) & 0x12E5) == 0) && v15 != 45 && (v15 - 48) > 9)
    {
      v17 = v15;

      return v17 == 46;
    }

    if (v4 == a2 >> 14)
    {

      return 1;
    }
  }

  v14 = a2 >> 14 < v4 || a2 >> 14 >= v5;
  result = a2;
  if (!v14)
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

{
  v4 = a1 >> 14;
  v5 = a2 >> 14;
  if (a2 >> 14 == a1 >> 14)
  {
    return 1;
  }

  v8 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;

  while (1)
  {
    Substring.UnicodeScalarView.formIndex(before:)();
    if ((a2 & 0xC) == v9 || (a2 & 1) == 0)
    {
      break;
    }

    v13 = a2 >> 14 < v4 || a2 >> 14 >= v5;
    result = a2;
    if (v13)
    {
      goto LABEL_39;
    }

LABEL_23:
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((a4 & 0x2000000000000000) == 0 && (a3 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      v14 = _decodeScalar(_:startingAt:)();
    }

    if ((v14 - 1104) <= 0xFFFFFFDF && v14 != 1105 && v14 != 1199 && v14 != 1257 && v14 != 45 && (v14 - 48) > 9)
    {
      v15 = v14;

      return v15 == 46;
    }

    if (v4 == a2 >> 14)
    {

      return 1;
    }
  }

  result = a2;
  if ((a2 & 0xC) == v9)
  {
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a3, a4);
  }

  if (result >> 14 >= v4 && result >> 14 < v5)
  {
    if ((result & 1) == 0)
    {
      _StringGuts.scalarAlignSlow(_:)(result, a3, a4);
    }

    goto LABEL_23;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

{
  v4 = a1 >> 14;
  v5 = a2 >> 14;
  v6 = 1;
  if (a2 >> 14 == a1 >> 14)
  {
    return v6;
  }

  v9 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;

  while (1)
  {
    Substring.UnicodeScalarView.formIndex(before:)();
    if ((a2 & 0xC) == v10 || (a2 & 1) == 0)
    {
      break;
    }

    v14 = a2 >> 14 < v4 || a2 >> 14 >= v5;
    result = a2;
    if (v14)
    {
      goto LABEL_39;
    }

LABEL_23:
    if ((a4 & 0x1000000000000000) != 0)
    {
      v15 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      if (v15 != 1100)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if ((a4 & 0x2000000000000000) == 0 && (a3 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      v15 = _decodeScalar(_:startingAt:)();
      if (v15 != 1100)
      {
LABEL_30:
        if ((v15 - 1072) >= 0x1B && ((v15 - 1102) > 0xF || ((1 << (v15 - 78)) & 0x8007) == 0) && v15 != 45 && (v15 - 48) > 9)
        {
          v16 = v15;

          return v16 == 46;
        }
      }
    }

    if (v4 == a2 >> 14)
    {

      return 1;
    }
  }

  result = a2;
  if ((a2 & 0xC) == v10)
  {
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a3, a4);
  }

  if (result >> 14 >= v4 && result >> 14 < v5)
  {
    if ((result & 1) == 0)
    {
      _StringGuts.scalarAlignSlow(_:)(result, a3, a4);
    }

    goto LABEL_23;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

unint64_t specialized URL.UnicodeLookalikeTable.allCharactersAllowedByTLDRules(in:)(unint64_t a1, unint64_t a2)
{

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  if (String.hasSuffix(_:)(v2))
  {
    specialized RangeReplaceableCollection<>.removeLast(_:)(1uLL);
  }

  v3 = MEMORY[0x1E69E7CC0];
  v275 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v4 = v275;
  v6 = v275[2];
  v5 = v275[3];
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    goto LABEL_222;
  }

LABEL_4:
  v4[2] = v8;
  *(v4 + v6 + 8) = 46;
  v9 = v6 + 2;
  if (v7 < (v6 + 2))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 2, 1);
    v4 = v275;
  }

  v4[2] = v9;
  *(v4 + v8 + 8) = 1088;
  v10 = v4[3];
  if ((v6 + 3) > (v10 >> 1))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v6 + 3, 1);
  }

  v275[2] = v6 + 3;
  *(v275 + v9 + 8) = 1092;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays7UnicodeO6ScalarVGMd);
  lazy protocol witness table accessor for type [Unicode.Scalar] and conformance [A]();
  String.UnicodeScalarView.append<A>(contentsOf:)();

  v11 = String.count.getter();
  if (String.UnicodeScalarView.distance(from:to:)(0xFuLL, 7uLL, 0, 0xE000000000000000) < v11)
  {
    v12 = specialized Collection.count.getter(0, 0xE000000000000000);
    if (v12 < specialized Collection.count.getter(a1, a2))
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(a2) & 0xF;
      }

      else
      {
        v13 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
      {
        v14 = 11;
      }

      else
      {
        v14 = 7;
      }

      result = specialized Collection.count.getter(0, 0xE000000000000000);
      if (__OFSUB__(0, result))
      {
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
        goto LABEL_227;
      }

      result = String.UnicodeScalarView.index(_:offsetBy:)(v14 | (v13 << 16), -result, a1, a2);
      if (4 * v13 < result >> 14)
      {
        goto LABEL_224;
      }

      String.UnicodeScalarView.subscript.getter();
      lazy protocol witness table accessor for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView();
      String.UnicodeScalarView.append<A>(contentsOf:)();
      v16 = specialized Sequence<>.elementsEqual<A>(_:)(0, 0xE000000000000000, 0, 0xE000000000000000);

      if (v16)
      {
        v17 = specialized Collection.count.getter(0, 0xE000000000000000);

        v18 = specialized BidirectionalCollection.dropLast(_:)(v17, a1, a2);
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v25 = specialized URL.UnicodeLookalikeTable.secondLevelDomain(_:allowedBy:)(v18, v20, v22, v24);
LABEL_216:

        return v25 & 1;
      }
    }
  }

  specialized ContiguousArray.reserveCapacity(_:)(4);
  v26 = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1);
    v26 = v3;
  }

  v28 = v26[2];
  v27 = v26[3];
  v29 = v27 >> 1;
  v30 = v28 + 1;
  if (v27 >> 1 <= v28)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
    v26 = v3;
    v27 = v3[3];
    v29 = v27 >> 1;
  }

  v26[2] = v30;
  *(v26 + v28 + 8) = 46;
  v31 = v28 + 2;
  if (v29 < v31)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v31, 1);
  }

  v32 = v3;
  v3[2] = v31;
  *(v3 + v30 + 8) = 1088;
  v34 = v3[2];
  v33 = v3[3];
  v35 = v33 >> 1;
  v6 = v34 + 1;
  if (v33 >> 1 <= v34)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
    v32 = v3;
    v33 = v3[3];
    v35 = v33 >> 1;
  }

  v32[2] = v6;
  *(v32 + v34 + 8) = 1091;
  v36 = v34 + 2;
  if (v35 < v36)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v36, 1);
    v32 = v3;
  }

  v32[2] = v36;
  *(v32 + v6 + 8) = 1089;
  String.UnicodeScalarView.append<A>(contentsOf:)();

  v8 = 0;
  v37 = String.count.getter();
  if (specialized Collection.count.getter(0, 0xE000000000000000) < v37)
  {
    v38 = specialized Collection.count.getter(0, 0xE000000000000000);
    if (v38 < specialized Collection.count.getter(a1, a2))
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v39 = HIBYTE(a2) & 0xF;
      }

      else
      {
        v39 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
      {
        v40 = 11;
      }

      else
      {
        v40 = 7;
      }

      result = specialized Collection.count.getter(0, 0xE000000000000000);
      if (__OFSUB__(0, result))
      {
        goto LABEL_225;
      }

      result = String.UnicodeScalarView.index(_:offsetBy:)(v40 | (v39 << 16), -result, a1, a2);
      if (4 * v39 < result >> 14)
      {
        goto LABEL_226;
      }

      String.UnicodeScalarView.subscript.getter();
      v6 = v41;
      lazy protocol witness table accessor for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView();
      String.UnicodeScalarView.append<A>(contentsOf:)();
      v42 = specialized Sequence<>.elementsEqual<A>(_:)(0, 0xE000000000000000, 0, 0xE000000000000000);

      if (v42)
      {
        v43 = specialized Collection.count.getter(0, 0xE000000000000000);

        v44 = specialized BidirectionalCollection.dropLast(_:)(v43, a1, a2);
        v46 = v45;
        v48 = v47;
        v50 = v49;

        v25 = specialized URL.UnicodeLookalikeTable.secondLevelDomain(_:allowedBy:)(v44, v46, v48, v50);

        goto LABEL_216;
      }
    }
  }

  v275 = v3;
  specialized ContiguousArray.reserveCapacity(_:)(7);
  v51 = 0;
  v3 = &outlined read-only object #2 of URL.UnicodeLookalikeTable.allCharactersAllowedByTLDRules(in:);
  do
  {
    v52 = *(&outlined read-only object #2 of URL.UnicodeLookalikeTable.allCharactersAllowedByTLDRules(in:) + v51 + 32);
    if (v52 >> 11 == 27)
    {
      goto LABEL_220;
    }

    if (v52 > 0x10FFFF)
    {
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v8, 1);
      v4 = v275;
      v5 = v275[3];
      v7 = v5 >> 1;
      goto LABEL_4;
    }

    v8 = v275;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v275[2] + 1, 1);
      v8 = v275;
    }

    v54 = *(v8 + 16);
    v53 = *(v8 + 24);
    v6 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
      v8 = v275;
    }

    *(v8 + 16) = v6;
    *(v8 + 4 * v54 + 32) = v52;
    v51 += 4;
  }

  while (v51 != 28);
  String.UnicodeScalarView.append<A>(contentsOf:)();

  v55 = String.count.getter();
  v56 = specialized Collection.count.getter(0, 0xE000000000000000);
  v57 = MEMORY[0x1E69E7CC0];
  if (v56 >= v55)
  {
    goto LABEL_62;
  }

  v58 = specialized Collection.count.getter(0, 0xE000000000000000);
  if (v58 >= specialized Collection.count.getter(a1, a2))
  {
    goto LABEL_62;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v59 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v59 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v60 = 11;
  }

  else
  {
    v60 = 7;
  }

  result = specialized Collection.count.getter(0, 0xE000000000000000);
  if (__OFSUB__(0, result))
  {
LABEL_227:
    __break(1u);
    goto LABEL_228;
  }

  result = String.UnicodeScalarView.index(_:offsetBy:)(v60 | (v59 << 16), -result, a1, a2);
  if (4 * v59 < result >> 14)
  {
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
    goto LABEL_230;
  }

  String.UnicodeScalarView.subscript.getter();
  lazy protocol witness table accessor for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView();
  String.UnicodeScalarView.append<A>(contentsOf:)();
  v61 = specialized Sequence<>.elementsEqual<A>(_:)(0, 0xE000000000000000, 0, 0xE000000000000000);

  if (v61)
  {
    v62 = specialized Collection.count.getter(0, 0xE000000000000000);

    v63 = specialized BidirectionalCollection.dropLast(_:)(v62, a1, a2);
    v65 = v64;
    v67 = v66;
    v69 = v68;

    v25 = specialized URL.UnicodeLookalikeTable.secondLevelDomain(_:allowedBy:)(v63, v65, v67, v69);

    goto LABEL_215;
  }

LABEL_62:
  specialized ContiguousArray.reserveCapacity(_:)(5);
  v70 = v57;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1);
    v70 = v57;
  }

  v72 = v70[2];
  v71 = v70[3];
  v73 = v71 >> 1;
  v74 = v72 + 1;
  if (v71 >> 1 <= v72)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1);
    v70 = v57;
    v71 = v57[3];
    v73 = v71 >> 1;
  }

  v70[2] = v74;
  *(v70 + v72 + 8) = 46;
  v75 = v72 + 2;
  if (v73 < v75)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v75, 1);
  }

  v76 = v57;
  v57[2] = v75;
  *(v57 + v74 + 8) = 1076;
  v78 = v57[2];
  v77 = v57[3];
  v79 = v77 >> 1;
  v80 = v78 + 1;
  if (v77 >> 1 <= v78)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1);
    v76 = v57;
    v77 = v57[3];
    v79 = v77 >> 1;
  }

  v76[2] = v80;
  *(v76 + v78 + 8) = 1077;
  v81 = v78 + 2;
  if (v79 < v81)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v81, 1);
    v76 = v57;
  }

  v76[2] = v81;
  *(v76 + v80 + 8) = 1090;
  v83 = v76[2];
  v82 = v76[3];
  if (v83 >= v82 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1);
  }

  v6 = v57;
  v57[2] = v83 + 1;
  *(v57 + v83 + 8) = 1080;
  String.UnicodeScalarView.append<A>(contentsOf:)();

  v8 = 0;
  v84 = String.count.getter();
  if (specialized Collection.count.getter(0, 0xE000000000000000) >= v84)
  {
    goto LABEL_86;
  }

  v85 = specialized Collection.count.getter(0, 0xE000000000000000);
  if (v85 >= specialized Collection.count.getter(a1, a2))
  {
    goto LABEL_86;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v86 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v86 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v87 = 11;
  }

  else
  {
    v87 = 7;
  }

  result = specialized Collection.count.getter(0, 0xE000000000000000);
  if (__OFSUB__(0, result))
  {
    goto LABEL_229;
  }

  result = String.UnicodeScalarView.index(_:offsetBy:)(v87 | (v86 << 16), -result, a1, a2);
  if (4 * v86 < result >> 14)
  {
LABEL_230:
    __break(1u);
    goto LABEL_231;
  }

  String.UnicodeScalarView.subscript.getter();
  v6 = v88;
  lazy protocol witness table accessor for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView();
  String.UnicodeScalarView.append<A>(contentsOf:)();
  v89 = specialized Sequence<>.elementsEqual<A>(_:)(0, 0xE000000000000000, 0, 0xE000000000000000);

  if (v89)
  {
    v90 = specialized Collection.count.getter(0, 0xE000000000000000);

    v91 = specialized BidirectionalCollection.dropLast(_:)(v90, a1, a2);
    v93 = v92;
    v95 = v94;
    v97 = v96;

    v25 = specialized URL.UnicodeLookalikeTable.secondLevelDomain(_:allowedBy:)(v91, v93, v95, v97);

    goto LABEL_215;
  }

LABEL_86:
  v275 = v57;
  specialized ContiguousArray.reserveCapacity(_:)(7);
  v98 = 0;
  v3 = &outlined read-only object #4 of URL.UnicodeLookalikeTable.allCharactersAllowedByTLDRules(in:);
  do
  {
    v99 = *(&outlined read-only object #4 of URL.UnicodeLookalikeTable.allCharactersAllowedByTLDRules(in:) + v98 + 32);
    if (v99 >> 11 == 27)
    {
      goto LABEL_221;
    }

    if (v99 > 0x10FFFF)
    {
      goto LABEL_219;
    }

    v8 = v275;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v275[2] + 1, 1);
      v8 = v275;
    }

    v101 = *(v8 + 16);
    v100 = *(v8 + 24);
    v6 = v101 + 1;
    if (v101 >= v100 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1);
      v8 = v275;
    }

    *(v8 + 16) = v6;
    *(v8 + 4 * v101 + 32) = v99;
    v98 += 4;
  }

  while (v98 != 28);
  String.UnicodeScalarView.append<A>(contentsOf:)();

  v102 = String.count.getter();
  if (specialized Collection.count.getter(0, 0xE000000000000000) >= v102 || (v103 = specialized Collection.count.getter(0, 0xE000000000000000), v103 >= specialized Collection.count.getter(a1, a2)))
  {
LABEL_106:
    v276 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)(5);
    v115 = v276;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v276 + 16) + 1, 1);
      v115 = v276;
    }

    v117 = *(v115 + 16);
    v116 = *(v115 + 24);
    v118 = v116 >> 1;
    v119 = v117 + 1;
    if (v116 >> 1 <= v117)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v116 > 1), v117 + 1, 1);
      v115 = v276;
      v116 = *(v276 + 24);
      v118 = v116 >> 1;
    }

    *(v115 + 16) = v119;
    *(v115 + 4 * v117 + 32) = 46;
    v120 = v117 + 2;
    if (v118 < v120)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v116 > 1), v120, 1);
    }

    v121 = v276;
    *(v276 + 16) = v120;
    *(v276 + 4 * v119 + 32) = 1089;
    v123 = *(v276 + 16);
    v122 = *(v276 + 24);
    v124 = v122 >> 1;
    v125 = v123 + 1;
    if (v122 >> 1 <= v123)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v122 > 1), v123 + 1, 1);
      v121 = v276;
      v122 = *(v276 + 24);
      v124 = v122 >> 1;
    }

    *(v121 + 16) = v125;
    *(v121 + 4 * v123 + 32) = 1072;
    v126 = v123 + 2;
    if (v124 < v126)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v122 > 1), v126, 1);
      v121 = v276;
    }

    *(v121 + 16) = v126;
    *(v121 + 4 * v125 + 32) = 1081;
    v128 = *(v121 + 16);
    v127 = *(v121 + 24);
    if (v128 >= v127 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v127 > 1), v128 + 1, 1);
    }

    *(v276 + 16) = v128 + 1;
    *(v276 + 4 * v128 + 32) = 1090;
    String.UnicodeScalarView.append<A>(contentsOf:)();

    v129 = String.count.getter();
    if (specialized Collection.count.getter(0, 0xE000000000000000) < v129)
    {
      v130 = specialized Collection.count.getter(0, 0xE000000000000000);
      if (v130 < specialized Collection.count.getter(a1, a2))
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v131 = HIBYTE(a2) & 0xF;
        }

        else
        {
          v131 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
        {
          v132 = 11;
        }

        else
        {
          v132 = 7;
        }

        result = specialized Collection.count.getter(0, 0xE000000000000000);
        if (__OFSUB__(0, result))
        {
          goto LABEL_233;
        }

        result = String.UnicodeScalarView.index(_:offsetBy:)(v132 | (v131 << 16), -result, a1, a2);
        if (4 * v131 < result >> 14)
        {
          goto LABEL_234;
        }

        String.UnicodeScalarView.subscript.getter();
        lazy protocol witness table accessor for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView();
        String.UnicodeScalarView.append<A>(contentsOf:)();
        v133 = specialized Sequence<>.elementsEqual<A>(_:)(0, 0xE000000000000000, 0, 0xE000000000000000);

        if (v133)
        {
          v134 = specialized Collection.count.getter(0, 0xE000000000000000);

          v135 = specialized BidirectionalCollection.dropLast(_:)(v134, a1, a2);
          v137 = v136;
          v139 = v138;
          v141 = v140;

          v25 = specialized URL.UnicodeLookalikeTable.secondLevelDomain(_:allowedBy:)(v135, v137, v139, v141);

          goto LABEL_216;
        }
      }
    }

    v277 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)(4);
    v142 = v277;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v277 + 16) + 1, 1);
      v142 = v277;
    }

    v144 = *(v142 + 16);
    v143 = *(v142 + 24);
    v145 = v143 >> 1;
    v146 = v144 + 1;
    if (v143 >> 1 <= v144)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v143 > 1), v144 + 1, 1);
      v142 = v277;
      v143 = *(v277 + 24);
      v145 = v143 >> 1;
    }

    *(v142 + 16) = v146;
    *(v142 + 4 * v144 + 32) = 46;
    v147 = v144 + 2;
    if (v145 < v147)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v143 > 1), v147, 1);
    }

    v148 = v277;
    *(v277 + 16) = v147;
    *(v277 + 4 * v146 + 32) = 1086;
    v150 = *(v277 + 16);
    v149 = *(v277 + 24);
    v151 = v149 >> 1;
    v152 = v150 + 1;
    if (v149 >> 1 <= v150)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v149 > 1), v150 + 1, 1);
      v148 = v277;
      v149 = *(v277 + 24);
      v151 = v149 >> 1;
    }

    *(v148 + 16) = v152;
    *(v148 + 4 * v150 + 32) = 1088;
    v153 = v150 + 2;
    if (v151 < v153)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v149 > 1), v153, 1);
      v148 = v277;
    }

    *(v148 + 16) = v153;
    *(v148 + 4 * v152 + 32) = 1075;
    String.UnicodeScalarView.append<A>(contentsOf:)();

    v154 = String.count.getter();
    if (specialized Collection.count.getter(0, 0xE000000000000000) < v154)
    {
      v155 = specialized Collection.count.getter(0, 0xE000000000000000);
      if (v155 < specialized Collection.count.getter(a1, a2))
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v156 = HIBYTE(a2) & 0xF;
        }

        else
        {
          v156 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
        {
          v157 = 11;
        }

        else
        {
          v157 = 7;
        }

        result = specialized Collection.count.getter(0, 0xE000000000000000);
        if (__OFSUB__(0, result))
        {
          goto LABEL_235;
        }

        result = String.UnicodeScalarView.index(_:offsetBy:)(v157 | (v156 << 16), -result, a1, a2);
        if (4 * v156 < result >> 14)
        {
          goto LABEL_236;
        }

        String.UnicodeScalarView.subscript.getter();
        lazy protocol witness table accessor for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView();
        String.UnicodeScalarView.append<A>(contentsOf:)();
        v158 = specialized Sequence<>.elementsEqual<A>(_:)(0, 0xE000000000000000, 0, 0xE000000000000000);

        if (v158)
        {
          v159 = specialized Collection.count.getter(0, 0xE000000000000000);

          v160 = specialized BidirectionalCollection.dropLast(_:)(v159, a1, a2);
          v162 = v161;
          v164 = v163;
          v166 = v165;

          v25 = specialized URL.UnicodeLookalikeTable.secondLevelDomain(_:allowedBy:)(v160, v162, v164, v166);

          goto LABEL_215;
        }
      }
    }

    v278 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)(4);
    v167 = v278;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v278 + 16) + 1, 1);
      v167 = v278;
    }

    v169 = *(v167 + 16);
    v168 = *(v167 + 24);
    v170 = v168 >> 1;
    v171 = v169 + 1;
    if (v168 >> 1 <= v169)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v168 > 1), v169 + 1, 1);
      v167 = v278;
      v168 = *(v278 + 24);
      v170 = v168 >> 1;
    }

    *(v167 + 16) = v171;
    *(v167 + 4 * v169 + 32) = 46;
    v172 = v169 + 2;
    if (v170 < (v169 + 2))
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v168 > 1), v169 + 2, 1);
    }

    v173 = v278;
    *(v278 + 16) = v172;
    *(v278 + 4 * v171 + 32) = 1073;
    v175 = *(v278 + 16);
    v174 = *(v278 + 24);
    v176 = v174 >> 1;
    v177 = v175 + 1;
    if (v174 >> 1 <= v175)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v174 > 1), v175 + 1, 1);
      v173 = v278;
      v174 = *(v278 + 24);
      v176 = v174 >> 1;
    }

    *(v173 + 16) = v177;
    *(v173 + 4 * v175 + 32) = 1077;
    if (v176 < (v175 + 2))
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v174 > 1), v175 + 2, 1);
      v173 = v278;
    }

    *(v173 + 16) = v175 + 2;
    *(v173 + 4 * v177 + 32) = 1083;
    String.UnicodeScalarView.append<A>(contentsOf:)();

    v178 = String.count.getter();
    if (specialized Collection.count.getter(0, 0xE000000000000000) < v178)
    {
      v179 = specialized Collection.count.getter(0, 0xE000000000000000);
      if (v179 < specialized Collection.count.getter(a1, a2))
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v180 = HIBYTE(a2) & 0xF;
        }

        else
        {
          v180 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
        {
          v181 = 11;
        }

        else
        {
          v181 = 7;
        }

        result = specialized Collection.count.getter(0, 0xE000000000000000);
        if (__OFSUB__(0, result))
        {
          goto LABEL_237;
        }

        result = String.UnicodeScalarView.index(_:offsetBy:)(v181 | (v180 << 16), -result, a1, a2);
        if (4 * v180 < result >> 14)
        {
          goto LABEL_238;
        }

        String.UnicodeScalarView.subscript.getter();
        lazy protocol witness table accessor for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView();
        String.UnicodeScalarView.append<A>(contentsOf:)();
        v182 = specialized Sequence<>.elementsEqual<A>(_:)(0, 0xE000000000000000, 0, 0xE000000000000000);

        if (v182)
        {
          v183 = specialized Collection.count.getter(0, 0xE000000000000000);

          v184 = specialized BidirectionalCollection.dropLast(_:)(v183, a1, a2);
          v186 = v185;
          v188 = v187;
          v190 = v189;

          v25 = specialized URL.UnicodeLookalikeTable.secondLevelDomain(_:allowedBy:)(v184, v186, v188, v190);
          goto LABEL_214;
        }
      }
    }

    v279 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)(4);
    v191 = v279;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v279 + 16) + 1, 1);
      v191 = v279;
    }

    v193 = *(v191 + 16);
    v192 = *(v191 + 24);
    v194 = v192 >> 1;
    v195 = v193 + 1;
    if (v192 >> 1 <= v193)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v192 > 1), v193 + 1, 1);
      v191 = v279;
      v192 = *(v279 + 24);
      v194 = v192 >> 1;
    }

    *(v191 + 16) = v195;
    *(v191 + 4 * v193 + 32) = 46;
    v196 = v193 + 2;
    if (v194 < (v193 + 2))
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v192 > 1), v193 + 2, 1);
    }

    v197 = v279;
    *(v279 + 16) = v196;
    *(v279 + 4 * v195 + 32) = 1179;
    v199 = *(v279 + 16);
    v198 = *(v279 + 24);
    v200 = v198 >> 1;
    v201 = v199 + 1;
    if (v198 >> 1 <= v199)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v198 > 1), v199 + 1, 1);
      v197 = v279;
      v198 = *(v279 + 24);
      v200 = v198 >> 1;
    }

    *(v197 + 16) = v201;
    *(v197 + 4 * v199 + 32) = 1072;
    if (v200 < (v199 + 2))
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v198 > 1), v199 + 2, 1);
      v197 = v279;
    }

    *(v197 + 16) = v199 + 2;
    *(v197 + 4 * v201 + 32) = 1079;
    String.UnicodeScalarView.append<A>(contentsOf:)();

    v202 = String.count.getter();
    if (specialized Collection.count.getter(0, 0xE000000000000000) >= v202)
    {
      goto LABEL_196;
    }

    v203 = specialized Collection.count.getter(0, 0xE000000000000000);
    if (v203 >= specialized Collection.count.getter(a1, a2))
    {
      goto LABEL_196;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v204 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v204 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
    {
      v205 = 11;
    }

    else
    {
      v205 = 7;
    }

    result = specialized Collection.count.getter(0, 0xE000000000000000);
    if (__OFSUB__(0, result))
    {
      goto LABEL_239;
    }

    result = String.UnicodeScalarView.index(_:offsetBy:)(v205 | (v204 << 16), -result, a1, a2);
    if (4 * v204 < result >> 14)
    {
      goto LABEL_240;
    }

    String.UnicodeScalarView.subscript.getter();
    lazy protocol witness table accessor for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView();
    String.UnicodeScalarView.append<A>(contentsOf:)();
    v206 = specialized Sequence<>.elementsEqual<A>(_:)(0, 0xE000000000000000, 0, 0xE000000000000000);

    if (v206)
    {
      v207 = specialized Collection.count.getter(0, 0xE000000000000000);

      v208 = specialized BidirectionalCollection.dropLast(_:)(v207, a1, a2);
      v210 = v209;
      v212 = v211;
      v214 = v213;

      v25 = specialized URL.UnicodeLookalikeTable.secondLevelDomain(_:allowedBy:)(v208, v210, v212, v214);
    }

    else
    {
LABEL_196:
      v215 = _sSS17UnicodeScalarViewV10FoundationEyABxcSTRzs6UInt32V7ElementRtzlu33_7A5247D30B7F99334E6F213A4742534ALlfCSayAEG_Tt0g5(&outlined read-only object #9 of URL.UnicodeLookalikeTable.allCharactersAllowedByTLDRules(in:));
      v217 = v216;
      v218 = String.count.getter();
      if (specialized Collection.count.getter(v215, v217) >= v218 || (String.UnicodeScalarView.hasSuffix(_:)(v215, v217, a1, a2) & 1) == 0)
      {
        v227 = _sSS17UnicodeScalarViewV10FoundationEyABxcSTRzs6UInt32V7ElementRtzlu33_7A5247D30B7F99334E6F213A4742534ALlfCSayAEG_Tt0g5(&outlined read-only object #10 of URL.UnicodeLookalikeTable.allCharactersAllowedByTLDRules(in:));
        v229 = v228;
        v230 = String.count.getter();
        if (specialized Collection.count.getter(v227, v229) < v230 && (String.UnicodeScalarView.hasSuffix(_:)(v227, v229, a1, a2) & 1) != 0)
        {
          v231 = specialized Collection.count.getter(v227, v229);

          v232 = specialized BidirectionalCollection.dropLast(_:)(v231, a1, a2);
          v234 = v233;
          v236 = v235;
          v238 = v237;

          v25 = specialized URL.UnicodeLookalikeTable.secondLevelDomain(_:allowedBy:)(v232, v234, v236, v238);
        }

        else
        {
          v239 = _sSS17UnicodeScalarViewV10FoundationEyABxcSTRzs6UInt32V7ElementRtzlu33_7A5247D30B7F99334E6F213A4742534ALlfCSayAEG_Tt0g5(&outlined read-only object #11 of URL.UnicodeLookalikeTable.allCharactersAllowedByTLDRules(in:));
          v241 = v240;
          v242 = String.count.getter();
          if (specialized Collection.count.getter(v239, v241) < v242 && (String.UnicodeScalarView.hasSuffix(_:)(v239, v241, a1, a2) & 1) != 0)
          {
            v243 = specialized Collection.count.getter(v239, v241);

            v244 = specialized BidirectionalCollection.dropLast(_:)(v243, a1, a2);
            v246 = v245;
            v248 = v247;
            v250 = v249;

            v25 = specialized URL.UnicodeLookalikeTable.secondLevelDomain(_:allowedBy:)(v244, v246, v248, v250);
          }

          else
          {
            v251 = _sSS17UnicodeScalarViewV10FoundationEyABxcSTRzs6UInt32V7ElementRtzlu33_7A5247D30B7F99334E6F213A4742534ALlfCSayAEG_Tt0g5(&outlined read-only object #12 of URL.UnicodeLookalikeTable.allCharactersAllowedByTLDRules(in:));
            v253 = v252;
            v254 = String.count.getter();
            if (specialized Collection.count.getter(v251, v253) < v254 && (String.UnicodeScalarView.hasSuffix(_:)(v251, v253, a1, a2) & 1) != 0)
            {
              v255 = specialized Collection.count.getter(v251, v253);

              v256 = specialized BidirectionalCollection.dropLast(_:)(v255, a1, a2);
              v273 = v257;
              v259 = v258;
              v261 = v260;

              v25 = specialized URL.UnicodeLookalikeTable.secondLevelDomain(_:allowedBy:)(v256, v273, v259, v261);

              goto LABEL_216;
            }

            v262 = _sSS17UnicodeScalarViewV10FoundationEyABxcSTRzs6UInt32V7ElementRtzlu33_7A5247D30B7F99334E6F213A4742534ALlfCSayAEG_Tt0g5(&outlined read-only object #13 of URL.UnicodeLookalikeTable.allCharactersAllowedByTLDRules(in:));
            v264 = v263;
            v265 = String.count.getter();
            if (specialized Collection.count.getter(v262, v264) >= v265 || (String.UnicodeScalarView.hasSuffix(_:)(v262, v264, a1, a2) & 1) == 0)
            {

              v25 = 0;
              goto LABEL_216;
            }

            v266 = specialized Collection.count.getter(v262, v264);

            v267 = specialized BidirectionalCollection.dropLast(_:)(v266, a1, a2);
            v274 = v268;
            v270 = v269;
            v272 = v271;

            v25 = specialized URL.UnicodeLookalikeTable.secondLevelDomain(_:allowedBy:)(v267, v274, v270, v272);
          }
        }

LABEL_214:

LABEL_215:

        goto LABEL_216;
      }

      v219 = specialized Collection.count.getter(v215, v217);

      v220 = specialized BidirectionalCollection.dropLast(_:)(v219, a1, a2);
      v222 = v221;
      v224 = v223;
      v226 = v225;

      v25 = specialized URL.UnicodeLookalikeTable.secondLevelDomain(_:allowedBy:)(v220, v222, v224, v226);
    }

    goto LABEL_215;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v104 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v104 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v105 = 11;
  }

  else
  {
    v105 = 7;
  }

  result = specialized Collection.count.getter(0, 0xE000000000000000);
  if (!__OFSUB__(0, result))
  {
    result = String.UnicodeScalarView.index(_:offsetBy:)(v105 | (v104 << 16), -result, a1, a2);
    if (4 * v104 < result >> 14)
    {
      goto LABEL_232;
    }

    String.UnicodeScalarView.subscript.getter();
    lazy protocol witness table accessor for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView();
    String.UnicodeScalarView.append<A>(contentsOf:)();
    v106 = specialized Sequence<>.elementsEqual<A>(_:)(0, 0xE000000000000000, 0, 0xE000000000000000);

    if (v106)
    {
      v107 = specialized Collection.count.getter(0, 0xE000000000000000);

      v108 = specialized BidirectionalCollection.dropLast(_:)(v107, a1, a2);
      v110 = v109;
      v112 = v111;
      v114 = v113;

      v25 = specialized URL.UnicodeLookalikeTable.secondLevelDomain(_:allowedBy:)(v108, v110, v112, v114);

      goto LABEL_216;
    }

    goto LABEL_106;
  }

LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
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
  return result;
}

unint64_t lazy protocol witness table accessor for type [Unicode.Scalar] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Unicode.Scalar] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Unicode.Scalar] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays7UnicodeO6ScalarVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Unicode.Scalar] and conformance [A]);
  }

  return result;
}

uint64_t static AnyHashable._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  outlined destroy of AnyHashable?(a2);
  type metadata accessor for NSObject();
  lazy protocol witness table accessor for type NSObject and conformance NSObject();
  v3 = a1;
  return AnyHashable.init<A>(_:)();
}

BOOL static AnyHashable._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  outlined destroy of AnyHashable?(a2);
  v7[0] = a1;
  type metadata accessor for NSObject();
  lazy protocol witness table accessor for type NSObject and conformance NSObject();
  v4 = a1;
  AnyHashable.init<A>(_:)();
  outlined init with copy of AnyHashable?(a2, v7);
  v5 = v7[3] != 0;
  outlined destroy of AnyHashable?(v7);
  return v5;
}

uint64_t static AnyHashable._unconditionallyBridgeFromObjectiveC(_:)(void *a1)
{
  if (a1)
  {
    type metadata accessor for NSObject();
    lazy protocol witness table accessor for type NSObject and conformance NSObject();
    v2 = a1;
  }

  return AnyHashable.init<A>(_:)();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance AnyHashable(void *a1, uint64_t a2)
{
  outlined destroy of AnyHashable?(a2);
  type metadata accessor for NSObject();
  lazy protocol witness table accessor for type NSObject and conformance NSObject();
  v3 = a1;
  return AnyHashable.init<A>(_:)();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance AnyHashable(void *a1)
{
  if (a1)
  {
    type metadata accessor for NSObject();
    lazy protocol witness table accessor for type NSObject and conformance NSObject();
    v2 = a1;
  }

  return AnyHashable.init<A>(_:)();
}

void NSDate.customPlaygroundQuickLook.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  [v4 setDateStyle_];
  [v4 setTimeStyle_];
  v5 = [v4 stringFromDate_];
  if (!v5)
  {

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v6 = v5;
  isTaggedPointer = _objc_isTaggedPointer(v5);
  v8 = v6;
  v9 = v8;
  if ((isTaggedPointer & 1) == 0)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v8);
  if (!TaggedPointerTag)
  {
    goto LABEL_17;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v13 = v12;

LABEL_25:
      *a1 = v11;
      *(a1 + 8) = v13;
      *(a1 + 32) = 0;
      return;
    }

LABEL_7:
    if (__CFStringIsCF())
    {
      v11 = 0;

LABEL_11:
      v13 = 0xE000000000000000;
      goto LABEL_25;
    }

    v14 = v9;
    v15 = String.init(_nativeStorage:)();
    if (v16)
    {
      v11 = v15;
      v13 = v16;

      goto LABEL_25;
    }

    if (![v14 length])
    {

      goto LABEL_10;
    }

    v11 = String.init(_cocoaString:)();
    v13 = v20;
    goto LABEL_23;
  }

  v17 = [v9 UTF8String];
  if (v17)
  {
    v18 = String.init(utf8String:)(v17);
    if (v19)
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_17:
    _CFIndirectTaggedPointerStringGetContents();
    v18 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v19)
    {
      [v9 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v11 = v21;
      v13 = v22;
LABEL_23:

      goto LABEL_24;
    }

LABEL_18:
    v11 = v18;
    v13 = v19;

LABEL_24:
    goto LABEL_25;
  }

  __break(1u);
}

void NSItemProvider.registerObject<A>(ofClass:visibility:loadHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a3;
  v13[5] = a4;
  v15[4] = partial apply for closure #1 in NSItemProvider.registerObject<A>(ofClass:visibility:loadHandler:);
  v15[5] = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderWriting?, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
  v15[3] = &block_descriptor_21;
  v14 = _Block_copy(v15);

  [v6 registerObjectOfClass:ObjCClassFromMetadata visibility:a2 loadHandler:v14];
  _Block_release(v14);
}

uint64_t partial apply for closure #1 in NSItemProvider.registerObject<A>(ofClass:visibility:loadHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v5[1] = *(v2 + 16);
  v6 = a1;
  v7 = a2;
  return v3(partial apply for closure #1 in closure #1 in NSItemProvider.registerObject<A>(ofClass:visibility:loadHandler:), v5);
}

uint64_t closure #1 in closure #1 in NSItemProvider.registerObject<A>(ofClass:visibility:loadHandler:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9, v11);
  v14 = *(a5 - 8);
  if ((*(v14 + 48))(v13, 1, a5) == 1)
  {
    (*(v10 + 8))(v13, v9);
    v15 = 0;
  }

  else
  {
    v15 = dispatch thunk of _ObjectiveCBridgeable._bridgeToObjectiveC()();
    (*(v14 + 8))(v13, a5);
  }

  a3(v15, a2);
  return swift_unknownObjectRelease();
}

id thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderWriting?, @guaranteed Error?) -> ()) -> (@owned NSProgress?)(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSItemProviderWriting?, @unowned NSError?) -> (), v4);

  return v5;
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSItemProviderWriting?, @unowned NSError?) -> ()(uint64_t a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    v6 = _swift_stdlib_bridgeErrorToNSError();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, a1);
}

id NSItemProvider.loadObject<A>(ofClass:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a2;
  v11[5] = a3;
  v15[4] = partial apply for closure #1 in NSItemProvider.loadObject<A>(ofClass:completionHandler:);
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
  v15[3] = &block_descriptor_6_0;
  v12 = _Block_copy(v15);

  v13 = [v5 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v12];
  _Block_release(v12);
  return v13;
}

uint64_t closure #1 in NSItemProvider.loadObject<A>(ofClass:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v15 - v12;
  if (v11)
  {
    v15[1] = v11;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSItemProviderReading_pMd);
    swift_dynamicCast();
    (*(*(a5 - 8) + 56))(v13, 0, 1, a5);
  }

  else
  {
    (*(*(a5 - 8) + 56))(v13, 1, 1, a5);
  }

  a3(v13, a2);
  return (*(v10 + 8))(v13, v9);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo12NSURLSessionC10FoundationE10AsyncBytesV8IteratorV_Tgq5(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](_sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo12NSURLSessionC10FoundationE10AsyncBytesV8IteratorV_Tgq5TY0_, 0, 0);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo12NSURLSessionC10FoundationE10AsyncBytesV8IteratorV_Tgq5TY0_()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 8);
  if (v2 == *(v1 + 16))
  {
    v7 = swift_task_alloc();
    *(v0 + 48) = v7;
    *v7 = v0;
    v7[1] = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo12NSURLSessionC10FoundationE10AsyncBytesV8IteratorV_Tgq5TQ1_;

    return _AsyncBytesBuffer.reloadBufferAndNext()();
  }

  else
  {
    v3 = *v2;
    *(v1 + 8) = v2 + 1;
    *(v0 + 64) = v3;
    if (*(v0 + 24))
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    return MEMORY[0x1EEE6DFA0](_sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo12NSURLSessionC10FoundationE10AsyncBytesV8IteratorV_Tgq5TY3_, v4, v6);
  }
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo12NSURLSessionC10FoundationE10AsyncBytesV8IteratorV_Tgq5TQ1_(__int16 a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    if (*(v4 + 24))
    {
      swift_getObjectType();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v9 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo12NSURLSessionC10FoundationE10AsyncBytesV8IteratorV_Tgq5TY2_;
  }

  else
  {
    *(v4 + 65) = HIBYTE(a1) & 1;
    *(v4 + 64) = a1;
    if (*(v4 + 24))
    {
      swift_getObjectType();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v8;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v9 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo12NSURLSessionC10FoundationE10AsyncBytesV8IteratorV_Tgq5TY3_;
  }

  return MEMORY[0x1EEE6DFA0](v9, v5, v7);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF10Foundation3URLV10AsyncBytesV0G8IteratorV_Tgq5(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](_sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF10Foundation3URLV10AsyncBytesV0G8IteratorV_Tgq5TY0_, 0, 0);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF10Foundation3URLV10AsyncBytesV0G8IteratorV_Tgq5TY0_()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 8);
  if (v2 == *(v1 + 16))
  {
    v7 = swift_task_alloc();
    *(v0 + 48) = v7;
    *v7 = v0;
    v7[1] = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF10Foundation3URLV10AsyncBytesV0G8IteratorV_Tgq5TQ1_;

    return _AsyncBytesBuffer.reloadBufferAndNext()();
  }

  else
  {
    v3 = *v2;
    *(v1 + 8) = v2 + 1;
    *(v0 + 64) = v3;
    if (*(v0 + 24))
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    return MEMORY[0x1EEE6DFA0](_sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF10Foundation3URLV10AsyncBytesV0G8IteratorV_Tgq5TY3_, v4, v6);
  }
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF10Foundation3URLV10AsyncBytesV0G8IteratorV_Tgq5TQ1_(__int16 a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    if (*(v4 + 24))
    {
      swift_getObjectType();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v9 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF10Foundation3URLV10AsyncBytesV0G8IteratorV_Tgq5TY2_;
  }

  else
  {
    *(v4 + 65) = HIBYTE(a1) & 1;
    *(v4 + 64) = a1;
    if (*(v4 + 24))
    {
      swift_getObjectType();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v8;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v9 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF10Foundation3URLV10AsyncBytesV0G8IteratorV_Tgq5TY3_;
  }

  return MEMORY[0x1EEE6DFA0](v9, v5, v7);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF10Foundation3URLV10AsyncBytesV0G8IteratorV_Tgq5TY2_()
{
  v0[2] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

id @nonobjc NSFileHandle.__allocating_init(forReadingFrom:)(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 432))(ObjectType, v1);
  v8[0] = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    if (v8[0])
    {
      v8[0];
    }

    else
    {
      if (one-time initialization token for _nilObjCError != -1)
      {
        swift_once();
      }

      v6 = _nilObjCError;
    }

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v4;
}

uint64_t URL.AsyncBytes.AsyncIterator.buffer.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectRelease();
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t closure #1 in URL.AsyncBytes.AsyncIterator.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[34] = a2;
  v3[35] = a3;
  v3[33] = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in URL.AsyncBytes.AsyncIterator.init(_:), 0, 0);
}

uint64_t closure #1 in URL.AsyncBytes.AsyncIterator.init(_:)()
{
  v1 = *(v0 + 280);
  ObjectType = swift_getObjectType();
  if ((*(v1 + 144))(ObjectType, v1))
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v3 = static IOActor.default;

    return MEMORY[0x1EEE6DFA0](closure #1 in URL.AsyncBytes.AsyncIterator.init(_:), v3, 0);
  }

  else
  {
    v10 = *(v0 + 272);
    v4 = [objc_opt_self() sharedSession];
    *(v0 + 296) = v4;
    type metadata accessor for NSURLSession.CancelState();
    inited = swift_initStackObject();
    *(v0 + 304) = inited;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12NSURLSessionC10FoundationE11CancelStateC0F0VSo16os_unfair_lock_sVGMd);
    v6 = swift_initStackObject();
    *(v0 + 312) = v6;
    *(v6 + 32) = 0;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(inited + 16) = v6;
    v7 = swift_task_alloc();
    *(v0 + 320) = v7;
    *(v7 + 16) = v4;
    *(v7 + 24) = v10;
    *(v7 + 40) = 0;
    *(v7 + 48) = inited;
    v8 = swift_task_alloc();
    *(v0 + 328) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12NSURLSessionC10FoundationE10AsyncBytesV_So13NSURLResponseCtMd);
    *v8 = v0;
    v8[1] = closure #1 in URL.AsyncBytes.AsyncIterator.init(_:);

    return MEMORY[0x1EEE6DE18](v0 + 208, &async function pointer to partial apply for closure #1 in NSURLSession.bytes(from:delegate:));
  }
}

{
  v4 = v0;
  v3 = *MEMORY[0x1E69E9840];
  type metadata accessor for NSFileHandle();
  v2 = *(v0 + 272);
  swift_unknownObjectRetain();
  *(v0 + 288) = @nonobjc NSFileHandle.__allocating_init(forReadingFrom:)(&v2);

  return MEMORY[0x1EEE6DFA0](closure #1 in URL.AsyncBytes.AsyncIterator.init(_:), 0, 0);
}

{
  v1 = v0[36];
  type metadata accessor for _AsyncBytesBuffer.Storage();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  v3 = [v1 fileDescriptor];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = swift_dynamicCastClassUnconditional();
  v6 = *(v5 + 16);
  *(v5 + 16) = &async function pointer to partial apply for closure #1 in NSFileHandle.AsyncBytes.Iterator.init(file:);
  *(v5 + 24) = v4;
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v6);
  swift_unknownObjectRelease();
  v7 = v0[33];
  *v7 = v2;
  v7[1] = v2 + 33;
  v7[2] = v2 + 33;
  v8 = swift_dynamicCastClassUnconditional();
  v9 = *(v8 + 16);
  v0[43] = v9;
  v0[44] = *(v8 + 24);
  if (!v9)
  {
    __break(1u);
  }

  v13 = (v9 + *v9);
  v10 = swift_task_alloc();
  v0[45] = v10;
  *v10 = v0;
  v10[1] = closure #1 in URL.AsyncBytes.AsyncIterator.init(_:);
  v11 = v0[33];

  return v13(v11);
}

{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = closure #1 in URL.AsyncBytes.AsyncIterator.init(_:);
  }

  else
  {

    v2 = closure #1 in URL.AsyncBytes.AsyncIterator.init(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v0[43]);
  v1 = v0[1];
  v2 = v0[47];

  return v1(v2);
}

{
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(*(v0 + 344));
  v1 = *(v0 + 8);

  return v1();
}

void *closure #1 in URL.AsyncBytes.AsyncIterator.init(_:)()
{
  swift_setDeallocating();

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    v6 = v2;
    LODWORD(v4) = [v5 isErrorStatusCode_];

    if (v4)
    {
      isTaggedPointer = _objc_isTaggedPointer(@"NSURLErrorDomain");
      v8 = @"NSURLErrorDomain";
      v9 = v8;
      v78 = v6;
      if (!isTaggedPointer)
      {
LABEL_12:
        v19 = (v0 + 248);
        *(v0 + 394) = 0;
        *(v0 + 248) = 0;
        *(v0 + 386) = 0;
        if (!__CFStringIsCF())
        {
          v21 = v9;
          String.init(_nativeStorage:)();
          if (v22 || (v29 = [(__CFString *)v21 length], (*v19 = v29) == 0))
          {

            goto LABEL_39;
          }

          goto LABEL_29;
        }

        v20 = *v19;
        if (*v19)
        {
          if (*(v0 + 387) == 1)
          {
            if (*(v0 + 394))
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_39:
            v33 = objc_allocWithZone(NSError);
            v34 = String._bridgeToObjectiveCImpl()();

            v35 = [v33 initWithDomain:v34 code:-1011 userInfo:_NativeDictionary.bridged()()];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v36 = [v35 domain];
            if (!v36)
            {
              goto LABEL_53;
            }

            v37 = v36;
            v38 = _objc_isTaggedPointer(v36);
            v39 = v37;
            v40 = v39;
            if ((v38 & 1) == 0)
            {
LABEL_45:
              v45 = (v0 + 256);
              *(v0 + 391) = 0;
              *(v0 + 256) = 0;
              *(v0 + 392) = 0;
              if (__CFStringIsCF())
              {
                v46 = *v45;
                if (*v45)
                {
                  if (*(v0 + 393) == 1)
                  {
                    if (*(v0 + 391))
                    {
                      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                    }

                    else
                    {
                      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                    }

                    v54 = String.init<A>(_immortalCocoaString:count:encoding:)();
                    goto LABEL_75;
                  }

                  if ((*(v0 + 392) & 1) == 0)
                  {
LABEL_74:
                    v54 = String.init(_cocoaString:)();
LABEL_75:
                    v42 = v54;
                    v44 = v55;
                    goto LABEL_76;
                  }

                  if (*(v0 + 391) == 1)
                  {
                    v52 = swift_task_alloc();
                    *(v52 + 16) = v40;
                    *(v52 + 24) = v45;
                    *(v52 + 32) = 1536;
                  }

                  else
                  {
                    v46 = [v40 lengthOfBytesUsingEncoding_];
                    v52 = swift_task_alloc();
                    *(v52 + 16) = v40;
                    *(v52 + 24) = v45;
                    *(v52 + 32) = 134217984;
                  }

                  *(v52 + 40) = v46;
                  v42 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v44 = v56;

                  v57 = HIBYTE(v44) & 0xF;
                  if ((v44 & 0x2000000000000000) == 0)
                  {
                    v57 = v42 & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v57)
                  {

                    goto LABEL_74;
                  }

                  goto LABEL_59;
                }
              }

              else
              {
                v47 = v40;
                v48 = String.init(_nativeStorage:)();
                if (v49)
                {
                  v42 = v48;
                  v44 = v49;

                  goto LABEL_77;
                }

                v53 = [v47 length];
                *v45 = v53;
                if (v53)
                {
                  goto LABEL_74;
                }
              }

LABEL_53:
              v42 = 0;
              v44 = 0xE000000000000000;
              goto LABEL_77;
            }

            TaggedPointerTag = _objc_getTaggedPointerTag(v39);
            if (TaggedPointerTag)
            {
              if (TaggedPointerTag != 22)
              {
                if (TaggedPointerTag == 2)
                {
                  *(swift_task_alloc() + 16) = v40;
                  v42 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v44 = v43;

LABEL_77:
                  v58 = v9;
                  v59 = v58;
                  if (!isTaggedPointer)
                  {
                    goto LABEL_82;
                  }

                  v60 = _objc_getTaggedPointerTag(v58);
                  if (!v60)
                  {
                    goto LABEL_93;
                  }

                  if (v60 != 22)
                  {
                    if (v60 == 2)
                    {
                      *(swift_task_alloc() + 16) = v59;
                      v61 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v63 = v62;

                      goto LABEL_111;
                    }

LABEL_82:
                    v64 = (v0 + 240);
                    *(v0 + 388) = 0;
                    *(v0 + 240) = 0;
                    *(v0 + 390) = 0;
                    if (__CFStringIsCF())
                    {
                      v61 = *v64;
                      if (!*v64)
                      {

                        v63 = 0xE000000000000000;
                        goto LABEL_111;
                      }

                      if (*(v0 + 390) == 1)
                      {
                        if (*(v0 + 388))
                        {
                          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                        }

                        else
                        {
                          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                        }

                        v72 = String.init<A>(_immortalCocoaString:count:encoding:)();
                        goto LABEL_110;
                      }

                      if (*(v0 + 389))
                      {
                        if (*(v0 + 388) == 1)
                        {
                          v70 = swift_task_alloc();
                          *(v70 + 16) = v59;
                          *(v70 + 24) = v64;
                          *(v70 + 32) = 1536;
                        }

                        else
                        {
                          v61 = [(__CFString *)v59 lengthOfBytesUsingEncoding:4];
                          v70 = swift_task_alloc();
                          *(v70 + 16) = v59;
                          *(v70 + 24) = v64;
                          *(v70 + 32) = 134217984;
                        }

                        *(v70 + 40) = v61;
                        v61 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v63 = v74;

                        v75 = HIBYTE(v63) & 0xF;
                        if ((v63 & 0x2000000000000000) == 0)
                        {
                          v75 = v61 & 0xFFFFFFFFFFFFLL;
                        }

                        if (v75)
                        {

                          goto LABEL_111;
                        }
                      }
                    }

                    else
                    {
                      v65 = v59;
                      v66 = String.init(_nativeStorage:)();
                      if (v67)
                      {
                        v61 = v66;
                        v63 = v67;

                        goto LABEL_111;
                      }

                      v71 = [(__CFString *)v65 length];
                      *v64 = v71;
                      if (!v71)
                      {

                        v61 = 0;
                        v63 = 0xE000000000000000;
                        goto LABEL_111;
                      }
                    }

                    v72 = String.init(_cocoaString:)();
LABEL_110:
                    v61 = v72;
                    v63 = v73;
LABEL_111:
                    if (v42 == v61 && v44 == v63)
                    {
                    }

                    else
                    {
                      v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v76 & 1) == 0)
                      {
                        __break(1u);
                      }
                    }

                    swift_willThrow();

                    v77 = *(v0 + 8);

                    return v77();
                  }

                  result = [(__CFString *)v59 UTF8String];
                  if (result)
                  {
                    v68 = String.init(utf8String:)(result);
                    if (v69)
                    {
                      goto LABEL_94;
                    }

                    __break(1u);
LABEL_93:
                    *(v0 + 52) = 0;
                    _CFIndirectTaggedPointerStringGetContents();
                    v68 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v69)
                    {
                      [(__CFString *)v59 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();
                      swift_unknownObjectRelease();

                      swift_dynamicCast();
                      v61 = *(v0 + 176);
                      v63 = *(v0 + 184);
                      goto LABEL_111;
                    }

LABEL_94:
                    v61 = v68;
                    v63 = v69;

                    goto LABEL_111;
                  }

                  goto LABEL_121;
                }

                goto LABEL_45;
              }

              result = [v40 UTF8String];
              if (!result)
              {
LABEL_122:
                __break(1u);
                return result;
              }

              v50 = String.init(utf8String:)(result);
              if (v51)
              {
LABEL_58:
                v42 = v50;
                v44 = v51;
LABEL_59:

LABEL_76:
                goto LABEL_77;
              }

              __break(1u);
            }

            *(v0 + 54) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v50 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v51)
            {
              [v40 mutableCopy];
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();

              swift_dynamicCast();
              v42 = *(v0 + 192);
              v44 = *(v0 + 200);
              goto LABEL_76;
            }

            goto LABEL_58;
          }

          if (*(v0 + 386))
          {
            if (*(v0 + 394) == 1)
            {
              v25 = swift_task_alloc();
              *(v25 + 16) = v9;
              *(v25 + 24) = v19;
              *(v25 + 32) = 1536;
              *(v25 + 40) = v20;
            }

            else
            {
              v30 = [(__CFString *)v9 lengthOfBytesUsingEncoding:4];
              v31 = swift_task_alloc();
              *(v31 + 16) = v9;
              *(v31 + 24) = v19;
              *(v31 + 32) = 134217984;
              *(v31 + 40) = v30;
            }

            v26 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v28 = v27;

            v32 = HIBYTE(v28) & 0xF;
            if ((v28 & 0x2000000000000000) == 0)
            {
              v32 = v26 & 0xFFFFFFFFFFFFLL;
            }

            if (v32)
            {
              goto LABEL_38;
            }
          }

LABEL_29:
          String.init(_cocoaString:)();
          goto LABEL_39;
        }

LABEL_38:

        goto LABEL_39;
      }

      v10 = _objc_getTaggedPointerTag(v8);
      if (!v10)
      {
LABEL_23:
        *(v0 + 384) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v24)
        {
          [(__CFString *)v9 mutableCopy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();

          swift_dynamicCast();
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      if (v10 != 22)
      {
        if (v10 == 2)
        {
          *(swift_task_alloc() + 16) = v9;
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_39;
        }

        goto LABEL_12;
      }

      result = [(__CFString *)v9 UTF8String];
      if (result)
      {
        String.init(utf8String:)(result);
        if (v23)
        {
          goto LABEL_38;
        }

        __break(1u);
        goto LABEL_23;
      }

LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }
  }

  type metadata accessor for _AsyncBytesBuffer.Storage();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;

  v12 = swift_dynamicCastClassUnconditional();
  v13 = *(v12 + 16);
  *(v12 + 16) = &async function pointer to partial apply for closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:);
  *(v12 + 24) = v1;
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v13);
  swift_unknownObjectRelease();
  v14 = *(v0 + 264);
  *v14 = v11;
  v14[1] = v11 + 33;
  v14[2] = v11 + 33;
  result = swift_dynamicCastClassUnconditional();
  v16 = result[2];
  *(v0 + 344) = v16;
  *(v0 + 352) = result[3];
  if (!v16)
  {
    __break(1u);
    goto LABEL_120;
  }

  v79 = (v16 + *v16);
  v17 = swift_task_alloc();
  *(v0 + 360) = v17;
  *v17 = v0;
  v17[1] = closure #1 in URL.AsyncBytes.AsyncIterator.init(_:);
  v18 = *(v0 + 264);

  return v79(v18);
}

uint64_t closure #1 in URL.AsyncBytes.AsyncIterator.init(_:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v5 = closure #1 in URL.AsyncBytes.AsyncIterator.init(_:);
  }

  else
  {
    *(v4 + 376) = a1;
    v5 = closure #1 in URL.AsyncBytes.AsyncIterator.init(_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t _s10Foundation3URLV10AsyncBytesV0C8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = _sSo12NSURLSessionC10FoundationE10AsyncBytesV8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF10Foundation3URLV10AsyncBytesV0G8IteratorV_Tgq5(a2, a3);
}

uint64_t URL.AsyncBytes.makeAsyncIterator()()
{
  type metadata accessor for _AsyncBytesBuffer.Storage();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = *v0;
  swift_unknownObjectRetain();
  v3 = swift_dynamicCastClassUnconditional();
  v4 = *(v3 + 16);
  *(v3 + 16) = &async function pointer to partial apply for closure #1 in URL.AsyncBytes.AsyncIterator.init(_:);
  *(v3 + 24) = v2;
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v4);
  return v1;
}

uint64_t partial apply for closure #1 in URL.AsyncBytes.AsyncIterator.init(_:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:);

  return closure #1 in URL.AsyncBytes.AsyncIterator.init(_:)(a1, v5, v4);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance URL.AsyncBytes@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _AsyncBytesBuffer.Storage();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = *v1;
  swift_unknownObjectRetain();
  v5 = swift_dynamicCastClassUnconditional();
  v6 = *(v5 + 16);
  *(v5 + 16) = &closure #1 in URL.AsyncBytes.AsyncIterator.init(_:)partial apply;
  *(v5 + 24) = v4;
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v6);
  result = swift_unknownObjectRelease();
  *a1 = v3;
  a1[1] = v3 + 33;
  a1[2] = v3 + 33;
  return result;
}

unint64_t lazy protocol witness table accessor for type URL.AsyncBytes.AsyncIterator and conformance URL.AsyncBytes.AsyncIterator()
{
  result = lazy protocol witness table cache variable for type URL.AsyncBytes.AsyncIterator and conformance URL.AsyncBytes.AsyncIterator;
  if (!lazy protocol witness table cache variable for type URL.AsyncBytes.AsyncIterator and conformance URL.AsyncBytes.AsyncIterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.AsyncBytes.AsyncIterator and conformance URL.AsyncBytes.AsyncIterator);
  }

  return result;
}

uint64_t closure #1 in URL.AsyncBytes.AsyncIterator.init(_:)partial apply(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:)partial apply;

  return closure #1 in URL.AsyncBytes.AsyncIterator.init(_:)(a1, v5, v4);
}

unint64_t type metadata accessor for NSFileHandle()
{
  result = lazy cache variable for type metadata for NSFileHandle;
  if (!lazy cache variable for type metadata for NSFileHandle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSFileHandle);
  }

  return result;
}

uint64_t one-time initialization function for compatibility2(uint64_t a1, uint64_t a2, BOOL *a3)
{
  result = _NSLinkedOnOrAfterLuckier();
  if (result)
  {
    v5 = 0;
  }

  else
  {
    result = _CFBundleMainBundleHasCompatibilityIdentifier();
    v5 = result != 0;
  }

  *a3 = v5;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSayyXlG_SnySS5IndexVGs5NeverOTg5(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v7;
    }

    v17 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v7 = v17;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1865CC0E0](v8, a3);
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a3 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v15 = v10;
      a1(&v16, &v15);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;
      swift_unknownObjectRelease();
      v17 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v7 = v17;
      }

      *(v7 + 16) = v12 + 1;
      *(v7 + 16 * v12 + 32) = v16;
      ++v8;
      if (v9 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

void StringProtocol.localizedStandardContains<A>(_:)()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v14 = static LocaleCache.cache;
  LocaleCache._currentAndCache.getter();
  v1 = v0;
  swift_unknownObjectRetain();
  StringProtocol._ephemeralString.getter();
  StringProtocol._ephemeralString.getter();
  v2 = String._bridgeToObjectiveCImpl()();

  v3 = String._bridgeToObjectiveCImpl()();

  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v13 >> 14 < v14 >> 14)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = StringProtocol._toUTF16Offsets(_:)();
  v6 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v4;
  ObjectType = swift_getObjectType();
  v9 = (*(v1 + 488))(ObjectType, v1);
  v10 = [v2 rangeOfString:v3 options:129 range:v7 locale:{v6, v9}];
  v12 = v11;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_8:
    swift_unknownObjectRelease_n();
    return;
  }

  if (!__OFADD__(v10, v12))
  {
    StringProtocol._toUTF16Indices(_:)();
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
}

id static String.localizedName(of:)(void *a1)
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

uint64_t StringProtocol._toRelativeNSRange(_:)()
{
  result = StringProtocol._toUTF16Offsets(_:)();
  if (__OFSUB__(v1, result))
  {
    __break(1u);
  }

  return result;
}

uint64_t NSString.__allocating_init(format:locale:arguments:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveCImpl()();

  v7 = a3[3];
  if (!v7)
  {
    v15 = 0;
    goto LABEL_7;
  }

  v20 = a4;
  v8 = __swift_project_boxed_opaque_existential_1(a3, v7);
  v19[2] = v19;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = *(v9 + 16);
  v13(v19 - v12, v11);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    v19[1] = v19;
    v18 = MEMORY[0x1EEE9AC00](result);
    (v13)(v19 - v12, v19 - v12, v7, v18);
    v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v9 + 8))(v19 - v12, v7);
    goto LABEL_5;
  }

  if (v10 == 8)
  {
    v15 = *(v19 - v12);
    v16 = *(v9 + 8);
    swift_unknownObjectRetain();
    v16(v19 - v12, v7);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(a3);
    a4 = v20;
LABEL_7:
    v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFormat:v6 locale:v15 arguments:a4];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for stringLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, stringLogger);
  __swift_project_value_buffer(v0, stringLogger);
  return Logger.init(subsystem:category:)();
}

char *static String.availableStringEncodings.getter()
{
  v0 = [objc_opt_self() availableStringEncodings];
  if (!*v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = v0;
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v5 = *v1;
  v3 = v1 + 1;
  v4 = v5;
  v6 = *(v2 + 2);
  do
  {
    v7 = *(v2 + 3);
    if (v6 >= v7 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v6 + 1, 1, v2);
    }

    *(v2 + 2) = v6 + 1;
    *&v2[8 * v6 + 32] = v4;
    v8 = *v3++;
    v4 = v8;
    ++v6;
  }

  while (v8);
  return v2;
}

id static String.defaultCStringEncoding.getter@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() defaultCStringEncoding];
  *a1 = result;
  return result;
}

id String.init(bytesNoCopy:length:encoding:freeWhenDone:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  result = [objc_allocWithZone(NSString) initWithBytesNoCopy:a1 length:a2 encoding:*a3 freeWhenDone:a4 & 1];
  if (result)
  {
    v5 = result;
    isTaggedPointer = _objc_isTaggedPointer(result);
    v7 = v5;
    v8 = v7;
    if (!isTaggedPointer)
    {
LABEL_7:
      if (__CFStringIsCF())
      {

        return 0;
      }

      v11 = v8;
      v12 = String.init(_nativeStorage:)();
      if (v13)
      {
        v14 = v12;

        return v14;
      }

      if (![v11 length])
      {

        return 0;
      }

      v19 = String.init(_cocoaString:)();
      goto LABEL_22;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v7);
    if (!TaggedPointerTag)
    {
      _CFIndirectTaggedPointerStringGetContents();
      v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v18)
      {
        v19 = v17;
      }

      else
      {
        [v8 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v19 = v20;
      }

LABEL_22:

      return v19;
    }

    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        return v10;
      }

      goto LABEL_7;
    }

    result = [v8 UTF8String];
    if (result)
    {
      result = String.init(utf8String:)(result);
      if (v15)
      {
        v16 = result;

        return v16;
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

id String.init(utf16CodeUnitsNoCopy:count:freeWhenDone:)(uint64_t a1, uint64_t a2, char a3)
{
  result = [objc_allocWithZone(NSString) initWithCharactersNoCopy:a1 length:a2 freeWhenDone:a3 & 1];
  if (result)
  {
    v4 = result;
    isTaggedPointer = _objc_isTaggedPointer(result);
    v6 = v4;
    v7 = v6;
    if (!isTaggedPointer)
    {
LABEL_7:
      if (__CFStringIsCF())
      {

        return 0;
      }

      v10 = v7;
      v11 = String.init(_nativeStorage:)();
      if (v12)
      {
        v13 = v11;

        return v13;
      }

      if (![v10 length])
      {

        return 0;
      }

      v18 = String.init(_cocoaString:)();
      goto LABEL_22;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v6);
    if (!TaggedPointerTag)
    {
      _CFIndirectTaggedPointerStringGetContents();
      v16 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v17)
      {
        v18 = v16;
      }

      else
      {
        [v7 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v18 = v19;
      }

LABEL_22:

      return v18;
    }

    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        return v9;
      }

      goto LABEL_7;
    }

    result = [v7 UTF8String];
    if (result)
    {
      result = String.init(utf8String:)(result);
      if (v14)
      {
        v15 = result;

        return v15;
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

id String.init(contentsOf:)(__int128 *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = *a1;
  v3 = objc_allocWithZone(NSString);
  swift_unknownObjectRetain();
  v4 = @nonobjc NSString.init(contentsOf:usedEncoding:)(&v18, 0);
  if (v1)
  {
    return v2;
  }

  v5 = v4;
  isTaggedPointer = _objc_isTaggedPointer(v4);
  v7 = v5;
  v8 = v7;
  if (!isTaggedPointer)
  {
LABEL_7:
    *&v18 = 0;
    if (__CFStringIsCF())
    {
      v2 = v18;
      if (!v18)
      {

        return v2;
      }
    }

    else
    {
      v10 = v8;
      v11 = String.init(_nativeStorage:)();
      if (v12)
      {
        v2 = v11;

        return v2;
      }

      *&v18 = [v10 length];
      if (!v18)
      {

        return 0;
      }
    }

    v2 = String.init(_cocoaString:)();
LABEL_22:

    return v2;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  if (!TaggedPointerTag)
  {
    goto LABEL_16;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v2 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v2;
    }

    goto LABEL_7;
  }

  result = [v8 UTF8String];
  if (result)
  {
    v14 = String.init(utf8String:)(result);
    if (v15)
    {
LABEL_17:
      v2 = v14;

      goto LABEL_22;
    }

    __break(1u);
LABEL_16:
    _CFIndirectTaggedPointerStringGetContents();
    v14 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v16)
    {
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v2 = v17;
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t String.init(format:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = specialized withVaList<A>(_:_:)(a3, a3, a1, a2, 0, 0);

  return v6;
}

id StringProtocol.canBeConverted(to:)(uint64_t *a1)
{
  v1 = *a1;
  StringProtocol._ephemeralString.getter();
  v2 = String._bridgeToObjectiveCImpl()();

  v3 = [v2 canBeConvertedToEncoding_];
  swift_unknownObjectRelease();
  return v3;
}

id StringProtocol.commonPrefix<A>(with:options:)(uint64_t a1, uint64_t a2)
{
  StringProtocol._ephemeralString.getter();
  v3 = String._bridgeToObjectiveCImpl()();

  StringProtocol._ephemeralString.getter();
  v4 = String._bridgeToObjectiveCImpl()();

  v5 = [v3 commonPrefixWithString:v4 options:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v5)
  {
    return 0;
  }

  isTaggedPointer = _objc_isTaggedPointer(v5);
  v7 = v5;
  v8 = v7;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v18 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v20 = v21;
    }

LABEL_21:

    return v20;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v10;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v12 = v8;
    v13 = String.init(_nativeStorage:)();
    if (v14)
    {
      v15 = v13;

      return v15;
    }

    if (![v12 length])
    {

      return 0;
    }

    v20 = String.init(_cocoaString:)();
    goto LABEL_21;
  }

  result = [v8 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v16)
    {
      v17 = result;

      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id StringProtocol.completePath(into:caseSensitive:matchesInto:filterTypes:)(void *a1, char a2, uint64_t *a3, void *a4)
{
  v51[4] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (!a3)
    {
      StringProtocol._ephemeralString.getter();
      v33 = String._bridgeToObjectiveCImpl()();

      if (a4)
      {

        v34 = _ContiguousArrayBuffer._asCocoaArray()();
      }

      else
      {
        v34 = 0;
      }

      v38 = [v33 completePathIntoString:0 caseSensitive:a2 & 1 matchesIntoArray:0 filterTypes:v34];
      swift_unknownObjectRelease();

      return v38;
    }

    v51[0] = 0;
    StringProtocol._ephemeralString.getter();
    v15 = String._bridgeToObjectiveCImpl()();

    if (a4)
    {

      a4 = _ContiguousArrayBuffer._asCocoaArray()();
    }

    v9 = [v15 completePathIntoString:0 caseSensitive:a2 & 1 matchesIntoArray:v51 filterTypes:a4];
    swift_unknownObjectRelease();

    v12 = 0;
    v16 = v51[0];
    v11 = v51[0];
    v17 = v51[0];
    if (v16)
    {
LABEL_6:
      type metadata accessor for __SwiftDeferredNSArray();
      if (swift_dynamicCastClass())
      {
        v14 = v11;
      }

      else
      {
        v21 = v11;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      v22 = swift_dynamicCastClass();
      if (!v22)
      {
        swift_unknownObjectRelease();
        [v11 copy];
        v23 = _bridgeCocoaArray<A>(_:)();
        swift_unknownObjectRelease();
        v24 = specialized _arrayForceCast<A, B>(_:)(v23);

        v22 = v24;
      }

      *a3 = v22;

      if (v12)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }

LABEL_12:
    if (v12)
    {
LABEL_22:
      if (a1)
      {
        goto LABEL_23;
      }

      return v9;
    }

LABEL_28:

    return v9;
  }

  v51[0] = 0;
  if (a3)
  {
    v48[0] = 0;
    StringProtocol._ephemeralString.getter();
    v8 = String._bridgeToObjectiveCImpl()();

    if (a4)
    {

      a4 = _ContiguousArrayBuffer._asCocoaArray()();
    }

    v9 = [v8 completePathIntoString:v51 caseSensitive:a2 & 1 matchesIntoArray:v48 filterTypes:a4];
    swift_unknownObjectRelease();

    v10 = v51[0];
    v11 = v48[0];
    v12 = v10;
    v13 = v10;
    if (v11)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  StringProtocol._ephemeralString.getter();
  v18 = String._bridgeToObjectiveCImpl()();

  if (a4)
  {

    a4 = _ContiguousArrayBuffer._asCocoaArray()();
  }

  v9 = [v18 completePathIntoString:v51 caseSensitive:a2 & 1 matchesIntoArray:0 filterTypes:a4];
  swift_unknownObjectRelease();

  v19 = v51[0];
  v20 = v51[0];
  v11 = 0;
  if (!v19)
  {
    goto LABEL_28;
  }

  v12 = v20;
LABEL_23:
  isTaggedPointer = _objc_isTaggedPointer(v12);
  v26 = v12;
  v27 = v26;
  if (!isTaggedPointer)
  {
    goto LABEL_29;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v26);
  if (!TaggedPointerTag)
  {
    goto LABEL_45;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v29 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v31 = v30;

LABEL_63:
      *a1 = v29;
      a1[1] = v31;

      goto LABEL_64;
    }

LABEL_29:
    LOBYTE(v48[0]) = 0;
    v51[0] = 0;
    LOBYTE(v49) = 0;
    v50 = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v29 = v51[0];
      if (!v51[0])
      {

        v31 = 0xE000000000000000;
        goto LABEL_63;
      }

      if (v50 == 1)
      {
        if (v48[0])
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v42 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_62;
      }

      if (v49)
      {
        if (LOBYTE(v48[0]) != 1)
        {
          IsCF = [v27 lengthOfBytesUsingEncoding_];
        }

        MEMORY[0x1EEE9AC00](IsCF);
        v45 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v31 = v46;
        v47 = HIBYTE(v46) & 0xF;
        if ((v46 & 0x2000000000000000) == 0)
        {
          v47 = v45 & 0xFFFFFFFFFFFFLL;
        }

        if (v47)
        {
          v29 = v45;

          goto LABEL_63;
        }
      }
    }

    else
    {
      v35 = v27;
      v36 = String.init(_nativeStorage:)();
      if (v37)
      {
        v29 = v36;
        v31 = v37;

        goto LABEL_63;
      }

      v51[0] = [v35 length];
      if (!v51[0])
      {

        v29 = 0;
        v31 = 0xE000000000000000;
        goto LABEL_63;
      }
    }

    v42 = String.init(_cocoaString:)();
LABEL_62:
    v29 = v42;
    v31 = v43;
    goto LABEL_63;
  }

  result = [v27 UTF8String];
  if (result)
  {
    v40 = String.init(utf8String:)(result);
    if (v41)
    {
LABEL_46:
      v29 = v40;
      v31 = v41;

      goto LABEL_63;
    }

    __break(1u);
LABEL_45:
    v49 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v40 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v41)
    {
      [v27 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v44 = v48[1];
      *a1 = v48[0];
      a1[1] = v44;

LABEL_64:

      return v9;
    }

    goto LABEL_46;
  }

  __break(1u);
  return result;
}

id StringProtocol.decomposedStringWithCanonicalMapping.getter(uint64_t a1, uint64_t a2)
{

  return StringProtocol.decomposedStringWithCanonicalMapping.getter(a1, a2, &selRef_decomposedStringWithCanonicalMapping);
}

id StringProtocol.decomposedStringWithCompatibilityMapping.getter(uint64_t a1, uint64_t a2)
{

  return StringProtocol.decomposedStringWithCanonicalMapping.getter(a1, a2, &selRef_decomposedStringWithCompatibilityMapping);
}

uint64_t StringProtocol.enumerateLines(invoking:)(uint64_t a1, uint64_t a2)
{
  StringProtocol._ephemeralString.getter();
  v4 = String._bridgeToObjectiveCImpl()();

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v8[4] = partial apply for closure #1 in StringProtocol.enumerateLines(invoking:);
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed String, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v8[3] = &block_descriptor_22;
  v6 = _Block_copy(v8);

  [v4 enumerateLinesUsingBlock_];
  _Block_release(v6);
  return swift_unknownObjectRelease();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed String, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a2);
  v7 = v6;

  v4(v5, v7, a3);
}

id StringProtocol.getCString(_:maxLength:encoding:)(char **a1, int64_t a2, uint64_t *a3)
{
  v5 = *a3;
  StringProtocol._ephemeralString.getter();
  v6 = String._bridgeToObjectiveCImpl()();

  v7 = *a1;
  v8 = *(*a1 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0, v7);
  }

  if (v8 < a2)
  {
    a2 = v8;
  }

  *a1 = v7;

  v9 = [v6 getCString:v7 + 32 maxLength:a2 encoding:v5];

  swift_unknownObjectRelease();
  return v9;
}

id StringProtocol.hash.getter()
{
  StringProtocol._ephemeralString.getter();
  v0 = String._bridgeToObjectiveCImpl()();

  v1 = [v0 hash];
  swift_unknownObjectRelease();
  return v1;
}

id StringProtocol.lengthOfBytes(using:)(uint64_t *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *a1;
  StringProtocol._ephemeralString.getter();
  v6 = String._bridgeToObjectiveCImpl()();

  v7 = [v6 *a4];
  swift_unknownObjectRelease();
  return v7;
}

uint64_t StringProtocol.propertyList()()
{
  StringProtocol._ephemeralString.getter();
  v0 = String._bridgeToObjectiveCImpl()();

  v1 = [v0 propertyList];
  swift_unknownObjectRelease();
  _bridgeAnyObjectToAny(_:)();

  return swift_unknownObjectRelease();
}

unint64_t StringProtocol.propertyListFromStringsFileFormat()()
{
  StringProtocol._ephemeralString.getter();
  v0 = String._bridgeToObjectiveCImpl()();

  v1 = [v0 propertyListFromStringsFileFormat];
  swift_unknownObjectRelease();
  if (v1)
  {
    *&v39 = 0;
    result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZs11AnyHashableV_ypTt1g5(v1, &v39);
    v28 = v39;
    if (v39)
    {

      if (*(v28 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
        v3 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v3 = MEMORY[0x1E69E7CC8];
      }

      v5 = 1 << *(v28 + 32);
      v6 = -1;
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      v7 = v6 & *(v28 + 64);
      v8 = (v5 + 63) >> 6;
      v26 = v3 + 64;

      v9 = 0;
      v4 = v3;
      v27 = v3;
      if (v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      while (1)
      {
        v13 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v13 >= v8)
        {

          return v4;
        }

        v7 = *(v28 + 64 + 8 * v13);
        ++v9;
        if (v7)
        {
          while (1)
          {
            v14 = __clz(__rbit64(v7));
            v7 &= v7 - 1;
            v15 = v14 | (v13 << 6);
            outlined init with copy of AnyHashable(*(v28 + 48) + 40 * v15, &v39);
            outlined init with copy of Any(*(v28 + 56) + 32 * v15, v41 + 8);
            v37[0] = v41[0];
            v37[1] = v41[1];
            v38 = v42;
            v35 = v39;
            v36 = v40;
            v29[2] = v39;
            v29[3] = v40;
            v30 = *&v41[0];
            swift_dynamicCast();
            outlined init with take of Any((v37 + 8), v29);
            swift_dynamicCast();
            v16 = v33;
            v17 = v34;
            v19 = v31;
            v18 = v32;
            v4 = v27;
            result = specialized __RawDictionaryStorage.find<A>(_:)(v33, v34);
            if (v20)
            {
              v10 = 16 * result;
              v11 = (v27[6] + 16 * result);
              *v11 = v16;
              v11[1] = v17;

              v12 = (v27[7] + v10);
              *v12 = v19;
              v12[1] = v18;

              v9 = v13;
              if (!v7)
              {
                goto LABEL_13;
              }
            }

            else
            {
              if (v27[2] >= v27[3])
              {
                goto LABEL_24;
              }

              *(v26 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
              v21 = (v27[6] + 16 * result);
              *v21 = v16;
              v21[1] = v17;
              v22 = (v27[7] + 16 * result);
              *v22 = v19;
              v22[1] = v18;
              v23 = v27[2];
              v24 = __OFADD__(v23, 1);
              v25 = v23 + 1;
              if (v24)
              {
                goto LABEL_25;
              }

              v27[2] = v25;
              v9 = v13;
              if (!v7)
              {
                goto LABEL_13;
              }
            }

LABEL_12:
            v13 = v9;
          }
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t StringProtocol.fastestEncoding.getter@<X0>(SEL *a1@<X2>, void *a2@<X8>)
{
  StringProtocol._ephemeralString.getter();
  v4 = String._bridgeToObjectiveCImpl()();

  v5 = [v4 *a1];
  result = swift_unknownObjectRelease();
  *a2 = v5;
  return result;
}

id StringProtocol.appendingFormat<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  StringProtocol._ephemeralString.getter();
  v3 = String._bridgeToObjectiveCImpl()();

  v4 = StringProtocol._ephemeralString.getter();
  v6 = v5;

  specialized withVaList<A>(_:_:)(v7, a2, v4, v6, 0, 0);

  v8 = String._bridgeToObjectiveCImpl()();

  v9 = [v3 stringByAppendingString_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v9)
  {
    return 0;
  }

  isTaggedPointer = _objc_isTaggedPointer(v9);
  v11 = v9;
  v12 = v11;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v11);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v22 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      [v12 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v24 = v25;
    }

LABEL_21:

    return v24;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v14 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v14;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v16 = v12;
    v17 = String.init(_nativeStorage:)();
    if (v18)
    {
      v19 = v17;

      return v19;
    }

    if (![v16 length])
    {

      return 0;
    }

    v24 = String.init(_cocoaString:)();
    goto LABEL_21;
  }

  result = [v12 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v20)
    {
      v21 = result;

      return v21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t StringProtocol.appending<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2, v4);
  v9[0] = String.init<A>(_:)();
  v9[1] = v7;
  String.append<A>(contentsOf:)();
  return v9[0];
}

id StringProtocol.padding<A>(toLength:withPad:startingAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  StringProtocol._ephemeralString.getter();
  v5 = String._bridgeToObjectiveCImpl()();

  StringProtocol._ephemeralString.getter();
  v6 = String._bridgeToObjectiveCImpl()();

  v7 = [v5 stringByPaddingToLength:a1 withString:v6 startingAtIndex:a3];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v7)
  {
    return 0;
  }

  isTaggedPointer = _objc_isTaggedPointer(v7);
  v9 = v7;
  v10 = v9;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v9);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v20 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v21)
    {
      v22 = v20;
    }

    else
    {
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v22 = v23;
    }

LABEL_21:

    return v22;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v12;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v14 = v10;
    v15 = String.init(_nativeStorage:)();
    if (v16)
    {
      v17 = v15;

      return v17;
    }

    if (![v14 length])
    {

      return 0;
    }

    v22 = String.init(_cocoaString:)();
    goto LABEL_21;
  }

  result = [v10 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v18)
    {
      v19 = result;

      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}