uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t *a6, void (*a7)(uint64_t), uint64_t (*a8)(uint64_t, uint64_t, uint64_t), uint64_t (*a9)(void *), uint64_t (*a10)(void *), uint64_t (*a11)(void *), uint64_t (*a12)(void *))
{
  v179 = a8;
  v13 = a7;
  v14 = a6;
  v15 = v12;
  v183 = a4;
  v181 = a1;
  v190 = a10;
  v191 = a11;
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, a6, a7);
  v19 = v18;
  v193 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v184 = &v176 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v203 = &v176 - v22;
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v198 = &v176 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v192 = (&v176 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v195 = (&v176 - v29);
  MEMORY[0x1EEE9AC00](v30);
  v178 = &v176 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v211 = MEMORY[0x1E69E7CC0];
  v196 = a3;
  v35 = a3[1];
  if (v35 < 1)
  {
    swift_bridgeObjectRetain_n();
LABEL_153:
    v172 = *v181;
    if (!*v181)
    {
      goto LABEL_185;
    }

    specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v211, v172, v196, a5, v14, v13, v190, v191);

LABEL_155:
    swift_bridgeObjectRelease_n();
  }

  v177 = &v176 - v33;
  v205 = a12;
  v206 = v34;
  v189 = a9;
  v199 = a5 + 32;
  swift_bridgeObjectRetain_n();
  v36 = 0;
  v37 = MEMORY[0x1E69E7CC0];
  v208 = a5;
  v209 = v13;
  v207 = v14;
  v200 = v19;
  while (v36 + 1 >= v35)
  {
    v52 = v36 + 1;
    v73 = v183;
LABEL_57:
    v80 = v196[1];
    if (v52 >= v80)
    {
      goto LABEL_66;
    }

    if (__OFSUB__(v52, v36))
    {
      goto LABEL_177;
    }

    if (v52 - v36 >= v73)
    {
      goto LABEL_66;
    }

    if (__OFADD__(v36, v73))
    {
      goto LABEL_178;
    }

    if (v36 + v73 >= v80)
    {
      v81 = v196[1];
    }

    else
    {
      v81 = v36 + v73;
    }

    if (v81 < v36)
    {
      goto LABEL_179;
    }

    if (v52 == v81)
    {
LABEL_66:
      v82 = v52;
      if (v52 < v36)
      {
        goto LABEL_176;
      }

      goto LABEL_67;
    }

    v194 = v37;
    v210 = v15;
    v141 = *v196;
    v142 = *(v193 + 72);
    v143 = *v196 + v142 * (v52 - 1);
    v201 = -v142;
    v180 = v36;
    v144 = v36 - v52;
    v202 = v141;
    v182 = v142;
    v145 = v141 + v52 * v142;
    v146 = v198;
    v185 = v81;
    while (2)
    {
      v197 = v52;
      v186 = v145;
      v187 = v144;
      v188 = v143;
      while (1)
      {
        outlined init with copy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v145, v146, v14, v13);
        v147 = v146;
        v148 = v206;
        v149 = outlined init with copy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v143, v206, v14, v13);
        MEMORY[0x1EEE9AC00](v149);
        v174 = v147;
        v175 = v148;
        v150 = v210;
        v151 = specialized Collection.firstIndex(where:)(v205, (&v176 - 4), v208);
        v210 = v150;
        if ((v152 & 1) == 0)
        {
          if ((v151 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
            goto LABEL_164;
          }

          if (v151 >= *(v208 + 16))
          {
            goto LABEL_158;
          }

          v146 = v198;
          v155 = v199 + 40 * v151;
          v156 = *v155;
          v157 = *(v155 + 8);
          v158 = &v198[*(v19 + 64)];
          v159 = *v158;
          v160 = *(v158 + 1);
          if (*(v155 + 32))
          {
            if ((v158[32] & 1) == 0 || ((v162 = *(v155 + 16), v161 = *(v155 + 24), v163 = *(v158 + 2), v164 = *(v158 + 3), v156 == v159) ? (v165 = v157 == v160) : (v165 = 0), !v165 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
            {
LABEL_117:
              v14 = v207;
              v13 = v209;
              outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v206, v207, v209, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
              outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v146, v14, v13, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
              goto LABEL_118;
            }

            if (v162 == v163 && v161 == v164)
            {
              goto LABEL_145;
            }
          }

          else
          {
            if (v158[32])
            {
              goto LABEL_117;
            }

            if (v156 == v159 && v157 == v160)
            {
              goto LABEL_145;
            }
          }

          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_117;
          }

LABEL_145:
          v168 = v207;
          v169 = v209;
          outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v206, v207, v209, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
          outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v146, v168, v169, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
          if (!v202)
          {
            goto LABEL_181;
          }

          goto LABEL_146;
        }

        v204 = *v147;
        v153 = *v148;
        outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v148, v14, v13, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
        outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v147, v14, v13, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
        v154 = v204 < v153;
        v19 = v200;
        v146 = v147;
        if (!v154)
        {
          break;
        }

        if (!v202)
        {
          goto LABEL_181;
        }

LABEL_146:
        v170 = v203;
        v14 = v207;
        v13 = v209;
        outlined init with take of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v145, v203, v207, v209);
        swift_arrayInitWithTakeFrontToBack();
        outlined init with take of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v170, v143, v14, v13);
        v143 += v201;
        v145 += v201;
        if (__CFADD__(v144++, 1))
        {
          goto LABEL_118;
        }
      }

      v13 = v209;
      v14 = v207;
LABEL_118:
      v52 = v197 + 1;
      v143 = v188 + v182;
      v144 = v187 - 1;
      v145 = v186 + v182;
      v82 = v185;
      if (v197 + 1 != v185)
      {
        continue;
      }

      break;
    }

    v15 = v210;
    v37 = v194;
    a5 = v208;
    v36 = v180;
    if (v185 < v180)
    {
      goto LABEL_176;
    }

LABEL_67:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v185 = v82;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
    }

    v85 = *(v37 + 2);
    v84 = *(v37 + 3);
    v86 = v85 + 1;
    if (v85 >= v84 >> 1)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v37);
    }

    *(v37 + 2) = v86;
    v87 = v37 + 32;
    v88 = &v37[16 * v85 + 32];
    v89 = v185;
    *v88 = v36;
    *(v88 + 1) = v89;
    v211 = v37;
    v210 = *v181;
    if (!v210)
    {
      goto LABEL_184;
    }

    if (v85)
    {
      v204 = v37 + 32;
      v194 = v37;
      while (1)
      {
        v90 = v86 - 1;
        if (v86 >= 4)
        {
          break;
        }

        if (v86 == 3)
        {
          v91 = *(v37 + 4);
          v92 = *(v37 + 5);
          v101 = __OFSUB__(v92, v91);
          v93 = v92 - v91;
          v94 = v101;
LABEL_87:
          if (v94)
          {
            goto LABEL_167;
          }

          v107 = &v37[16 * v86];
          v109 = *v107;
          v108 = *(v107 + 1);
          v110 = __OFSUB__(v108, v109);
          v111 = v108 - v109;
          v112 = v110;
          if (v110)
          {
            goto LABEL_170;
          }

          v113 = &v87[16 * v90];
          v115 = *v113;
          v114 = *(v113 + 1);
          v101 = __OFSUB__(v114, v115);
          v116 = v114 - v115;
          if (v101)
          {
            goto LABEL_173;
          }

          if (__OFADD__(v111, v116))
          {
            goto LABEL_174;
          }

          if (v111 + v116 >= v93)
          {
            if (v93 < v116)
            {
              v90 = v86 - 2;
            }

            goto LABEL_108;
          }

          goto LABEL_101;
        }

        v117 = &v37[16 * v86];
        v119 = *v117;
        v118 = *(v117 + 1);
        v101 = __OFSUB__(v118, v119);
        v111 = v118 - v119;
        v112 = v101;
LABEL_101:
        if (v112)
        {
          goto LABEL_169;
        }

        v120 = &v87[16 * v90];
        v122 = *v120;
        v121 = *(v120 + 1);
        v101 = __OFSUB__(v121, v122);
        v123 = v121 - v122;
        if (v101)
        {
          goto LABEL_172;
        }

        if (v123 < v111)
        {
          goto LABEL_3;
        }

LABEL_108:
        if (v90 - 1 >= v86)
        {
          goto LABEL_159;
        }

        v128 = *v196;
        if (!*v196)
        {
          goto LABEL_182;
        }

        v129 = v15;
        v130 = &v87[16 * v90 - 16];
        v131 = *v130;
        v132 = v90;
        v133 = &v87[16 * v90];
        v134 = *(v133 + 1);
        v135 = *(v193 + 72);
        v136 = v128 + v135 * *v130;
        v137 = v128 + v135 * *v133;
        v138 = v128 + v135 * v134;
        v139 = v208;

        specialized _merge<A>(low:mid:high:buffer:by:)(v136, v137, v138, v210, v139, v207, v209, v190, v191);
        v15 = v129;
        if (v129)
        {

          v211 = v194;
          goto LABEL_155;
        }

        v37 = v194;
        if (v134 < v131)
        {
          goto LABEL_160;
        }

        v140 = *(v194 + 2);
        if (v132 > v140)
        {
          goto LABEL_161;
        }

        *v130 = v131;
        *(v130 + 1) = v134;
        if (v132 >= v140)
        {
          goto LABEL_162;
        }

        v86 = v140 - 1;
        memmove(v133, v133 + 16, 16 * (v140 - 1 - v132));
        *(v37 + 2) = v140 - 1;
        a5 = v208;
        v13 = v209;
        v14 = v207;
        v87 = v204;
        if (v140 <= 2)
        {
LABEL_3:
          v211 = v37;
          v19 = v200;
          goto LABEL_4;
        }
      }

      v95 = &v87[16 * v86];
      v96 = *(v95 - 8);
      v97 = *(v95 - 7);
      v101 = __OFSUB__(v97, v96);
      v98 = v97 - v96;
      if (v101)
      {
        goto LABEL_165;
      }

      v100 = *(v95 - 6);
      v99 = *(v95 - 5);
      v101 = __OFSUB__(v99, v100);
      v93 = v99 - v100;
      v94 = v101;
      if (v101)
      {
        goto LABEL_166;
      }

      v102 = &v37[16 * v86];
      v104 = *v102;
      v103 = *(v102 + 1);
      v101 = __OFSUB__(v103, v104);
      v105 = v103 - v104;
      if (v101)
      {
        goto LABEL_168;
      }

      v101 = __OFADD__(v93, v105);
      v106 = v93 + v105;
      if (v101)
      {
        goto LABEL_171;
      }

      if (v106 >= v98)
      {
        v124 = &v87[16 * v90];
        v126 = *v124;
        v125 = *(v124 + 1);
        v101 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v101)
        {
          goto LABEL_175;
        }

        if (v93 < v127)
        {
          v90 = v86 - 2;
        }

        goto LABEL_108;
      }

      goto LABEL_87;
    }

LABEL_4:
    v35 = v196[1];
    v36 = v185;
    if (v185 >= v35)
    {
      goto LABEL_153;
    }
  }

  v197 = v35;
  v194 = v37;
  v38 = v13;
  v39 = *v196;
  v210 = v15;
  v40 = *(v193 + 72);
  v41 = v36;
  v42 = v39 + v40 * (v36 + 1);
  v43 = a5;
  v44 = v177;
  outlined init with copy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v42, v177, v14, v38);
  v45 = v178;
  outlined init with copy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v39 + v40 * v41, v178, v14, v38);
  v46 = v210;
  LODWORD(v204) = v179(v44, v45, v43);
  v210 = v46;
  if (v46)
  {
    outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v45, v14, v38, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
    outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v44, v14, v38, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
    goto LABEL_155;
  }

  outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v45, v14, v38, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
  outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v44, v14, v38, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
  v180 = v41;
  v47 = v41 + 2;
  v48 = v39 + v40 * (v41 + 2);
  while (1)
  {
    v52 = v197;
    v53 = v195;
    a5 = v208;
    if (v197 == v47)
    {
      v19 = v200;
LABEL_42:
      v73 = v183;
      v37 = v194;
      v36 = v180;
      if ((v204 & 1) == 0)
      {
        goto LABEL_55;
      }

      if (v52 < v180)
      {
        goto LABEL_180;
      }

      if (v180 < v52)
      {
        v74 = v40 * (v52 - 1);
        v75 = v52 * v40;
        v76 = v52;
        v77 = v180 * v40;
        do
        {
          if (v36 != --v76)
          {
            v78 = *v196;
            if (!*v196)
            {
              goto LABEL_183;
            }

            v79 = v52;
            outlined init with take of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v78 + v77, v184, v207, v209);
            if (v77 < v74 || v78 + v77 >= (v78 + v75))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v77 != v74)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            outlined init with take of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v184, v78 + v74, v207, v209);
            v73 = v183;
            v52 = v79;
          }

          ++v36;
          v74 -= v40;
          v75 -= v40;
          v77 += v40;
        }

        while (v36 < v76);
        a5 = v208;
        v13 = v209;
        v15 = v210;
        v14 = v207;
        v19 = v200;
        v37 = v194;
        v36 = v180;
      }

      else
      {
LABEL_55:
        v13 = v209;
        v15 = v210;
      }

      goto LABEL_57;
    }

    v54 = v209;
    outlined init with copy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v48, v195, v14, v209);
    v55 = v192;
    v56 = outlined init with copy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v42, v192, v14, v54);
    MEMORY[0x1EEE9AC00](v56);
    v174 = v53;
    v175 = v55;
    v57 = v210;
    v58 = specialized Collection.firstIndex(where:)(v189, (&v176 - 4), a5);
    v210 = v57;
    if ((v59 & 1) == 0)
    {
      break;
    }

    v49 = *v53 < *v55;
LABEL_9:
    v50 = v55;
    v51 = v209;
    outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v50, v14, v209, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
    outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v53, v14, v51, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
    ++v47;
    v48 += v40;
    v42 += v40;
    if ((v204 ^ v49))
    {
      v52 = v47 - 1;
      v19 = v200;
      a5 = v208;
      goto LABEL_42;
    }
  }

  if ((v58 & 0x8000000000000000) != 0)
  {
    goto LABEL_163;
  }

  if (v58 < *(a5 + 16))
  {
    v60 = v199 + 40 * v58;
    v61 = *v60;
    v62 = *(v60 + 8);
    v63 = v53 + *(v200 + 64);
    v64 = *v63;
    v65 = *(v63 + 1);
    if (*(v60 + 32))
    {
      if (v63[32])
      {
        v66 = *(v60 + 16);
        v67 = *(v60 + 24);
        v68 = *(v63 + 2);
        v69 = *(v63 + 3);
        v70 = v61 == v64 && v62 == v65;
        if (v70 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (v66 == v68 && v67 == v69)
          {
            v49 = 1;
          }

          else
          {
            v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }
        }

        else
        {
          v49 = 0;
        }

        v14 = v207;
        v53 = v195;
      }

      else
      {
        v49 = 0;
        v53 = v195;
      }
    }

    else if (v63[32])
    {
      v49 = 0;
    }

    else
    {
      if (v61 == v64 && v62 == v65)
      {
        v49 = 1;
      }

      else
      {
        v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v53 = v195;
    }

    goto LABEL_9;
  }

LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_182:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_183:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_184:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_185:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t *a6, void (*a7)(uint64_t), uint64_t (*a8)(void *))
{
  v66 = a8;
  v11 = v8;
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, a6, a7);
  v67 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v69 = (&v55 - v24);
  v56 = a2;
  if (a3 == a2)
  {
    return;
  }

  v25 = *a4;
  v26 = *(v23 + 72);
  v27 = *a4 + v26 * (a3 - 1);
  v61 = a5 + 32;
  v62 = -v26;
  v28 = a1 - a3;
  v63 = v25;
  v55 = v26;
  v29 = v25 + v26 * a3;
  v65 = a5;
  v68 = v21;
LABEL_6:
  v59 = v27;
  v60 = a3;
  v57 = v29;
  v58 = v28;
  while (1)
  {
    v70 = v28;
    v30 = v11;
    v31 = v69;
    outlined init with copy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v29, v69, a6, a7);
    v32 = outlined init with copy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v27, v21, a6, a7);
    MEMORY[0x1EEE9AC00](v32);
    *(&v55 - 2) = v31;
    *(&v55 - 1) = v21;
    v33 = specialized Collection.firstIndex(where:)(v66, (&v55 - 4), a5);
    v71 = v30;
    if ((v34 & 1) == 0)
    {
      break;
    }

    v35 = v21;
    v36 = *v31;
    v37 = *v35;
    outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v35, a6, a7, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
    outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v31, a6, a7, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
    if (v36 >= v37)
    {
      v11 = v71;
      a5 = v65;
      v21 = v68;
LABEL_5:
      a3 = v60 + 1;
      v27 = v59 + v55;
      v28 = v58 - 1;
      v29 = v57 + v55;
      if (v60 + 1 == v56)
      {
        return;
      }

      goto LABEL_6;
    }

LABEL_31:
    v52 = v70;
    if (!v63)
    {
      goto LABEL_37;
    }

    v53 = v64;
    outlined init with take of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v29, v64, a6, a7);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v53, v27, a6, a7);
    v27 += v62;
    v29 += v62;
    v54 = __CFADD__(v52, 1);
    v28 = v52 + 1;
    v11 = v71;
    a5 = v65;
    v21 = v68;
    if (v54)
    {
      goto LABEL_5;
    }
  }

  if ((v33 & 0x8000000000000000) == 0)
  {
    if (v33 >= *(a5 + 16))
    {
      goto LABEL_36;
    }

    v38 = v61 + 40 * v33;
    v39 = *v38;
    v40 = *(v38 + 8);
    v41 = v69;
    v42 = v69 + *(v67 + 64);
    v43 = *v42;
    v44 = *(v42 + 1);
    if (*(v38 + 32))
    {
      if ((v42[32] & 1) == 0 || ((v46 = *(v38 + 16), v45 = *(v38 + 24), v48 = *(v42 + 2), v47 = *(v42 + 3), v39 == v43) ? (v49 = v40 == v44) : (v49 = 0), !v49 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
      {
LABEL_4:
        v21 = v68;
        outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v68, a6, a7, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
        outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v41, a6, a7, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
        v11 = v71;
        a5 = v65;
        goto LABEL_5;
      }

      if (v46 == v48 && v45 == v47)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v42[32])
      {
        goto LABEL_4;
      }

      if (v39 == v43 && v40 == v44)
      {
LABEL_30:
        outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v68, a6, a7, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
        outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v41, a6, a7, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
        goto LABEL_31;
      }
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_30;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(uint64_t), void (*a6)(void *, uint64_t))
{
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, a3, a4);
  v11 = *(v10 - 8);
  v12 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = a5(v12);
  }

  v13 = *(v12 + 16);
  v15[0] = v12 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v15[1] = v13;

  a6(v15, a2);

  *a1 = v12;
  return swift_bridgeObjectRelease_n();
}

id specialized UICollectionViewListCoordinatorBase.init(dataSource:selection:editMode:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  v9 = MEMORY[0x1E69E7D40];
  *(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0x80)) = MEMORY[0x1E69E7CD0];
  v10 = *((*v9 & *v6) + 0x90);
  *(v6 + v10) = closure #1 in variable initialization expression of UICollectionViewListCoordinatorBase.helper();
  v11 = (v6 + *((*v9 & *v6) + 0x98));
  *v11 = 0;
  v11[1] = 0;
  v12 = *((*v9 & *v6) + 0xA0);
  *(v6 + v12) = 1;
  *(v6 + *((*v9 & *v6) + 0xA8)) = 0;
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  swift_weakInit();

  v13 = v7 + *((*v9 & *v7) + 0xB8);
  IndexSet.init()();
  _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  v15 = v14;
  IndexSet.init()();
  v16 = MEMORY[0x1E69E7CC0];
  *&v13[v15[10]] = MEMORY[0x1E69E7CC0];
  *&v13[v15[11]] = v16;
  *&v13[v15[12]] = v16;
  *&v13[v15[13]] = v16;
  IndexSet.init()();
  v17 = &v13[v15[15]];
  *v17 = v16;
  v17[1] = v16;
  v17[2] = v16;
  v17[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Si_7SwiftUI13CountingIndexVySiGtTt0g5Tf4g_n(v16);
  v17[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI10TableRowIDO_Si_AC13CountingIndexVySiG_AHttTt0g5Tf4g_n(v16);
  *(v7 + *((*v9 & *v7) + 0xC0)) = 1;
  *(v7 + *((*v9 & *v7) + 0xC8)) = 0;
  v18 = (v7 + *((*v9 & *v7) + 0xD0));
  *v18 = 0u;
  v18[1] = 0u;
  v18[2] = 0u;
  v18[3] = 0u;
  v18[4] = 0u;
  v18[5] = 0u;
  v18[6] = 0u;
  v18[7] = 0u;
  v18[8] = 0u;
  v18[9] = 0u;
  *(v18 + 155) = 0u;
  *(v7 + *((*v9 & *v7) + 0xD8)) = 0;
  v19 = *((*v9 & *v7) + 0xE0);
  v20 = type metadata accessor for IndexPath();
  v21 = *(*(v20 - 8) + 56);
  v21(v7 + v19, 1, 1, v20);
  v21(v7 + *((*v9 & *v7) + 0xE8), 1, 1, v20);
  v22 = v7 + *((*v9 & *v7) + 0xF0);
  *v22 = 0;
  *(v22 + 4) = 256;
  v23 = swift_unknownObjectWeakInit();
  v24 = v7 + *((*v9 & *v7) + 0x100);
  *v24 = 0;
  *(v24 + 1) = 0;
  *(v24 + 2) = 0x1FFFFFFFALL;
  *(v24 + 24) = 0u;
  *(v24 + 40) = 0u;
  v25 = v7 + *((*v9 & *v7) + 0x108);
  *v25 = 0;
  v25[8] = 1;
  v26 = v7 + *((*v9 & *v7) + 0x110);
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0u;
  *(v26 + 48) = 0;
  v27 = v7 + *((*v9 & *v7) + 0x118);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  v28 = v7 + *((*v9 & *v7) + 0x120);
  LOBYTE(v50[0]) = 0;
  MEMORY[0x18D007050](v50 + 1, v23);
  v29 = v50[3];
  *(v28 + 2) = v50[2];
  *(v28 + 3) = v29;
  v28[64] = v51;
  v30 = v50[1];
  *v28 = v50[0];
  *(v28 + 1) = v30;
  v31 = v7 + *((*v9 & *v7) + 0x128);
  *v31 = 0;
  *(v31 + 1) = 0;
  v31[16] = 0;
  v32 = (v7 + *((*v9 & *v7) + 0x130));
  *v32 = 0u;
  v32[1] = 0u;
  *(v7 + *((*v9 & *v7) + 0x138)) = 0;
  *(v7 + *((*v9 & *v7) + 0x140)) = 0;
  v33 = v7 + *((*v9 & *v7) + 0x148);
  *v33 = 0;
  *(v33 + 4) = 256;
  v34 = v7 + *((*v9 & *v7) + 0x150);
  *v34 = 0;
  v34[8] = 1;
  v35 = v7 + *((*v9 & *v7) + 0x158);
  *v35 = 0;
  v35[8] = 1;
  *(v7 + *((*v9 & *v7) + 0x160)) = 0;
  *(v7 + *((*v9 & *v7) + 0x168)) = 0;
  *(v7 + *((*v9 & *v7) + 0x170)) = 0;
  v36 = v7 + *((*v9 & *v7) + 0x178);
  *v36 = 0u;
  *(v36 + 1) = 0u;
  *(v36 + 4) = 0;
  v37 = v7 + *((*v9 & *v7) + 0x88);
  outlined init with copy of TableDataSourceAdaptor(a1, v37);
  *(v37 + 176) = v16;
  *(v37 + 184) = v16;
  swift_beginAccess();
  outlined assign with copy of AnySelectionManager?(a2, v26, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
  swift_endAccess();
  v38 = *v31;
  v39 = *(v31 + 1);
  *v31 = a3;
  *(v31 + 1) = a4;
  v31[16] = a5;
  outlined consume of Binding<NavigationSplitViewColumn>?(v38, v39);
  swift_beginAccess();
  v40 = *(v7 + v12);
  *(v7 + v12) = a6;
  outlined copy of Transaction?(a6);
  outlined consume of ListItemTint?(v40);
  type metadata accessor for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>(0, &lazy cache variable for type metadata for UICollectionViewListCoordinatorBase<TableDataSourceAdaptor, AnySelectionManager>, type metadata accessor for UICollectionViewListCoordinatorBase);
  v49.receiver = v7;
  v49.super_class = v41;
  v42 = objc_msgSendSuper2(&v49, sel_init);
  outlined destroy of Binding<AnySelectionManager>?(a2, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
  outlined destroy of TableDataSourceAdaptor(a1);
  return v42;
}

uint64_t outlined init with copy of Binding<AnySelectionManager>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for MutableBox<UInt32>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for MutableBox<UInt32>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = type metadata accessor for Optional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t outlined assign with take of IntelligenceAppIntentsDataSourcePayloadProviding?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)?(0, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding, MEMORY[0x1E69DBD30], type metadata accessor for CVarArg);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t outlined init with copy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI16TableCellFormulaVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined consume of Binding<AnyTableColumnCustomization>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = *(a1 + 32);
  return specialized closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)(v6, v2, v3) & 1;
}

{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = *(a1 + 32);
  return specialized closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)(v6, v2, v3) & 1;
}

uint64_t outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t outlined init with copy of Binding<AnySelectionManager>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void type metadata accessor for DefaultIndices<ShadowSectionCollection<TableDataSourceAdaptor>>()
{
  if (!lazy cache variable for type metadata for DefaultIndices<ShadowSectionCollection<TableDataSourceAdaptor>>)
  {
    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(255, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
    lazy protocol witness table accessor for type ShadowSectionCollection<TableDataSourceAdaptor> and conformance ShadowSectionCollection<A>();
    v0 = type metadata accessor for DefaultIndices();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DefaultIndices<ShadowSectionCollection<TableDataSourceAdaptor>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ShadowSectionCollection<TableDataSourceAdaptor> and conformance ShadowSectionCollection<A>()
{
  result = lazy protocol witness table cache variable for type ShadowSectionCollection<TableDataSourceAdaptor> and conformance ShadowSectionCollection<A>;
  if (!lazy protocol witness table cache variable for type ShadowSectionCollection<TableDataSourceAdaptor> and conformance ShadowSectionCollection<A>)
  {
    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(255, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShadowSectionCollection<TableDataSourceAdaptor> and conformance ShadowSectionCollection<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShadowSectionCollection<TableDataSourceAdaptor> and conformance ShadowSectionCollection<A>;
  if (!lazy protocol witness table cache variable for type ShadowSectionCollection<TableDataSourceAdaptor> and conformance ShadowSectionCollection<A>)
  {
    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(255, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShadowSectionCollection<TableDataSourceAdaptor> and conformance ShadowSectionCollection<A>);
  }

  return result;
}

void type metadata accessor for IndexingIterator<DefaultIndices<ShadowSectionCollection<TableDataSourceAdaptor>>>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<DefaultIndices<ShadowSectionCollection<TableDataSourceAdaptor>>>)
  {
    type metadata accessor for DefaultIndices<ShadowSectionCollection<TableDataSourceAdaptor>>();
    lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type DefaultIndices<ShadowSectionCollection<TableDataSourceAdaptor>> and conformance DefaultIndices<A>, type metadata accessor for DefaultIndices<ShadowSectionCollection<TableDataSourceAdaptor>>);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<DefaultIndices<ShadowSectionCollection<TableDataSourceAdaptor>>>);
    }
  }
}

uint64_t outlined assign with take of TableHeaderView?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for MutableBox<UInt32>(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with copy of ShadowListDataSource<TableDataSourceAdaptor>(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of ShadowListDataSource<TableDataSourceAdaptor>(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Binding<AnySelectionManager>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 40))(a2, a1, v8);
  return a2;
}

void partial apply for specialized closure #4 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:)()
{
  v1 = *(v0 + 16);
  [v1 layoutIfNeeded];
  specialized UICollectionViewListCoordinatorBase.updateListContents(_:)(v1);
}

uint64_t outlined destroy of Binding<AnySelectionManager>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t partial apply for specialized closure #2 in UICollectionViewListCoordinatorBase.updateEditingState(_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 48))(v2, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], v3, v4);
}

void type metadata accessor for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>()
{
  if (!lazy cache variable for type metadata for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>)
  {
    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(255, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    lazy protocol witness table accessor for type ShadowListDataSource<TableDataSourceAdaptor> and conformance ShadowListDataSource<A>();
    v0 = type metadata accessor for _RowVisitationContext();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ShadowListDataSource<TableDataSourceAdaptor> and conformance ShadowListDataSource<A>()
{
  result = lazy protocol witness table cache variable for type ShadowListDataSource<TableDataSourceAdaptor> and conformance ShadowListDataSource<A>;
  if (!lazy protocol witness table cache variable for type ShadowListDataSource<TableDataSourceAdaptor> and conformance ShadowListDataSource<A>)
  {
    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(255, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShadowListDataSource<TableDataSourceAdaptor> and conformance ShadowListDataSource<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShadowListDataSource<TableDataSourceAdaptor> and conformance ShadowListDataSource<A>;
  if (!lazy protocol witness table cache variable for type ShadowListDataSource<TableDataSourceAdaptor> and conformance ShadowListDataSource<A>)
  {
    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(255, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShadowListDataSource<TableDataSourceAdaptor> and conformance ShadowListDataSource<A>);
  }

  return result;
}

uint64_t outlined init with take of BridgedListState.ScrollTarget?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void type metadata accessor for CountingIndexListDataSource<ShadowListDataSource<TableDataSourceAdaptor>>()
{
  if (!lazy cache variable for type metadata for CountingIndexListDataSource<ShadowListDataSource<TableDataSourceAdaptor>>)
  {
    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(255, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    lazy protocol witness table accessor for type ShadowListDataSource<TableDataSourceAdaptor> and conformance ShadowListDataSource<A>();
    v0 = type metadata accessor for CountingIndexListDataSource();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CountingIndexListDataSource<ShadowListDataSource<TableDataSourceAdaptor>>);
    }
  }
}

void type metadata accessor for _NativeDictionary<TableRowID, (Int, (CountingIndex<Int>, CountingIndex<Int>))>()
{
  if (!lazy cache variable for type metadata for _NativeDictionary<TableRowID, (Int, (CountingIndex<Int>, CountingIndex<Int>))>)
  {
    type metadata accessor for (Int, (CountingIndex<Int>, CountingIndex<Int>))(255);
    lazy protocol witness table accessor for type TableRowID and conformance TableRowID();
    v0 = type metadata accessor for _NativeDictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _NativeDictionary<TableRowID, (Int, (CountingIndex<Int>, CountingIndex<Int>))>);
    }
  }
}

void type metadata accessor for _NativeDictionary<Int, (Int, CountingIndex<Int>)>()
{
  if (!lazy cache variable for type metadata for _NativeDictionary<Int, (Int, CountingIndex<Int>)>)
  {
    type metadata accessor for (Int, CountingIndex<Int>)();
    v0 = type metadata accessor for _NativeDictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _NativeDictionary<Int, (Int, CountingIndex<Int>)>);
    }
  }
}

void type metadata accessor for CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>()
{
  if (!lazy cache variable for type metadata for CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>)
  {
    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(255, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
    lazy protocol witness table accessor for type ShadowSectionCollection<TableDataSourceAdaptor> and conformance ShadowSectionCollection<A>();
    v0 = type metadata accessor for CountingIndexCollection();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>);
    }
  }
}

void type metadata accessor for CollectionChanges<CountingIndex<Int>, CountingIndex<Int>>()
{
  if (!lazy cache variable for type metadata for CollectionChanges<CountingIndex<Int>, CountingIndex<Int>>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_2(255, &lazy cache variable for type metadata for CountingIndex<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E697E0E0]);
    lazy protocol witness table accessor for type CountingIndex<Int> and conformance CountingIndex<A>();
    v0 = type metadata accessor for CollectionChanges();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CollectionChanges<CountingIndex<Int>, CountingIndex<Int>>);
    }
  }
}

__n128 partial apply for specialized closure #2 in ListBatchUpdates.computeRowRemovesAndInserts<A>(from:sourceSection:to:targetSection:)@<Q0>(__n128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a1[1].n128_u8[0];
  v5 = *(v3 + 32);
  *a3 = *(v3 + 16);
  *(a3 + 16) = v5;
  result = *a1;
  *(a3 + 24) = *a1;
  *(a3 + 40) = v4;
  *(a3 + 89) = a2;
  return result;
}

void type metadata accessor for CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>()
{
  if (!lazy cache variable for type metadata for CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>)
  {
    type metadata accessor for LazyMapSequence<[TableSections.Item], Int>();
    lazy protocol witness table accessor for type LazyMapSequence<[TableSections.Item], Int> and conformance <> LazyMapSequence<A, B>();
    v0 = type metadata accessor for CountingIndexCollection();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>);
    }
  }
}

void type metadata accessor for DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>()
{
  if (!lazy cache variable for type metadata for DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>)
  {
    type metadata accessor for CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>();
    lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>> and conformance CountingIndexCollection<A>, type metadata accessor for CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>);
    v0 = type metadata accessor for DefaultIndices();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>);
    }
  }
}

void type metadata accessor for DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>()
{
  if (!lazy cache variable for type metadata for DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>)
  {
    type metadata accessor for CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>();
    lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>> and conformance CountingIndexCollection<A>, type metadata accessor for CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>);
    v0 = type metadata accessor for DefaultIndices();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>);
    }
  }
}

void type metadata accessor for Zip2Sequence<DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>, DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>>.Iterator()
{
  if (!lazy cache variable for type metadata for Zip2Sequence<DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>, DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>>.Iterator)
  {
    type metadata accessor for DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>();
    type metadata accessor for DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>();
    lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>, type metadata accessor for DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>);
    lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>> and conformance DefaultIndices<A>, type metadata accessor for DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>);
    v0 = type metadata accessor for Zip2Sequence.Iterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Zip2Sequence<DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>, DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>>.Iterator);
    }
  }
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for IndexingIterator<DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>>)
  {
    type metadata accessor for DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>();
    lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>, type metadata accessor for DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>>);
    }
  }
}

uint64_t outlined assign with copy of AnySelectionManager?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 24))(a2, a1, v8);
  return a2;
}

void type metadata accessor for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TableDataSourceAdaptor;
    v8[1] = &type metadata for AnySelectionManager;
    v8[2] = lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor();
    v8[3] = lazy protocol witness table accessor for type AnySelectionManager and conformance AnySelectionManager();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for (offset: Int, element: TableColumnCollection.Entry)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)?(0, a2, a3, a4, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type TableTemplateRowWrapperView and conformance TableTemplateRowWrapperView()
{
  result = lazy protocol witness table cache variable for type TableTemplateRowWrapperView and conformance TableTemplateRowWrapperView;
  if (!lazy protocol witness table cache variable for type TableTemplateRowWrapperView and conformance TableTemplateRowWrapperView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableTemplateRowWrapperView and conformance TableTemplateRowWrapperView);
  }

  return result;
}

void destroy for UpdateCollectionViewTableCoordinator(uint64_t a1)
{
  MEMORY[0x18D011290](a1 + 88);
  if (*(a1 + 120))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 96);

    if (*(a1 + 184))
    {
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 144);
    }

    if (*(a1 + 216))
    {
    }

    if (*(a1 + 240))
    {
    }
  }

  v2 = *(a1 + 272);
}

uint64_t initializeWithCopy for UpdateCollectionViewTableCoordinator(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 68) = *(a2 + 68);
  swift_unknownObjectWeakCopyInit();
  v5 = *(a2 + 120);
  if (v5)
  {
    v6 = *(a2 + 128);
    *(a1 + 120) = v5;
    *(a1 + 128) = v6;
    (**(v5 - 8))(a1 + 96, a2 + 96);
    *(a1 + 136) = *(a2 + 136);
    v7 = *(a2 + 184);

    if (v7)
    {
      *(a1 + 144) = *(a2 + 144);
    }

    else
    {
      v13 = *(a2 + 168);
      *(a1 + 168) = v13;
      (**(v13 - 8))(a1 + 144, a2 + 144);
    }

    *(a1 + 184) = v7;
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    v14 = *(a2 + 216);

    if (v14)
    {
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = v14;
      *(a1 + 224) = *(a2 + 224);

      v15 = *(a2 + 240);
      if (v15)
      {
LABEL_8:
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 240) = v15;
        v16 = *(a2 + 256);
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 256) = v16;

LABEL_11:
        *(a1 + 264) = *(a2 + 264);
        *(a1 + 265) = *(a2 + 265);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 224) = *(a2 + 224);
      v15 = *(a2 + 240);
      if (v15)
      {
        goto LABEL_8;
      }
    }

    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    goto LABEL_11;
  }

  v8 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v8;
  *(a1 + 251) = *(a2 + 251);
  v9 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v9;
  v10 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v10;
  v11 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v11;
  v12 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v12;
LABEL_12:
  v17 = *(a2 + 272);
  *(a1 + 272) = v17;
  v18 = v17;
  return a1;
}

uint64_t assignWithCopy for UpdateCollectionViewTableCoordinator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  swift_unknownObjectWeakCopyAssign();
  v4 = *(a2 + 120);
  if (*(a1 + 120))
  {
    v5 = (a1 + 96);
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(v5, (a2 + 96));
      *(a1 + 136) = *(a2 + 136);

      if (a1 != a2)
      {
        outlined destroy of TableColumnCollection.Backing(a1 + 144);
        if (*(a2 + 184))
        {
          *(a1 + 144) = *(a2 + 144);
          *(a1 + 184) = 1;
        }

        else
        {
          v23 = *(a2 + 168);
          *(a1 + 168) = v23;
          *(a1 + 176) = *(a2 + 176);
          (**(v23 - 8))(a1 + 144, a2 + 144);
          *(a1 + 184) = 0;
        }
      }

      *(a1 + 192) = *(a2 + 192);

      *(a1 + 200) = *(a2 + 200);
      v24 = *(a2 + 216);
      if (*(a1 + 216))
      {
        if (v24)
        {
          *(a1 + 208) = *(a2 + 208);

          *(a1 + 216) = *(a2 + 216);

          *(a1 + 224) = *(a2 + 224);
        }

        else
        {
          outlined destroy of BridgedListState(a1 + 208, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
          v27 = *(a2 + 224);
          *(a1 + 208) = *(a2 + 208);
          *(a1 + 224) = v27;
        }
      }

      else if (v24)
      {
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 224) = *(a2 + 224);
      }

      else
      {
        v29 = *(a2 + 208);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 208) = v29;
      }

      v30 = *(a2 + 240);
      if (*(a1 + 240))
      {
        if (v30)
        {
          *(a1 + 232) = *(a2 + 232);

          *(a1 + 240) = *(a2 + 240);

          *(a1 + 248) = *(a2 + 248);

          *(a1 + 256) = *(a2 + 256);
        }

        else
        {
          _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(a1 + 232, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization, MEMORY[0x1E6981948]);
          v32 = *(a2 + 248);
          *(a1 + 232) = *(a2 + 232);
          *(a1 + 248) = v32;
        }

        goto LABEL_31;
      }

      if (!v30)
      {
        goto LABEL_29;
      }

      goto LABEL_23;
    }

    outlined destroy of TableDataSourceAdaptor(v5);
    v8 = *(a2 + 112);
    v7 = *(a2 + 128);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v8;
    *(a1 + 128) = v7;
    v9 = *(a2 + 192);
    v11 = *(a2 + 144);
    v10 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v9;
    *(a1 + 144) = v11;
    *(a1 + 160) = v10;
    v13 = *(a2 + 224);
    v12 = *(a2 + 240);
    v14 = *(a2 + 208);
    *(a1 + 251) = *(a2 + 251);
    *(a1 + 224) = v13;
    *(a1 + 240) = v12;
    *(a1 + 208) = v14;
  }

  else
  {
    if (v4)
    {
      *(a1 + 120) = v4;
      *(a1 + 128) = *(a2 + 128);
      (**(v4 - 8))(a1 + 96, a2 + 96);
      *(a1 + 136) = *(a2 + 136);
      v6 = *(a2 + 184);

      if (v6)
      {
        *(a1 + 144) = *(a2 + 144);
      }

      else
      {
        v25 = *(a2 + 168);
        *(a1 + 168) = v25;
        *(a1 + 176) = *(a2 + 176);
        (**(v25 - 8))(a1 + 144, a2 + 144);
      }

      *(a1 + 184) = v6;
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      v26 = *(a2 + 216);

      if (v26)
      {
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 224) = *(a2 + 224);
      }

      else
      {
        v28 = *(a2 + 208);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 208) = v28;
      }

      if (!*(a2 + 240))
      {
LABEL_29:
        v31 = *(a2 + 232);
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 232) = v31;
        goto LABEL_31;
      }

LABEL_23:
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);

LABEL_31:
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 265) = *(a2 + 265);
      *(a1 + 266) = *(a2 + 266);
      goto LABEL_32;
    }

    v15 = *(a2 + 96);
    v16 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v16;
    *(a1 + 96) = v15;
    v17 = *(a2 + 144);
    v18 = *(a2 + 160);
    v19 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v19;
    *(a1 + 144) = v17;
    *(a1 + 160) = v18;
    v20 = *(a2 + 208);
    v21 = *(a2 + 224);
    v22 = *(a2 + 240);
    *(a1 + 251) = *(a2 + 251);
    *(a1 + 224) = v21;
    *(a1 + 240) = v22;
    *(a1 + 208) = v20;
  }

LABEL_32:
  v33 = *(a2 + 272);
  v34 = *(a1 + 272);
  *(a1 + 272) = v33;
  v35 = v33;

  return a1;
}

uint64_t outlined destroy of BridgedListState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeWithTake for UpdateCollectionViewTableCoordinator(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 68) = *(a2 + 68);
  swift_unknownObjectWeakTakeInit();
  v5 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v5;
  *(a1 + 251) = *(a2 + 251);
  v6 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v6;
  v7 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v7;
  v8 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v8;
  v9 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v9;
  *(a1 + 272) = *(a2 + 272);
  return a1;
}

uint64_t assignWithTake for UpdateCollectionViewTableCoordinator(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  swift_unknownObjectWeakTakeAssign();
  if (*(a1 + 120))
  {
    if (*(a2 + 120))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 96);
      v6 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v6;
      v7 = *(a2 + 136);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = v7;

      if (a1 != a2)
      {
        outlined destroy of TableColumnCollection.Backing(a1 + 144);
        v8 = *(a2 + 160);
        *(a1 + 144) = *(a2 + 144);
        *(a1 + 160) = v8;
        *(a1 + 169) = *(a2 + 169);
      }

      *(a1 + 192) = *(a2 + 192);

      *(a1 + 200) = *(a2 + 200);
      if (*(a1 + 216))
      {
        if (*(a2 + 216))
        {
          *(a1 + 208) = *(a2 + 208);

          *(a1 + 216) = *(a2 + 216);

          *(a1 + 224) = *(a2 + 224);

          if (!*(a1 + 240))
          {
            goto LABEL_16;
          }

LABEL_13:
          if (*(a2 + 240))
          {
            *(a1 + 232) = *(a2 + 232);

            *(a1 + 240) = *(a2 + 240);

            *(a1 + 248) = *(a2 + 248);

            *(a1 + 256) = *(a2 + 256);

LABEL_17:
            *(a1 + 264) = *(a2 + 264);
            *(a1 + 265) = *(a2 + 265);
            *(a1 + 266) = *(a2 + 266);
            goto LABEL_18;
          }

          _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(a1 + 232, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization, MEMORY[0x1E6981948]);
LABEL_16:
          *(a1 + 232) = *(a2 + 232);
          *(a1 + 248) = *(a2 + 248);
          goto LABEL_17;
        }

        outlined destroy of BridgedListState(a1 + 208, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
      }

      *(a1 + 208) = *(a2 + 208);
      *(a1 + 224) = *(a2 + 224);
      if (!*(a1 + 240))
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    outlined destroy of TableDataSourceAdaptor(a1 + 96);
  }

  v9 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v9;
  *(a1 + 251) = *(a2 + 251);
  v10 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v10;
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  v12 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v12;
  v13 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v13;
LABEL_18:
  v14 = *(a1 + 272);
  *(a1 + 272) = *(a2 + 272);

  return a1;
}

uint64_t getEnumTagSinglePayload for UpdateCollectionViewTableCoordinator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 272);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UpdateCollectionViewTableCoordinator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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
      *(result + 272) = (a2 - 1);
      return result;
    }

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)specialized partial apply(uint64_t a1)
{
  return partial apply for specialized closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)(a1) & 1;
}

{
  return partial apply for specialized closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)(a1) & 1;
}

uint64_t View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, int a3@<W6>, int a4@<W7>, uint64_t a5@<X8>, void (*a6)(uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)(v15, v16, v18 & 1, v20, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  outlined consume of Text.Storage(v15, v17, v19 & 1);
}

uint64_t View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v52 = a8;
  v56 = a7;
  v55 = a6;
  v54 = a5;
  v53 = a9;
  v42 = a11;
  v41 = a10;
  v51 = a12;
  v46 = a13;
  v49 = *(a13 - 8);
  v50 = a14;
  v43 = a15;
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>();
  v21 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v21);
  v44 = &v38 - v22;
  v23 = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
  v68 = a15;
  v69 = v23;
  WitnessTable = swift_getWitnessTable();
  *&v73 = v21;
  *(&v73 + 1) = MEMORY[0x1E6981E70];
  *&v74 = WitnessTable;
  *(&v74 + 1) = MEMORY[0x1E6981E60];
  v47 = type metadata accessor for ConfirmationDialogModifier();
  v48 = *(v47 - 8);
  v24 = MEMORY[0x1EEE9AC00](v47);
  v26 = &v38 - v25;
  MEMORY[0x18D009CE0](&v73, v24);
  v39 = a4;
  Text.assertUnstyled(_:options:)();
  v65 = v54;
  v66 = v55;
  v67 = v56;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v64);
  v40 = v64;

  v27 = a3;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  v41(v28);
  KeyPath = swift_getKeyPath();
  v63 = 0;
  v30 = swift_getKeyPath();
  v62 = 0;
  v31 = swift_getKeyPath();
  v61 = 0;
  v32 = swift_getKeyPath();
  v60 = 0;
  *&v57 = KeyPath;
  BYTE8(v57) = v63;
  *(&v57 + 9) = *v72;
  HIDWORD(v57) = *&v72[3];
  *&v58 = v30;
  BYTE8(v58) = v62;
  *(&v58 + 9) = *v71;
  HIDWORD(v58) = *&v71[3];
  *&v59[0] = v31;
  BYTE8(v59[0]) = v61;
  *(v59 + 9) = *v70;
  HIDWORD(v59[0]) = *&v70[3];
  *&v59[1] = v32;
  BYTE8(v59[1]) = 0;
  lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle();
  v33 = v44;
  v34 = v46;
  View.buttonStyle<A>(_:)(&v57, v46, &type metadata for PlatformItemListButtonStyle, v43);
  v73 = v57;
  v74 = v58;
  *v75 = v59[0];
  *&v75[9] = *(v59 + 9);
  outlined destroy of PlatformItemListButtonStyle(&v73);
  (*(v49 + 8))(v20, v34);
  ConfirmationDialogModifier.init(presentedValue:isPresented:title:titleVisibility:actions:message:)(v40, v54, v55, v56, a1, a2, v27 & 1, v39, v26, v52, v33, v37, v21, MEMORY[0x1E6981E70], WitnessTable, MEMORY[0x1E6981E60]);
  v35 = v47;
  MEMORY[0x18D00A570](v26, v51, v47, v50);
  return (*(v48 + 8))(v26, v35);
}

uint64_t View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v30 = a4;
  v31 = a5;
  v28 = a2;
  v29 = a3;
  v27 = a11;
  v17 = MEMORY[0x1EEE9AC00](a1);
  (*(v19 + 16))(&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)(v20, v21, v23 & 1, v25, v28, v29, v30, v31, a9, a6, a7, a8, v27, *(&v27 + 1), a13);
  outlined consume of Text.Storage(v20, v22, v24 & 1);
}

uint64_t View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:message:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, int a3@<W6>, int a4@<W7>, uint64_t a5@<X8>, void (*a6)(uint64_t), uint64_t a7, void (*a8)(uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  v19 = Text.init(_:tableName:bundle:comment:)();
  v21 = v20;
  v23 = v22;
  View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:message:)(v19, v20, v22 & 1, v24, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  outlined consume of Text.Storage(v19, v21, v23 & 1);
}

uint64_t View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t)@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v30 = a7;
  v31 = a6;
  v34 = a4;
  v35 = a5;
  v32 = a2;
  v33 = a3;
  v28 = a12;
  v29 = a10;
  v18 = MEMORY[0x1EEE9AC00](a1);
  (*(v20 + 16))(&v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v21 = Text.init<A>(_:)();
  v23 = v22;
  v25 = v24;
  View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:message:)(v21, v22, v24 & 1, v26, v32, v33, v34, v35, a9, v31, v30, a8, v29, *(&v29 + 1), v28, *(&v28 + 1), a13, a15, a16);
  outlined consume of Text.Storage(v21, v23, v25 & 1);
}

uint64_t View.confirmationDialog<A, B>(_:isPresented:titleVisibility:presenting:actions:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, int a3@<W6>, int a4@<W7>, uint64_t a5@<X8>, __int128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  v16 = Text.init(_:tableName:bundle:comment:)();
  v18 = v17;
  v20 = v19;
  View.confirmationDialog<A, B>(_:isPresented:titleVisibility:presenting:actions:)(v16, v17, v19 & 1, v21, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  outlined consume of Text.Storage(v16, v18, v20 & 1);
}

uint64_t View.confirmationDialog<A, B>(_:isPresented:titleVisibility:presenting:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v29 = a12;
  v30 = a13;
  v31 = a14;
  v32 = a15;
  v33 = a16;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a10;
  v38 = a11;
  v23 = type metadata accessor for Optional();
  WitnessTable = swift_getWitnessTable();
  return View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)(a1, a2, a3 & 1, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in View.confirmationDialog<A, B>(_:isPresented:titleVisibility:presenting:actions:), v28, a12, v23, a15, WitnessTable);
}

uint64_t View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:presenting:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v29 = a8;
  v30 = a7;
  v31 = a6;
  v32 = a2;
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v28 = a9;
  v16 = MEMORY[0x1EEE9AC00](a1);
  (*(v18 + 16))(&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  *(&v26 + 1) = v30;
  *&v26 = v31;
  View.confirmationDialog<A, B>(_:isPresented:titleVisibility:presenting:actions:)(v19, v20, v22 & 1, v24, v32, v33, v34, v35, v28, v26, v29, a10, a12, a13, a14, a16);
  outlined consume of Text.Storage(v19, v21, v23 & 1);
}

uint64_t closure #1 in View.confirmationDialog<A, B>(_:isPresented:titleVisibility:presenting:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v45[1] = a6;
  v46 = a5;
  v49 = a4;
  v55 = a8;
  v54 = a11;
  v14 = *(a7 - 8);
  v52 = a2;
  v53 = v14;
  MEMORY[0x1EEE9AC00](a1);
  v47 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v45[0] = v45 - v17;
  v18 = type metadata accessor for Optional();
  v48 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v45 - v19;
  v50 = a9;
  v51 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v45 - v29;
  v58 = a1;
  v59 = v52;
  v60 = a3;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v57);
  if (v57 == 1)
  {
    v31 = v48;
    (*(v48 + 16))(v20, v49, v18);
    if ((*(v51 + 48))(v20, 1, v50) != 1)
    {
      v35 = v51;
      v36 = v20;
      v37 = v50;
      (*(v51 + 32))(v23, v36, v50);
      v38 = v47;
      v46(v23);
      (*(v35 + 8))(v23, v37);
      v52 = v25;
      v39 = v45[0];
      v33 = v54;
      static ViewBuilder.buildExpression<A>(_:)(v38, a7, v54);
      v34 = v53;
      v40 = *(v53 + 8);
      v40(v38, a7);
      static ViewBuilder.buildExpression<A>(_:)(v39, a7, v33);
      v41 = v39;
      v25 = v52;
      v40(v41, a7);
      (*(v34 + 32))(v27, v38, a7);
      v32 = 0;
      goto LABEL_6;
    }

    (*(v31 + 8))(v20, v18);
  }

  v32 = 1;
  v34 = v53;
  v33 = v54;
LABEL_6:
  (*(v34 + 56))(v27, v32, 1, a7);
  static ToolbarContentBuilder.buildIf<A>(_:)(v27, v30);
  v42 = *(v25 + 8);
  v42(v27, v24);
  v56 = v33;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v30, v24, WitnessTable);
  return (v42)(v30, v24);
}

uint64_t View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:presenting:actions:message:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, int a3@<W6>, int a4@<W7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  v21 = Text.init(_:tableName:bundle:comment:)();
  v23 = v22;
  v25 = v24;
  View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:presenting:actions:message:)(v21, v22, v24 & 1, v26, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  outlined consume of Text.Storage(v21, v23, v25 & 1);
}

uint64_t ContentUnavailableView.init(label:description:actions:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = type metadata accessor for ContentUnavailableView();
  v14 = a3(v8, v9, v10, v11, v12, v13);
  v15 = a5(v14);
  return a1(v15);
}

uint64_t ContentUnavailableView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v38 = *(a1 + 32);
  v44 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v43 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 24);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v13[5];
  v39 = v13[6];
  v40 = v14;
  v15 = v13[7];
  v37[0] = v12;
  v37[1] = v15;
  *&v16 = v9;
  *(&v16 + 1) = v5;
  *&v18 = v17;
  *(&v18 + 1) = v14;
  v46 = v16;
  v47 = v18;
  v48 = v39;
  v49 = v15;
  v19 = type metadata accessor for ResolvedContentUnavailableView();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v37 - v25;
  v27 = v12;
  v28 = v41;
  (*(v10 + 16))(v27, v41, v9, v24);
  v29 = *(v6 + 16);
  v30 = v42;
  v29(v42, v28 + *(a1 + 68), v5);
  v31 = *(a1 + 72);
  v32 = v43;
  v33 = v38;
  (*(v44 + 16))(v43, v28 + v31, v38);
  ResolvedContentUnavailableView.init(label:description:actions:)(v37[0], v30, v32, v9, v5, v33, v22);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v22, v19, WitnessTable);
  v35 = *(v20 + 8);
  v35(v22, v19);
  static ViewBuilder.buildExpression<A>(_:)(v26, v19, WitnessTable);
  return (v35)(v26, v19);
}

uint64_t ContentUnavailableView<>.init(_:image:description:)@<X0>(uint64_t a1@<X6>, uint64_t a2@<X7>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5)
{
  outlined copy of Text?(a1, a2, a4, a5);
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = Image.init(_:bundle:)();
  result = outlined consume of Text?(a1, a2, a4, a5);
  *a3 = v8;
  *(a3 + 8) = v10;
  *(a3 + 16) = v12 & 1;
  *(a3 + 24) = v14;
  *(a3 + 32) = v15;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
  *(a3 + 56) = a4;
  *(a3 + 64) = a5;
  return result;
}

uint64_t ContentUnavailableView<>.init(_:systemImage:description:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7)
{
  outlined copy of Text?(a3, a4, a6, a7);
  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  specialized Image.init(systemName:)(a1, a2);
  v19 = v18;
  result = outlined consume of Text?(a3, a4, a6, a7);
  *a5 = v11;
  *(a5 + 8) = v13;
  *(a5 + 16) = v15 & 1;
  *(a5 + 24) = v17;
  *(a5 + 32) = v19;
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
  *(a5 + 56) = a6;
  *(a5 + 64) = a7;
  return result;
}

uint64_t ContentUnavailableView<>.init<A>(_:image:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void (*a11)(__int128 *__return_ptr, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = a6;
  *(&v26 + 1) = a4;
  *&v27 = a5;
  *(&v27 + 1) = a6;
  v28 = a7;
  outlined copy of Text?(a4, a5, a6, a7);
  closure #1 in ContentUnavailableView<>.init<A>(_:image:description:)(a1, a2, a3, a8, a10, a11, v25);
  outlined consume of Text?(a4, a5, v12, a7);

  v19 = v27;
  *(a9 + 32) = v26;
  *(a9 + 48) = v19;
  *(a9 + 64) = v28;
  v20 = v25[1];
  v21 = *(a8 - 8);
  *a9 = v25[0];
  *(a9 + 16) = v20;
  v22 = *(v21 + 8);

  return v22(a1, a8);
}

double closure #1 in ContentUnavailableView<>.init<A>(_:image:description:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(__int128 *__return_ptr, char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);

  a6(&v20, v15, a2, a3, a4, a5);
  v17 = v21;
  result = *&v20;
  v19 = v22;
  *a7 = v20;
  *(a7 + 16) = v17;
  *(a7 + 24) = v19;
  return result;
}

uint64_t static ContentUnavailableView<>.search.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  type metadata accessor for Environment<Binding<AttributedString>?>.Content(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for SearchUnavailableContent.Label();
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t static ContentUnavailableView<>.search(text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  type metadata accessor for Environment<Binding<AttributedString>?>.Content(0);
  swift_storeEnumTagMultiPayload();
  v6 = (a3 + *(type metadata accessor for SearchUnavailableContent.Label() + 20));
  *v6 = a1;
  v6[1] = a2;
}

void SearchUnavailableContent.Label.body.getter(uint64_t a1@<X8>)
{
  SearchUnavailableContent.Label.resolvedKey.getter();
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  v18 = v9 & 1;
  LocalizedStringKey.init(stringLiteral:)();
  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  specialized Image.init(systemName:)(0x697966696E67616DLL, 0xEF7373616C67676ELL);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v18;
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  *(a1 + 48) = v14 & 1;
  *(a1 + 56) = v16;
  *(a1 + 64) = v17;
}

uint64_t SearchUnavailableContent.Label.resolvedKey.getter()
{
  type metadata accessor for Binding<AttributedString>?(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedString();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v40 - v11;
  v12 = type metadata accessor for CharacterSet();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (v0 + *(type metadata accessor for SearchUnavailableContent.Label() + 20));
  v17 = v16[1];
  if (v17)
  {
    v40 = *v16;
    v44 = v40;
    v45 = v17;
    static CharacterSet.whitespacesAndNewlines.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v18 = StringProtocol.trimmingCharacters(in:)();
    v19 = v6;
    v21 = v20;
    (*(v13 + 8))(v15, v12);

    v22 = HIBYTE(v21) & 0xF;
    v23 = (v21 & 0x2000000000000000) == 0;
    v6 = v19;
    if (v23)
    {
      v22 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v24._object = 0x800000018CD55460;
      v24._countAndFlagsBits = 0xD000000000000023;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v24);
      v25._countAndFlagsBits = v40;
      v25._object = v17;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v25);
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v26);
      return v44;
    }
  }

  specialized Environment.wrappedValue.getter(v3);
  type metadata accessor for Binding<AttributedString>();
  v29 = v28;
  if ((*(*(v28 - 8) + 48))(v3, 1, v28) == 1)
  {
    outlined destroy of Environment<Binding<AttributedString>?>.Content(v3, type metadata accessor for Binding<AttributedString>?);
  }

  else
  {
    MEMORY[0x18D00ACC0](v29);
    outlined destroy of Environment<Binding<AttributedString>?>.Content(v3, type metadata accessor for Binding<AttributedString>);
    v31 = v41;
    v30 = v42;
    v32 = v43;
    (*(v42 + 32))(v41, v9, v43);
    (*(v30 + 16))(v6, v31, v32);
    v44 = String.init(_:)();
    v45 = v33;
    static CharacterSet.whitespacesAndNewlines.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v34 = StringProtocol.trimmingCharacters(in:)();
    v36 = v35;
    (*(v13 + 8))(v15, v12);

    v37 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v37 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v38._object = 0x800000018CD55460;
      v38._countAndFlagsBits = 0xD000000000000023;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v38);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v39);
      (*(v30 + 8))(v31, v32);
      return v44;
    }

    (*(v30 + 8))(v31, v32);
  }

  return LocalizedStringKey.init(stringLiteral:)();
}

uint64_t SearchUnavailableContent.Description.body.getter@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = static Text.System.kitLocalized(_:tableName:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance SearchUnavailableContent.Description@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = static Text.System.kitLocalized(_:tableName:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SearchUnavailableContent.Label(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    type metadata accessor for Environment<Binding<AttributedString>?>.Content(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for Binding<AttributedString>();
      v8 = v7;
      v9 = *(v7 - 8);
      if ((*(v9 + 48))(a2, 1, v7))
      {
        type metadata accessor for Binding<AttributedString>?(0);
        memcpy(a1, a2, *(*(v10 - 8) + 64));
      }

      else
      {
        v12 = a2[1];
        *a1 = *a2;
        a1[1] = v12;
        v13 = *(v8 + 32);
        v14 = type metadata accessor for AttributedString();
        v20 = *(*(v14 - 8) + 16);

        v20(a1 + v13, a2 + v13, v14);
        (*(v9 + 56))(a1, 0, 1, v8);
      }
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
    v15 = *(a3 + 20);
    v16 = (a1 + v15);
    v17 = (a2 + v15);
    v18 = v17[1];
    *v16 = *v17;
    v16[1] = v18;
  }

  return a1;
}

uint64_t destroy for SearchUnavailableContent.Label(uint64_t a1)
{
  type metadata accessor for Environment<Binding<AttributedString>?>.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Binding<AttributedString>();
    v3 = v2;
    if (!(*(*(v2 - 8) + 48))(a1, 1, v2))
    {

      v4 = *(v3 + 32);
      v5 = type metadata accessor for AttributedString();
      (*(*(v5 - 8) + 8))(a1 + v4, v5);
    }
  }

  else
  {
  }
}

void *initializeWithCopy for SearchUnavailableContent.Label(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for Environment<Binding<AttributedString>?>.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Binding<AttributedString>();
    v7 = v6;
    v8 = *(v6 - 8);
    if ((*(v8 + 48))(a2, 1, v6))
    {
      type metadata accessor for Binding<AttributedString>?(0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      v10 = a2[1];
      *a1 = *a2;
      a1[1] = v10;
      v11 = *(v7 + 32);
      v12 = type metadata accessor for AttributedString();
      v18 = *(*(v12 - 8) + 16);

      v18(a1 + v11, a2 + v11, v12);
      (*(v8 + 56))(a1, 0, 1, v7);
    }
  }

  else
  {
    *a1 = *a2;
  }

  swift_storeEnumTagMultiPayload();
  v13 = *(a3 + 20);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;

  return a1;
}

void *assignWithCopy for SearchUnavailableContent.Label(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of Environment<Binding<AttributedString>?>.Content(a1, type metadata accessor for Environment<Binding<AttributedString>?>.Content);
    type metadata accessor for Environment<Binding<AttributedString>?>.Content(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for Binding<AttributedString>();
      v7 = v6;
      v8 = *(v6 - 8);
      if ((*(v8 + 48))(a2, 1, v6))
      {
        type metadata accessor for Binding<AttributedString>?(0);
        memcpy(a1, a2, *(*(v9 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        a1[1] = a2[1];
        v10 = *(v7 + 32);
        v11 = type metadata accessor for AttributedString();
        v16 = *(*(v11 - 8) + 16);

        v16(a1 + v10, a2 + v10, v11);
        (*(v8 + 56))(a1, 0, 1, v7);
      }
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  v12 = *(a3 + 20);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  *v13 = *v14;
  v13[1] = v14[1];

  return a1;
}

void *initializeWithTake for SearchUnavailableContent.Label(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for Environment<Binding<AttributedString>?>.Content(0);
  v7 = v6;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Binding<AttributedString>();
    v9 = v8;
    v10 = *(v8 - 8);
    if ((*(v10 + 48))(a2, 1, v8))
    {
      type metadata accessor for Binding<AttributedString>?(0);
      memcpy(a1, a2, *(*(v11 - 8) + 64));
    }

    else
    {
      v12 = a2[1];
      *a1 = *a2;
      a1[1] = v12;
      v13 = *(v9 + 32);
      v14 = type metadata accessor for AttributedString();
      (*(*(v14 - 8) + 32))(a1 + v13, a2 + v13, v14);
      (*(v10 + 56))(a1, 0, 1, v9);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v7 - 8) + 64));
  }

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void *assignWithTake for SearchUnavailableContent.Label(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of Environment<Binding<AttributedString>?>.Content(a1, type metadata accessor for Environment<Binding<AttributedString>?>.Content);
    type metadata accessor for Environment<Binding<AttributedString>?>.Content(0);
    v7 = v6;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for Binding<AttributedString>();
      v9 = v8;
      v10 = *(v8 - 8);
      if ((*(v10 + 48))(a2, 1, v8))
      {
        type metadata accessor for Binding<AttributedString>?(0);
        memcpy(a1, a2, *(*(v11 - 8) + 64));
      }

      else
      {
        v12 = a2[1];
        *a1 = *a2;
        a1[1] = v12;
        v13 = *(v9 + 32);
        v14 = type metadata accessor for AttributedString();
        (*(*(v14 - 8) + 32))(a1 + v13, a2 + v13, v14);
        (*(v10 + 56))(a1, 0, 1, v9);
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }
  }

  v15 = *(a3 + 20);
  v16 = (a1 + v15);
  v17 = (a2 + v15);
  v19 = *v17;
  v18 = v17[1];
  *v16 = v19;
  v16[1] = v18;

  return a1;
}

void type metadata accessor for Label<Text, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>()
{
  if (!lazy cache variable for type metadata for Label<Text, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>)
  {
    type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for Label();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Label<Text, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)
  {
    type metadata accessor for Label<Text, Image>();
    type metadata accessor for LabelStyleWritingModifier<IconOnlyLabelStyle>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>();
    lazy protocol witness table accessor for type Label<Text, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance Label<A, B>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, type metadata accessor for Label<Text, Image>);
    lazy protocol witness table accessor for type Label<Text, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance Label<A, B>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>, type metadata accessor for LabelStyleWritingModifier<IconOnlyLabelStyle>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Label<Text, ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance Label<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of Environment<Binding<AttributedString>?>.Content(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sScG7addTask8priority9operationyScPSg_xyYaYAcntFyt_Tg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TaskPriority?(a1, v10);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of TaskPriority?(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TaskPriority?(a3, v11);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TaskPriority?(a3, v11);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      type metadata accessor for TaskGroup<()>.Iterator(0, &lazy cache variable for type metadata for ()?, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of TaskPriority?(v25[0]);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  type metadata accessor for TaskGroup<()>.Iterator(0, &lazy cache variable for type metadata for ()?, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCScSy7SwiftUI22TextEditorModificationVG_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TaskPriority?(a3, v11);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      type metadata accessor for TaskGroup<()>.Iterator(0, &lazy cache variable for type metadata for AsyncStream<TextEditorModification>, &type metadata for TextEditorModification, MEMORY[0x1E69E8698]);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of TaskPriority?(v25[0]);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  type metadata accessor for TaskGroup<()>.Iterator(0, &lazy cache variable for type metadata for AsyncStream<TextEditorModification>, &type metadata for TextEditorModification, MEMORY[0x1E69E8698]);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id one-time initialization function for shared()
{
  type metadata accessor for BGTaskSchedulerWrapper();
  v0 = swift_allocObject();
  result = [objc_opt_self() shared];
  *(v0 + 16) = result;
  *(v0 + 24) = 0;
  *(v0 + 32) = MEMORY[0x1E69E7CD0];
  static BGTaskSchedulerWrapper.shared = v0;
  return result;
}

Swift::Void __swiftcall BGTaskSchedulerWrapper.observeTask(_:)(Swift::String_optional a1)
{
  if (a1.value._object)
  {
    v2 = v1;
    object = a1.value._object;
    countAndFlagsBits = a1.value._countAndFlagsBits;
    v5 = *&v1->_os_unfair_lock_opaque;

    os_unfair_lock_lock(v1 + 6);

    v6 = specialized Set._Variant.insert(_:)(v11, countAndFlagsBits, object);

    os_unfair_lock_unlock(v2 + 6);
    if (v6)
    {
      v7 = *&v2[4]._os_unfair_lock_opaque;
      v8 = MEMORY[0x18D00C850](countAndFlagsBits, object);
      v9 = swift_allocObject();
      v9[2] = countAndFlagsBits;
      v9[3] = object;
      v9[4] = v5;
      v11[4] = partial apply for closure #2 in BGTaskSchedulerWrapper.observeTask(_:);
      v11[5] = v9;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 1107296256;
      v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
      v11[3] = &block_descriptor_68;
      v10 = _Block_copy(v11);

      [v7 registerForTaskWithIdentifier:v8 launchHandler:v10];
      _Block_release(v10);
    }

    else
    {
    }
  }
}

uint64_t closure #2 in BGTaskSchedulerWrapper.observeTask(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a1;
  v12[7] = a4;
  swift_unknownObjectRetain();

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #2 in BGTaskSchedulerWrapper.observeTask(_:), v12);
}

uint64_t closure #1 in closure #2 in BGTaskSchedulerWrapper.observeTask(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return specialized static BGTaskSchedulerWrapper.performAction(for:with:)(a4, a5, a6);
}

uint64_t closure #1 in static BGTaskSchedulerWrapper.performAction(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in static BGTaskSchedulerWrapper.performAction(for:with:), 0, 0);
}

uint64_t closure #1 in static BGTaskSchedulerWrapper.performAction(for:with:)()
{
  v1 = v0[4];
  v2 = _s7SwiftUI22BackgroundTaskProtocolPAAE12currentTasksSayAA0cD5EntryVyxGGyFZAA010AppRefreshcD0V_Ttg5();
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = closure #2 in closure #1 in closure #1 in AppDelegate.application(_:handleEventsForBackgroundURLSession:completionHandler:);
  v4 = v0[2];
  v5 = v0[3];

  return specialized closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(v4, v5, v1, v2);
}

uint64_t BGTaskSchedulerWrapper.__deallocating_deinit()
{
  outlined destroy of Set<String>(v0 + 32);

  return swift_deallocClassInstance();
}

void type metadata accessor for Mutex<Set<String>>()
{
  if (!lazy cache variable for type metadata for Mutex<Set<String>>)
  {
    type metadata accessor for Set<String>(255, &lazy cache variable for type metadata for Set<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
    v0 = type metadata accessor for Mutex();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Mutex<Set<String>>);
    }
  }
}

uint64_t _s7SwiftUI22BackgroundTaskProtocolPAAE12currentTasksSayAA0cD5EntryVyxGGyFZAA010URLSessioncD0V_Ttg5()
{
  v0 = MEMORY[0x1E69E7CA8];
  type metadata accessor for Set<String>(0, &lazy cache variable for type metadata for TaskActionsContainer<(), ()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for TaskActionsContainer);
  static Update.ensure<A>(_:)();
  if (*(v22 + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(0x69737365534C5255, 0xEA00000000006E6FLL), (v2 & 1) != 0) && (v3 = *(*(v22 + 56) + 8 * v1), , , (v4 = *(v3 + 16)) != 0))
  {
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v21;
    v6 = v3 + 32;
    do
    {
      outlined init with copy of TaskActionsContainer<String, ()>.ContainerEntry(v6, v18, &lazy cache variable for type metadata for TaskActionsContainer<(), ()>.ContainerEntry, v0 + 8);
      v15[0] = v18[0];
      v15[1] = v18[1];
      v16 = v19;
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v15, v17);
      type metadata accessor for BackgroundTaskProtocol();
      swift_dynamicCast();
      v7 = v20;
      v8 = v14;
      v21 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        v13 = v20;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v8 = v14;
        v7 = v13;
        v5 = v21;
      }

      *(v5 + 16) = v10 + 1;
      v11 = v5 + 32 * v10;
      *(v11 + 32) = v8;
      *(v11 + 48) = v7;
      v6 += 56;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t _s7SwiftUI22BackgroundTaskProtocolPAAE12currentTasksSayAA0cD5EntryVyxGGyFZAA022UnidentifiedURLSessioncD0V_Ttg5()
{
  type metadata accessor for Set<String>(0, &lazy cache variable for type metadata for TaskActionsContainer<String, ()>, MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA8] + 8, type metadata accessor for TaskActionsContainer);
  static Update.ensure<A>(_:)();
  if (*(v22 + 16) && (v0 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x800000018CD554F0), (v1 & 1) != 0) && (v2 = *(*(v22 + 56) + 8 * v0), , , (v3 = *(v2 + 16)) != 0))
  {
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v21;
    v5 = v2 + 32;
    v6 = MEMORY[0x1E69E6158];
    do
    {
      outlined init with copy of TaskActionsContainer<String, ()>.ContainerEntry(v5, v18, &lazy cache variable for type metadata for TaskActionsContainer<String, ()>.ContainerEntry, v6);
      v15[0] = v18[0];
      v15[1] = v18[1];
      v16 = v19;
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v15, v17);
      type metadata accessor for BackgroundTaskProtocol();
      swift_dynamicCast();
      v7 = v20;
      v8 = v14;
      v21 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        v13 = v20;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v8 = v14;
        v7 = v13;
        v4 = v21;
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 32 * v10;
      *(v11 + 32) = v8;
      *(v11 + 48) = v7;
      v5 += 56;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t _s7SwiftUI22BackgroundTaskProtocolPAAE12currentTasksSayAA0cD5EntryVyxGGyFZAA010AppRefreshcD0V_Ttg5()
{
  v0 = MEMORY[0x1E69E7CA8];
  type metadata accessor for Set<String>(0, &lazy cache variable for type metadata for TaskActionsContainer<(), ()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for TaskActionsContainer);
  static Update.ensure<A>(_:)();
  if (*(v22 + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(0x6572666552707041, 0xEA00000000006873), (v2 & 1) != 0) && (v3 = *(*(v22 + 56) + 8 * v1), , , (v4 = *(v3 + 16)) != 0))
  {
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v21;
    v6 = v3 + 32;
    do
    {
      outlined init with copy of TaskActionsContainer<String, ()>.ContainerEntry(v6, v18, &lazy cache variable for type metadata for TaskActionsContainer<(), ()>.ContainerEntry, v0 + 8);
      v15[0] = v18[0];
      v15[1] = v18[1];
      v16 = v19;
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v15, v17);
      type metadata accessor for BackgroundTaskProtocol();
      swift_dynamicCast();
      v7 = v20;
      v21 = v5;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v9 >= v8 >> 1)
      {
        v12 = v20;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v5 = v21;
      }

      *(v5 + 16) = v9 + 1;
      v10 = v5 + 32 * v9;
      *(v10 + 32) = v13;
      *(v10 + 40) = v14;
      *(v10 + 48) = v7;
      v6 += 56;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t specialized closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  type metadata accessor for TaskPriority?(0);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  type metadata accessor for TaskPriority?(0);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

uint64_t specialized closure #1 in static BackgroundTaskProtocol.runTasks(actions:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;
  v6[5] = v4;
  v6[6] = v3;

  v7 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for specialized closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), v6);
  v0[6] = v7;
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = specialized closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  v9 = MEMORY[0x1E69E73E0];
  v10 = MEMORY[0x1E69E7410];
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA20](v0 + 8, v7, v11, v9, v10);
}

{

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = v4;
  v8[6] = v3;
  v8[7] = v6;
  v8[8] = v5;

  v9 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for specialized closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), v8);
  v0[8] = v9;
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = specialized closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  v11 = MEMORY[0x1E69E73E0];
  v12 = MEMORY[0x1E69E7410];
  v13 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA20](v0 + 10, v9, v13, v11, v12);
}

{

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;
  v6[5] = v4;
  v6[6] = v3;

  v7 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for specialized closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), v6);
  v0[6] = v7;
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = specialized closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  v9 = MEMORY[0x1E69E73E0];
  v10 = MEMORY[0x1E69E7410];
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA20](v0 + 8, v7, v11, v9, v10);
}

{

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  type metadata accessor for TaskPriority?(0);
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

uint64_t specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  type metadata accessor for TaskPriority?(0);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  type metadata accessor for TaskGroup<()>.Iterator(0, &lazy cache variable for type metadata for TaskGroup<()>.Iterator, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E8590]);
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  type metadata accessor for TaskPriority?(0);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  type metadata accessor for TaskGroup<()>.Iterator(0, &lazy cache variable for type metadata for TaskGroup<()>.Iterator, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E8590]);
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

uint64_t specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 56);
    do
    {
      v6 = *(v0 + 88);
      v5 = *(v0 + 96);
      v7 = *(v3 - 3);
      v8 = *v3;
      v26 = *(v3 - 1);

      if (v7(v6, v5))
      {
        v25 = v2;
        v10 = *(v0 + 104);
        v9 = *(v0 + 112);
        v11 = type metadata accessor for TaskPriority();
        v12 = *(v11 - 8);
        (*(v12 + 56))(v9, 1, 1, v11);
        v13 = swift_allocObject();
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        *(v13 + 32) = v7;
        *(v13 + 40) = v26;
        *(v13 + 56) = v8;
        outlined init with copy of TaskPriority?(v9, v10);
        LODWORD(v10) = (*(v12 + 48))(v10, 1, v11);

        v14 = *(v0 + 104);
        if (v10 == 1)
        {
          outlined destroy of TaskPriority?(*(v0 + 104));
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v12 + 8))(v14, v11);
        }

        v2 = v25;
        if (*(v13 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = dispatch thunk of Actor.unownedExecutor.getter();
          v17 = v16;
          swift_unknownObjectRelease();
        }

        else
        {
          v15 = 0;
          v17 = 0;
        }

        v18 = **(v0 + 72);
        v19 = swift_allocObject();
        *(v19 + 16) = &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
        *(v19 + 24) = v13;
        v20 = v17 | v15;
        if (v17 | v15)
        {
          v20 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v15;
          *(v0 + 40) = v17;
        }

        v4 = *(v0 + 112);
        *(v0 + 48) = 1;
        *(v0 + 56) = v20;
        *(v0 + 64) = v18;
        swift_task_create();

        outlined destroy of TaskPriority?(v4);
      }

      v3 += 4;
      --v2;
    }

    while (v2);
  }

  TaskGroup.makeAsyncIterator()();
  v21 = lazy protocol witness table accessor for type TaskGroup<()>.Iterator and conformance TaskGroup<A>.Iterator();
  v22 = swift_task_alloc();
  *(v0 + 144) = v22;
  *v22 = v0;
  v22[1] = specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  v23 = *(v0 + 120);

  return MEMORY[0x1EEE6D8C8](v0 + 152, v23, v21);
}

{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[16];
    v3 = v2[17];
    v5 = v2[15];

    (*(v4 + 8))(v3, v5);
    v6 = specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  }

  else
  {
    v6 = specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  if (*(v0 + 152))
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = lazy protocol witness table accessor for type TaskGroup<()>.Iterator and conformance TaskGroup<A>.Iterator();
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *v4 = v0;
    v4[1] = specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
    v5 = *(v0 + 120);

    return MEMORY[0x1EEE6D8C8](v0 + 152, v5, v3);
  }
}

{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 56);
    do
    {
      v6 = *(v0 + 88);
      v5 = *(v0 + 96);
      v7 = *(v3 - 3);
      v8 = *v3;
      v28 = *(v3 - 1);

      if (v7(v6, v5))
      {
        v27 = v2;
        v10 = *(v0 + 120);
        v9 = *(v0 + 128);
        v25 = *(v0 + 112);
        v26 = *(v0 + 104);
        v11 = type metadata accessor for TaskPriority();
        v12 = *(v11 - 8);
        (*(v12 + 56))(v9, 1, 1, v11);
        v13 = swift_allocObject();
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        *(v13 + 32) = v7;
        *(v13 + 40) = v28;
        *(v13 + 56) = v8;
        *(v13 + 64) = v26;
        *(v13 + 72) = v25;
        outlined init with copy of TaskPriority?(v9, v10);
        LODWORD(v9) = (*(v12 + 48))(v10, 1, v11);

        v14 = *(v0 + 120);
        if (v9 == 1)
        {
          outlined destroy of TaskPriority?(*(v0 + 120));
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v12 + 8))(v14, v11);
        }

        if (*(v13 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = dispatch thunk of Actor.unownedExecutor.getter();
          v17 = v16;
          swift_unknownObjectRelease();
        }

        else
        {
          v15 = 0;
          v17 = 0;
        }

        v18 = **(v0 + 72);
        v19 = swift_allocObject();
        *(v19 + 16) = &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
        *(v19 + 24) = v13;
        v20 = v17 | v15;
        if (v17 | v15)
        {
          v20 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v15;
          *(v0 + 40) = v17;
        }

        v4 = *(v0 + 128);
        *(v0 + 48) = 1;
        *(v0 + 56) = v20;
        *(v0 + 64) = v18;
        swift_task_create();

        outlined destroy of TaskPriority?(v4);
        v2 = v27;
      }

      v3 += 4;
      --v2;
    }

    while (v2);
  }

  TaskGroup.makeAsyncIterator()();
  v21 = lazy protocol witness table accessor for type TaskGroup<()>.Iterator and conformance TaskGroup<A>.Iterator();
  v22 = swift_task_alloc();
  *(v0 + 160) = v22;
  *v22 = v0;
  v22[1] = specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  v23 = *(v0 + 136);

  return MEMORY[0x1EEE6D8C8](v0 + 168, v23, v21);
}

{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[18];
    v3 = v2[19];
    v5 = v2[17];

    (*(v4 + 8))(v3, v5);
    v6 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  }

  else
  {
    v6 = specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  if (*(v0 + 168))
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = lazy protocol witness table accessor for type TaskGroup<()>.Iterator and conformance TaskGroup<A>.Iterator();
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    v4[1] = specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
    v5 = *(v0 + 136);

    return MEMORY[0x1EEE6D8C8](v0 + 168, v5, v3);
  }
}

{
  v1 = v0[10];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[12];
    v4 = (v1 + 56);
    v29 = v3;
    while (1)
    {
      if (v3)
      {
        v6 = *(v4 - 3);
        v7 = *(v4 - 1);
        v32 = *v4;
        v31 = v7;
        v8 = v6 == v0[11] && v0[12] == v7;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

LABEL_4:
      v4 += 4;
      if (!--v2)
      {
        goto LABEL_18;
      }
    }

    v10 = v0[13];
    v9 = v0[14];
    v11 = type metadata accessor for TaskPriority();
    v12 = *(v11 - 8);
    (*(v12 + 56))(v9, 1, 1, v11);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = (v13 + 16);
    *(v13 + 24) = 0;
    *(v13 + 32) = v6;
    *(v13 + 40) = v31;
    *(v13 + 56) = v32;
    outlined init with copy of TaskPriority?(v9, v10);
    v30 = v12;
    v15 = v12;
    v0 = v28;
    LODWORD(v9) = (*(v15 + 48))(v10, 1, v11);
    swift_bridgeObjectRetain_n();
    swift_retain_n();

    v16 = *(v28 + 104);
    if (v9 == 1)
    {
      outlined destroy of TaskPriority?(*(v28 + 104));
      if (!*v14)
      {
LABEL_13:
        v17 = 0;
        v18 = 0;
LABEL_16:
        v20 = **(v28 + 72);
        v21 = swift_allocObject();
        *(v21 + 16) = &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
        *(v21 + 24) = v13;
        v22 = (v18 | v17);
        if (v18 | v17)
        {
          v22 = v27;
          *v27 = 0;
          v27[1] = 0;
          *(v28 + 32) = v17;
          *(v28 + 40) = v18;
        }

        v5 = *(v28 + 112);
        *(v28 + 48) = 1;
        *(v28 + 56) = v22;
        *(v28 + 64) = v20;
        swift_task_create();

        outlined destroy of TaskPriority?(v5);
        v3 = v29;
        goto LABEL_4;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v30 + 8))(v16, v11);
      if (!*v14)
      {
        goto LABEL_13;
      }
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v19;
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

LABEL_18:
  TaskGroup.makeAsyncIterator()();
  v23 = lazy protocol witness table accessor for type TaskGroup<()>.Iterator and conformance TaskGroup<A>.Iterator();
  v24 = swift_task_alloc();
  v0[18] = v24;
  *v24 = v0;
  v24[1] = specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  v25 = v0[15];

  return MEMORY[0x1EEE6D8C8](v0 + 19, v25, v23);
}

{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[16];
    v3 = v2[17];
    v5 = v2[15];

    (*(v4 + 8))(v3, v5);
    v6 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  }

  else
  {
    v6 = specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  if (*(v0 + 152))
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = lazy protocol witness table accessor for type TaskGroup<()>.Iterator and conformance TaskGroup<A>.Iterator();
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *v4 = v0;
    v4[1] = specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
    v5 = *(v0 + 120);

    return MEMORY[0x1EEE6D8C8](v0 + 152, v5, v3);
  }
}

uint64_t specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  type metadata accessor for TaskPriority?(0);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  type metadata accessor for TaskGroup<()>.Iterator(0, &lazy cache variable for type metadata for TaskGroup<()>.Iterator, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E8590]);
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

uint64_t partial apply for closure #1 in closure #2 in BGTaskSchedulerWrapper.observeTask(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #2 in BGTaskSchedulerWrapper.observeTask(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TaskPriority?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[4] = a1;
  v5[5] = a4;
  v6 = a5[1];
  v5[2] = *a5;
  v5[3] = v6;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

uint64_t specialized closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 2;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = specialized closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  v4 = v0[4];
  v5 = MEMORY[0x1E69E7CA8] + 8;
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v4, v5, v6, 0, 0, &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), v2, v7);
}

{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  v2[2] = v1;
  v2[3] = v0 + 2;
  v2[4] = v0 + 4;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = specialized closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  v4 = v0[6];
  v5 = MEMORY[0x1E69E7CA8] + 8;
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v4, v5, v6, 0, 0, &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), v2, v7);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 2;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = specialized closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  v4 = v0[4];
  v5 = MEMORY[0x1E69E7CA8] + 8;
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v4, v5, v6, 0, 0, &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), v2, v7);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(a1, a2, a3, v8, v9);
}

{
  v8 = *a4;
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(a1, a2, a3, v8, v9);
}

uint64_t specialized closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(a4 + 16) + **(a4 + 16));
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = specialized closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);

  return v8(a1);
}

{
  v8 = (*(a4 + 16) + **(a4 + 16));
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = specialized closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);

  return v8(a1);
}

uint64_t specialized closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)()
{

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

{

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

{
  return (*(v0 + 8))();
}

{

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

uint64_t specialized closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v6[6] = a1;
  v6[7] = a4;
  v7 = a5[1];
  v8 = *a6;
  v9 = a6[1];
  v6[2] = *a5;
  v6[3] = v7;
  v6[4] = v8;
  v6[5] = v9;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

uint64_t specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a4;
  v10 = a4[1];
  v11 = *a5;
  v12 = a5[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(a1, a2, a3, v9, v10, v11, v12);
}

uint64_t specialized closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *(a4 + 16);
  v8 = a5[1];
  v5[2] = *a5;
  v5[3] = v8;
  v11 = (v7 + *v7);
  v9 = swift_task_alloc();
  v5[4] = v9;
  *v9 = v5;
  v9[1] = specialized closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);

  return (v11)(a1, v5 + 2);
}

uint64_t specialized closure #1 in static BackgroundTaskProtocol.currentTasks()@<X0>(uint64_t *a1@<X8>)
{
  return specialized closure #1 in static BackgroundTaskProtocol.currentTasks()(&lazy cache variable for type metadata for TaskActionsContainer<String, ()>.Key, MEMORY[0x1E69E6158], &lazy protocol witness table cache variable for type TaskActionsContainer<String, ()>.Key and conformance TaskActionsContainer<A, B>.Key, _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say7SwiftUI20TaskActionsContainerV0G5EntryVySSyt_GGTt0g5Tf4g_n, a1);
}

{
  return sub_18C0EE274(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t specialized closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  *(v5 + 32) = a1;
  *(v5 + 40) = a4;
  *(v5 + 16) = *a5;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

uint64_t specialized closure #1 in static BackgroundTaskProtocol.currentTasks()@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  if (static AppGraph.shared)
  {
    type metadata accessor for Set<String>(0, a1, a2, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for TaskActionsContainer.Key);
    lazy protocol witness table accessor for type TaskActionsContainer<String, ()>.Key and conformance TaskActionsContainer<A, B>.Key(a3, a1, a2);

    GraphHost.preferenceValue<A>(_:)();

    result = v10;
  }

  else
  {
    result = a4(MEMORY[0x1E69E7CC0]);
  }

  *a5 = result;
  return result;
}

uint64_t specialized static BGTaskSchedulerWrapper.performAction(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  type metadata accessor for TaskPriority?(0);
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized static BGTaskSchedulerWrapper.performAction(for:with:), 0, 0);
}

uint64_t specialized static BGTaskSchedulerWrapper.performAction(for:with:)()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v6[5] = v3;

  v7 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in static BGTaskSchedulerWrapper.performAction(for:with:), v6);
  v0[12] = v7;
  v0[6] = partial apply for closure #2 in static BGTaskSchedulerWrapper.performAction(for:with:);
  v0[7] = v7;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed () -> ();
  v0[5] = &block_descriptor_23_0;
  v8 = _Block_copy(v0 + 2);

  [v2 setExpirationHandler_];
  _Block_release(v8);
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = specialized static BGTaskSchedulerWrapper.performAction(for:with:);
  v10 = MEMORY[0x1E69E73E0];
  v11 = MEMORY[0x1E69E7410];
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA20](v0 + 14, v7, v12, v10, v11);
}

{

  return MEMORY[0x1EEE6DFA0](specialized static BGTaskSchedulerWrapper.performAction(for:with:), 0, 0);
}

{
  [*(v0 + 80) setTaskCompletedWithSuccess_];

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in static BGTaskSchedulerWrapper.performAction(for:with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in static BGTaskSchedulerWrapper.performAction(for:with:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for specialized closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return specialized closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(a1, v4, v5, v6, (v1 + 40));
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return specialized closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(a1, v4, v5, v6, v1 + 5, v1 + 7);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return specialized closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(a1, v4, v5, v6, v1 + 5);
}

uint64_t partial apply for specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(a1, a2, v6, v7);
}

{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(a1, a2, v6, v7, v8);
}

{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return specialized closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(a1, a2, v6, v7);
}

uint64_t partial apply for specialized closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return specialized closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(a1, v4, v5, v1 + 32);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return specialized closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(a1, v4, v5, (v1 + 4), v1 + 8);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return specialized closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(a1, v4, v5, v1 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRScSy7SwiftUI22TextEditorModificationVG_Tg5(a1, v4);
}

unint64_t lazy protocol witness table accessor for type TaskGroup<()>.Iterator and conformance TaskGroup<A>.Iterator()
{
  result = lazy protocol witness table cache variable for type TaskGroup<()>.Iterator and conformance TaskGroup<A>.Iterator;
  if (!lazy protocol witness table cache variable for type TaskGroup<()>.Iterator and conformance TaskGroup<A>.Iterator)
  {
    type metadata accessor for TaskGroup<()>.Iterator(255, &lazy cache variable for type metadata for TaskGroup<()>.Iterator, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E8590]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskGroup<()>.Iterator and conformance TaskGroup<A>.Iterator);
  }

  return result;
}

uint64_t outlined init with copy of TaskActionsContainer<String, ()>.ContainerEntry(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for Set<String>(0, a3, a4, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for TaskActionsContainer.ContainerEntry);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t type metadata accessor for BackgroundTaskProtocol()
{
  result = lazy cache variable for type metadata for BackgroundTaskProtocol;
  if (!lazy cache variable for type metadata for BackgroundTaskProtocol)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for BackgroundTaskProtocol);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TaskActionsContainer<String, ()>.Key and conformance TaskActionsContainer<A, B>.Key(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Set<String>(255, a2, a3, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for TaskActionsContainer.Key);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t outlined destroy of Set<String>(uint64_t a1)
{
  type metadata accessor for Set<String>(0, &lazy cache variable for type metadata for Set<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRScSy7SwiftUI22TextEditorModificationVG_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRScSy7SwiftUI22TextEditorModificationVG_Tg5(a1, v4);
}

void type metadata accessor for TaskGroup<()>.Iterator(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for Set<String>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t objectdestroy_35Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 40));

  return swift_deallocObject();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRyt_Tg5TA_103(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRScSy7SwiftUI22TextEditorModificationVG_Tg5(a1, v4);
}

uint64_t specialized InputAccessoryHost.setupSizeObserver()()
{
  UIHostingViewBase.viewGraph.getter();

  static _ProposedSize.unspecified.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  type metadata accessor for InputAccessoryHost<InputAccessoryBar>(0, &lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>, lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer, MEMORY[0x1E697FA70], MEMORY[0x1E6980718]);
  ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
  swift_endAccess();
}

id InputAccessoryHost.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InputAccessoryHost();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id InputAccessoryHost.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InputAccessoryHost();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double InputAccessoryBar.body.getter@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:

      v6 = a1;
      if (!v5)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_7:
  __CocoaSet.count.getter();
LABEL_8:
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  result = *&v10;
  *(a2 + 64) = v10;
  return result;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance UIKitToolbarAdaptor()
{
  v0 = [objc_allocWithZone(type metadata accessor for UIKitToolbar()) init];
  LODWORD(v1) = 1112014848;
  [v0 setContentHuggingPriority:0 forAxis:v1];
  return v0;
}

void protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance UIKitToolbarAdaptor(void *a1)
{
  type metadata accessor for UIBarButtonItem();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a1 setItems_];
}

void specialized closure #1 in InputAccessoryHost.setupSizeObserver()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong invalidateIntrinsicContentSize];
    v2 = [v1 superview];
    [v2 invalidateIntrinsicContentSize];
  }
}

void type metadata accessor for InputAccessoryHost<InputAccessoryBar>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t specialized InputAccessoryGenerator.callAsFunction()()
{
  result = *(v0 + 24);
  if (!result)
  {
    v2 = [objc_allocWithZone(type metadata accessor for InputAccessoryGenerator.RootUIView()) initWithFrame_];
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
    v3 = *(v0 + 24);
    *(v0 + 24) = v2;
    v4 = v2;

    InputAccessoryGenerator.updateHostIfNeeded()();
    result = *(v0 + 24);
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<UIKitToolbarAdaptor?>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<UIKitToolbarAdaptor?>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<UIKitToolbarAdaptor?>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<VStack<UIKitToolbarAdaptor?>, _FrameLayout>();
    lazy protocol witness table accessor for type VStack<UIKitToolbarAdaptor?> and conformance VStack<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<UIKitToolbarAdaptor?>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<VStack<UIKitToolbarAdaptor?>, _FrameLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<UIKitToolbarAdaptor?>, _FrameLayout>)
  {
    type metadata accessor for VStack<UIKitToolbarAdaptor?>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<VStack<UIKitToolbarAdaptor?>, _FrameLayout>);
    }
  }
}

void type metadata accessor for VStack<UIKitToolbarAdaptor?>()
{
  if (!lazy cache variable for type metadata for VStack<UIKitToolbarAdaptor?>)
  {
    type metadata accessor for UIKitToolbarAdaptor?();
    lazy protocol witness table accessor for type UIKitToolbarAdaptor? and conformance <A> A?();
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<UIKitToolbarAdaptor?>);
    }
  }
}

void type metadata accessor for UIKitToolbarAdaptor?()
{
  if (!lazy cache variable for type metadata for UIKitToolbarAdaptor?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIKitToolbarAdaptor?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UIKitToolbarAdaptor? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UIKitToolbarAdaptor? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UIKitToolbarAdaptor? and conformance <A> A?)
  {
    type metadata accessor for UIKitToolbarAdaptor?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitToolbarAdaptor? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VStack<UIKitToolbarAdaptor?> and conformance VStack<A>()
{
  result = lazy protocol witness table cache variable for type VStack<UIKitToolbarAdaptor?> and conformance VStack<A>;
  if (!lazy protocol witness table cache variable for type VStack<UIKitToolbarAdaptor?> and conformance VStack<A>)
  {
    type metadata accessor for VStack<UIKitToolbarAdaptor?>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VStack<UIKitToolbarAdaptor?> and conformance VStack<A>);
  }

  return result;
}

uint64_t BridgedSceneCoordinator.register<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v20 - v7;
  v11 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a2, a3, v9, v10);
  result = specialized Set._Variant.insert(_:)(v20, v11);
  if (result)
  {
    (*(a3 + 24))(a2, a3);
    static UIHostingSceneDelegate.namespace.getter();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20[2] = AssociatedTypeWitness;
    v20[3] = AssociatedConformanceWitness;
    v20[4] = v8;
    v20[5] = v14;
    v20[6] = v16;
    v21 = v18;
    static Update.ensure<A>(_:)();
    outlined consume of SceneList.Namespace(v14, v16, v18);
    return (*(v6 + 8))(v8, AssociatedTypeWitness);
  }

  return result;
}

void closure #1 in BridgedSceneCoordinator.connectAppGraph<A>(content:namespace:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (static AppGraph.shared)
  {

    AppGraph.append<A>(content:namespace:)(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    type metadata accessor for AppGraph();
    outlined copy of SceneList.Namespace(a2, a3, a4);
    v12 = specialized AppGraph.__allocating_init<A>(content:namespace:)(a1, a2, a3, a4, a5, a6);
    if ((*(v12 + 234) & 1) == 0)
    {
      if (AppGraph.traceLaunch.getter())
      {
        type metadata accessor for AGGraphRef(0);
        static AGGraphRef.startTracing(options:)();
      }

      else if ((AppGraph.launchProfileOptions.getter() & 2) != 0)
      {
        AGGraphStartProfiling();
      }
    }

    GraphHost.instantiate()();
    if (static AppGraph.shared)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      static AppGraph.shared = v12;
      v13 = objc_allocWithZone(type metadata accessor for AppDelegate());

      v14 = [v13 init];
      v15 = static AppDelegate.bridgedAppDelegate;
      static AppDelegate.bridgedAppDelegate = v14;
    }
  }
}

uint64_t View._prefersDefaultFocus(_:in:)(char a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v5 = a2;
  v6 = 0;
  return MEMORY[0x18D00A570](v4, a3, &type metadata for _DefaultFocusModifier);
}

double static _DefaultFocusModifier._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(__int128 *__return_ptr)@<X2>, void *a4@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v6 = a2[1];
  v25 = a2[2];
  v26 = v5;
  v7 = a2[3];
  v27 = a2[4];
  v8 = a2[1];
  v23 = *a2;
  v24 = v8;
  v19 = v25;
  v20 = v7;
  v21 = a2[4];
  v9 = *a1;
  v28 = *(a2 + 20);
  v22 = *(a2 + 20);
  v17 = v23;
  v18 = v6;
  a3(&v16);
  *&v17 = v26;
  DWORD2(v17) = DWORD2(v26);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    type metadata accessor for DefaultFocusViewResponder(0);
    v10 = swift_allocObject();
    *(v10 + 216) = 0;
    outlined init with copy of _ViewInputs(&v23, &v17);
    ViewTransform.init()();
    *(v10 + 272) = 0;
    *(v10 + 280) = 0;
    *(v10 + 288) = 0;
    *(v10 + 296) = 1;
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v17 = v23;
    v18 = v24;
    v11 = DefaultLayoutViewResponder.init(inputs:)();
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v12 = HIDWORD(v26);
    v22 = v28;
    v17 = v23;
    v18 = v24;
    v13 = _ViewInputs.animatedPosition()();
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v17 = v23;
    v18 = v24;
    swift_beginAccess();
    v14 = CachedEnvironment.animatedSize(for:)();
    swift_endAccess();
    v17 = v16;

    LODWORD(v10) = _ViewOutputs.viewResponders()();

    *&v17 = v11;
    *(&v17 + 1) = __PAIR64__(v12, v9);
    *&v18 = __PAIR64__(v14, v13);
    DWORD2(v18) = v10;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    _sSay7SwiftUI13ViewResponderCGMaTm_3(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type DefaultFocusViewResponderFilter and conformance DefaultFocusViewResponderFilter();
    Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v17) = 0;
    PreferencesOutputs.subscript.setter();
  }

  *a4 = v16;
  result = *(&v16 + 1);
  a4[1] = *(&v16 + 1);
  return result;
}

uint64_t DefaultFocusViewResponder.__allocating_init(inputs:)()
{
  v0 = swift_allocObject();
  *(v0 + 216) = 0;
  ViewTransform.init()();
  *(v0 + 272) = 0;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 296) = 1;
  return DefaultLayoutViewResponder.init(inputs:)();
}

uint64_t DefaultFocusViewResponderFilter.updateValue()()
{
  v1 = v0;
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;
  v6 = *(Value + 8);
  v7 = *(Value + 16);
  v8 = AGGraphGetValue();
  v10 = v9;
  v11 = *v8;
  v12 = *(v8 + 8);
  v25 = *(v8 + 16);
  v26 = *(v8 + 32);
  type metadata accessor for CGPoint(0);

  v13 = AGGraphGetValue();
  v15 = v14;
  v16 = *v13;
  v17 = v13[1];
  AGGraphGetValue();
  if ((v4 & 1) != 0 || (v10 & 1) != 0 || (v15 & 1) != 0 || (v18 & 1) != 0 || (_sSay7SwiftUI13ViewResponderCGMaTm_3(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]), !AGGraphGetOutputValue()))
  {

    ViewTransform.appendPosition(_:)(__PAIR128__(v17, v16));
    v20 = *v1;
    *(v20 + 224) = v11;
    *(v20 + 232) = v12;
    *(v20 + 240) = v25;
    *(v20 + 256) = v26;

    *(v20 + 272) = MEMORY[0x18D00B390](v21);
    *(v20 + 280) = v22;
    *(v20 + 216) = v5;
    *(v20 + 288) = v6;
    *(v20 + 296) = v7;
    _sSay7SwiftUI13ViewResponderCGMaTm_3(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    swift_retain_n();
    AGGraphGetValue();
    if (v23)
    {

      MultiViewResponder.children.setter();
    }

    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_18CD69590;
    *(v24 + 32) = v20;
    AGGraphSetOutputValue();
  }

  else
  {
  }
}

uint64_t DefaultFocusViewResponder.__allocating_init(inputs:viewSubgraph:)()
{
  v0 = swift_allocObject();
  *(v0 + 216) = 0;
  ViewTransform.init()();
  *(v0 + 272) = 0;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 296) = 1;
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)();
}

uint64_t DefaultFocusViewResponder.__ivar_destroyer()
{
}

uint64_t DefaultFocusViewResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  return swift_deallocClassInstance();
}

double static FocusNamespaceModifier._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a2[3];
  v39 = a2[2];
  v40 = v7;
  v41 = a2[4];
  v42 = *(a2 + 20);
  v8 = a2[1];
  v37 = *a2;
  v38 = v8;
  v9 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  v33 = v39;
  v34 = v40;
  v35 = v41;
  v36 = v42;
  v31 = v37;
  v32 = v38;
  if (v9)
  {
    swift_beginAccess();
    *&v27[0] = __PAIR64__(*(v38 + 16), v6);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    outlined init with copy of _ViewInputs(&v37, v29);
    lazy protocol witness table accessor for type FocusNamespaceModifier.ChildEnvironment and conformance FocusNamespaceModifier.ChildEnvironment();
    Attribute.init<A>(body:value:flags:update:)();
    _GraphInputs.environment.setter();
  }

  else
  {
    outlined init with copy of _ViewInputs(&v37, v29);
  }

  v27[2] = v33;
  v27[3] = v34;
  v27[4] = v35;
  v28 = v36;
  v27[0] = v31;
  v27[1] = v32;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v21 = v31;
  v22 = v32;
  v10 = outlined init with copy of _ViewInputs(v27, v29);
  a3(&v19, v10, &v21);
  v29[2] = v23;
  v29[3] = v24;
  v29[4] = v25;
  v30 = v26;
  v29[0] = v21;
  v29[1] = v22;
  outlined destroy of _ViewInputs(v29);
  if (v9)
  {
    v11 = v19;
    v12 = LODWORD(v20);
    v13 = HIDWORD(v20);
    type metadata accessor for FocusNamespaceViewResponder(0);
    v14 = swift_allocObject();
    *(v14 + 216) = 0;
    *(v14 + 224) = 1;
    *(v14 + 228) = 0;
    *(v14 + 232) = 1;
    *(v14 + 236) = v6;
    outlined init with copy of _ViewInputs(&v37, &v21);
    *(v14 + 240) = _ViewOutputs.viewResponders()();
    v23 = v39;
    v24 = v40;
    v25 = v41;
    v26 = v42;
    v21 = v37;
    v22 = v38;
    v15 = DefaultLayoutViewResponder.init(inputs:)();
    *&v21 = v11;
    *(&v21 + 1) = __PAIR64__(v13, v12);

    v16 = _ViewOutputs.viewResponders()();

    *&v21 = __PAIR64__(v16, v6);
    *(&v21 + 1) = v15;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    _sSay7SwiftUI13ViewResponderCGMaTm_3(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type FocusNamespaceFilter and conformance FocusNamespaceFilter();

    v17 = Attribute.init<A>(body:value:flags:update:)();

    *(v15 + 228) = v17;
    *(v15 + 232) = 0;
    LOBYTE(v21) = 0;
    PreferencesOutputs.subscript.setter();
  }

  v23 = v33;
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v21 = v31;
  v22 = v32;
  outlined destroy of _ViewInputs(&v21);
  *a4 = v19;
  result = v20;
  a4[1] = v20;
  return result;
}

uint64_t FocusNamespaceModifier.ChildEnvironment.value.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;

  swift_retain_n();
  v4 = *AGGraphGetValue();
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusScopesKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<FocusScopesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusScopesKey>);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v5 = v9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusScopesKey>);
  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void *closure #1 in closure #1 in FocusNamespaceViewResponder.updateNamespace()(uint64_t a1)
{
  result = AGGraphGetValue();
  *(a1 + 216) = *result;
  *(a1 + 224) = 0;
  return result;
}

uint64_t FocusNamespaceViewResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  return swift_deallocClassInstance();
}

uint64_t FocusNamespaceFilter.updateValue()()
{
  v1 = *(v0 + 8);
  *(v1 + 216) = *AGGraphGetValue();
  *(v1 + 224) = 0;
  _sSay7SwiftUI13ViewResponderCGMaTm_3(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);

  AGGraphGetValue();
  if (v2)
  {

    MultiViewResponder.children.setter();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_18CD69590;
    *(v4 + 32) = v1;

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t _ResetFocusAction.callAsFunction(in:)(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    FocusBridge.resetFocus(in:)(a1, 0);
  }

  return result;
}

uint64_t EnvironmentValues._resetFocus.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>);
    PropertyList.subscript.getter();
  }

  swift_weakLoadStrong();
  outlined destroy of WeakBox<FocusBridge>(v2);
  swift_weakInit();
}

uint64_t specialized implicit closure #1 in _GraphInputs.focusScopes.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusScopesKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<FocusScopesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusScopesKey>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusScopesKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<FocusScopesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusScopesKey>);

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultFocusViewResponderFilter and conformance DefaultFocusViewResponderFilter()
{
  result = lazy protocol witness table cache variable for type DefaultFocusViewResponderFilter and conformance DefaultFocusViewResponderFilter;
  if (!lazy protocol witness table cache variable for type DefaultFocusViewResponderFilter and conformance DefaultFocusViewResponderFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultFocusViewResponderFilter and conformance DefaultFocusViewResponderFilter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FocusNamespaceFilter and conformance FocusNamespaceFilter()
{
  result = lazy protocol witness table cache variable for type FocusNamespaceFilter and conformance FocusNamespaceFilter;
  if (!lazy protocol witness table cache variable for type FocusNamespaceFilter and conformance FocusNamespaceFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusNamespaceFilter and conformance FocusNamespaceFilter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FocusNamespaceModifier.ChildEnvironment and conformance FocusNamespaceModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type FocusNamespaceModifier.ChildEnvironment and conformance FocusNamespaceModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type FocusNamespaceModifier.ChildEnvironment and conformance FocusNamespaceModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusNamespaceModifier.ChildEnvironment and conformance FocusNamespaceModifier.ChildEnvironment);
  }

  return result;
}

uint64_t Text.init(textProvider:)(void *a1)
{
  type metadata accessor for CLKTextProviderTextStorage();
  v2 = a1;
  CLKTextProviderTextStorage.__allocating_init(_:)();
  v3 = Text.init(anyTextStorage:)();

  return v3;
}

void _ControlWidgetAdaptor.init()()
{
  _StringGuts.grow(_:)(41);
  type metadata accessor for _ControlWidgetAdaptor();
  _typeName(_:qualified:)();

  MEMORY[0x18D00C9B0](0xD000000000000027, 0x800000018CD55730);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t _ControlWidgetAdaptor.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  return (*(v4 + 32))(a2, v7, v3);
}

uint64_t static ControlWidgetConfigurationAdaptor._makeWidgetConfiguration(widget:inputs:)(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v23 = *a2;
  v24 = v2;
  v25[0] = a2[2];
  *(v25 + 12) = *(a2 + 44);
  type metadata accessor for ControlWidgetConfigurationAdaptor();
  if (AGTypeID.isValueType.getter())
  {
    static DynamicPropertyCache.fields(of:)();
    v12 = v23;
    v13 = v24;
    v14[0] = v25[0];
    *(v14 + 12) = *(v25 + 12);
    v17 = v20;
    LOBYTE(v18) = v21;
    DWORD1(v18) = DWORD1(v21);
    outlined init with copy of _WidgetInputs(&v23, &v20);
    type metadata accessor for ControlWidgetConfigurationAdaptor.BodyAccessor();
    swift_getWitnessTable();
    BodyAccessor.makeBody(container:inputs:fields:)();
    outlined consume of DynamicPropertyCache.Fields.Layout();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v15[0] = v12;
    v15[1] = v13;
    v16[0] = v14[0];
    *(v16 + 12) = *(v14 + 12);
    v8 = v12;
    v9 = v13;
    *v10 = v14[0];
    *&v10[12] = *(v14 + 12);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v5 = *(AssociatedConformanceWitness + 32);
    outlined init with copy of _WidgetInputs(v15, &v20);
    v5(v11, &v8, AssociatedTypeWitness, AssociatedConformanceWitness);
    v17 = v8;
    v18 = v9;
    v19[0] = *v10;
    *(v19 + 12) = *&v10[12];
    outlined destroy of _WidgetInputs(&v17);
    v20 = v12;
    v21 = v13;
    v22[0] = v14[0];
    *(v22 + 12) = *(v14 + 12);
    return outlined destroy of _WidgetInputs(&v20);
  }

  else
  {
    _StringGuts.grow(_:)(31);

    v7 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v7);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ControlWidgetConfigurationAdaptor.BodyAccessor.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for ControlWidgetConfigurationAdaptor.BodyAccessor();
    swift_getWitnessTable();
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

uint64_t AutomaticBadgedViewStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  return outlined copy of BadgeLabel?(v3, v2, v4);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<Gro()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredica;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredica)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContex();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleCon();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredica);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContex()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<Grouped)
  {
    type metadata accessor for ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedViewStyleModifier<List, type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, BadgedViewStyleModifier<MultimodalBadgedViewStyle>, EmptyModifier>);
    type metadata accessor for BadgedViewStyleModifier<AutomaticBadgedViewStyle>(255, &lazy cache variable for type metadata for BadgedViewStyleModifier<HiddenBadgedViewStyle>, lazy protocol witness table accessor for type HiddenBadgedViewStyle and conformance HiddenBadgedViewStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<Grouped);
    }
  }
}

void type metadata accessor for ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedViewStyleModifier<List()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedViewSty)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>();
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedViewSty);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>);
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>()
{
  if (!lazy cache variable for type metadata for BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>)
  {
    type metadata accessor for ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for BadgedView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>)
  {
    type metadata accessor for BadgedViewStyleModifier<AutomaticBadgedViewStyle>(255, &lazy cache variable for type metadata for BadgedViewStyleModifier<AutomaticBadgedViewStyle>, lazy protocol witness table accessor for type AutomaticBadgedViewStyle and conformance AutomaticBadgedViewStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AutomaticBadgedViewStyle and conformance AutomaticBadgedViewStyle()
{
  result = lazy protocol witness table cache variable for type AutomaticBadgedViewStyle and conformance AutomaticBadgedViewStyle;
  if (!lazy protocol witness table cache variable for type AutomaticBadgedViewStyle and conformance AutomaticBadgedViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticBadgedViewStyle and conformance AutomaticBadgedViewStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>);
    type metadata accessor for BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>);
    }
  }
}

void type metadata accessor for BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>()
{
  if (!lazy cache variable for type metadata for BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>)
  {
    type metadata accessor for PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>(255, &lazy cache variable for type metadata for PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>, &type metadata for ToolbarPlatformItemListFlags, &protocol witness table for ToolbarPlatformItemListFlags, type metadata accessor for PlatformItemListBasedBadgedViewStyle);
    lazy protocol witness table accessor for type PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags> and conformance PlatformItemListBasedBadgedViewStyle<A>();
    v0 = type metadata accessor for BadgedViewStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags> and conformance PlatformItemListBasedBadgedViewStyle<A>()
{
  result = lazy protocol witness table cache variable for type PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags> and conformance PlatformItemListBasedBadgedViewStyle<A>;
  if (!lazy protocol witness table cache variable for type PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags> and conformance PlatformItemListBasedBadgedViewStyle<A>)
  {
    type metadata accessor for PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>(255, &lazy cache variable for type metadata for PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>, &type metadata for ToolbarPlatformItemListFlags, &protocol witness table for ToolbarPlatformItemListFlags, type metadata accessor for PlatformItemListBasedBadgedViewStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags> and conformance PlatformItemListBasedBadgedViewStyle<A>);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<TabSectionStyleContext>);
    type metadata accessor for BadgedViewStyleModifier<AutomaticBadgedViewStyle>(255, &lazy cache variable for type metadata for BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, lazy protocol witness table accessor for type TraitBasedBadgedViewStyle and conformance TraitBasedBadgedViewStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TraitBasedBadgedViewStyle and conformance TraitBasedBadgedViewStyle()
{
  result = lazy protocol witness table cache variable for type TraitBasedBadgedViewStyle and conformance TraitBasedBadgedViewStyle;
  if (!lazy protocol witness table cache variable for type TraitBasedBadgedViewStyle and conformance TraitBasedBadgedViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraitBasedBadgedViewStyle and conformance TraitBasedBadgedViewStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SectionHeaderStyleContext>);
    type metadata accessor for BadgedViewStyleModifier<AutomaticBadgedViewStyle>(255, &lazy cache variable for type metadata for BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, lazy protocol witness table accessor for type TraitBasedBadgedViewStyle and conformance TraitBasedBadgedViewStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ContainerStyleContext>);
    type metadata accessor for BadgedViewStyleModifier<AutomaticBadgedViewStyle>(255, &lazy cache variable for type metadata for BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, lazy protocol witness table accessor for type TraitBasedBadgedViewStyle and conformance TraitBasedBadgedViewStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, a3);
    type metadata accessor for BadgedViewStyleModifier<AutomaticBadgedViewStyle>(255, &lazy cache variable for type metadata for BadgedViewStyleModifier<ListBadgedViewStyle>, lazy protocol witness table accessor for type ListBadgedViewStyle and conformance ListBadgedViewStyle);
    v4 = type metadata accessor for StaticIf();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ListBadgedViewStyle and conformance ListBadgedViewStyle()
{
  result = lazy protocol witness table cache variable for type ListBadgedViewStyle and conformance ListBadgedViewStyle;
  if (!lazy protocol witness table cache variable for type ListBadgedViewStyle and conformance ListBadgedViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListBadgedViewStyle and conformance ListBadgedViewStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, BadgedViewStyleModifier<MultimodalBadgedViewStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, BadgedViewStyleModifier<MultimodalBadgedViewStyle>, EmptyModifier>)
  {
    type metadata accessor for PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, MEMORY[0x1E6980158], MEMORY[0x1E6980150], MEMORY[0x1E69801E0]);
    type metadata accessor for BadgedViewStyleModifier<AutomaticBadgedViewStyle>(255, &lazy cache variable for type metadata for BadgedViewStyleModifier<MultimodalBadgedViewStyle>, lazy protocol witness table accessor for type MultimodalBadgedViewStyle and conformance MultimodalBadgedViewStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, BadgedViewStyleModifier<MultimodalBadgedViewStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type MultimodalBadgedViewStyle and conformance MultimodalBadgedViewStyle()
{
  result = lazy protocol witness table cache variable for type MultimodalBadgedViewStyle and conformance MultimodalBadgedViewStyle;
  if (!lazy protocol witness table cache variable for type MultimodalBadgedViewStyle and conformance MultimodalBadgedViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalBadgedViewStyle and conformance MultimodalBadgedViewStyle);
  }

  return result;
}

void type metadata accessor for BadgedViewStyleModifier<AutomaticBadgedViewStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for BadgedViewStyleModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type HiddenBadgedViewStyle and conformance HiddenBadgedViewStyle()
{
  result = lazy protocol witness table cache variable for type HiddenBadgedViewStyle and conformance HiddenBadgedViewStyle;
  if (!lazy protocol witness table cache variable for type HiddenBadgedViewStyle and conformance HiddenBadgedViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HiddenBadgedViewStyle and conformance HiddenBadgedViewStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleCon()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormSt;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormSt)
  {
    type metadata accessor for ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedViewStyleModifier<List, type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, BadgedViewStyleModifier<MultimodalBadgedViewStyle>, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedVie( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, Bad,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedViewStyleModifier<List,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>,  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, BadgedViewStyleModifier<MultimodalBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormSt);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedVie(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedVie(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>> and conformance BadgedView<A>()
{
  result = lazy protocol witness table cache variable for type BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>> and conformance BadgedView<A>;
  if (!lazy protocol witness table cache variable for type BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>> and conformance BadgedView<A>)
  {
    type metadata accessor for BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BadgedView<ModifiedContent<BadgeViewStyleConfiguration.Content, BadgedViewStyleModifier<AutomaticBadgedViewStyle>>> and conformance BadgedView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, BadgedViewStyleModifier<PlatformItemListBasedBadgedViewStyle<ToolbarPlatformItemListFlags>>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<TabSectionStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<TabSectionStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SectionHeaderStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SectionHeaderStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SectionHeaderStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ContainerStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ContainerStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ContainerStyleContext>, BadgedViewStyleModifier<TraitBasedBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, BadgedViewStyleModifier<ListBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, BadgedViewStyleModifier<MultimodalBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, BadgedViewStyleModifier<MultimodalBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, BadgedViewStyleModifier<MultimodalBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, BadgedViewStyleModifier<MultimodalBadgedViewStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<ClarityUIInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, BadgedViewStyleModifier<MultimodalBadgedViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for _TraitWritingModifier<ListItemReuseIdentifierTrait>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<ListItemReuseIdentifierTrait>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<ListItemReuseIdentifierTrait>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<ListItemReuseIdentifierTrait> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<ListItemReuseIdentifierTrait> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<ListItemReuseIdentifierTrait> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListItemReuseIdentifierTrait>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<ListItemReuseIdentifierTrait> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t UIKitPopoverBridge.preferencesDidChange(_:)(uint64_t *a1)
{
  v8[0] = *a1;
  v1 = v8[0];
  UIKitPopoverBridge.updateInspectorIfNeeded(_:)(v8);
  v13 = v1;
  PreferenceValues.subscript.getter();
  v8[18] = v1;
  v9 = v11;
  v10 = v12;
  PreferenceValues.subscript.getter();
  v7 = v1;
  PreferenceValues.subscript.getter();
  v3[0] = v5;
  v4 = v6;
  UIKitPopoverBridge.updatePopoverIfNeeded(_:presentationOptionsPreference:backgroundPreference:)(&v9, v8, v3);
  outlined destroy of PopoverPresentation?(v8, &lazy cache variable for type metadata for PreferenceValues.Value<PresentationOptionsPreference>, &type metadata for PresentationOptionsPreference, MEMORY[0x1E697EA38]);
}

void UIKitPopoverBridge.update(environment:)(uint64_t a1)
{
  if (*(a1 + 8))
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScenePhaseKey>, &type metadata for ScenePhaseKey, &protocol witness table for ScenePhaseKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScenePhaseKey>, &type metadata for ScenePhaseKey, &protocol witness table for ScenePhaseKey);

    PropertyList.Tracker.value<A>(_:for:)();

    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    *(v1 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_wasBackgrounded) = 1;
    return;
  }

  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScenePhaseKey>, &type metadata for ScenePhaseKey, &protocol witness table for ScenePhaseKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScenePhaseKey>, &type metadata for ScenePhaseKey, &protocol witness table for ScenePhaseKey);
  PropertyList.subscript.getter();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v1 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_wasBackgrounded) == 1)
  {
    *(v1 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_wasBackgrounded) = 0;
    UIKitPopoverBridge.updateAnchor()();
  }
}

Swift::Void __swiftcall UIKitPopoverBridge.updateAnchor()()
{
  _sSo6CGRectVSgMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v34 - v2;
  v4 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_activePresentation;
  swift_beginAccess();
  outlined init with copy of UIKitPopoverBridge.PresentationKind(v0 + v4, v44);
  if (BYTE8(v45) > 1u)
  {
    if (BYTE8(v45) == 2)
    {
      v17 = *(&v0->isa + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_presentedVC);
      if (v17)
      {
        v18 = [v17 presentationController];
        if (v18)
        {
          v19 = v18;
          v20 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v21 = swift_allocObject();
          *(v21 + 16) = v20;
          *(v21 + 24) = v19;

          v22 = v19;
          onNextMainRunLoop(do:)();

          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    if (!BYTE8(v45))
    {
      outlined destroy of UIKitPopoverBridge.PresentationKind(v44);
    }

    v5 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_lastPopoverPresentation;
    swift_beginAccess();
    outlined init with copy of PopoverPresentation?(v0 + v5, &v36, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation);
    if (!v36)
    {
      outlined destroy of PopoverPresentation?(&v36, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation, MEMORY[0x1E69E6720]);
      return;
    }

    v47 = v40;
    v48 = v41;
    v49 = v42;
    v50 = v43;
    v44[0] = v36;
    v44[1] = v37;
    v45 = v38;
    v46 = v39;
    v6 = *(&v0->isa + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_presentedVC);
    if (v6)
    {
      v7 = v6;
      v8 = [v7 presentationController];
      if (!v8)
      {
        outlined destroy of PopoverPresentation(v44);

        return;
      }

      v9 = v8;
      if (specialized UIKitPopoverBridge.popoverCanPresent(popover:)(v44))
      {
        v35 = 17;
        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        outlined init with copy of PopoverPresentation(v44, &v36);
        v11 = swift_allocObject();
        v12 = v41;
        *(v11 + 88) = v40;
        *(v11 + 104) = v12;
        v13 = v43;
        *(v11 + 120) = v42;
        *(v11 + 136) = v13;
        v14 = v37;
        *(v11 + 24) = v36;
        *(v11 + 40) = v14;
        v15 = v39;
        *(v11 + 56) = v38;
        *(v11 + 16) = v10;
        *(v11 + 72) = v15;
        *(v11 + 152) = v9;

        v16 = v9;
        static Update.enqueueAction(reason:_:)();

        outlined destroy of PopoverPresentation(v44);
LABEL_13:

        return;
      }

      static Log.presentation.getter();
      v23 = type metadata accessor for Logger();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v3, 1, v23) == 1)
      {
        outlined destroy of (key: ViewIdentity, value: InspectorStorage)?(v3, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
      }

      else
      {
        v34[1] = v0;
        v25 = v7;
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v34[0] = v26;
          v29 = v28;
          v30 = swift_slowAlloc();
          *v29 = 138412290;
          *(v29 + 4) = v25;
          *v30 = v6;
          v31 = v30;
          v32 = v25;
          _os_log_impl(&dword_18BD4A000, v34[0], v27, "Dismissing popover for pc %@ due to scrolling out of bounds", v29, 0xCu);
          outlined destroy of SearchEnvironmentStorage.BoundProperties(v31, type metadata accessor for NSObject?);
          MEMORY[0x18D0110E0](v31, -1, -1);
          v33 = v29;
          v26 = v34[0];
          MEMORY[0x18D0110E0](v33, -1, -1);
        }

        (*(v24 + 8))(v3, v23);
      }

      UIKitPopoverBridge.dismissAndReset(viewController:)(v7);
    }

    outlined destroy of PopoverPresentation(v44);
  }
}

uint64_t UIKitPopoverBridge.presenter.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v2 = v0 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_host;
    if (swift_unknownObjectWeakLoadStrong() && (v3 = *(v2 + 8), v4 = swift_getObjectType(), v5 = ViewGraphDelegate.uiViewController.getter(v4, *(*(v3 + 16) + 8)), swift_unknownObjectRelease(), v5))
    {
      return v5;
    }

    else
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v6 = *(v2 + 8);
        ObjectType = swift_getObjectType();
        v8 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v6 + 16) + 8));
        swift_unknownObjectRelease();
        v9 = [v8 _viewControllerForAncestor];

        return v9;
      }
    }
  }

  return result;
}

id UIKitPopoverBridge.popoverPresentationDelegate.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge____lazy_storage___popoverPresentationDelegate;
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge____lazy_storage___popoverPresentationDelegate);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge____lazy_storage___popoverPresentationDelegate);
  }

  else
  {
    v4 = type metadata accessor for PopoverPresentationDelegate();
    v5 = objc_allocWithZone(v4);
    v5[OBJC_IVAR____TtC7SwiftUI27PopoverPresentationDelegate_isLayoutPreventionActive] = 0;
    *&v5[OBJC_IVAR____TtC7SwiftUI27PopoverPresentationDelegate_delegate + 8] = &protocol witness table for UIKitPopoverBridge;
    swift_unknownObjectWeakInit();
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t UIKitPopoverBridge.isParentPresentationFromLikeKindBridge.getter()
{
  v1 = v0 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = ViewGraphDelegate.uiViewController.getter(ObjectType, *(*(v3 + 16) + 8));
    swift_unknownObjectRelease();
    if (v5)
    {
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = *(v6 + direct field offset for PresentationHostingController.presentingBridgeKind);

        return v7 == 1;
      }
    }

    return 0;
  }

  return result;
}

id UIKitPopoverBridge.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_host + 8] = 0;
  swift_unknownObjectWeakInit();
  v2 = &v0[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_overrideArrowDirections];
  *v2 = 0;
  v2[8] = 1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_delayedPopoverPreferences] = 0;
  v3 = &v0[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_activePresentation];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v3[40] = 3;
  *&v0[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_activeInspectorAnchor] = 0;
  v0[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_dismissingReason] = 2;
  v4 = &v0[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_pendingDismissAction];
  *v4 = 0;
  v4[1] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge____lazy_storage___popoverPresentationDelegate] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_presentedVC] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_inspectorSeed] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_anchorSeed] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_popoverSeed] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_backgroundSeed] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_presentationOptionsSeed] = 0;
  v5 = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_lastInspectorValues] = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_lastAnchorValues] = v5;
  v6 = &v0[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_lastPopoverPresentation];
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[5] = 0u;
  v6[6] = 0u;
  v6[7] = 0u;
  v0[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_wasBackgrounded] = 0;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

char *UIKitPopoverBridge.makePresentedHost(_:)()
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
  v2 = objc_allocWithZone(v1);
  v3 = v0;

  v5 = specialized PresentationHostingController.init(rootView:delegate:placement:legacyDrawsBackground:)(v4, v0, &protocol witness table for UIKitPopoverBridge, 7, 1);
  v6 = direct field offset for UIHostingController.host;
  *(*&v5[direct field offset for UIHostingController.host] + *((*MEMORY[0x1E69E7D40] & **&v5[direct field offset for UIHostingController.host]) + 0x1C0) + 8) = &protocol witness table for UIKitPopoverBridge;
  swift_unknownObjectWeakAssign();
  v7 = *&v5[v6];
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();

  return v5;
}

uint64_t UIKitPopoverBridge.reset()()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_activeInspectorAnchor) = 0;

  v2 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_presentedVC;
  v3 = *(v0 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_presentedVC);
  if (v3)
  {
    v4 = *&v3[direct field offset for UIHostingController.host];
    *&v14 = 0;
    BYTE8(v14) = 1;
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
    v5 = v4;
    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();

    v3 = *(v0 + v2);
  }

  *(v0 + v2) = 0;

  v6 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_lastAnchorValues;
  swift_beginAccess();
  v7 = MEMORY[0x1E69E7CC8];
  *(v1 + v6) = MEMORY[0x1E69E7CC8];

  v8 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_lastInspectorValues;
  swift_beginAccess();
  *(v1 + v8) = v7;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_lastPopoverPresentation;
  swift_beginAccess();
  outlined assign with take of PopoverPresentation?(&v14, v1 + v9);
  swift_endAccess();
  *&v16 = 0;
  v14 = 0u;
  v15 = 0u;
  BYTE8(v16) = 3;
  v10 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_activePresentation;
  swift_beginAccess();
  outlined assign with take of UIKitPopoverBridge.PresentationKind(&v14, v1 + v10);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_dismissingReason) = 2;
  v11 = (v1 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_pendingDismissAction);
  v12 = *(v1 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_pendingDismissAction);
  *v11 = 0;
  v11[1] = 0;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v12);
}

uint64_t UIKitPopoverBridge.updateInspectorIfNeeded(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  *&v49 = *a1;
  PreferenceValues.subscript.getter();
  v4 = v34;
  v5 = DWORD2(v34);
  v6 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_anchorSeed;
  v7 = *(v1 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_anchorSeed);
  v8 = v7 != -1 && v7 == DWORD2(v34);
  v9 = !v8;
  if (!v8)
  {
    v10 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_lastAnchorValues;
    swift_beginAccess();
    *(v1 + v10) = v34;

    *(v1 + v6) = v5;
  }

  *&v49 = v3;
  PreferenceValues.subscript.getter();
  v11 = v34;
  v12 = DWORD2(v34);
  v13 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_inspectorSeed;
  v14 = *(v2 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_inspectorSeed);
  if (v14 != -1 && v14 == DWORD2(v34))
  {

    if (!v9)
    {
      return result;
    }

    goto LABEL_29;
  }

  v16 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_lastInspectorValues;
  swift_beginAccess();
  *(v2 + v16) = v34;

  *(v2 + v13) = v12;
  if (*(v2 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_presentedVC))
  {

LABEL_29:
    v26 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_activePresentation;
    swift_beginAccess();
    result = outlined init with copy of UIKitPopoverBridge.PresentationKind(v2 + v26, &v34);
    *&v50[9] = *(v35 + 9);
    v49 = v34;
    *v50 = v35[0];
    if (BYTE8(v35[1]) > 1u)
    {
      if (BYTE8(v35[1]) == 2)
      {
        v27 = *(v2 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_presentedVC);
        if (v27)
        {
          v28 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_lastInspectorValues;
          swift_beginAccess();
          v29 = *(v2 + v28);
          v30 = v27;

          UIKitPopoverBridge.updateExistingInspector(_:values:)(v30, v29);
        }
      }
    }

    else if (!BYTE8(v35[1]))
    {
      return outlined destroy of UIKitPopoverBridge.PresentationKind(&v49);
    }

    return result;
  }

  v31 = v9;
  v18 = 1 << *(v11 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v11 + 64);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  if (v20)
  {
    while (1)
    {
      v23 = v22;
LABEL_24:
      v24 = __clz(__rbit64(v20)) | (v23 << 6);
      v25 = *(*(v11 + 48) + 4 * v24);
      outlined init with copy of InspectorStorage(*(v11 + 56) + 120 * v24, v48 + 8);
      LODWORD(v48[0]) = v25;
      v44 = v48[4];
      v45 = v48[5];
      v46 = v48[6];
      v47 = v48[7];
      v40 = v48[0];
      v41 = v48[1];
      v42 = v48[2];
      v43 = v48[3];
      outlined init with copy of (key: ViewIdentity, value: InspectorStorage)(&v40, v37, type metadata accessor for (key: ViewIdentity, value: InspectorStorage));
      LOBYTE(v25) = v39[17];
      outlined destroy of InspectorStorage(v39);
      if (v25)
      {
        break;
      }

      v20 &= v20 - 1;
      result = outlined destroy of SearchEnvironmentStorage.BoundProperties(&v40, type metadata accessor for (key: ViewIdentity, value: InspectorStorage));
      v22 = v23;
      if (!v20)
      {
        goto LABEL_21;
      }
    }

    v35[3] = v44;
    v35[4] = v45;
    v35[5] = v46;
    v35[6] = v47;
    v34 = v40;
    v35[0] = v41;
    v35[1] = v42;
    v35[2] = v43;

    if (*&v35[0] == 1)
    {
LABEL_28:

      result = outlined destroy of (key: ViewIdentity, value: InspectorStorage)?(&v34, &lazy cache variable for type metadata for (key: ViewIdentity, value: InspectorStorage)?, type metadata accessor for (key: ViewIdentity, value: InspectorStorage));
      if (!v31)
      {
        return result;
      }
    }

    else
    {
      v52 = v35[3];
      v53 = v35[4];
      v54 = v35[5];
      v55 = v35[6];
      v49 = v34;
      *v50 = v35[0];
      *&v50[16] = v35[1];
      v51 = v35[2];
      v36 = v34;
      *&v48[0] = v3;
      PreferenceValues.subscript.getter();
      *&v40 = v3;
      PreferenceValues.subscript.getter();
      v32[0] = v37[0];
      v33 = v38;
      UIKitPopoverBridge.presentNewInspector(_:id:anchors:presentationOptionsPreference:backgroundPreference:)(&v49 + 1, &v36, v4, &v34, v32);

      outlined destroy of PopoverPresentation?(&v34, &lazy cache variable for type metadata for PreferenceValues.Value<PresentationOptionsPreference>, &type metadata for PresentationOptionsPreference, MEMORY[0x1E697EA38]);
      result = outlined destroy of SearchEnvironmentStorage.BoundProperties(&v49, type metadata accessor for (key: ViewIdentity, value: InspectorStorage));
      if (!v31)
      {
        return result;
      }
    }

    goto LABEL_29;
  }

LABEL_21:
  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      v34 = 0uLL;
      *&v35[0] = 1;
      memset(v35 + 8, 0, 104);

      goto LABEL_28;
    }

    v20 = *(v11 + 64 + 8 * v23);
    ++v22;
    if (v20)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t UIKitPopoverBridge.updatePopoverIfNeeded(_:presentationOptionsPreference:backgroundPreference:)(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v4 = v3;
  v135 = a2;
  _sSo6CGRectVSgMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v130[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v130[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v134 = &v130[-v14];
  v15 = *a1;
  v16 = *(a1 + 2);
  v17 = *a3;
  v18 = *(a3 + 1);
  v19 = *(v15 + 16);
  if (v19)
  {
    outlined init with copy of PopoverPresentation(v15 + (v19 << 7) - 96, v166);
    if (v19 != 1)
    {
      goto LABEL_20;
    }
  }

  else
  {
    memset(v166, 0, 128);
  }

  v20 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_activePresentation;
  swift_beginAccess();
  outlined init with copy of UIKitPopoverBridge.PresentationKind(v4 + v20, &v144);
  *(v160 + 9) = *(v145 + 9);
  v159 = v144;
  v160[0] = v145[0];
  if (BYTE8(v145[1]) > 1u)
  {
    if (BYTE8(v145[1]) == 2)
    {
LABEL_20:
      static Log.presentation.getter();
      v29 = type metadata accessor for Logger();
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(v9, 1, v29) == 1)
      {
        outlined destroy of (key: ViewIdentity, value: InspectorStorage)?(v9, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
      }

      else
      {
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_18BD4A000, v31, v32, "Can't present popover, only going to try to dismiss", v33, 2u);
          MEMORY[0x18D0110E0](v33, -1, -1);
        }

        (*(v30 + 8))(v9, v29);
      }

      v34 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_activePresentation;
      swift_beginAccess();
      outlined init with copy of UIKitPopoverBridge.PresentationKind(v4 + v34, &v144);
      *(v160 + 9) = *(v145 + 9);
      v159 = v144;
      v160[0] = v145[0];
      if (BYTE8(v145[1]) <= 1u)
      {
        if (!BYTE8(v145[1]))
        {
          outlined destroy of UIKitPopoverBridge.PresentationKind(&v159);
        }

        goto LABEL_29;
      }

      if (BYTE8(v145[1]) == 3)
      {
LABEL_29:
        if (!*&v166[0])
        {
          v35 = *(v4 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_presentedVC);
          if (v35)
          {
            v36 = v35;
            UIKitPopoverBridge.dismissAndReset(viewController:)(v36);
          }
        }
      }

LABEL_105:
      v50 = MEMORY[0x1E69E6720];
      v49 = v166;
      return outlined destroy of PopoverPresentation?(v49, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation, v50);
    }
  }

  else if (!BYTE8(v145[1]))
  {
    outlined destroy of UIKitPopoverBridge.PresentationKind(&v159);
  }

  v132 = v20;
  v21 = UIKitPopoverBridge.presenter.getter();
  if (!v21)
  {
    goto LABEL_20;
  }

  v131 = v17;
  v133 = v21;
  v22 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_popoverSeed;
  v23 = *(v4 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_popoverSeed);
  if (v23 != -1 && v23 == v16)
  {
    if (UIKitPopoverBridge.isParentPresentationFromLikeKindBridge.getter())
    {
      v24 = *(v4 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_presentationOptionsSeed);
      v25 = v135;
      v26 = *(v135 + 35);
      if (v24 == -1 || v24 != v26 || (v27 = *(v4 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_backgroundSeed), v27 == -1) || v27 != v18)
      {
        *(v4 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_presentationOptionsSeed) = v26;
        *(v4 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_backgroundSeed) = v18;
        _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
        v28 = v133;
        if (swift_dynamicCastClass())
        {
          specialized PresentationHostingController.setBackgroundTransparency(preferenceValue:)(v131);
          specialized PresentationHostingController.updateSheet(with:)(v25);
        }

        goto LABEL_105;
      }
    }

    goto LABEL_93;
  }

  v37 = (v4 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_lastPopoverPresentation);
  swift_beginAccess();
  if (*v37)
  {
    v38 = v37[2];
  }

  else
  {
    v38 = 0;
  }

  outlined init with copy of PopoverPresentation?(v166, &v144, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation);
  if (v144)
  {
    v39 = *&v145[0];

    outlined destroy of PopoverPresentation(&v144);
    if (v38)
    {
      if (v39)
      {
        _sSo6CGRectVSgMaTm_0(0, &lazy cache variable for type metadata for CGRect?, type metadata accessor for CGRect);
        lazy protocol witness table accessor for type CGRect? and conformance <A> A?();
        v40 = static Anchor<A>.== infix(_:_:)();

LABEL_43:

        goto LABEL_45;
      }

LABEL_40:
      v40 = 0;
      goto LABEL_43;
    }

    if (v39)
    {
      v40 = 0;
      goto LABEL_43;
    }
  }

  else
  {
    outlined destroy of PopoverPresentation?(&v144, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation, MEMORY[0x1E69E6720]);
    if (v38)
    {
      goto LABEL_40;
    }
  }

  v40 = 1;
LABEL_45:
  *(v4 + v22) = v16;
  swift_beginAccess();
  outlined assign with copy of PopoverPresentation?(v166, v37);
  swift_endAccess();
  v41 = *(v4 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_presentedVC);
  if (!v41)
  {
    outlined init with copy of PopoverPresentation?(v166, &v159, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation);
    if (!v159)
    {

      v48 = MEMORY[0x1E69E6720];
      outlined destroy of PopoverPresentation?(v166, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation, MEMORY[0x1E69E6720]);
      v49 = &v159;
      v50 = v48;
      return outlined destroy of PopoverPresentation?(v49, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation, v50);
    }

    v145[3] = v162;
    *v146 = v163;
    *&v146[16] = v164;
    v147[0] = v165;
    v144 = v159;
    v145[0] = v160[0];
    v145[1] = v160[1];
    v145[2] = v161;
    v43 = v133;
    UIKitPopoverBridge.presentNewPopover(presentation:presenter:options:backgroundTransparency:)(&v144, v133, v135, v131);

    outlined destroy of PopoverPresentation(&v144);
    goto LABEL_105;
  }

  outlined init with copy of UIKitPopoverBridge.PresentationKind(v4 + v132, v156);
  if (!v158)
  {
    v138[0] = v156[0];
    v138[1] = v156[1];
    v139 = v157;
    outlined init with copy of PopoverPresentation?(v166, &v144, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation);
    if (v144)
    {
      outlined init with copy of PopoverPresentation?(&v145[2], v136, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
      v42 = v41;
      outlined destroy of PopoverPresentation(&v144);
    }

    else
    {
      v51 = v41;
      outlined destroy of PopoverPresentation?(&v144, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation, MEMORY[0x1E69E6720]);
      memset(v136, 0, sizeof(v136));
      v137 = 0;
    }

    v52 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_dismissingReason;
    if (*(v4 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_dismissingReason) != 2)
    {

      goto LABEL_103;
    }

    outlined init with copy of AnyHashable(v138, &v159);
    v53 = MEMORY[0x1E69E69B8];
    outlined init with copy of PopoverPresentation?(&v159, &v144, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
    outlined init with copy of PopoverPresentation?(v136, &v145[1] + 8, &lazy cache variable for type metadata for AnyHashable?, v53);
    if (*(&v145[0] + 1))
    {
      outlined init with copy of PopoverPresentation?(&v144, &v148, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
      if (*&v145[3])
      {
        v140 = *(&v145[1] + 8);
        v141 = *(&v145[2] + 8);
        v142 = *(&v145[3] + 1);
        v54 = MEMORY[0x18D00E7E0](&v148, &v140);
        outlined destroy of AnyHashable(&v140);
        v55 = MEMORY[0x1E69E69B8];
        v56 = v52;
        v57 = MEMORY[0x1E69E6720];
        outlined destroy of PopoverPresentation?(&v159, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
        outlined destroy of AnyHashable(&v148);
        v58 = v57;
        v52 = v56;
        outlined destroy of PopoverPresentation?(&v144, &lazy cache variable for type metadata for AnyHashable?, v55, v58);
        if ((v54 & 1) == 0)
        {
          goto LABEL_82;
        }

        goto LABEL_76;
      }

      outlined destroy of PopoverPresentation?(&v159, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
      outlined destroy of AnyHashable(&v148);
    }

    else
    {
      outlined destroy of PopoverPresentation?(&v159, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
      if (!*&v145[3])
      {
        outlined destroy of PopoverPresentation?(&v144, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
LABEL_76:
        v71 = v40;
        outlined init with copy of PopoverPresentation?(v166, &v159, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation);
        if (v159)
        {
          v145[3] = v162;
          *v146 = v163;
          *&v146[16] = v164;
          v147[0] = v165;
          v144 = v159;
          v145[0] = v160[0];
          v145[1] = v160[1];
          v145[2] = v161;
          v72 = v159;
          v73 = direct field offset for UIHostingController.host;
          v74 = *&v41[direct field offset for UIHostingController.host];
          v75 = *((*MEMORY[0x1E69E7D40] & *v74) + 0x60);
          swift_beginAccess();
          *(v74 + v75) = v72;

          v76 = v74;

          _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
          lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
          ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

          if ((v71 & 1) == 0)
          {
            UIKitPopoverBridge.updateAnchor()();
          }

          v77 = *&v41[v73];
          v148 = *&v146[8];

          v78 = v77;

          UIHostingViewBase.environmentOverride.setter();

          outlined destroy of PopoverPresentation(&v144);
          outlined destroy of PopoverPresentation?(v136, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
          outlined destroy of AnyHashable(v138);

          goto LABEL_105;
        }

        goto LABEL_112;
      }
    }

    outlined destroy of SearchEnvironmentStorage.BoundProperties(&v144, type metadata accessor for (AnyHashable?, AnyHashable?));
LABEL_82:
    outlined init with copy of PopoverPresentation?(v166, &v144, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation);
    if (!v144)
    {
      v83 = MEMORY[0x1E69E6720];
      outlined destroy of PopoverPresentation?(&v144, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation, MEMORY[0x1E69E6720]);
      *(v4 + v52) = 1;
      UIKitPopoverBridge.dismissAndReset(viewController:)(v41);

      v84 = MEMORY[0x1E69E69B8];
      v85 = v83;
LABEL_104:
      outlined destroy of PopoverPresentation?(v136, &lazy cache variable for type metadata for AnyHashable?, v84, v85);
      outlined destroy of AnyHashable(v138);
      goto LABEL_105;
    }

    v162 = v145[3];
    v163 = *v146;
    v164 = *&v146[16];
    v165 = v147[0];
    v159 = v144;
    v160[0] = v145[0];
    v160[1] = v145[1];
    v161 = v145[2];
    v79 = v134;
    static Log.presentation.getter();
    v80 = type metadata accessor for Logger();
    v81 = *(v80 - 8);
    if ((*(v81 + 48))(v79, 1, v80) == 1)
    {
      outlined destroy of (key: ViewIdentity, value: InspectorStorage)?(v79, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
      v82 = v135;
    }

    else
    {
      v86 = v52;
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_18BD4A000, v87, v88, "Replacing existing popover with new one", v89, 2u);
        v79 = v134;
        MEMORY[0x18D0110E0](v89, -1, -1);
      }

      (*(v81 + 8))(v79, v80);
      v82 = v135;
      v52 = v86;
    }

    outlined init with copy of PopoverPresentation?(&v161, &v144, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
    v90 = v131;
    v91 = v132;
    if (*(&v145[0] + 1))
    {
      v92 = 0;
    }

    else
    {
      LODWORD(v144) = HIDWORD(v160[1]);
      v92 = 1;
    }

    BYTE8(v145[1]) = v92;
    swift_beginAccess();
    outlined assign with take of UIKitPopoverBridge.PresentationKind(&v144, v4 + v91);
    swift_endAccess();
    *(v4 + v52) = 0;
    v99 = [v41 presentingViewController];
    if (!v99)
    {
      v99 = v41;
    }

    v100 = swift_allocObject();
    swift_unknownObjectWeakInit();
    outlined init with copy of PopoverPresentation(&v159, &v148);
    outlined init with copy of PresentationOptionsPreference(v82, &v144);
    v101 = swift_allocObject();
    *(v101 + 16) = v100;
    *(v101 + 24) = v41;
    v102 = v153;
    *(v101 + 96) = v152;
    *(v101 + 112) = v102;
    v103 = v155;
    *(v101 + 128) = v154;
    *(v101 + 144) = v103;
    v104 = v149;
    *(v101 + 32) = v148;
    *(v101 + 48) = v104;
    v105 = v151;
    *(v101 + 64) = v150;
    *(v101 + 80) = v105;
    *(v101 + 282) = *(v147 + 10);
    v106 = v147[0];
    *(v101 + 256) = *&v146[16];
    *(v101 + 272) = v106;
    v107 = *v146;
    *(v101 + 224) = v145[3];
    *(v101 + 240) = v107;
    v108 = v145[2];
    *(v101 + 192) = v145[1];
    *(v101 + 208) = v108;
    v109 = v145[0];
    *(v101 + 160) = v144;
    *(v101 + 176) = v109;
    *(v101 + 298) = v90;
    v110 = v133;
    *(v101 + 304) = v133;
    v142 = closure #2 in UIKitPopoverBridge.replaceExistingPopover(_:with:presenter:presentationOptions:backgroundTransparency:)partial apply;
    v143 = v101;
    *&v140 = MEMORY[0x1E69E9820];
    *(&v140 + 1) = 1107296256;
    *&v141 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v141 + 1) = &block_descriptor_35_1;
    v111 = _Block_copy(&v140);
    v112 = v41;
    v113 = v110;

    [v99 dismissViewControllerAnimated:1 completion:v111];
    _Block_release(v111);

    outlined destroy of PopoverPresentation(&v159);
LABEL_103:
    v84 = MEMORY[0x1E69E69B8];
    v85 = MEMORY[0x1E69E6720];
    goto LABEL_104;
  }

  if (v158 == 1)
  {
    v44 = v156[0];
    outlined init with copy of PopoverPresentation?(v166, &v144, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation);
    v45 = v144;
    if (v144)
    {
      v46 = HIDWORD(v145[1]);
      v47 = v41;
      outlined destroy of PopoverPresentation(&v144);
    }

    else
    {
      v59 = v41;
      outlined destroy of PopoverPresentation?(&v144, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation, MEMORY[0x1E69E6720]);
      v46 = 0;
    }

    v60 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_dismissingReason;
    if (*(v4 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_dismissingReason) == 2)
    {
      if (v45 && v44 == v46)
      {
        v61 = v40;
        outlined init with copy of PopoverPresentation?(v166, &v159, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation);
        if (v159)
        {
          v145[3] = v162;
          *v146 = v163;
          *&v146[16] = v164;
          v147[0] = v165;
          v144 = v159;
          v145[0] = v160[0];
          v145[1] = v160[1];
          v145[2] = v161;
          v62 = v159;
          v63 = direct field offset for UIHostingController.host;
          v64 = *&v41[direct field offset for UIHostingController.host];
          v65 = *((*MEMORY[0x1E69E7D40] & *v64) + 0x60);
          swift_beginAccess();
          *(v64 + v65) = v62;

          v66 = v64;

          _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
          lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
          ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

          if ((v61 & 1) == 0)
          {
            UIKitPopoverBridge.updateAnchor()();
          }

          v67 = *&v41[v63];
          v148 = *&v146[8];

          v68 = v67;

          UIHostingViewBase.environmentOverride.setter();

          outlined destroy of PopoverPresentation(&v144);
          goto LABEL_105;
        }

        __break(1u);
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      outlined init with copy of PopoverPresentation?(v166, &v144, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation);
      if (v144)
      {
        v162 = v145[3];
        v163 = *v146;
        v164 = *&v146[16];
        v165 = v147[0];
        v159 = v144;
        v160[0] = v145[0];
        v160[1] = v145[1];
        v161 = v145[2];
        static Log.presentation.getter();
        v69 = type metadata accessor for Logger();
        v70 = *(v69 - 8);
        if ((*(v70 + 48))(v12, 1, v69) == 1)
        {
          outlined destroy of (key: ViewIdentity, value: InspectorStorage)?(v12, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
        }

        else
        {
          v93 = Logger.logObject.getter();
          v94 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            *v95 = 0;
            _os_log_impl(&dword_18BD4A000, v93, v94, "Replacing existing popover with new one", v95, 2u);
            MEMORY[0x18D0110E0](v95, -1, -1);
          }

          (*(v70 + 8))(v12, v69);
        }

        outlined init with copy of PopoverPresentation?(&v161, &v144, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
        v96 = v131;
        v97 = v132;
        if (*(&v145[0] + 1))
        {
          v98 = 0;
        }

        else
        {
          LODWORD(v144) = HIDWORD(v160[1]);
          v98 = 1;
        }

        BYTE8(v145[1]) = v98;
        swift_beginAccess();
        outlined assign with take of UIKitPopoverBridge.PresentationKind(&v144, v4 + v97);
        swift_endAccess();
        *(v4 + v60) = 0;
        v115 = [v41 presentingViewController];
        if (!v115)
        {
          v115 = v41;
        }

        v116 = swift_allocObject();
        swift_unknownObjectWeakInit();
        outlined init with copy of PopoverPresentation(&v159, &v148);
        outlined init with copy of PresentationOptionsPreference(v135, &v144);
        v117 = swift_allocObject();
        *(v117 + 16) = v116;
        *(v117 + 24) = v41;
        v118 = v153;
        *(v117 + 96) = v152;
        *(v117 + 112) = v118;
        v119 = v155;
        *(v117 + 128) = v154;
        *(v117 + 144) = v119;
        v120 = v149;
        *(v117 + 32) = v148;
        *(v117 + 48) = v120;
        v121 = v151;
        *(v117 + 64) = v150;
        *(v117 + 80) = v121;
        *(v117 + 282) = *(v147 + 10);
        v122 = v147[0];
        *(v117 + 256) = *&v146[16];
        *(v117 + 272) = v122;
        v123 = *v146;
        *(v117 + 224) = v145[3];
        *(v117 + 240) = v123;
        v124 = v145[2];
        *(v117 + 192) = v145[1];
        *(v117 + 208) = v124;
        v125 = v145[0];
        *(v117 + 160) = v144;
        *(v117 + 176) = v125;
        *(v117 + 298) = v96;
        v126 = v133;
        *(v117 + 304) = v133;
        v142 = partial apply for closure #2 in UIKitPopoverBridge.replaceExistingPopover(_:with:presenter:presentationOptions:backgroundTransparency:);
        v143 = v117;
        *&v140 = MEMORY[0x1E69E9820];
        *(&v140 + 1) = 1107296256;
        *&v141 = thunk for @escaping @callee_guaranteed () -> ();
        *(&v141 + 1) = &block_descriptor_27;
        v127 = _Block_copy(&v140);
        v128 = v41;
        v129 = v126;

        [v115 dismissViewControllerAnimated:1 completion:v127];
        _Block_release(v127);

        outlined destroy of PopoverPresentation(&v159);
        goto LABEL_105;
      }

      outlined destroy of PopoverPresentation?(&v144, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation, MEMORY[0x1E69E6720]);
      *(v4 + v60) = 1;
      UIKitPopoverBridge.dismissAndReset(viewController:)(v41);
    }

LABEL_93:
    goto LABEL_105;
  }

LABEL_113:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #2 in UIKitPopoverBridge.updateAnchor()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    MEMORY[0x18D00ABE0]();
    if (*&v4[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_activeInspectorAnchor])
    {

      v5 = UIKitPopoverBridge.popoverPresentationDelegate.getter();
      specialized PopoverPresentationDelegate.updateAnchor(_:presentationController:)(a2);
    }

    static Update.end()();
  }
}

void UIKitPopoverBridge.dismissAndReset(viewController:)(void *a1)
{
  _sSo6CGRectVSgMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - v7;
  if ([a1 isBeingDismissed])
  {
    static Log.presentation.getter();
    v9 = type metadata accessor for Logger();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v4, 1, v9) == 1)
    {
      outlined destroy of (key: ViewIdentity, value: InspectorStorage)?(v4, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v13 = a1;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v13;
        v18 = v13;
        _os_log_impl(&dword_18BD4A000, v14, v15, "View controller %@ is already dismissing, not going to dismiss again", v16, 0xCu);
        outlined destroy of SearchEnvironmentStorage.BoundProperties(v17, type metadata accessor for NSObject?);
        MEMORY[0x18D0110E0](v17, -1, -1);
        MEMORY[0x18D0110E0](v16, -1, -1);
      }

      (*(v10 + 8))(v4, v9);
    }
  }

  else
  {
    static Log.presentation.getter();
    v11 = type metadata accessor for Logger();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v8, 1, v11) == 1)
    {
      outlined destroy of (key: ViewIdentity, value: InspectorStorage)?(v8, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_18BD4A000, v19, v20, "Dismissing popover", v21, 2u);
        MEMORY[0x18D0110E0](v21, -1, -1);
      }

      (*(v12 + 8))(v8, v11);
    }

    v22 = [a1 presentingViewController];
    if (!v22)
    {
      v22 = a1;
    }

    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in UIKitPopoverBridge.dismissAndReset(viewController:);
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_69;
    v24 = _Block_copy(aBlock);

    [v22 dismissViewControllerAnimated:1 completion:v24];
    _Block_release(v24);
  }
}

void closure #1 in UIKitPopoverBridge.updateAnchor()(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = UIKitPopoverBridge.popoverPresentationDelegate.getter();
    specialized PopoverPresentationDelegate.updateAnchor(_:presentationController:)(a3);
  }
}

void UIKitPopoverBridge.presentNewPopover(presentation:presenter:options:backgroundTransparency:)(uint64_t a1, void *a2, uint64_t *a3, int a4)
{
  v5 = v4;
  _sSo6CGRectVSgMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v76 - v14;
  v16 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_activePresentation;
  swift_beginAccess();
  outlined init with copy of UIKitPopoverBridge.PresentationKind(v5 + v19, &v87);
  *&v86[9] = *&v88[9];
  v85 = v87;
  *v86 = *v88;
  if (v88[24] - 2 >= 2)
  {
    if (!v88[24])
    {
      outlined destroy of UIKitPopoverBridge.PresentationKind(&v85);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    if (specialized UIKitPopoverBridge.popoverCanPresent(popover:)(a1))
    {
      v83 = a3;
      v20 = [objc_opt_self() defaultCenter];
      if (one-time initialization token for willPresent != -1)
      {
        swift_once();
      }

      v80 = a4;
      [v20 postNotificationName:static SheetPopoverBridgeNotifications.willPresent object:0];

      static Transaction.current.getter();
      v21 = Transaction.isAnimated.getter();

      v22 = [a2 presentedViewController];
      v77 = v16;
      v76 = v18;
      if (v22)
      {
        v23 = v22;
        if (([v22 isBeingDismissed] & 1) == 0)
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            v24 = [v23 preferredTransition];
            if (v24)
            {

              _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
              v25 = swift_dynamicCastClass();
              if (v25)
              {
                v26 = v25;
                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  v28 = Strong;
                  v29 = v15;
                  v82 = v23;
                  v30 = [v28 window];
                  if (v30)
                  {
                    v31 = v30;

                    v28 = v31;
                  }

                  else
                  {
                    [v26 setPreferredTransition_];
                  }

                  v15 = v29;
                }
              }
            }

            [a2 dismissViewControllerAnimated:v21 & 1 completion:{0, v76, v77}];
          }
        }
      }

      v81 = v15;
      v82 = a2;
      v37 = UIKitPopoverBridge.makePresentedHost(_:)();
      v38 = *(v5 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_presentedVC);
      *(v5 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_presentedVC) = v37;
      v39 = v37;

      v41 = *(a1 + 88);
      v40 = *(a1 + 96);
      v42 = *(a1 + 8);
      v78 = *(a1 + 9);
      v79 = v42;
      v43 = direct field offset for UIHostingController.host;
      v44 = *&v39[direct field offset for UIHostingController.host];
      v45 = MEMORY[0x1E69E7D40];
      *&v87 = v41;
      *(&v87 + 1) = v40;

      v46 = v44;

      UIHostingViewBase.environmentOverride.setter();

      specialized PresentationHostingController.prepareModalPresentationStyle(_:presentationOptions:)(7, v83);
      v47 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
      if (*(*&v39[v43] + *((*v45 & **&v39[v43]) + 0xF8)) != 2)
      {
        goto LABEL_32;
      }

      *&v87 = v41;
      *(&v87 + 1) = v40;
      EnvironmentValues.explicitPreferredColorScheme.getter();
      if (v85 == 2)
      {
LABEL_31:
        v47 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
LABEL_32:
        specialized PresentationHostingController.setBackgroundTransparency(preferenceValue:)(v80);
        specialized PresentationHostingController.updateSheet(with:)(v83);
        v58 = [v39 v47[502]];
        if (v58)
        {
          v59 = v58;
          objc_opt_self();
          v60 = swift_dynamicCastObjCClass();
          if (v60)
          {
            v61 = v60;
            v62 = v59;
            v63 = UIKitPopoverBridge.popoverPresentationDelegate.getter();
            [v61 setDelegate_];
          }

          v64 = UIKitPopoverBridge.popoverPresentationDelegate.getter();
          specialized PopoverPresentationDelegate.updateAnchor(_:presentationController:)(v59);
        }

        v65 = [v39 popoverPresentationController];
        v66 = v82;
        if (v65)
        {
          v67 = v65;
          if (*(v5 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_overrideArrowDirections + 8) == 1)
          {
            *&v87 = v41;
            *(&v87 + 1) = v40;
            EnvironmentValues.layoutDirection.getter();
            v84 = v85;
            v68 = specialized UIPopoverArrowDirection.init(edges:layoutDirection:)(v79 | (v78 << 8), &v84);
          }

          else
          {
            v68 = *(v5 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_overrideArrowDirections);
          }

          [v67 setPermittedArrowDirections_];
        }

        specialized PresentationHostingController.setupSheet(for:presenter:placement:)(1, v66, 5u);
        outlined init with copy of PopoverPresentation?(a1 + 48, &v87, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
        if (*&v88[8])
        {
          v69 = 0;
        }

        else
        {
          LODWORD(v87) = *(a1 + 44);
          v69 = 1;
        }

        v70 = v81;
        v88[24] = v69;
        swift_beginAccess();
        outlined assign with take of UIKitPopoverBridge.PresentationKind(&v87, v5 + v19);
        swift_endAccess();
        static Log.presentation.getter();
        v71 = type metadata accessor for Logger();
        v72 = *(v71 - 8);
        if ((*(v72 + 48))(v70, 1, v71) == 1)
        {
          outlined destroy of (key: ViewIdentity, value: InspectorStorage)?(v70, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
        }

        else
        {
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = 0;
            _os_log_impl(&dword_18BD4A000, v73, v74, "Presenting new popover", v75, 2u);
            MEMORY[0x18D0110E0](v75, -1, -1);
          }

          (*(v72 + 8))(v70, v71);
        }

        [v66 presentViewController:v39 animated:1 completion:0];

        return;
      }

      v48 = *&v39[v43];
      v49 = *((*v45 & *v48) + 0xF8);
      v50 = *(v48 + v49);
      *(v48 + v49) = v85;
      v51 = v48;
      specialized _UIHostingView.didChangeColorScheme(from:)(v50);

      v52 = [v39 presentationController];
      if (v52)
      {
        v53 = v52;
        objc_opt_self();
        v54 = swift_dynamicCastObjCClass();
        if (v54)
        {
          v55 = v54;
LABEL_30:
          UIPresentationController.traitOverrides.getter();
          UIMutableTraits.userInterfaceStyle.setter();
          UIPresentationController.traitOverrides.setter();

          goto LABEL_31;
        }
      }

      v56 = [v39 popoverPresentationController];
      if (!v56)
      {
        goto LABEL_31;
      }

      v57 = v56;
      v55 = [v56 adaptiveSheetPresentationController];

      if (!v55)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    static Log.presentation.getter();
    v32 = type metadata accessor for Logger();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v12, 1, v32) == 1)
    {
      outlined destroy of (key: ViewIdentity, value: InspectorStorage)?(v12, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_18BD4A000, v34, v35, "Not presenting new popover, source view is scrolled out of bounds", v36, 2u);
        MEMORY[0x18D0110E0](v36, -1, -1);
      }

      (*(v33 + 8))(v12, v32);
    }
  }
}

void closure #2 in UIKitPopoverBridge.replaceExistingPopover(_:with:presenter:presentationOptions:backgroundTransparency:)(uint64_t a1, char *a2, uint64_t *a3, uint64_t *a4, int a5, void *a6)
{
  v11 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  v49[1] = v13;
  v49[2] = v11;
  v51 = a5;
  v52 = a6;
  *(Strong + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_dismissingReason) = 2;
  v16 = *a3;
  v17 = direct field offset for UIHostingController.host;
  v18 = *&a2[direct field offset for UIHostingController.host];
  v19 = MEMORY[0x1E69E7D40];
  v20 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x60);
  swift_beginAccess();
  *(v18 + v20) = v16;

  v21 = v18;

  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

  v22 = a3[11];
  v23 = a3[12];
  v24 = *(a3 + 8);
  v50 = *(a3 + 9);
  v25 = *&a2[v17];
  v55 = v22;
  v56 = v23;

  v26 = v25;

  UIHostingViewBase.environmentOverride.setter();

  specialized PresentationHostingController.prepareModalPresentationStyle(_:presentationOptions:)(7, a4);
  v27 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
  if (*(*&a2[v17] + *((*v19 & **&a2[v17]) + 0xF8)) == 2)
  {
    v55 = v22;
    v56 = v23;
    EnvironmentValues.explicitPreferredColorScheme.getter();
    if (v54 == 2)
    {
LABEL_11:
      v27 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
      goto LABEL_12;
    }

    v28 = *&a2[v17];
    v29 = *((*v19 & *v28) + 0xF8);
    v30 = *(v28 + v29);
    *(v28 + v29) = v54;
    v31 = v28;
    specialized _UIHostingView.didChangeColorScheme(from:)(v30);

    v32 = [a2 presentationController];
    if (v32)
    {
      v33 = v32;
      objc_opt_self();
      v34 = swift_dynamicCastObjCClass();
      if (v34)
      {
        v35 = v34;
LABEL_10:
        UIPresentationController.traitOverrides.getter();
        UIMutableTraits.userInterfaceStyle.setter();
        UIPresentationController.traitOverrides.setter();

        goto LABEL_11;
      }
    }

    v36 = [a2 popoverPresentationController];
    if (!v36)
    {
      goto LABEL_11;
    }

    v37 = v36;
    v35 = [v36 adaptiveSheetPresentationController];

    if (!v35)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  specialized PresentationHostingController.setBackgroundTransparency(preferenceValue:)(v51);
  specialized PresentationHostingController.updateSheet(with:)(a4);
  v38 = [a2 v27[502]];
  if (v38)
  {
    v39 = v38;
    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (v40)
    {
      v41 = v40;
      v42 = v39;
      v43 = UIKitPopoverBridge.popoverPresentationDelegate.getter();
      [v41 setDelegate_];
    }

    v44 = UIKitPopoverBridge.popoverPresentationDelegate.getter();
    specialized PopoverPresentationDelegate.updateAnchor(_:presentationController:)(v39);
  }

  v45 = [a2 popoverPresentationController];
  v46 = v52;
  if (v45)
  {
    v47 = v45;
    if (v15[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_overrideArrowDirections + 8] == 1)
    {
      v55 = v22;
      v56 = v23;
      EnvironmentValues.layoutDirection.getter();
      v53 = v54;
      v48 = specialized UIPopoverArrowDirection.init(edges:layoutDirection:)(v24 | (v50 << 8), &v53);
    }

    else
    {
      v48 = *&v15[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_overrideArrowDirections];
    }

    [v47 setPermittedArrowDirections_];
  }

  specialized PresentationHostingController.setupSheet(for:presenter:placement:)(1, v46, 5u);
  [v46 presentViewController:a2 animated:1 completion:0];
}

void UIKitPopoverBridge.presentNewInspector(_:id:anchors:presentationOptionsPreference:backgroundPreference:)(void *a1, int *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v6 = v5;
  v12 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v12);
  v98 = v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v15 = *a5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
  }

  else
  {
    v19 = v6 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_host;
    if (!swift_unknownObjectWeakLoadStrong() || (v20 = *(v19 + 8), v21 = swift_getObjectType(), v17 = ViewGraphDelegate.uiViewController.getter(v21, *(*(v20 + 16) + 8)), swift_unknownObjectRelease(), !v17))
    {
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v22 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      v24 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v22 + 16) + 8));
      swift_unknownObjectRelease();
      v17 = [v24 _viewControllerForAncestor];

      if (!v17)
      {
        return;
      }
    }
  }

  v101 = v14;
  v18 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_activePresentation;
  swift_beginAccess();
  outlined init with copy of UIKitPopoverBridge.PresentationKind(v6 + v18, &v105);
  *&v108[9] = *(v106 + 9);
  v107 = v105;
  *v108 = v106[0];
  if (BYTE8(v106[1]) > 1u)
  {
    if (BYTE8(v106[1]) != 3)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }
  }

  else if (!BYTE8(v106[1]))
  {
    outlined destroy of UIKitPopoverBridge.PresentationKind(&v107);
  }

  v96 = a4;
  v25 = a1[11];
  v100 = v18;
  if (v25)
  {
  }

  else if (a1[12])
  {
  }

  else
  {
    AnyView.init<A>(_:)();
  }

  v26 = UIKitPopoverBridge.makePresentedHost(_:)();

  outlined init with copy of PopoverPresentation?((a1 + 6), &v105, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  v97 = v12;
  v99 = v6;
  if (*(&v106[0] + 1))
  {
    v107 = v105;
    *v108 = v106[0];
    *&v108[16] = *&v106[1];
    if (*(a3 + 16))
    {
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(&v107);
      if (v28)
      {
        v29 = *(*(a3 + 56) + 8 * v27);
        v30 = objc_opt_self();

        v31 = [v30 currentDevice];
        v32 = [v31 userInterfaceIdiom];

        if (v32 != 1)
        {
LABEL_45:
          outlined destroy of AnyHashable(&v107);

          goto LABEL_46;
        }

        *(v6 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_activeInspectorAnchor) = v29;
        v95[1] = v29;

        v33 = a1[13];
        v34 = a1[14];
        outlined init with copy of PresentationOptionsPreference(v96, &v105);
        v35 = direct field offset for UIHostingController.host;
        v36 = *&v26[direct field offset for UIHostingController.host];
        v103 = v33;
        v104 = v34;
        v95[0] = v34;

        v37 = v36;
        v96 = v33;

        UIHostingViewBase.environmentOverride.setter();

        specialized PresentationHostingController.prepareModalPresentationStyle(_:presentationOptions:)(7, &v105);
        v38 = v15;
        if (*(*&v26[v35] + *((*MEMORY[0x1E69E7D40] & **&v26[v35]) + 0xF8)) == 2)
        {
          v103 = v96;
          v104 = v95[0];
          EnvironmentValues.explicitPreferredColorScheme.getter();
          if (v102 != 2)
          {
            v39 = *&v26[v35];
            v40 = *((*MEMORY[0x1E69E7D40] & *v39) + 0xF8);
            v41 = *(v39 + v40);
            *(v39 + v40) = v102;
            v42 = v39;
            specialized _UIHostingView.didChangeColorScheme(from:)(v41);

            v43 = [v26 presentationController];
            if (v43)
            {
              v44 = v43;
              objc_opt_self();
              v45 = swift_dynamicCastObjCClass();
              if (v45)
              {
                v46 = v45;
LABEL_31:
                UIPresentationController.traitOverrides.getter();
                UIMutableTraits.userInterfaceStyle.setter();
                UIPresentationController.traitOverrides.setter();

                goto LABEL_32;
              }
            }

            v47 = [v26 &selRef_initWithData_options_documentAttributes_error_ + 5];
            if (v47)
            {
              v48 = v47;
              v46 = [v47 adaptiveSheetPresentationController];

              if (v46)
              {
                goto LABEL_31;
              }
            }
          }
        }

LABEL_32:
        specialized PresentationHostingController.setBackgroundTransparency(preferenceValue:)(v38);
        specialized PresentationHostingController.updateSheet(with:)(&v105);
        v49 = v26;
        v50 = [v49 presentationController];
        if (v50)
        {
          v51 = v50;
          objc_opt_self();
          v52 = swift_dynamicCastObjCClass();
          if (v52)
          {
            v53 = v52;
            v54 = v51;
            v55 = UIKitPopoverBridge.popoverPresentationDelegate.getter();
            [v53 setDelegate_];
          }

          v56 = UIKitPopoverBridge.popoverPresentationDelegate.getter();
          specialized PopoverPresentationDelegate.updateAnchor(_:presentationController:)(v51);
        }

        v57 = [v49 popoverPresentationController];
        if (v57)
        {
          v58 = v57;
          if (*(v6 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_overrideArrowDirections + 8) == 1)
          {
            v103 = v96;
            v104 = v95[0];
            EnvironmentValues.layoutDirection.getter();
            v59 = 15;
          }

          else
          {
            v59 = *(v6 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_overrideArrowDirections);
          }

          [v58 setPermittedArrowDirections_];
        }

        outlined destroy of PresentationOptionsPreference(&v105);
        v60 = [v49 popoverPresentationController];

        if (v60)
        {
          v61 = v6 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_host;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v62 = *(v61 + 8);
            v63 = swift_getObjectType();
            v64 = ViewGraphDelegate.uiView.getter(v63, *(*(v62 + 16) + 8));
            swift_unknownObjectRelease();
            if (!v64)
            {
              outlined destroy of AnyHashable(&v107);

              goto LABEL_58;
            }

            type metadata accessor for PopoverPresentation?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
            v65 = swift_allocObject();
            *(v65 + 16) = xmmword_18CD69590;
            *(v65 + 32) = v64;
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
            v66 = v64;
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v60 setPassthroughViews_];
          }

          else
          {
          }

          outlined destroy of AnyHashable(&v107);
LABEL_58:
          specialized PresentationHostingController.setupSheet(for:presenter:placement:)(1, v17, 5u);
          goto LABEL_59;
        }

        goto LABEL_45;
      }
    }

    outlined destroy of AnyHashable(&v107);
  }

  else
  {
    outlined destroy of PopoverPresentation?(&v105, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
  }

LABEL_46:
  specialized PresentationHostingController.setupSheet(for:presenter:placement:)(1, v17, 6u);
  v68 = direct field offset for UIHostingController.host;
  v69 = *&v26[direct field offset for UIHostingController.host];
  v70 = a1[14];
  v71 = MEMORY[0x1E69E7D40];
  *&v105 = a1[13];
  *(&v105 + 1) = v70;

  v72 = v26;
  v73 = v69;

  UIHostingViewBase.environmentOverride.setter();

  v74 = *&v26[v68];
  LODWORD(v69) = *(v74 + *((*v71 & *v74) + 0xF8));

  v6 = v99;
  if (v69 != 2)
  {
    goto LABEL_59;
  }

  v105 = *(a1 + 13);
  EnvironmentValues.explicitPreferredColorScheme.getter();
  if (v107 == 2)
  {
    goto LABEL_59;
  }

  v75 = *&v26[v68];
  v76 = *((*MEMORY[0x1E69E7D40] & *v75) + 0xF8);
  v77 = *(v75 + v76);
  *(v75 + v76) = v107;
  v78 = v75;
  specialized _UIHostingView.didChangeColorScheme(from:)(v77);

  v79 = [v72 presentationController];
  if (!v79)
  {
LABEL_52:
    v83 = [v72 popoverPresentationController];
    if (!v83)
    {
      goto LABEL_59;
    }

    v84 = v83;
    v82 = [v83 adaptiveSheetPresentationController];

    if (!v82)
    {
      goto LABEL_59;
    }

    goto LABEL_54;
  }

  v80 = v79;
  objc_opt_self();
  v81 = swift_dynamicCastObjCClass();
  if (!v81)
  {

    goto LABEL_52;
  }

  v82 = v81;
LABEL_54:
  UIPresentationController.traitOverrides.getter();
  UIMutableTraits.userInterfaceStyle.setter();
  UIPresentationController.traitOverrides.setter();

LABEL_59:
  v85 = [v26 presentationController];
  if (v85)
  {
    v86 = v85;
    objc_opt_self();
    v87 = swift_dynamicCastObjCClass();
    if (v87)
    {
      v88 = v87;
      type metadata accessor for PopoverPresentation?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_18CDDAC20;
      v90 = objc_opt_self();
      *(v89 + 32) = [v90 mediumDetent];
      *(v89 + 40) = [v90 largeDetent];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
      v91 = Array._bridgeToObjectiveC()().super.isa;

      [v88 setDetents_];

      [v88 setLargestUndimmedDetentIdentifier_];
      [v88 setPrefersScrollingExpandsWhenScrolledToEdge_];
      [v88 setPrefersGrabberVisible_];
    }
  }

  if (a1[1])
  {
    LOBYTE(v105) = 1;
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  v92 = *(v6 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_presentedVC);
  *(v6 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_presentedVC) = v26;
  v93 = v26;

  LODWORD(v105) = v101;
  BYTE8(v106[1]) = 2;
  v94 = v100;
  swift_beginAccess();
  outlined assign with take of UIKitPopoverBridge.PresentationKind(&v105, v6 + v94);
  swift_endAccess();
  [v17 presentViewController:v93 animated:1 completion:0];
}

uint64_t UIKitPopoverBridge.updateExistingInspector(_:values:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_activePresentation;
  swift_beginAccess();
  outlined init with copy of UIKitPopoverBridge.PresentationKind(v3 + v6, &v37);
  *(&v43[1] + 9) = *&v38[9];
  v43[0] = v37;
  v43[1] = *v38;
  if (v38[24] > 1u)
  {
    if (v38[24] != 2)
    {
LABEL_7:
      v7 = 0;
      if (!*(a2 + 16))
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  else if (!v38[24])
  {
    outlined destroy of UIKitPopoverBridge.PresentationKind(v43);
    goto LABEL_7;
  }

  v7 = v43[0];
  if (!*(a2 + 16))
  {
    goto LABEL_10;
  }

LABEL_8:
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
  if (v9)
  {
    outlined init with copy of InspectorStorage(*(a2 + 56) + 120 * v8, v43);
    goto LABEL_11;
  }

LABEL_10:
  v43[0] = xmmword_18CD633F0;
  memset(&v43[1], 0, 96);
  v44 = 0;
LABEL_11:
  outlined init with copy of PopoverPresentation?(v43, &v37, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage);
  v10 = *(&v37 + 1);
  if (*(&v37 + 1) == 1)
  {
    v11 = outlined destroy of PopoverPresentation?(&v37, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage, MEMORY[0x1E69E6720]);
LABEL_17:
    if (*(v3 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_dismissingReason) == 2)
    {
      *(v3 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_dismissingReason) = 1;
      UIKitPopoverBridge.dismissAndReset(viewController:)(a1);
    }

    v15 = 0;
    goto LABEL_20;
  }

  v12 = v37;
  v13 = v38[0];
  outlined copy of Binding<Int>?(v37, *(&v37 + 1));
  v11 = outlined destroy of InspectorStorage(&v37);
  if (!v10)
  {
    goto LABEL_17;
  }

  *&v33 = v12;
  *(&v33 + 1) = v10;
  LOBYTE(v34) = v13 & 1;
  type metadata accessor for PopoverPresentation?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v36);
  v14 = v36;

  if (v14 != 1)
  {
    goto LABEL_17;
  }

  outlined init with copy of PopoverPresentation?(v43, &v37, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage);
  if (*(&v37 + 1) == 1)
  {
    outlined destroy of PopoverPresentation?(&v37, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage, MEMORY[0x1E69E6720]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
LABEL_28:
    outlined destroy of PopoverPresentation?(&v33, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
    goto LABEL_31;
  }

  outlined init with copy of PopoverPresentation?(v39, &v33, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  outlined destroy of InspectorStorage(&v37);
  if (!*(&v34 + 1))
  {
    goto LABEL_28;
  }

  v37 = v33;
  *v38 = v34;
  *&v38[16] = v35;
  v21 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_lastAnchorValues;
  swift_beginAccess();
  v22 = *(v3 + v21);
  if (*(v22 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(&v37), (v24 & 1) != 0))
  {
    v25 = *(*(v22 + 56) + 8 * v23);
  }

  else
  {
    v25 = 0;
  }

  swift_endAccess();
  outlined destroy of AnyHashable(&v37);
  *(v3 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_activeInspectorAnchor) = v25;

LABEL_31:
  v26 = [a1 presentationController];
  if (v26)
  {
    v27 = v26;
    if (*(v3 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_activeInspectorAnchor))
    {

      v28 = UIKitPopoverBridge.popoverPresentationDelegate.getter();
      specialized PopoverPresentationDelegate.updateAnchor(_:presentationController:)(v27);

      v27 = v28;
    }
  }

  result = outlined init with copy of PopoverPresentation?(v43, &v37, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage);
  if (*(&v37 + 1) == 1)
  {
    __break(1u);
    goto LABEL_39;
  }

  v29 = *(&v40 + 1);

  result = outlined destroy of InspectorStorage(&v37);
  if (!v29)
  {
LABEL_39:
    __break(1u);
    return result;
  }

  v30 = *&a1[direct field offset for UIHostingController.host];
  v31 = *((*MEMORY[0x1E69E7D40] & *v30) + 0x60);
  v15 = 1;
  swift_beginAccess();
  *(v30 + v31) = v29;
  v32 = v30;

  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

LABEL_20:
  v36 = 17;
  MEMORY[0x1EEE9AC00](v11);
  type metadata accessor for PopoverPresentation?(0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  static Update.dispatchImmediately<A>(reason:_:)();
  if (v37 == 2 || ((v15 ^ v37) & 1) != 0)
  {
    v36 = 17;
    outlined init with copy of PopoverPresentation?(v43, &v37, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage);
    v16 = swift_allocObject();
    v17 = v40;
    *(v16 + 80) = v39[1];
    *(v16 + 96) = v17;
    *(v16 + 112) = v41;
    *(v16 + 128) = v42;
    v18 = *v38;
    *(v16 + 16) = v37;
    *(v16 + 32) = v18;
    v19 = v39[0];
    *(v16 + 48) = *&v38[16];
    *(v16 + 64) = v19;
    *(v16 + 136) = v15;
    static Update.enqueueAction(reason:_:)();
  }

  return outlined destroy of PopoverPresentation?(v43, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage, MEMORY[0x1E69E6720]);
}

uint64_t closure #1 in UIKitPopoverBridge.updateExistingInspector(_:values:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  outlined init with copy of PopoverPresentation?(a1, &v12, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage);
  v3 = v13;
  if (v13 == 1)
  {
    result = outlined destroy of PopoverPresentation?(&v12, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage, MEMORY[0x1E69E6720]);
  }

  else
  {
    v5 = v12;
    v6 = v14;
    outlined copy of Binding<Int>?(v12, v13);
    result = outlined destroy of InspectorStorage(&v12);
    if (v3)
    {
      v9 = v5;
      v10 = v3;
      v11 = v6 & 1;
      type metadata accessor for PopoverPresentation?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      MEMORY[0x18D00ACC0](&v8);
      v7 = v8;

      *a2 = v7;
      return result;
    }
  }

  *a2 = 2;
  return result;
}

uint64_t closure #2 in UIKitPopoverBridge.updateExistingInspector(_:values:)(uint64_t a1)
{
  outlined init with copy of PopoverPresentation?(a1, &v3, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage);
  v1 = v4;
  if (v4 == 1)
  {
    return outlined destroy of PopoverPresentation?(&v3, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage, MEMORY[0x1E69E6720]);
  }

  outlined copy of Binding<Int>?(v3, v4);
  result = outlined destroy of InspectorStorage(&v3);
  if (v1)
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

void closure #1 in UIKitPopoverBridge.dismissAndReset(viewController:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    UIKitPopoverBridge.reset()();
  }
}

uint64_t UIKitPopoverBridge.popoverSource(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_lastPopoverPresentation;
  swift_beginAccess();
  outlined init with copy of PopoverPresentation?(v2 + v7, &v31, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation);
  if (!v31)
  {
    result = outlined destroy of PopoverPresentation?(&v31, &lazy cache variable for type metadata for PopoverPresentation?, &type metadata for PopoverPresentation, MEMORY[0x1E69E6720]);
    goto LABEL_8;
  }

  v37[4] = v33;
  *v38 = v34;
  *&v38[16] = v35;
  v39 = v36;
  v37[0] = v31;
  v37[1] = v32[0];
  v8 = v2 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_host;
  v37[2] = v32[1];
  v37[3] = v32[2];
  if (!swift_unknownObjectWeakLoadStrong() || (v9 = *(v8 + 8), ObjectType = swift_getObjectType(), v11 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v9 + 16) + 8)), swift_unknownObjectRelease(), !v11))
  {
    result = outlined destroy of PopoverPresentation(v37);
LABEL_8:
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return result;
  }

  if (*(v2 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_overrideArrowDirections + 8))
  {
    v12 = BYTE8(v37[0]);
    v27[0] = v4;
    v13 = v6;
    v14 = v11;
    v15 = BYTE9(v37[0]);
    v31 = *&v38[8];
    EnvironmentValues.layoutDirection.getter();
    LOBYTE(v28[0]) = v30;
    v16 = v12 | (v15 << 8);
    v11 = v14;
    v6 = v13;
    v4 = v27[0];
    v17 = specialized UIPopoverArrowDirection.init(edges:layoutDirection:)(v16, v28);
  }

  else
  {
    v17 = *(v2 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_overrideArrowDirections);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    *a1 = v11;
    swift_unknownObjectWeakInit();

    swift_unknownObjectWeakInit();
  }

  else
  {
    if (!swift_unknownObjectWeakLoadStrong())
    {
      if (BYTE5(v39) != 1)
      {
        *&v31 = v11;
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        *&v33 = 0;
        BYTE8(v33) = 1;
        *&v34 = v17;
        v21 = swift_unknownObjectWeakLoadStrong();
        if (v21)
        {
          MEMORY[0x1EEE9AC00](v21);
          v27[-2] = v22;
          v27[-1] = v23;
          static Update.ensure<A>(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          ViewTransform.init()();
        }

        _sSo6CGRectVSgMaTm_0(0, &lazy cache variable for type metadata for CGRect?, type metadata accessor for CGRect);
        Anchor.convert(to:)();

        *(v32 + 8) = v28[0];
        *(&v32[1] + 8) = v28[1];
        BYTE8(v32[2]) = v29;
        outlined init with take of PopoverPresentationDelegate.PopoverSource(&v31, a1);
        return outlined destroy of PopoverPresentation(v37);
      }

      v27[0] = *&v38[8];
      if (*&v38[16])
      {
        _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
        lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage);

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
        lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage);
        PropertyList.subscript.getter();
      }

      v24 = v31;
      if (v31)
      {
        swift_getKeyPath();
        *&v31 = v24;
        lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage, type metadata accessor for SearchEnvironmentStorage);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v25 = OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage__boundProperties;
        swift_beginAccess();
        outlined init with copy of (key: ViewIdentity, value: InspectorStorage)(v24 + v25, v6, type metadata accessor for SearchEnvironmentStorage.BoundProperties);

        v26 = &v6[*(v4 + 28)];
        if (*(v26 + 8))
        {
          outlined init with copy of (key: ViewIdentity, value: InspectorStorage)(v26, &v31, type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>);
          outlined destroy of SearchEnvironmentStorage.BoundProperties(v6, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
          type metadata accessor for Binding<PlatformSearchPopoverAnchor?>();
          MEMORY[0x18D00ACC0](v28);
          outlined destroy of SearchEnvironmentStorage.BoundProperties(&v31, type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>);
          if (BYTE8(v28[0]) == 1)
          {
            outlined destroy of PopoverPresentation?(v28, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?, &type metadata for PlatformSearchPopoverAnchor, MEMORY[0x1E69E6720]);
          }

          else
          {
            swift_unknownObjectWeakLoadStrong();
            outlined destroy of PlatformSearchPopoverAnchor(v28);
          }
        }

        else
        {
          outlined destroy of SearchEnvironmentStorage.BoundProperties(v6, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
        }
      }
    }

    *a1 = v11;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
  }

  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = v17;
  return outlined destroy of PopoverPresentation(v37);
}

uint64_t closure #1 in UIKitPopoverBridge.popoverHostTransform(for:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(*(a2 + 8) + 8))(ObjectType);
  ViewGraph.transform.getter();
}

uint64_t protocol witness for PopoverPresentationDelegateDelegate.popoverWillDismiss(for:) in conformance UIKitPopoverBridge()
{
  v1 = (v0 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_lastPopoverPresentation);
  swift_beginAccess();
  if (*v1)
  {
    v2 = v1[3];
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v4 = (v0 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_pendingDismissAction);
  v5 = *(v0 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_pendingDismissAction);
  *v4 = v2;
  v4[1] = v3;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5);
}

void UIKitPopoverBridge.hostingView<A>(_:didChangePreferences:)(uint64_t a1, uint64_t *a2)
{
  v6 = *a2;
  PreferenceValues.subscript.getter();
  if (v5 != 2)
  {
    v4 = v5 & 1;
    closure #1 in UIKitPopoverBridge.hostingView<A>(_:didChangePreferences:)(&v4, a1, v2);
  }
}

void closure #1 in UIKitPopoverBridge.hostingView<A>(_:didChangePreferences:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v5);
  v6 = *a1;
  _UIHostingView.colorScheme.getter(&v19);
  if (v19 == 2 || ((v6 ^ v19) & 1) != 0)
  {
    v7 = *(a3 + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_presentedVC);
    if (v7)
    {
      v8 = *&v7[direct field offset for UIHostingController.host];
      v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0xF8);
      v10 = *(v8 + v9);
      *(v8 + v9) = v6;
      v11 = v8;
      v12 = v7;
      specialized _UIHostingView.didChangeColorScheme(from:)(v10);

      v13 = [v12 presentationController];
      if (v13)
      {
        v14 = v13;
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v16 = v15;
LABEL_10:
          UIPresentationController.traitOverrides.getter();
          UIMutableTraits.userInterfaceStyle.setter();
          UIPresentationController.traitOverrides.setter();

LABEL_11:
          return;
        }
      }

      v17 = [v12 popoverPresentationController];
      if (!v17)
      {
        goto LABEL_11;
      }

      v18 = v17;
      v16 = [v17 adaptiveSheetPresentationController];

      if (!v16)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }
}

uint64_t UIKitPopoverBridge.hostingView<A>(_:willUpdate:)(uint64_t a1, uint64_t a2)
{
  _UIHostingView.colorScheme.getter(v5);
  EnvironmentValues.explicitPreferredColorScheme.setter();
  v5[0] = UIKitPopoverBridge.defaultPopoverSize.getter();
  v5[1] = v3;
  v6 = 0;
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>, &type metadata for EnvironmentValues.__Key_defaultPresentationSize, &protocol witness table for EnvironmentValues.__Key_defaultPresentationSize, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>, &type metadata for EnvironmentValues.__Key_defaultPresentationSize, &protocol witness table for EnvironmentValues.__Key_defaultPresentationSize);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

double UIKitPopoverBridge.defaultPopoverSize.getter()
{
  v0 = [objc_opt_self() defaultPopoverMetrics];
  v1 = UIKitPopoverBridge.presenter.getter();
  if (v1 && (v2 = v1, v3 = [v1 viewIfLoaded], v2, v3) && (v4 = objc_msgSend(v3, sel_window), v3, v4) && (objc_msgSend(v4, sel_bounds), v6 = v5, v8 = v7, v10 = v9, v12 = v11, v4, v17.origin.x = v6, v17.origin.y = v8, v17.size.width = v10, v17.size.height = v12, CGRectGetWidth(v17) >= 1024.0))
  {
    v13 = &selRef_defaultPreferredLargeContentSize;
  }

  else
  {
    v13 = &selRef_defaultPreferredSmallContentSize;
  }

  [v0 *v13];
  v15 = v14;

  return v15;
}

uint64_t closure #1 in PopoverPresentationDelegate.popoverPresentationController(_:willRepositionPopoverTo:in:)(uint64_t a1, _OWORD *a2)
{
  v4 = a1 + OBJC_IVAR____TtC7SwiftUI27PopoverPresentationDelegate_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v11, a1, ObjectType, v6);
    swift_unknownObjectRelease();
    if (v11[0])
    {
      v9 = v12;
      v10 = v13;
      v8 = v14;
      result = outlined destroy of PopoverPresentationDelegate.PopoverSource(v11);
      if ((v8 & 1) == 0)
      {
        *a2 = v9;
        a2[1] = v10;
      }
    }

    else
    {
      return outlined destroy of PopoverPresentation?(v11, &lazy cache variable for type metadata for PopoverPresentationDelegate.PopoverSource?, &type metadata for PopoverPresentationDelegate.PopoverSource, MEMORY[0x1E69E6720]);
    }
  }

  return result;
}

UIModalPresentationStyle __swiftcall PopoverPresentationDelegate.adaptivePresentationStyle(for:traitCollection:)(UIPresentationController a1, UITraitCollection traitCollection)
{
  v5 = v2 + OBJC_IVAR____TtC7SwiftUI27PopoverPresentationDelegate_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 16))(v2, ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = [(objc_class *)a1.super.isa presentedViewController];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
      if (swift_dynamicCastClass())
      {
        v10 = specialized PresentationHostingController.adaptivePresentationStyle(traitCollection:kind:)(traitCollection.super.isa, 1);

        return v10;
      }
    }
  }

  if ([(objc_class *)traitCollection.super.isa horizontalSizeClass]== 1)
  {
    return 2;
  }

  if ([(objc_class *)traitCollection.super.isa verticalSizeClass]== 1)
  {
    return 2;
  }

  return -1;
}

uint64_t destroy for UIKitPopoverBridge.PresentationKind(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 3)
  {
    v1 = *a1 + 3;
  }

  if (!v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

__n128 initializeWithCopy for UIKitPopoverBridge.PresentationKind(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2 >= 3)
  {
    v2 = *a2 + 3;
  }

  if (v2 == 2)
  {
    *a1 = *a2;
    *(a1 + 40) = 2;
  }

  else if (v2 == 1)
  {
    *a1 = *a2;
    *(a1 + 40) = 1;
  }

  else if (v2)
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  else
  {
    v3 = *(a2 + 24);
    *(a1 + 24) = v3;
    (**(v3 - 8))();
    *(a1 + 40) = 0;
  }

  return result;
}

__n128 assignWithCopy for UIKitPopoverBridge.PresentationKind(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 40);
    if (v2 >= 3)
    {
      v2 = *a1 + 3;
    }

    if (!v2)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 40);
    if (v6 >= 3)
    {
      v6 = *a2 + 3;
    }

    if (v6 == 2)
    {
      *a1 = *a2;
      *(a1 + 40) = 2;
    }

    else if (v6 == 1)
    {
      *a1 = *a2;
      *(a1 + 40) = 1;
    }

    else if (v6)
    {
      result = *a2;
      v9 = *(a2 + 16);
      *(a1 + 25) = *(a2 + 25);
      *a1 = result;
      *(a1 + 16) = v9;
    }

    else
    {
      v7 = *(a2 + 24);
      *(a1 + 24) = v7;
      *(a1 + 32) = *(a2 + 32);
      v8 = a1;
      (**(v7 - 8))();
      *(v8 + 40) = 0;
    }
  }

  return result;
}

__n128 assignWithTake for UIKitPopoverBridge.PresentationKind(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 40);
    if (v2 >= 3)
    {
      v2 = *a1 + 3;
    }

    if (!v2)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 40);
    if (v6 >= 3)
    {
      v6 = *a2 + 3;
    }

    if (v6 == 2)
    {
      *a1 = *a2;
      *(a1 + 40) = 2;
    }

    else if (v6 == 1)
    {
      *a1 = *a2;
      *(a1 + 40) = 1;
    }

    else if (v6)
    {
      v8 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v8;
      result = *(a2 + 25);
      *(a1 + 25) = result;
    }

    else
    {
      result = *a2;
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UIKitPopoverBridge.PresentationKind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UIKitPopoverBridge.PresentationKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t getEnumTag for UIKitPopoverBridge.PresentationKind(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for UIKitPopoverBridge.PresentationKind(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type DismissingReason and conformance DismissingReason()
{
  result = lazy protocol witness table cache variable for type DismissingReason and conformance DismissingReason;
  if (!lazy protocol witness table cache variable for type DismissingReason and conformance DismissingReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DismissingReason and conformance DismissingReason);
  }

  return result;
}

uint64_t one-time initialization function for willPresent()
{
  result = MEMORY[0x18D00C850](0xD000000000000018, 0x800000018CD55A10);
  static SheetPopoverBridgeNotifications.willPresent = result;
  return result;
}

uint64_t specialized static UIKitPopoverBridge.PresentationKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of UIKitPopoverBridge.PresentationKind(a1, v9);
  outlined init with copy of UIKitPopoverBridge.PresentationKind(a2, v11);
  if (v10 <= 1u)
  {
    if (!v10)
    {
      outlined init with copy of UIKitPopoverBridge.PresentationKind(v9, v8);
      if (v12)
      {
        outlined destroy of AnyHashable(v8);
        goto LABEL_12;
      }

      v6[0] = *v11;
      v6[1] = *&v11[16];
      v7 = *&v11[32];
      v3 = MEMORY[0x18D00E7E0](v8, v6);
      outlined destroy of AnyHashable(v6);
      outlined destroy of AnyHashable(v8);
LABEL_14:
      outlined destroy of UIKitPopoverBridge.PresentationKind(v9);
      return v3 & 1;
    }

    outlined init with copy of UIKitPopoverBridge.PresentationKind(v9, v8);
    if (v12 != 1)
    {
      goto LABEL_12;
    }

LABEL_9:
    v3 = v8[0] == *v11;
    goto LABEL_14;
  }

  if (v10 != 2)
  {
    if (v12 == 3)
    {
      v4 = vorrq_s8(*&v11[8], *&v11[24]);
      if (!(*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | *v11))
      {
        outlined destroy of UIKitPopoverBridge.PresentationKind(v9);
        v3 = 1;
        return v3 & 1;
      }
    }

    goto LABEL_12;
  }

  outlined init with copy of UIKitPopoverBridge.PresentationKind(v9, v8);
  if (v12 == 2)
  {
    goto LABEL_9;
  }

LABEL_12:
  outlined destroy of SearchEnvironmentStorage.BoundProperties(v9, type metadata accessor for (UIKitPopoverBridge.PresentationKind, UIKitPopoverBridge.PresentationKind));
  v3 = 0;
  return v3 & 1;
}

uint64_t specialized UIPopoverArrowDirection.init(edges:layoutDirection:)(__int16 a1, _BYTE *a2)
{
  if ((a1 & 0x100) != 0)
  {
    return 15;
  }

  v2 = a1;
  if ((a1 & 1) == 0)
  {
    if ((a1 & 2) == 0)
    {
      result = 0;
      if ((v2 & 4) == 0)
      {
        if ((v2 & 8) != 0)
        {
          v4 = 8;
          if (*a2)
          {
            return 4;
          }

          return v4;
        }

        return result;
      }

      goto LABEL_22;
    }

    v5 = 0;
    goto LABEL_16;
  }

  if ((a1 & 2) != 0)
  {
    v5 = 1;
LABEL_16:
    v6 = 4;
    if (*a2)
    {
      v6 = 8;
    }

    result = v5 | v6;
    if ((v2 & 4) == 0)
    {
      if ((v2 & 8) == 0)
      {
        return result;
      }

LABEL_23:
      if (*a2)
      {
        if ((result & 4) == 0)
        {
          return result | 4;
        }
      }

      else if ((result & 8) == 0)
      {
        return result | 8;
      }

      return result;
    }

LABEL_22:
    result |= 2uLL;
    if ((v2 & 8) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

  if ((a1 & 4) != 0)
  {
    result = 1;
    goto LABEL_22;
  }

  if ((a1 & 8) == 0)
  {
    return 1;
  }

  v7 = 8;
  if (*a2)
  {
    v7 = 4;
  }

  return v7 | 1;
}

id *specialized PopoverPresentationDelegate.updateAnchor(_:presentationController:)(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC7SwiftUI27PopoverPresentationDelegate_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    return outlined destroy of PopoverPresentation?(v16, &lazy cache variable for type metadata for PopoverPresentationDelegate.PopoverSource?, &type metadata for PopoverPresentationDelegate.PopoverSource, MEMORY[0x1E69E6720]);
  }

  v5 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  (*(v5 + 8))(v16, v1, ObjectType, v5);
  swift_unknownObjectRelease();
  if (!*&v16[0])
  {
    return outlined destroy of PopoverPresentation?(v16, &lazy cache variable for type metadata for PopoverPresentationDelegate.PopoverSource?, &type metadata for PopoverPresentationDelegate.PopoverSource, MEMORY[0x1E69E6720]);
  }

  outlined init with take of PopoverPresentationDelegate.PopoverSource(v16, v18);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v20;
    v9 = a1;
    [v7 setPermittedArrowDirections_];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [a1 setBarButtonItem_];

LABEL_7:
LABEL_15:

    return outlined destroy of PopoverPresentationDelegate.PopoverSource(v18);
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    swift_unknownObjectRetain();
    [a1 setSourceItem_];
    swift_unknownObjectRelease_n();
    goto LABEL_15;
  }

  [a1 setSourceView_];
  if (v19)
  {
    goto LABEL_15;
  }

  [a1 setSourceRect_];
  if (v7)
  {
    if (*(v2 + OBJC_IVAR____TtC7SwiftUI27PopoverPresentationDelegate_isLayoutPreventionActive))
    {
      goto LABEL_15;
    }

    v7 = v7;
    v15 = [v7 containerView];
    [v15 setNeedsLayout];

    v11 = [v7 containerView];
    [v11 layoutIfNeeded];
    goto LABEL_7;
  }

  return outlined destroy of PopoverPresentationDelegate.PopoverSource(v18);
}