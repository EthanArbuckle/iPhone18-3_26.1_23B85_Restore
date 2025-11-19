uint64_t sub_10046976C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_10007EBC0(&qword_1006B0038);
  v9 = __chkstk_darwin(v8 - 8);
  v64 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v68 = &v47[-v11];
  v12 = type metadata accessor for FMFLabelledLocation();
  v13 = __chkstk_darwin(v12);
  v57 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v17 = &v47[-v16];
  result = __chkstk_darwin(v15);
  v21 = &v47[-v19];
  v49 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v62 = *(v20 + 16);
    v63 = v20 + 16;
    v23 = *(v20 + 72);
    v58 = (v20 + 8);
    v59 = &v47[-v19];
    v55 = (v20 + 32);
    v56 = v22;
    v24 = v22 + v23 * (a3 - 1);
    v54 = -v23;
    v25 = a1 - a3;
    v48 = v23;
    v26 = v22 + v23 * a3;
    v60 = v17;
    v61 = v12;
LABEL_6:
    v52 = v24;
    v53 = a3;
    v50 = v26;
    v51 = v25;
    v69 = v24;
    while (1)
    {
      v65 = v25;
      v66 = v26;
      v28 = v62;
      v62(v21, v26, v12);
      v28(v17, v69, v12);
      v29 = v68;
      FMFLabelledLocation.label.getter();
      v30 = type metadata accessor for FMFLabel();
      v31 = *(v30 - 8);
      v32 = *(v31 + 48);
      result = v32(v29, 1, v30);
      if (result == 1)
      {
        break;
      }

      v33 = v68;
      FMFLabel.localizedValue.getter();
      v34 = *(v31 + 8);
      v34(v33, v30);
      v35 = String.lowercased()();
      object = v35._object;

      v36 = v64;
      FMFLabelledLocation.label.getter();
      result = v32(v36, 1, v30);
      if (result == 1)
      {
        __break(1u);
        break;
      }

      FMFLabel.localizedValue.getter();
      v34(v36, v30);
      v37 = String.lowercased()();

      if (v35._countAndFlagsBits == v37._countAndFlagsBits && object == v37._object)
      {

        v27 = *v58;
        v17 = v60;
        v12 = v61;
        (*v58)(v60, v61);
        v21 = v59;
        result = v27(v59, v12);
LABEL_5:
        a3 = v53 + 1;
        v24 = v52 + v48;
        v25 = v51 - 1;
        v26 = v50 + v48;
        if (v53 + 1 == v49)
        {
          return result;
        }

        goto LABEL_6;
      }

      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v39 = *v58;
      v17 = v60;
      v12 = v61;
      (*v58)(v60, v61);
      v21 = v59;
      result = v39(v59, v12);
      v40 = v65;
      v41 = v66;
      if (v38)
      {
        if (!v56)
        {
          goto LABEL_18;
        }

        v42 = *v55;
        v43 = v57;
        (*v55)(v57, v66, v12);
        v44 = v17;
        v45 = v69;
        swift_arrayInitWithTakeFrontToBack();
        result = v42(v45, v43, v12);
        v69 = v45 + v54;
        v17 = v44;
        v26 = v41 + v54;
        v46 = __CFADD__(v40, 1);
        v25 = v40 + 1;
        if (!v46)
        {
          continue;
        }
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_100469C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for FMFFriend();
  v9 = __chkstk_darwin(v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v48 = &v34 - v12;
  result = __chkstk_darwin(v11);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v14 + 16);
    v46 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v42 = (v14 + 32);
    v43 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      v45(v47, v21, v8);
      v24(v48, v23, v8);
      v25 = FMFFriend.name.getter();
      v27 = v26;
      if (FMFFriend.name.getter() == v25 && v28 == v27)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        result = (v22)(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v30 = *v18;
      (*v18)(v48, v8);
      result = (v30)(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100469F3C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v151 = a4;
  v149 = a1;
  v5 = sub_10007EBC0(&qword_1006B0038);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v146 - v10;
  v12 = __chkstk_darwin(v9);
  v159 = &v146 - v13;
  __chkstk_darwin(v12);
  v160 = &v146 - v14;
  v15 = type metadata accessor for FMFLabelledLocation();
  v16 = __chkstk_darwin(v15);
  v153 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v169 = &v146 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v146 - v21;
  v23 = __chkstk_darwin(v20);
  v181 = &v146 - v24;
  v25 = __chkstk_darwin(v23);
  v164 = &v146 - v26;
  v27 = __chkstk_darwin(v25);
  v163 = &v146 - v28;
  v29 = __chkstk_darwin(v27);
  result = __chkstk_darwin(v29);
  v162 = a3;
  v34 = *(a3 + 8);
  v161 = v33;
  if (v34 < 1)
  {
    v36 = _swiftEmptyArrayStorage;
LABEL_109:
    a3 = *v149;
    if (!*v149)
    {
      goto LABEL_155;
    }

    v8 = v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_145;
    }

    result = v8;
LABEL_112:
    v183 = result;
    v8 = *(result + 16);
    v139 = v161;
    if (v8 >= 2)
    {
      while (*v162)
      {
        v140 = *(result + 16 * v8);
        v141 = result;
        v142 = *(result + 16 * (v8 - 1) + 40);
        v143 = v166;
        sub_10046BA44(&(*v162)[v139[9] * v140], &(*v162)[v139[9] * *(result + 16 * (v8 - 1) + 32)], &(*v162)[v139[9] * v142], a3);
        v166 = v143;
        if (v143)
        {
        }

        if (v142 < v140)
        {
          goto LABEL_138;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v141 = sub_10025EFD4(v141);
        }

        if (v8 - 2 >= *(v141 + 2))
        {
          goto LABEL_139;
        }

        v144 = &v141[16 * v8];
        *v144 = v140;
        *(v144 + 1) = v142;
        v183 = v141;
        sub_10025EF48(v8 - 1);
        result = v183;
        v8 = *(v183 + 16);
        v139 = v161;
        if (v8 <= 1)
        {
        }
      }

      goto LABEL_153;
    }
  }

  v147 = &v146 - v31;
  v148 = v32;
  v35 = 0;
  v175 = v33 + 1;
  v176 = v33 + 2;
  v172 = v33 + 4;
  v36 = _swiftEmptyArrayStorage;
  v171 = v8;
  v173 = v15;
  v174 = v11;
  v182 = v22;
  while (1)
  {
    v154 = v36;
    v150 = v35;
    if (v35 + 1 < v34)
    {
      v165 = v34;
      v37 = *v162;
      v38 = v33[9];
      v39 = v33[2];
      v40 = v147;
      object = &(*v162)[v38 * (v35 + 1)];
      v39(v147);
      v179 = v37;
      v177 = v38;
      v41 = &v37[v38 * v35];
      v42 = v40;
      v43 = v148;
      v168 = v39;
      (v39)(v148, v41, v15);
      v44 = v166;
      LODWORD(v170) = sub_1004647DC(v40, v43);
      v166 = v44;
      v8 = v164;
      if (!v44)
      {
        a3 = *v175;
        (*v175)(v43, v15);
        v167 = a3;
        result = (a3)(v42, v15);
        v45 = (v150 + 2);
        v46 = object;
        v47 = v177;
        v48 = v179 + v177 * (v150 + 2);
        v49 = v165;
        while (v49 != v45)
        {
          v178 = v48;
          v179 = v45;
          v53 = v168;
          v168(v163);
          object = v46;
          v53(v8, v46, v15);
          v54 = v160;
          FMFLabelledLocation.label.getter();
          v55 = type metadata accessor for FMFLabel();
          v56 = *(v55 - 8);
          v57 = *(v56 + 48);
          result = v57(v54, 1, v55);
          if (result == 1)
          {
            goto LABEL_150;
          }

          FMFLabel.localizedValue.getter();
          v58 = *(v56 + 8);
          v58(v54, v55);
          v59 = String.lowercased()();

          v60 = v159;
          FMFLabelledLocation.label.getter();
          result = v57(v60, 1, v55);
          if (result == 1)
          {
            goto LABEL_149;
          }

          FMFLabel.localizedValue.getter();
          v58(v60, v55);
          v61 = String.lowercased()();

          v15 = v173;
          if (v59._countAndFlagsBits == v61._countAndFlagsBits && v59._object == v61._object)
          {
            v50 = 0;
          }

          else
          {
            v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v22 = v182;
          v49 = v165;
          v47 = v177;
          v51 = object;

          v8 = v164;
          a3 = v175;
          v52 = v167;
          (v167)(v164, v15);
          result = v52(v163, v15);
          v45 = (v179 + 1);
          v48 = &v178[v47];
          v46 = &v51[v47];
          v11 = v174;
          if ((v170 ^ v50))
          {
            v49 = v179;
            break;
          }
        }

        v33 = v161;
        v62 = v151;
        v63 = v154;
        v35 = v150;
        if (v170)
        {
          if (v49 < v150)
          {
            goto LABEL_144;
          }

          if (v150 < v49)
          {
            v8 = v47 * (v49 - 1);
            v64 = v49;
            v65 = v49 * v47;
            v165 = v64;
            v66 = v150;
            v67 = v150 * v47;
            do
            {
              if (v66 != --v64)
              {
                v68 = *v162;
                if (!*v162)
                {
                  goto LABEL_152;
                }

                a3 = &v68[v67];
                v69 = *v172;
                (*v172)(v153, &v68[v67], v15, v63);
                if (v67 < v8 || a3 >= &v68[v65])
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v67 != v8)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = v69(&v68[v8], v153, v15);
                v33 = v161;
                v62 = v151;
                v63 = v154;
                v22 = v182;
                v47 = v177;
              }

              ++v66;
              v8 -= v47;
              v65 -= v47;
              v67 += v47;
            }

            while (v66 < v64);
            v11 = v174;
            v35 = v150;
            v49 = v165;
          }
        }

        goto LABEL_31;
      }

      v145 = *v175;
      (*v175)(v43, v15);
      v145(v42, v15);
    }

    v49 = v35 + 1;
    v62 = v151;
LABEL_31:
    v70 = v162[1];
    if (v49 >= v70)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v49, v35))
    {
      goto LABEL_141;
    }

    if (v49 - v35 >= v62)
    {
LABEL_40:
      v72 = v49;
      if (v49 < v35)
      {
        goto LABEL_140;
      }

      goto LABEL_41;
    }

    if (__OFADD__(v35, v62))
    {
      goto LABEL_142;
    }

    if (v35 + v62 >= v70)
    {
      v71 = v162[1];
    }

    else
    {
      v71 = v35 + v62;
    }

    if (v71 < v35)
    {
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      result = sub_10025EFD4(v8);
      goto LABEL_112;
    }

    if (v49 == v71)
    {
      goto LABEL_40;
    }

    v119 = *v162;
    v120 = v33[9];
    v170 = v33[2];
    v121 = v119 + v120 * (v49 - 1);
    v167 = -v120;
    v168 = v119;
    v122 = (v35 - v49);
    v152 = v120;
    v123 = v119 + v49 * v120;
    v155 = v71;
LABEL_94:
    v165 = v49;
    v156 = v123;
    v157 = v122;
    v124 = v122;
    v158 = v121;
    v125 = v121;
LABEL_95:
    v178 = v123;
    v179 = v124;
    v126 = v170;
    v170(v181, v123, v15);
    v177 = v125;
    v126(v22, v125, v15);
    FMFLabelledLocation.label.getter();
    v127 = type metadata accessor for FMFLabel();
    v128 = *(v127 - 8);
    v129 = *(v128 + 48);
    result = v129(v11, 1, v127);
    if (result == 1)
    {
      goto LABEL_147;
    }

    FMFLabel.localizedValue.getter();
    v130 = *(v128 + 8);
    v130(v11, v127);
    v131 = String.lowercased()();
    object = v131._object;

    v132 = v171;
    FMFLabelledLocation.label.getter();
    result = v129(v132, 1, v127);
    if (result == 1)
    {
      break;
    }

    FMFLabel.localizedValue.getter();
    v130(v132, v127);
    v133 = String.lowercased()();

    v15 = v173;
    if (v131._countAndFlagsBits != v133._countAndFlagsBits || object != v133._object)
    {
      v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v8 = v175;
      a3 = *v175;
      v22 = v182;
      (*v175)(v182, v15);
      result = (a3)(v181, v15);
      v11 = v174;
      if ((v134 & 1) == 0)
      {
        goto LABEL_93;
      }

      v135 = v179;
      if (!v168)
      {
        goto LABEL_148;
      }

      a3 = *v172;
      v8 = v169;
      v136 = v178;
      (*v172)(v169, v178, v15);
      v137 = v177;
      swift_arrayInitWithTakeFrontToBack();
      (a3)(v137, v8, v15);
      v125 = &v137[v167];
      v123 = &v136[v167];
      v138 = __CFADD__(v135, 1);
      v124 = v135 + 1;
      if (v138)
      {
        goto LABEL_93;
      }

      goto LABEL_95;
    }

    v8 = v175;
    a3 = *v175;
    v22 = v182;
    (*v175)(v182, v15);
    (a3)(v181, v15);
    v11 = v174;
LABEL_93:
    v49 = v165 + 1;
    v121 = &v158[v152];
    v122 = v157 - 1;
    v123 = &v156[v152];
    v72 = v155;
    if (v165 + 1 != v155)
    {
      goto LABEL_94;
    }

    if (v155 < v150)
    {
      goto LABEL_140;
    }

LABEL_41:
    result = swift_isUniquelyReferenced_nonNull_native();
    v155 = v72;
    if (result)
    {
      v36 = v154;
    }

    else
    {
      result = sub_10008B8B8(0, *(v154 + 2) + 1, 1, v154);
      v36 = result;
    }

    a3 = *(v36 + 2);
    v73 = *(v36 + 3);
    v8 = a3 + 1;
    v33 = v161;
    if (a3 >= v73 >> 1)
    {
      result = sub_10008B8B8((v73 > 1), a3 + 1, 1, v36);
      v33 = v161;
      v36 = result;
    }

    *(v36 + 2) = v8;
    v74 = &v36[16 * a3];
    v75 = v155;
    *(v74 + 4) = v150;
    *(v74 + 5) = v75;
    if (!*v149)
    {
      goto LABEL_154;
    }

    if (a3)
    {
      v76 = *v149;
      while (1)
      {
        a3 = v8 - 1;
        if (v8 >= 4)
        {
          break;
        }

        if (v8 == 3)
        {
          v77 = *(v36 + 4);
          v78 = *(v36 + 5);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_61:
          if (v80)
          {
            goto LABEL_129;
          }

          v93 = &v36[16 * v8];
          v95 = *v93;
          v94 = *(v93 + 1);
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_132;
          }

          v99 = &v36[16 * a3 + 32];
          v101 = *v99;
          v100 = *(v99 + 1);
          v87 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v87)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v97, v102))
          {
            goto LABEL_136;
          }

          if (v97 + v102 >= v79)
          {
            if (v79 < v102)
            {
              a3 = v8 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v103 = &v36[16 * v8];
        v105 = *v103;
        v104 = *(v103 + 1);
        v87 = __OFSUB__(v104, v105);
        v97 = v104 - v105;
        v98 = v87;
LABEL_75:
        if (v98)
        {
          goto LABEL_131;
        }

        v106 = &v36[16 * a3];
        v108 = *(v106 + 4);
        v107 = *(v106 + 5);
        v87 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v87)
        {
          goto LABEL_134;
        }

        if (v109 < v97)
        {
          goto LABEL_3;
        }

LABEL_82:
        v114 = a3 - 1;
        if (a3 - 1 >= v8)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v162)
        {
          goto LABEL_151;
        }

        v115 = v36;
        v8 = *&v36[16 * v114 + 32];
        v116 = *&v36[16 * a3 + 40];
        v117 = v166;
        sub_10046BA44(&(*v162)[v33[9] * v8], &(*v162)[v33[9] * *&v36[16 * a3 + 32]], &(*v162)[v33[9] * v116], v76);
        v166 = v117;
        if (v117)
        {
        }

        if (v116 < v8)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_10025EFD4(v115);
        }

        if (v114 >= *(v115 + 2))
        {
          goto LABEL_126;
        }

        v118 = &v115[16 * v114];
        *(v118 + 4) = v8;
        *(v118 + 5) = v116;
        v183 = v115;
        result = sub_10025EF48(a3);
        v36 = v183;
        v8 = *(v183 + 16);
        v33 = v161;
        if (v8 <= 1)
        {
          goto LABEL_3;
        }
      }

      v81 = &v36[16 * v8 + 32];
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_127;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_128;
      }

      v88 = &v36[16 * v8];
      v90 = *v88;
      v89 = *(v88 + 1);
      v87 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v87)
      {
        goto LABEL_130;
      }

      v87 = __OFADD__(v79, v91);
      v92 = v79 + v91;
      if (v87)
      {
        goto LABEL_133;
      }

      if (v92 >= v84)
      {
        v110 = &v36[16 * a3 + 32];
        v112 = *v110;
        v111 = *(v110 + 1);
        v87 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v87)
        {
          goto LABEL_137;
        }

        if (v79 < v113)
        {
          a3 = v8 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

LABEL_3:
    v34 = v162[1];
    v35 = v155;
    if (v155 >= v34)
    {
      goto LABEL_109;
    }
  }

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
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

uint64_t sub_10046AE94(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = type metadata accessor for FMFFriend();
  v10 = __chkstk_darwin(v9);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v149 = &v128 - v13;
  v14 = __chkstk_darwin(v12);
  v154 = &v128 - v15;
  v16 = __chkstk_darwin(v14);
  v153 = &v128 - v17;
  v18 = __chkstk_darwin(v16);
  v146 = &v128 - v19;
  v20 = __chkstk_darwin(v18);
  v145 = &v128 - v21;
  v22 = __chkstk_darwin(v20);
  v133 = &v128 - v23;
  result = __chkstk_darwin(v22);
  v132 = &v128 - v26;
  v27 = *(a3 + 1);
  v143 = v25;
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_103:
    v31 = *v134;
    if (!*v134)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v143;
    if (result)
    {
LABEL_105:
      v155 = v29;
      v122 = *(v29 + 16);
      if (v122 >= 2)
      {
        while (1)
        {
          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v124 = a3;
          v125 = *(v29 + 16 * v122);
          a3 = v29;
          v126 = *(v29 + 16 * (v122 - 1) + 32);
          v29 = *(v29 + 16 * (v122 - 1) + 40);
          sub_10046C410(&v123[*(v5 + 72) * v125], &v123[*(v5 + 72) * v126], &v123[*(v5 + 72) * v29], v31);
          if (v6)
          {
          }

          if (v29 < v125)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_10025EFD4(a3);
          }

          if (v122 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v127 = &a3[16 * v122];
          *v127 = v125;
          *(v127 + 1) = v29;
          v155 = a3;
          result = sub_10025EF48(v122 - 1);
          v29 = v155;
          v122 = *(v155 + 16);
          a3 = v124;
          if (v122 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_10025EFD4(v29);
    v29 = result;
    goto LABEL_105;
  }

  v129 = a4;
  v28 = 0;
  v151 = v25 + 16;
  v152 = (v25 + 8);
  v150 = (v25 + 32);
  v29 = _swiftEmptyArrayStorage;
  v135 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v137 = v28;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v130 = v29;
      v32 = *a3;
      v33 = *(v143 + 72);
      v5 = v28 + 1;
      v34 = &v32[v33 * v31];
      v35 = *(v143 + 16);
      v35(v132, v34, v9);
      v144 = v33;
      v140 = v35;
      v35(v133, &v32[v33 * v30], v9);
      v31 = FMFFriend.name.getter();
      v37 = v36;
      v38 = FMFFriend.name.getter();
      v131 = v6;
      if (v38 == v31 && v39 == v37)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v40 = *v152;
      (*v152)(v133, v9);
      v139 = v40;
      result = (v40)(v132, v9);
      v41 = (v137 + 2);
      v42 = v144 * (v137 + 2);
      v43 = &v32[v42];
      v44 = v144 * v5;
      v45 = &v32[v144 * v5];
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v141)
        {
          break;
        }

        v147 = v5;
        v148 = v41;
        v49 = v140;
        (v140)(v145, v43, v9);
        v49(v146, v45, v9);
        v50 = FMFFriend.name.getter();
        v52 = v51;
        if (FMFFriend.name.getter() == v50 && v53 == v52)
        {
          v46 = 0;
        }

        else
        {
          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        a3 = v148;

        v31 = v139;
        v139(v146, v9);
        result = (v31)(v145, v9);
        v47 = v142 ^ v46;
        v41 = a3 + 1;
        v43 += v144;
        v45 += v144;
        v48 = v147;
        v5 = v147 + 1;
        v44 = v6 + v144;
        v42 = v29 + v144;
      }

      while ((v47 & 1) == 0);
      if (v142)
      {
        v30 = v137;
        if (a3 < v137)
        {
          goto LABEL_132;
        }

        if (v137 < a3)
        {
          v54 = v137 * v144;
          v55 = v137;
          do
          {
            if (v55 != v48)
            {
              v57 = *v135;
              if (!*v135)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v148 = *v150;
              (v148)(v138, v57 + v54, v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v148)(v57 + v6, v138, v9);
              v30 = v137;
              v48 = v5;
            }

            ++v55;
            v6 -= v144;
            v29 -= v144;
            v54 += v144;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
      }

      else
      {
        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
      }
    }

    v58 = *(a3 + 1);
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v129)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10008B8B8(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_10008B8B8((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v134;
    if (!*v134)
    {
      goto LABEL_140;
    }

    v144 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
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
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_10046C410(&v118[*(v143 + 72) * v119], &v118[*(v143 + 72) * v120], &v118[*(v143 + 72) * v29], v79);
        if (v6)
        {
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_10025EFD4(a3);
        }

        if (v117 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v121 = &a3[16 * v117];
        *(v121 + 4) = v119;
        *(v121 + 5) = v29;
        v155 = a3;
        result = sub_10025EF48(v31);
        v29 = v155;
        v77 = *(v155 + 16);
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = *(a3 + 1);
    v28 = v144;
    if (v144 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v129);
  if (__OFADD__(v30, v129))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = *(a3 + 1);
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v130 = v29;
  v131 = v6;
  v60 = *a3;
  v61 = *(v143 + 72);
  v62 = *(v143 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v147 = -v61;
  v148 = v60;
  v64 = v30 - v31;
  v136 = v61;
  v65 = &v60[v31 * v61];
  v139 = v59;
LABEL_43:
  v144 = v31;
  v140 = v65;
  v141 = v64;
  v142 = v63;
  v67 = v63;
  while (1)
  {
    v62(v153, v65, v9);
    (v62)(v154, v67);
    v5 = FMFFriend.name.getter();
    v69 = v68;
    if (FMFFriend.name.getter() == v5 && v70 == v69)
    {

      v66 = *v152;
      (*v152)(v154, v9);
      v66(v153, v9);
LABEL_42:
      v31 = v144 + 1;
      v63 = v142 + v136;
      v64 = v141 - 1;
      v65 = &v140[v136];
      if ((v144 + 1) == v139)
      {
        v31 = v139;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v71 = *v152;
    (*v152)(v154, v9);
    result = (v71)(v153, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v148)
    {
      break;
    }

    v72 = v149;
    v5 = v150;
    v73 = *v150;
    (*v150)(v149, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v73)(v67, v72, v9);
    v67 += v147;
    v65 += v147;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_10046BA44(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_10007EBC0(&qword_1006B0038);
  v9 = __chkstk_darwin(v8 - 8);
  v77 = (&v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v13 = (&v71 - v12);
  v14 = __chkstk_darwin(v11);
  object = &v71 - v15;
  __chkstk_darwin(v14);
  v17 = &v71 - v16;
  v18 = type metadata accessor for FMFLabelledLocation();
  v80 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v78 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v83 = &v71 - v22;
  v23 = __chkstk_darwin(v21);
  result = __chkstk_darwin(v23);
  v85 = &v71 - v26;
  v81 = *(v27 + 72);
  if (!v81)
  {
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (a2 - a1 == 0x8000000000000000 && v81 == -1)
  {
    goto LABEL_72;
  }

  v28 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v81 == -1)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    return result;
  }

  v29 = (a2 - a1) / v81;
  v91 = a1;
  v90 = a4;
  v82 = v18;
  if (v29 >= v28 / v81)
  {
    v31 = v28 / v81 * v81;
    if (a4 < a2 || a2 + v31 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v32 = v78;
      v33 = v13;
    }

    else
    {
      v32 = v78;
      v33 = v13;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v50 = a4 + v31;
    if (v31 >= 1)
    {
      v51 = -v81;
      v52 = v50;
      v74 = v33;
      v75 = (v80 + 16);
      v73 = (v80 + 8);
      v86 = a4;
      v87 = a1;
      v84 = -v81;
      do
      {
        v71 = v50;
        v53 = a2;
        v54 = a2 + v51;
        v88 = v54;
        v76 = v53;
        while (1)
        {
          if (v53 <= a1)
          {
            v91 = v53;
            v89 = v71;
            goto LABEL_70;
          }

          v80 = a3;
          v81 = v52;
          v72 = v50;
          v55 = (v52 + v51);
          v56 = *v75;
          v85 = v55;
          v56(v83);
          (v56)(v32, v54, v18);
          FMFLabelledLocation.label.getter();
          v57 = type metadata accessor for FMFLabel();
          v58 = *(v57 - 8);
          v59 = *(v58 + 48);
          result = v59(v33, 1, v57);
          if (result == 1)
          {
            goto LABEL_76;
          }

          FMFLabel.localizedValue.getter();
          v60 = *(v58 + 8);
          v60(v33, v57);
          v61 = String.lowercased()();
          object = v61._object;

          v62 = v77;
          FMFLabelledLocation.label.getter();
          result = v59(v62, 1, v57);
          if (result == 1)
          {
            goto LABEL_77;
          }

          FMFLabel.localizedValue.getter();
          v60(v62, v57);
          v63 = String.lowercased()();

          a1 = v87;
          v18 = v82;
          if (v61._countAndFlagsBits == v63._countAndFlagsBits && object == v63._object)
          {
            v64 = 0;
          }

          else
          {
            v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v65 = v86;
          v66 = v84;

          v67 = v80;
          v68 = v80 + v66;
          v69 = *v73;
          v32 = v78;
          (*v73)(v78, v18);
          v69(v83, v18);
          if (v64)
          {
            break;
          }

          v50 = v85;
          a3 = v68;
          if (v67 < v81 || v68 >= v81)
          {
            swift_arrayInitWithTakeFrontToBack();
            v51 = v84;
            v33 = v74;
            v54 = v88;
          }

          else
          {
            v70 = v67 == v81;
            v51 = v84;
            v33 = v74;
            v54 = v88;
            if (!v70)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v52 = v50;
          v53 = v76;
          if (v85 <= v65)
          {
            a2 = v76;
            goto LABEL_69;
          }
        }

        a3 = v68;
        if (v67 < v76 || v68 >= v76)
        {
          a2 = v88;
          swift_arrayInitWithTakeFrontToBack();
          v50 = v72;
          v51 = v84;
          v33 = v74;
        }

        else
        {
          v70 = v67 == v76;
          v50 = v72;
          v51 = v84;
          v33 = v74;
          a2 = v88;
          if (!v70)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v52 = v81;
      }

      while (v81 > v65);
    }

LABEL_69:
    v91 = a2;
    v89 = v50;
  }

  else
  {
    v30 = v29 * v81;
    v84 = v25;
    if (a4 < a1 || a1 + v30 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v78 = (a4 + v30);
    v89 = a4 + v30;
    if (v30 >= 1 && a2 < a3)
    {
      v35 = *(v80 + 16);
      v76 = a3;
      v77 = v35;
      v80 += 16;
      v74 = (v80 - 8);
      v75 = v17;
      do
      {
        v87 = a1;
        v88 = a2;
        v36 = v77;
        (v77)(v85, a2, v18);
        v86 = a4;
        v36(v84, a4, v18);
        FMFLabelledLocation.label.getter();
        v37 = type metadata accessor for FMFLabel();
        v38 = *(v37 - 8);
        v39 = *(v38 + 48);
        result = v39(v17, 1, v37);
        if (result == 1)
        {
          goto LABEL_74;
        }

        FMFLabel.localizedValue.getter();
        v40 = *(v38 + 8);
        v40(v17, v37);
        v41 = String.lowercased()();
        v83 = v41._object;

        v42 = object;
        FMFLabelledLocation.label.getter();
        result = v39(v42, 1, v37);
        if (result == 1)
        {
          goto LABEL_75;
        }

        FMFLabel.localizedValue.getter();
        v40(v42, v37);
        v43 = String.lowercased()();

        v44 = v81;
        v18 = v82;
        if (v41._countAndFlagsBits == v43._countAndFlagsBits && v83 == v43._object)
        {

          v45 = *v74;
          (*v74)(v84, v18);
          v45(v85, v18);
          v46 = v87;
          a2 = v88;
          a4 = v86;
        }

        else
        {
          v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v48 = *v74;
          (*v74)(v84, v18);
          v48(v85, v18);
          v46 = v87;
          a2 = v88;
          a4 = v86;
          if (v47)
          {
            v17 = v75;
            v49 = v76;
            if (v87 < v88 || v87 >= v88 + v44)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v87 != v88)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v44;
            goto LABEL_39;
          }
        }

        v17 = v75;
        v49 = v76;
        if (v46 < a4 || v46 >= a4 + v44)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v46 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v90 = a4 + v44;
        a4 += v44;
LABEL_39:
        a1 = v46 + v44;
        v91 = a1;
      }

      while (a4 < v78 && a2 < v49);
    }
  }

LABEL_70:
  sub_10025F1B0(&v91, &v90, &v89);
  return 1;
}

uint64_t sub_10046C410(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v71 = type metadata accessor for FMFFriend();
  v8 = *(v71 - 8);
  v9 = __chkstk_darwin(v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v67 = &v59 - v12;
  v13 = __chkstk_darwin(v11);
  v70 = &v59 - v14;
  result = __chkstk_darwin(v13);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = (a2 - a1) / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v22;
    if (v22 < 1)
    {
      v44 = a4 + v22;
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = a4 + v22;
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = (a2 + v42);
          v69 = (a2 + v42);
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = FMFFriend.name.getter();
            v52 = v51;
            if (FMFFriend.name.getter() == v50 && v53 == v52)
            {
              v54 = 0;
            }

            else
            {
              v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = (a4 + v21);
    v72 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = FMFFriend.name.getter();
        v32 = v31;
        if (FMFFriend.name.getter() == v30 && v33 == v32)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = v26 + v66;
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 += v66;
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_10025F1C8(&v74, &v73, &v72);
  return 1;
}

uint64_t sub_10046CAAC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediator) = 0;
  v2 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_myLocation;
  v3 = type metadata accessor for FMFLocation();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedLocation) = 0;
  v4 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_address;
  v5 = type metadata accessor for FMFAddress();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressType;
  v7 = type metadata accessor for FMFLocationAlertAddressType();
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v9 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressLabel;
  v10 = type metadata accessor for FMFLabel();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressRadius;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_friendForFence;
  v13 = type metadata accessor for FMFFriend();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isNotifyMe) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isOtherUsage) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v14 = (v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_doneHandler);
  *v14 = 0;
  v14[1] = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_peopleSubscription) = 0;
  *&v37[8] = &type metadata for SolariumFeatureFlag;
  *&v37[16] = sub_10000BD04();
  LOBYTE(v12) = isFeatureEnabled(_:)();
  sub_100006060(&v36);
  if (v12)
  {
    if (qword_1006AED50 != -1)
    {
      swift_once();
    }

    v15 = &xmmword_1006D4BA0;
  }

  else
  {
    if (qword_1006AED48 != -1)
    {
      swift_once();
    }

    v15 = &xmmword_1006D4B40;
  }

  v16 = v15[5];
  v39 = v15[4];
  v40 = v16;
  v17 = v15[3];
  *&v37[16] = v15[2];
  v38 = v17;
  v18 = v15[1];
  v36 = *v15;
  *v37 = v18;
  v33 = v39;
  v34 = v40;
  v19 = *(&v38 + 1);
  v21 = *&v37[24];
  v20 = v38;
  v32 = *&v37[8];
  v22 = v18;
  v23 = *(&v36 + 1);
  v24 = v36;
  sub_1000BBDE8(&v36, v35);
  v25 = v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_style;
  *v25 = v24;
  *(v25 + 8) = v23;
  *(v25 + 16) = v22;
  *(v25 + 24) = v32;
  *(v25 + 40) = v21;
  *(v25 + 48) = v20;
  *(v25 + 56) = v19;
  *(v25 + 64) = v33;
  *(v25 + 80) = v34;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_doneButton) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_smallRadiusButton) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediumRadiusButton) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_largeRadiusButton) = 0;
  v26 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_radiusButtonsStackView;
  *(v1 + v26) = [objc_allocWithZone(UIStackView) init];
  v27 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_locationRadiusTitleLabel;
  *(v1 + v27) = [objc_allocWithZone(UILabel) init];
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_userDroppedAnnotation) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedAnnotation) = 0;
  v28 = v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion;
  *v28 = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_showingUserLocation) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapSearchResults) = 0;
  v8(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSeachAddressType, 1, 1, v7);
  v29 = (v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSearchedQuery);
  *v29 = 0;
  v29[1] = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_defaultSearchRecords) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isResigningFromTableView) = 0;
  v30 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_contactsDataController;
  type metadata accessor for FMFContactsDataController();
  swift_allocObject();
  *(v1 + v30) = FMFContactsDataController.init(isSnapshotMode:)();
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchController) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_filteredSearchRecords) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10046CF90(void *a1)
{
  v11 = State.rawValue.getter;
  v12 = 0;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_10045B250;
  v10 = &unk_100640410;
  v3 = _Block_copy(&v7);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v11 = sub_10046D864;
  v12 = v4;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_10045B250;
  v10 = &unk_100640460;
  v5 = _Block_copy(&v7);
  v6 = v1;

  [a1 animateAlongsideTransition:v3 completion:v5];
  _Block_release(v5);
  _Block_release(v3);
}

uint64_t sub_10046D110(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

void sub_10046D160()
{
  v1 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isResigningFromTableView;
  v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isResigningFromTableView] = 1;
  v2 = [v0 navigationItem];
  v3 = [v2 searchController];

  if (v3)
  {
    v4 = [v3 searchBar];

    [v4 resignFirstResponder];
  }

  v0[v1] = 0;
}

void *sub_10046D208()
{
  v1 = sub_10007EBC0(&qword_1006B00C8);
  __chkstk_darwin(v1 - 8);
  v3 = &v46 - v2;
  v4 = type metadata accessor for FMFLocationAlertAddressType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v50 = v6;
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v46 - v8;
  v10 = *&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSearchedQuery];
  v9 = *&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSearchedQuery + 8];

  v11 = [v0 navigationItem];
  v12 = [v11 searchController];

  if (v12 && (v13 = [v12 searchBar], v12, v14 = objc_msgSend(v13, "text"), v13, v14))
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (!v9)
    {
LABEL_4:

LABEL_11:
      (*(v5 + 104))(v52, enum case for FMFLocationAlertAddressType.custom(_:), v4);
      goto LABEL_17;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  if (v10 == v15 && v9 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSeachAddressType;
  swift_beginAccess();
  sub_100007204(&v0[v20], v3, &qword_1006B00C8);
  v21 = *(v5 + 48);
  if (v21(v3, 1, v4) == 1)
  {
    (*(v5 + 104))(v52, enum case for FMFLocationAlertAddressType.custom(_:), v4);
    if (v21(v3, 1, v4) != 1)
    {
      sub_100012DF0(v3, &qword_1006B00C8);
    }
  }

  else
  {
    (*(v5 + 32))(v52, v3, v4);
  }

LABEL_17:
  v22 = [v0 navigationItem];
  v23 = [v22 searchController];

  if (v23 && (v24 = [v23 searchBar], v23, v25 = objc_msgSend(v24, "text"), v24, v25))
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  result = *&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView];
  if (result)
  {
    [result removeHandle:1];
    v30 = v0;
    sub_100466954();
    v31 = [objc_allocWithZone(MKLocalSearchRequest) init];
    v32 = String._bridgeToObjectiveC()();
    [v31 setNaturalLanguageQuery:v32];

    result = *&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView];
    v48 = v26;
    v49 = v28;
    if (result)
    {
      [result region];
      [v31 setRegion:?];
      v47 = [objc_allocWithZone(MKLocalSearch) initWithRequest:v31];
      v33 = [objc_opt_self() sharedApplication];
      [v33 setNetworkActivityIndicatorVisible:1];

      v34 = v51;
      v35 = v52;
      (*(v5 + 16))(v51, v52, v4);
      v36 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v37 = v36 + v50;
      v38 = v4;
      v39 = (v36 + v50) & 0xFFFFFFFFFFFFFFF8;
      v40 = swift_allocObject();
      *(v40 + 16) = v30;
      (*(v5 + 32))(v40 + v36, v34, v38);
      *(v40 + v37) = 0;
      v41 = v40 + v39;
      v42 = v49;
      *(v41 + 8) = v48;
      *(v41 + 16) = v42;
      aBlock[4] = sub_1002789D8;
      aBlock[5] = v40;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10012105C;
      aBlock[3] = &unk_1006403E8;
      v43 = _Block_copy(aBlock);
      v44 = v30;

      v45 = v47;
      [v47 startWithCompletionHandler:v43];
      _Block_release(v43);

      return (*(v5 + 8))(v35, v38);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10046D86C()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView);
  if (result)
  {
    return [result addHandleForAnnotation:*(v0 + 24)];
  }

  __break(1u);
  return result;
}

id sub_10046D8E4(double a1)
{
  v12 = 0.0;
  v13 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v3 = [v1 getRed:&v13 green:&v12 blue:&v11 alpha:&v10];
  result = 0;
  if (v3)
  {
    v5 = a1 / 100.0;
    if (a1 / 100.0 + v13 <= 1.0)
    {
      v6 = a1 / 100.0 + v13;
    }

    else
    {
      v6 = 1.0;
    }

    if (v5 + v12 <= 1.0)
    {
      v7 = v5 + v12;
    }

    else
    {
      v7 = 1.0;
    }

    v8 = v5 + v11;
    if (v8 <= 1.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1.0;
    }

    return [objc_allocWithZone(UIColor) initWithRed:v6 green:v7 blue:v9 alpha:v10];
  }

  return result;
}

uint64_t sub_10046D9DC()
{
  v1 = OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber);

  return swift_deallocClassInstance();
}

Swift::Int sub_10046DA90()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10046DE94(&unk_1006C2410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10046DB30()
{
  type metadata accessor for UUID();
  sub_10046DE94(&unk_1006C2410, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10046DBB8()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10046DE94(&unk_1006C2410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10046DC54(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 24))(a1, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10046DCEC(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 32))(a1, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10046DD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 40))(a1, a2, a3, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10046DE94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10046DEDC(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10046DFD0()
{
  v1 = sub_10003BF30();
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005528C0;
  v3 = *(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_learnMoreButton);
  *(inited + 32) = v3;
  v4 = v3;
  sub_10049476C(inited);
  return v1;
}

void *sub_10046E08C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButton;
  v3 = type metadata accessor for FMEmptyListButton();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC6FindMy17FMEmptyListButton_textColor;
  v6 = objc_opt_self();
  *&v4[v5] = [v6 systemBlueColor];
  v4[OBJC_IVAR____TtC6FindMy17FMEmptyListButton_isEnabled] = 1;
  *(v1 + v2) = sub_100038758([v6 tertiarySystemFillColor], 1, 1, 0);
  *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButtonHeight) = 0;
  v7 = OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButton;
  v8 = objc_allocWithZone(v3);
  v9 = OBJC_IVAR____TtC6FindMy17FMEmptyListButton_textColor;
  *&v8[v9] = [v6 systemBlueColor];
  v8[OBJC_IVAR____TtC6FindMy17FMEmptyListButton_isEnabled] = 1;
  *(v1 + v7) = sub_100038758([v6 tertiarySystemFillColor], 1, 1, 0);
  *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButtonHeight) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_devicesSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_cardChangeSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_lastCardPercentage) = 0;
  v10 = OBJC_IVAR____TtC6FindMy12FMNoItemView_learnMoreButton;
  type metadata accessor for FMMultilineButton();
  *(v1 + v10) = [swift_getObjCClassFromMetadata() buttonWithType:1];

  v12 = sub_1000383D8(v11);
  sub_10046EE64();

  return v12;
}

void sub_10046E28C()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_learnMoreButton);
}

id sub_10046E31C()
{
  sub_10046F214();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMNoItemView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10046E438()
{
  v1 = v0;
  sub_10003A898();
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_titleLabel);
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v74._object = 0x8000000100579A00;
  v5._object = 0xED0000454C544954;
  v6.value._object = 0x80000001005799E0;
  v74._countAndFlagsBits = 0xD000000000000018;
  v5._countAndFlagsBits = 0x5F4D4554495F4F4ELL;
  v6.value._countAndFlagsBits = 0xD000000000000013;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v74);

  v8 = String._bridgeToObjectiveC()();

  [v2 setText:v8];

  v9 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_messageLabel);
  v73 = v3;
  v10 = [v3 mainBundle];
  v75._object = 0x8000000100579A00;
  v11._object = 0xEF4547415353454DLL;
  v12.value._object = 0x80000001005799E0;
  v75._countAndFlagsBits = 0xD000000000000018;
  v11._countAndFlagsBits = 0x5F4D4554495F4F4ELL;
  v12.value._countAndFlagsBits = 0xD000000000000013;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v75);

  v14 = String._bridgeToObjectiveC()();

  [v9 setText:v14];

  v15 = OBJC_IVAR____TtC6FindMy12FMNoItemView_learnMoreButton;
  [*(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_learnMoreButton) setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = *(v1 + v15);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 systemBlueColor];
  [v18 setTitleColor:v19 forState:0];

  v20 = [*(v1 + v15) titleLabel];
  if (v20)
  {
    v21 = v20;
    v22 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v21 setFont:v22];
  }

  v23 = [*(v1 + v15) titleLabel];
  if (v23)
  {
    v24 = v23;
    [v23 setAdjustsFontForContentSizeCategory:1];
  }

  v25 = [*(v1 + v15) titleLabel];
  if (v25)
  {
    v26 = v25;
    [v25 setLineBreakMode:0];
  }

  v27 = [*(v1 + v15) titleLabel];
  if (v27)
  {
    v28 = v27;
    [v27 setTextAlignment:1];
  }

  v29 = *(v1 + v15);
  v30 = [v3 mainBundle];
  v76._object = 0x8000000100579A00;
  v31._countAndFlagsBits = 0xD000000000000019;
  v31._object = 0x800000010059A910;
  v32.value._object = 0x80000001005799E0;
  v76._countAndFlagsBits = 0xD000000000000018;
  v32.value._countAndFlagsBits = 0xD000000000000013;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v76);

  v34 = String._bridgeToObjectiveC()();

  [v29 setTitle:v34 forState:0];

  [*(v1 + v15) addTarget:v1 action:"handleLearnMoreButton" forControlEvents:64];
  [*(v1 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_scrollableContainerView) addArrangedSubview:*(v1 + v15)];
  v35 = *(v1 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_iconView);
  sub_10000905C(0, &qword_1006BC2B0);
  v36 = sub_1003DE3DC(0x63496D6574496F4ELL, 0xEA00000000006E6FLL, 6778480, 0xE300000000000000);
  [v35 setImage:v36];

  v37 = *(*(v1 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v38 = [v3 mainBundle];
  v77._object = 0x8000000100579A00;
  v39._countAndFlagsBits = 0xD000000000000014;
  v39._object = 0x8000000100584560;
  v40.value._object = 0x80000001005799E0;
  v77._countAndFlagsBits = 0xD000000000000018;
  v40.value._countAndFlagsBits = 0xD000000000000013;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v40, v38, v41, v77);

  v42 = String._bridgeToObjectiveC()();

  [v37 setText:v42];

  v43 = *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButton);
  v44 = OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label;
  v45 = *(v43 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  result = [v45 font];
  if (result)
  {
    v47 = result;
    sub_10007EBC0(&qword_1006BA720);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100552220;
    *(inited + 32) = UIFontWeightTrait;
    *(inited + 40) = UIFontWeightRegular;
    v49 = UIFontWeightTrait;
    v50 = sub_10002AB84(inited);
    swift_setDeallocating();
    sub_100012DF0(inited + 32, &qword_1006B47A0);
    v51 = sub_10002ACDC(v50);

    [v45 setFont:v51];

    v52 = *(v43 + v44);
    v53 = [v3 mainBundle];
    v78._object = 0x8000000100579A00;
    v54._countAndFlagsBits = 0xD000000000000019;
    v54._object = 0x8000000100584580;
    v55.value._object = 0x80000001005799E0;
    v78._countAndFlagsBits = 0xD000000000000018;
    v55.value._countAndFlagsBits = 0xD000000000000013;
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v54, v55, v53, v56, v78);

    v57 = String._bridgeToObjectiveC()();

    [v52 setText:v57];

    v58 = *(v1 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButtonsStackView);
    [v58 addArrangedSubview:v43];
    v59 = *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButton);
    v60 = OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label;
    v61 = *(v59 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
    result = [v61 font];
    if (result)
    {
      v62 = result;
      v63 = swift_initStackObject();
      *(v63 + 16) = xmmword_100552220;
      *(v63 + 32) = v49;
      v64 = v63 + 32;
      *(v63 + 40) = UIFontWeightRegular;
      v65 = sub_10002AB84(v63);
      swift_setDeallocating();
      sub_100012DF0(v64, &qword_1006B47A0);
      v66 = sub_10002ACDC(v65);

      [v61 setFont:v66];

      v67 = *(v59 + v60);
      v68 = [v73 mainBundle];
      v79._object = 0x8000000100579A00;
      v69._countAndFlagsBits = 0xD00000000000001DLL;
      v69._object = 0x80000001005845C0;
      v70.value._object = 0x80000001005799E0;
      v79._countAndFlagsBits = 0xD000000000000018;
      v70.value._countAndFlagsBits = 0xD000000000000013;
      v71._countAndFlagsBits = 0;
      v71._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v69, v70, v68, v71, v79);

      v72 = String._bridgeToObjectiveC()();

      [v67 setText:v72];

      [v58 addArrangedSubview:v59];
      return sub_10046F36C(0, 1.0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10046ED14()
{
  sub_10003B068();
  v1 = [*(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButton) heightAnchor];
  v2 = [v1 constraintEqualToConstant:0.0];

  v3 = *(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButtonHeight);
  *(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButtonHeight) = v2;
  v4 = v2;

  if (v4)
  {
    [v4 setActive:1];
  }

  v5 = [*(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButton) heightAnchor];
  v6 = [v5 constraintEqualToConstant:0.0];

  v7 = *(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButtonHeight);
  *(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButtonHeight) = v6;
  v8 = v6;

  if (v8)
  {
    [v8 setActive:1];
  }
}

uint64_t sub_10046EE64()
{
  v1 = v0;
  v2 = *(*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_mediator) + 24);
  type metadata accessor for FMDevicesSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100640578;
  swift_unknownObjectWeakAssign();
  v4 = *(v2 + 16);

  os_unfair_lock_lock((v4 + 24));
  sub_10000E7C0((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));

  *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_devicesSubscription) = v3;

  v5 = [objc_opt_self() defaultCenter];
  if (qword_1006AEDB8 != -1)
  {
    swift_once();
  }

  v6 = qword_1006D4E20;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10047068C;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10046DEDC;
  aBlock[3] = &unk_100640730;
  v8 = _Block_copy(aBlock);

  v9 = [v5 addObserverForName:v6 object:0 queue:0 usingBlock:v8];
  _Block_release(v8);

  *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_cardChangeSubscription) = v9;
  return swift_unknownObjectRelease();
}

void sub_10046F0A0()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_11;
  }

  v1 = v0;
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_10004CC50(v8), (v3 & 1) == 0))
  {

    sub_10004CDB8(v8);
LABEL_11:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_12;
  }

  sub_100006004(*(v1 + 56) + 32 * v2, &v9);
  sub_10004CDB8(v8);

  if (!*(&v10 + 1))
  {
LABEL_12:
    sub_100012DF0(&v9, &unk_1006B8740);
    return;
  }

  if (swift_dynamicCast())
  {
    v4 = *v8;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_10046F36C(1, v4);
    }

    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      *&v7[OBJC_IVAR____TtC6FindMy12FMNoItemView_lastCardPercentage] = v4;
    }
  }
}

void sub_10046F214()
{
  v1 = OBJC_IVAR____TtC6FindMy12FMNoItemView_devicesSubscription;
  if (*(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_devicesSubscription))
  {
    v2 = *(*(*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_mediator) + 24) + 16);

    os_unfair_lock_lock((v2 + 24));
    sub_10008FB6C((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));

    *(v0 + v1) = 0;

    v3 = [objc_opt_self() defaultCenter];
    v4 = v3;
    if (qword_1006AEDB8 != -1)
    {
      swift_once();
      v3 = v4;
    }

    [v3 removeObserver:v0 name:qword_1006D4E20 object:{0, v4}];
  }
}

uint64_t sub_10046F36C(char a1, double a2)
{
  v3 = v2;
  v22 = &type metadata for SolariumFeatureFlag;
  v6 = sub_10000BD04();
  v23 = v6;
  v7 = isFeatureEnabled(_:)();
  sub_100006060(v21);
  if (v7)
  {
    if (a2 >= 0.5)
    {
LABEL_3:
      v8 = 0;
      goto LABEL_6;
    }
  }

  else if (a2 >= 0.64)
  {
    goto LABEL_3;
  }

  v9 = sub_1000E4BAC();

  v10 = *(v9 + 16);

  v8 = v10 != 0;
LABEL_6:
  v22 = &type metadata for SolariumFeatureFlag;
  v23 = v6;
  v11 = isFeatureEnabled(_:)();
  sub_100006060(v21);
  if (v11)
  {
    v12 = 0.5;
  }

  else
  {
    v12 = 0.64;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = v8;
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = v12 > a2;
  *&v3[OBJC_IVAR____TtC6FindMy12FMNoItemView_lastCardPercentage] = a2;
  if (a1)
  {
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    v16[2] = sub_10047062C;
    v16[3] = v13;
    v16[4] = sub_10047065C;
    v16[5] = v14;
    v23 = sub_1001AB704;
    v24 = v16;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_100004AE4;
    v22 = &unk_1006406E0;
    v17 = _Block_copy(v21);
    v18 = v3;

    [v15 animateWithDuration:0x20000 delay:v17 usingSpringWithDamping:0 initialSpringVelocity:0.4 options:0.0 animations:0.8 completion:0.4];
    _Block_release(v17);
  }

  else
  {
    v19 = v3;
    sub_1001AAA10(v19, v8, &OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButton, &OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButtonHeight);
    sub_1001AAA10(v19, v12 > a2, &OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButton, &OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButtonHeight);
  }
}

void sub_10046F63C()
{
  v1 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"handleAction"];
  [*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton) addGestureRecognizer:v1];

  v2 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"handleSecondaryAction"];
  [*(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButton) addGestureRecognizer:v2];
  v3 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"handleTertiaryAction"];
  [*(v0 + OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButton) addGestureRecognizer:v3];
}

uint64_t sub_10046F750()
{
  v1 = v0;
  v2 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v2);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v15[-v6];
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMNoItemView: action tapped", v11, 2u);
  }

  v12 = *(*(v1 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_mediator) + 56);
  swift_storeEnumTagMultiPayload();
  v13 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v12 + v13, v4);
  swift_beginAccess();

  sub_100058530(v7, v12 + v13);
  swift_endAccess();
  sub_100058594(v4);

  sub_10005D4E4(v4);
  return sub_10005D4E4(v7);
}

uint64_t sub_10046FA00(const char *a1, char a2)
{
  v5 = v2;
  v6 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v19[-v10];
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, a1, v15, 2u);
  }

  v16 = *(*(v5 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_mediator) + 56);
  *v11 = a2;
  swift_storeEnumTagMultiPayload();
  v17 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v16 + v17, v8);
  swift_beginAccess();

  sub_100058530(v11, v16 + v17);
  swift_endAccess();
  sub_100058594(v8);

  sub_10005D4E4(v8);
  return sub_10005D4E4(v11);
}

uint64_t sub_10046FC58()
{
  v0 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMNoItemView: Learn more button tapped", v10, 2u);
  }

  sub_10046FFA4(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_100012DF0(v2, &unk_1006B0120);
  }

  (*(v4 + 32))(v6, v2, v3);
  v12 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  sub_10015391C(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_10000A660(&qword_1006AF360, type metadata accessor for OpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 openURL:v15 options:isa completionHandler:0];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10046FFA4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = FMIPNoItemsKBArticleLink.getter();
    v12 = sub_100005B4C(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMNoItemView: getLearnMoreActionURL from %s", v8, 0xCu);
    sub_100006060(v9);
  }

  FMIPNoItemsKBArticleLink.getter();
  URL.init(string:)();

  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v4, 1, v13) == 1)
  {
    sub_100012DF0(v4, &unk_1006B0120);
    v15 = 1;
  }

  else
  {
    (*(v14 + 32))(a1, v4, v13);
    v15 = 0;
  }

  return (*(v14 + 56))(a1, v15, 1, v13);
}

uint64_t sub_100470214(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v11;
    v16 = v7;
    v17 = v4;
    v18 = v9;
    v19 = v5;
    v20 = v2;
    v21 = v8;
    v22 = v15;
    *v15 = 134217984;
    *(v15 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v13, v14, "FMNoItemView: devicesProvider didUpdate unknownItems %ld", v22, 0xCu);
    v8 = v21;
    v2 = v20;
    v5 = v19;
    v9 = v18;
    v4 = v17;
    v7 = v16;
    v11 = v29;
  }

  else
  {
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = v2;
  aBlock[4] = sub_1004705F8;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100640640;
  v25 = _Block_copy(aBlock);
  v26 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A660(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_100470694()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButton;
  v3 = type metadata accessor for FMEmptyListButton();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC6FindMy17FMEmptyListButton_textColor;
  v6 = objc_opt_self();
  *&v4[v5] = [v6 systemBlueColor];
  v4[OBJC_IVAR____TtC6FindMy17FMEmptyListButton_isEnabled] = 1;
  *(v1 + v2) = sub_100038758([v6 tertiarySystemFillColor], 1, 1, 0);
  *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_secondaryActionButtonHeight) = 0;
  v7 = OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButton;
  v8 = objc_allocWithZone(v3);
  v9 = OBJC_IVAR____TtC6FindMy17FMEmptyListButton_textColor;
  *&v8[v9] = [v6 systemBlueColor];
  v8[OBJC_IVAR____TtC6FindMy17FMEmptyListButton_isEnabled] = 1;
  *(v1 + v7) = sub_100038758([v6 tertiarySystemFillColor], 1, 1, 0);
  *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_tertiaryActionButtonHeight) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_devicesSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_cardChangeSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy12FMNoItemView_lastCardPercentage) = 0;
  v10 = OBJC_IVAR____TtC6FindMy12FMNoItemView_learnMoreButton;
  type metadata accessor for FMMultilineButton();
  *(v1 + v10) = [swift_getObjCClassFromMetadata() buttonWithType:1];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100470874(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v4);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v31[-v8];
  v10 = sub_10007EBC0(&qword_1006AF750);
  __chkstk_darwin(v10 - 8);
  v12 = &v31[-v11];
  v13 = type metadata accessor for FMFPreferences();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_100470EB4();
  v18 = 0;
  if (result <= 7u)
  {
    switch(result)
    {
      case 5u:
        if ((*(*(*(v2 + 16) + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode) & 1) == 0)
        {
          goto LABEL_25;
        }

        break;
      case 6u:
        if (*(*(*(v2 + 16) + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode) == 1)
        {
LABEL_25:

          v18 = 0;
          v26 = 1;
LABEL_31:
          [a1 setState:v26];
          return [a1 setAttributes:v18];
        }

        break;
      case 7u:
        v23 = *(*(*(v2 + 16) + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode + 1);
        sub_100470FF0(v23);
        goto LABEL_29;
      default:
        return [a1 setAttributes:v18];
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

LABEL_29:
    v18 = 0;
LABEL_30:
    v26 = v23 & 1;
    goto LABEL_31;
  }

  if (result > 9u)
  {
    if (result != 10)
    {
      if (result == 11)
      {
        return result;
      }

      return [a1 setAttributes:v18];
    }

    v32 = &type metadata for SolariumFeatureFlag;
    v33 = sub_10000BD04();
    v25 = isFeatureEnabled(_:)();
    sub_100006060(v31);
    if ((v25 & 1) == 0)
    {
      goto LABEL_24;
    }

    dispatch thunk of FMFManager.preferences.getter();

    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_100012DF0(v12, &qword_1006AF750);
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      if ((FMFPreferences.hideLocation.getter() & 1) == 0)
      {
        v29 = String._bridgeToObjectiveC()();
        v30 = [objc_opt_self() systemImageNamed:v29];

        [a1 setImage:v30];
        (*(v14 + 8))(v16, v13);
        v18 = 0;
        return [a1 setAttributes:v18];
      }

      (*(v14 + 8))(v16, v13);
    }

    v27 = String._bridgeToObjectiveC()();
    v28 = [objc_opt_self() systemImageNamed:v27];

    [a1 setImage:v28];
    v18 = 0;
    return [a1 setAttributes:v18];
  }

  if (result == 8)
  {
    v23 = *(*(*(v2 + 16) + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode + 2);
    sub_100470FF0(v23);
    if (*(*(*(v2 + 16) + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode))
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v18 = v24 & 1;
    }

    else
    {

      v18 = 1;
    }

    goto LABEL_30;
  }

  if (result == 9)
  {
    v19 = *(v2 + 16);
    if (*(*(v19 + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn) != 1)
    {
      v18 = 1;
      return [a1 setAttributes:v18];
    }

    v20 = *(v19 + 56);
    v21 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v20 + v21, v9);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v20) = sub_10005F7D0(v9, v6);
    sub_10005D4E4(v6);
    sub_10005D4E4(v9);
    if ((v20 & 1) == 0)
    {
      v32 = &type metadata for SolariumFeatureFlag;
      v33 = sub_10000BD04();
      v22 = isFeatureEnabled(_:)();
      sub_100006060(v31);
      v18 = ~v22 & 1;
      return [a1 setAttributes:v18];
    }

LABEL_24:
    v18 = 0;
  }

  return [a1 setAttributes:v18];
}

unint64_t sub_100470EB4()
{
  if ([v0 propertyList])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_100012DF0(v10, &unk_1006B8740);
    return 11;
  }

  sub_10007EBC0(&unk_1006BC940);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 11;
  }

  if (!*(v7 + 16) || (v1 = sub_10000726C(0xD000000000000014, 0x800000010059A990), (v2 & 1) == 0))
  {

    return 11;
  }

  v3 = (*(v7 + 56) + 16 * v1);
  v4 = *v3;
  v5 = v3[1];

  v11._countAndFlagsBits = v4;
  v11._object = v5;
  result = sub_100472A30(v11);
  if (result == 11)
  {
    return 11;
  }

  return result;
}

void sub_100470FF0(char a1)
{
  if (a1 != 2)
  {
    if ([v1 propertyList])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12[0] = v10;
    v12[1] = v11;
    if (!*(&v11 + 1))
    {
      sub_100012DF0(v12, &unk_1006B8740);
      return;
    }

    sub_10007EBC0(&qword_1006BC910);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    if (a1)
    {
      if (*(v9 + 16))
      {
        v3 = sub_10000726C(0xD00000000000001CLL, 0x800000010059A9D0);
        if (v4)
        {
          sub_100006004(*(v9 + 56) + 32 * v3, v12);
          if (swift_dynamicCast())
          {
            v5 = String._bridgeToObjectiveC()();

            [v1 setTitle:v5];

            return;
          }
        }
      }

      goto LABEL_17;
    }

    if (!*(v9 + 16) || (v6 = sub_10000726C(0xD00000000000001BLL, 0x800000010059A9B0), (v7 & 1) == 0))
    {
LABEL_17:

      return;
    }

    sub_100006004(*(v9 + 56) + 32 * v6, v12);

    if (swift_dynamicCast())
    {
      v8 = String._bridgeToObjectiveC()();

      [v1 setTitle:v8];
    }
  }
}

uint64_t sub_10047121C(uint64_t a1)
{
  v3 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v3);
  v5 = &v194 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v194 - v7;
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v9 = sub_100470EB4();
    if (v9 <= 5)
    {
      if (v9 <= 2)
      {
        if (v9)
        {
          if (v9 == 1)
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              v10 = *(v1 + 32);
              ObjectType = swift_getObjectType();
              swift_storeEnumTagMultiPayload();
              (*(v10 + 8))(v8, ObjectType, v10);
              swift_unknownObjectRelease();
              sub_10005D4E4(v8);
            }

            v12 = *(*(v1 + 16) + 56);
          }

          else
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              v120 = *(v1 + 32);
              v121 = swift_getObjectType();
              swift_storeEnumTagMultiPayload();
              (*(v120 + 8))(v8, v121, v120);
              swift_unknownObjectRelease();
              sub_10005D4E4(v8);
            }

            v12 = *(*(v1 + 16) + 56);
          }
        }

        else
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v67 = *(v1 + 32);
            v68 = swift_getObjectType();
            swift_storeEnumTagMultiPayload();
            (*(v67 + 8))(v8, v68, v67);
            swift_unknownObjectRelease();
            sub_10005D4E4(v8);
          }

          v12 = *(*(v1 + 16) + 56);
        }

        goto LABEL_125;
      }

      if (v9 != 3)
      {
        if (v9 != 4)
        {
          v194 = a1;
          v159 = *(*(v1 + 16) + 56);
          v160 = objc_opt_self();

          v161 = [v160 standardUserDefaults];
          v162 = sub_10023245C(0);

          v163 = (v159 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
          *v163 = v162 & 1;
          v163[1] = BYTE1(v162) & 1;
          v163[2] = BYTE2(v162) & 1;
          if (qword_1006AEBE0 != -1)
          {
            swift_once();
          }

          v164 = type metadata accessor for Logger();
          sub_100005B14(v164, qword_1006D4630);

          v165 = Logger.logObject.getter();
          v166 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v165, v166))
          {
            v167 = v159;
            v168 = swift_slowAlloc();
            v169 = swift_slowAlloc();
            v196 = v169;
            *v168 = 136315138;
            if (v163[2])
            {
              v170 = 0x10000;
            }

            else
            {
              v170 = 0;
            }

            if (v163[1])
            {
              v171 = 256;
            }

            else
            {
              v171 = 0;
            }

            v172 = sub_1002318A0(v171 | *v163 | v170);
            v174 = sub_100005B4C(v172, v173, &v196);

            *(v168 + 4) = v174;
            _os_log_impl(&_mh_execute_header, v165, v166, "FMSelectionController: map configuration updated %s", v168, 0xCu);
            sub_100006060(v169);

            v159 = v167;
          }

          v175 = *v163;
          v176 = v163[1];
          v177 = v163[2];
          v178 = [v160 standardUserDefaults];
          My = type metadata accessor for Feature.FindMy();
          v198 = My;
          v199 = sub_1000069D8();
          v180 = sub_100008FC0(&v196);
          (*(*(My - 8) + 104))(v180, enum case for Feature.FindMy.springfieldIntegration(_:), My);
          v181 = isFeatureEnabled(_:)();
          sub_100006060(&v196);
          if (v177)
          {
            v182 = 0x10000;
          }

          else
          {
            v182 = 0;
          }

          if (v176)
          {
            v183 = 256;
          }

          else
          {
            v183 = 0;
          }

          sub_100231DAC(v178, v181 & 1, v183 | v175 | v182);

          result = swift_beginAccess();
          v184 = *(v159 + 16);
          if (v184 >> 62)
          {
            result = _CocoaArrayWrapper.endIndex.getter();
            v185 = result;
            if (!result)
            {
              goto LABEL_206;
            }
          }

          else
          {
            v185 = *((v184 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v185)
            {
              goto LABEL_206;
            }
          }

          if (v185 >= 1)
          {
            v186 = v159;

            for (i = 0; i != v185; ++i)
            {
              if ((v184 & 0xC000000000000001) != 0)
              {
                v192 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v192 = *(v184 + 8 * i + 32);
              }

              v193 = v192 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
              if (swift_unknownObjectWeakLoadStrong())
              {
                v188 = *(v193 + 8);
                v189 = swift_getObjectType();
                if (v163[2])
                {
                  v190 = 0x10000;
                }

                else
                {
                  v190 = 0;
                }

                if (v163[1])
                {
                  v191 = 256;
                }

                else
                {
                  v191 = 0;
                }

                (*(v188 + 16))(v186, v191 | *v163 | v190, v189, v188);

                swift_unknownObjectRelease();
              }

              else
              {
              }
            }

            goto LABEL_194;
          }

          goto LABEL_212;
        }

        v49 = *(*(v1 + 16) + 56);
        v50 = OBJC_IVAR____TtC6FindMy21FMSelectionController_mapZoomFactor;
        *(v49 + OBJC_IVAR____TtC6FindMy21FMSelectionController_mapZoomFactor) = 1;
        v51 = qword_1006AEBE0;

        if (v51 != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        sub_100005B14(v52, qword_1006D4630);

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v200[0] = v56;
          *v55 = 136315138;
          v196 = 0;
          v197 = 0xE000000000000000;
          v195 = *(v49 + v50);
          _print_unlocked<A, B>(_:_:)();
          v57 = sub_100005B4C(v196, v197, v200);

          *(v55 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v53, v54, "FMSelectionController: mapZoomFactor %s", v55, 0xCu);
          sub_100006060(v56);
        }

        result = swift_beginAccess();
        v58 = *(v49 + 16);
        if (v58 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          v59 = result;
          if (result)
          {
LABEL_53:
            v194 = a1;
            if (v59 >= 1)
            {

              for (j = 0; j != v59; ++j)
              {
                if ((v58 & 0xC000000000000001) != 0)
                {
                  v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v63 = *(v58 + 8 * j + 32);
                }

                v64 = v63 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
                if (swift_unknownObjectWeakLoadStrong())
                {
                  v61 = *(v64 + 8);
                  v62 = swift_getObjectType();
                  (*(v61 + 32))(v49, *(v49 + v50), v62, v61);

                  swift_unknownObjectRelease();
                }

                else
                {
                }
              }

LABEL_194:

              swift_unknownObjectRelease();
            }

            goto LABEL_210;
          }
        }

        else
        {
          v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v59)
          {
            goto LABEL_53;
          }
        }

LABEL_206:

        return swift_unknownObjectRelease();
      }

      v104 = *(*(v1 + 16) + 56);
      v105 = OBJC_IVAR____TtC6FindMy21FMSelectionController_mapZoomFactor;
      *(v104 + OBJC_IVAR____TtC6FindMy21FMSelectionController_mapZoomFactor) = 0;
      v106 = qword_1006AEBE0;

      if (v106 != -1)
      {
        swift_once();
      }

      v107 = type metadata accessor for Logger();
      sub_100005B14(v107, qword_1006D4630);

      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v200[0] = v111;
        *v110 = 136315138;
        v196 = 0;
        v197 = 0xE000000000000000;
        v195 = *(v104 + v105);
        _print_unlocked<A, B>(_:_:)();
        v112 = sub_100005B4C(v196, v197, v200);

        *(v110 + 4) = v112;
        _os_log_impl(&_mh_execute_header, v108, v109, "FMSelectionController: mapZoomFactor %s", v110, 0xCu);
        sub_100006060(v111);
      }

      result = swift_beginAccess();
      v113 = *(v104 + 16);
      if (v113 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        v114 = result;
        if (!result)
        {
          goto LABEL_206;
        }
      }

      else
      {
        v114 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v114)
        {
          goto LABEL_206;
        }
      }

      v194 = a1;
      if (v114 >= 1)
      {

        for (k = 0; k != v114; ++k)
        {
          if ((v113 & 0xC000000000000001) != 0)
          {
            v118 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v118 = *(v113 + 8 * k + 32);
          }

          v119 = v118 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v116 = *(v119 + 8);
            v117 = swift_getObjectType();
            (*(v116 + 32))(v104, *(v104 + v105), v117, v116);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        goto LABEL_194;
      }

      goto LABEL_208;
    }

    if (v9 <= 8)
    {
      if (v9 != 6)
      {
        if (v9 != 7)
        {
          v123 = *(*(v1 + 16) + 56);
          v124 = (v123 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
          v125 = *(v123 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode + 1);
          v126 = *(v123 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode + 2);
          v127 = v125 & (v126 ^ 1);
          if (*(v123 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode))
          {
            v126 ^= 1u;
            v125 = v127;
          }

          *v124 = *(v123 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
          v124[1] = v125 & 1;
          v124[2] = v126 & 1;
          v128 = qword_1006AEBE0;

          if (v128 != -1)
          {
            swift_once();
          }

          v129 = type metadata accessor for Logger();
          sub_100005B14(v129, qword_1006D4630);

          v130 = Logger.logObject.getter();
          v131 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v130, v131))
          {
            v132 = swift_slowAlloc();
            v133 = v123;
            v134 = swift_slowAlloc();
            v196 = v134;
            *v132 = 136315138;
            if (v124[2])
            {
              v135 = 0x10000;
            }

            else
            {
              v135 = 0;
            }

            if (v124[1])
            {
              v136 = 256;
            }

            else
            {
              v136 = 0;
            }

            v137 = sub_1002318A0(v136 | *v124 | v135);
            v139 = sub_100005B4C(v137, v138, &v196);

            *(v132 + 4) = v139;
            _os_log_impl(&_mh_execute_header, v130, v131, "FMSelectionController: map configuration updated %s", v132, 0xCu);
            sub_100006060(v134);
            v123 = v133;
          }

          v140 = *v124;
          v141 = v124[1];
          v142 = v124[2];
          v143 = [objc_opt_self() standardUserDefaults];
          v144 = type metadata accessor for Feature.FindMy();
          v198 = v144;
          v199 = sub_1000069D8();
          v145 = sub_100008FC0(&v196);
          (*(*(v144 - 8) + 104))(v145, enum case for Feature.FindMy.springfieldIntegration(_:), v144);
          v146 = isFeatureEnabled(_:)();
          sub_100006060(&v196);
          if (v142)
          {
            v147 = 0x10000;
          }

          else
          {
            v147 = 0;
          }

          if (v141)
          {
            v148 = 256;
          }

          else
          {
            v148 = 0;
          }

          sub_100231DAC(v143, v146 & 1, v148 | v140 | v147);

          result = swift_beginAccess();
          v149 = *(v123 + 16);
          if (v149 >> 62)
          {
            result = _CocoaArrayWrapper.endIndex.getter();
            v150 = result;
            if (!result)
            {
              goto LABEL_206;
            }
          }

          else
          {
            v150 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v150)
            {
              goto LABEL_206;
            }
          }

          v194 = a1;
          if (v150 >= 1)
          {
            v151 = v123;

            for (m = 0; m != v150; ++m)
            {
              if ((v149 & 0xC000000000000001) != 0)
              {
                v157 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v157 = *(v149 + 8 * m + 32);
              }

              v158 = v157 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
              if (swift_unknownObjectWeakLoadStrong())
              {
                v153 = *(v158 + 8);
                v154 = swift_getObjectType();
                if (v124[2])
                {
                  v155 = 0x10000;
                }

                else
                {
                  v155 = 0;
                }

                if (v124[1])
                {
                  v156 = 256;
                }

                else
                {
                  v156 = 0;
                }

                (*(v153 + 16))(v151, v156 | *v124 | v155, v154, v153);

                swift_unknownObjectRelease();
              }

              else
              {
              }
            }

            goto LABEL_194;
          }

          goto LABEL_211;
        }

        v13 = *(*(v1 + 16) + 56);
        v14 = (v13 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
        v15 = *(v13 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode + 1) ^ 1;
        v16 = *(v13 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode + 2) | v15;
        *v14 = *(v13 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
        v14[1] = v15 & 1;
        v14[2] = v16 & 1;
        v17 = qword_1006AEBE0;

        if (v17 != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        sub_100005B14(v18, qword_1006D4630);

        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = v13;
          v23 = swift_slowAlloc();
          v196 = v23;
          *v21 = 136315138;
          if (v14[2])
          {
            v24 = 0x10000;
          }

          else
          {
            v24 = 0;
          }

          if (v14[1])
          {
            v25 = 256;
          }

          else
          {
            v25 = 0;
          }

          v26 = sub_1002318A0(v25 | *v14 | v24);
          v28 = sub_100005B4C(v26, v27, &v196);

          *(v21 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v19, v20, "FMSelectionController: map configuration updated %s", v21, 0xCu);
          sub_100006060(v23);
          v13 = v22;
        }

        v29 = *v14;
        v30 = v14[1];
        v31 = v14[2];
        v32 = [objc_opt_self() standardUserDefaults];
        v33 = type metadata accessor for Feature.FindMy();
        v198 = v33;
        v199 = sub_1000069D8();
        v34 = sub_100008FC0(&v196);
        (*(*(v33 - 8) + 104))(v34, enum case for Feature.FindMy.springfieldIntegration(_:), v33);
        v35 = isFeatureEnabled(_:)();
        sub_100006060(&v196);
        if (v31)
        {
          v36 = 0x10000;
        }

        else
        {
          v36 = 0;
        }

        if (v30)
        {
          v37 = 256;
        }

        else
        {
          v37 = 0;
        }

        sub_100231DAC(v32, v35 & 1, v37 | v29 | v36);

        result = swift_beginAccess();
        v39 = *(v13 + 16);
        if (v39 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          v40 = result;
          if (!result)
          {
            goto LABEL_206;
          }
        }

        else
        {
          v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v40)
          {
            goto LABEL_206;
          }
        }

        v194 = a1;
        if (v40 >= 1)
        {
          v41 = v13;

          for (n = 0; n != v40; ++n)
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v47 = *(v39 + 8 * n + 32);
            }

            v48 = v47 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v43 = *(v48 + 8);
              v44 = swift_getObjectType();
              if (v14[2])
              {
                v45 = 0x10000;
              }

              else
              {
                v45 = 0;
              }

              if (v14[1])
              {
                v46 = 256;
              }

              else
              {
                v46 = 0;
              }

              (*(v43 + 16))(v41, v46 | *v14 | v45, v44, v43);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          goto LABEL_194;
        }

LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
        return result;
      }

      v194 = a1;
      v69 = *(*(v1 + 16) + 56);
      v70 = objc_opt_self();

      v71 = [v70 standardUserDefaults];
      v72 = sub_10023245C(1);

      v73 = (v69 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
      *v73 = v72 & 1;
      v73[1] = BYTE1(v72) & 1;
      v73[2] = BYTE2(v72) & 1;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      sub_100005B14(v74, qword_1006D4630);

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = v69;
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v196 = v79;
        *v78 = 136315138;
        if (v73[2])
        {
          v80 = 0x10000;
        }

        else
        {
          v80 = 0;
        }

        if (v73[1])
        {
          v81 = 256;
        }

        else
        {
          v81 = 0;
        }

        v82 = sub_1002318A0(v81 | *v73 | v80);
        v84 = sub_100005B4C(v82, v83, &v196);

        *(v78 + 4) = v84;
        _os_log_impl(&_mh_execute_header, v75, v76, "FMSelectionController: map configuration updated %s", v78, 0xCu);
        sub_100006060(v79);

        v69 = v77;
      }

      v85 = *v73;
      v86 = v73[1];
      v87 = v73[2];
      v88 = [v70 standardUserDefaults];
      v89 = type metadata accessor for Feature.FindMy();
      v198 = v89;
      v199 = sub_1000069D8();
      v90 = sub_100008FC0(&v196);
      (*(*(v89 - 8) + 104))(v90, enum case for Feature.FindMy.springfieldIntegration(_:), v89);
      v91 = isFeatureEnabled(_:)();
      sub_100006060(&v196);
      if (v87)
      {
        v92 = 0x10000;
      }

      else
      {
        v92 = 0;
      }

      if (v86)
      {
        v93 = 256;
      }

      else
      {
        v93 = 0;
      }

      sub_100231DAC(v88, v91 & 1, v93 | v85 | v92);

      result = swift_beginAccess();
      v94 = *(v69 + 16);
      if (v94 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        v95 = result;
        if (!result)
        {
          goto LABEL_206;
        }
      }

      else
      {
        v95 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v95)
        {
          goto LABEL_206;
        }
      }

      if (v95 >= 1)
      {
        v96 = v69;

        for (ii = 0; ii != v95; ++ii)
        {
          if ((v94 & 0xC000000000000001) != 0)
          {
            v102 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v102 = *(v94 + 8 * ii + 32);
          }

          v103 = v102 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v98 = *(v103 + 8);
            v99 = swift_getObjectType();
            if (v73[2])
            {
              v100 = 0x10000;
            }

            else
            {
              v100 = 0;
            }

            if (v73[1])
            {
              v101 = 256;
            }

            else
            {
              v101 = 0;
            }

            (*(v98 + 16))(v96, v101 | *v73 | v100, v99, v98);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        goto LABEL_194;
      }

      __break(1u);
LABEL_208:
      __break(1u);
      goto LABEL_209;
    }

    if (v9 == 9)
    {
      v12 = *(*(v1 + 16) + 56);
LABEL_125:
      swift_storeEnumTagMultiPayload();
      v122 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
      swift_beginAccess();
      sub_100062074(v12 + v122, v5);
      swift_beginAccess();

      sub_100058530(v8, v12 + v122);
      swift_endAccess();
      sub_100058594(v5);

      swift_unknownObjectRelease();
      sub_10005D4E4(v5);
      return sub_10005D4E4(v8);
    }

    if (v9 == 10)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v65 = *(v1 + 32);
        v66 = swift_getObjectType();
        swift_storeEnumTagMultiPayload();
        (*(v65 + 8))(v8, v66, v65);
        swift_unknownObjectRelease();
        sub_10005D4E4(v8);
      }

      v12 = *(*(v1 + 16) + 56);
      goto LABEL_125;
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1004729CC()
{

  sub_10005CD20(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_100472A30(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100622C78, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

UIMenu sub_100472A7C()
{
  sub_10007EBC0(&qword_1006AFC30);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100552EF0;
  v41 = objc_opt_self();
  v0 = [v41 mainBundle];
  v1._countAndFlagsBits = 0xD000000000000018;
  swift__string._object = 0x8000000100587E20;
  v1._object = 0x8000000100587E00;
  swift__string._countAndFlagsBits = 0xD00000000000002ALL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, swift__string);

  sub_10000905C(0, &qword_1006C0A98);
  v4 = String._bridgeToObjectiveC()();
  v42 = objc_opt_self();
  v5 = [v42 systemImageNamed:v4];

  sub_10007EBC0(&qword_1006B0E90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005528D0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000010059A990;
  *(inited + 48) = 0x65726F6C707865;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 64) = 0xD00000000000001BLL;
  *(inited + 72) = 0x800000010059A9B0;
  *(inited + 80) = v3;
  *(inited + 96) = 0xD00000000000001CLL;
  *(inited + 104) = 0x800000010059A9D0;
  *(inited + 112) = v3;
  swift_bridgeObjectRetain_n();
  sub_100153A44(inited);
  swift_setDeallocating();
  sub_10007EBC0(&qword_1006B0E98);
  swift_arrayDestroy();
  v7 = sub_10007EBC0(&unk_1006BC940);
  *(v43 + 32) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v8 = [v41 mainBundle];
  v9._countAndFlagsBits = 0xD00000000000001ALL;
  swift__stringa._object = 0x800000010057EE70;
  v9._object = 0x800000010057EE50;
  swift__stringa._countAndFlagsBits = 0xD00000000000002CLL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, swift__stringa);

  v12 = String._bridgeToObjectiveC()();
  v13 = [v42 systemImageNamed:v12];

  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1005528D0;
  *(v14 + 32) = 0xD000000000000014;
  *(v14 + 40) = 0x800000010059A990;
  *(v14 + 48) = 0x74696C6C65746173;
  *(v14 + 56) = 0xE900000000000065;
  *(v14 + 64) = 0xD00000000000001BLL;
  *(v14 + 72) = 0x800000010059A9B0;
  *(v14 + 80) = v11;
  *(v14 + 96) = 0xD00000000000001CLL;
  *(v14 + 104) = 0x800000010059A9D0;
  *(v14 + 112) = v11;
  swift_bridgeObjectRetain_n();
  v15 = sub_100153A44(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  v45 = v7;
  v44[0] = v15;
  *(v43 + 40) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_10000905C(0, &unk_1006AF720);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100552EE0;
  if (qword_1006AEB38 != -1)
  {
    swift_once();
  }

  v17 = xmmword_1006D4160;
  if (qword_1006AEB48 != -1)
  {
    swift_once();
  }

  v18 = xmmword_1006D4180;
  v19 = String._bridgeToObjectiveC()();
  v20 = [v42 systemImageNamed:{v19, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1005528D0;
  *(v21 + 32) = 0xD000000000000014;
  *(v21 + 40) = 0x800000010059A990;
  strcpy((v21 + 48), "toggleTraffic");
  *(v21 + 62) = -4864;
  *(v21 + 64) = 0xD00000000000001BLL;
  *(v21 + 72) = 0x800000010059A9B0;
  *(v21 + 80) = v17;
  *(v21 + 96) = 0xD00000000000001CLL;
  *(v21 + 104) = 0x800000010059A9D0;
  *(v21 + 112) = v18;

  v22 = sub_100153A44(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  v45 = v7;
  v44[0] = v22;

  *(preferredElementSize + 32) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (qword_1006AEB40 != -1)
  {
    swift_once();
  }

  v24 = *(&xmmword_1006D4170 + 1);
  v23 = xmmword_1006D4170;
  if (qword_1006AEB50 != -1)
  {
    swift_once();
  }

  v25 = *(&xmmword_1006D4190 + 1);
  v26 = xmmword_1006D4190;
  v27 = String._bridgeToObjectiveC()();
  v28 = [v42 systemImageNamed:{v27, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1005528D0;
  *(v29 + 32) = 0xD000000000000014;
  *(v29 + 40) = 0x800000010059A990;
  strcpy((v29 + 48), "toggleLabels");
  *(v29 + 61) = 0;
  *(v29 + 62) = -5120;
  *(v29 + 64) = 0xD00000000000001BLL;
  *(v29 + 72) = 0x800000010059A9B0;
  *(v29 + 80) = v23;
  *(v29 + 88) = v24;
  *(v29 + 96) = 0xD00000000000001CLL;
  *(v29 + 104) = 0x800000010059A9D0;
  *(v29 + 112) = v26;
  *(v29 + 120) = v25;

  v30 = sub_100153A44(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  v44[0] = v30;

  *(preferredElementSize + 40) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v47.value.super.isa = 0;
  v47.is_nil = 0;
  *(v43 + 48) = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v31, 0, v47, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
  v32 = [v41 mainBundle];
  swift__stringb._object = 0x800000010059AB60;
  v33._object = 0x800000010059AB40;
  swift__stringb._countAndFlagsBits = 0xD00000000000002DLL;
  v33._countAndFlagsBits = 0xD00000000000001BLL;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, swift__stringb);

  v45 = &type metadata for SolariumFeatureFlag;
  v46 = sub_10000BD04();
  v36 = isFeatureEnabled(_:)();
  sub_100006060(v44);
  v37 = 0;
  if (v36)
  {
    v38 = String._bridgeToObjectiveC()();
    v37 = [v42 systemImageNamed:v38];
  }

  v48.value.super.isa = v37;
  v48.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v35, 0, v48, 32, 0xFFFFFFFFFFFFFFFFLL, v43, v40.super.super.isa);
}

UIMenu sub_1004733DC()
{
  sub_10007EBC0(&qword_1006AFC30);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100552EE0;
  v20 = objc_opt_self();
  v0 = [v20 mainBundle];
  v1._countAndFlagsBits = 0xD000000000000013;
  swift__string._object = 0x800000010059AA30;
  v1._object = 0x800000010059AA10;
  swift__string._countAndFlagsBits = 0xD000000000000025;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, swift__string);

  sub_10000905C(0, &unk_1006B50D0);
  v4 = String._bridgeToObjectiveC()();
  v5 = objc_opt_self();
  v6 = [v5 systemImageNamed:v4];

  sub_10007EBC0(&qword_1006B0E90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005528D0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000010059A990;
  *(inited + 48) = 0x6E496D6F6F7ALL;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 64) = 0xD00000000000001BLL;
  *(inited + 72) = 0x800000010059A9B0;
  *(inited + 80) = v3;
  *(inited + 96) = 0xD00000000000001CLL;
  *(inited + 104) = 0x800000010059A9D0;
  *(inited + 112) = v3;
  swift_bridgeObjectRetain_n();
  sub_100153A44(inited);
  swift_setDeallocating();
  sub_10007EBC0(&qword_1006B0E98);
  swift_arrayDestroy();
  sub_10007EBC0(&unk_1006BC940);
  *(preferredElementSize + 32) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v8 = [v20 mainBundle];
  swift__stringa._object = 0x800000010059AAA0;
  v9._object = 0x800000010059AA80;
  swift__stringa._countAndFlagsBits = 0xD000000000000026;
  v9._countAndFlagsBits = 0xD000000000000014;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, swift__stringa);

  v12 = String._bridgeToObjectiveC()();
  v13 = [v5 systemImageNamed:v12];

  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1005528D0;
  *(v14 + 32) = 0xD000000000000014;
  *(v14 + 40) = 0x800000010059A990;
  *(v14 + 48) = 0x74754F6D6F6F7ALL;
  *(v14 + 56) = 0xE700000000000000;
  *(v14 + 64) = 0xD00000000000001BLL;
  *(v14 + 72) = 0x800000010059A9B0;
  *(v14 + 80) = v11;
  *(v14 + 96) = 0xD00000000000001CLL;
  *(v14 + 104) = 0x800000010059A9D0;
  *(v14 + 112) = v11;
  swift_bridgeObjectRetain_n();
  sub_100153A44(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(preferredElementSize + 40) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v15 = [v20 mainBundle];
  swift__stringb._object = 0x800000010059AB10;
  v16._countAndFlagsBits = 0xD00000000000001DLL;
  v16._object = 0x800000010059AAF0;
  swift__stringb._countAndFlagsBits = 0xD00000000000002FLL;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, swift__stringb);

  sub_10000905C(0, &unk_1006AF720);
  v22.value.super.isa = 0;
  v22.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v18, 0, v22, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
}

UIMenu sub_1004738EC()
{
  sub_10007EBC0(&qword_1006AFC30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100552EF0;
  v1 = v0;
  v36 = v0;
  v35 = objc_opt_self();
  v2 = [v35 mainBundle];
  swift__string._object = 0x8000000100589CB0;
  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x8000000100589C90;
  swift__string._countAndFlagsBits = 0xD00000000000002ALL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, swift__string);

  sub_10000905C(0, &unk_1006B50D0);
  v6 = String._bridgeToObjectiveC()();
  v34 = objc_opt_self();
  v7 = [v34 systemImageNamed:v6];

  sub_10007EBC0(&qword_1006B0E90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005528D0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000010059A990;
  *(inited + 48) = 0x656C706F6570;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 64) = 0xD00000000000001BLL;
  *(inited + 72) = 0x800000010059A9B0;
  *(inited + 80) = v5;
  *(inited + 96) = 0xD00000000000001CLL;
  *(inited + 104) = 0x800000010059A9D0;
  *(inited + 112) = v5;
  swift_bridgeObjectRetain_n();
  sub_100153A44(inited);
  swift_setDeallocating();
  sub_10007EBC0(&qword_1006B0E98);
  swift_arrayDestroy();
  sub_10007EBC0(&unk_1006BC940);
  *(v1 + 32) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v9 = [v35 mainBundle];
  swift__stringa._object = 0x8000000100589C60;
  v10._countAndFlagsBits = 0xD000000000000019;
  v10._object = 0x8000000100589C40;
  swift__stringa._countAndFlagsBits = 0xD00000000000002BLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, swift__stringa);

  v13 = String._bridgeToObjectiveC()();
  v14 = [v34 systemImageNamed:v13];

  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1005528D0;
  *(v15 + 32) = 0xD000000000000014;
  *(v15 + 40) = 0x800000010059A990;
  *(v15 + 48) = 0x73656369766564;
  *(v15 + 56) = 0xE700000000000000;
  *(v15 + 64) = 0xD00000000000001BLL;
  *(v15 + 72) = 0x800000010059A9B0;
  *(v15 + 80) = v12;
  *(v15 + 96) = 0xD00000000000001CLL;
  *(v15 + 104) = 0x800000010059A9D0;
  *(v15 + 112) = v12;
  swift_bridgeObjectRetain_n();
  sub_100153A44(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v36 + 40) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v16 = [v35 mainBundle];
  v17.value._countAndFlagsBits = 0xD000000000000013;
  swift__stringb._object = 0x8000000100579A00;
  v18._countAndFlagsBits = 0x41545F534D455449;
  v17.value._object = 0x80000001005799E0;
  swift__stringb._countAndFlagsBits = 0xD000000000000018;
  v18._object = 0xE900000000000042;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v17, v16, v19, swift__stringb);

  v21 = String._bridgeToObjectiveC()();
  v22 = [v34 systemImageNamed:v21];

  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1005528D0;
  *(v23 + 32) = 0xD000000000000014;
  *(v23 + 40) = 0x800000010059A990;
  *(v23 + 48) = 0x736D657469;
  *(v23 + 56) = 0xE500000000000000;
  *(v23 + 64) = 0xD00000000000001BLL;
  *(v23 + 72) = 0x800000010059A9B0;
  *(v23 + 80) = v20;
  *(v23 + 96) = 0xD00000000000001CLL;
  *(v23 + 104) = 0x800000010059A9D0;
  *(v23 + 112) = v20;
  swift_bridgeObjectRetain_n();
  sub_100153A44(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v36 + 48) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v24 = [v35 mainBundle];
  swift__stringc._object = 0x80000001005876A0;
  v25._countAndFlagsBits = 0x4241545F454DLL;
  swift__stringc._countAndFlagsBits = 0xD000000000000018;
  v25._object = 0xE600000000000000;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, swift__stringc);

  v28 = String._bridgeToObjectiveC()();
  v29 = [v34 systemImageNamed:v28];

  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1005528D0;
  *(v30 + 32) = 0xD000000000000014;
  *(v30 + 40) = 0x800000010059A990;
  *(v30 + 48) = 25965;
  *(v30 + 56) = 0xE200000000000000;
  *(v30 + 64) = 0xD00000000000001BLL;
  *(v30 + 72) = 0x800000010059A9B0;
  *(v30 + 80) = v27;
  *(v30 + 96) = 0xD00000000000001CLL;
  *(v30 + 104) = 0x800000010059A9D0;
  *(v30 + 112) = v27;
  swift_bridgeObjectRetain_n();
  sub_100153A44(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (v36 >> 62)
  {
    sub_10000905C(0, &unk_1006BAA80);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10000905C(0, &unk_1006BAA80);
    preferredElementSize = v36;
  }

  sub_10000905C(0, &unk_1006AF720);
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v37.value.super.isa = 0;
  v37.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v32, 0, v37, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
}

void sub_10047419C(void *a1)
{
  [a1 removeMenuForIdentifier:UIMenuFormat];
  [a1 removeMenuForIdentifier:UIMenuToolbar];
  [a1 removeMenuForIdentifier:UIMenuSidebar];
  isa = sub_100472A7C().super.super.isa;
  [a1 insertChildMenu:isa atStartOfMenuForIdentifier:UIMenuView];

  v3 = sub_1004733DC().super.super.isa;
  [a1 insertChildMenu:v3 atStartOfMenuForIdentifier:UIMenuView];

  v4 = sub_1004738EC().super.super.isa;
  [a1 insertChildMenu:v4 atStartOfMenuForIdentifier:UIMenuView];
}

uint64_t PushPayload.payload.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t PushPayload.url.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t PushPayload.identifier.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

Swift::Int sub_1004743C4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004744B0()
{
  String.hash(into:)();
}

Swift::Int sub_100474588()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100474670@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004752DC(*a1);
  *a2 = result;
  return result;
}

void sub_1004746A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7565409;
  v5 = 0xEE007472656C4170;
  v6 = 0x70416E49776F6873;
  v7 = 0xE300000000000000;
  v8 = 7107189;
  if (v2 != 3)
  {
    v8 = 0x696669746E656469;
    v7 = 0xEA00000000007265;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6F4C796150666D66;
    v3 = 0xEA00000000006461;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100474748()
{
  v1 = *v0;
  v2 = 7565409;
  v3 = 0x70416E49776F6873;
  v4 = 7107189;
  if (v1 != 3)
  {
    v4 = 0x696669746E656469;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F4C796150666D66;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1004747EC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1004752DC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100474814(uint64_t a1)
{
  v2 = sub_100476410();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100474850(uint64_t a1)
{
  v2 = sub_100476410();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 PushPayload.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100475328(a1, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v5;
    *(a2 + 160) = v10;
    v6 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v6;
    v7 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v7;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
    result = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t PushAPSData.category.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t PushAPSData.sound.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

Swift::Int sub_100474988()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100474A3C()
{
  String.hash(into:)();
}

Swift::Int sub_100474ADC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100474B8C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10047576C(*a1);
  *a2 = result;
  return result;
}

void sub_100474BBC(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7472656C61;
  v4 = 0xE800000000000000;
  v5 = 0x79726F6765746163;
  if (*v1 != 2)
  {
    v5 = 0x646E756F73;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6567646162;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100474C2C()
{
  v1 = 0x7472656C61;
  v2 = 0x79726F6765746163;
  if (*v0 != 2)
  {
    v2 = 0x646E756F73;
  }

  if (*v0)
  {
    v1 = 0x6567646162;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100474C98@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10047576C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100474CCC(uint64_t a1)
{
  v2 = sub_1004762D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100474D08(uint64_t a1)
{
  v2 = sub_1004762D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 PushAPSData.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1004757B8(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t PushAlert.summaryArg.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

Swift::Int sub_100474DE4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100474ECC()
{
  String.hash(into:)();
}

Swift::Int sub_100474FA0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100475084@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100475B04(*a1);
  *a2 = result;
  return result;
}

void sub_1004750B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 2036625250;
  v5 = 0xE800000000000000;
  v6 = 0x736772612D636F6CLL;
  v7 = 0x80000001005790C0;
  v8 = 0xD000000000000011;
  if (v2 != 3)
  {
    v8 = 0x2D7972616D6D7573;
    v7 = 0xEB00000000677261;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x79656B2D636F6CLL;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100475158()
{
  v1 = *v0;
  v2 = 2036625250;
  v3 = 0x736772612D636F6CLL;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x2D7972616D6D7573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x79656B2D636F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1004751F8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100475B04(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100475220(uint64_t a1)
{
  v2 = sub_100476198();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10047525C(uint64_t a1)
{
  v2 = sub_100476198();

  return CodingKey.debugDescription.getter(a1, v2);
}

double PushAlert.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100475B50(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_1004752DC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100622DA0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100475328@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10007EBC0(&qword_1006C0AD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v9 = a1[3];
  v31 = a1;
  sub_1000244BC(a1, v9);
  sub_100476410();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006060(v31);
  }

  v10 = v6;
  v65 = 0;
  sub_100476464();
  v11 = v5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v60 = v53;
  v61 = v54;
  v62 = v55;
  v56 = v49;
  v57 = v50;
  v58 = v51;
  v59 = v52;
  LOBYTE(v43[0]) = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v30 + 1) = v13;
  v14 = v12;
  LOBYTE(v43[0]) = 2;
  v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *&v30 = v14;
  LOBYTE(v43[0]) = 3;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  v29 = v15;
  v64 = 4;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v19;
  (*(v10 + 8))(v8, v11);
  v36 = v60;
  v37 = v61;
  v38 = v62;
  v32 = v56;
  v33 = v57;
  v34 = v58;
  v35 = v59;
  v21 = v30;
  v39 = v30;
  v22 = v63;
  LOBYTE(v40) = v63;
  *(&v40 + 1) = v29;
  *&v41 = v17;
  *(&v41 + 1) = v18;
  v42 = v20;
  sub_1004764B8(&v32, v43);
  sub_100006060(v31);
  v43[4] = v60;
  v43[5] = v61;
  v43[6] = v62;
  v43[0] = v56;
  v43[1] = v57;
  v43[2] = v58;
  v43[3] = v59;
  v43[7] = v21;
  v44 = v22;
  v45 = v29;
  v46 = v17;
  v47 = v18;
  v48 = v20;
  result = sub_1004764F0(v43);
  v24 = v41;
  *(a2 + 128) = v40;
  *(a2 + 144) = v24;
  *(a2 + 160) = v42;
  v25 = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v25;
  v26 = v39;
  *(a2 + 96) = v38;
  *(a2 + 112) = v26;
  v27 = v33;
  *a2 = v32;
  *(a2 + 16) = v27;
  v28 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v28;
  return result;
}

uint64_t sub_1004756FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006C0AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10047576C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100622E38, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1004757B8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v54 = sub_10007EBC0(&qword_1006C0AC0);
  v5 = *(v54 - 8);
  __chkstk_darwin(v54);
  v7 = &v25 - v6;
  sub_1000244BC(a1, a1[3]);
  sub_1004762D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006060(a1);
  }

  v8 = v5;
  v44 = 0;
  sub_100476324();
  v9 = v54;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v50 = v45;
  v51 = v46;
  v52 = v47;
  v53 = v48;
  LOBYTE(v36[0]) = 1;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v49 = v10 & 1;
  LOBYTE(v36[0]) = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v27 = v11;
  v43 = 3;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = *(v8 + 8);
  v26 = v14;
  v17 = v16;
  v15(v7, v9);
  v29 = v50;
  v30 = v51;
  v31 = v52;
  v32 = v53;
  v18 = v27;
  v19 = v28;
  *&v33 = v28;
  v20 = v49;
  BYTE8(v33) = v49;
  *&v34 = v27;
  *(&v34 + 1) = v13;
  *&v35 = v26;
  *(&v35 + 1) = v17;
  sub_1004742E8(&v29, v36);
  sub_100006060(a1);
  v36[0] = v50;
  v36[1] = v51;
  v36[2] = v52;
  v36[3] = v53;
  v37 = v19;
  v38 = v20;
  v39 = v18;
  v40 = v13;
  v41 = v26;
  v42 = v17;
  result = sub_1004763E0(v36);
  v22 = v34;
  a2[4] = v33;
  a2[5] = v22;
  a2[6] = v35;
  v23 = v30;
  *a2 = v29;
  a2[1] = v23;
  v24 = v32;
  a2[2] = v31;
  a2[3] = v24;
  return result;
}

unint64_t sub_100475B04(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100622EB8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100475B50@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10007EBC0(&qword_1006C0AA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  sub_1000244BC(a1, a1[3]);
  sub_100476198();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006060(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v30 = v9;
  LOBYTE(v36[0]) = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = v13;
  v27 = v12;
  v29 = v11;
  sub_10007EBC0(&qword_1006C0C10);
  LOBYTE(v32) = 2;
  v28 = sub_1004761EC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26 = v36[0];
  LOBYTE(v32) = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v28 = v36[0];
  v37 = 4;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v29;
  v16 = v14;
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  v19 = v30;
  *&v32 = v30;
  *(&v32 + 1) = v15;
  v20 = v27;
  *&v33 = v27;
  *(&v33 + 1) = v31;
  v21 = v26;
  *&v34 = v26;
  *(&v34 + 1) = v28;
  *&v35 = v16;
  *(&v35 + 1) = v18;
  sub_100476268(&v32, v36);
  sub_100006060(a1);
  v36[0] = v19;
  v36[1] = v15;
  v36[2] = v20;
  v36[3] = v31;
  v36[4] = v21;
  v36[5] = v28;
  v36[6] = v16;
  v36[7] = v18;
  result = sub_1004762A0(v36);
  v23 = v33;
  *a2 = v32;
  a2[1] = v23;
  v24 = v35;
  a2[2] = v34;
  a2[3] = v24;
  return result;
}

uint64_t sub_100475F28(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100475F40(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_100475F7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100475FC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10047603C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100476084(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004760F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100476138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100476198()
{
  result = qword_1006C0AB0;
  if (!qword_1006C0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0AB0);
  }

  return result;
}

unint64_t sub_1004761EC()
{
  result = qword_1006C0AB8;
  if (!qword_1006C0AB8)
  {
    sub_10007EC08(&qword_1006C0C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0AB8);
  }

  return result;
}

unint64_t sub_1004762D0()
{
  result = qword_1006C0AC8;
  if (!qword_1006C0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0AC8);
  }

  return result;
}

unint64_t sub_100476324()
{
  result = qword_1006C0AD0;
  if (!qword_1006C0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0AD0);
  }

  return result;
}

uint64_t sub_100476378(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006C0AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100476410()
{
  result = qword_1006C0AE0;
  if (!qword_1006C0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0AE0);
  }

  return result;
}

unint64_t sub_100476464()
{
  result = qword_1006C0AE8;
  if (!qword_1006C0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0AE8);
  }

  return result;
}

unint64_t sub_100476554()
{
  result = qword_1006C0AF0;
  if (!qword_1006C0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0AF0);
  }

  return result;
}

unint64_t sub_1004765AC()
{
  result = qword_1006C0AF8;
  if (!qword_1006C0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0AF8);
  }

  return result;
}

unint64_t sub_100476604()
{
  result = qword_1006C0B00;
  if (!qword_1006C0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B00);
  }

  return result;
}

unint64_t sub_10047665C()
{
  result = qword_1006C0B08;
  if (!qword_1006C0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B08);
  }

  return result;
}

unint64_t sub_1004766B4()
{
  result = qword_1006C0B10;
  if (!qword_1006C0B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B10);
  }

  return result;
}

unint64_t sub_10047670C()
{
  result = qword_1006C0B18;
  if (!qword_1006C0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B18);
  }

  return result;
}

unint64_t sub_100476764()
{
  result = qword_1006C0B20;
  if (!qword_1006C0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B20);
  }

  return result;
}

unint64_t sub_1004767BC()
{
  result = qword_1006C0B28;
  if (!qword_1006C0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B28);
  }

  return result;
}

unint64_t sub_100476814()
{
  result = qword_1006C0B30;
  if (!qword_1006C0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B30);
  }

  return result;
}

uint64_t sub_100476878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a1;
  v16[1] = a2;
  static CharacterSet.whitespaces.getter();
  sub_100035F3C();
  v8 = StringProtocol.trimmingCharacters(in:)();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = sub_1004769D8(v8, v10, 0, 0, 0, 0, 0);
    v14 = v13;

    return (v14 >> 8) & 1;
  }

  else
  {

    return 0;
  }
}

id sub_1004769D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_10000905C(0, &qword_1006B50C0);
  sub_10007EBC0(&unk_1006B20B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100552220;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_10008EE84();
  *(v10 + 32) = 0xD000000000000029;
  *(v10 + 40) = 0x8000000100580FB0;
  v11 = NSPredicate.init(format:_:)();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 evaluateWithObject:v12];

  if (v13)
  {
    v14 = objc_opt_self();
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 predicateForContactsMatchingEmailAddress:v15];
  }

  else
  {
    v17 = sub_100477BA0(a1, a2, 0);

    if ((v17 & 1) == 0)
    {
      v56 = 0;
      v13 = 1;
      v20 = 1;
      if (a7)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    v18 = objc_allocWithZone(CNPhoneNumber);
    v19 = String._bridgeToObjectiveC()();
    v15 = [v18 initWithStringValue:v19];

    v16 = [objc_opt_self() predicateForContactsMatchingPhoneNumber:v15];
  }

  v56 = v16;

  v20 = 0;
  if (a7)
  {
    goto LABEL_18;
  }

LABEL_8:
  sub_100477134(&v58);
  v21 = v58;
  if (v58)
  {
    v22 = sub_100478030(v58);
    v23 = v22 + 5;
    v24 = v22[2] + 1;
    while (--v24)
    {
      if (*(v23 - 1) != a1 || *v23 != a2)
      {
        v23 += 6;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      return v21;
    }
  }

LABEL_18:
  v26 = [objc_opt_self() authorizationStatusForEntityType:0];
  if ((a7 & 1) != 0 || v26 != 3)
  {
    goto LABEL_34;
  }

  v27 = [objc_allocWithZone(CNContactStore) init];
  if (!v56)
  {
    goto LABEL_33;
  }

  v53 = v20;
  v28 = qword_1006AED58;
  v29 = v56;
  if (v28 != -1)
  {
    swift_once();
  }

  sub_10007EBC0(&qword_1006AF180);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v57 = 0;
  v31 = [v27 unifiedContactsMatchingPredicate:v29 keysToFetch:isa error:&v57];

  v32 = v57;
  if (v31)
  {
    sub_10000905C(0, &qword_1006BFD00);
    v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v32;

    if (v33 >> 62)
    {
      v20 = v53;
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_26;
      }
    }

    else
    {
      v20 = v53;
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_26:
        if ((v33 & 0xC000000000000001) != 0)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v35 = *(v33 + 32);
        }

        v21 = v35;

        return v21;
      }
    }

LABEL_33:
    goto LABEL_34;
  }

  v36 = v57;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  v20 = v53;
LABEL_34:
  v21 = [objc_allocWithZone(CNMutableContact) init];
  if (a4)
  {
    v37 = String._bridgeToObjectiveC()();
    [v21 setGivenName:v37];
  }

  if (a6)
  {
    v38 = String._bridgeToObjectiveC()();
    [v21 setFamilyName:v38];
  }

  if ((v13 | v20))
  {
    v39 = CNLabelOther;
    v40 = String._bridgeToObjectiveC()();
    v41 = [objc_allocWithZone(CNLabeledValue) initWithLabel:v39 value:v40];

    sub_10007EBC0(&qword_1006AFC30);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1005528C0;
    *(v42 + 32) = v41;
    v43 = v41;
    sub_10007EBC0(&unk_1006BC970);
    v44 = Array._bridgeToObjectiveC()().super.isa;

    [v21 setEmailAddresses:v44];
  }

  else
  {
    v45 = objc_allocWithZone(CNPhoneNumber);
    v46 = String._bridgeToObjectiveC()();
    v47 = [v45 initWithStringValue:v46];

    v48 = [objc_allocWithZone(CNLabeledValue) initWithLabel:CNLabelOther value:v47];
    sub_10007EBC0(&qword_1006AFC30);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1005528C0;
    *(v49 + 32) = v48;
    v50 = v48;
    sub_10007EBC0(&unk_1006BC970);
    v51 = Array._bridgeToObjectiveC()().super.isa;

    [v21 setPhoneNumbers:v51];
  }

  return v21;
}

void sub_100477134(void *a1@<X8>)
{
  p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
  v3 = &_s8FMIPCore15FMIPProductTypeO4zeusyAcA26FMIPZeusProductInformationV_tcACmFWC_ptr;
  v4 = &selRef_pushViewController_animated_;
  if ([objc_opt_self() authorizationStatusForEntityType:0] == 3)
  {
    v5 = [objc_allocWithZone(CNContactStore) init];
    if (qword_1006AED58 != -1)
    {
      goto LABEL_46;
    }

    while (1)
    {

      sub_10007EBC0(&qword_1006AF180);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v54 = 0;
      v7 = [v5 _ios_meContactWithKeysToFetch:isa error:&v54];

      if (!v7)
      {
        v15 = v54;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        sub_100005B14(v16, qword_1006D4630);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v17, v18, "No access to me card. Use device's primary account.", v19, 2u);
        }

        v5 = v17;
        goto LABEL_29;
      }

      v8 = v54;
      v9 = sub_100478030(v7);
      v10 = [objc_allocWithZone(v3[485]) p_ivar_lyt[394]];
      v11 = [v10 v4[266]];

      if (!v11)
      {
        break;
      }

      v53 = a1;
      v12 = [v11 aa_primaryEmail];
      v52 = v5;
      if (v12)
      {
        v13 = v12;
        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        a1 = v14;
      }

      else
      {
        v3 = 0;
        a1 = 0;
      }

      v23 = v9;
      v5 = v9[2];
      if (!v5)
      {
LABEL_27:

        v5 = v52;
        a1 = v53;
        v4 = &selRef_pushViewController_animated_;
        p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
        v3 = &_s8FMIPCore15FMIPProductTypeO4zeusyAcA26FMIPZeusProductInformationV_tcACmFWC_ptr;
        goto LABEL_29;
      }

      v50 = v11;
      v51 = v7;
      v24 = 0;
      v25 = v9 + 5;
      while (v24 < v23[2])
      {
        if (a1)
        {
          v4 = *(v25 - 1);
          v26 = *v25;
          v22 = v25[1];
          p_ivar_lyt = v25[2];
          if (v4 == v3 && a1 == v26)
          {
            v4 = v3;
            v21 = a1;
            goto LABEL_44;
          }

          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v23 = v9;
          if (v28)
          {
            v21 = v26;
LABEL_44:

            a1 = v53;
            v7 = v51;
            goto LABEL_42;
          }
        }

        v24 = (v24 + 1);
        v25 += 6;
        if (v5 == v24)
        {
          v11 = v50;
          v7 = v51;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_46:
      swift_once();
    }

    v20 = sub_100478030(v7);
    if (v20[2])
    {
      v4 = v20[4];
      v21 = v20[5];
      v22 = v20[6];
      p_ivar_lyt = v20[7];

      goto LABEL_42;
    }

LABEL_29:
  }

  v29 = [objc_allocWithZone(v3[485]) p_ivar_lyt[394]];
  v30 = [v29 v4[266]];

  if (!v30)
  {
    v7 = 0;
    v4 = 0;
    v21 = 0;
    goto LABEL_41;
  }

  v31 = [v30 aa_primaryEmail];
  if (!v31)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    return;
  }

  v32 = v31;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = [v30 aa_firstName];
  if (v36)
  {
    v37 = v36;
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v41 = [v30 aa_lastName];
  if (v41)
  {
    v42 = a1;
    v43 = v41;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    a1 = v42;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  v7 = sub_1004769D8(v33, v35, v38, v40, v44, v46, 1);

  v47 = [v30 aa_primaryEmail];
  if (!v47)
  {
    goto LABEL_48;
  }

  v48 = v47;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v49;

LABEL_41:
  v22 = 0;
  p_ivar_lyt = 0;
LABEL_42:
  *a1 = v7;
  a1[1] = v4;
  a1[2] = v21;
  a1[3] = v22;
  a1[4] = p_ivar_lyt;
}

uint64_t sub_1004776EC()
{
  result = sub_10047770C();
  qword_1006D4CB0 = result;
  return result;
}

uint64_t sub_10047770C()
{
  sub_10007EBC0(&qword_1006AFC30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100562C20;
  *(v0 + 32) = CNContactTypeKey;
  *(v0 + 40) = CNContactIdentifierKey;
  *(v0 + 48) = CNContactGivenNameKey;
  *(v0 + 56) = CNContactFamilyNameKey;
  *(v0 + 64) = CNContactMiddleNameKey;
  *(v0 + 72) = CNContactNicknameKey;
  *(v0 + 80) = CNContactEmailAddressesKey;
  *(v0 + 88) = CNContactPhoneNumbersKey;
  *(v0 + 96) = CNContactPostalAddressesKey;
  v14 = v0;
  v1 = objc_opt_self();
  v2 = CNContactTypeKey;
  v3 = CNContactIdentifierKey;
  v4 = CNContactGivenNameKey;
  v5 = CNContactFamilyNameKey;
  v6 = CNContactMiddleNameKey;
  v7 = CNContactNicknameKey;
  v8 = CNContactEmailAddressesKey;
  v9 = CNContactPhoneNumbersKey;
  v10 = CNContactPostalAddressesKey;
  v11 = [v1 descriptorForRequiredKeysForStyle:0];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v12 = [objc_opt_self() descriptorForRequiredKeys];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v14;
}

uint64_t sub_10047791C(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [*a1 value];
  v7 = [v6 stringValue];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100035F3C();
  StringProtocol.components(separatedBy:)();

  sub_10007EBC0(&qword_1006C0C10);
  sub_1001500AC();
  v8 = BidirectionalCollection<>.joined(separator:)();
  v10 = v9;

  if (v8 == a3 && v10 == a4)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

id sub_100477B44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMContactsUtilities();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100477BA0(uint64_t a1, unint64_t a2, int a3)
{
  v45 = a3;
  v5 = type metadata accessor for CharacterSet();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v8 = __chkstk_darwin(v7);
  v10 = &v40 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v40 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v40 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v40 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v40 - v21;
  __chkstk_darwin(v20);
  if (!a2)
  {
    return a2 & 1;
  }

  v25 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v25 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
LABEL_17:
    LOBYTE(a2) = 0;
    return a2 & 1;
  }

  v42 = v24;
  v44 = &v40 - v23;
  static CharacterSet.decimalDigits.getter();
  static CharacterSet.whitespacesAndNewlines.getter();
  v43 = a1;
  CharacterSet.union(_:)();
  v26 = v10;
  v27 = a2;
  v28 = v5;
  v29 = v44;
  v30 = *(v6 + 8);
  v30(v26, v28);
  v30(v13, v28);
  static CharacterSet.controlCharacters.getter();
  CharacterSet.union(_:)();
  v30(v13, v28);
  v30(v16, v28);
  CharacterSet.init(charactersIn:)();
  CharacterSet.union(_:)();
  v30(v16, v28);
  v30(v19, v28);
  CharacterSet.inverted.getter();
  v30(v22, v28);
  v48 = v43;
  v49 = a2;
  sub_100035F3C();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  if ((v31 & 1) == 0)
  {
    v30(v29, v28);
    goto LABEL_17;
  }

  static CharacterSet.decimalDigits.getter();
  CharacterSet.init(charactersIn:)();
  CharacterSet.union(_:)();
  v30(v16, v28);
  v30(v19, v28);
  v32 = v42;
  CharacterSet.inverted.getter();
  v30(v22, v28);
  v33 = v43;
  v48 = v43;
  v49 = a2;

  v46 = v33;
  v47 = a2;
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v34 = v33;
  v35 = a2;
  if ((v36 & 1) == 0)
  {
    v41 = a2;
    do
    {
      String.removeSubrange(_:)();
      v33 = v48;
      v35 = v49;
      v46 = v48;
      v47 = v49;
      StringProtocol.rangeOfCharacter(from:options:range:)();
    }

    while ((v37 & 1) == 0);
    v27 = v41;
  }

  if (v45)
  {
    if (v33 == v34 && v35 == v27)
    {
      LOBYTE(a2) = 0;
    }

    else
    {
      LOBYTE(a2) = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }
  }

  else
  {
    LOBYTE(a2) = 1;
  }

  v30(v32, v28);
  v30(v44, v28);
  return a2 & 1;
}

void *sub_100478030(void *a1)
{
  v71 = type metadata accessor for CharacterSet();
  v2 = *(v71 - 8);
  __chkstk_darwin(v71);
  v78 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() stringFromContact:a1 style:0];
  if (v4)
  {
    v5 = v4;
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v6;
  }

  else
  {
    v77 = 0;
    v79 = 0;
  }

  v7 = [a1 phoneNumbers];
  sub_10007EBC0(&unk_1006BC970);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = [a1 emailAddresses];
  v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_61;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = &selRef_initWithScrollView_edge_;
    v73 = v8;
    if (i)
    {
      break;
    }

    v13 = _swiftEmptyArrayStorage;
LABEL_38:
    v47 = v72;
    if (v72 >> 62)
    {
      v64 = v72;
      v65 = _CocoaArrayWrapper.endIndex.getter();
      v47 = v64;
      v78 = v65;
      if (!v65)
      {
LABEL_63:

        return v13;
      }
    }

    else
    {
      v78 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v78)
      {
        goto LABEL_63;
      }
    }

    v48 = 0;
    v75 = v47 & 0xFFFFFFFFFFFFFF8;
    v76 = v47 & 0xC000000000000001;
    while (1)
    {
      if (v76)
      {
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v48 >= *(v75 + 16))
        {
          goto LABEL_60;
        }

        v49 = *(v47 + 8 * v48 + 32);
      }

      v50 = v49;
      v51 = (v48 + 1);
      if (__OFADD__(v48, 1))
      {
        break;
      }

      v52 = [v49 v11[37]];
      if (v52)
      {

        result = [v50 v11[37]];
        if (!result)
        {
          goto LABEL_65;
        }

        v53 = result;
        v54 = [objc_opt_self() localizedStringForLabel:result];

        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v56;
      }

      else
      {
        v55 = 0;
        v8 = 0;
      }

      v57 = [v50 value];
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_10008BC7C(0, v13[2] + 1, 1, v13);
      }

      v2 = v13[2];
      v61 = v13[3];
      if (v2 >= v61 >> 1)
      {
        v13 = sub_10008BC7C((v61 > 1), v2 + 1, 1, v13);
      }

      v13[2] = v2 + 1;
      v62 = &v13[6 * v2];
      v62[4] = v58;
      v62[5] = v60;
      v62[6] = v55;
      v62[7] = v8;
      v63 = v79;
      v62[8] = v77;
      v62[9] = v63;
      ++v48;
      v47 = v72;
      v11 = &selRef_initWithScrollView_edge_;
      if (v51 == v78)
      {
        goto LABEL_63;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    ;
  }

  v12 = 0;
  v70 = v8 & 0xC000000000000001;
  v66 = v8 & 0xFFFFFFFFFFFFFF8;
  v67 = kCFAllocatorDefault;
  v69 = (v2 + 8);
  v13 = _swiftEmptyArrayStorage;
  v68 = i;
  while (1)
  {
    if (v70)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *(v66 + 16))
      {
        goto LABEL_59;
      }

      v14 = *(v73 + 8 * v12 + 32);
    }

    v8 = v14;
    v2 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_57;
    }

    v15 = [v14 v11[37]];
    v76 = v12 + 1;
    if (v15)
    {
      break;
    }

    v74 = 0;
    v75 = 0;
LABEL_17:
    v21 = [v8 value];
    v22 = [v21 stringValue];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    static CharacterSet.decimalDigits.getter();
    v26._countAndFlagsBits = 0x2D232A29282BLL;
    v26._object = 0xE600000000000000;
    CharacterSet.insert(charactersIn:)(v26);
    v80 = v23;
    v81 = v25;
    sub_100035F3C();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    if (v27)
    {

      v28 = v23;
      v2 = v25;
    }

    else
    {
      v80 = v23;
      v81 = v25;
      v29 = String.Index.utf16Offset<A>(in:)();
      v30 = String.count.getter();
      v2 = v30 - v29;
      if (__OFSUB__(v30, v29))
      {
        goto LABEL_58;
      }

      v31 = String._bridgeToObjectiveC()();
      v32 = [v31 substringWithRange:{v29, v2}];

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v33;
    }

    v34 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v34 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      sub_1001230FC();
      v35 = String._bridgeToObjectiveC()();
      v36 = String._bridgeToObjectiveC()();

      v37 = CFPhoneNumberCreate();

      if (!v37)
      {
        goto LABEL_27;
      }

      v38 = v37;
      String = CFPhoneNumberCreateString();
      if (String)
      {
        v40 = String;

        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v2 = v41;

LABEL_27:
        (*v69)(v78, v71);
      }

      else
      {
        (*v69)(v78, v71);
      }

      v11 = &selRef_initWithScrollView_edge_;
      goto LABEL_31;
    }

    (*v69)(v78, v71);

LABEL_31:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10008BC7C(0, v13[2] + 1, 1, v13);
    }

    v43 = v13[2];
    v42 = v13[3];
    if (v43 >= v42 >> 1)
    {
      v13 = sub_10008BC7C((v42 > 1), v43 + 1, 1, v13);
    }

    v13[2] = v43 + 1;
    v44 = &v13[6 * v43];
    v44[4] = v28;
    v44[5] = v2;
    v45 = v74;
    v44[6] = v75;
    v44[7] = v45;
    v46 = v79;
    v44[8] = v77;
    v44[9] = v46;
    ++v12;
    if (v76 == v68)
    {
      goto LABEL_38;
    }
  }

  result = [v8 v11[37]];
  if (result)
  {
    v17 = result;
    v18 = [objc_opt_self() localizedStringForLabel:result];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v20;
    v75 = v19;

    goto LABEL_17;
  }

  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

id sub_100478820(uint64_t a1, uint64_t a2)
{
  sub_10000905C(0, &qword_1006B50C0);
  sub_10007EBC0(&unk_1006B20B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100552220;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_10008EE84();
  *(v3 + 32) = 0xD000000000000029;
  *(v3 + 40) = 0x8000000100580FB0;
  v4 = NSPredicate.init(format:_:)();
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 evaluateWithObject:v5];

  swift_unknownObjectRelease();
  return v6;
}

void *sub_100478940(uint64_t a1, uint64_t a2, void *a3)
{
  v41 = a1;
  v42 = a2;
  v4 = type metadata accessor for CharacterSet();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v34 - v8;
  v9 = [a3 emailAddresses];
  v10 = sub_10007EBC0(&unk_1006BC970);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = v10;
  v37 = a3;
  v35 = v7;
  if (v11 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      sub_10000905C(0, &qword_1006B4980);
      v17 = [v15 value];
      v18 = String._bridgeToObjectiveC()();
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {

        v20 = [v15 identifier];

        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v21;
      }

      ++v13;
      if (v16 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v22 = v35;
  CharacterSet.init(charactersIn:)();
  v23 = v38;
  CharacterSet.inverted.getter();
  v24 = v40;
  v25 = *(v39 + 8);
  v25(v22, v40);
  v43 = v41;
  v44 = v42;
  sub_100035F3C();
  v43 = StringProtocol.components(separatedBy:)();
  sub_10007EBC0(&qword_1006C0C10);
  sub_1001500AC();
  v26 = BidirectionalCollection<>.joined(separator:)();
  v28 = v27;

  v29 = [v37 phoneNumbers];
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  __chkstk_darwin(v31);
  *(&v34 - 4) = v23;
  *(&v34 - 3) = v26;
  *(&v34 - 2) = v28;
  v21 = sub_100110BC4(sub_100479188, (&v34 - 6), v30);

  if (v21)
  {
    v32 = [v21 identifier];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v25(v23, v24);
  return v21;
}

uint64_t sub_100478D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v20 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = v20 - v13;
  __chkstk_darwin(v12);
  v16 = v20 - v15;
  static CharacterSet.whitespacesAndNewlines.getter();
  static CharacterSet.controlCharacters.getter();
  CharacterSet.union(_:)();
  v17 = *(v5 + 8);
  v17(v8, v4);
  v17(v11, v4);
  CharacterSet.init(charactersIn:)();
  CharacterSet.union(_:)();
  v17(v11, v4);
  v17(v14, v4);
  v20[0] = a1;
  v20[1] = a2;
  sub_100035F3C();
  v18 = StringProtocol.trimmingCharacters(in:)();
  v17(v16, v4);
  return v18;
}

id sub_100478F60()
{
  v0 = 0;
  if ([objc_opt_self() authorizationStatusForEntityType:0] == 3)
  {
    v1 = [objc_allocWithZone(CNContactStore) init];
    if (qword_1006AED58 != -1)
    {
      swift_once();
    }

    sub_10007EBC0(&qword_1006AF180);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = 0;
    v0 = [v1 _ios_meContactWithKeysToFetch:isa error:&v10];

    v3 = v10;
    if (!v0)
    {
      v4 = v3;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100005B14(v5, qword_1006D4630);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "No access to me card. Use device's primary account.", v8, 2u);
      }

      v0 = 0;
      v1 = v6;
    }
  }

  return v0;
}

uint64_t sub_1004791AC(uint64_t a1)
{
  v3 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageAdjustmentsURL;
  swift_beginAccess();
  sub_10047A2DC(a1, &v1[v10]);
  swift_endAccess();
  sub_1000C5F60(&v1[v10], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100012DF0(a1, &unk_1006B0120);
    return sub_100012DF0(v5, &unk_1006B0120);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = [v1 traitCollection];
    v13 = [v12 userInterfaceStyle];

    if (v13 == 2)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v15 = *&v1[OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageView];
    URL._bridgeToObjectiveC()(v16);
    v18 = v17;
    [v15 updateViewForAssetType:v14 adjustmentsURL:v17];

    sub_100012DF0(a1, &unk_1006B0120);
    return (*(v7 + 8))(v9, v6);
  }
}

id sub_100479414()
{
  v1 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageAdjustmentsURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_stackView;
  *&v0[v3] = [objc_allocWithZone(UIStackView) init];
  v4 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_primaryLabel;
  *&v0[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_secondaryLabel;
  *&v0[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageView;
  *&v0[v6] = [objc_allocWithZone(SFAdjustedImageView) init];
  v9.receiver = v0;
  v9.super_class = type metadata accessor for FMProductActionHeaderView();
  v7 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10047960C();

  return v7;
}

uint64_t sub_10047960C()
{
  v1 = v0;
  sub_100479ED0();
  v68 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageView;
  [*&v0[OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageView] setContentMode:1];
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EE0;
  v3 = *&v1[OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_primaryLabel];
  *(inited + 32) = v3;
  v4 = *&v1[OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_secondaryLabel];
  *(inited + 40) = v4;
  v5 = inited & 0xC000000000000001;
  p_ivar_lyt = (inited & 0xFFFFFFFFFFFFFF8);
  v7 = v3;
  v8 = v4;
  v9 = v7;
  v69 = v8;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_19;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

  for (i = v9; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v11 = i;
    [i setNumberOfLines:0];
    [v11 setTextAlignment:1];
    [v11 setAdjustsFontForContentSizeCategory:1];

    if (v5)
    {
      break;
    }

    if (p_ivar_lyt[2] >= 2)
    {
      v12 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v13 = v12;
  [v12 setNumberOfLines:0];
  [v13 setTextAlignment:1];
  [v13 setAdjustsFontForContentSizeCategory:1];

  swift_setDeallocating();
  swift_arrayDestroy();
  v14 = objc_opt_self();
  v15 = [v14 preferredFontForTextStyle:UIFontTextStyleHeadline];
  sub_10007EBC0(&qword_1006BA720);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_100552220;
  *(v16 + 32) = UIFontWeightTrait;
  *(v16 + 40) = UIFontWeightSemibold;
  v17 = UIFontWeightTrait;
  v18 = sub_10002AB84(v16);
  swift_setDeallocating();
  sub_100012DF0(v16 + 32, &qword_1006B47A0);
  v19 = sub_10002ACDC(v18);

  v20 = sub_100039388(0x8000);

  p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
  [v9 setFont:v20];

  v21 = objc_opt_self();
  v22 = [v21 labelColor];
  [v9 setTextColor:v22];

  v23 = [v14 preferredFontForTextStyle:UIFontTextStyleBody];
  v24 = sub_100039388(0x8000);

  [v69 setFont:v24];
  v25 = [v21 secondaryLabelColor];
  [v69 setTextColor:v25];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EF0;
  v26 = *&v1[v68];
  *(inited + 32) = v26;
  *(inited + 40) = v9;
  *(inited + 48) = v69;
  v5 = inited & 0xC000000000000001;
  v27 = v26;
  if ((inited & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v28 = v27;
  }

  v29 = v28;
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  p_ivar_lyt = &selRef__enter3DMode;
  [v1 addSubview:v29];

  if (!v5)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v30 = *(inited + 40);
      goto LABEL_13;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
  v31 = v30;
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v31];

  if (!v5)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v32 = *(inited + 48);
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
  v33 = v32;
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v33];

  swift_setDeallocating();
  swift_arrayDestroy();
  v67 = objc_opt_self();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1005568E0;
  v35 = [*&v1[v68] topAnchor];
  v36 = [v1 topAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v34 + 32) = v37;
  v38 = [*&v1[v68] leadingAnchor];
  v39 = [v1 leadingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v34 + 40) = v40;
  v41 = [*&v1[v68] trailingAnchor];
  v42 = [v1 trailingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  *(v34 + 48) = v43;
  v44 = [v9 topAnchor];
  v45 = [*&v1[v68] bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v34 + 56) = v46;
  v47 = [v9 leadingAnchor];
  v48 = [v1 leadingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v34 + 64) = v49;
  v50 = [v9 trailingAnchor];
  v51 = [v1 trailingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v34 + 72) = v52;
  v53 = [v69 topAnchor];
  v54 = [v9 bottomAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v34 + 80) = v55;
  v56 = [v69 leadingAnchor];
  v57 = [v1 leadingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];

  *(v34 + 88) = v58;
  v59 = [v69 trailingAnchor];
  v60 = [v1 trailingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *(v34 + 96) = v61;
  v62 = [v69 bottomAnchor];
  v63 = [v1 bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v34 + 104) = v64;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v67 activateConstraints:isa];

  return sub_100479ED0();
}

uint64_t sub_100479ED0()
{
  v1 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageAdjustmentsURL;
  swift_beginAccess();
  sub_1000C5F60(&v0[v8], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_100012DF0(v3, &unk_1006B0120);
  }

  (*(v5 + 32))(v7, v3, v4);
  v10 = [v0 traitCollection];
  v11 = [v10 userInterfaceStyle];

  if (v11 == 2)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v13 = *&v0[OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageView];
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  [v13 updateViewForAssetType:v12 adjustmentsURL:v15];

  return (*(v5 + 8))(v7, v4);
}

id sub_10047A120()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMProductActionHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMProductActionHeaderView()
{
  result = qword_1006C0C60;
  if (!qword_1006C0C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10047A238()
{
  sub_10018A184();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10047A2DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006B0120);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10047A34C()
{
  v1 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageAdjustmentsURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_stackView;
  *(v0 + v3) = [objc_allocWithZone(UIStackView) init];
  v4 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_primaryLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_secondaryLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageView;
  *(v0 + v6) = [objc_allocWithZone(SFAdjustedImageView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

FindMy::UTAlertContextMode_optional __swiftcall UTAlertContextMode.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100622F50, v2);

  if (v3 == 1)
  {
    v4.value = FindMy_UTAlertContextMode_itemDetectedWithYou;
  }

  else
  {
    v4.value = FindMy_UTAlertContextMode_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t UTAlertContextMode.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10047A51C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = "fallback-loc-args";
  }

  else
  {
    v4 = "itemFollowingYou";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = "itemFollowingYou";
  }

  else
  {
    v7 = "fallback-loc-args";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_10047A5C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10047A648()
{
  String.hash(into:)();
}

Swift::Int sub_10047A6B4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10047A730@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100622F50, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10047A790(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "itemFollowingYou";
  }

  else
  {
    v3 = "fallback-loc-args";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t type metadata accessor for UTAlertContext()
{
  result = qword_1006C0D08;
  if (!qword_1006C0D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UTAlertContext.roleEmoji.getter()
{
  v1 = *(v0 + *(type metadata accessor for UTAlertContext() + 28));

  return v1;
}

uint64_t UTAlertContext.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for UTAlertContext() + 32));

  return v1;
}

uint64_t UTAlertContext.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for UTAlertContext() + 36));

  return v1;
}

int *UTAlertContext.init(uuid:mode:roleId:roleEmoji:title:subtitle:latitude:longitude:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  sub_10047AB40(a1, a9);
  result = type metadata accessor for UTAlertContext();
  *(a9 + result[5]) = a2;
  v22 = a9 + result[6];
  *v22 = a3;
  *(v22 + 8) = a4 & 1;
  v23 = (a9 + result[7]);
  *v23 = a5;
  v23[1] = a6;
  v24 = (a9 + result[8]);
  *v24 = a7;
  v24[1] = a8;
  v25 = (a9 + result[9]);
  *v25 = a10;
  v25[1] = a11;
  v26 = a9 + result[10];
  *v26 = a12;
  *(v26 + 8) = a13 & 1;
  v27 = a9 + result[11];
  *v27 = a14;
  *(v27 + 8) = a15 & 1;
  return result;
}

uint64_t sub_10047AB40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006B20C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t UTAlertContext.debugDescription.getter()
{
  v1 = 0xD000000000000010;
  v2 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v39 = 0xD000000000000017;
  v40 = 0x800000010059ACE0;
  sub_100109C84(v0, v4);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006B20C0);
    Substring.init(_:)();
  }

  else
  {
    UUID.uuidString.getter();
    (*(v6 + 8))(v4, v5);
    sub_10047BEA4(10);
  }

  v7 = static String._fromSubstring(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x3A65646F6D20;
  v11._object = 0xE600000000000000;
  String.append(_:)(v11);
  v12 = type metadata accessor for UTAlertContext();
  v13 = *(v0 + v12[5]);
  v14 = 0xE200000000000000;
  if (v13 == 2)
  {
    v1 = 10023;
    v15 = 0xE200000000000000;
  }

  else if (v13)
  {
    v15 = 0x8000000100579100;
    v1 = 0xD000000000000013;
  }

  else
  {
    v15 = 0x80000001005790E0;
  }

  v16._countAndFlagsBits = v1;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 8236;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v19 = v39;
  v18 = v40;
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  v39 = 0x3A656C746974;
  v40 = 0xE600000000000000;
  v20 = (v0 + v12[8]);
  v21 = v20[1];
  if (v21)
  {
    v22 = *v20;
  }

  else
  {
    v22 = 10023;
  }

  if (v21)
  {
    v23 = v20[1];
  }

  else
  {
    v23 = 0xE200000000000000;
  }

  v24._countAndFlagsBits = v22;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 0x75746974616C202CLL;
  v25._object = 0xEB000000003A6564;
  String.append(_:)(v25);
  if (*(v0 + v12[10] + 8))
  {
    v26 = 24942;
  }

  else
  {
    v26 = Double.description.getter();
    v14 = v27;
  }

  v28 = v14;
  String.append(_:)(*&v26);

  v29._countAndFlagsBits = 0x7469676E6F6C202CLL;
  v29._object = 0xEC0000003A656475;
  String.append(_:)(v29);
  if (*(v0 + v12[11] + 8))
  {
    v30 = 0xE200000000000000;
    v31 = 24942;
  }

  else
  {
    v31 = Double.description.getter();
    v30 = v32;
  }

  v33 = v30;
  String.append(_:)(*&v31);

  v34._countAndFlagsBits = 62;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  v35 = v39;
  v36 = v40;
  v39 = v19;
  v40 = v18;

  v37._countAndFlagsBits = v35;
  v37._object = v36;
  String.append(_:)(v37);

  return v39;
}

uint64_t sub_10047AF70()
{
  v1 = *v0;
  v2 = 1684632949;
  v3 = 0x656475746974616CLL;
  if (v1 != 6)
  {
    v3 = 0x64757469676E6F6CLL;
  }

  v4 = 0x656C746974;
  if (v1 != 4)
  {
    v4 = 0x656C746974627573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6449656C6F72;
  if (v1 != 2)
  {
    v5 = 0x6A6F6D45656C6F72;
  }

  if (*v0)
  {
    v2 = 1701080941;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10047B058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10047C544(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10047B08C(uint64_t a1)
{
  v2 = sub_10047BF40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10047B0C8(uint64_t a1)
{
  v2 = sub_10047BF40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UTAlertContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10007EBC0(&qword_1006C0C70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000244BC(a1, a1[3]);
  sub_10047BF40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  type metadata accessor for UUID();
  sub_10047C830(&qword_1006C0C80);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for UTAlertContext() + 20));
    v10[13] = 1;
    sub_10047BF94();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10[12] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[11] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[10] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[9] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[8] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[7] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t UTAlertContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v38 = sub_10007EBC0(&qword_1006C0C90);
  v7 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v37 - v8;
  v10 = type metadata accessor for UTAlertContext();
  __chkstk_darwin(v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v39 = a1;
  sub_1000244BC(a1, v13);
  sub_10047BF40();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006060(v39);
  }

  v14 = v7;
  type metadata accessor for UUID();
  v48 = 0;
  sub_10047C830(&qword_1006C0C98);
  v15 = v38;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10047AB40(v6, v12);
  v46 = 1;
  sub_10047BFE8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v12[v10[5]] = v47;
  v45 = 2;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = &v12[v10[6]];
  *v17 = v16;
  v17[8] = v18 & 1;
  v44 = 3;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = &v12[v10[7]];
  *v20 = v19;
  v20[1] = v21;
  v43 = 4;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = &v12[v10[8]];
  *v23 = v22;
  v23[1] = v24;
  v42 = 5;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = &v12[v10[9]];
  *v26 = v25;
  v26[1] = v27;
  v41 = 6;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = &v12[v10[10]];
  *v29 = v28;
  v29[8] = v30 & 1;
  v40 = 7;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = *(v14 + 8);
  v33 = v31;
  LOBYTE(v14) = v34;
  v32(v9, v15);
  v35 = &v12[v10[11]];
  *v35 = v33;
  v35[8] = v14 & 1;
  sub_10047C03C(v12, v37);
  sub_100006060(v39);
  return sub_10047C0A0(v12);
}

BOOL _s6FindMy14UTAlertContextV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v66 - v9;
  v11 = sub_10007EBC0(&qword_1006B22E8);
  __chkstk_darwin(v11 - 8);
  v13 = &v66 - v12;
  v15 = *(v14 + 56);
  sub_100109C84(a1, &v66 - v12);
  sub_100109C84(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_100012DF0(v13, &unk_1006B20C0);
      goto LABEL_9;
    }

LABEL_6:
    sub_100012DF0(v13, &qword_1006B22E8);
    return 0;
  }

  sub_100109C84(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_10047C830(&qword_1006B22F0);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_100012DF0(v13, &unk_1006B20C0);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v20 = type metadata accessor for UTAlertContext();
  v21 = v20[5];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v23 == 2)
    {
      return 0;
    }

    v24 = v20;
    if (v22)
    {
      v25 = 0xD000000000000013;
    }

    else
    {
      v25 = 0xD000000000000010;
    }

    if (v22)
    {
      v26 = "itemFollowingYou";
    }

    else
    {
      v26 = "fallback-loc-args";
    }

    if (v23)
    {
      v27 = 0xD000000000000013;
    }

    else
    {
      v27 = 0xD000000000000010;
    }

    if (v23)
    {
      v28 = "itemFollowingYou";
    }

    else
    {
      v28 = "fallback-loc-args";
    }

    if (v25 == v27 && (v26 | 0x8000000000000000) == (v28 | 0x8000000000000000))
    {

      v20 = v24;
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v20 = v24;
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v30 = v20[6];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 8);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  v35 = v20[7];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }

    if (*v36 != *v38 || v37 != v39)
    {
      v40 = v20;
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v20 = v40;
      if ((v41 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v39)
  {
    return 0;
  }

  v42 = v20[8];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (!v46)
    {
      return 0;
    }

    if (*v43 != *v45 || v44 != v46)
    {
      v47 = v20;
      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v20 = v47;
      if ((v48 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v46)
  {
    return 0;
  }

  v49 = v20[9];
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a2 + v49);
  v53 = v52[1];
  if (v51)
  {
    if (!v53)
    {
      return 0;
    }

    if (*v50 != *v52 || v51 != v53)
    {
      v54 = v20;
      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v20 = v54;
      if ((v55 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v53)
  {
    return 0;
  }

  v56 = v20[10];
  v57 = (a1 + v56);
  v58 = *(a1 + v56 + 8);
  v59 = (a2 + v56);
  v60 = *(a2 + v56 + 8);
  if (v58)
  {
    if (!v60)
    {
      return 0;
    }
  }

  else
  {
    if (*v57 != *v59)
    {
      LOBYTE(v60) = 1;
    }

    if (v60)
    {
      return 0;
    }
  }

  v61 = v20[11];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 8);
  v64 = (a2 + v61);
  v65 = *(a2 + v61 + 8);
  if ((v63 & 1) == 0)
  {
    if (*v62 != *v64)
    {
      v65 = 1;
    }

    return (v65 & 1) == 0;
  }

  return (v65 & 1) != 0;
}

uint64_t sub_10047BEA4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

unint64_t sub_10047BF40()
{
  result = qword_1006C0C78;
  if (!qword_1006C0C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0C78);
  }

  return result;
}

unint64_t sub_10047BF94()
{
  result = qword_1006C0C88;
  if (!qword_1006C0C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0C88);
  }

  return result;
}

unint64_t sub_10047BFE8()
{
  result = qword_1006C0CA0;
  if (!qword_1006C0CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0CA0);
  }

  return result;
}

uint64_t sub_10047C03C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTAlertContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10047C0A0(uint64_t a1)
{
  v2 = type metadata accessor for UTAlertContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10047C100()
{
  result = qword_1006C0CA8;
  if (!qword_1006C0CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0CA8);
  }

  return result;
}

void sub_10047C18C()
{
  sub_1002992FC();
  if (v0 <= 0x3F)
  {
    sub_10047C2A0(319, &qword_1006C0D18);
    if (v1 <= 0x3F)
    {
      sub_10047C2A0(319, &qword_1006C0D20);
      if (v2 <= 0x3F)
      {
        sub_10047C2A0(319, &qword_1006C1BE0);
        if (v3 <= 0x3F)
        {
          sub_10047C2A0(319, &unk_1006C0D28);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10047C2A0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for UTAlertContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UTAlertContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10047C440()
{
  result = qword_1006C0D70;
  if (!qword_1006C0D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0D70);
  }

  return result;
}

unint64_t sub_10047C498()
{
  result = qword_1006C0D78;
  if (!qword_1006C0D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0D78);
  }

  return result;
}

unint64_t sub_10047C4F0()
{
  result = qword_1006C0D80;
  if (!qword_1006C0D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0D80);
  }

  return result;
}

uint64_t sub_10047C544(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6449656C6F72 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6A6F6D45656C6F72 && a2 == 0xE900000000000069 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_10047C7DC()
{
  result = qword_1006C0D88;
  if (!qword_1006C0D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0D88);
  }

  return result;
}

uint64_t sub_10047C830(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10047C9DC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy13FMWaitingView_title];
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  sub_10007EBC0(&qword_1006BA720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightMedium;
  v5 = UIFontWeightTrait;
  v6 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_10002AC74(inited + 32);
  v7 = sub_10002ACDC(v6);

  [v2 setFont:v7];

  [v2 setAdjustsFontForContentSizeCategory:1];
  v8 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor:v8];

  v9 = [objc_opt_self() mainBundle];
  v14._object = 0x800000010059AD20;
  v10._countAndFlagsBits = 0x474E4954494157;
  v10._object = 0xE700000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD000000000000019;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v14);

  v12 = String._bridgeToObjectiveC()();

  [v2 setText:v12];

  [v1 addSubview:v2];
  return [v1 addSubview:*&v1[OBJC_IVAR____TtC6FindMy13FMWaitingView_activityIndicator]];
}

void sub_10047CC14()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy13FMWaitingView_title];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy13FMWaitingView_activityIndicator];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1005521F0;
  v4 = [v2 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [v2 bottomAnchor];
  v8 = [v0 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [v2 leadingAnchor];
  v11 = [v1 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [v2 trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100552EF0;
  v18 = [v1 topAnchor];
  v19 = [v0 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v17 + 32) = v20;
  v21 = [v1 bottomAnchor];
  v22 = [v0 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v17 + 40) = v23;
  v24 = [v1 leadingAnchor];
  v25 = [v0 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v17 + 48) = v26;
  v28 = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:v28];
}

id sub_10047D034()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMWaitingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10047D130(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for FMAccessoryPairingInProgressCard();
  objc_msgSendSuper2(&v8, "viewWillAppear:", a1 & 1);
  v3 = [objc_opt_self() mainBundle];
  v9._object = 0x8000000100579A00;
  v4._countAndFlagsBits = 0xD000000000000034;
  v4._object = 0x800000010059ADB0;
  v5.value._object = 0x80000001005799E0;
  v9._countAndFlagsBits = 0xD000000000000018;
  v5.value._countAndFlagsBits = 0xD000000000000013;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v9);

  v7 = String._bridgeToObjectiveC()();

  [v1 showActivityIndicatorWithStatus:v7];
}

uint64_t sub_10047D28C()
{
  v1 = sub_10007EBC0(&qword_1006B64E0);
  __chkstk_darwin(v1 - 8);
  v3 = v29 - v2;
  v4 = sub_10007EBC0(&qword_1006C39A0);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = sub_10007EBC0(&qword_1006B3B08);
  v8 = *(v7 - 8);
  v30 = v7;
  v31 = v8;
  __chkstk_darwin(v7);
  v10 = v29 - v9;
  v11 = sub_10007EBC0(&qword_1006C0E38);
  v12 = *(v11 - 8);
  v32 = v11;
  v33 = v12;
  __chkstk_darwin(v11);
  v14 = v29 - v13;
  v15 = sub_10007EBC0(&qword_1006C0E40);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  __chkstk_darwin(v15);
  v29[0] = v29 - v17;
  type metadata accessor for FMAccessoryPairingInProgressCard.ViewModel();
  v18 = String._bridgeToObjectiveC()();
  [v0 setTitle:v18];

  FMIPDiscoveredAccessory.productInformation.getter();
  v19 = sub_1001B0BA8(v6, 1);
  sub_100012DF0(v6, &qword_1006C39A0);
  v37 = v19;
  v20 = [objc_opt_self() mainRunLoop];
  v36 = v20;
  v21 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v21 - 8) + 56))(v3, 1, 1, v21);
  sub_10007EBC0(&unk_1006B4D90);
  sub_10000905C(0, &qword_1006B2918);
  sub_100004098(&qword_1006B7800, &unk_1006B4D90);
  sub_100110658();
  Publisher.receive<A>(on:options:)();
  sub_100012DF0(v3, &qword_1006B64E0);

  sub_10000905C(0, &qword_1006BC2B0);
  sub_100004098(&qword_1006B3B18, &qword_1006B3B08);
  v22 = v30;
  Publisher.map<A>(_:)();
  (*(v31 + 8))(v10, v22);
  sub_10007EBC0(&qword_1006B5D38);
  sub_100004098(&qword_1006C0E48, &qword_1006C0E38);
  sub_100004098(&qword_1006C0E50, &qword_1006B5D38);
  v23 = v29[0];
  v24 = v32;
  Publisher.catch<A>(_:)();
  (*(v33 + 8))(v14, v24);
  swift_allocObject();
  v25 = v29[1];
  swift_unknownObjectWeakInit();
  sub_100004098(&qword_1006C0E58, &qword_1006C0E40);
  v26 = v34;
  v27 = Publisher<>.sink(receiveValue:)();

  (*(v35 + 8))(v23, v26);
  *(v25 + OBJC_IVAR____TtC6FindMy32FMAccessoryPairingInProgressCard_imageFetchCancellable) = v27;
}

id sub_10047D8B4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_10047D8C0()
{
  [objc_allocWithZone(UIImage) init];
  sub_10000905C(0, &qword_1006BC2B0);
  return Just.init(_:)();
}

void sub_10047D92C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC6FindMy32FMAccessoryPairingInProgressCard_imageView);

    [v4 setImage:v1];
  }
}

void sub_10047D9B4()
{
  v1 = [v0 contentView];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy32FMAccessoryPairingInProgressCard_imageView];
  [v1 addSubview:v2];

  [v2 setContentMode:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100555120;
  v4 = [v2 leadingAnchor];
  v5 = [v0 contentView];
  v6 = [v5 mainContentGuide];

  v7 = [v6 leadingAnchor];
  v8 = [v4 constraintGreaterThanOrEqualToAnchor:v7];

  *(v3 + 32) = v8;
  v9 = [v2 trailingAnchor];
  v10 = [v0 contentView];
  v11 = [v10 mainContentGuide];

  v12 = [v11 trailingAnchor];
  v13 = [v9 constraintLessThanOrEqualToAnchor:v12];

  *(v3 + 40) = v13;
  v14 = [v2 topAnchor];
  v15 = [v0 contentView];
  v16 = [v15 mainContentGuide];

  v17 = [v16 topAnchor];
  v18 = [v14 constraintGreaterThanOrEqualToAnchor:v17];

  *(v3 + 48) = v18;
  v19 = [v2 bottomAnchor];
  v20 = [v0 contentView];
  v21 = [v20 mainContentGuide];

  v22 = [v21 bottomAnchor];
  v23 = [v19 constraintLessThanOrEqualToAnchor:v22];

  *(v3 + 56) = v23;
  v24 = [v2 centerXAnchor];
  v25 = [v0 contentView];
  v26 = [v25 mainContentGuide];

  v27 = [v26 centerXAnchor];
  v28 = [v24 constraintEqualToAnchor:v27];

  *(v3 + 64) = v28;
  v29 = [v2 centerYAnchor];
  v30 = [v0 contentView];
  v31 = [v30 mainContentGuide];

  v32 = [v31 centerYAnchor];
  v33 = [v29 constraintEqualToAnchor:v32];

  *(v3 + 72) = v33;
  v34 = [v2 heightAnchor];
  v35 = [v34 constraintEqualToConstant:140.0];

  *(v3 + 80) = v35;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints:isa];
}

id sub_10047DF70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAccessoryPairingInProgressCard();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMAccessoryPairingInProgressCard.ViewModel()
{
  result = qword_1006C0EB8;
  if (!qword_1006C0EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10047E0A0()
{
  result = type metadata accessor for FMProductAssetProvider();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FMIPDiscoveredAccessory();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_10047E354()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAccessoryDiscoveryAccessoryCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10047E3AC()
{
  v0 = type metadata accessor for FMModernPlatterButtonEntry(0);
  sub_100005AB0(v0, qword_1006D4CC0);
  v1 = sub_100005B14(v0, qword_1006D4CC0);
  result = UUID.init()();
  *(v1 + *(v0 + 20)) = 1;
  return result;
}

double sub_10047E408@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_100556540;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

Swift::Int sub_10047E424(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10047F180(&unk_1006C2410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 20)));
  return Hasher._finalize()();
}

void sub_10047E4C8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_10047F180(&unk_1006C2410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
}

Swift::Int sub_10047E554(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10047F180(&unk_1006C2410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

uint64_t sub_10047E5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static UUID.== infix(_:_:)())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_10047E64C(uint64_t a1, uint64_t a2)
{
  sub_100153064();
  sub_10047F180(&qword_1006B0C38, sub_100153064);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for FMModernPlatterButton(0);
  objc_msgSendSuper2(&v18, "touchesBegan:withEvent:", isa, a2);

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  v16 = sub_10047F294;
  v17 = v6;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100004AE4;
  v15 = &unk_100640D18;
  v7 = _Block_copy(&v12);
  v8 = v2;

  [v5 animateWithDuration:v7 animations:0.15];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v16 = sub_10047F29C;
  v17 = v9;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100004AE4;
  v15 = &unk_100640D68;
  v10 = _Block_copy(&v12);
  v11 = v8;

  [v5 animateWithDuration:4 delay:v10 options:0 animations:0.25 completion:0.0];
  _Block_release(v10);
}

void sub_10047E87C(void *a1)
{
  v2 = [objc_opt_self() secondarySystemFillColor];
  [a1 setBackgroundColor:v2];
}

void sub_10047E908(uint64_t a1, uint64_t a2)
{
  sub_100153064();
  sub_10047F180(&qword_1006B0C38, sub_100153064);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for FMModernPlatterButton(0);
  objc_msgSendSuper2(&v25, "touchesEnded:withEvent:", isa, a2);

  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_11;
    }
  }

  else if (*(a1 + 16) != 1)
  {
    goto LABEL_11;
  }

  v6 = sub_1000F07E4(a1);
  if (v6)
  {
    v7 = v6;
    [v2 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [v7 locationInView:v2];
    v26.x = v16;
    v26.y = v17;
    v27.origin.x = v9;
    v27.origin.y = v11;
    v27.size.width = v13;
    v27.size.height = v15;
    if (CGRectContainsPoint(v27, v26))
    {
      if (qword_1006AED60 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for FMModernPlatterButtonEntry(0);
      v19 = sub_100005B14(v18, qword_1006D4CC0);
      (*((swift_isaMask & *v2) + 0x148))(v19, v2);
    }
  }

LABEL_11:
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = v2;
  v24[4] = sub_10047F278;
  v24[5] = v21;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_100004AE4;
  v24[3] = &unk_100640CC8;
  v22 = _Block_copy(v24);
  v23 = v2;

  [v20 animateWithDuration:4 delay:v22 options:0 animations:0.15 completion:0.1];
  _Block_release(v22);
}