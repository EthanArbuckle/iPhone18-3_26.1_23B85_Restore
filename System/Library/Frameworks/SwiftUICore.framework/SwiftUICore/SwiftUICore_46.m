uint64_t LazyLayoutViewCache.ensureRemoved(item:)(uint64_t result)
{
  v2 = *(result + 386);
  if (v2 != 2 && (v2 & 1) == 0)
  {
    v4 = result;
    (*(*v1 + 432))(partial apply for implicit closure #2 in LazyLayoutViewCache.ensureRemoved(item:), result);
    swift_beginAccess();
    if (static ReuseTrace.recorder)
    {
      AGGraphAddTraceEvent();
    }

    AGSubgraphApply();
    result = AGSubgraphRemoveChild();
    *(v4 + 386) = 1;
  }

  return result;
}

double _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(uint64_t a1)
{
  *(a1 + 288) = 0;
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 296) = 2;
  return result;
}

void LazyStack<>.place(subviews:context:cache:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v174 = a4;
  v186 = a3;
  v184 = a1;
  v9 = type metadata accessor for MinorProperties();
  v178 = *(v9 - 8);
  v179 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v177 = (&v159 - v10);
  v11 = type metadata accessor for StackPlacement();
  v188 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v180 = &v159 - v12;
  v13 = type metadata accessor for PlacementProperties();
  v187 = v11;
  v173 = v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v159 - v17;
  v181 = TupleTypeMetadata2;
  v183 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v159 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v182 = &v159 - v23;
  memcpy(v190, a2, 0x129uLL);
  v24 = *(a6 + 32);
  v185 = a6;
  v169 = v24(a5, a6);
  v25 = *(a2 + 104);
  v26 = *(a2 + 136);
  v189[4] = *(a2 + 120);
  v189[5] = v26;
  v189[6] = *(a2 + 152);
  v27 = *(a2 + 72);
  v189[0] = *(a2 + 56);
  v189[1] = v27;
  v189[2] = *(a2 + 88);
  v189[3] = v25;
  if (v190[37])
  {
    ScrollGeometry.outsetForAX(limit:)(*&v190[35]);
  }

  v28 = v189[5];
  v30 = *(&v189[6] + 1);
  v29 = *&v189[6];
  memcpy(v189, v190, 0x129uLL);
  LazyStack<>.resolvedPlacerProperties(subviews:context:cache:)(v184, v189, v186, a5, v185, v18);
  v31 = v183;
  v32 = v181;
  if ((*(v183 + 48))(v18, 1, v181) == 1)
  {
    (*(v16 + 8))(v18, v15);
    return;
  }

  v33 = v182;
  (*(v31 + 32))(v182, v18, v32);
  v35 = v31 + 16;
  v34 = *(v31 + 16);
  v34(v21, v33, v32);
  v36 = v34;
  v175 = v34;
  v37 = v32;
  v38 = *(v32 + 48);
  (*(v188 + 32))(v180, v21, v187);
  v39 = v173;
  v40 = (*(v173 - 1) + 8);
  v41 = *v40;
  v170 = a5;
  v42 = v40;
  (v41)(&v21[v38], v173);
  v36(v21, v33, v37);
  v43 = *(v37 + 48);
  v165 = *(v178 + 16);
  v166 = v178 + 16;
  v165(v177, &v21[v43], v179);
  v44 = &v21[v43];
  v45 = v187;
  v171 = v42;
  (v41)(v44, v39);
  v176 = v41;
  v172 = *(v188 + 8);
  v188 += 8;
  v172(v21, v45);
  v46 = v33;
  v47 = v33;
  v48 = v175;
  v175(v21, v47, v37);
  v49 = &v21[*(v37 + 48) + v39[9]];
  v50 = *v49;
  v51 = *(v49 + 1);
  v41();
  v52 = v172;
  v172(v21, v45);
  v48(v21, v46, v37);
  v167 = v21[*(v37 + 48) + v39[10]];
  v176();
  v52(v21, v45);
  v53 = v182;
  v168 = v35;
  v175(v21, v182, v37);
  v164 = v21[*(v37 + 48) + v39[11]];
  v176();
  v54 = v187;
  v52(v21, v187);
  memcpy(v189, v190, 0x129uLL);
  v55 = v184;
  v56 = v180;
  v57 = specialized LazyStack<>.resolveIndexAndPosition(subviews:context:cache:placer:properties:)(v184, v189, v186, v180, &v53[*(v37 + 48)], v170, v185);
  if (v59)
  {
    (*(v178 + 8))(v177, v179);
    v52(v56, v54);
    (*(v183 + 8))(v53, v37);
    return;
  }

  v60 = v57;
  v61 = v55;
  v62 = v177;
  v163 = *v177;
  v63 = 2 * v163;
  *&v189[0] = 2 * v163;
  v64 = StackPlacement.place(subviews:from:position:stopping:style:)(v58, v61, v60, 0, 1, v189, v54);
  if (AGGraphHasDeadlinePassed())
  {
    AGGraphCancelUpdate();
    goto LABEL_9;
  }

  if (*(v56 + *(v54 + 100)) == 1)
  {
LABEL_9:
    (*(v178 + 8))(v62, v179);
    v172(v56, v54);
    (*(v183 + 8))(v182, v181);
    *(v174 + 64) = 1;
    return;
  }

  v162 = v64;
  v159 = v63;
  v65 = *(v56 + *(v54 + 84));
  v66 = v174;

  v160 = v65;
  *v66 = v65;
  v161 = v169 & 1;
  v191.origin = v28;
  v191.size.width = v29;
  v191.size.height = v30;
  CGRectIsNull(v191);
  v192.origin.x = StackPlacement.placedBounds(minorAxis:)(v187);
  v193.origin = v28;
  v193.size.width = v29;
  v193.size.height = v30;
  *(v174 + 8) = CGRectUnion(v192, v193);
  v67 = v179;
  v68 = type metadata accessor for Optional();
  v69 = v186;
  (*(*(v68 - 8) + 8))(v186, v68);
  v70 = v181;
  v71 = v182;
  v72 = v175;
  v175(v21, v182, v181);
  v73 = *(v70 + 48);
  v165(v69, &v21[v73], v67);
  v74 = &v21[v73];
  v75 = v187;
  v76 = v173;
  (v176)(v74, v173);
  (*(v178 + 56))(v69, 0, 1, v67);
  v77 = v75;
  v78 = v75;
  v79 = v172;
  v172(v21, v77);
  v80 = v72;
  v72(v21, v71, v70);
  v81 = &v21[*(v70 + 48) + v76[9]];
  v82 = *v81;
  v83 = *(v81 + 1);
  v176();
  v84 = type metadata accessor for _LazyStack_Cache();
  v85 = &v186[*(v84 + 48)];
  *v85 = v82;
  v85[1] = v83;
  v79(v21, v78);
  v80(v21, v71, v70);
  v86 = *&v21[*(v70 + 48) + v76[12]];
  v87 = v176;
  v176();
  v88 = v186;
  *&v186[*(v84 + 52)] = v86;
  v172(v21, v78);
  v175(v21, v182, v70);
  v89 = *&v21[*(v70 + 48) + v76[13]];
  v87();
  v90 = v84;
  *(v88 + *(v84 + 56)) = v89;
  v172(v21, v78);
  v91 = (v88 + *(v84 + 40));
  v92 = *v91;
  v93 = &protocol conformance descriptor for GestureGraph;
  if (*v91 != *(v91 + 1))
  {
    v94 = v180;
    v99 = (v180 + v78[22]);
    v92 = *v99;
    v96 = *(v99 + 1);
    v98 = v162;
    goto LABEL_16;
  }

  v94 = v180;
  v95 = (v180 + v78[22]);
  v97 = *v95;
  v96 = *(v95 + 1);
  v98 = v162;
  if (v96 >= *&v97)
  {
    if (v96 + 1 < *&v97)
    {
      __break(1u);
      goto LABEL_100;
    }

    if (*&v97 != v96 + 1)
    {
      v92 = v97;
LABEL_16:
      if (v96 >= *&v92)
      {
        *&v100 = v96 + 1;
        if (*&v100 < *&v92)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v92 = *(v94 + v78[14]);
        v100 = v92;
      }

      *v91 = v92;
      v91[1] = v100;
      v101 = StackPlacement.placedExtent.getter(v78);
      v103 = (v88 + *(v84 + 44));
      *v103 = v101;
      v103[1] = v102;
      if (v98)
      {
        v104 = (v94 + v78[22]);
        v106 = *v104;
        v105 = v104[1];
        if (v105 >= v106)
        {
          v107 = v105 + 1;
          if (v107 < v106)
          {
LABEL_102:
            __break(1u);
            goto LABEL_103;
          }
        }

        else
        {
          v107 = *(v94 + v78[14]);
        }
      }

      else
      {
        v107 = 0;
      }

      v108 = v88 + *(v84 + 36);
      *v108 = v107;
      *(v108 + 8) = (v98 & 1) == 0;
      if (v101 < 0.01 && v102 < 0.01)
      {
        v92 = 0.0;
        *v91 = 0.0;
        v91[1] = 0.0;
      }
    }
  }

  v109 = (v94 + v78[26]);
  v98 = v88;
  v110 = v84;
  v90 = (v98 + *(v84 + 60));
  v111 = *v109;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = *v90;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v111, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v189);
  *v90 = *&v189[0];
  v113 = v109[1];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = *(v90 + 1);
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v113, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v114, v189);
  *(v90 + 1) = *&v189[0];
  v84 = *(type metadata accessor for EstimationCache() + 24);
  v94 = v90 + v84;
  *&v115 = COERCE_DOUBLE(IndexSet.formUnion(_:)());
  v116 = v110;
  v117 = v110[15];
  if (*(*(v98 + v117) + 16))
  {
    v94 = v98 + v117;
    *&v115 = COERCE_DOUBLE(EstimationCache.average.getter());
    v119 = *&v115;
    if (v120)
    {
      v119 = 0.0;
    }

    v89 = v118 + v119;
  }

  else
  {
    v89 = 32.0;
  }

  v88 = v170;
  *&v189[0] = 0;
  v91 = (v98 + v116[11]);
  v121 = *v91;
  v78 = v179;
  v122 = v187;
  if (v163 != 1)
  {
    if (!v163)
    {
      __break(1u);
      goto LABEL_95;
    }

    if (v92 != -0.0 || v163 != -1)
    {
      *&v92 /= v163;
      goto LABEL_37;
    }

LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

LABEL_37:
  v29 = 0.0;
  if (v167)
  {
    goto LABEL_46;
  }

  if (v92 == 0.0)
  {
    if (fabs(v121) <= 0.01)
    {
      goto LABEL_46;
    }

    v29 = -v121;
    goto LABEL_45;
  }

  if (v121 < 0.01)
  {
    if ((*&v92 & 0x8000000000000000) != 0)
    {
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v94 = v90 + v84;
    *&v115 = COERCE_DOUBLE(IndexSet.contains(integersIn:)());
    v122 = v187;
    if ((v115 & 1) == 0)
    {
      v29 = v89 * *&v92;
LABEL_45:
      *v189 = v29;
    }
  }

LABEL_46:
  v83 = 0.01;
  v84 = v185;
  v93 = v186;
  v98 = v182;
  v90 = v172;
  LODWORD(v92) = v161;
  if (fabs(v29) <= 0.01)
  {
    goto LABEL_57;
  }

  v123 = v29 + v91[1];
  if (v121 + v29 > v123)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  *v91 = v121 + v29;
  v91[1] = v123;
  v124 = 56;
  if (!LODWORD(v92))
  {
    v124 = 48;
  }

  *(v174 + v124) = v29;
  v91 = v160;
  v94 = *(v160 + 2);
  if (!v94)
  {
    goto LABEL_56;
  }

  *&v115 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
  if ((v115 & 1) == 0)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v125 = 0;
    v126 = v94 - 1;
    if (v94 == 1)
    {
      goto LABEL_53;
    }

    v155 = &v91[(v169 & 1u) + 11];
    v156 = !is_mul_ok(v126, 0x50uLL);
    if (&v155[10 * v126] < v155)
    {
      goto LABEL_53;
    }

    if (v156)
    {
      goto LABEL_53;
    }

    v125 = v94 & 0x7FFFFFFFFFFFFFFELL;
    v157 = v94 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v158 = v29 + v155[10];
      *v155 = v29 + *v155;
      v155[10] = v158;
      v155 += 20;
      v157 -= 2;
    }

    while (v157);
    if (v94 != v125)
    {
LABEL_53:
      v127 = (v91 + ((8 * LODWORD(v92)) | (80 * v125)) + 88);
      v128 = v94 - v125;
      do
      {
        *v127 = v29 + *v127;
        v127 += 10;
        --v128;
      }

      while (v128);
    }

    *v174 = v91;
LABEL_56:
    MEMORY[0x1EEE9AC00](v115);
    *(&v159 - 2) = v189;
    specialized LazyStack<>.log(_:)(partial apply for implicit closure #3 in LazyStack<>.place(subviews:context:cache:in:));
    v122 = v187;
LABEL_57:
    v94 = v180;
    StackPlacement.placedExtent.getter(v122);
    v131 = (v94 + *(v187 + 88));
    v132 = *v131;
    v133 = v131[1];
    if (v133 < v132)
    {
      break;
    }

    v91 = (v133 + 1);
    if (v133 + 1 >= v132)
    {
      goto LABEL_60;
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    *&v115 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew()(v91));
    v91 = v115;
  }

  v91 = *(v94 + *(v187 + 56));
LABEL_60:
  if (v162)
  {
    v134 = &v190[5];
    if (!LODWORD(v92))
    {
      v134 = &v190[4];
    }

    v135 = vabdd_f64(v130, *v134);
    *(v174 + 40) = v135 >= 1.0;
    v136 = v178;
    if (v135 < 1.0)
    {
      goto LABEL_86;
    }

    MEMORY[0x1EEE9AC00](v129);
    *(&v159 - 4) = v137;
    *(&v159 - 3) = v138;
    *(&v159 - 16) = LOBYTE(v92);
    v139 = partial apply for implicit closure #4 in LazyStack<>.place(subviews:context:cache:in:);
    goto LABEL_85;
  }

  v140 = &v190[4];
  if (LODWORD(v92))
  {
    v140 = &v190[5];
  }

  v141 = *v140;
  if (*v140 + v83 < v130)
  {
    *(v174 + 40) = 1;
    MEMORY[0x1EEE9AC00](v129);
    *(&v159 - 4) = v142;
    *(&v159 - 3) = v143;
    *(&v159 - 16) = LOBYTE(v92);
    v129 = specialized LazyStack<>.log(_:)(partial apply for implicit closure #5 in LazyStack<>.place(subviews:context:cache:in:));
    v136 = v178;
LABEL_86:
    MEMORY[0x1EEE9AC00](v129);
    *(&v159 - 6) = v88;
    *(&v159 - 5) = v84;
    *(&v159 - 4) = v50;
    *(&v159 - 3) = v51;
    v154 = v174;
    *(&v159 - 2) = v93;
    *(&v159 - 1) = v154;
    specialized LazyStack<>.log(_:)(partial apply for implicit closure #8 in LazyStack<>.place(subviews:context:cache:in:));
    (*(v136 + 8))(v177, v78);
    (v90)(v180, v187);
    (*(v183 + 8))(v98, v181);
    return;
  }

  v144 = v130;
  *&v189[0] = v159;
  v129 = _ViewList_Node.estimatedCount(style:)(v189);
  if (__OFSUB__(v129, v91))
  {
    goto LABEL_101;
  }

  v145 = (v129 - v91) & ~((v129 - v91) >> 63);
  v136 = v178;
  if (v163 == 1)
  {
LABEL_78:
    v150 = v144 + v89 * v145;
    if (v150 >= v141)
    {
      v151 = v141;
    }

    else
    {
      v151 = v144 + v89 * v145;
    }

    v152 = v151 * 0.1;
    if ((v167 & v164) != 0)
    {
      v152 = v83;
    }

    v153 = vabdd_f64(v141, v150);
    *(v174 + 40) = v152 < v153;
    if (v152 >= v153)
    {
      goto LABEL_86;
    }

    *(&v159 - 2) = MEMORY[0x1EEE9AC00](v129);
    *(&v159 - 1) = v141;
    v139 = partial apply for implicit closure #7 in LazyStack<>.place(subviews:context:cache:in:);
LABEL_85:
    v129 = specialized LazyStack<>.log(_:)(v139);
    goto LABEL_86;
  }

  v146 = __OFADD__(v145, v163);
  v147 = v145 + v163;
  if (v146)
  {
    goto LABEL_104;
  }

  if (!v163)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v148 = v147 - 1;
  if (v148 != 0x8000000000000000 || v163 != -1)
  {
    v145 = v148 / v163;
    goto LABEL_78;
  }

LABEL_106:
  __break(1u);
}

uint64_t destroy for PlacementProperties(uint64_t a1)
{
  v1 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 8);
  v5 = (v1 + *(v3 + 80) + 8) & ~*(v3 + 80);

  return v4(v5, AssociatedTypeWitness);
}

uint64_t getEnumTagSinglePayload for StackPlacement(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = v7;
  }

  v11 = type metadata accessor for IndexSet();
  v12 = *(v11 - 8);
  v13 = *(v6 + 64);
  v14 = *(v8 + 80);
  v15 = *(v12 + 80);
  if (*(v12 + 84) <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v14 | 7;
  v18 = ((v14 + 16) & ~v14) + *(v8 + 64) + 7;
  v19 = v15 | 7;
  if (a2 <= v16)
  {
    goto LABEL_33;
  }

  v20 = *(*(v11 - 8) + 64) - ((-17 - v15) | v15) - ((-18 - v19 - ((((((((((((((((((((v18 + ((v13 + v17 + 1) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 43) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v19) - 2;
  v21 = 8 * v20;
  if (v20 > 3)
  {
    goto LABEL_12;
  }

  v24 = ((a2 - v16 + ~(-1 << v21)) >> v21) + 1;
  if (HIWORD(v24))
  {
    v22 = *(a1 + v20);
    if (v22)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v24 <= 0xFF)
    {
      if (v24 < 2)
      {
        goto LABEL_33;
      }

LABEL_12:
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_33;
      }

LABEL_20:
      v25 = (v22 - 1) << v21;
      if (v20 > 3)
      {
        v25 = 0;
      }

      if (v20)
      {
        if (v20 <= 3)
        {
          v26 = v20;
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

      return v16 + (v27 | v25) + 1;
    }

    v22 = *(a1 + v20);
    if (*(a1 + v20))
    {
      goto LABEL_20;
    }
  }

LABEL_33:
  if (v7 == v16)
  {
    v28 = *(v6 + 48);
    v29 = a1;
    v30 = v7;
    v31 = v5;

    return v28(v29, v30, v31);
  }

  v32 = (a1 + v13 + v17 + 1) & ~v17;
  if (v9 == v16)
  {
    v28 = *(v8 + 48);
    v29 = (v14 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14;
    v30 = v9;
    v31 = AssociatedTypeWitness;

    return v28(v29, v30, v31);
  }

  v33 = ((((((((v18 + v32) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  if ((v16 & 0x80000000) != 0)
  {
    v35 = *(v12 + 48);

    return v35((v15 + ((((v19 + ((((((((((((v33 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v19) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15);
  }

  else
  {
    v34 = *v33;
    if (*v33 >= 0xFFFFFFFF)
    {
      LODWORD(v34) = -1;
    }

    return (v34 + 1);
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a4;
  *(a3[7] + 8 * result) = a2;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

uint64_t partial apply for closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  return closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)(a1, *(v2 + 16), *(v2 + 24), *(v2 + 25), *(v2 + 32), a2);
}

{
  return partial apply for closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)(a1, a2);
}

uint64_t EstimationCache.average.getter()
{
  v1 = *v0;
  if (*(*v0 + 16))
  {
    v2 = 0;
    v3 = 1 << *(v1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v1 + 64);
    v6 = (v3 + 63) >> 6;
    v7 = 0.0;
    v8 = 0.0;
    if (v5)
    {
      while (1)
      {
        v9 = v2;
LABEL_10:
        v10 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v11 = (v9 << 9) | (8 * v10);
        v12 = *(*(v1 + 56) + v11);
        v7 = v7 + *(*(v1 + 48) + v11) * v12;
        v8 = v8 + v12;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v9 >= v6)
      {
        break;
      }

      v5 = *(v1 + 64 + 8 * v9);
      ++v2;
      if (v5)
      {
        v2 = v9;
        goto LABEL_10;
      }
    }

    v13 = 0;
    v14 = v0[1];
    v15 = 1 << *(v14 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v14 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = 0.0;
    for (i = 0.0; v17; i = i + v24)
    {
      v21 = v13;
LABEL_20:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = (v21 << 9) | (8 * v22);
      v24 = *(*(v14 + 56) + v23);
      v19 = v19 + *(*(v14 + 48) + v23) * v24;
    }

    while (1)
    {
      v21 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        if (i <= 0.0)
        {
          *&result = 0.0;
        }

        else
        {
          *&result = v19 / i;
        }

        return result;
      }

      v17 = *(v14 + 64 + 8 * v21);
      ++v13;
      if (v17)
      {
        v13 = v21;
        goto LABEL_20;
      }
    }

LABEL_27:
    __break(1u);
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

int *PlacementProperties.init(minor:visible:resetEstimates:estimatesChanged:visibleLength:containerLength:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v16 = type metadata accessor for MinorProperties();
  (*(*(v16 - 8) + 32))(a4, a1, v16);
  result = type metadata accessor for PlacementProperties();
  v18 = (a4 + result[9]);
  *v18 = a5;
  v18[1] = a6;
  *(a4 + result[10]) = a2;
  *(a4 + result[11]) = a3;
  *(a4 + result[12]) = a7;
  *(a4 + result[13]) = a8;
  return result;
}

uint64_t initializeWithCopy for StackPlacement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = (v6 + a2);
  *(v6 + a1) = *v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 16);
  v12 = v10 + 16;
  v13 = *(v10 + 80);
  v14 = (v13 | 7) + 1;
  v15 = ((v14 + v7) & ~(v13 | 7));
  v16 = (&v8[v14] & ~(v13 | 7));
  *v15 = *v16;
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v11((v17 + v13 + 8) & ~v13, (v18 + v13 + 8) & ~v13, AssociatedTypeWitness);
  v19 = *(v12 + 48) + ((v13 + 16) & ~v13) + 7;
  v20 = ((v15 + v19) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v16 + v19) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v22 = ((v21 + 19) & 0xFFFFFFFFFFFFFFF8);
  v23 = v22 + 43;
  v24 = ((v20 + 19) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v22;
  v25 = (v24 + 11) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v22 + 11) & 0xFFFFFFFFFFFFFFF8;
  v27 = *v26;
  *(v25 + 8) = *(v26 + 8);
  *v25 = v27;
  v28 = (v24 + 27) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v22 + 27) & 0xFFFFFFFFFFFFFFF8;
  *v28 = *v29;
  *(v28 + 8) = *(v29 + 8);
  v30 = ((v24 + 43) & 0xFFFFFFFFFFFFFFF8);
  v31 = (v23 & 0xFFFFFFFFFFFFFFF8) + 15;
  v32 = (v23 & 0xFFFFFFFFFFFFFFF8) + 31;
  *v30 = *(v23 & 0xFFFFFFFFFFFFFFF8);
  v33 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 &= 0xFFFFFFFFFFFFFFF8;
  v34 = *v31;
  *(v33 + 8) = *(v31 + 8);
  *v33 = v34;
  v32 &= 0xFFFFFFFFFFFFFFF8;
  v35 = ((v30 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v35 = *v32;
  v36 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
  v37 = ((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v37 = *v36;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = *v39;

  if (v40 < 0xFFFFFFFF)
  {
    v45 = *v39;
    v46 = *(v39 + 32);
    *(v38 + 16) = *(v39 + 16);
    *(v38 + 32) = v46;
    *v38 = v45;
    v47 = *(v39 + 48);
    v48 = *(v39 + 64);
    v49 = *(v39 + 96);
    *(v38 + 80) = *(v39 + 80);
    *(v38 + 96) = v49;
    *(v38 + 48) = v47;
    *(v38 + 64) = v48;
  }

  else
  {
    *v38 = v40;
    *(v38 + 8) = *(v39 + 8);
    v41 = *(v39 + 40);
    *(v38 + 40) = v41;
    *(v38 + 48) = *(v39 + 48);
    v42 = **(v41 - 8);

    v42(v38 + 16, v39 + 16, v41);
    *(v38 + 56) = *(v39 + 56);
    *(v38 + 64) = *(v39 + 64);
    *(v38 + 68) = *(v39 + 68);
    *(v38 + 72) = *(v39 + 72);
    *(v38 + 80) = *(v39 + 80);
    v43 = *(v39 + 88);
    *(v38 + 92) = *(v39 + 92);
    *(v38 + 88) = v43;
    v44 = *(v39 + 99);
    *(v38 + 96) = *(v39 + 96);
    *(v38 + 99) = v44;
    *(v38 + 104) = *(v39 + 104);
  }

  v50 = ((v38 + 119) & 0xFFFFFFFFFFFFFFF8);
  v51 = ((v39 + 119) & 0xFFFFFFFFFFFFFFF8);
  *v50 = *v51;
  v52 = ((v50 + 15) & 0xFFFFFFFFFFFFFFF8);
  v53 = ((v51 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v52 = *v53;
  v54 = ((v52 + 23) & 0xFFFFFFFFFFFFFFF8);
  v55 = ((v53 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v54 = *v55;
  v56 = (v54 + 23) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v55 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v56 = *v57;
  *(v56 + 16) = *(v57 + 16);
  v58 = type metadata accessor for IndexSet();
  v59 = *(v58 - 8);
  v60 = *(v59 + 16);
  v61 = *(v59 + 80);
  v62 = (v61 | 7) + 17;
  v63 = ((v62 + v56) & ~(v61 | 7));
  v64 = ((v62 + v57) & ~(v61 | 7));
  *v63 = *v64;
  v65 = ((v63 + 15) & 0xFFFFFFFFFFFFFFF8);
  v66 = ((v64 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v65 = *v66;
  v67 = v65 + v61 + 8;
  v68 = v66 + v61 + 8;

  v60(v67 & ~v61, v68 & ~v61, v58);
  return a1;
}

uint64_t specialized LazyStack<>.resolveIndexAndPosition(subviews:context:cache:placer:properties:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v150 = a4;
  v169 = a3;
  v164 = a1;
  v189 = *MEMORY[0x1E69E9840];
  v11 = type metadata accessor for MinorProperties();
  v12 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v160 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v167 = &v147 - v13;
  v171 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v159 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v147 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v147 - v20;
  v173 = v11;
  v22 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v153 = &v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v175 = &v147 - v26;
  v27 = *(a2 + 8);
  v166 = *(a2 + 4);
  LODWORD(v11) = *(a2 + 12);
  v28 = *(a2 + 40);
  v162 = *(a2 + 32);
  v29 = *(a2 + 208);
  v152 = *(a2 + 200);
  v151 = v29;
  v168 = (*(a7 + 32))(a6, a7);
  v30 = 0.0;
  v31 = 0.0;
  if (v11 != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v30 = *Value;
    v31 = Value[1];
  }

  v174 = v22;
  v33 = v175;
  v165 = *(v22 + 16);
  (v165)(v175, a5, v173);
  v34 = type metadata accessor for PlacementProperties();
  v35 = (a5 + *(v34 + 36));
  v36 = *v35;
  v156 = v35[1];
  v172 = *v33;
  v155 = a6;
  v154 = a7;
  v37 = type metadata accessor for _LazyStack_Cache();
  v38 = v169;
  v39 = *(*(v169 + *(v37 + 60)) + 16);
  v157 = v37;
  if (v39)
  {
    v40 = v37;
    v42 = COERCE_DOUBLE(EstimationCache.average.getter());
    if (v43)
    {
      v42 = 0.0;
    }

    v44 = v41 + v42;
    v45 = *(v40 + 60);
    v46 = v38;
    v47 = *(*(v38 + v45) + 16) != 0;
  }

  else
  {
    v47 = 0;
    v44 = 32.0;
    v46 = v169;
  }

  v163 = 2 * v172;
  if (v44 <= 0.0)
  {
    v47 = 0;
  }

  v161 = v47;
  LODWORD(v158) = *(a5 + *(v34 + 40));
  KeyPath = swift_getKeyPath();
  LODWORD(v184) = v27;
  v185 = KeyPath;
  type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for EnvironmentFetch<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v27);
  v183 = KeyPath;
  type metadata accessor for KeyPath<EnvironmentValues, CGFloat>();

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>(&lazy protocol witness table cache variable for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>);
  v49 = lazy protocol witness table accessor for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>(&lazy protocol witness table cache variable for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>);
  v188 = 0;
  v145 = v49;
  v50 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  v51 = v173;
  (v165)(v21, v175, v173);
  v52 = v174;
  (*(v174 + 56))(v21, 0, 1, v51);
  v53 = v171;
  v54 = *(v171 + 16);
  v55 = v46;
  v56 = v21;
  v57 = v52;
  v54(v18, v55, v12);
  v58 = *(TupleTypeMetadata2 + 48);
  v59 = v167;
  v54(v167, v56, v12);
  v166 = v58;
  v54(&v59[v58], v18, v12);
  v60 = *(v57 + 48);
  if (v60(v59, 1, v51) != 1)
  {
    v149 = v18;
    v165 = v56;
    v66 = v159;
    v54(v159, v59, v12);
    v67 = v166;
    v68 = v60(&v59[v166], 1, v51);
    v61 = v174;
    v69 = (v174 + 8);
    if (v68 != 1)
    {
      v82 = &v59[v67];
      v83 = v153;
      (*(v174 + 32))(v153, v82, v51);
      v84 = static MinorProperties.== infix(_:_:)(v66, v83);
      v85 = *(v61 + 8);
      v85(v83, v51);
      v86 = *(v171 + 8);
      v86(v149, v12);
      v86(v165, v12);
      v85(v66, v51);
      v86(v59, v12);
      v64 = v172;
      v65 = v174;
      if (v158 & 1 | ((v84 & 1) == 0))
      {
        goto LABEL_17;
      }

      goto LABEL_43;
    }

    v70 = *(v171 + 8);
    v70(v149, v12);
    v70(v165, v12);
    (*v69)(v66, v51);
    v64 = v172;
LABEL_16:
    (*(v160 + 8))(v59, TupleTypeMetadata2);
    v65 = v61;
    goto LABEL_17;
  }

  v61 = v174;
  v62 = *(v53 + 8);
  v62(v18, v12);
  v62(v56, v12);
  v63 = v60(&v59[v166], 1, v51);
  v64 = v172;
  if (v63 != 1)
  {
    goto LABEL_16;
  }

  v62(v59, v12);
  v65 = v61;
  if (v158)
  {
    goto LABEL_17;
  }

LABEL_43:
  v87 = (v169 + v157[11]);
  v88 = *v87;
  if (v50 == 1.0)
  {
    v89 = round(v88);
    v90 = v87[1];
    v91 = round(v90);
  }

  else
  {
    v89 = v50 * round(v88 / v50);
    v90 = v87[1];
    v91 = v50 * round(v90 / v50);
  }

  if (v89 > v91)
  {
    goto LABEL_142;
  }

  v94 = (v169 + v157[10]);
  v81 = *v94;
  if (v89 <= v36)
  {
    if (v156 <= v91)
    {
      goto LABEL_69;
    }

    if (v36 <= v91)
    {
      v98 = v169 + v157[9];
      if ((*(v98 + 8) & 1) == 0 && *v98 == v94[1])
      {
        goto LABEL_69;
      }
    }
  }

  if (v168)
  {
    v95 = v31;
  }

  else
  {
    v95 = v30;
  }

  v96 = v36 - v90;
  v97 = v95 + v95;
  if (v36 - v90 + 0.01 > 0.0 && v96 < v97)
  {
    (*(v65 + 8))(v175, v51);
    return v94[1];
  }

  v99 = v36 - v88;
  if (v36 - v88 + 0.01 > 0.0 && v99 < v97)
  {
LABEL_69:
    (*(v65 + 8))(v175, v51);
    return v81;
  }

  if (v99 >= 0.0)
  {
    v101 = v36 - v90;
  }

  else
  {
    v101 = v36 - v88;
    if (v96 < 0.0)
    {
      if (v99 > v96)
      {
        v101 = v36 - v88;
      }

      else
      {
        v101 = v36 - v90;
      }
    }
  }

  if (v101 >= 0.0 || v95 * 3.0 <= -v101)
  {
    if (v161)
    {
LABEL_113:
      v184 = v163;
      v134 = _ViewList_Node.estimatedCount(style:)(&v184);
      if (v64 != 1)
      {
        if (!v64)
        {
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        if (v134 == 0x8000000000000000 && v64 == -1)
        {
LABEL_164:
          __break(1u);
        }

        v134 /= v64;
      }

      v135 = v134 - 1;
      if (__OFSUB__(v134, 1))
      {
        goto LABEL_152;
      }

      v136 = round(v99 / v44);
      if ((*&v136 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      if (v136 <= -9.22337204e18)
      {
LABEL_154:
        __break(1u);
        goto LABEL_155;
      }

      if (v136 >= 9.22337204e18)
      {
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

      v137 = v135 & ~(v135 >> 63);
      v138 = v137 * v64;
      if ((v137 * v64) >> 64 != (v137 * v64) >> 63)
      {
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      if (v135 >= v136)
      {
        v135 = v136;
      }

      v139 = v135 & ~(v135 >> 63);
      v140 = v139 * v64;
      if ((v139 * v64) >> 64 != (v139 * v64) >> 63)
      {
        goto LABEL_157;
      }

      v93 = __OFADD__(v81, v140);
      v141 = v81 + v140;
      if (v93)
      {
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      v142 = v88 + v44 * v139;
      if (v142 + 0.01 >= 0.0 && v142 + -0.01 <= v36)
      {
        v144 = v141 & ~(v141 >> 63);
        if (v138 >= v144)
        {
          v81 = v144;
        }

        else
        {
          v81 = v138;
        }

        goto LABEL_69;
      }
    }
  }

  else if (v161)
  {
    v102 = v94[1];
    v103 = v102 - v81;
    if (!__OFSUB__(v102, v81))
    {
      v104 = ceil(v95 / v44);
      if ((*&v104 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v104 > -9.22337204e18)
        {
          if (v104 < 9.22337204e18)
          {
            if (v103 <= v104)
            {
              v103 = v104;
            }

            v160 = v103;
            if (v99 >= 0.0)
            {
              v105 = v102;
            }

            else
            {
              v105 = v81;
            }

            if (v99 >= 0.0)
            {
              v106 = v90;
            }

            else
            {
              v106 = v88;
            }

            v153 = *&v106;
            v165 = type metadata accessor for StackPlacement();
            v155 = *(v165 + 64);
            v107 = v64 & 0x7FFFFFFFFFFFFFFFLL;
            v159 = ((v64 & 0x7FFFFFFFFFFFFFFFLL) - 1);
            v158 = v164[17];
            v108 = 2;
            v109 = v164[15];
            v154 = v164[14];
            v149 = v109;
            v148 = v64 & 0x7FFFFFFFFFFFFFFFLL;
            while (1)
            {
              v110 = v108 * v160;
              if ((v108 * v160) >> 64 != (v108 * v160) >> 63)
              {
                goto LABEL_145;
              }

              v166 = v108;
              v111 = v105 - v110;
              v112 = v163;
              if (__OFSUB__(v105, v110))
              {
                goto LABEL_146;
              }

              v113 = v111 & ~(v111 >> 63);
              v114 = swift_allocObject();
              v171 = v114;
              v115 = MEMORY[0x1E69E7CC0];
              *(v114 + 16) = MEMORY[0x1E69E7CC0];
              v116 = (v114 + 16);
              v179 = v113;
              v181 = 0;
              v182 = 1;
              v180 = 3;
              v117 = swift_allocObject();
              *(v117 + 16) = v115;
              v118 = v117 + 16;
              v178 = v105;
              v119 = v105;
              if (v107 != 1)
              {
                if (!v107)
                {
                  goto LABEL_149;
                }

                v120 = v105 % v107;
                v119 = v105;
                if (v105 % v107)
                {
                  v121 = v107 - v120;
                  if (__OFSUB__(v107, v120))
                  {
                    goto LABEL_150;
                  }

                  v93 = __OFADD__(v105, v121);
                  v119 = v105 + v121;
                  if (v93)
                  {
                    goto LABEL_151;
                  }
                }
              }

              TupleTypeMetadata2 = v111;
              v93 = __OFADD__(v119, v159);
              v122 = &v159[v119];
              if (v93)
              {
                goto LABEL_147;
              }

              v178 = v122;
              v177 = v111 & ~(v111 >> 63);
              MEMORY[0x1EEE9AC00](v117);
              *(&v147 - 8) = &v181;
              *(&v147 - 7) = &v180;
              *(&v147 - 6) = v112;
              *(&v147 - 5) = &v179;
              *(&v147 - 4) = &v178;
              *(&v147 - 3) = v123;
              v167 = v123;
              v145 = v171;
              v124 = swift_allocObject();
              if (__OFADD__(v113, v158))
              {
                goto LABEL_148;
              }

              *(v124 + 16) = v113 + v158;
              v184 = v154;
              v185 = v149;
              v176 = v112;
              v186 = &v184;
              v187 = 1;
              MEMORY[0x1EEE9AC00](v124);
              *(&v147 - 4) = v164;
              *(&v147 - 3) = v125;
              v145 = closure #1 in LazyStack<>.collectBackwards(from:to:subviews:style:atEnd:)partial apply;
              v146 = &v147 - 10;

              v126 = _ViewList_Node.applyNodes(from:style:transform:to:)(&v177, &v176, &v186, partial apply for closure #1 in closure #1 in _LazyLayout_Subviews.apply(from:style:to:), (&v147 - 6));

              swift_beginAccess();
              v127 = *v118;
              if (*(*v118 + 16))
              {
                swift_beginAccess();
                v128 = *v116;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v128 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v128[2] + 1, 1, v128);
                }

                v130 = v128[2];
                v129 = v128[3];
                if (v130 >= v129 >> 1)
                {
                  v128 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v129 > 1), v130 + 1, 1, v128);
                }

                v128[2] = v130 + 1;
                v128[v130 + 4] = v127;
                *v116 = v128;
                swift_endAccess();
                *v118 = MEMORY[0x1E69E7CC0];
              }

              swift_beginAccess();
              v131 = *(v171 + 16);

              v132 = TupleTypeMetadata2;
              v133 = v150;
              StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(v131, v105, TupleTypeMetadata2 < 1, v126 & 1, 0, v165, *&v153);

              if (*(v133 + v155) <= v36 + 0.01)
              {
                break;
              }

              v51 = v173;
              v65 = v174;
              v64 = v172;
              v107 = v148;
              if (v132 >= 1)
              {
                v108 = 2 * v166;
                if (v166 <= 7)
                {
                  continue;
                }
              }

              goto LABEL_113;
            }

            (*(v174 + 8))(v175, v173);
            return *(v150 + *(v165 + 56));
          }

          goto LABEL_163;
        }

LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
        goto LABEL_164;
      }

LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

LABEL_17:
  v184 = v163;
  v71 = _ViewList_Node.estimatedCount(style:)(&v184);
  v72 = v168;
  if (v64 != 1)
  {
    if (!v64)
    {
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    if (v71 == 0x8000000000000000 && v64 == -1)
    {
      goto LABEL_143;
    }

    v71 /= v64;
  }

  if (v168)
  {
    v73 = v28;
  }

  else
  {
    v73 = v162;
  }

  v74 = 0.0;
  if (v73 > 0.0)
  {
    v75 = v36 / v73;
    v74 = 1.0;
    if (v75 < 1.0)
    {
      v74 = 0.0;
      if (v75 >= 0.0)
      {
        v74 = v75;
      }
    }
  }

  if (__OFSUB__(v71, 1))
  {
    __break(1u);
    goto LABEL_136;
  }

  v76 = (v71 - 1) & ~((v71 - 1) >> 63);
  v77 = v76 * v64;
  if ((v76 * v64) >> 64 != (v76 * v64) >> 63)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v78 = v74 * v71 + 0.5;
  if ((*&v78 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v78 <= -9.22337204e18)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v78 >= 9.22337204e18)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v79 = v78 * v64;
  if ((v78 * v64) >> 64 != v79 >> 63)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v80 = v79 & ~(v79 >> 63);
  if (v80 >= v77)
  {
    v81 = v77;
  }

  else
  {
    v81 = v80;
  }

  if (v81 < 1 || !v161)
  {
    goto LABEL_69;
  }

  EstimationCache.average.getter();
  (*(v65 + 8))(v175, v51);
  v92 = v152;
  if ((v72 & 1) == 0)
  {
    v92 = v151;
  }

  if (v81 >= v64 && v92 > 0.0)
  {
    v93 = __OFSUB__(v81, v64);
    v81 -= v64;
    if (v93)
    {
      goto LABEL_144;
    }
  }

  return v81;
}

uint64_t _LazyLayout_Subviews.applyNodes(from:style:to:)(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = swift_allocObject();
  *(v9 + 16) = *a1;
  v10 = *(v4 + 120);
  v13[0] = *(v4 + 112);
  v13[1] = v10;
  v12 = v8;
  v19 = v13;
  v20 = 1;
  v15 = v4;
  v16 = v9;
  v17 = a3;
  v18 = a4;

  LOBYTE(a4) = _ViewList_Node.applyNodes(from:style:transform:to:)(a1, &v12, &v19, partial apply for applyNode #1 (start:style:node:transform:) in _LazyLayout_Subviews.applyNodes(from:style:to:), v14);

  return a4 & 1;
}

uint64_t destroy for _LazyLayout_Subviews(uint64_t a1)
{

  v2 = *(a1 + 109);
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 != 3)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    if (!*(a1 + 109))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 16);
      goto LABEL_10;
    }

    if (v2 != 1)
    {
      goto LABEL_10;
    }

    __swift_destroy_boxed_opaque_existential_1(a1 + 48);
  }

LABEL_10:
}

void StackPlacement.placeBody(subview:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of _LazyLayout_Subview(a1, v15);
  v4 = *(a2 + 72);
  v5 = *(v2 + v4);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  v8 = v7 + 1;
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v8;
  v9 = &v5[112 * v7];
  v10 = v15[0];
  v11 = v15[2];
  *(v9 + 3) = v15[1];
  *(v9 + 4) = v11;
  *(v9 + 2) = v10;
  v12 = v15[3];
  v13 = v15[4];
  v14 = v15[6];
  *(v9 + 7) = v15[5];
  *(v9 + 8) = v14;
  *(v9 + 5) = v12;
  *(v9 + 6) = v13;
  *(v2 + v4) = v5;
  if (v8 == *(v2 + *(a2 + 40)))
  {
    StackPlacement.flushMinorGroup()(a2);
  }
}

BOOL StackPlacement.shouldStop()(int *a1)
{
  type metadata accessor for Logger?();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AGGraphHasDeadlinePassed())
  {
    AGGraphCancelUpdate();
    if (one-time initialization token for lazyLayoutPrefetch != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v4, static Log.lazyLayoutPrefetch);
    outlined init with copy of EstimationCache(v9, v6, type metadata accessor for Logger?);
    v10 = type metadata accessor for Logger();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {
      outlined destroy of EstimationCache(v6, type metadata accessor for Logger?);
    }

    else
    {
      v12 = v1;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = v14;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v11;
        v24 = v17;
        v18 = v17;
        *v16 = 136446210;
        v19 = _typeName(_:qualified:)();
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v24);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_18D018000, v13, v15, "%{public}s: Stopping placement because deadline passed", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        v22 = v18;
        v11 = v23;
        MEMORY[0x193AC4820](v22, -1, -1);
        MEMORY[0x193AC4820](v16, -1, -1);
      }

      v1 = v12;
      (*(v11 + 8))(v6, v10);
    }

    result = 1;
    *(v1 + a1[25]) = 1;
  }

  else
  {
    v7 = v1 + a1[17];
    if (*(v7 + 8) == 1)
    {
      return *(v1 + a1[11] + 8) <= *(v1 + a1[16]);
    }

    else
    {
      return *v7 < *(v1 + a1[14]);
    }
  }

  return result;
}

uint64_t StackPlacement.flushPendingHeader()(uint64_t a1)
{
  v3 = (v1 + *(a1 + 80));
  outlined init with copy of _LazyLayout_Subview?(v3, &v30, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
  if (!v30)
  {
    return outlined destroy of _LazyLayout_Subview?(&v30, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
  }

  v38[3] = v34;
  v38[4] = v35;
  v38[5] = v36;
  v37 = v30;
  v38[0] = v31;
  v38[1] = v32;
  v38[2] = v33;
  if ((*(v1 + *(a1 + 48)) & 1) == 0 || (*(v1 + *(a1 + 68) + 8) & 1) == 0)
  {
    return outlined destroy of _LazyLayout_Subview(&v37);
  }

  v4 = *(a1 + 40);
  v5 = *(v1 + *(a1 + 36));
  v6 = *(v1 + v4 + 8);
  if (*(v1 + *(a1 + 36)))
  {
    v7 = *(v1 + v4 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (*(v1 + *(a1 + 36)))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v1 + v4 + 8);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v9 = *(a1 + 24);
  v22 = *(a1 + 16);
  (*(v9 + 40))();
  v10 = DWORD2(v37);
  v11 = *(LazyLayoutViewCache.item(data:)(v38) + 44);

  v12 = *MEMORY[0x1E698D3F8];
  v27 = v10;
  v28 = v11;
  v29 = v12;
  v23 = v7;
  v24 = v5 ^ 1;
  v25 = v8;
  v26 = v5;
  v13 = LayoutProxy.lengthThatFits(_:in:)(&v23, v5);
  if (v5)
  {
    v15 = v6;
  }

  else
  {
    v15 = v14;
  }

  if (v5)
  {
    v6 = v14;
    v16 = 0.0;
  }

  else
  {
    v16 = -v14;
  }

  if (v5)
  {
    v17 = -v14;
  }

  else
  {
    v17 = 0.0;
  }

  MEMORY[0x1EEE9AC00](v13);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply);
  v18 = MEMORY[0x1E69E6720];
  outlined destroy of _LazyLayout_Subview?(&v30, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
  *&v30 = v15;
  BYTE8(v30) = 0;
  *&v31 = v6;
  BYTE8(v31) = 0;
  v19 = (*(v9 + 48))(v22, v9);
  StackPlacement.emit(_:at:size:anchor:)(v16, v17, v19, v20, &v37, &v30, a1);
  outlined destroy of _LazyLayout_Subview(&v37);
  result = outlined destroy of _LazyLayout_Subview?(v3, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, v18, type metadata accessor for [_LazyLayout_Subview]);
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[5] = 0u;
  v3[6] = 0u;
  return result;
}

void closure #2 in StackPlacement.flushMinorGroup()(uint64_t a1, uint64_t *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = a2[2];
  v16 = *(a2 + 24);
  v17 = type metadata accessor for StackPlacement();
  v18 = *(a3 + *(v17 + 64));
  v19 = v18 + a5;
  v20 = v18 + a4;
  if (*(a3 + *(v17 + 36)))
  {
    v20 = a4;
  }

  else
  {
    v19 = a5;
  }

  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  StackPlacement.emit(_:at:size:anchor:)(v20, v19, a6, a7, a1, &v21, v17);
}

double StackPlacement.placedBounds(minorAxis:)(uint64_t a1)
{
  v2 = (v1 + *(a1 + 92));
  if (*v2 >= v2[1])
  {
    return *MEMORY[0x1E695F050];
  }

  if (!*(v1 + *(a1 + 36)))
  {
    return *v2;
  }

  return result;
}

uint64_t $defer #1 <A><A1, B1>() in _LazyLayoutViewCache.withMutableCacheState<A, B>(type:_:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v5 + 16))(&v11 - v7, a2, AssociatedTypeWitness, v6);
  v9 = *(*a1 + 464);
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, AssociatedTypeWitness);
  return swift_endAccess();
}

uint64_t LazySubviewPlacements.transaction.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  AGGraphClearUpdate();
  closure #1 in LazySubviewPlacements.transaction.getter(&v2);
  AGGraphSetUpdate();
  return v2;
}

uint64_t specialized LazySubviewPlacements.makeAnchorTranslationIfNeeded(placements:context:newSize:reason:)(uint64_t a1, __int128 *a2, char *a3, uint64_t a4)
{
  v8 = *(a1 + 48);
  v99 = *(a1 + 32);
  v100 = v8;
  v101 = *(a1 + 64);
  v9 = *a1;
  v98 = *(a1 + 16);
  v97 = v9;
  v10 = a2[1];
  v117 = *a2;
  v118 = v10;
  v11 = *(a2 + 4);
  v12 = *(a2 + 5);
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v107 = a2[6];
  v106 = v15;
  v104 = v13;
  v105 = v14;
  v16 = a2[7];
  v17 = a2[8];
  v18 = a2[9];
  v111 = a2[10];
  v110 = v18;
  v108 = v16;
  v109 = v17;
  v19 = a2[11];
  v20 = a2[12];
  v21 = a2[13];
  v22 = a2[14];
  v116 = *(a2 + 30);
  v115 = v22;
  v114 = v21;
  v112 = v19;
  v113 = v20;
  v23 = *(a2 + 31);
  v24 = *(a2 + 32);
  v25 = *(a2 + 33);
  v26 = *(a2 + 34);
  v27 = a2 + 280;
  v102 = *(a2 + 280);
  v103 = *(a2 + 296);
  memcpy(__dst, v4, 0x1D9uLL);
  v120.origin.x = v23;
  v120.origin.y = v24;
  v120.size.width = v25;
  v120.size.height = v26;
  if (CGRectGetMinX(v120) <= 0.0)
  {
    v122.origin.x = v23;
    v122.origin.y = v24;
    v122.size.width = v25;
    v122.size.height = v26;
    MinY = CGRectGetMinY(v122);
    v28 = MinY <= 0.0;
    v123.origin.x = v23;
    v123.origin.y = v24;
    v123.size.width = v25;
    v123.size.height = v26;
    if (v11 <= CGRectGetMaxX(v123))
    {
      goto LABEL_7;
    }

    if (MinY <= 0.0)
    {
      return 0;
    }
  }

  else
  {
    v121.origin.x = v23;
    v121.origin.y = v24;
    v121.size.width = v25;
    v121.size.height = v26;
    if (v11 <= CGRectGetMaxX(v121))
    {
      v28 = 0;
LABEL_7:
      v124.origin.x = v23;
      v124.origin.y = v24;
      v124.size.width = v25;
      v124.size.height = v26;
      MaxY = CGRectGetMaxY(v124);
      result = 0;
      if (v28 || v12 <= MaxY)
      {
        return result;
      }
    }
  }

  result = 0;
  if (v11 != 0.0 && v12 != 0.0)
  {
    if (LOBYTE(__dst[59]) == 1)
    {
      memcpy(v96, v4, 0x1D9uLL);
      if (LazySubviewPlacements.scrollPhase.getter() == 4)
      {
        return 0;
      }

      v32 = *(a4 + 24);
      v64 = *(a4 + 16);
      (*(v32 + 32))(v96);
      v93 = 0;
      __src[8] = *&__dst[49];
      __src[9] = *&__dst[51];
      __src[10] = *&__dst[53];
      *(&__src[10] + 9) = *(&__dst[54] + 1);
      __src[4] = *&__dst[41];
      __src[5] = *&__dst[43];
      __src[6] = *&__dst[45];
      __src[7] = *&__dst[47];
      __src[0] = *&__dst[33];
      __src[1] = *&__dst[35];
      __src[2] = *&__dst[37];
      __src[3] = *&__dst[39];
      v33 = a2[1];
      v96[0] = *a2;
      v96[1] = v33;
      *&v96[2] = v11;
      *(&v96[2] + 1) = v12;
      v34 = a2[14];
      v96[13] = a2[13];
      v96[14] = v34;
      *&v96[15] = *(a2 + 30);
      v35 = a2[10];
      v96[9] = a2[9];
      v96[10] = v35;
      v36 = a2[11];
      v96[12] = a2[12];
      v96[11] = v36;
      v37 = a2[6];
      v96[5] = a2[5];
      v96[6] = v37;
      v38 = a2[7];
      v96[8] = a2[8];
      v96[7] = v38;
      v39 = a2[3];
      v96[4] = a2[4];
      v96[3] = v39;
      *(&v96[15] + 1) = v23;
      *&v96[16] = v24;
      *(&v96[16] + 1) = v25;
      *&v96[17] = v26;
      *(&v96[17] + 8) = *v27;
      BYTE8(v96[18]) = *(v27 + 16);
      v40 = PositionState.dispatchViewSizeChange(context:axes:allowedAxes:)(v96, &v93);
      v94[8] = __src[8];
      v94[9] = __src[9];
      v95[0] = __src[10];
      *(v95 + 9) = *(&__src[10] + 9);
      v94[4] = __src[4];
      v94[5] = __src[5];
      v94[6] = __src[6];
      v94[7] = __src[7];
      v94[0] = __src[0];
      v94[1] = __src[1];
      v94[2] = __src[2];
      v94[3] = __src[3];
      outlined init with copy of PositionState(&__dst[33], &v82);
      outlined init with copy of PositionState(&__dst[33], &v82);
      outlined destroy of PositionState(v94);
      if (v40)
      {
        outlined destroy of PositionState(&__dst[33]);
        v41 = 3;
      }

      else
      {
        v90 = *&__dst[49];
        v91 = *&__dst[51];
        *v92 = *&__dst[53];
        *&v92[9] = *(&__dst[54] + 1);
        v86 = *&__dst[41];
        v87 = *&__dst[43];
        v88 = *&__dst[45];
        v89 = *&__dst[47];
        v82 = *&__dst[33];
        v83 = *&__dst[35];
        v84 = *&__dst[37];
        v85 = *&__dst[39];
        v42 = a2[1];
        v96[0] = *a2;
        v96[1] = v42;
        *&v96[2] = v11;
        *(&v96[2] + 1) = v12;
        v43 = a2[14];
        v96[13] = a2[13];
        v96[14] = v43;
        *&v96[15] = *(a2 + 30);
        v44 = a2[10];
        v96[9] = a2[9];
        v96[10] = v44;
        v45 = a2[11];
        v96[12] = a2[12];
        v96[11] = v45;
        v46 = a2[6];
        v96[5] = a2[5];
        v96[6] = v46;
        v47 = a2[7];
        v96[8] = a2[8];
        v96[7] = v47;
        v48 = a2[3];
        v96[4] = a2[4];
        v96[3] = v48;
        *(&v96[15] + 1) = v23;
        *&v96[16] = v24;
        *(&v96[16] + 1) = v25;
        *&v96[17] = v26;
        *(&v96[17] + 8) = *v27;
        BYTE8(v96[18]) = *(v27 + 16);
        v49 = PositionState.dispatchContainerSizeChange(context:axes:allowedAxes:)(v96, &v93);
        __src[8] = v90;
        __src[9] = v91;
        __src[10] = *v92;
        *(&__src[10] + 9) = *&v92[9];
        __src[4] = v86;
        __src[5] = v87;
        __src[6] = v88;
        __src[7] = v89;
        __src[0] = v82;
        __src[1] = v83;
        __src[2] = v84;
        __src[3] = v85;
        outlined destroy of PositionState(__src);
        if (!v49)
        {
          return 0;
        }

        v41 = 4;
      }

      memcpy(v96, __dst, 0x1D9uLL);
      v50 = v93;
      __src[0] = v117;
      __src[1] = v118;
      *&__src[2] = v11;
      *(&__src[2] + 1) = v12;
      __src[13] = v114;
      __src[14] = v115;
      *&__src[15] = v116;
      __src[9] = v110;
      __src[10] = v111;
      __src[11] = v112;
      __src[12] = v113;
      __src[5] = v106;
      __src[6] = v107;
      __src[7] = v108;
      __src[8] = v109;
      __src[3] = v104;
      __src[4] = v105;
      *(&__src[15] + 1) = v23;
      *&__src[16] = v24;
      *(&__src[16] + 1) = v25;
      *&__src[17] = v26;
      *(&__src[17] + 8) = v102;
      BYTE8(__src[18]) = v103;
      v84 = v99;
      v85 = v100;
      LOBYTE(v86) = v101;
      v82 = v97;
      v83 = v98;
      result = LazySubviewPlacements.placedAnchorTranslation(axes:placementContext:placements:)(v93, __src, &v82);
      if (v52)
      {
        memcpy(v96, __dst, 0x1D9uLL);
        memcpy(__src, __dst, 0x1D9uLL);
        implicit closure #1 in LazySubviewPlacements.makeAnchorTranslationIfNeeded(placements:context:newSize:reason:)(__src, v64, v32);
        LazySubviewPlacements.placedSubviewAnchor(subviews:frame:)(__src);

        v84 = __src[2];
        v85 = __src[3];
        v86 = __src[4];
        *&v87 = *&__src[5];
        v82 = __src[0];
        v83 = __src[1];
        v53 = *&__src[0];
        v79 = *(&__src[2] + 8);
        v80 = *(&__src[3] + 8);
        v81 = *(&__src[4] + 1);
        v77 = *(__src + 8);
        v78 = *(&__src[1] + 8);
        if (!*&__src[0])
        {
          return 0;
        }

        v54 = v87;
        memcpy(v96, __dst, 0x1D9uLL);
        v72 = v78;
        v73 = v79;
        v70 = *&__src[0];
        v74 = v80;
        v75 = v81;
        v71 = v77;
        __src[0] = v117;
        __src[1] = v118;
        *&__src[2] = v11;
        *(&__src[2] + 1) = v12;
        __src[13] = v114;
        __src[14] = v115;
        *&__src[15] = v116;
        __src[9] = v110;
        __src[10] = v111;
        __src[11] = v112;
        __src[12] = v113;
        __src[5] = v106;
        __src[6] = v107;
        __src[7] = v108;
        __src[8] = v109;
        __src[3] = v104;
        __src[4] = v105;
        *(&__src[15] + 1) = v23;
        *&__src[16] = v24;
        *(&__src[16] + 1) = v25;
        *&__src[17] = v26;
        *(&__src[17] + 8) = v102;
        BYTE8(__src[18]) = v103;
        v67 = v99;
        v68 = v100;
        v69 = v101;
        v65 = v97;
        v66 = v98;
        v55 = LazySubviewPlacements.placedAnchorTranslation(oldSubview:oldIndex:axes:placementContext:placements:)(&v70, v87, v50, __src, &v65);
        if (v57)
        {
          memcpy(v96, __dst, 0x1D9uLL);
          specialized LazySubviewPlacements.cache.getter();
          type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
          AGGraphGetValue();
          if (v58 & 1) == 0 || (memcpy(v96, __dst, 0x1D9uLL), v72 = v78, v73 = v79, v70 = v53, v74 = v80, v75 = v81, v71 = v77, __src[0] = v117, __src[1] = v118, *&__src[2] = v11, *(&__src[2] + 1) = v12, __src[13] = v114, __src[14] = v115, *&__src[15] = v116, __src[9] = v110, __src[10] = v111, __src[11] = v112, __src[12] = v113, __src[5] = v106, __src[6] = v107, __src[7] = v108, __src[8] = v109, __src[3] = v104, __src[4] = v105, *(&__src[15] + 1) = v23, *&__src[16] = v24, *(&__src[16] + 1) = v25, *&__src[17] = v26, *(&__src[17] + 8) = v102, BYTE8(__src[18]) = v103, v67 = v99, v68 = v100, v69 = v101, v65 = v97, v66 = v98, v59 = LazySubviewPlacements.notPlacedAnchorTranslation(oldSubview:oldIndex:axes:placementContext:placements:)(&v70, v54, v50, __src, &v65, a4), (v61))
          {
            outlined destroy of Logger?(&v82, &lazy cache variable for type metadata for (_LazyLayout_PlacedSubview, Int)?, type metadata accessor for (_LazyLayout_PlacedSubview, Int));
            return 0;
          }

          v63 = v59;
          if (((v59 | v60) & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v63 = v55;
          if (((v55 | v56) & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
LABEL_32:
            specialized LazySubviewPlacements.logAnchorTranslation(_:)();
            outlined destroy of Logger?(&v82, &lazy cache variable for type metadata for (_LazyLayout_PlacedSubview, Int)?, type metadata accessor for (_LazyLayout_PlacedSubview, Int));
            *a3 = v41;
            return v63;
          }
        }

        outlined destroy of Logger?(&v82, &lazy cache variable for type metadata for (_LazyLayout_PlacedSubview, Int)?, type metadata accessor for (_LazyLayout_PlacedSubview, Int));
        return v63;
      }

      if (((result | v51) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v62 = result;
        specialized LazySubviewPlacements.logAnchorTranslation(_:)();
        result = v62;
        *a3 = v41;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t initializeWithCopy for _LazyLayout_PlacedSubview(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE022LazySubviewMinorSizingF033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>, &type metadata for EnvironmentValues.LazySubviewMinorSizingKey, &protocol witness table for EnvironmentValues.LazySubviewMinorSizingKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE022LazySubviewMinorSizingV033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt0B5(a1, v6);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 72);

  return v4;
}

uint64_t sub_18D2A1EFC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t SizingState.prepare(minorSizing:properties:viewSize:)(char a1, uint64_t a2, _BYTE *a3, double a4, double a5)
{
  if (a1 == 2)
  {
    v8 = *a3 ^ 3;
    *(v5 + 32) = v8 & 3;

    *(v5 + 40) = a2;
    *v5 = a4;
    *(v5 + 8) = a5;
    if (v8)
    {
      v11 = *(v5 + 16);
      if (v11 <= a4)
      {
        v11 = a4;
      }

      *(v5 + 16) = v11;
    }

    if ((v8 & 2) != 0)
    {
      v12 = *(v5 + 24);
      if (v12 <= a5)
      {
        v12 = a5;
      }

      *(v5 + 24) = v12;
    }
  }

  else
  {
    v13 = *(v5 + 16);
    v14 = *(v5 + 24);

    *(v5 + 40) = 0;
    v15 = v13 != 0.0;
    if (v14 != 0.0)
    {
      v15 = 1;
    }

    *(v5 + 32) = 0;
    *v5 = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 33) = v15;
  }

  return result;
}

void SizingState.update(subviewFrame:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *(v4 + 32);
  if ((v9 & 1) != 0 && ((MaxX = CGRectGetMaxX(*&a1), v15.origin.x = a1, v15.origin.y = a2, v15.size.width = a3, v15.size.height = a4, CGRectGetMaxY(v15), v11 = *(v4 + 16), v11 > MaxX) ? (v12 = *(v4 + 16)) : (v12 = MaxX), v12 != v11))
  {
    *(v4 + 16) = v12;
    *(v4 + 33) = 1;
    if ((v9 & 2) == 0)
    {
      return;
    }
  }

  else if ((v9 & 2) == 0)
  {
    return;
  }

  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  CGRectGetMaxX(v16);
  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  MaxY = CGRectGetMaxY(v17);
  v14 = *(v4 + 24);
  if (v14 > MaxY)
  {
    MaxY = *(v4 + 24);
  }

  if (MaxY != v14)
  {
    *(v4 + 24) = MaxY;
    *(v4 + 33) = 1;
  }
}

unint64_t lazy protocol witness table accessor for type [_LazyLayout_PlacedSubview] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [_LazyLayout_PlacedSubview] and conformance [A];
  if (!lazy protocol witness table cache variable for type [_LazyLayout_PlacedSubview] and conformance [A])
  {
    _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(255, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [_LazyLayout_PlacedSubview] and conformance [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [_LazyLayout_PlacedSubview] and conformance [A];
  if (!lazy protocol witness table cache variable for type [_LazyLayout_PlacedSubview] and conformance [A])
  {
    type metadata accessor for _LazyLayout_Subview_V1?(255, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [_LazyLayout_PlacedSubview] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _LazyLayout_PlacedSubview(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for _LazyLayout_PlacedSubview(uint64_t result, int a2, int a3)
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

uint64_t _LazyLayout_PlacedSubview.size.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  if (*(*v0 + 44) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    Value = &static LayoutComputer.defaultValue;
  }

  else
  {
    Value = AGGraphGetValue();
  }

  v6 = *Value;
  v7 = one-time initialization token for lockAssertionsAreEnabled;

  if (v7 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    v9 = v1;
    v10 = v2;
    v11 = v3;
    v12 = v4;
    (*(*v6 + 120))(&v9);
  }

  return result;
}

Swift::Void __swiftcall LazyLayoutViewCache.updatePrefetchPhases()()
{
  if ((*(*v0 + 360))())
  {
    if (one-time initialization token for v7 != -1)
    {
      goto LABEL_57;
    }

    while (1)
    {
      v1 = static Semantics.v7;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
          return;
        }
      }

      else if (static Semantics.forced < v1)
      {
        return;
      }

      swift_beginAccess();
      if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(*(v0 + 32)))
      {
        return;
      }

      swift_beginAccess();
      v2 = *(v0 + 176);
      v3 = v2 + 64;
      v4 = 1 << *(v2 + 32);
      v5 = -1;
      if (v4 < 64)
      {
        v5 = ~(-1 << v4);
      }

      v6 = v5 & *(v2 + 64);

      swift_beginAccess();
      v7 = 0;
      v8 = (v4 + 63) >> 6;
      v39 = v2;
      v40 = v1;
      while (v6)
      {
LABEL_18:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(v2 + 56) + ((v7 << 9) | (8 * v10)));
        if (*(v11 + 224))
        {
          if (*(v11 + 212) == 3 && *(v0 + 192) < *(v0 + 208) - *(v11 + 188))
          {
            *(v11 + 212) = 0;

            goto LABEL_42;
          }

LABEL_27:
        }

        else
        {
          if (!*(v11 + 212))
          {

            LazyLayoutViewCache.resetMaxDisplayListSubviews(item:)(v13);
            goto LABEL_27;
          }

          v12 = *(v0 + 352);
          *(v0 + 344) = 0;
          *(v0 + 352) = 1;
          if (v12)
          {
          }

          else
          {
            v14 = *(v0 + 156);
            swift_beginAccess();
            v15 = *(v0 + 32);
            BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.UpdateCycleUseSetNeedsLayoutKey);
            v16 = v51;

            updated = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutV033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt0B5(v15, v16);
            v46 = v11;
            if (updated)
            {
              v18 = *(updated + 72);
            }

            else if (byte_1ED53C51C)
            {
              v18 = dyld_program_sdk_at_least();
            }

            else
            {
              v18 = static Semantics.forced >= v1;
            }

            swift_endAccess();
            v19 = swift_allocObject();
            *(v19 + 16) = v14;
            *(v19 + 24) = v18;
            specialized static Update.begin()();
            LOBYTE(v51) = 10;

            Update.Action.init(reason:thunk:)(&v51, closure #1 in LazyLayoutViewCache.signalPrefetch()partial apply, v19, v47);
            v43 = v47[0];
            v41 = v48;
            v38 = v50;
            v20 = one-time initialization token for actions;
            v45 = v49;

            if (v20 != -1)
            {
              swift_once();
            }

            v21 = static Update.actions;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
            }

            v23 = *(v21 + 2);
            v22 = *(v21 + 3);
            if (v23 >= v22 >> 1)
            {
              v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
            }

            *(v21 + 2) = v23 + 1;
            v24 = &v21[32 * v23];
            v24[32] = v43;
            *(v24 + 5) = v41;
            *(v24 + 6) = v45;
            *(v24 + 14) = v38;
            static Update.actions = v21;

            static Update.end()();

            v11 = v46;
          }

          *(v11 + 212) = 0;
          if ((*(v11 + 224) & 1) == 0)
          {
            LazyLayoutViewCache.resetMaxDisplayListSubviews(item:)(v11);
          }

LABEL_42:
          v25 = *(v0 + 156);
          swift_beginAccess();
          v26 = *(v0 + 32);
          BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.UpdateCycleUseSetNeedsLayoutKey);
          v27 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutV033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt0B5(v26, v51);
          if (v27)
          {
            v28 = *(v27 + 72);
          }

          else if (byte_1ED53C51C)
          {
            v28 = dyld_program_sdk_at_least();
          }

          else
          {
            v28 = static Semantics.forced >= v1;
          }

          swift_endAccess();
          v29 = swift_allocObject();
          *(v29 + 16) = v25;
          *(v29 + 24) = v28;
          specialized static Update.begin()();
          LOBYTE(v51) = 10;

          Update.Action.init(reason:thunk:)(&v51, closure #1 in LazyLayoutViewCache.signalPrefetch()partial apply, v29, v47);
          v30 = v47[0];
          v31 = v48;
          v32 = v49;
          v42 = v50;
          v33 = one-time initialization token for actions;

          if (v33 != -1)
          {
            swift_once();
          }

          v34 = static Update.actions;

          v44 = v31;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
          }

          v36 = *(v34 + 2);
          v35 = *(v34 + 3);
          if (v36 >= v35 >> 1)
          {
            v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v34);
          }

          *(v34 + 2) = v36 + 1;
          v37 = &v34[32 * v36];
          v37[32] = v30;
          *(v37 + 5) = v44;
          *(v37 + 6) = v32;
          *(v37 + 14) = v42;
          static Update.actions = v34;

          static Update.end()();

          v2 = v39;
          v1 = v40;
        }
      }

      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v8)
        {

          return;
        }

        v6 = *(v3 + 8 * v9);
        ++v7;
        if (v6)
        {
          v7 = v9;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_57:
      swift_once();
    }
  }
}

Swift::Void __swiftcall LazyLayoutViewCache.updateItemPhases()()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 176) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v3 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v7 &= v7 - 1;

        LazyLayoutViewCache.updateItemPhase(_:)(v11);
      }

      while (v7);
      continue;
    }
  }

  __break(1u);
}

uint64_t LazyLayoutViewCache.updateItemPhase(_:)(uint64_t a1)
{
  result = AGSubgraphIsValid();
  if (result)
  {
    v4 = *(a1 + 204);
    v5 = *(v1 + 224);
    result = AGGraphGetValue();
    v6 = *(result + 4);
    if (v4 == v5)
    {
      if (v6 == 1)
      {
        return result;
      }

      AGGraphGetValue();
      return AGGraphSetValue();
    }

    if (*(result + 4))
    {
      if (v6 == 1 && (*(a1 + 224) & 1) == 0)
      {
        AGGraphGetValue();
        result = AGGraphSetValue();
        *(a1 + 384) = 0;
        return result;
      }

      if (!*(a1 + 192))
      {
        *(a1 + 216) = 0;
        *(a1 + 224) = 1;
        if (LazyLayoutViewCache.supportsViewHierarchyPrefetching.getter())
        {
          v7 = 3;
        }

        else
        {
          v7 = 0;
        }

        *(a1 + 232) = 0u;
        v8 = a1 + 232;
        *(v8 - 20) = v7;
        *(v8 + 16) = 0u;
        *(v8 + 32) = 0u;
        *(v8 + 48) = 0u;
        *(v8 + 64) = 1;
        AGGraphGetValue();
        return AGGraphSetValue();
      }
    }
  }

  return result;
}

uint64_t static MinorProperties.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  swift_getAssociatedTypeWitness();
  type metadata accessor for MinorProperties();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void *specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  v18[1] = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;
  v14 = swift_retain_n();
  if (v11 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v17 = swift_slowAlloc();

      v15 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI12_ViewList_IDV9CanonicalVAH19LazyLayoutCacheItemCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i5UI12_kl5_IDV9n6V_AI19opqR4CTG5AOxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAlNIsgnndzo_Tf1nc_n03_s7i4UI19opkq21C7collectyyFSbAA01_E7l5_IDV9n13V3key_AA0cdF4R15C5valuet_tXEfU_AH0opkQ0CTf1nnc_nTm(v17, v12, a1, a2, a4);
      MEMORY[0x193AC4820](v17, -1, -1);

      return v15;
    }
  }

  MEMORY[0x1EEE9AC00](v14);
  bzero(v18 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v13);

  v15 = a3(v18 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v12, a1, a2);

  if (v7)
  {
    swift_willThrow();
  }

  return v15;
}

void type metadata accessor for [_LazyLayout_PlacedSubview](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 296);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t default argument 18 of StackPlacement.init(stack:axis:minor:visible:pinnedViews:queriedIndex:index:skipFirst:position:stoppingCondition:currentSubviews:lastSubviews:pendingHeader:placedSubviews:placedIndex:placedPosition:placedQuery:wasCancelled:estimations:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  a1[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v2);
  type metadata accessor for EstimationCache();
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
  v3 = MEMORY[0x1E69E6530];
  type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &lazy cache variable for type metadata for [Int], v3);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t partial apply for closure #1 in LazyStack<>.shouldResetEstimates(visibleLength:containerLength:cache:)@<X0>(double *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *a1;
  result = type metadata accessor for _LazyStack_Cache();
  v7 = *(v4 + *(result + 52));
  v8 = v7 > 0.0;
  if (v5 <= 0.0)
  {
    v8 = 0;
  }

  if (vabdd_f64(v7, v5) < 0.01)
  {
    v8 = 0;
  }

  *a2 = v8;
  return result;
}

uint64_t _LazyStack_Cache.resetEstimates()(uint64_t a1)
{
  v3 = type metadata accessor for IndexSet();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 60));
  v8 = MEMORY[0x1E69E7CC0];
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  *v7 = v9;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v8);

  v7[1] = v10;
  v14[1] = v8;
  lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
  v11 = MEMORY[0x1E69E6530];
  type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &lazy cache variable for type metadata for [Int], v11);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v12 = type metadata accessor for EstimationCache();
  return (*(v4 + 40))(v7 + *(v12 + 24), v6, v3);
}

uint64_t EstimationCache.add(length:spacing:count:)(unint64_t a1, char a2, void (*i)(void *a1@<X8>), double a4)
{
  v6 = v4;
  LOBYTE(v8) = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v81 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    goto LABEL_71;
  }

  v5 = v14;
  if (v12[3] >= v18)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_73;
    }

LABEL_6:
    *v6 = v12;
    if (v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
  v12 = v81;
  v19 = v81;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  if ((v5 & 1) == (v20 & 1))
  {
    goto LABEL_6;
  }

LABEL_14:
  v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_15:
  if ((v8 & 1) == 0)
  {
    goto LABEL_77;
  }

LABEL_16:
  v6[1] = v19;
  if ((a1 & 1) == 0)
  {
LABEL_17:
    a1 = v13;
    specialized _NativeDictionary._insert(at:key:value:)(v13, 0, v19, a4);
    v13 = a1;
  }

  while (1)
  {
    v30 = v19[7];
    v31 = *(v30 + 8 * v13);
    v17 = __OFADD__(v31, i);
    v32 = i + v31;
    if (!v17)
    {
      break;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    v8 = v13;
    specialized _NativeDictionary.copy()();
    v13 = v8;
    v19 = v81;
    v6[1] = v81;
    if ((a1 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  *(v30 + 8 * v13) = v32;
  for (i = protocol witness for Collection.startIndex.getter in conformance ViewGraphFeatureBuffer; ; i = 0)
  {
    if (v12[2] >= 0x1AuLL)
    {
      v33 = 1 << *(v12 + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v35 = v34 & v12[8];
      if (v35)
      {
        v36 = 0;
        v37 = __clz(__rbit64(v35));
        v38 = (v35 - 1) & v35;
        v39 = (v33 + 63) >> 6;
LABEL_29:
        v43 = v12[6];
        v44 = v12[7];
        v45 = *(v43 + 8 * v37);
        v46 = *(v44 + 8 * v37);
        if (!v38)
        {
          goto LABEL_31;
        }

        do
        {
          v47 = v36;
LABEL_35:
          v48 = (v47 << 9) | (8 * __clz(__rbit64(v38)));
          v49 = *(v43 + v48);
          v38 &= v38 - 1;
          v50 = *(v44 + v48);
          if (v50 < v46)
          {
            v45 = v49;
            v46 = v50;
          }
        }

        while (v38);
        while (1)
        {
LABEL_31:
          v47 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            __break(1u);
            goto LABEL_70;
          }

          if (v47 >= v39)
          {
            break;
          }

          v38 = v12[v47 + 8];
          ++v36;
          if (v38)
          {
            v36 = v47;
            goto LABEL_35;
          }
        }

        v13 = specialized __RawDictionaryStorage.find<A>(_:)(v45);
        if (v51)
        {
          v52 = v13;
          v53 = swift_isUniquelyReferenced_nonNull_native();
          v54 = *v6;
          v81 = *v6;
          if (!v53)
          {
            specialized _NativeDictionary.copy()();
            v54 = v81;
          }

          v13 = specialized _NativeDictionary._delete(at:)(v52, v54);
          *v6 = v54;
        }
      }

      else
      {
        v40 = 0;
        v41 = 0;
        v39 = (v33 + 63) >> 6;
        while (v39 - 1 != v41)
        {
          v36 = v41 + 1;
          v42 = v12[v41 + 9];
          v40 -= 64;
          ++v41;
          if (v42)
          {
            v38 = (v42 - 1) & v42;
            v37 = __clz(__rbit64(v42)) - v40;
            goto LABEL_29;
          }
        }
      }
    }

    v55 = v6[1];
    if (*(v55 + 16) < 0x1AuLL)
    {
      break;
    }

    v56 = 1 << *(v55 + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v58 = v57 & *(v55 + 64);
    if (!v58)
    {
      v63 = 0;
      v64 = 0;
      v62 = (v56 + 63) >> 6;
      while (v62 - 1 != v64)
      {
        v59 = v64 + 1;
        v65 = *(v55 + 72 + 8 * v64);
        v63 -= 64;
        ++v64;
        if (v65)
        {
          v61 = (v65 - 1) & v65;
          v60 = __clz(__rbit64(v65)) - v63;
          goto LABEL_52;
        }
      }

      break;
    }

    v59 = 0;
    v60 = __clz(__rbit64(v58));
    v61 = (v58 - 1) & v58;
    v62 = (v56 + 63) >> 6;
LABEL_52:
    v66 = *(v55 + 48);
    v67 = *(v55 + 56);
    v68 = *(v66 + 8 * v60);
    v69 = *(v67 + 8 * v60);
    if (!v61)
    {
      goto LABEL_54;
    }

    do
    {
      v70 = v59;
LABEL_58:
      v71 = (v70 << 9) | (8 * __clz(__rbit64(v61)));
      v72 = *(v66 + v71);
      v61 &= v61 - 1;
      v73 = *(v67 + v71);
      if (v73 < v69)
      {
        v68 = v72;
        v69 = v73;
      }
    }

    while (v61);
LABEL_54:
    while (1)
    {
      v70 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v70 >= v62)
      {
        v74 = specialized __RawDictionaryStorage.find<A>(_:)(v68);
        if ((v75 & 1) == 0)
        {
          goto LABEL_66;
        }

        v76 = v74;
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v78 = v6[1];
        if (!v77)
        {
          specialized _NativeDictionary.copy()();
        }

        specialized _NativeDictionary._delete(at:)(v76, v78);
        result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(i);
        v6[1] = v78;
        return result;
      }

      v61 = *(v55 + 64 + 8 * v70);
      ++v59;
      if (v61)
      {
        v59 = v70;
        goto LABEL_58;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    do
    {
      __break(1u);
LABEL_73:
      v80 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v80;
      v12 = v81;
      *v6 = v81;
      if ((v5 & 1) == 0)
      {
LABEL_7:
        v21 = v13;
        specialized _NativeDictionary._insert(at:key:value:)(v13, 0, v12, a4);
        v13 = v21;
      }

LABEL_8:
      v22 = v12[7];
      v23 = *(v22 + 8 * v13);
      v17 = __OFADD__(v23, i);
      v24 = i + v23;
    }

    while (v17);
    *(v22 + 8 * v13) = v24;
    if ((v8 & 1) == 0)
    {
      a4 = *&a1;
      LOBYTE(v8) = swift_isUniquelyReferenced_nonNull_native();
      v19 = v6[1];
      v81 = v19;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(*&a1);
      v26 = v19[2];
      v27 = (v25 & 1) == 0;
      v17 = __OFADD__(v26, v27);
      v28 = v26 + v27;
      if (v17)
      {
        __break(1u);
        goto LABEL_76;
      }

      a1 = v25;
      if (v19[3] >= v28)
      {
        goto LABEL_15;
      }

      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, v8);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
      if ((a1 & 1) == (v29 & 1))
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

LABEL_66:

  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(i);
}

uint64_t closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (a3)
  {
    LazyLayoutViewCache.item(data:)((result + 16));

    LayoutProxy.spacing()();
    v14 = *AGGraphGetValue();
    LazyLayoutViewCache.item(data:)((a5 + 16));

    LayoutProxy.spacing()();
    v9 = a4 & 1;
    v10 = Spacing.distanceToSuccessorView(along:layoutDirection:preferring:)(v9, &v14, &v13);
    LOBYTE(a5) = v11;

    if (a5)
    {
      result = swift_beginAccess();
      v12 = &unk_1EAB21528;
      if (!v9)
      {
        v12 = &static Spacing.defaultValue;
      }

      *a6 = *v12;
    }

    else
    {
      *a6 = v10;
    }
  }

  else
  {
    *a6 = a2;
  }

  return result;
}

uint64_t EstimationCache.merge(_:)(uint64_t *a1)
{
  v3 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v8);
  *v1 = v8;
  v5 = a1[1];

  v6 = swift_isUniquelyReferenced_nonNull_native();
  v8 = v1[1];
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v5, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v6, &v8);
  v1[1] = v8;
  type metadata accessor for EstimationCache();
  return IndexSet.formUnion(_:)();
}

uint64_t destroy for EstimationCache(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = type metadata accessor for IndexSet();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t specialized LazyStack<>.log(_:)(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for Logger?();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, static Log.lazyStack);
  outlined init with copy of EstimationCache(v10, v5, type metadata accessor for Logger?);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of EstimationCache(v5, type metadata accessor for Logger?);
  }

  v12 = (*(v7 + 32))(v9, v5, v6);
  v13 = a1(v12);
  v15 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v25 = v13;
    v19 = v18;
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315394;
    v21 = _typeName(_:qualified:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v26);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v15, &v26);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_18D018000, v16, v17, "%s: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v20, -1, -1);
    MEMORY[0x193AC4820](v19, -1, -1);
  }

  else
  {
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t destroy for StackPlacement(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)(a1, *(a2 + 16));
  v4 = *(v3 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6 + 8;
  v8 = *(v6 + 80);
  v9 = (a1 + v4 + (v8 | 7) + 1) & ~(v8 | 7);
  (*(v6 + 8))((v8 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8, AssociatedTypeWitness);
  v10 = ((((((((*(v7 + 56) + ((v8 + 16) & ~v8) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 43) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15;

  v11 = (((v10 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v11 >= 0xFFFFFFFFuLL)
  {

    __swift_destroy_boxed_opaque_existential_1((v11 + 2));
  }

  v12 = (((((((v11 + 119) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = type metadata accessor for IndexSet();
  v17 = *(v13 - 8);
  v14 = *(v17 + 80);

  v15 = *(v17 + 8);

  return v15((v14 + ((((v12 + (v14 | 7) + 17) & ~(v14 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14, v13);
}

void type metadata accessor for KeyPath<EnvironmentValues, CGFloat>()
{
  if (!lazy cache variable for type metadata for KeyPath<EnvironmentValues, CGFloat>)
  {
    v0 = type metadata accessor for KeyPath();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, CGFloat>);
    }
  }
}

Swift::Int __swiftcall _ViewList_Node.estimatedCount(style:)(SwiftUI::_ViewList_IteratorStyle style)
{
  v2 = *style.value;
  outlined init with copy of _ViewList_Node(v1, &v19);
  if (v24 <= 1u)
  {
    if (!v24)
    {
      outlined init with take of AnyTrackedValue(&v19, &v13);
      v3 = *(&v14 + 1);
      v4 = v15;
      __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
      v18 = v2;
      v5 = (*(v4 + 24))(&v18, v3, v4);
      __swift_destroy_boxed_opaque_existential_1(&v13);
      return v5;
    }

    v15 = v21;
    v16 = v22;
    v17[0] = *v23;
    *(v17 + 13) = *&v23[13];
    v13 = v19;
    v14 = v20;
    v5 = *(&v19 + 1);
    outlined destroy of _ViewList_Sublist(&v13);
    if ((v2 & 1) == 0)
    {
      return v5;
    }

    v12 = (v5 * (v2 >> 1)) >> 64;
    v5 *= v2 >> 1;
    if (v12 == v5 >> 63)
    {
      return v5;
    }

    __break(1u);
LABEL_13:
    LODWORD(v13) = v19;
    *(&v13 + 1) = *(&v19 + 1);
    *&v14 = v20;
    BYTE8(v14) = BYTE8(v20);
    v18 = v2;
    v5 = _ViewList_Section.estimatedCount(style:)(&v18);

LABEL_14:

    return v5;
  }

  if (v24 != 2)
  {
    goto LABEL_13;
  }

  v6 = *(v19 + 16);
  if (!v6)
  {

    return 0;
  }

  v5 = 0;
  v7 = v19 + 32;
  while (1)
  {
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v7, &v13, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    v8 = *(&v14 + 1);
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    v18 = v2;
    result = (*(v9 + 24))(&v18, v8, v9);
    v11 = __OFADD__(v5, result);
    v5 += result;
    if (v11)
    {
      break;
    }

    outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(&v13, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
    v7 += 48;
    if (!--v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t StackPlacement.place(subviews:from:position:stopping:style:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t *a6, uint64_t a7)
{
  v8 = v7;
  v14 = *a6;
  v15 = *(a7 + 44);
  v24[8] = a3;
  *&v24[9] = a1;
  v25 = *(v8 + v15);
  v16 = *(a7 + 16);
  v17 = *(a7 + 24);
  specialized StackPlacement.log(_:)(partial apply for implicit closure #3 in StackPlacement.place(subviews:from:position:stopping:style:));
  result = StackPlacement.reset(index:position:stoppingCondition:skipFirst:)(a3, a4, a5 & 1, 0, a7, a1);
  v19 = *(a7 + 56);
  v20 = *(v8 + v19);
  v21 = *(v8 + *(a7 + 40));
  if (v20 >= v21)
  {
    *(v8 + *(a7 + 60)) = 1;
    v22 = __OFSUB__(v20, v21);
    v20 -= v21;
    if (v22)
    {
      __break(1u);
      return result;
    }

    *(v8 + v19) = v20;
  }

  v26 = v14;
  v27 = v20;
  MEMORY[0x1EEE9AC00](result);
  v24[2] = v16;
  v24[3] = v17;
  v24[4] = v8;
  v23 = _LazyLayout_Subviews.applyNodes(from:style:to:)(&v27, &v26, partial apply for closure #1 in StackPlacement.place(subviews:from:position:stopping:style:), v24);
  StackPlacement.flushMinorGroup()(a7);
  return (v23 & 1) != 0 && vabdd_f64(*(v8 + *(a7 + 64)), *(v8 + *(a7 + 92) + 8)) < 0.01;
}

uint64_t initializeWithCopy for _LazyLayout_Subviews(uint64_t a1, uint64_t a2)
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

uint64_t destroy for _LazyLayout_Subviews.Node(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 == 1)
  {
  }

  v4 = *(a1 + 109);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      goto LABEL_15;
    }

    if (v4 == 3)
    {

      goto LABEL_15;
    }
  }

  else if (*(a1 + 109))
  {
    if (v4 == 1)
    {

      __swift_destroy_boxed_opaque_existential_1(a1 + 48);

LABEL_15:
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 16);
  }
}

BOOL StackPlacement.isVisible(length:)(_BOOL8 result, double a2)
{
  v3 = (v2 + *(result + 68));
  if (*(v3 + 8) == 1)
  {
    v4 = (v2 + *(result + 44));
    v5 = *(result + 64);
    v6 = *(v2 + v5);
    v7 = *v4;
    if (*v4 <= v6)
    {
      v7 = *(v2 + v5);
    }

    v8 = v6 + a2;
    if (v8 >= v4[1])
    {
      v8 = v4[1];
    }

    v9 = a2 == 0.0;
    if (v7 != v8)
    {
      v9 = 0;
    }

    return v7 < v8 || v9;
  }

  else
  {
    v10 = *(v2 + *(result + 56));
    v11 = *(v2 + *(result + 40)) + v10;
    if (v11 < v10)
    {
      __break(1u);
    }

    else
    {
      v12 = *v3;
      return v12 >= v10 && v12 < v11;
    }
  }

  return result;
}

int *StackPlacement.addVisibleSubview(length:spacing:)(int *result, double a2, double a3)
{
  v4 = (v3 + result[22]);
  v5 = *(v3 + result[14]);
  v6 = *v4;
  v7 = v4[1];
  if (v5 < *v4)
  {
    v6 = *(v3 + result[14]);
  }

  *v4 = v6;
  v8 = *(v3 + result[10]);
  v9 = __OFADD__(v5, v8);
  v10 = v5 + v8;
  v11 = v9;
  if (v10 - 1 > v7)
  {
    v7 = v10 - 1;
  }

  v4[1] = v7;
  v12 = (v3 + result[23]);
  v13 = *(v3 + result[16]);
  v14 = v13 - a3;
  if (v14 >= *v12)
  {
    v14 = *v12;
  }

  v15 = v13 + a2;
  if (v12[1] > v15)
  {
    v16 = v12[1];
  }

  else
  {
    v16 = v15;
  }

  *v12 = v14;
  v12[1] = v16;
  v17 = v3 + result[13];
  if ((*(v17 + 8) & 1) == 0)
  {
    if (v11)
    {
      __break(1u);
    }

    else if (v10 >= v5)
    {
      if (*v17 >= v5 && *v17 < v10)
      {
        v19 = (v3 + result[24]);
        v20 = *v19;
        if (v13 < *v19)
        {
          v20 = v13;
        }

        if (v19[1] > v15)
        {
          v15 = v19[1];
        }

        *v19 = v20;
        v19[1] = v15;
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t destroy for _LazyStack_Cache(unsigned __int16 *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 84);
  v5 = *(v3 + 80);
  v6 = ~v5;
  v7 = ((v5 + 16) & ~v5) + *(v3 + 64);
  if (v4)
  {
    if ((*(v3 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & v6, *(v3 + 84), AssociatedTypeWitness))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!*(a1 + v7))
  {
    goto LABEL_20;
  }

  v8 = (*(a1 + v7) - 1) << (8 * v7);
  if (v7 > 3)
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7 <= 3 ? ((v5 + 16) & ~v5) + *(v3 + 64) : 4;
    if (v9 > 2)
    {
      v10 = v9 == 3 ? *a1 | (*(a1 + 2) << 16) : *a1;
    }

    else
    {
      v10 = v9 == 1 ? *a1 : *a1;
    }
  }

  else
  {
    v10 = 0;
  }

  if ((v10 | v8) == 0xFFFFFFFF)
  {
LABEL_20:
    (*(v3 + 8))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & v6, AssociatedTypeWitness);
  }

LABEL_21:
  if (v4)
  {
    v11 = a1;
  }

  else
  {
    v11 = a1 + 1;
  }

  v12 = ((((((((&v11[v7 + 23] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = type metadata accessor for IndexSet();
  v17 = *(v13 - 8);
  v14 = *(v17 + 80);

  v15 = *(v17 + 8);

  return v15((v14 + ((((v12 + (v14 | 7) + 8) & ~(v14 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14, v13);
}

uint64_t closure #1 in LazySubviewPlacements.transaction.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for LazyLayoutViewCache();
  AGGraphGetValue();
  swift_beginAccess();
  *a1 = *AGGraphGetValue();
}

void type metadata accessor for KeyPath<EnvironmentValues, LazySubviewMinorSizingConfiguration>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t initializeWithCopy for _LazyLayout_Placements(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t lazy protocol witness table accessor for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentFetch<LazySubviewMinorSizingConfiguration>, &type metadata for LazySubviewMinorSizingConfiguration, type metadata accessor for EnvironmentFetch);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t LazyLayoutCacheItem.attach(to:)()
{
  result = AGSubgraphAddChild();
  v2 = *(v0 + 386);
  if (v2 != 2 && (v2 & 1) != 0)
  {
    result = AGSubgraphApply();
  }

  *(v0 + 386) = 0;
  return result;
}

uint64_t LazyViewGeometry.value.getter@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    __break(1u);
LABEL_26:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  Value = AGGraphGetValue();
  LazyLayoutViewCache.placement(of:in:)(a1, *Value, &v39);
  if (v47)
  {
    v5 = AGGraphGetValue();
    v6 = v5[1];
    v37 = *v5;
    v38 = v6;
    ViewSize.proposal.getter(&v33);
    v7 = v33;
    v8 = v34;
    v32 = 0.0;
    v9 = 0.0;
    v10 = v35;
    v11 = 0.0;
    v12 = 0.0;
    v13 = v36;
  }

  else
  {
    v11 = v45;
    v12 = v46;
    v9 = v44;
    v32 = v43;
    v10 = v41;
    v7 = v39;
    v8 = v40;
    v13 = v42;
  }

  if (*(a1 + 44) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v14 = &static LayoutComputer.defaultValue;
  }

  else
  {
    v14 = AGGraphGetValue();
  }

  v15 = *v14;
  v16 = *(v14 + 1);
  v17 = one-time initialization token for lockAssertionsAreEnabled;
  swift_retain_n();
  if (v17 != -1)
  {
    swift_once();
  }

  if (lockAssertionsAreEnabled)
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      goto LABEL_26;
    }
  }

  *&v37 = v7;
  if (v13)
  {
    v18 = NAN;
  }

  else
  {
    v18 = v10;
  }

  BYTE8(v37) = v8 & 1;
  *&v38 = v10;
  BYTE8(v38) = v13 & 1;
  if (v8)
  {
    v19 = NAN;
  }

  else
  {
    v19 = v7;
  }

  v20 = (*(*v15 + 120))(&v37);
  v22 = v21;
  v23 = v11 - v32 * v20;
  v24 = v12 - v9 * v21;
  *a2 = v23;
  *(a2 + 8) = v24;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v19;
  *(a2 + 56) = v18;

  v25 = *AGGraphGetValue();
  v26 = AGGraphGetValue();
  if (v25 == 1)
  {
    v27 = *v26;
    v48.origin.x = v11 - v32 * v20;
    v48.origin.y = v24;
    v48.size.width = v20;
    v48.size.height = v22;
    v23 = v27 - CGRectGetMaxX(v48);
    *a2 = v23;
  }

  type metadata accessor for CGPoint(0);
  v28 = AGGraphGetValue();
  v29 = *v28;
  v30 = v28[1];

  *a2 = v23 + v29;
  *(a2 + 8) = v24 + v30;
  return result;
}

uint64_t LazyLayoutViewCache.placement(of:in:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(result + 224) & 1) == 0)
  {
    v3 = *(result + 216);
    v4 = *(a2 + 16);
    if (v3 < v4)
    {
      if (v3 < 0)
      {
        __break(1u);
        return result;
      }

      v5 = a2 + 80 * v3;
      v7 = *(v5 + 32);
      v6 = v5 + 32;
      if (v7 == result)
      {
        v17 = *(v6 + 24);
        *a3 = *(v6 + 8);
        *(a3 + 16) = v17;
        v15 = *(v6 + 40);
        v16 = *(v6 + 56);
LABEL_14:
        *(a3 + 32) = v15;
        *(a3 + 48) = v16;
        *(a3 + 64) = 0;
        return result;
      }
    }

    if (v4)
    {
      v8 = (a2 + 40);
      while (*(v8 - 1) != result)
      {
        v8 += 5;
        if (!--v4)
        {
          goto LABEL_9;
        }
      }

      v14 = v8[1];
      *a3 = *v8;
      *(a3 + 16) = v14;
      v15 = v8[2];
      v16 = v8[3];
      goto LABEL_14;
    }
  }

LABEL_9:
  v9 = *(result + 368);
  if (v9)
  {
    v10 = *(result + 248);
    *(a3 + 64) = *(result + 296);
    *a3 = *(result + 232);
    *(a3 + 16) = v10;
    v11 = *(result + 280);
    *(a3 + 32) = *(result + 264);
    *(a3 + 48) = v11;
  }

  else
  {
    v12 = *(result + 320);
    *a3 = *(result + 304);
    *(a3 + 16) = v12;
    v13 = *(result + 352);
    *(a3 + 32) = *(result + 336);
    *(a3 + 48) = v13;
    *(a3 + 64) = v9;
  }

  return result;
}

uint64_t LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:)(void *__src, __int128 *a2, CGRect *a3, CGRect *a4, uint64_t a5)
{
  v6 = v5;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v78, __src, 0x129uLL);
  LazySubviewPlacements.resolvedPlacementContext(placementContext:)(v78, a5, v76);
  type metadata accessor for LazyLayoutViewCache();
  v11 = *AGGraphGetValue();
  v13 = *(a5 + 16);
  v12 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = v13;
  v55 = v12;
  v56 = v6;
  v57 = v76;
  v58 = a2;
  v15 = *(*v11 + 408);

  v15(AssociatedTypeWitness, partial apply for closure #1 in LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:), v53, AssociatedTypeWitness, MEMORY[0x1E69E7CA8] + 8);

  if (*(a2 + 40) == 1)
  {
    v16 = *(v6 + 40);
    if (v16 != *MEMORY[0x1E698D3F8])
    {
      v17 = v16;
      AGGraphGetValue();

      LazyLayoutViewCache.invalidateSize(layoutComputer:animation:)(v17, 0);
    }
  }

  memcpy(v75, v6, sizeof(v75));
  v18 = LazySubviewPlacements.transaction.getter();
  type metadata accessor for KeyPath<EnvironmentValues, LazySubviewMinorSizingConfiguration>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v19);
  v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V031ScrollContentAdjustmentBehaviorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(v18, v78[0]);
  if (v20)
  {
    v21 = *(v20 + 72) == 2;
  }

  else
  {
    v21 = 0;
  }

  AGGraphGetValue();

  v22 = *AGGraphGetValue();

  v23 = *(v6 + 432);
  v24 = *(v6 + 440);
  v25 = *(v6 + 448);
  result = AGGraphGetValue();
  v74 = 5;
  v27 = 0.0;
  if (v25)
  {
    v28 = 0.0;
  }

  else
  {
    v29 = v23 == 0.0;
    if (v24 != 0.0)
    {
      v29 = 0;
    }

    v28 = 0.0;
    if (!v29 && !v21)
    {
      v74 = 1;
      v27 = v24;
      v28 = v23;
    }
  }

  v30 = *(a2 + 6);
  v31 = *(a2 + 7);
  v32 = v30 == 0.0;
  if (v31 != 0.0)
  {
    v32 = 0;
  }

  if (!v32 && !v21)
  {
    v28 = v28 + v30;
    v27 = v27 + v31;
    v74 = 0;
  }

  v33 = v28 != 0.0;
  if (v27 != 0.0)
  {
    v33 = 1;
  }

  if (!v33 && !v21)
  {
    memcpy(v67, v6, 0x1D9uLL);
    memcpy(__srca, v6, 0x1D9uLL);
    v34 = a2[1];
    v35 = a2[3];
    v69 = a2[2];
    v70 = v35;
    v36 = *a2;
    v37 = *a2;
    v68[1] = a2[1];
    v68[0] = v36;
    v38 = a2[3];
    v63 = v69;
    v64 = v38;
    v71 = *(a2 + 64);
    v65 = *(a2 + 64);
    v61 = v37;
    v62 = v34;
    memcpy(v60, __dst, 0x129uLL);
    v39 = *(a5 - 8);
    (*(v39 + 16))(v59, v67, a5);
    outlined init with copy of _LazyLayout_Placements(v68, v59);
    *&v40 = COERCE_DOUBLE(specialized LazySubviewPlacements.makeAnchorTranslationIfNeeded(placements:context:newSize:reason:)(&v61, v60, &v74, a5));
    v42 = v41;
    v44 = v43;
    v72[2] = v63;
    v72[3] = v64;
    v73 = v65;
    v72[1] = v62;
    v72[0] = v61;
    outlined destroy of _LazyLayout_Placements(v72);
    memcpy(v78, __srca, 0x1D9uLL);
    result = (*(v39 + 8))(v78, a5);
    if ((v44 & 1) == 0)
    {
      v28 = *&v40;
      v27 = v42;
    }
  }

  if ((v22 & (v28 != 0.0)) != 0)
  {
    v45 = -v28;
  }

  else
  {
    v45 = v28;
  }

  if (v27 != 0.0 || v28 != 0.0)
  {
    v47 = v74;
    if (v74 != 5)
    {
      specialized LazySubviewPlacements.logTranslation(_:reason:)(v74, v45, v27);
      *a3 = CGRectOffset(*a3, v45, v27);
      *a4 = CGRectOffset(*a4, v45, v27);
      *(v6 + 456) = v45;
      *(v6 + 464) = v27;
      *(v6 + 472) = 0;
      AGGraphClearUpdate();
      memcpy(v78, v6, 0x1D9uLL);
      LazySubviewPlacements.parent.getter(v67);
      AGGraphSetUpdate();
      if (v47)
      {
        memcpy(v78, v6, 0x1D9uLL);
        if (LazySubviewPlacements.scrollPhase.getter())
        {
          v48 = v47 == 1;
        }

        else
        {
          v48 = 1;
        }

        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      outlined init with copy of Scrollable?(v67, v78);
      v50 = v78[3];
      if (v78[3])
      {
        v51 = v78[4];
        __swift_project_boxed_opaque_existential_1(v78, v78[3]);
        __srca[0] = v49;
        (*(v51 + 32))(__srca, v50, v51, v45, v27);
        outlined destroy of Scrollable?(v67);
        result = __swift_destroy_boxed_opaque_existential_1(v78);
      }

      else
      {
        outlined destroy of Scrollable?(v67);
        result = outlined destroy of Scrollable?(v78);
      }
    }
  }

  *(v6 + 432) = 0;
  *(v6 + 440) = 0;
  *(v6 + 448) = 1;
  return result;
}

uint64_t LazyStack<>.placer(subviews:context:cache:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v99 = a2;
  v98 = a5;
  v8 = type metadata accessor for EstimationCache();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v88 = (v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v89 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MinorProperties();
  v13 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v85 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v91 = v79 - v14;
  v94 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v90 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v79 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v79 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v79 - v24;
  v97 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v92 = v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v95 = v79 - v29;
  v30 = *(a1 + 32);
  v31 = *(a1 + 40);
  v86 = *(a1 + 48);
  v32 = *(a1 + 104);
  v33 = *(a1 + 136);
  v106 = *(a1 + 120);
  v107.origin = v33;
  v107.size = *(a1 + 152);
  v34 = *(a1 + 72);
  v102 = *(a1 + 56);
  v35 = *(a1 + 88);
  v105 = v32;
  v103 = v34;
  v104 = v35;
  v36 = *(a1 + 280);
  v37 = *(a1 + 288);
  v38 = *(a1 + 296);
  v39 = (*(a4 + 32))(a3, a4);
  if (v38 == 1)
  {
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v37, v36));
  }

  origin = v107.origin;
  size = v107.size;
  result = CGRectIsNull(v107);
  if (result)
  {
    goto LABEL_25;
  }

  v43 = v39 & 1;
  if (v39)
  {
    height = size.height;
  }

  else
  {
    height = size.width;
  }

  if (v39)
  {
    y = origin.y;
  }

  else
  {
    y = origin.x;
  }

  v46 = y + height;
  if (v46 >= y)
  {
    v47 = y;
  }

  else
  {
    v47 = v46;
  }

  if (y > v46)
  {
    v46 = y;
  }

  v48 = v47 > v46 ? 0.0 : v46;
  v49 = v47 > v46 ? 0.0 : v47;
  v50 = v49 > 0.0 ? v49 : 0.0;
  if (v50 >= v48)
  {
LABEL_25:
    MEMORY[0x1EEE9AC00](result);
    specialized LazyStack<>.log(_:)(partial apply for implicit closure #1 in LazyStack<>.placer(subviews:context:cache:));
    v51 = type metadata accessor for _LazyStack_Cache();
LABEL_26:
    _LazyStack_Cache.reset()(v51);
    v52 = type metadata accessor for StackPlacement();
    return (*(*(v52 - 8) + 56))(v98, 1, 1, v52);
  }

  if (v50 <= v48)
  {
    if (v39)
    {
      v53 = v30;
    }

    else
    {
      v53 = v31;
    }

    v101 = v53;
    LazyStack<>.resolveMinorProperties(minorSize:cache:)(&v101, a3, a4, v25);
    v54 = v97;
    v84 = *(v97 + 48);
    if (v84(v25, 1, v12) == 1)
    {
      v55 = (*(v94 + 8))(v25, v13);
LABEL_41:
      MEMORY[0x1EEE9AC00](v55);
      specialized LazyStack<>.log(_:)(partial apply for implicit closure #2 in LazyStack<>.placer(subviews:context:cache:));
      v51 = type metadata accessor for _LazyStack_Cache();
      goto LABEL_26;
    }

    v56 = *(v54 + 32);
    v81 = v54 + 32;
    v80 = v56;
    v56(v95, v25, v12);
    v83 = v43;
    if (v43)
    {
      v57 = v31;
    }

    else
    {
      v57 = v30;
    }

    if (v57 <= 0.0)
    {
      v55 = (*(v54 + 8))(v95, v12);
      goto LABEL_41;
    }

    v58 = *(v54 + 16);
    v79[1] = v54 + 16;
    v79[0] = v58;
    v58(v22, v95, v12);
    (*(v54 + 56))(v22, 0, 1, v12);
    v59 = *(v94 + 16);
    v59(v19, v99, v13);
    v82 = *(TupleTypeMetadata2 + 48);
    v60 = v91;
    v59(v91, v22, v13);
    v59(&v60[v82], v19, v13);
    if (v84(v60, 1, v12) == 1)
    {
      v61 = v19;
      v62 = *(v94 + 8);
      v62(v61, v13);
      v62(v22, v13);
      v63 = v84(&v60[v82], 1, v12);
      v64 = v97;
      if (v63 == 1)
      {
        v62(v60, v13);
        v65 = v95;
LABEL_46:
        v69 = v89;
        (*(v87 + 16))(v89, v96, a3);
        v70 = v92;
        (v79[0])(v92, v65, v12);
        v100 = v86;
        memset(&v107, 0, sizeof(v107));
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v102 = 0u;
        v71 = v88;
        default argument 18 of StackPlacement.init(stack:axis:minor:visible:pinnedViews:queriedIndex:index:skipFirst:position:stoppingCondition:currentSubviews:lastSubviews:pendingHeader:placedSubviews:placedIndex:placedPosition:placedQuery:wasCancelled:estimations:)(v88);
        (*(v64 + 8))(v65, v12);
        v78 = v71;
        v72 = v98;
        StackPlacement.init(stack:axis:minor:visible:pinnedViews:queriedIndex:index:skipFirst:position:stoppingCondition:currentSubviews:lastSubviews:pendingHeader:placedSubviews:placedIndex:placedPosition:placedQuery:wasCancelled:estimations:)(v69, v83, v70, &v100, 0, 1, 0, 0, v98, v50, v48, 0.0, INFINITY, -INFINITY, INFINITY, -INFINITY, 0, 1, MEMORY[0x1E69E7CC0], 0, &v102, MEMORY[0x1E69E7CC0], 0x7FFFFFFFFFFFFFFFLL, 0x8000000000000000, 0, v78, a3);
        v73 = type metadata accessor for StackPlacement();
        return (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
      }
    }

    else
    {
      v59(v90, v60, v13);
      v66 = v82;
      if (v84(&v60[v82], 1, v12) != 1)
      {
        v74 = &v60[v66];
        v75 = v92;
        v80(v92, v74, v12);
        LODWORD(TupleTypeMetadata2) = static MinorProperties.== infix(_:_:)(v90, v75);
        v76 = *(v97 + 8);
        v76(v75, v12);
        v77 = *(v94 + 8);
        v77(v19, v13);
        v77(v22, v13);
        v76(v90, v12);
        v64 = v97;
        v77(v91, v13);
        v65 = v95;
        if (TupleTypeMetadata2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      v67 = *(v94 + 8);
      v67(v19, v13);
      v67(v22, v13);
      v64 = v97;
      (*(v97 + 8))(v90, v12);
    }

    (*(v85 + 8))(v60, TupleTypeMetadata2);
    v65 = v95;
LABEL_45:
    v68 = type metadata accessor for _LazyStack_Cache();
    _LazyStack_Cache.reset()(v68);
    goto LABEL_46;
  }

  __break(1u);
  return result;
}

uint64_t _LazyLayoutViewCache.supportsPrefetching.getter()
{
  v1 = *v0;
  swift_beginAccess();
  if (static CoreTesting.isRunning)
  {
    return 0;
  }

  result = AGSubgraphIsValid();
  if (result)
  {
    (*(*(v1 + 448) + 32))(&v4);
    v3 = v4;
    return (*AGGraphGetValue() & v3) != 0;
  }

  return result;
}

uint64_t $defer #1 <A>() in LazySubviewPlacements.updateValue()(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  v6 = a2[1];
  *(a1 + 272) = *a2;
  *(a1 + 288) = v6;
  v7 = a3[1];
  *(a1 + 304) = *a3;
  *(a1 + 320) = v7;
  v8 = *(a4 + 12);
  v9 = *(a4 + 152);
  *(a1 + 336) = *(a4 + 136);
  *(a1 + 352) = v9;
  v10 = *MEMORY[0x1E698D3F8];
  v11 = 0uLL;
  if (v8 != *MEMORY[0x1E698D3F8])
  {
    v11 = *AGGraphGetValue();
  }

  v12 = *(a4 + 16);
  v13 = *(a4 + 32);
  *(a1 + 368) = v11;
  *(a1 + 384) = v12;
  *(a1 + 400) = v13;
  type metadata accessor for LazyLayoutViewCache();
  result = AGGraphGetValue();
  v15 = *(a1 + 40);
  *(*result + 320) = *(a1 + 232);
  if (*(a1 + 249) == 1 && v15 != v10)
  {
    v16 = v15;
    v17 = *(a1 + 256);

    LazyLayoutViewCache.invalidateSize(layoutComputer:animation:)(v16, v17);
  }

  *(a1 + 249) = 0;
  return result;
}

uint64_t protocol witness for GraphMutation.apply() in conformance LazyLayoutCacheItem.AllItemsPhaseMutation()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    LazyLayoutViewCache.updateItemPhases()();
  }

  return result;
}

BOOL protocol witness for static TransactionKey._valuesEqual(_:_:) in conformance AnimationKey(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return (v2 | *a2) == 0;
  }

  else
  {
    return (*(*v2 + 104))() & 1;
  }
}

double protocol witness for InternalCustomAnimation.function.getter in conformance BezierAnimation@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  result = v2 / 3.0 + (*(v1 + 16) + v2) / 3.0;
  *a1 = *v1;
  *(a1 + 8) = v2 / 3.0;
  *(a1 + 16) = v4 / 3.0;
  *(a1 + 24) = result;
  *(a1 + 32) = v4 / 3.0 + (v3 + v4) / 3.0;
  *(a1 + 40) = 4;
  return result;
}

uint64_t specialized TextForegroundStyleModifier.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  *(v2 + 16) = AnyShapeStyle.init<A>(_:)(v6, a2);
  return v2;
}

unint64_t TextForegroundStyleModifier.modify(style:environment:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v6 = *(v2 + 16);
  v7 = *(a1 + 16);
  v12 = a2[1];
  v5 = v12;
  v13 = v7;
  v11 = v4;
  outlined copy of Text.Style.TextStyleColor(v7);
  v8 = Text.Style.TextStyleColor.baseStyle(in:)(&v11);
  outlined consume of Gradient.ProviderTag(v13);
  v9 = specialized ShapeStyle.copyStyle(name:in:foregroundStyle:)(0, v4, v5, v8, v6);

  result = outlined consume of Gradient.ProviderTag(*(a1 + 16));
  *(a1 + 16) = v9;
  return result;
}

uint64_t EnvironmentValues.lineLimit.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(void))
{
  v3 = *v2;
  if (v2[1])
  {

    v5 = a1(v3);
  }

  else
  {
    v6 = a2(*v2);
    if (v6)
    {
      return *(v6 + 72);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t AsymmetricTransition.body(content:phase:)@<X0>(unsigned __int8 a1@<W1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = a1;
  v6 = type metadata accessor for PlaceholderContentView();
  v7 = a2[2];
  v8 = a2[4];
  type metadata accessor for ApplyTransitionModifier();
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - v12;
  if (v5 == 2)
  {
    v14 = 1;
  }

  else
  {
    v14 = a1;
  }

  if ((a1 & 0xFE) != 0)
  {
    v15 = v5;
  }

  else
  {
    v15 = 1;
  }

  Transition.apply<A>(content:phase:)(v11, v14, v7, v6, v8, &protocol witness table for PlaceholderContentView<A>);
  v16 = a2[3];
  v17 = a2[5];
  v20[2] = &protocol witness table for PlaceholderContentView<A>;
  v20[3] = &protocol witness table for ApplyTransitionModifier<A>;
  WitnessTable = swift_getWitnessTable();
  Transition.apply<A>(content:phase:)(v13, v15, v16, v9, v17, WitnessTable);
  return (*(v10 + 8))(v13, v9);
}

uint64_t Transition.apply<A>(content:phase:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[0] = a4;
  v18[1] = a6;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ApplyTransitionModifier();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v18 - v15;
  (*(v9 + 16))(v11, v6, a3, v14);
  (*(v9 + 32))(v16, v11, a3);
  v16[*(v12 + 36)] = a2;
  View.modifier<A>(_:)(v16, v18[0], v12);
  return (*(v13 + 8))(v16, v12);
}

uint64_t ApplyTransitionModifier.Child.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for ObservationTracking._AccessList();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v56[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v56[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v56[-v14];
  type metadata accessor for ObservationTracking._AccessList?();
  v59 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v56[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56[-v21];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = type metadata accessor for UncheckedSendable();
  v68 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v25 = &v56[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v66 = &v56[-v27];
  MEMORY[0x1EEE9AC00](v28);
  v67 = &v56[-v29];
  v71 = a2;
  v72 = a3;
  v73 = a1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v30 = static ObservationCenter._current;
  swift_beginAccess();
  v31 = pthread_getspecific(v30[2]);
  if (!v31)
  {
    v32 = swift_slowAlloc();
    pthread_setspecific(v30[2], v32);
    v75 = type metadata accessor for ObservationCenter();
    *&v74 = v30[3];
    outlined init with take of Any(&v74, v32);

    v31 = v32;
  }

  outlined init with copy of Any(v31, &v74);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v33 = v69;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
    *(v33 + 24) = v19;
    goto LABEL_9;
  }

  a1 = v22;
  v57 = CurrentAttribute;
  v64 = AssociatedTypeWitness;
  swift_beginAccess();
  v58 = *(v33 + 24);
  *(v33 + 24) = MEMORY[0x1E69E7CC0];
  v35 = (*(v8 + 7))(v19, 1, 1, v7);
  MEMORY[0x1EEE9AC00](v35);
  v36 = v63;
  *&v56[-32] = v63;
  *&v56[-24] = partial apply for closure #1 in ApplyTransitionModifier.Child.value.getter;
  *&v56[-16] = &v70;
  v37 = type metadata accessor for Error();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), &v56[-48], v59, v37, v36, MEMORY[0x1E69E7288], &v69);
  v59 = v10;
  v38 = v68 + 32;
  AssociatedTypeWitness = *(v68 + 32);
  (AssociatedTypeWitness)(v66, v25, v36);
  outlined init with take of ObservationTracking._AccessList?(v19, a1);
  v39 = v60;
  outlined init with copy of ObservationTracking._AccessList?(a1, v60);
  if ((*(v8 + 6))(v39, 1, v7) == 1)
  {
    v10 = v7;
    outlined destroy of ObservationTracking._AccessList?(a1);
    a1 = v39;
    v40 = v65;
    goto LABEL_12;
  }

  v41 = v39;
  v42 = v62;
  v60 = *(v8 + 4);
  (v60)(v62, v41, v7);
  v10 = v7;
  (*(v8 + 2))(v61, v42, v7);
  v19 = *(v33 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v33 + 24) = v19;
  v68 = v38;
  v22 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v45 = v19[2];
  v44 = v19[3];
  if (v45 >= v44 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1, v19);
  }

  v19[2] = v45 + 1;
  v46 = v19 + ((v22[80] + 32) & ~v22[80]) + *(v22 + 9) * v45;
  v8 = v22;
  (v60)(v46, v61, v10);
  *(v33 + 24) = v19;
  (*(v22 + 1))(v62, v10);
  v40 = v65;
  v36 = v63;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(a1);
  (AssociatedTypeWitness)(v67, v66, v36);
  v47 = *(v33 + 24);
  v48 = *(v47 + 16);
  if (v48)
  {
    v50 = *(v8 + 2);
    v49 = v8 + 16;
    v68 = v50;
    v51 = v47 + ((v49[64] + 32) & ~v49[64]);
    v52 = *(v49 + 7);
    v66 = v47;

    v53 = v57;
    v54 = v59;
    do
    {
      (v68)(v54, v51, v10);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v53, v54);
      (*(v49 - 1))(v54, v10);
      v51 += v52;
      --v48;
    }

    while (v48);

    v40 = v65;
  }

  *(v33 + 24) = v58;

  return (*(*(v64 - 1) + 32))(v40, v67);
}

uint64_t closure #1 in closure #1 in ApplyTransitionModifier.Child.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7[2] = a1;
  v7[3] = a2;
  v4 = type metadata accessor for ApplyTransitionModifier();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for UncheckedSendable();
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #1 in closure #1 in ApplyTransitionModifier.Child.value.getter, v7, v4, v5, a3);
}

uint64_t closure #1 in closure #1 in closure #1 in ApplyTransitionModifier.Child.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  PlaceholderContentView.init()(a1, v7);
  type metadata accessor for ApplyTransitionModifier();
  (*(a2 + 24))();
  return UncheckedSendable.init(_:)(v9, AssociatedTypeWitness, a3);
}

uint64_t static AnyTransition.asymmetric(insertion:removal:)(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v6 = 0;
  v2 = *(*a1 + 80);

  result = v2(&v5, &unk_1F0065060, &protocol witness table for AnyTransition.InsertionVisitor);
  v4 = v6;
  if (v6)
  {

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AnyTransition.InsertionVisitor.visit<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnyTransition.RemovalVisitor();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  (*(v5 + 16))(v7, a1, a2, v10);
  (*(v5 + 32))(v12, v7, a2);
  *&v12[*(v8 + 36)] = 0;
  AnyTransition.visitBase<A>(applying:)(v12, *v2, v8, &protocol witness table for AnyTransition.RemovalVisitor<A>);
  v13 = *&v12[*(v8 + 36)];
  v14 = *(v9 + 8);

  v14(v12, v8);

  v2[1] = v13;
  return result;
}

uint64_t AnyTransition.RemovalVisitor.visit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v31 = a1;
  v7 = *(a3 - 8);
  v28 = a4;
  v29 = v7;
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v30 = v10;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 24);
  v32 = v11;
  v33 = v18;
  v34 = v17;
  v35 = v19;
  v20 = type metadata accessor for AsymmetricTransition();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v28 - v23;
  (*(v12 + 16))(v15, v5, v11, v22);
  (*(v29 + 16))(v9, v31, a3);
  AsymmetricTransition.init(insertion:removal:)(v15, v9, v11, a3, v24);
  swift_getWitnessTable();
  v25 = specialized AnyTransition.init<A>(_:)(v24, v20);
  (*(v21 + 8))(v24, v20);
  v26 = *(v30 + 36);

  *(v5 + v26) = v25;
  return result;
}

uint64_t AsymmetricTransition.init(insertion:removal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for AsymmetricTransition();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

float protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.OpacityColor@<S0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v11 = *a1;
  result = (*(**&v4 + 112))(&v11);
  v7 = v5;
  *a2 = result;
  *(a2 + 4) = v9;
  *(a2 + 8) = v10;
  *(a2 + 12) = v8 * v7;
  *(a2 + 16) = 2143289344;
  return result;
}

void type metadata accessor for KeyPath<EnvironmentValues, EnvironmentValues>()
{
  if (!lazy cache variable for type metadata for KeyPath<EnvironmentValues, EnvironmentValues>)
  {
    v0 = type metadata accessor for KeyPath();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, EnvironmentValues>);
    }
  }
}

uint64_t ForEachState.LazyEdits.appendInsert(id:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v28 = v5;
  v29 = v6;
  v30 = v7;
  v31 = v8;
  v25 = v9;
  v26 = a1;
  v32 = v9;
  v33 = v10;
  v24 = v10;
  v11 = type metadata accessor for ForEachState.EditsBuilder();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 32))(v18, v3, a2, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v18;
    v28 = v5;
    v29 = v6;
    v30 = v7;
    v31 = v8;
    v32 = v25;
    v33 = v24;
    v20 = type metadata accessor for ForEachState.Edits();
    ForEachState.Edits.appendInsert(id:)(v26, v20);
    *v3 = v27;
  }

  else
  {
    v21 = *(v12 + 32);
    v21(v14, v18, v11);
    ForEachState.EditsBuilder.appendInsert(id:)(v26, v11, ForEachState.Edits.appendInsert(id:));
    v21(v3, v14, v11);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t ForEachState.Edits.appendInsert(id:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  (*(v3 + 16))(v5, v7);
  type metadata accessor for Set();
  Set.insert(_:)();
  return (*(v3 + 8))(v9, v2);
}

uint64_t closure #2 in implicit closure #1 in ChildEnvironment.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v6 + 16))(v9, v7);
  v13 = a2;
  v14 = v9;
  v15 = 2;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v4, partial apply for closure #1 in compareValues<A>(_:_:options:), v12, a2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v10);
  LOBYTE(v4) = v16;
  result = (*(v6 + 8))(v9, a2);
  *a3 = v4;
  return result;
}

uint64_t ForEachState.Edits.appendRemove(id:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  (*(v3 + 16))(v5, v7);
  type metadata accessor for Set();
  Set.insert(_:)();
  return (*(v3 + 8))(v9, v2);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a2;
    v8 = a1;
    v9 = *v6;
    v10 = *v6 >> 62;
    if (!v10)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  v20 = a4;
  v21 = a3;
  v22 = a6;
  v23 = a5;
  result = __CocoaSet.count.getter();
  a5 = v23;
  a6 = v22;
  a3 = v21;
  a4 = v20;
  if (result < v7)
  {
    goto LABEL_16;
  }

LABEL_4:
  v12 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v24 = a6;
  v14 = v13 - v12;
  if (__OFSUB__(v13, v12))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v15 = a5;
  v16 = a3;
  v17 = a4;
  if (v10)
  {
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = __OFADD__(v18, v14);
  result = v18 + v14;
  if (v19)
  {
    goto LABEL_20;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v8, v7, v13, v16, v17, v15, v24);
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v14 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v13 = a6;
  v10 = a5;
  v7 = a3;
  v12 = a2;
  v22 = a7;
  v15 = *v8;
  v8 = (*v8 & 0xFFFFFFFFFFFFFF8);
  v9 = v8 + 4;
  v11 = &v8[a1 + 4];
  type metadata accessor for DynamicContainer.ItemInfo();
  result = swift_arrayDestroy();
  v17 = __OFSUB__(v7, v14);
  v14 = v7 - v14;
  if (v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v14)
  {
    goto LABEL_17;
  }

  v10 = v15 >> 62;
  if (!(v15 >> 62))
  {
    result = v8[2];
    v18 = result - v12;
    if (!__OFSUB__(result, v12))
    {
      goto LABEL_6;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_26:
  result = __CocoaSet.count.getter();
  v18 = result - v12;
  if (__OFSUB__(result, v12))
  {
    goto LABEL_28;
  }

LABEL_6:
  v19 = (v11 + 8 * v7);
  v20 = &v9[v12];
  if (v19 != v20 || v19 >= &v20[8 * v18])
  {
    memmove(v19, v20, 8 * v18);
  }

  if (v10)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v8[2];
  }

  if (__OFADD__(result, v14))
  {
    goto LABEL_29;
  }

  v8[2] = result + v14;
LABEL_17:
  if (v7 < 1)
  {
    return result;
  }

  if (__OFSUB__(v22 >> 1, v13))
  {
    goto LABEL_30;
  }

  if ((v22 >> 1) - v13 != v7)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

float specialized Color.AccentColorProvider.resolve(in:)(uint64_t *a1)
{
  v2 = a1[1];
  v9 = *a1;
  v1 = v9;
  v10 = v2;
  v3 = specialized Color.AccentColorProvider.baseColor(in:)(&v9);
  v9 = v1;
  v10 = v2;
  EnvironmentValues.effectiveTintAdjustmentMode.getter(&v8);
  v4 = v3;
  if (v8 == 1)
  {
    _s7SwiftUI8ColorBoxCyAA0C0V06AccentC8ProviderVGMaTm_0(0, &lazy cache variable for type metadata for ColorBox<Color.DesaturatedColor>, lazy protocol witness table accessor for type Color.DesaturatedColor and conformance Color.DesaturatedColor);
    v4 = swift_allocObject();
    v4[2] = v3;
  }

  v9 = v1;
  v10 = v2;
  v5 = *(*v4 + 112);

  v6 = v5(&v9);

  return v6;
}

uint64_t EnvironmentValues.effectiveTintAdjustmentMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018TintAdjustmentModeI033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt1g5(v3, &v8);

    LOBYTE(v5) = v8;
    if (v8 == 2)
    {

      v6 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA07EnabledI033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt1g5(v3);

LABEL_10:
      v7 = (v6 & 1) == 0;
      goto LABEL_11;
    }
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018TintAdjustmentModeS033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt0g5(v3);
    if (!result || (v5 = *(result + 72), v5 == 2))
    {
      result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA07EnabledS033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0g5(v3);
      if (result)
      {
        v6 = *(result + 72);
      }

      else
      {
        v6 = 1;
      }

      goto LABEL_10;
    }
  }

  v7 = v5 & 1;
LABEL_11:
  *a1 = v7;
  return result;
}

void _ss20_ArrayBufferProtocolPsE7copyingxx_tcfCs06_SliceB0Vy7SwiftUI16DynamicContainerV8ItemInfoCG_Tt1g5Tf4gX_n(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5((a3 >> 1) - a2, (a3 >> 1) - a2);
  if (v3 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  type metadata accessor for DynamicContainer.ItemInfo();
  swift_arrayInitWithCopy();
  if (__OFSUB__(0, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(a2, v7);
  v9 = a2 + v7;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v9 < 0)
  {
LABEL_13:
    __break(1u);
  }
}

uint64_t ForEachState.eraseItem(_:)(_DWORD *a1)
{
  AGSubgraphApply();
  result = AGSubgraphRemoveChild();
  *(a1 + *(*a1 + 240)) = 1;
  *(a1 + *(*a1 + 232)) = 0;
  v3 = a1[6] - 1;
  a1[6] = v3;
  if (!v3)
  {
    ForEachState.Item.invalidate()();
    result = AGSubgraphIsValid();
    if (result)
    {
      AGSubgraphRef.willInvalidate(isInserted:)(1);

      return AGSubgraphInvalidate();
    }
  }

  return result;
}

Swift::Void __swiftcall ForEachState.Item.invalidate()()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(v2 - 8);
  (MEMORY[0x1EEE9AC00])();
  v5 = &v18 - v4;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v19 = v3;
    v8 = *(*Strong + 200);
    swift_beginAccess();
    v9 = *(v7 + v8);
    v10 = *(*v0 + 160);
    v18 = v9 & 0xC000000000000001;
    if ((v9 & 0xC000000000000001) != 0)
    {

      _bridgeAnythingToObjectiveC<A>(_:)();
      v11 = __CocoaDictionary.index(forKey:)();
      v13 = v12;
      swift_unknownObjectRelease();

      if (!v11)
      {
        goto LABEL_10;
      }

LABEL_8:
      v17 = v18 != 0;
      swift_beginAccess();
      type metadata accessor for Dictionary();
      Dictionary.remove(at:)();
      swift_endAccess();
      outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v11, v13, v17);

      (*(v19 + 8))(v5, v2);
      return;
    }

    if (*(v9 + 16))
    {
      v14 = *(v1 + 144);

      v15 = __RawDictionaryStorage.find<A>(_:)(v0 + v10, v2, v14);
      if (v16)
      {
        v11 = v15;
        v13 = *(v9 + 36);

        goto LABEL_8;
      }
    }

LABEL_10:

    *(v7 + v8) = Dictionary.filter(_:)();
  }
}

uint64_t OpacityViewResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  return swift_deallocClassInstance();
}

void destroy for Font.PrivateTextStyleProvider(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t destroy for SDFLayer.SDFElement(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 <= 0xF7)
  {
    return outlined consume of SDFLayer.SDFElement.Contents(*result, *(result + 8), *(result + 16), *(result + 24), v1);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.calendar : EnvironmentValues(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t (*a5)(void, uint64_t *))
{
  v5 = *a1;
  if (!a1[1])
  {
    return a5(*a1, &v8);
  }

  a4(v5);
}

uint64_t Text.init<A>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = specialized Text.init<A>(_:format:)(a1, a2, a3, a4, a5, a6);
  (*(*(a3 - 8) + 8))(a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v9;
}

uint64_t specialized Text.init<A>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for FormatStyleStorage();
  swift_allocObject();
  return specialized FormatStyleStorage.init<A>(input:format:)(a1, a2, a3, a4, a5, a6);
}

uint64_t Text.init<A>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return Text.init<A>(_:format:)(a1, a2, a3, a4, a5, &protocol witness table for String);
}

{
  return Text.init<A>(_:format:)(a1, a2, a3, a4, a5, &protocol witness table for AttributedString);
}

uint64_t specialized FormatStyleStorage.init<A>(input:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v21 = a1;
  v22 = a2;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v21 - v17;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  type metadata accessor for FormatStyleBox();
  (*(v16 + 16))(v18, v21, AssociatedTypeWitness);
  (*(v12 + 16))(v14, v22, a3);
  v19 = swift_allocObject();
  FormatStyleBox.init(input:format:)(v18, v14);
  *(v7 + 16) = v19;
  return v7;
}

uint64_t FormatStyleBox.init(input:format:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 136);
  v6 = *(*v2 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v2 + v5, a1, AssociatedTypeWitness);
  (*(*(v6 - 8) + 32))(v2 + *(*v2 + 144), a2, v6);
  return v2;
}

uint64_t FormatStyleStorage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v25 = a1;
  v26 = type metadata accessor for AttributedString();
  v10 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v17 = *a2;
  v18 = a2[1];
  v24 = *a3;
  v19 = *(v5 + 16);
  v29 = v17;
  v30 = v18;
  (*(a5 + 56))(&v28, a4, a5, v14);
  v27 = v28;
  LOBYTE(v19) = (*(*v19 + 88))(v16, &v29, &v27);
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSAttributedString);
  v20 = v26;
  (*(v10 + 16))(v12, v16, v26);
  v21 = NSAttributedString.init(_:)();
  v29 = v17;
  v30 = v18;
  *&v28 = v24;
  (*(a5 + 72))(v21, &v29, &v28, v19 & 1, a4, a5);

  return (*(v10 + 8))(v16, v20);
}

uint64_t FormatStyleBox.format(in:idiom:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v109 = a1;
  v108 = *v3;
  v6 = v108[14];
  v113 = v3;
  v7 = v108[13];
  v117 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v106 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v105 = &v88 - v8;
  v89 = type metadata accessor for EnvironmentValues.CapitalizationContext();
  MEMORY[0x1EEE9AC00](v89);
  v91 = (&v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v88 - v11;
  v110 = type metadata accessor for FormatStyleCapitalizationContext();
  v93 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v103 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v92 = &v88 - v14;
  v115 = type metadata accessor for TimeZone();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v99 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Calendar();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Locale();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v104 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v100 = &v88 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v102 = (&v88 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v101 = &v88 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v88 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v95 = &v88 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v88 - v36;
  v38 = *a2;
  v39 = *(a2 + 8);
  v40 = a3[1];
  v98 = *a3;
  v94 = v40;
  v116 = v38;
  if (v39)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v38, v21);
  }

  else
  {
    v41 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v38);
    if (v41)
    {
      (*(v19 + 16))(v21, &v41[*(*v41 + 248)], v18);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v42 = __swift_project_value_buffer(v18, static LocaleKey.defaultValue);
      (*(v19 + 16))(v21, v42, v18);
    }
  }

  dispatch thunk of FormatStyle.locale(_:)();
  (*(v19 + 8))(v21, v18);
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v43 = static Semantics.v6;
  v44 = v112;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v111 = v39;
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_16:
    if (v39)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v116, v17);

      v45 = v39;
    }

    else
    {
      v45 = 0;
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v116, v17);
    }

    FormatStyle.calendar(_:)(v17, v7, v32);
    (*(v96 + 8))(v17, v97);
    if (v45)
    {

      v46 = v99;
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v116, v99);
      v47 = v46;
    }

    else
    {
      v47 = v99;
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v116, v99);
    }

    v48 = v95;
    FormatStyle.timeZone(_:)(v47, v7, v95);
    v114[1](v47, v115);
    v49 = *(v44 + 8);
    v49(v32, v7);
    v49(v37, v7);
    (*(v44 + 32))(v37, v48, v7);
    goto LABEL_23;
  }

  if (static Semantics.forced >= v43)
  {
    goto LABEL_16;
  }

LABEL_23:
  v50 = *(v44 + 16);
  v115 = v44 + 16;
  v114 = v50;
  (v50)(v101, v37, v7);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for InterfaceIdiomDependentFormatStyle);
  v51 = swift_dynamicCast();
  v99 = 0;
  if (v51)
  {
    outlined init with take of AnyTrackedValue(&v120, &v123);
    v52 = v98;
    v53 = v43;
    if (v98)
    {
      v54 = v94;
    }

    else
    {
      type metadata accessor for _ContiguousArrayStorage<Any>();
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_18DDA6EB0;
      *&v120 = 0;
      *(&v120 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      *&v120 = 0xD000000000000031;
      *(&v120 + 1) = 0x800000018DD7BDF0;
      v56 = StaticString.description.getter();
      MEMORY[0x193ABEDD0](v56);

      MEMORY[0x193ABEDD0](58, 0xE100000000000000);
      v118 = 84;
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v57);

      MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
      v58 = v120;
      *(v55 + 56) = MEMORY[0x1E69E6158];
      *(v55 + 32) = v58;
      print(_:separator:terminator:)();

      type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>();
      v52 = v59;
      v54 = &protocol witness table for InterfaceIdiomBox<A>;
    }

    v60 = v124;
    v61 = v125;
    __swift_project_boxed_opaque_existential_1(&v123, v124);
    v118 = v52;
    v119 = v54;
    v62 = *(v61 + 2);
    *(&v121 + 1) = v60;
    v122 = v61;
    __swift_allocate_boxed_opaque_existential_1(&v120);
    v62(&v118, v60, v61);
    v44 = v112;
    (*(v112 + 8))(v37, v7);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(&v123);
  }

  else
  {
    v53 = v43;
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    outlined destroy of _DisplayList_AnyEffectAnimator?(&v120, &lazy cache variable for type metadata for InterfaceIdiomDependentFormatStyle?, &lazy cache variable for type metadata for InterfaceIdiomDependentFormatStyle);
  }

  (v114)(v102, v37, v7);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for TextAlignmentDependentFormatStyle);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v120, &v123);
    v63 = v124;
    v64 = v125;
    __swift_project_boxed_opaque_existential_1(&v123, v124);
    v118 = v116;
    v119 = v111;
    v65 = EnvironmentValues.multilineTextAlignment.getter();
    v66 = *(v64 + 2);
    *(&v121 + 1) = v63;
    v122 = v64;
    __swift_allocate_boxed_opaque_existential_1(&v120);
    v66(v65, v63, v64);
    v44 = v112;
    (*(v112 + 8))(v37, v7);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(&v123);
  }

  else
  {
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    outlined destroy of _DisplayList_AnyEffectAnimator?(&v120, &lazy cache variable for type metadata for TextAlignmentDependentFormatStyle?, &lazy cache variable for type metadata for TextAlignmentDependentFormatStyle);
  }

  v67 = v103;
  v68 = v110;
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (static Semantics.forced < v53)
  {
    goto LABEL_45;
  }

  (v114)(v100, v37, v7);
  v69 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CapitalizationContextDependentFormatStyle);
  if (swift_dynamicCast())
  {
    v112 = v69;
    outlined init with take of AnyTrackedValue(&v120, &v123);
    v103 = v125;
    v70 = v124;
    v102 = __swift_project_boxed_opaque_existential_1(&v123, v124);
    if (v111)
    {

      v71 = v90;
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE0I033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt1g5(v116, v90);
    }

    else
    {
      v72 = v90;
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(v116, v90);
      v71 = v72;
    }

    v73 = v93;
    v74 = v91;
    outlined init with copy of EnvironmentValues.CapitalizationContext(v71, v91);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v74)();

      outlined destroy of EnvironmentValues.CapitalizationContext(v71);
      v75 = *(v73 + 32);
    }

    else
    {
      outlined destroy of EnvironmentValues.CapitalizationContext(v71);
      v76 = v74;
      v75 = *(v73 + 32);
      v75(v67, v76, v68);
    }

    v77 = v92;
    v75(v92, v67, v68);
    v78 = v103;
    v79 = *(v103 + 2);
    *(&v121 + 1) = v70;
    v122 = v103;
    __swift_allocate_boxed_opaque_existential_1(&v120);
    v79(v77, v70, v78);
    (*(v73 + 8))(v77, v110);
    (*(v44 + 8))(v37, v7);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(&v123);
  }

  else
  {
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    outlined destroy of _DisplayList_AnyEffectAnimator?(&v120, &lazy cache variable for type metadata for CapitalizationContextDependentFormatStyle?, &lazy cache variable for type metadata for CapitalizationContextDependentFormatStyle);
  }

LABEL_45:
  if (v111)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v116, &v123);

    v80 = v123;
  }

  else
  {
    v81 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v116);
    if (v81)
    {
      v80 = v81[9];
    }

    else
    {
      v80 = 0;
    }
  }

  *&v120 = v80;
  v82 = v104;
  v83 = FormatStyle.exactSizeVariant(_:)(v104, &v120, v7);
  v84 = *(v44 + 8);
  v84(v37, v7);
  (v114)(v37, v82, v7);
  v85 = v105;
  dispatch thunk of FormatStyle.format(_:)();
  v86 = AssociatedTypeWitness;
  (*(v108[16] + 8))(AssociatedTypeWitness);
  (*(v106 + 8))(v85, v86);
  v84(v82, v7);
  v84(v37, v7);
  return v83 & 1;
}

unint64_t type metadata accessor for CalendarDependentFormatStyle()
{
  result = lazy cache variable for type metadata for CalendarDependentFormatStyle;
  if (!lazy cache variable for type metadata for CalendarDependentFormatStyle)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CalendarDependentFormatStyle);
  }

  return result;
}

unint64_t type metadata accessor for TimeZoneDependentFormatStyle()
{
  result = lazy cache variable for type metadata for TimeZoneDependentFormatStyle;
  if (!lazy cache variable for type metadata for TimeZoneDependentFormatStyle)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TimeZoneDependentFormatStyle);
  }

  return result;
}

uint64_t protocol witness for TimeZoneDependentFormatStyle.withTimeZone(_:) in conformance Date.FormatStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *)@<X3>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for TimeZone();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a2 - 8) + 16))(a4, v4, a2, v11);
  (*(v10 + 16))(v13, a1, v9);
  return a3(v13);
}

uint64_t outlined init with copy of EnvironmentValues.CapitalizationContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues.CapitalizationContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of EnvironmentValues.CapitalizationContext(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues.CapitalizationContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for CapitalizationContextDependentFormatStyle.capitalizationContext(_:) in conformance Date.RelativeFormatStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(double)@<X3>, uint64_t (*a4)(char *)@<X4>, uint64_t a5@<X8>)
{
  v20 = a1;
  v21 = a4;
  v9 = type metadata accessor for FormatStyleCapitalizationContext();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  v17 = a3(v14);
  MEMORY[0x193ABCD20](v17);
  LOBYTE(a3) = MEMORY[0x193ABCD10](v16, v12);
  v18 = *(v10 + 8);
  v18(v12, v9);
  v18(v16, v9);
  result = (*(*(a2 - 8) + 16))(a5, v5, a2);
  if (a3)
  {
    (*(v10 + 16))(v16, v20, v9);
    return v21(v16);
  }

  return result;
}

uint64_t Date.FormatStyle.withSizeVariant(_:)(char *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.FormatStyle.Symbol.Era();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date.FormatStyle();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v65 - v16;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v65 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v65 - v21;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v27 = *a2;
  v28 = *(v13 + 16);
  if (*a2)
  {
    v80 = v25;
    v67 = v11;
    v72 = v9;
    v73 = v8;
    v77 = v13 + 16;
    v78 = &v65 - v24;
    v75 = v27;
    v76 = v28;
    v71 = a1;
    v83 = v3;
    v28(v22, v3, v12, v26);
    v29 = (v13 + 8);
    v30 = (v13 + 32);
    v31 = 13;
    v32 = &unk_1F00443C8;
    v33 = v82;
    do
    {
      v34 = *(v32 - 1);

      v34(v22);

      v35 = *v29;
      (*v29)(v22, v12);
      v36 = *v30;
      (*v30)(v22, v33, v12);
      v32 += 2;
      --v31;
    }

    while (v31);
    v81 = v29;
    v37 = v78;
    v36(v78, v22, v12);
    v79 = lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x1E6969328]);
    v38 = v83;
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (v39 = v67, MEMORY[0x193ABD180](), Date.FormatStyle.era(_:)(), v41 = v72 + 8, v40 = *(v72 + 8), v42 = v40(v39, v73), MEMORY[0x193ABD190](v42), Date.FormatStyle.era(_:)(), v43 = v39, v38 = v83, v72 = v41, v66 = v40, v40(v43, v73), v35(v80, v12), v44 = dispatch thunk of static Equatable.== infix(_:_:)(), v35(v33, v12), (v44 & 1) == 0))
    {
      v48 = v85;
      v52 = v38;
      v49 = v76;
      v76(v85, v52, v12);
    }

    else
    {
      v45 = v68;
      static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
      v46 = v80;
      Date.FormatStyle.year(_:)();
      v47 = v70;
      v69 = *(v69 + 8);
      (v69)(v45, v70);
      static Date.FormatStyle.Symbol.SecondFraction.omitted.getter();
      Date.FormatStyle.year(_:)();
      (v69)(v45, v47);
      v35(v46, v12);
      v33 = v82;
      LOBYTE(v45) = dispatch thunk of static Equatable.== infix(_:_:)();
      v35(v33, v12);
      v48 = v85;
      v49 = v76;
      v50 = (v76)(v85, v83, v12);
      if (v45)
      {
        v51 = v67;
        MEMORY[0x193ABD190](v50);
        Date.FormatStyle.era(_:)();
        v66(v51, v73);
        v35(v48, v12);
        v36(v48, v33, v12);
      }
    }

    v80 = v30;
    v49(v84, v48, v12);
    v53 = &unk_1F00443C8;
    v54 = 13;
    v74 = v36;
    while (1)
    {
      v83 = v54;
      v56 = *(v53 - 1);

      v56(v85);
      v57 = v85;
      v35(v85, v12);
      v36(v57, v33, v12);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v58 = v84;
      v59 = dispatch thunk of static Equatable.== infix(_:_:)();

      result = (v35)(v58, v12);
      if (v59)
      {
        v55 = v83;
      }

      else
      {
        v61 = v75 - 1;
        if (__OFSUB__(v75, 1))
        {
          __break(1u);
          return result;
        }

        --v75;
        v55 = v83;
        if (!v61)
        {
          v35(v78, v12);
          v74(v71, v57, v12);
          return 1;
        }
      }

      v76(v84, v57, v12);
      v53 += 2;
      v54 = v55 - 1;
      v37 = v78;
      v33 = v82;
      v36 = v74;
      if (!v54)
      {
        v35(v84, v12);
        v35(v37, v12);
        v62 = v71;
        v63 = v57;
        v64 = v12;
        goto LABEL_21;
      }
    }

    v35(v57, v12);
    v35(v37, v12);
    v62 = v71;
    v63 = v84;
    v64 = v12;
LABEL_21:
    v36(v62, v63, v64);
    return 0;
  }

  v28(a1, v3, v12, v26);
  return 1;
}

void type metadata accessor for (style: SizeAdaptiveFormatStyle, exact: Bool)()
{
  if (!lazy cache variable for type metadata for (style: SizeAdaptiveFormatStyle, exact: Bool))
  {
    type metadata accessor for SizeAdaptiveFormatStyle();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (style: SizeAdaptiveFormatStyle, exact: Bool));
    }
  }
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.Key()
{
  MEMORY[0x193ABCCE0]();
  type metadata accessor for EnvironmentValues.CapitalizationContext();

  return swift_storeEnumTagMultiPayload();
}

uint64_t FormatStyleStorage.isEqual(to:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = *(**(v0 + 16) + 80);

    v4 = v2(v3);

    return v4 & 1;
  }

  return result;
}

uint64_t TextForegroundStyleModifier.isEqual(to:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = *(v0 + 16);
    v3 = *(result + 16);
    if (v2 == v3)
    {
      return 1;
    }

    else
    {
      v4 = *(*v2 + 88);

      v5 = v4(v3);

      return v5 & 1;
    }
  }

  return result;
}

uint64_t ForEachState.EditsBuilder.appendInsert(atOffset:)(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(a2 + 72);
  result = type metadata accessor for IndexSetBuilder(0);
  v6 = v4 + *(result + 20);
  if (*(v6 + 16))
  {
    v7 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v7 >= a1)
    {
LABEL_11:
      *v6 = a1;
      goto LABEL_12;
    }

    __break(1u);
  }

  result = *v6;
  if (*(v6 + 8) != a1)
  {
    goto LABEL_9;
  }

  v7 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 >= result)
  {
LABEL_12:
    *(v6 + 8) = v7;
    *(v6 + 16) = 0;
    return result;
  }

  __break(1u);
LABEL_9:
  result = IndexSet.insert(integersIn:)();
  v7 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7 >= a1)
  {
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
  return result;
}

Swift::Void __swiftcall PlatformViewChild.destroy()()
{
  v2 = v1;
  v3 = v0;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for UncheckedSendable();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v37 - v8;
  v47 = v5;
  v48 = v4;
  v9 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for UncheckedSendable();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v37 - v11;
  v12 = type metadata accessor for Optional();
  v40 = *(v12 - 8);
  v41 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v51 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v42 = &v37 - v18;
  v19 = type metadata accessor for Optional();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v37 - v21;
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v24);
  v38 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v52 = &v37 - v27;
  v53 = *(v1 + 40);
  v54 = *(v1 + 48);
  _DynamicPropertyBuffer.destroy()();
  (*(v20 + 16))(v22, v1 + *(v3 + 76), v19);
  if ((*(v23 + 48))(v22, 1, AssociatedTypeWitness) == 1)
  {
    (*(v20 + 8))(v22, v19);
  }

  else
  {
    (*(v23 + 32))(v52, v22, AssociatedTypeWitness);
    v28 = v3;
    PlatformViewChild.representedViewProvider.getter(v3, v14);
    v29 = v51;
    if ((*(v51 + 48))(v14, 1, v9) == 1)
    {
      (*(v23 + 8))(v52, AssociatedTypeWitness);
      (*(v40 + 8))(v14, v41);
    }

    else
    {
      v30 = v42;
      (*(v29 + 32))(v42, v14, v9);
      v31 = v39;
      (*(v29 + 16))(v39, v30, v9);
      v32 = v43;
      UncheckedSendable.init(_:)(v31, v9, v43);
      v33 = v38;
      (*(v23 + 16))(v38, v52, AssociatedTypeWitness);
      v34 = v46;
      v35 = UncheckedSendable.init(_:)(v33, AssociatedTypeWitness, v46);
      MEMORY[0x1EEE9AC00](v35);
      v36 = v48;
      *(&v37 - 4) = v47;
      *(&v37 - 3) = v36;
      *(&v37 - 2) = v32;
      *(&v37 - 1) = v34;
      specialized static Update.syncMain(_:)(partial apply for closure #1 in PlatformViewChild.destroy(), (&v37 - 6));
      PlatformViewChild.reset()(v28);
      (*(v29 + 8))(v30, v9);
      (*(v23 + 8))(v52, AssociatedTypeWitness);
      (*(v49 + 8))(v34, v50);
      (*(v44 + 8))(v32, v45);
    }
  }

  PreferenceBridge.invalidate()();
  v53 = *(v2 + 56);
  v54 = *(v2 + 64);
  UnsafeHeterogeneousBuffer.destroy()();
}

uint64_t AnimatorAttribute.updateValue()(void *a1)
{
  v2 = v1;
  v139 = *MEMORY[0x1E69E9840];
  v130 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v105 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v111 = &v103 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v112 = &v103 - v9;
  type metadata accessor for ObservationTracking._AccessList?();
  v108 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v109 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v116 = &v103 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v120 = &v103 - v15;
  v16 = a1[4];
  v128 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v107 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v119 = &v103 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v127 = &v103 - v22;
  v23 = a1[2];
  v131 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v132 = a1;
  v133 = &v103 - v28;
  v29 = a1[3];
  v30 = a1[5];
  v31 = a1[6];
  *&v32 = v23;
  *(&v32 + 1) = v29;
  *&v33 = v16;
  *(&v33 + 1) = v30;
  v113 = v33;
  v137 = v33;
  v114 = v32;
  v136 = v32;
  v138 = v31;
  v126 = type metadata accessor for KeyframeAnimator();
  v125 = *(v126 - 1);
  MEMORY[0x1EEE9AC00](v126);
  v106 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v124 = &v103 - v36;
  if (*(v2 + 16) != *AGGraphGetValue() >> 1)
  {
    *(v2 + 16) = *AGGraphGetValue() >> 1;
    v37 = v30;
    v38 = *(v132 + 19);
    v39 = type metadata accessor for KeyframeTrackState();
    (*(*(v39 - 8) + 8))(v2 + v38, v39);
    v30 = v37;
    swift_storeEnumTagMultiPayload();
  }

  v121 = v4;
  AGGraphClearUpdate();
  v115 = v31;
  closure #1 in AnimatorAttribute.updateValue()(v2, v23, v29, v16, v30, v31, &v136);
  AGGraphSetUpdate();
  v40 = v136;
  v41 = *AGGraphGetValue();
  v117 = v16;
  v42 = v23;
  v129 = v23;
  v43 = v30;
  v122 = v26;
  v123 = v29;
  if (v44)
  {
    outlined copy of _SymbolEffect.Trigger(v41);
    goto LABEL_7;
  }

  outlined copy of _SymbolEffect.Trigger(v41);
  v45 = type metadata accessor for KeyframeTrackState();
  if (KeyframeTrackState.isInitial.getter(v45))
  {
LABEL_7:
    *&v136 = v41;
    v135 = v40;
    v46 = v124;
    AnimatorAttribute.view.getter(v124);
    v47 = v131[2];
    v118 = v43;
    v48 = v133;
    v47(v133, v46, v42);
    v49 = v125[1];
    v50 = v126;
    v49(v46, v126);
    v51 = v106;
    AnimatorAttribute.view.getter(v106);
    v52 = (v51 + *(v50 + 15));
    v53 = v52[1];
    v104 = *v52;

    v49(v51, v50);
    v16 = v117;
    v45 = type metadata accessor for KeyframeTrackState();
    v42 = v129;
    KeyframeTrackState.updatePlayback(_:time:initialValue:plan:)(&v136, &v135, v48, v104, v53, v45);
    (v131[1])(v48, v42);
  }

  v110 = v41;
  type metadata accessor for KeyframeTrackState();
  if (KeyframeTrackState.isAnimating.getter(v45))
  {
    *&v136 = *AGGraphGetValue();
    KeyframeTrackState.updateAnimation(time:)(&v136, v45);
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v54 = swift_dynamicCastClassUnconditional();
    v55 = *AGGraphGetValue() + 0.00833333333;
    swift_beginAccess();
    v56 = *(v54 + 376);
    if (v55 < v56)
    {
      v56 = v55;
    }

    *(v54 + 376) = v56;
    v42 = v129;
  }

  *&v136 = v40;
  v57 = v124;
  AnimatorAttribute.view.getter(v124);
  v58 = v131;
  v59 = v133;
  (v131[2])(v133, v57, v42);
  (v125[1])(v57, v126);
  v60 = v122;
  KeyframeTrackState.value(at:initialValue:)(&v136, v59, v45, v122);
  v63 = v58[1];
  v61 = v58 + 1;
  v62 = v63;
  v131 = v61;
  v64 = (v63)(v59, v42);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v103 - 10;
  v66 = v113;
  *(&v103 - 4) = v114;
  *(&v103 - 3) = v66;
  *(&v103 - 4) = v115;
  *(&v103 - 3) = v2;
  *(&v103 - 2) = v60;
  v67 = v116;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v68 = static ObservationCenter._current;
  swift_beginAccess();
  v69 = pthread_getspecific(v68[2]);
  if (!v69)
  {
    v61 = swift_slowAlloc();
    pthread_setspecific(v68[2], v61);
    *(&v137 + 1) = type metadata accessor for ObservationCenter();
    *&v136 = v68[3];
    outlined init with take of Any(&v136, v61);

    v69 = v61;
  }

  outlined init with copy of Any(v69, &v136);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v70 = v134;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_29:
    v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1, v61);
    *(v70 + 24) = v61;
    goto LABEL_20;
  }

  LODWORD(v118) = CurrentAttribute;
  v125 = &v103;
  v126 = v62;
  swift_beginAccess();
  v124 = *(v70 + 24);
  *(v70 + 24) = MEMORY[0x1E69E7CC0];
  v72 = v121;
  v73 = (*(v121 + 56))(v67, 1, 1, v130);
  MEMORY[0x1EEE9AC00](v73);
  *(&v103 - 4) = v16;
  *(&v103 - 3) = partial apply for closure #2 in AnimatorAttribute.updateValue();
  *(&v103 - 2) = v65;
  v74 = type metadata accessor for Error();
  v75 = v107;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v67, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v103 - 6), v108, v74, v16, MEMORY[0x1E69E7288], &v134);
  v123 = 0;
  v76 = v119;
  v77 = v75;
  v65 = *(v128 + 32);
  (v65)(v119, v77, v16);
  v78 = v120;
  outlined init with take of ObservationTracking._AccessList?(v67, v120);
  v79 = v109;
  outlined init with copy of ObservationTracking._AccessList?(v78, v109);
  if ((*(v72 + 48))(v79, 1, v130) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v78);
    v80 = v79;
    v81 = v65;
    goto LABEL_23;
  }

  v82 = v112;
  v83 = v130;
  v62 = *(v72 + 32);
  (v62)(v112, v79, v130);
  (*(v72 + 16))(v111, v82, v83);
  v61 = *(v70 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v70 + 24) = v61;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_20:
  v81 = v65;
  v86 = v61[2];
  v85 = v61[3];
  if (v86 >= v85 >> 1)
  {
    v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v85 > 1, v86 + 1, 1, v61);
  }

  v61[2] = v86 + 1;
  v72 = v121;
  v87 = v61 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v121 + 72) * v86;
  v88 = v130;
  (v62)(v87, v111, v130);
  *(v70 + 24) = v61;
  (*(v72 + 8))(v112, v88);
  v16 = v117;
  v80 = v120;
  v76 = v119;
LABEL_23:
  outlined destroy of ObservationTracking._AccessList?(v80);
  (v81)(v127, v76, v16);
  v89 = *(v70 + 24);
  v90 = *(v89 + 16);
  v91 = v132;
  if (v90)
  {
    v93 = *(v72 + 16);
    v92 = v72 + 16;
    v133 = v93;
    v94 = v89 + ((*(v92 + 64) + 32) & ~*(v92 + 64));
    v95 = v130;
    v96 = v105;
    v97 = *(v92 + 56);
    v121 = v89;

    v98 = v118;
    do
    {
      (v133)(v96, v94, v95);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v98, v96);
      (*(v92 - 8))(v96, v95);
      v94 += v97;
      --v90;
    }

    while (v90);

    v91 = v132;
    v60 = v122;
  }

  *(v70 + 24) = v124;

  MEMORY[0x1EEE9AC00](v99);
  *(&v103 - 2) = v91;
  *(&v103 - 1) = swift_getWitnessTable();
  v100 = v127;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v127, partial apply for closure #1 in StatefulRule.value.setter, (&v103 - 4), v16, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v101);
  outlined consume of _SymbolEffect.Trigger(v110);
  (*(v128 + 8))(v100, v16);
  return (v126)(v60, v129);
}

uint64_t AnimatorAttribute.view.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for KeyframeAnimator();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t KeyframeTrackState.updatePlayback(_:time:initialValue:plan:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v110 = a2;
  v105 = a4;
  v106 = a5;
  v107 = a3;
  v109 = a1;
  v7 = a6[2];
  v99 = type metadata accessor for KeyframeTimeline();
  v101 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v92 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v92 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v92 - v16;
  v102 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v92 - v22;
  v24 = a6[3];
  v25 = a6[4];
  v108 = v7;
  v103 = v24;
  v104 = v25;
  v26 = type metadata accessor for KeyframeTrackState.RepeatingState();
  v100 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v92 - v27;
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v92 - v32);
  v38 = MEMORY[0x1EEE9AC00](v34);
  v39 = (&v92 - v35);
  v40 = *v110;
  v44 = *(v41 + 32);
  v43 = v41 + 32;
  v42 = v44;
  v110 = *v109;
  if (v110 < 0)
  {
    v92 = v37;
    v93 = v36;
    v94 = v17;
    v95 = v14;
    v52 = v101;
    v97 = v42;
    v96 = v43;
    (v42)(v33, v111, a6, v38);
    v109 = a6;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v54 = *(v100 + 32);
        v54(v28, v33, v26);
        v114.n128_u64[0] = v40;
        KeyframeTrackState.RepeatingState.update(at:paused:)(v114.n128_f64, v110 & 1, v26);
        v54(v111, v28, v26);
        return swift_storeEnumTagMultiPayload();
      }

      else
      {
        v79 = v52;
        v81 = v107;
        v80 = v108;
        v82 = (*(v102 + 16))(v20, v107, v108);
        MEMORY[0x1EEE9AC00](v82);
        v84 = v103;
        v83 = v104;
        *(&v92 - 6) = v80;
        *(&v92 - 5) = v84;
        v86 = v105;
        v85 = v106;
        *(&v92 - 4) = v83;
        *(&v92 - 3) = v86;
        *(&v92 - 2) = v85;
        *(&v92 - 1) = v81;
        KeyframeTimeline.init<A>(initialValue:content:)(v20, partial apply for closure #1 in KeyframeTrackState.updatePlayback(_:time:initialValue:plan:), (&v92 - 8), v80, v84, v83, v11);
        v87 = v98;
        (*(v79 + 32))(v98, v11, v99);
        v88 = v40;
        if (v110)
        {
          v88 = 0;
        }

        v89 = 0x8000000000000000;
        if (v110)
        {
          v89 = 0;
        }

        v114.n128_u64[0] = v88;
        v114.n128_u64[1] = v89;
        v115 = 0;
        v90 = v92;
        KeyframeTrackState.RepeatingState.init(timeline:mode:)(v87, &v114, v92);
        v91 = v109;
        swift_storeEnumTagMultiPayload();
        return v97(v111, v90, v91);
      }
    }

    else
    {
      v63 = v33[1];
      v107 = *v33;
      v114.n128_u64[0] = v107;
      v114.n128_u64[1] = v63;
      v113 = v40;
      v64 = v108;
      v66 = v103;
      v65 = v104;
      v67 = type metadata accessor for KeyframeTrackState.EventDrivenState();
      v68 = v23;
      KeyframeTrackState.EventDrivenState.value(at:)(&v113, v67, v23);
      v69 = v102;
      v70 = (*(v102 + 16))(v20, v68, v64);
      MEMORY[0x1EEE9AC00](v70);
      *(&v92 - 6) = v64;
      *(&v92 - 5) = v66;
      v72 = v105;
      v71 = v106;
      *(&v92 - 4) = v65;
      *(&v92 - 3) = v72;
      *(&v92 - 2) = v71;
      *(&v92 - 1) = v68;
      v73 = v94;
      KeyframeTimeline.init<A>(initialValue:content:)(v20, partial apply for closure #1 in KeyframeTrackState.updatePlayback(_:time:initialValue:plan:), (&v92 - 8), v64, v66, v65, v94);

      v74 = v95;
      (*(v52 + 32))(v95, v73, v99);
      v75 = v40;
      if (v110)
      {
        v75 = 0;
      }

      v76 = 0x8000000000000000;
      if (v110)
      {
        v76 = 0;
      }

      v114.n128_u64[0] = v75;
      v114.n128_u64[1] = v76;
      v115 = 0;
      v77 = v93;
      KeyframeTrackState.RepeatingState.init(timeline:mode:)(v74, &v114, v93);
      v78 = v109;
      swift_storeEnumTagMultiPayload();
      v97(v111, v77, v78);
      return (*(v69 + 8))(v68, v64);
    }
  }

  else
  {
    v45 = v111;
    (v42)(&v92 - v35, v111, a6, v38);
    v46 = swift_getEnumCaseMultiPayload();
    if (!v46)
    {
      v56 = v39[1];
      v114.n128_u64[0] = *v39;
      v114.n128_u64[1] = v56;
      v113 = v40;
      v57 = v110;
      v112 = v110;
      v58 = type metadata accessor for KeyframeTrackState.EventDrivenState();

      KeyframeTrackState.EventDrivenState.update(at:trigger:initialValue:path:)(&v113, &v112, v107, v105, v106, v58);
      outlined consume of _SymbolEffect.Trigger(v57);
      v59 = v114.n128_u64[1];
      *v45 = v114.n128_u64[0];
      v45[1] = v59;
      return swift_storeEnumTagMultiPayload();
    }

    if (v46 == 1)
    {
      v47 = v100;
      (*(v100 + 32))(v28, v39, v26);
      v48 = swift_allocBox();
      v50 = v49;
      v114.n128_u64[0] = v40;
      v51 = v110;

      KeyframeTrackState.RepeatingState.value(at:)(v114.n128_f64, v26, v50);
      (*(v47 + 8))(v28, v26);
      *v45 = v51;
      v45[1] = v48;
      return swift_storeEnumTagMultiPayload();
    }

    v60 = v108;
    v61 = swift_allocBox();
    (*(v102 + 16))(v62, v107, v60);
    *v45 = v110;
    v45[1] = v61;
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t KeyframeTrackState.value(at:initialValue:)@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v24 = a2;
  v25 = a4;
  v8 = *(a3 + 16);
  v9 = type metadata accessor for KeyframeTrackState.RepeatingState();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  (*(v18 + 16))(v16, v5, a3, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v10 + 32))(v12, v16, v9);
      v27[0] = v17;
      KeyframeTrackState.RepeatingState.value(at:)(v27, v9, v25);
      return (*(v10 + 8))(v12, v9);
    }

    else
    {
      return (*(*(v8 - 8) + 16))(v25, v24, v8);
    }
  }

  else
  {
    v21 = *(v16 + 1);
    v27[0] = *v16;
    v27[1] = v21;
    v26 = v17;
    v22 = type metadata accessor for KeyframeTrackState.EventDrivenState();
    KeyframeTrackState.EventDrivenState.value(at:)(&v26, v22, v25);
  }
}

uint64_t closure #1 in AnimatorAttribute.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v9 = type metadata accessor for AnimatorAttribute();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - v12;
  (*(v10 + 16))(v15 - v12, a1, v9, v11);
  *a7 = *AGGraphGetValue();
  return (*(v10 + 8))(v13, v9);
}

uint64_t KeyframeTrackState.isAnimating.getter(uint64_t a1)
{
  v3 = type metadata accessor for KeyframeTrackState.RepeatingState();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v1, a1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v4 + 32))(v6, v10, v3);
      v13 = *&v6[*(v3 + 44) + 8] >> 63;
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v14 = *(v10 + 1);

    type metadata accessor for KeyframeTrackState.EventDrivenState();
    v13 = v14 >> 63;
  }

  return v13;
}

_BYTE *initializeWithCopy for KeyframeTrackState(_BYTE *__dst, void *a2, uint64_t a3)
{
  v4 = *(*(*(a3 + 16) - 8) + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 24 <= 0x10)
  {
    v6 = 16;
  }

  else
  {
    v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v7 = *(a2 + v6);
  if (v7 >= 2 && v6 != 0)
  {
    v7 = *a2 + 2;
  }

  if (v7 == 1)
  {
    v10 = v5 + 8;
    (*(*(*(a3 + 16) - 8) + 16))(__dst);
    *(&__dst[v4 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = &__dst[v10 + 7] & 0xFFFFFFFFFFFFFFF8;
    v13 = (a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = *v13;
    *(v12 + 16) = *(v13 + 16);
    *v12 = v14;
    __dst[v6] = 1;

    return __dst;
  }

  if (!v7)
  {
    v9 = a2[1];
    *__dst = *a2;
    *(__dst + 1) = v9;
    __dst[v6] = 0;

    return __dst;
  }

  return memcpy(__dst, a2, v6 | 1);
}

uint64_t KeyframeTrackState.EventDrivenState.value(at:)@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = type metadata accessor for KeyframeTimeline();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  if ((*(v3 + 8) & 0x8000000000000000) != 0)
  {
    v14 = *a1;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v16 = swift_projectBox();
    v17 = v16 + *(TupleTypeMetadata2 + 48);
    v18 = *v17;
    LOBYTE(TupleTypeMetadata2) = *(v17 + 8);
    (*(v8 + 16))(v10, v16, v7);
    if (TupleTypeMetadata2)
    {
      v19 = v14 - v18;
    }

    else
    {
      v19 = 0.0;
    }

    KeyframeTimeline.value(time:)(v7, a3, v19);
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v11 = swift_projectBox();
    v12 = *(*(v6 - 8) + 16);

    return v12(a3, v11, v6);
  }
}

uint64_t closure #2 in AnimatorAttribute.updateValue()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  type metadata accessor for AnimatorAttribute();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a1;
  v16[9] = a2;
  v16[10] = a3;
  v16[11] = a4;
  v16[12] = a5;
  v16[13] = a6;
  v14 = type metadata accessor for KeyframeAnimator();
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #2 in AnimatorAttribute.updateValue(), v16, v14, a4, a7);
}

uint64_t partial apply for closure #1 in closure #2 in AnimatorAttribute.updateValue()(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = type metadata accessor for KeyframeAnimator();
  return (*(a1 + *(v4 + 68)))(v3);
}

uint64_t closure #1 in closure #1 in View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v25 - v19;
  v22 = PlaceholderContentView.init()(v21, v18);
  a2(v22, a1);
  static ViewBuilder.buildExpression<A>(_:)(v16, a7, a11);
  v23 = *(v14 + 8);
  v23(v16, a7);
  static ViewBuilder.buildExpression<A>(_:)(v20, a7, a11);
  return (v23)(v20, a7);
}

void protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.ForegroundColorProvider(__int128 *a1@<X0>, float (*a2)(__int128 *)@<X3>, uint64_t a3@<X8>)
{
  v7 = *a1;
  *a3 = a2(&v7);
  *(a3 + 4) = v4;
  *(a3 + 8) = v5;
  *(a3 + 12) = v6;
  *(a3 + 16) = 2143289344;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TypeConformance<InvalidatableAttributeDescriptor>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TypeConformance<InvalidatableAttributeDescriptor>>)
  {
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for TypeConformance<InvalidatableAttributeDescriptor>, &type metadata for InvalidatableAttributeDescriptor, &protocol witness table for InvalidatableAttributeDescriptor, type metadata accessor for TypeConformance);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TypeConformance<InvalidatableAttributeDescriptor>>);
    }
  }
}

uint64_t static PlatformViewChild.willInvalidate(attribute:)()
{
  AGGraphGetAttributeInfo();

  PreferenceBridge.invalidate()();
}

Swift::Void __swiftcall PreferenceBridge.invalidate()()
{
  v56[12] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v0[5] = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  v0[6] = 0;

  swift_beginAccess();
  v46 = v0;
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (v2)
  {
    v50 = v1 + 32;

    v3 = 0;
    v53 = *MEMORY[0x1E698D3F8];
    v47 = v1;
    v48 = v2;
    do
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_67;
      }

      v4 = *(v50 + 8 * v3);

      if (swift_weakLoadStrong())
      {
        v51 = v3;

        Strong = swift_weakLoadStrong();
        v54 = v4;
        if (Strong)
        {
          v6 = Strong;
          swift_beginAccess();
          v7 = *(v4 + 448);
          v8 = *(v7 + 16);
          if (v8)
          {
            v9 = v7 + 32;

            swift_beginAccess();
            swift_beginAccess();
            v10 = 0;
            v49 = v7 + 32;
            while (v10 < *(v7 + 16))
            {
              v11 = (v9 + 24 * v10);
              v13 = *v11;
              v12 = v11[1];
              v14 = *(v11 + 4);
              v15 = swift_weakLoadStrong();
              if (v15)
              {
                v16 = *(v6 + 72);
                v17 = *(v16 + 16);
                if (!v17)
                {
                  goto LABEL_9;
                }

                v18 = v16 + 48;
                while (*(v18 - 16) != v13)
                {
                  v18 += 24;
                  if (!--v17)
                  {
                    goto LABEL_9;
                  }
                }

                v55 = v15;
                Attribute = AGWeakAttributeGetAttribute();
                if (Attribute == v53)
                {
LABEL_9:
                }

                else
                {
                  v52 = &v45;
                  LOBYTE(v56[0]) = 0;
                  MEMORY[0x1EEE9AC00](Attribute);
                  *(&v45 - 4) = v13;
                  *(&v45 - 3) = v12;
                  *(&v45 - 4) = v14;
                  *(&v45 - 1) = v56;
                  v20 = type metadata accessor for PreferenceCombiner();
                  MEMORY[0x1EEE9AC00](v20);
                  *(&v45 - 4) = v21;
                  *(&v45 - 3) = partial apply for closure #1 in removeValue #1 <A>(key:) in PreferenceBridge.removeValue(_:for:isInvalidating:);
                  *(&v45 - 2) = (&v45 - 6);
                  AGGraphMutateAttribute();
                  if (v56[0])
                  {
                    swift_beginAccess();
                    if (swift_unknownObjectWeakLoadStrong())
                    {
                      v22 = *(v55 + 208);
                      ObjectType = swift_getObjectType();
                      (*(*(v22 + 8) + 16))(ObjectType);

                      swift_unknownObjectRelease();
                    }

                    else
                    {
                    }

                    v9 = v49;
                  }

                  else
                  {

                    v9 = v49;
                  }
                }
              }

              if (++v10 == v8)
              {

                v4 = v54;
                v1 = v47;
                goto LABEL_28;
              }
            }

            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
          }

          v4 = v54;
LABEL_28:
          *(v4 + 448) = MEMORY[0x1E69E7CC0];

          swift_beginAccess();
          v24 = *(v4 + 56);
          swift_beginAccess();
          v25 = swift_weakLoadStrong();
          if (v25)
          {
            v26 = v25;
            swift_beginAccess();
            v27 = AGWeakAttributeGetAttribute();
            if (v27 != v53 && (LOBYTE(v56[0]) = 0, MEMORY[0x1EEE9AC00](v27), *(&v45 - 2) = v56, *(&v45 - 2) = v24, MEMORY[0x1EEE9AC00](v28), *(&v45 - 2) = partial apply for closure #1 in PreferenceBridge.removeHostValues(for:isInvalidating:), *(&v45 - 1) = v29, AGGraphMutateAttribute(), (v56[0] & 1) != 0) && (swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
            {
              v30 = *(v26 + 208);
              v31 = swift_getObjectType();
              (*(*(v30 + 8) + 16))(v31);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          swift_beginAccess();
          v32 = *(v6 + 32);
          v33 = *(v32 + 16);
          v2 = v48;
          if (v33)
          {
            v34 = 0;
            v35 = v32 + 32;
            while (*(v35 + 8 * v34) != v4)
            {
              if (v33 == ++v34)
              {
                goto LABEL_40;
              }
            }

            swift_beginAccess();
            specialized Array.remove(at:)(v34);
            swift_endAccess();
          }

LABEL_40:
        }

        swift_weakAssign();
        swift_beginAccess();
        v3 = v51;
        if (*(v4 + 128) == 1)
        {
          swift_beginAccess();
          v36 = one-time initialization token for enabledCategories;
          v37 = *(v4 + 32);
          if (v36 != -1)
          {
            swift_once();
          }

          if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
          {
            goto LABEL_68;
          }

          if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 17475;
            v56[0] = v37;
            type metadata accessor for AGSubgraphRef(0);
            AGGraphAddTraceEvent();
          }

          closure #1 in GraphHost.uninstantiate(immediately:)(v4, 1);
          $defer #1 <A>() in static CustomEventTrace.uninstantiate<A>(root:closure:)(v37);
        }

        swift_weakAssign();
        if (swift_weakLoadStrong())
        {
          PreferenceBridge.addChild(_:)(v4);
        }

        swift_beginAccess();
        LOBYTE(v38) = *(v4 + 169);
        if (v38)
        {
          v39 = 1;
        }

        else if (swift_weakLoadStrong() && (swift_beginAccess(), v40 = swift_weakLoadStrong(), , v40))
        {
          swift_beginAccess();
          v38 = *(v40 + 169);

          v39 = (v38 >> 1) & 1;
        }

        else
        {
          LOBYTE(v38) = 0;
          v39 = 0;
        }

        v41 = v54;
        swift_beginAccess();
        if (v39 != *(v41 + 40))
        {
          v41 = v54;
          if (v39)
          {
            v42 = *(v54 + 32);
            AGSubgraphApply();

            AGSubgraphRemoveChild();
          }

          else
          {
            AGSubgraphAddChild();
            v43 = *(v41 + 32);
            AGSubgraphApply();
          }

          *(v41 + 40) = v39;
        }

        if ((((v38 & 2) != 0) ^ *(v41 + 41)))
        {
          *(v41 + 41) = (v38 & 2) >> 1;
          ViewGraph.isHiddenForReuseDidChange()();
        }
      }

      ++v3;
    }

    while (v3 != v2);
  }

  v44 = v46;
  swift_beginAccess();
  swift_weakAssign();
  *(v44 + 24) = 0;
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, a2, a3);
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)(uint64_t a1, unint64_t a2)
{
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(0, &lazy cache variable for type metadata for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)?, 255, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-v4];
  type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    specialized Dictionary.removeValue(forKey:)(a2, v5);
    swift_endAccess();
    if ((*(v8 + 48))(v5, 1, v7) == 1)
    {

      return _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v5, &lazy cache variable for type metadata for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)?, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList), MEMORY[0x1E69E6720]);
    }

    else
    {
      outlined init with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(v5, v10);
      specialized ObservationGraphMutation.cancel()(*(v10 + 2), *(v10 + 3));

      return outlined destroy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(v10);
    }
  }

  return result;
}

uint64_t PlatformViewChild.reset()(uint64_t a1)
{
  v3 = *(a1 + 76);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(v1 + v3, v5);
  (*(*(AssociatedTypeWitness - 8) + 56))(v1 + v3, 1, 1, AssociatedTypeWitness);
  v6 = *(a1 + 80);
  result = swift_unknownObjectRelease();
  *(v1 + v6) = 0;
  return result;
}

uint64_t PreferenceBridge.__deallocating_deinit()
{
  if (*(v0 + 24) == 1)
  {
    PreferenceBridge.invalidate()();
  }

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<CalendarKey>, &type metadata for CalendarKey, &protocol witness table for CalendarKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v20);
    outlined init with take of AnyTrackedValue(v20, v21);
    v12 = v22;
    v13 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v14 = v13[1];
    v15 = type metadata accessor for Calendar();
    v14(v15, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1, a2);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<CalendarKey>>();
    v22 = v16;
    v23 = &protocol witness table for TrackedValue<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    v18 = type metadata accessor for Calendar();
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a2, v18);
    specialized Dictionary.subscript.setter(v21, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<CalendarKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<CalendarKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<CalendarKey>, &type metadata for CalendarKey, &protocol witness table for CalendarKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<CalendarKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<CalendarKey>>);
    }
  }
}

uint64_t FormatStyle.calendar(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = *(v8 + 16);
  v11(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2, v9);
  type metadata accessor for CalendarDependentFormatStyle();
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v16, v19);
    v12 = v20;
    v13 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v14 = *(v13 + 16);
    *(&v17 + 1) = v12;
    v18 = v13;
    __swift_allocate_boxed_opaque_existential_1(&v16);
    v14(a1, v12, v13);
    swift_dynamicCast();
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    outlined destroy of CalendarDependentFormatStyle?(&v16);
    return (v11)(a3, v4, a2);
  }
}

uint64_t protocol witness for CalendarDependentFormatStyle.withCalendar(_:) in conformance Date.FormatStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *)@<X3>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for Calendar();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a2 - 8) + 16))(a4, v4, a2, v11);
  (*(v10 + 16))(v13, a1, v9);
  return a3(v13);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TimeZoneKey>, &type metadata for TimeZoneKey, &protocol witness table for TimeZoneKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v20);
    outlined init with take of AnyTrackedValue(v20, v21);
    v12 = v22;
    v13 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v14 = v13[1];
    v15 = type metadata accessor for TimeZone();
    v14(v15, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1, a2);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<TimeZoneKey>>();
    v22 = v16;
    v23 = &protocol witness table for TrackedValue<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    v18 = type metadata accessor for TimeZone();
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a2, v18);
    specialized Dictionary.subscript.setter(v21, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TimeZoneKey>, &type metadata for TimeZoneKey, &protocol witness table for TimeZoneKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08TimeZoneV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, v12);
  if (v5)
  {
    v6 = *(*v5 + 248);
    v7 = v5;
    v8 = type metadata accessor for TimeZone();
    return (*(*(v8 - 8) + 16))(a2, &v7[v6], v8);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for TimeZone();
    v11 = __swift_project_value_buffer(v10, static TimeZoneKey.defaultValue);
    return (*(*(v10 - 8) + 16))(a2, v11, v10);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TimeZoneKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TimeZoneKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TimeZoneKey>, &type metadata for TimeZoneKey, &protocol witness table for TimeZoneKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TimeZoneKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TimeZoneKey>>);
    }
  }
}

uint64_t FormatStyle.timeZone(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = *(v8 + 16);
  v11(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2, v9);
  type metadata accessor for TimeZoneDependentFormatStyle();
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v16, v19);
    v12 = v20;
    v13 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v14 = *(v13 + 16);
    *(&v17 + 1) = v12;
    v18 = v13;
    __swift_allocate_boxed_opaque_existential_1(&v16);
    v14(a1, v12, v13);
    swift_dynamicCast();
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    outlined destroy of TimeZoneDependentFormatStyle?(&v16);
    return (v11)(a3, v4, a2);
  }
}

uint64_t FormatStyle.exactSizeVariant(_:)(char *a1, uint64_t *a2, uint64_t a3)
{
  v33 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = v32 - v7;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_getTupleTypeMetadata2();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v32 - v15;
  v17 = *a2;
  v18 = *(v9 + 16);
  v18(v12, v3, a3, v14);
  type metadata accessor for SizeAdaptiveFormatStyle();
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v35, v39);
    v19 = v40;
    v20 = v41;
    v21 = __swift_project_boxed_opaque_existential_1(v39, v40);
    v32[1] = v32;
    v34 = v17;
    v22 = *(v19 - 8);
    v23 = MEMORY[0x1EEE9AC00](v21);
    v25 = v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = v26(v25, &v34, v19, v20, v23);
    *(&v36 + 1) = v19;
    v37 = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
    (*(v22 + 32))(boxed_opaque_existential_1, v25, v19);
    v38 = v27 & 1;
    type metadata accessor for (style: SizeAdaptiveFormatStyle, exact: Bool)();
    swift_dynamicCast();
    v29 = v8[*(TupleTypeMetadata2 + 48)];
    v30 = *(v9 + 32);
    v30(v16, v8, a3);
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    outlined destroy of SizeAdaptiveFormatStyle?(&v35, &lazy cache variable for type metadata for SizeAdaptiveFormatStyle?, type metadata accessor for SizeAdaptiveFormatStyle);
    (v18)(v16, v3, a3);
    v29 = v17 == 0;
    v30 = *(v9 + 32);
  }

  v30(v33, v16, a3);
  return v29;
}

unint64_t type metadata accessor for SizeAdaptiveFormatStyle()
{
  result = lazy cache variable for type metadata for SizeAdaptiveFormatStyle;
  if (!lazy cache variable for type metadata for SizeAdaptiveFormatStyle)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SizeAdaptiveFormatStyle);
  }

  return result;
}

uint64_t protocol witness for AttributedStringConvertible.attributedString.getter in conformance String()
{
  v0 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v0 - 8);

  AttributeContainer.init()();
  return AttributedString.init(_:attributes:)();
}

uint64_t FormatStyleBox.isEqual(to:)()
{
  if (swift_dynamicCastClass())
  {
    swift_getAssociatedTypeWitness();

    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v0 = dispatch thunk of static Equatable.== infix(_:_:)();
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t static AnyTransition.identity.getter()
{
  type metadata accessor for TransitionBox<IdentityTransition>();

  return swift_allocObject();
}

uint64_t closure #1 in static StrokeBorderShapeView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a2;
  v19 = a3;
  WitnessTable = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v9 = type metadata accessor for StrokeBorderShapeView();
  v10 = *(v9 + 68);
  v16 = v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for _StrokedShape();
  v19 = a3;
  WitnessTable = swift_getWitnessTable();
  v21 = a6;
  type metadata accessor for _ShapeView();
  type metadata accessor for _BackgroundModifier();
  v17 = type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v10, partial apply for closure #1 in static PointerOffset.of(_:), v15, v17, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v18;
}

void storeEnumTagSinglePayload for Canvas(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 14;
  if (v8 >= a2)
  {
    if (v8 < a3)
    {
      a1[v10] = 0;
    }

    if (a2)
    {
      if (v7 < 0x7FFFFFFF)
      {
        v13 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v13 = a2 & 0x7FFFFFFF;
          v13[1] = 0;
        }

        else
        {
          *v13 = a2 - 1;
        }
      }

      else
      {
        v12 = *(v6 + 56);

        v12();
      }
    }
  }

  else
  {
    v11 = ~v8 + a2;
    bzero(a1, v10);
    *a1 = v11;
    if (v8 < a3)
    {
      a1[v10] = 1;
    }
  }
}

void *static SymbolVariants.none.getter@<X0>(void *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X8>)
{
  if (*result != -1)
  {
    v5 = a2;
    v6 = a3;
    v7 = a4;
    result = swift_once();
    a2 = v5;
    a4 = v7;
    a3 = v6;
  }

  v4 = *a3;
  *a4 = *a2;
  a4[1] = v4;
  return result;
}

uint64_t storeEnumTagSinglePayload for SymbolVariants(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
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
    *(result + 1) = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SymbolVariants(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
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

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t key path getter for EnvironmentValues.symbolVariants : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = &v8;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014SymbolVariantsI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v3, &v8);

    v6 = &v9;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014SymbolVariantsS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(*a1);
    if (result)
    {
      v4 = (result + 72);
      v6 = (result + 73);
    }

    else
    {
      v4 = &static SymbolVariantsKey.defaultValue;
      v6 = &static SymbolVariantsKey.defaultValue + 1;
      if (one-time initialization token for defaultValue != -1)
      {
        result = swift_once();
      }
    }
  }

  v7 = *v6;
  *a2 = *v4;
  a2[1] = v7;
  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014SymbolVariantsF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2B5(uint64_t *a1, __int16 a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014SymbolVariantsS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != a2)
  {
    goto LABEL_7;
  }

  v5 = *(result + 73);
  if (HIBYTE(a2) != 3)
  {
    if (HIBYTE(a2) == v5)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v5 != 3)
  {
LABEL_7:
    v6 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<SymbolVariantsKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolVariantsKey>, &type metadata for SymbolVariantsKey, &protocol witness table for SymbolVariantsKey, type metadata accessor for EnvironmentPropertyKey);
    v8 = v7;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v6);
  }

  return result;
}

uint64_t key path setter for EnvironmentValues.symbolVariants : EnvironmentValues(__int16 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014SymbolVariantsF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014SymbolVariantsK033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Ttg5(v3, *a2);
  }
}

__n128 __swift_memcpy53_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v244 = *MEMORY[0x1E69E9840];
  v215 = type metadata accessor for OSSignpostID();
  v211 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v13 = &v191 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v210 = (&v191 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v213 = &v191 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v191 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v214 = &v191 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v205 = &v191 - v24;
  if (*(a4 + 64))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    a1[53] = 1;
  }

  else if (a1[53] != 1)
  {
    goto LABEL_132;
  }

  v28 = *(a1 + 1);
  v241 = *a1;
  v242 = v28;
  *v243 = *(a1 + 2);
  *&v243[13] = *(a1 + 45);
  ResolvedShadowStyle.animatableData.getter(&v221);
  v29 = v221;
  v30 = v222;
  v31 = v223;
  v32 = v224;
  v33 = v225;
  if (*(a4 + 56))
  {
    goto LABEL_131;
  }

  v34 = v27;
  LODWORD(v6) = HIDWORD(v221);
  LODWORD(v5) = v221;
  v35 = *&v222;
  v36 = v225;
  v38 = *(a4 + 40);
  v37 = *(a4 + 48);
  v39 = *(a4 + 32);
  LODWORD(v4) = *(a4 + 16);
  v40 = *(a4 + 20);
  LODWORD(v7) = *(a4 + 24);
  if (*&v221 != *&v4 || *(&v221 + 1) != v40 || *&v222 != *&v7 || *(&v222 + 1) != *(a4 + 28) || v39 != v223 || v38 != *&v224 || v37 != v225)
  {
    LODWORD(v202) = *(a4 + 28);
    v203 = v39;
    v206 = v38;
    v207 = v224;
    v208 = v37;
    v212 = v223;
    LODWORD(v216) = HIDWORD(v222);
    v199 = v20;
    v200 = a2;
    v209 = v13;
    v194 = v225;
    v195 = v224;
    v196 = v223;
    v197 = v222;
    v198 = v221;
    AGGraphClearUpdate();
    v41 = *(a4 + 16);
    v241 = *a4;
    v242 = v41;
    v42 = *(a4 + 48);
    *v243 = *(a4 + 32);
    *&v243[16] = v42;
    v204 = a4;
    *&v243[28] = *(a4 + 60);
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v241, &v237, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
    v43 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v241, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v44 = Transaction.effectiveAnimation.getter(v43);
    if (v44)
    {
      v45 = v44;
    }

    else
    {
      v45 = v200;
      if (!v200)
      {

        a4 = v204;
        v27 = v34;
        goto LABEL_130;
      }
    }

    v46 = *&v243[32];
    v47 = *&v5 - *&v4;
    v48 = *&v6 - v40;
    v49 = v35 - *&v7;
    v50 = *&v216 - *&v202;
    v51 = v212 - v203;
    v52 = *&v207 - v206;
    v53 = v36 - v208;
    v27 = *AGGraphGetValue();
    v201 = a1;
    v193 = a3;
    v191 = v45;
    v192 = v43;
    if (!v46)
    {
      v226 = v47;
      v227 = v48;
      v228 = v49;
      v229 = v50;
      v230 = v51;
      v231 = v52;
      v232 = v53;
      *&v233 = &type metadata for _ShadowEffect._Resolved;
      type metadata accessor for _ShadowEffect._Resolved.Type();
      type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
      v66 = swift_dynamicCast();
      if (v66)
      {
        v67 = v237;
      }

      else
      {
        v67 = 0;
      }

      if (v66)
      {
        v68 = *(&v237 + 1);
      }

      else
      {
        v68 = 0;
      }

      v70 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVySfAVySfAVyS2fGGGAVy12CoreGraphics7CGFloatVAVyA0_A0_GGG_Tt4B5Tm(v69, &v226, v43, v67, v68, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>, v27);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(v68) = CurrentAttribute;
      LODWORD(v72) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v73) = 0;
      }

      else
      {
        LODWORD(v73) = CurrentAttribute;
      }

      (*(*v45 + 96))(&v233);
      v74 = *(&v233 + 1);
      v75 = *&v233;
      v76 = *(&v234 + 1);
      v77 = v234;
      v78 = v235;
      v219 = NAN;
      v220 = 0x7FF8000000000000;
      v217 = NAN;
      v218 = 1.0;
      v237 = v233;
      v238 = v234;
      v239 = *&v235;
      LODWORD(v216) = v236;
      LOBYTE(v240) = v236;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v237, &v220, &v219, &v218, &v217);
      v5 = v219;
      v4 = v220;
      v7 = v217;
      v6 = v218;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_200;
      }

      goto LABEL_42;
    }

    v226 = v47;
    v227 = v48;
    v228 = v49;
    v229 = v50;
    v230 = v51;
    v231 = v52;
    v232 = v53;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v241, &v237, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
    LOBYTE(v237) = 0;
    v200 = v46;
    specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v45, &v226, v43, v27);
    v54 = AGGraphGetCurrentAttribute();
    v55 = v54;
    LODWORD(v216) = *MEMORY[0x1E698D3F8];
    if (v54 == v216)
    {
      v56 = 0;
    }

    else
    {
      v56 = v54;
    }

    LODWORD(v212) = v56;
    (*(*v45 + 96))(&v233);
    v57 = v233;
    v58 = v234;
    v59 = v235;
    v60 = v236;
    v219 = NAN;
    v220 = 0x7FF8000000000000;
    v217 = NAN;
    v218 = 1.0;
    v237 = v233;
    v238 = v234;
    v239 = *&v235;
    LOBYTE(v240) = v236;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v237, &v220, &v219, &v218, &v217);
    v5 = v219;
    v4 = v220;
    v7 = v217;
    v6 = v218;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_197:
      swift_once();
LABEL_52:
      v97 = *(&static Signpost.animationState + 1);
      v72 = static Signpost.animationState;
      v98 = word_1ED5283E8;
      v99 = HIBYTE(word_1ED5283E8);
      v100 = byte_1ED5283EA;
      v101 = static os_signpost_type_t.event.getter();
      v237 = __PAIR128__(v97, v72);
      LOBYTE(v238) = v98;
      BYTE1(v238) = v99;
      BYTE2(v238) = v100;
      if (Signpost.isEnabled.getter())
      {
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v241, &v237, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        if (one-time initialization token for _signpostLog != -1)
        {
          swift_once();
        }

        LODWORD(v212) = v101;
        v102 = _signpostLog;
        OSSignpostID.init(log:object:)();
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_18DDAF080;
        v104 = AGGraphGetCurrentAttribute();
        v105 = v216;
        if (v104 == v216)
        {
          __break(1u);
        }

        else
        {
          v106 = AGGraphGetAttributeGraph();
          Counter = AGGraphGetCounter();

          v108 = MEMORY[0x1E69E6870];
          *(v103 + 56) = MEMORY[0x1E69E6810];
          *(v103 + 64) = v108;
          *(v103 + 32) = Counter;
          v109 = AGGraphGetCurrentAttribute();
          if (v109 != v105)
          {
            a4 = v103;
            v110 = MEMORY[0x1E69E76D0];
            *(v103 + 96) = MEMORY[0x1E69E7668];
            *(v103 + 104) = v110;
            *(v103 + 72) = v109;
            *(v103 + 136) = MEMORY[0x1E69E6158];
            *(v103 + 144) = lazy protocol witness table accessor for type String and conformance String();
            *(v103 + 112) = 0x65766C6F7365525FLL;
            *(v103 + 120) = 0xE900000000000064;
            if (v99)
            {
              LOBYTE(v217) = LOBYTE(v212);
              v219 = *&v102;
              v220 = &dword_18D018000;
              *&v237 = v72;
              *(&v237 + 1) = v97;
              LOBYTE(v238) = v98;
              *&v233 = "Animation: (%p) [%d] %{public}@ updated";
              *(&v233 + 1) = 39;
              LOBYTE(v234) = 2;
              v218 = *&v103;
              v111 = v199;
              specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
              outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v241, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
              outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v241, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
              (*(v211 + 8))(v111, v215);
            }

            else
            {
              *&v75 = v72;
              if (v72 == 20)
              {
                v112 = 3;
              }

              else
              {
                v112 = 4;
              }

              LODWORD(v72) = bswap32(v72) | (4 * WORD1(v72));
              LODWORD(v216) = LOBYTE(v212);
              *&v113 = v211 + 16;
              v202 = *(v211 + 16);
              v114 = v202(v213, v199, v215);
              v115 = 0;
              LOBYTE(v233) = 1;
              v212 = *&v112;
              v203 = v113;
              *&v208 = 16 * v112;
              v209 = *&v113 - 8;
              v206 = v75;
              v207 = v103 + 32;
              do
              {
                v210 = &v191;
                MEMORY[0x1EEE9AC00](v114);
                v118 = &v191 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
                a1 = v118 + 8;
                v119 = v212;
                v120 = v118 + 8;
                do
                {
                  *(v120 - 1) = 0;
                  *v120 = 0;
                  v120 += 16;
                  --*&v119;
                }

                while (v119 != 0.0);
                v121 = (v207 + 40 * v115);
                v122 = v212;
                while (1)
                {
                  v123 = *(a4 + 16);
                  if (v115 == v123)
                  {
                    break;
                  }

                  if (v115 >= v123)
                  {
                    goto LABEL_189;
                  }

                  ++v115;
                  outlined init with copy of AnyTrackedValue(v121, &v237);
                  v75 = *&a4;
                  v124 = *(&v238 + 1);
                  __swift_project_boxed_opaque_existential_1(&v237, *(&v238 + 1));
                  *(a1 - 1) = CVarArg.kdebugValue(_:)(v72 | v216, v124);
                  *a1 = v125 & 1;
                  a1 += 16;
                  v116 = __swift_destroy_boxed_opaque_existential_1(&v237);
                  v121 += 5;
                  --*&v122;
                  if (v122 == 0.0)
                  {
                    goto LABEL_72;
                  }
                }

                LOBYTE(v233) = 0;
LABEL_72:
                v75 = v206;
                if (*&v206 == 20)
                {
                  OSSignpostID.rawValue.getter();
                }

                kdebug_trace();
                if (v118[8] == 1)
                {
                  kdebug_trace_string();
                }

                if (v118[24] == 1)
                {
                  kdebug_trace_string();
                }

                if (v118[40] == 1)
                {
                  kdebug_trace_string();
                }

                if (*&v75 != 20 && v118[56] == 1)
                {
                  kdebug_trace_string();
                }

                if (one-time initialization token for continuation != -1)
                {
                  swift_once();
                }

                v126 = *v209;
                v127 = v213;
                v128 = v215;
                (*v209)(v213, v215);
                v129 = __swift_project_value_buffer(v128, static OSSignpostID.continuation);
                v114 = v202(v127, v129, v128);
              }

              while ((v233 & 1) != 0);
              outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v241, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
              outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v241, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
              v130 = v215;
              v126(v213, v215);
              v126(v199, v130);
            }

LABEL_88:
            a4 = v204;
            a3 = v193;
            goto LABEL_129;
          }
        }

        __break(1u);
        goto LABEL_205;
      }

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v241, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v241, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
      goto LABEL_88;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      LODWORD(v210) = v60;
      v61 = static CustomEventTrace.recorder;
      v62 = v216;
      if (static CustomEventTrace.recorder)
      {
        v209 = *(static CustomEventTrace.recorder + 24);
        *(v209 + 4) = 1602;
        v63 = *(v61 + 16);
        LODWORD(v237) = LODWORD(v212);
        BYTE4(v237) = v55 == v62;
        *(&v237 + 1) = &type metadata for _ShadowEffect._Resolved;
        *&v238 = v4;
        *(&v238 + 1) = v5;
        v239 = v6;
        v240 = v7;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v212 = v64;

        v65 = v63;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v57, *(&v57 + 1), v58, *(&v58 + 1), v59, v210);

        goto LABEL_51;
      }

      v87 = *(&v57 + 1);
      v86 = v57;
      v89 = *(&v58 + 1);
      v88 = v58;
      v90 = v59;
      v91 = v210;
    }

    else
    {
      v87 = *(&v57 + 1);
      v86 = v57;
      v89 = *(&v58 + 1);
      v88 = v58;
      v90 = v59;
      v91 = v60;
    }

    outlined consume of Animation.Function(v86, v87, v88, v89, v90, v91);
LABEL_51:
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v241, &v237, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState == -1)
    {
      goto LABEL_52;
    }

    goto LABEL_197;
  }

  v27 = v34;
LABEL_131:
  while (1)
  {
    *(a4 + 16) = v29;
    *(a4 + 24) = v30;
    *(a4 + 32) = v31;
    *(a4 + 40) = v32;
    *(a4 + 48) = v33;
    *(a4 + 56) = 0;
LABEL_132:
    v75 = *(a4 + 64);
    if (v75 == 0.0)
    {
      return;
    }

    v160 = *(a1 + 1);
    v241 = *a1;
    v242 = v160;
    *v243 = *(a1 + 2);
    *&v243[13] = *(a1 + 45);

    ResolvedShadowStyle.animatableData.getter(&v237);
    LOBYTE(v241) = 0;
    v161 = specialized AnimatorState.update(_:at:environment:)(&v237, a3, v27);
    v116 = AGGraphGetCurrentAttribute();
    LODWORD(v72) = *MEMORY[0x1E698D3F8];
    if (v116 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v115) = 0;
    }

    else
    {
      LODWORD(v115) = v116;
    }

    v121 = &type metadata instantiation cache for TupleTypeDescription;
    if (v161)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_191;
      }

      goto LABEL_138;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_193;
    }

LABEL_151:
    v171 = v121[77];
    if (*(v171 + 16) >= 0x43uLL)
    {
      if (*(v171 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v241) = v115;
        BYTE4(v241) = v116 == v72;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_186;
    }

    __break(1u);
LABEL_195:
    swift_once();
LABEL_143:
    v78 = *(&static Signpost.animationState + 1);
    v73 = static Signpost.animationState;
    v70 = word_1ED5283E8;
    v77 = HIBYTE(word_1ED5283E8);
    v164 = byte_1ED5283EA;
    v165 = static os_signpost_type_t.end.getter();
    v241 = __PAIR128__(v78, v73);
    LOBYTE(v242) = v70;
    BYTE1(v242) = v77;
    BYTE2(v242) = v164;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_185;
    }

    LODWORD(v216) = v165;
    v166 = one-time initialization token for _signpostLog;
    LODWORD(v68) = LODWORD(v203);

    if (v166 != -1)
    {
      swift_once();
    }

    v74 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v72)
    {
      break;
    }

    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    swift_once();
LABEL_42:
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      v79 = *(static CustomEventTrace.enabledCategories + 98);
      v200 = v70;
      if (v79 == 1)
      {
        v80 = v73;
        v81 = v78;
        v82 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v83 = *(v82 + 16);
          LODWORD(v237) = v80;
          BYTE4(v237) = v68 == v72;
          *(&v237 + 1) = &type metadata for _ShadowEffect._Resolved;
          *&v238 = v4;
          *(&v238 + 1) = v5;
          v239 = v6;
          v240 = v7;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
          v213 = v84;

          v85 = v83;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(*&v75, v74, v77, v76, v81, v216);

          goto LABEL_91;
        }

        v92 = *&v75;
        v93 = v74;
        v94 = v77;
        v95 = v76;
        v96 = v81;
      }

      else
      {
        v92 = *&v75;
        v93 = v74;
        v94 = v77;
        v95 = v76;
        v96 = v78;
      }

      outlined consume of Animation.Function(v92, v93, v94, v95, v96, v216);
LABEL_91:
      v131 = one-time initialization token for animationState;

      if (v131 == -1)
      {
        goto LABEL_92;
      }

      goto LABEL_202;
    }

    __break(1u);
LABEL_202:
    swift_once();
LABEL_92:
    v99 = *(&static Signpost.animationState + 1);
    v97 = static Signpost.animationState;
    LOBYTE(v105) = word_1ED5283E8;
    LOBYTE(v103) = HIBYTE(word_1ED5283E8);
    v132 = byte_1ED5283EA;
    v133 = static os_signpost_type_t.begin.getter();
    v237 = __PAIR128__(v99, v97);
    LOBYTE(v238) = v105;
    BYTE1(v238) = v103;
    BYTE2(v238) = v132;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v216) = v133;
      v134 = one-time initialization token for _signpostLog;

      if (v134 != -1)
      {
LABEL_205:
        swift_once();
      }

      v135 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v136 = swift_allocObject();
      *(v136 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v72)
      {
        __break(1u);
LABEL_207:
        __break(1u);
      }

      v137 = AGGraphGetAttributeGraph();
      v75 = COERCE_DOUBLE(AGGraphGetCounter());

      v138 = MEMORY[0x1E69E6870];
      *(v136 + 56) = MEMORY[0x1E69E6810];
      *(v136 + 64) = v138;
      *(v136 + 32) = v75;
      v139 = AGGraphGetCurrentAttribute();
      if (v139 == v72)
      {
        goto LABEL_207;
      }

      v140 = MEMORY[0x1E69E76D0];
      *(v136 + 96) = MEMORY[0x1E69E7668];
      *(v136 + 104) = v140;
      *(v136 + 72) = v139;
      *(v136 + 136) = MEMORY[0x1E69E6158];
      *(v136 + 144) = lazy protocol witness table accessor for type String and conformance String();
      *(v136 + 112) = 0x65766C6F7365525FLL;
      *(v136 + 120) = 0xE900000000000064;
      if (v103)
      {
        LOBYTE(v217) = v216;
        v219 = *&v135;
        v220 = &dword_18D018000;
        *&v237 = v97;
        *(&v237 + 1) = v99;
        LOBYTE(v238) = v105;
        *&v233 = "Animation: (%p) [%d] %{public}@ started";
        *(&v233 + 1) = 39;
        LOBYTE(v234) = 2;
        v218 = *&v136;
        v141 = v210;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        v142 = v200;

        (*(v211 + 8))(v141, v215);
      }

      else
      {
        *&v143 = v97;
        if (v97 == 20)
        {
          v144 = 3;
        }

        else
        {
          v144 = 4;
        }

        LODWORD(v72) = bswap32(v97) | (4 * WORD1(v97));
        v145 = v216;
        v146 = (v211 + 16);
        v199 = *(v211 + 16);
        v147 = v199(v209, v210, v215);
        v115 = 0;
        LOBYTE(v233) = 1;
        v213 = v144;
        v202 = v146;
        v203 = v143;
        v207 = 16 * v144;
        *&v208 = v146 - 8;
        v216 = v136;
        *&v206 = v136 + 32;
        do
        {
          v212 = COERCE_DOUBLE(&v191);
          MEMORY[0x1EEE9AC00](v147);
          a1 = &v191 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
          v149 = a1 + 8;
          v150 = v213;
          v151 = a1 + 8;
          do
          {
            *(v151 - 1) = 0;
            *v151 = 0;
            v151 += 16;
            --v150;
          }

          while (v150);
          v121 = (*&v206 + 40 * v115);
          a4 = v213;
          while (1)
          {
            v152 = *(v216 + 16);
            if (v115 == v152)
            {
              break;
            }

            if (v115 >= v152)
            {
              goto LABEL_190;
            }

            ++v115;
            outlined init with copy of AnyTrackedValue(v121, &v237);
            v153 = *(&v238 + 1);
            v75 = v239;
            __swift_project_boxed_opaque_existential_1(&v237, *(&v238 + 1));
            *(v149 - 1) = CVarArg.kdebugValue(_:)(v72 | v145, v153);
            *v149 = v154 & 1;
            v149 += 16;
            v116 = __swift_destroy_boxed_opaque_existential_1(&v237);
            v121 += 5;
            --a4;
            if (*&a4 == 0.0)
            {
              goto LABEL_111;
            }
          }

          LOBYTE(v233) = 0;
LABEL_111:
          v155 = v203;
          if (*&v203 == 20)
          {
            v75 = *&v209;
            OSSignpostID.rawValue.getter();
            kdebug_trace();
          }

          else
          {
            kdebug_trace();
            v75 = *&v209;
          }

          if (a1[8] == 1)
          {
            kdebug_trace_string();
          }

          if (a1[24] == 1)
          {
            kdebug_trace_string();
          }

          if (a1[40] == 1)
          {
            kdebug_trace_string();
          }

          if (*&v155 != 20 && a1[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v156 = **&v208;
          v157 = v215;
          (**&v208)(COERCE_DOUBLE(*&v75), v215);
          v158 = __swift_project_value_buffer(v157, static OSSignpostID.continuation);
          v147 = v199(*&v75, v158, v157);
        }

        while ((v233 & 1) != 0);
        v142 = v200;

        v159 = v215;
        (v156)(*&v75, v215);
        (v156)(v210, v159);
      }
    }

    else
    {
      v142 = v200;
    }

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v241, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
    a4 = v204;
    *(v204 + 64) = v142;
    a3 = v193;
LABEL_129:
    specialized AnimatorState.addListeners(transaction:)(v192);

    a1 = v201;
LABEL_130:
    v30 = v197;
    v29 = v198;
    v32 = v195;
    v31 = v196;
    v33 = v194;
  }

  v68 = AGGraphGetAttributeGraph();
  v75 = COERCE_DOUBLE(AGGraphGetCounter());

  v167 = MEMORY[0x1E69E6870];
  *(v76 + 56) = MEMORY[0x1E69E6810];
  *(v76 + 64) = v167;
  *(v76 + 32) = v75;
  v168 = AGGraphGetCurrentAttribute();
  if (v168 == v72)
  {
    goto LABEL_199;
  }

  v169 = MEMORY[0x1E69E76D0];
  *(v76 + 96) = MEMORY[0x1E69E7668];
  *(v76 + 104) = v169;
  *(v76 + 72) = v168;
  *(v76 + 136) = MEMORY[0x1E69E6158];
  *(v76 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v76 + 112) = 0x65766C6F7365525FLL;
  *(v76 + 120) = 0xE900000000000064;
  if (v77)
  {
    LOBYTE(v217) = v216;
    v219 = *&v74;
    v220 = &dword_18D018000;
    *&v241 = v73;
    *(&v241 + 1) = v78;
    LOBYTE(v242) = v70;
    *&v233 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v233 + 1) = 37;
    LOBYTE(v234) = 2;
    v218 = *&v76;
    v170 = v205;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v211 + 8))(v170, v215);
    goto LABEL_184;
  }

  *&v172 = v73;
  if (v73 == 20)
  {
    v173 = 3;
  }

  else
  {
    v173 = 4;
  }

  LODWORD(v72) = bswap32(v73) | (4 * WORD1(v73));
  a4 = v216;
  v174 = v211 + 16;
  v206 = *(v211 + 16);
  v175 = (*&v206)(v214, v205, v215);
  v115 = 0;
  LOBYTE(v233) = 1;
  v213 = v173;
  v211 = v174;
  v209 = 16 * v173;
  v210 = (v174 - 8);
  v216 = v76;
  *&v207 = v172;
  *&v208 = v76 + 32;
  do
  {
    v212 = COERCE_DOUBLE(&v191);
    MEMORY[0x1EEE9AC00](v175);
    a1 = &v191 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
    v177 = a1 + 8;
    v178 = v213;
    v179 = a1 + 8;
    do
    {
      *(v179 - 1) = 0;
      *v179 = 0;
      v179 += 16;
      --v178;
    }

    while (v178);
    v121 = (*&v208 + 40 * v115);
    v180 = v213;
    while (1)
    {
      v181 = *(v216 + 16);
      if (v115 == v181)
      {
        break;
      }

      if (v115 >= v181)
      {
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        v189 = v116;
        swift_once();
        v116 = v189;
LABEL_138:
        v162 = v121[77];
        if (*(v162 + 16) >= 0x43uLL)
        {
          if (*(v162 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v241) = v115;
            BYTE4(v241) = v116 == v72;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v203 = v75;
          v204 = a4;
          v201 = a1;
          v163 = one-time initialization token for animationState;

          if (v163 != -1)
          {
            goto LABEL_195;
          }

          goto LABEL_143;
        }

        __break(1u);
LABEL_193:
        v190 = v116;
        swift_once();
        v116 = v190;
        goto LABEL_151;
      }

      ++v115;
      outlined init with copy of AnyTrackedValue(v121, &v241);
      v182 = *(&v242 + 1);
      v75 = *v243;
      __swift_project_boxed_opaque_existential_1(&v241, *(&v242 + 1));
      *(v177 - 1) = CVarArg.kdebugValue(_:)(v72 | a4, v182);
      *v177 = v183 & 1;
      v177 += 16;
      v116 = __swift_destroy_boxed_opaque_existential_1(&v241);
      v121 += 5;
      if (!--v180)
      {
        goto LABEL_169;
      }
    }

    LOBYTE(v233) = 0;
LABEL_169:
    v184 = v207;
    if (v207 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v184 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v185 = *v210;
    v75 = *&v214;
    v186 = v215;
    (*v210)(v214, v215);
    v187 = __swift_project_value_buffer(v186, static OSSignpostID.continuation);
    v175 = (*&v206)(COERCE_DOUBLE(*&v75), v187, v186);
  }

  while ((v233 & 1) != 0);

  v188 = v215;
  v185(v214, v215);
  v185(v205, v188);
LABEL_184:

LABEL_185:
  specialized AnimatorState.removeListeners()();

  *(v204 + 64) = 0;
  a1 = v201;
LABEL_186:
  v241 = v237;
  v242 = v238;
  *v243 = v239;
  _ShadowEffect._Resolved.animatableData.setter(&v241);

  a1[53] = 1;
}

{
  v243 = *MEMORY[0x1E69E9840];
  v212 = type metadata accessor for OSSignpostID();
  v208 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v13 = &v185 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v185 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v210 = &v185 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v185 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v211 = &v185 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v201 = &v185 - v25;
  if (*(a4 + 64))
  {
    Value = AGGraphGetValue();
    if (v27)
    {
      v28 = *Value;
    }

    else
    {
      v28 = -INFINITY;
    }
  }

  else
  {
    v28 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    a1[53] = 1;
  }

  else if (a1[53] != 1)
  {
    goto LABEL_130;
  }

  ResolvedShadowStyle.animatableData.getter(&v218);
  v29 = v218;
  v30 = v219;
  v31 = v220;
  v33 = v221;
  v32 = v222;
  v34 = v223;
  if (*(a4 + 56))
  {
    goto LABEL_129;
  }

  v7 = v28;
  LODWORD(v6) = HIDWORD(v220);
  v35 = *&v220;
  v37 = *(a4 + 40);
  v36 = *(a4 + 48);
  v38 = *(a4 + 16);
  LODWORD(v4) = *(a4 + 20);
  v39 = *(a4 + 24);
  LODWORD(v5) = *(a4 + 28);
  if (v218 != v38 || v219 != *&v4 || *&v220 != v39 || *(&v220 + 1) != *&v5 || v221 != *(a4 + 32) || v222 != v37 || v36 != v223)
  {
    v205 = *(a4 + 32);
    *&v206 = v37;
    v207 = v36;
    v213 = v223;
    v204 = a2;
    v209 = v13;
    v186 = v16;
    v190 = v21;
    v191 = v223;
    v196 = v218;
    v197 = v219;
    v192 = v220;
    v198 = v222;
    AGGraphClearUpdate();
    v40 = *(a4 + 16);
    v239 = *a4;
    v240 = v40;
    v41 = *(a4 + 48);
    v241 = *(a4 + 32);
    *v242 = v41;
    *&v242[12] = *(a4 + 60);
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v239, &v235, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
    v42 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v239, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v43 = Transaction.effectiveAnimation.getter(v42);
    if (v43)
    {
      v44 = v43;
      v195 = v33;
    }

    else
    {
      v44 = v204;
      if (!v204)
      {

        v28 = v7;
        goto LABEL_128;
      }

      v195 = v33;
    }

    v202 = a4;
    v45 = *&v242[16];
    v46 = v196 - v38;
    v47 = v197 - *&v4;
    v48 = v35 - v39;
    v49 = *&v6 - *&v5;
    v50 = v195 - *&v205;
    v51 = v198 - *&v206;
    v52 = v213 - v207;
    v28 = *AGGraphGetValue();
    v194 = a1;
    v188 = a3;
    v189 = v42;
    v187 = v44;
    if (!v45)
    {
      v224 = v46;
      v225 = v47;
      v226 = v48;
      v227 = v49;
      v228 = v50;
      v229 = v51;
      v230 = v52;
      *&v231 = &type metadata for ResolvedShadowStyle;
      type metadata accessor for ResolvedShadowStyle.Type();
      type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
      v65 = swift_dynamicCast();
      if (v65)
      {
        v66 = v235;
      }

      else
      {
        v66 = 0;
      }

      if (v65)
      {
        v67 = *(&v235 + 1);
      }

      else
      {
        v67 = 0;
      }

      v69 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVySfAVySfAVyS2fGGGAVy12CoreGraphics7CGFloatVAVyA0_A0_GGG_Tt4B5Tm(v68, &v224, v42, v66, v67, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>, v28);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(v71) = CurrentAttribute;
      LODWORD(v213) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == LODWORD(v213))
      {
        LODWORD(v72) = 0;
      }

      else
      {
        LODWORD(v72) = CurrentAttribute;
      }

      (*(*v44 + 96))(&v231);
      v74 = *(&v231 + 1);
      v73 = v231;
      v75 = *(&v232 + 1);
      a1 = v232;
      v216 = NAN;
      v217 = 0x7FF8000000000000;
      v214 = NAN;
      v215 = 1.0;
      v235 = v231;
      v236 = v232;
      v76 = v233;
      v237 = *&v233;
      LODWORD(v210) = v234;
      LOBYTE(v238) = v234;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v235, &v217, &v216, &v215, &v214);
      v5 = v216;
      v4 = v217;
      v7 = v214;
      v6 = v215;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_198;
      }

      goto LABEL_42;
    }

    v224 = v46;
    v225 = v47;
    v226 = v48;
    v227 = v49;
    v228 = v50;
    v229 = v51;
    v230 = v52;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v239, &v235, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
    LOBYTE(v235) = 0;
    v193 = v45;
    specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v44, &v224, v42, v28);
    v53 = AGGraphGetCurrentAttribute();
    v54 = v53;
    LODWORD(v213) = *MEMORY[0x1E698D3F8];
    if (v53 == LODWORD(v213))
    {
      v55 = 0;
    }

    else
    {
      v55 = v53;
    }

    LODWORD(v209) = v55;
    (*(*v44 + 96))(&v231);
    v56 = v231;
    v57 = v232;
    v58 = v233;
    v59 = v234;
    v216 = NAN;
    v217 = 0x7FF8000000000000;
    v214 = NAN;
    v215 = 1.0;
    v235 = v231;
    v236 = v232;
    v237 = *&v233;
    LOBYTE(v238) = v234;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v235, &v217, &v216, &v215, &v214);
    v5 = v216;
    v4 = v217;
    v7 = v214;
    v6 = v215;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    v33 = v195;
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_195:
      swift_once();
LABEL_52:
      v89 = *(&static Signpost.animationState + 1);
      v88 = static Signpost.animationState;
      v90 = word_1ED5283E8;
      v91 = HIBYTE(word_1ED5283E8);
      v92 = byte_1ED5283EA;
      v75 = static os_signpost_type_t.event.getter();
      v235 = __PAIR128__(v89, v88);
      LOBYTE(v236) = v90;
      BYTE1(v236) = v91;
      BYTE2(v236) = v92;
      if (Signpost.isEnabled.getter())
      {
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v239, &v235, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
        if (one-time initialization token for _signpostLog != -1)
        {
          swift_once();
        }

        LODWORD(v209) = v75;
        v93 = _signpostLog;
        OSSignpostID.init(log:object:)();
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        v94 = swift_allocObject();
        *(v94 + 16) = xmmword_18DDAF080;
        v95 = AGGraphGetCurrentAttribute();
        v96 = LODWORD(v213);
        if (v95 == LODWORD(v213))
        {
          __break(1u);
        }

        else
        {
          v75 = AGGraphGetAttributeGraph();
          Counter = AGGraphGetCounter();

          v98 = MEMORY[0x1E69E6870];
          *(v94 + 56) = MEMORY[0x1E69E6810];
          *(v94 + 64) = v98;
          *(v94 + 32) = Counter;
          v99 = AGGraphGetCurrentAttribute();
          if (v99 != v96)
          {
            v71 = v94;
            v100 = MEMORY[0x1E69E76D0];
            *(v94 + 96) = MEMORY[0x1E69E7668];
            *(v94 + 104) = v100;
            *(v94 + 72) = v99;
            *(v94 + 136) = MEMORY[0x1E69E6158];
            *(v94 + 144) = lazy protocol witness table accessor for type String and conformance String();
            *(v94 + 112) = 0xD000000000000013;
            *(v94 + 120) = 0x800000018DD7ED10;
            if (v91)
            {
              LOBYTE(v214) = v209;
              v216 = *&v93;
              v217 = &dword_18D018000;
              *&v235 = v88;
              *(&v235 + 1) = v89;
              LOBYTE(v236) = v90;
              *&v231 = "Animation: (%p) [%d] %{public}@ updated";
              *(&v231 + 1) = 39;
              LOBYTE(v232) = 2;
              v215 = *&v94;
              v101 = v190;
              specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
              outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v239, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
              outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v239, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
              (*(v208 + 8))(v101, v212);
            }

            else
            {
              v102 = v88;
              if (v88 == 20)
              {
                v103 = 3;
              }

              else
              {
                v103 = 4;
              }

              v76 = bswap32(v88) | (4 * WORD1(v88));
              LODWORD(v213) = v209;
              v104 = (v208 + 16);
              v199 = *(v208 + 16);
              v105 = v199(v210, v190, v212);
              v106 = 0;
              LOBYTE(v231) = 1;
              v209 = v103;
              v200 = v104;
              v205 = 16 * v103;
              v206 = (v104 - 8);
              v203 = v102;
              v204 = (v71 + 32);
              do
              {
                v207 = COERCE_DOUBLE(&v185);
                MEMORY[0x1EEE9AC00](v105);
                v109 = &v185 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
                a1 = v109 + 8;
                v110 = v209;
                v111 = v109 + 8;
                do
                {
                  *(v111 - 1) = 0;
                  *v111 = 0;
                  v111 += 16;
                  v110 = (v110 - 1);
                }

                while (v110);
                v112 = v204 + 40 * v106;
                v113 = v209;
                while (1)
                {
                  v114 = *(v71 + 2);
                  if (v106 == v114)
                  {
                    break;
                  }

                  if (v106 >= v114)
                  {
                    goto LABEL_187;
                  }

                  ++v106;
                  outlined init with copy of AnyTrackedValue(v112, &v235);
                  v102 = v71;
                  v115 = *(&v236 + 1);
                  __swift_project_boxed_opaque_existential_1(&v235, *(&v236 + 1));
                  *(a1 - 1) = CVarArg.kdebugValue(_:)(v76 | LODWORD(v213), v115);
                  *a1 = v116 & 1;
                  a1 += 16;
                  v107 = __swift_destroy_boxed_opaque_existential_1(&v235);
                  v112 += 40;
                  v113 = (v113 - 1);
                  if (!v113)
                  {
                    goto LABEL_72;
                  }
                }

                LOBYTE(v231) = 0;
LABEL_72:
                v102 = v203;
                if (v203 == 20)
                {
                  OSSignpostID.rawValue.getter();
                }

                kdebug_trace();
                if (v109[8] == 1)
                {
                  kdebug_trace_string();
                }

                if (v109[24] == 1)
                {
                  kdebug_trace_string();
                }

                if (v109[40] == 1)
                {
                  kdebug_trace_string();
                }

                if (v102 != 20 && v109[56] == 1)
                {
                  kdebug_trace_string();
                }

                if (one-time initialization token for continuation != -1)
                {
                  swift_once();
                }

                v117 = *v206;
                v118 = v210;
                v119 = v212;
                (*v206)(v210, v212);
                v120 = __swift_project_value_buffer(v119, static OSSignpostID.continuation);
                v105 = v199(v118, v120, v119);
              }

              while ((v231 & 1) != 0);
              outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v239, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
              outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v239, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
              v121 = v212;
              v117(v210, v212);
              v117(v190, v121);
            }

LABEL_88:
            a4 = v202;
            v75 = v189;
            goto LABEL_127;
          }
        }

        __break(1u);
        goto LABEL_203;
      }

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v239, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v239, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
      goto LABEL_88;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      LODWORD(v207) = v59;
      v60 = static CustomEventTrace.recorder;
      v61 = LODWORD(v213);
      if (static CustomEventTrace.recorder)
      {
        v206 = *(static CustomEventTrace.recorder + 24);
        *(v206 + 4) = 1602;
        v62 = *(v60 + 16);
        LODWORD(v235) = v209;
        BYTE4(v235) = v54 == v61;
        *(&v235 + 1) = &type metadata for ResolvedShadowStyle;
        *&v236 = v4;
        *(&v236 + 1) = v5;
        v237 = v6;
        v238 = v7;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v209 = v63;

        v64 = v62;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v56, *(&v56 + 1), v57, *(&v57 + 1), v58, LOBYTE(v207));

        goto LABEL_51;
      }

      v83 = *(&v56 + 1);
      v82 = v56;
      v85 = *(&v57 + 1);
      v84 = v57;
      v86 = v58;
      v87 = LOBYTE(v207);
    }

    else
    {
      v83 = *(&v56 + 1);
      v82 = v56;
      v85 = *(&v57 + 1);
      v84 = v57;
      v86 = v58;
      v87 = v59;
    }

    outlined consume of Animation.Function(v82, v83, v84, v85, v86, v87);
LABEL_51:
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v239, &v235, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState == -1)
    {
      goto LABEL_52;
    }

    goto LABEL_195;
  }

  v28 = v7;
LABEL_129:
  while (1)
  {
    *(a4 + 16) = LODWORD(v29) | (LODWORD(v30) << 32);
    *(a4 + 24) = v31;
    *(a4 + 32) = v33;
    *(a4 + 40) = v32;
    *(a4 + 48) = v34;
    *(a4 + 56) = 0;
LABEL_130:
    v71 = *(a4 + 64);
    if (!v71)
    {
      return;
    }

    v202 = a4;

    ResolvedShadowStyle.animatableData.getter(&v235);
    LOBYTE(v239) = 0;
    v154 = specialized AnimatorState.update(_:at:environment:)(&v235, a3, v28);
    v107 = AGGraphGetCurrentAttribute();
    v76 = *MEMORY[0x1E698D3F8];
    if (v107 == v76)
    {
      LODWORD(v106) = 0;
    }

    else
    {
      LODWORD(v106) = v107;
    }

    v102 = &type metadata instantiation cache for TupleTypeDescription;
    if (v154)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_189;
      }

      goto LABEL_136;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_191;
    }

LABEL_149:
    v165 = *(v102 + 616);
    if (*(v165 + 16) >= 0x43uLL)
    {
      if (*(v165 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v239) = v106;
        BYTE4(v239) = v107 == v76;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_184;
    }

    __break(1u);
LABEL_193:
    swift_once();
LABEL_141:
    v69 = *(&static Signpost.animationState + 1);
    v72 = static Signpost.animationState;
    v75 = word_1ED5283E8;
    v157 = HIBYTE(word_1ED5283E8);
    v158 = byte_1ED5283EA;
    v159 = static os_signpost_type_t.end.getter();
    v239 = __PAIR128__(v69, v72);
    LOBYTE(v240) = v75;
    BYTE1(v240) = v157;
    BYTE2(v240) = v158;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_183;
    }

    LODWORD(v213) = v159;
    v160 = one-time initialization token for _signpostLog;

    if (v160 != -1)
    {
      swift_once();
    }

    v194 = a1;
    v73 = _signpostLog;
    v200 = v71;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v76)
    {
      break;
    }

    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    swift_once();
LABEL_42:
    v33 = v195;
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_200:
      swift_once();
      goto LABEL_91;
    }

    v77 = *(static CustomEventTrace.enabledCategories + 98);
    v193 = v69;
    if (v77 == 1 && (v78 = static CustomEventTrace.recorder) != 0)
    {
      v79 = v71 == LODWORD(v213);
      *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
      v80 = *(v78 + 16);
      LODWORD(v235) = v72;
      BYTE4(v235) = v79;
      *(&v235 + 1) = &type metadata for ResolvedShadowStyle;
      *&v236 = v4;
      *(&v236 + 1) = v5;
      v237 = v6;
      v238 = v7;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

      v81 = v80;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v73, v74, a1, v75, v76, v210);
    }

    else
    {
      outlined consume of Animation.Function(v73, v74, a1, v75, v76, v210);
    }

    v122 = one-time initialization token for animationState;

    v75 = v189;
    if (v122 != -1)
    {
      goto LABEL_200;
    }

LABEL_91:
    v90 = *(&static Signpost.animationState + 1);
    v89 = static Signpost.animationState;
    v91 = word_1ED5283E8;
    LOBYTE(v94) = HIBYTE(word_1ED5283E8);
    v123 = byte_1ED5283EA;
    v124 = static os_signpost_type_t.begin.getter();
    v235 = __PAIR128__(v90, v89);
    LOBYTE(v236) = v91;
    BYTE1(v236) = v94;
    BYTE2(v236) = v123;
    v125 = Signpost.isEnabled.getter();
    LODWORD(v88) = LODWORD(v213);
    if (v125)
    {
      LODWORD(v210) = v124;
      v126 = one-time initialization token for _signpostLog;

      if (v126 != -1)
      {
LABEL_203:
        swift_once();
      }

      v207 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      *&v127 = COERCE_DOUBLE(swift_allocObject());
      *(v127 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v88)
      {
        __break(1u);
LABEL_205:
        __break(1u);
      }

      v128 = AGGraphGetAttributeGraph();
      v129 = AGGraphGetCounter();

      v130 = MEMORY[0x1E69E6870];
      *(v127 + 56) = MEMORY[0x1E69E6810];
      *(v127 + 64) = v130;
      *(v127 + 32) = v129;
      v131 = AGGraphGetCurrentAttribute();
      if (v131 == v88)
      {
        goto LABEL_205;
      }

      v132 = MEMORY[0x1E69E76D0];
      *(v127 + 96) = MEMORY[0x1E69E7668];
      *(v127 + 104) = v132;
      *(v127 + 72) = v131;
      *(v127 + 136) = MEMORY[0x1E69E6158];
      *(v127 + 144) = lazy protocol witness table accessor for type String and conformance String();
      *(v127 + 112) = 0xD000000000000013;
      *(v127 + 120) = 0x800000018DD7ED10;
      v133 = *&v127;
      v134 = v186;
      if ((v94 & 1) == 0)
      {
        v136 = v89;
        if (v89 == 20)
        {
          v137 = 3;
        }

        else
        {
          v137 = 4;
        }

        v76 = bswap32(v89) | (4 * WORD1(v89));
        v102 = v210;
        v138 = (v208 + 16);
        v199 = *(v208 + 16);
        v139 = v199(v209, v186, v212);
        v106 = 0;
        LOBYTE(v231) = 1;
        v200 = v138;
        v206 = 16 * v137;
        *&v207 = v138 - 8;
        v213 = v133;
        v204 = v136;
        v205 = *&v133 + 32;
        v203 = v137;
        do
        {
          v210 = &v185;
          MEMORY[0x1EEE9AC00](v139);
          a1 = &v185 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
          v141 = a1 + 8;
          v142 = v137;
          v143 = a1 + 8;
          do
          {
            *(v143 - 1) = 0;
            *v143 = 0;
            v143 += 16;
            --v142;
          }

          while (v142);
          v71 = (v205 + 40 * v106);
          while (1)
          {
            v144 = *(*&v213 + 16);
            if (v106 == v144)
            {
              break;
            }

            if (v106 >= v144)
            {
              goto LABEL_188;
            }

            ++v106;
            outlined init with copy of AnyTrackedValue(v71, &v235);
            v145 = *(&v236 + 1);
            __swift_project_boxed_opaque_existential_1(&v235, *(&v236 + 1));
            *(v141 - 1) = CVarArg.kdebugValue(_:)(v76 | v102, v145);
            *v141 = v146 & 1;
            v141 += 16;
            v107 = __swift_destroy_boxed_opaque_existential_1(&v235);
            v71 += 40;
            if (!--v137)
            {
              goto LABEL_111;
            }
          }

          LOBYTE(v231) = 0;
LABEL_111:
          v147 = v204;
          if (v204 == 20)
          {
            v148 = v209;
            OSSignpostID.rawValue.getter();
            kdebug_trace();
          }

          else
          {
            kdebug_trace();
            v148 = v209;
          }

          if (a1[8] == 1)
          {
            kdebug_trace_string();
          }

          if (a1[24] == 1)
          {
            kdebug_trace_string();
          }

          if (a1[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v147 != 20 && a1[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v149 = **&v207;
          v150 = v212;
          (**&v207)(v148, v212);
          v151 = __swift_project_value_buffer(v150, static OSSignpostID.continuation);
          v139 = v199(v148, v151, v150);
          v137 = v203;
        }

        while ((v231 & 1) != 0);
        v152 = v193;

        v153 = v212;
        v149(v148, v212);
        v149(v186, v153);

        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v239, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
        a4 = v202;
        *(v202 + 64) = v152;
        v75 = v189;
        goto LABEL_127;
      }

      LOBYTE(v214) = v210;
      v216 = v207;
      v217 = &dword_18D018000;
      *&v235 = v89;
      *(&v235 + 1) = v90;
      LOBYTE(v236) = v91;
      *&v231 = "Animation: (%p) [%d] %{public}@ started";
      *(&v231 + 1) = 39;
      LOBYTE(v232) = 2;
      v215 = *&v127;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v135 = v193;

      (*(v208 + 8))(v134, v212);
    }

    else
    {
      v135 = v193;
    }

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v239, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
    a4 = v202;
    *(v202 + 64) = v135;
LABEL_127:
    specialized AnimatorState.addListeners(transaction:)(v75);

    a1 = v194;
    a3 = v188;
LABEL_128:
    v32 = v198;
    v34 = v191;
    v31 = v192;
    v29 = v196;
    v30 = v197;
  }

  v71 = AGGraphGetAttributeGraph();
  a1 = AGGraphGetCounter();

  v161 = MEMORY[0x1E69E6870];
  *(v74 + 56) = MEMORY[0x1E69E6810];
  *(v74 + 64) = v161;
  *(v74 + 32) = a1;
  v162 = AGGraphGetCurrentAttribute();
  if (v162 == v76)
  {
    goto LABEL_197;
  }

  v163 = MEMORY[0x1E69E76D0];
  *(v74 + 96) = MEMORY[0x1E69E7668];
  *(v74 + 104) = v163;
  *(v74 + 72) = v162;
  *(v74 + 136) = MEMORY[0x1E69E6158];
  *(v74 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v74 + 112) = 0xD000000000000013;
  *(v74 + 120) = 0x800000018DD7ED10;
  if (v157)
  {
    LOBYTE(v214) = LOBYTE(v213);
    v216 = *&v73;
    v217 = &dword_18D018000;
    *&v239 = v72;
    *(&v239 + 1) = v69;
    LOBYTE(v240) = v75;
    *&v231 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v231 + 1) = 37;
    LOBYTE(v232) = 2;
    v215 = *&v74;
    v164 = v201;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v208 + 8))(v164, v212);
    goto LABEL_182;
  }

  v204 = v72;
  if (v72 == 20)
  {
    v166 = 3;
  }

  else
  {
    v166 = 4;
  }

  v76 = bswap32(v72) | (4 * WORD1(v72));
  LODWORD(v213) = LOBYTE(v213);
  v167 = v208 + 16;
  v203 = *(v208 + 16);
  v168 = (v203)(v211, v201, v212);
  v106 = 0;
  LOBYTE(v231) = 1;
  v210 = v166;
  v208 = v167;
  v206 = 16 * v166;
  *&v207 = v167 - 8;
  v205 = v74 + 32;
  v169 = v74;
  do
  {
    v209 = &v185;
    MEMORY[0x1EEE9AC00](v168);
    a1 = &v185 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0);
    v102 = (a1 + 8);
    v171 = v210;
    v172 = a1 + 8;
    do
    {
      *(v172 - 1) = 0;
      *v172 = 0;
      v172 += 16;
      --v171;
    }

    while (v171);
    v71 = (v205 + 40 * v106);
    v173 = v210;
    while (1)
    {
      v174 = *(v169 + 16);
      if (v106 == v174)
      {
        break;
      }

      if (v106 >= v174)
      {
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        v183 = v107;
        swift_once();
        v107 = v183;
LABEL_136:
        v155 = *(v102 + 616);
        if (*(v155 + 16) >= 0x43uLL)
        {
          if (*(v155 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v239) = v106;
            BYTE4(v239) = v107 == v76;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v156 = one-time initialization token for animationState;

          if (v156 != -1)
          {
            goto LABEL_193;
          }

          goto LABEL_141;
        }

        __break(1u);
LABEL_191:
        v184 = v107;
        swift_once();
        v107 = v184;
        goto LABEL_149;
      }

      ++v106;
      outlined init with copy of AnyTrackedValue(v71, &v239);
      v175 = *(&v240 + 1);
      __swift_project_boxed_opaque_existential_1(&v239, *(&v240 + 1));
      *(v102 - 8) = CVarArg.kdebugValue(_:)(v76 | LODWORD(v213), v175);
      *v102 = v176 & 1;
      v102 += 16;
      v107 = __swift_destroy_boxed_opaque_existential_1(&v239);
      v71 += 40;
      if (!--v173)
      {
        goto LABEL_167;
      }
    }

    LOBYTE(v231) = 0;
LABEL_167:
    v177 = v204;
    if (v204 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v177 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v178 = **&v207;
    v180 = v211;
    v179 = v212;
    (**&v207)(v211, v212);
    v181 = __swift_project_value_buffer(v179, static OSSignpostID.continuation);
    v168 = (v203)(v180, v181, v179);
  }

  while ((v231 & 1) != 0);

  v182 = v212;
  v178(v211, v212);
  v178(v201, v182);
LABEL_182:

  a1 = v194;
LABEL_183:
  specialized AnimatorState.removeListeners()();

  *(v202 + 64) = 0;
LABEL_184:
  v239 = v235;
  v240 = v236;
  *&v241 = v237;
  ResolvedShadowStyle.animatableData.setter(&v239);

  a1[53] = 1;
}