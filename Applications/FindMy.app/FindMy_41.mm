uint64_t sub_1004523B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for FMDeviceCellViewModel();
  v9 = __chkstk_darwin(v35);
  v34 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_4:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_100027C48(v23, v17, type metadata accessor for FMDeviceCellViewModel);
      sub_100027C48(v20, v13, type metadata accessor for FMDeviceCellViewModel);
      v24 = sub_1004512E4(v17, v13);
      sub_10002A160(v13, type metadata accessor for FMDeviceCellViewModel);
      result = sub_10002A160(v17, type metadata accessor for FMDeviceCellViewModel);
      if (v4)
      {
        break;
      }

      if (v24)
      {
        if (!v33)
        {
          __break(1u);
          return result;
        }

        v25 = v34;
        sub_10032AA04(v23, v34);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_10032AA04(v25, v20);
        v20 += v21;
        v23 += v21;
        if (!__CFADD__(v22++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v20 = v31 + v27;
      v22 = v30 - 1;
      v23 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1004525E0(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v177 = a1;
  v191 = type metadata accessor for FMIPItemState();
  v8 = *(v191 - 8);
  v9 = __chkstk_darwin(v191);
  v197 = &v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v196 = &v173 - v11;
  v12 = sub_10007EBC0(&qword_1006B07D0);
  v13 = __chkstk_darwin(v12 - 8);
  v200 = &v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v173 - v15;
  v210 = type metadata accessor for FMIPItem();
  v17 = *(v210 - 8);
  v18 = __chkstk_darwin(v210);
  v190 = &v173 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v202 = &v173 - v20;
  v21 = type metadata accessor for FMDeviceCellViewModel();
  v192 = *(v21 - 1);
  v22 = __chkstk_darwin(v21);
  v179 = &v173 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v207 = &v173 - v25;
  v26 = __chkstk_darwin(v24);
  v211 = &v173 - v27;
  v28 = __chkstk_darwin(v26);
  v201 = &v173 - v29;
  v30 = __chkstk_darwin(v28);
  v184 = &v173 - v31;
  v32 = __chkstk_darwin(v30);
  v33 = __chkstk_darwin(v32);
  v175 = &v173 - v34;
  result = __chkstk_darwin(v33);
  v194 = a3;
  v38 = a3[1];
  if (v38 >= 1)
  {
    v174 = &v173 - v36;
    v183 = v37;
    v39 = 0;
    v203 = (v17 + 48);
    v199 = (v17 + 32);
    v188 = (v8 + 8);
    v198 = (v17 + 8);
    v40 = _swiftEmptyArrayStorage;
    v176 = a4;
    v204 = v16;
    v41 = v210;
    v208 = v21;
    while (1)
    {
      v42 = v39;
      v182 = v40;
      v178 = v39;
      if ((v39 + 1) >= v38)
      {
        v58 = (v39 + 1);
        v57 = v201;
        goto LABEL_26;
      }

      v189 = v38;
      v43 = *v194;
      v44 = *(v192 + 72);
      v45 = v39;
      v46 = *v194 + v44 * (v39 + 1);
      v47 = v174;
      sub_100027C48(v46, v174, type metadata accessor for FMDeviceCellViewModel);
      v17 = v175;
      sub_100027C48(v43 + v44 * v45, v175, type metadata accessor for FMDeviceCellViewModel);
      LODWORD(v209) = sub_1004512E4(v47, v17);
      if (v5)
      {
        sub_10002A160(v17, type metadata accessor for FMDeviceCellViewModel);
        sub_10002A160(v47, type metadata accessor for FMDeviceCellViewModel);
      }

      v193 = 0;
      sub_10002A160(v17, type metadata accessor for FMDeviceCellViewModel);
      result = sub_10002A160(v47, type metadata accessor for FMDeviceCellViewModel);
      v48 = v45 + 2;
      v206 = v44;
      v49 = v43 + v44 * (v45 + 2);
      v50 = v189;
      do
      {
        if (v50 == v48)
        {
          goto LABEL_10;
        }

        v51 = v183;
        sub_100027C48(v49, v183, type metadata accessor for FMDeviceCellViewModel);
        v52 = v184;
        sub_100027C48(v46, v184, type metadata accessor for FMDeviceCellViewModel);
        v53 = v193;
        v54 = sub_1004512E4(v51, v52);
        v193 = v53;
        if (v53)
        {
          sub_10002A160(v52, type metadata accessor for FMDeviceCellViewModel);
          sub_10002A160(v51, type metadata accessor for FMDeviceCellViewModel);
        }

        v55 = v54;
        v56 = v52;
        v17 = type metadata accessor for FMDeviceCellViewModel;
        sub_10002A160(v56, type metadata accessor for FMDeviceCellViewModel);
        result = sub_10002A160(v51, type metadata accessor for FMDeviceCellViewModel);
        ++v48;
        v49 += v206;
        v46 += v206;
      }

      while (((v209 ^ v55) & 1) == 0);
      v189 = (v48 - 1);
LABEL_10:
      v5 = v193;
      a4 = v176;
      v41 = v210;
      v57 = v201;
      v42 = v178;
      if ((v209 & 1) == 0)
      {
LABEL_25:
        v58 = v189;
        goto LABEL_26;
      }

      v58 = v189;
      if (v189 < v178)
      {
        goto LABEL_170;
      }

      if (v178 < v189)
      {
        v17 = v206 * (v189 - 1);
        v59 = v189 * v206;
        v60 = v189;
        v61 = v206;
        v62 = v178;
        v63 = v178 * v206;
        do
        {
          if (v62 != --v60)
          {
            v64 = *v194;
            if (!*v194)
            {
              goto LABEL_174;
            }

            sub_10032AA04(v64 + v63, v179);
            if (v63 < v17 || v64 + v63 >= (v64 + v59))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v63 != v17)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_10032AA04(v179, v64 + v17);
            v16 = v204;
            v42 = v178;
          }

          ++v62;
          v17 -= v61;
          v59 -= v61;
          v63 += v61;
        }

        while (v62 < v60);
        v5 = v193;
        a4 = v176;
        v41 = v210;
        v21 = v208;
        goto LABEL_25;
      }

LABEL_26:
      v65 = v194[1];
      if (v58 >= v65)
      {
        goto LABEL_38;
      }

      v189 = v58;
      if (__OFSUB__(v58, v42))
      {
        goto LABEL_166;
      }

      if (v58 - v42 >= a4)
      {
        v58 = v189;
LABEL_38:
        if (v58 < v42)
        {
          goto LABEL_165;
        }

        goto LABEL_39;
      }

      if (__OFADD__(v42, a4))
      {
        break;
      }

      if (&v42[a4] >= v65)
      {
        v66 = v65;
      }

      else
      {
        v66 = &v42[a4];
      }

      if (v66 < v42)
      {
        goto LABEL_169;
      }

      if (v189 == v66)
      {
        v58 = v189;
        if (v189 < v42)
        {
          goto LABEL_165;
        }

        goto LABEL_39;
      }

      v193 = v5;
      v112 = *v194;
      v113 = *(v192 + 72);
      v114 = *v194 + v113 * (v189 - 1);
      v205 = -v113;
      v206 = v112;
      v115 = &v42[-v189];
      v180 = v113;
      v116 = v112 + v189 * v113;
      v181 = v66;
      while (2)
      {
        v185 = v116;
        v186 = v115;
        v117 = v115;
        v187 = v114;
        while (2)
        {
          sub_100027C48(v116, v57, type metadata accessor for FMDeviceCellViewModel);
          v118 = v211;
          sub_100027C48(v114, v211, type metadata accessor for FMDeviceCellViewModel);
          v119 = v21[15];
          v120 = *(v57 + v119);
          v121 = *(v118 + v119);
          if (v120 != v121)
          {
            v123 = v120 < v121;
            goto LABEL_123;
          }

          v209 = v117;
          sub_1001104A8(v57 + v21[6], v16);
          v122 = *v203;
          if ((*v203)(v16, 1, v41) == 1)
          {
            sub_100012DF0(v16, &qword_1006B07D0);
            goto LABEL_99;
          }

          v124 = v41;
          v125 = *v199;
          v126 = v202;
          (*v199)(v202, v16, v124);
          v127 = v211 + v21[6];
          v128 = v200;
          sub_1001104A8(v127, v200);
          if (v122(v128, 1, v124) == 1)
          {
            (*v198)(v126, v124);
            sub_100012DF0(v128, &qword_1006B07D0);
            v57 = v201;
            v16 = v204;
            v21 = v208;
            v117 = v209;
            goto LABEL_103;
          }

          v137 = v124;
          v138 = v190;
          v125(v190, v128, v137);
          v139 = v196;
          FMIPItem.state.getter();
          v140 = v138;
          v141 = v197;
          static FMIPItemState.isBTConnected.getter();
          v142 = sub_10000A5D0(&qword_1006C0350, &type metadata accessor for FMIPItemState);
          v143 = v191;
          v195 = v142;
          v144 = dispatch thunk of SetAlgebra.isSuperset(of:)();
          v145 = *v188;
          (*v188)(v141, v143);
          v145(v139, v143);
          if (v144)
          {
            v146 = v196;
            FMIPItem.state.getter();
            v147 = v197;
            static FMIPItemState.isBTConnected.getter();
            v148 = dispatch thunk of SetAlgebra.isSuperset(of:)();
            v145(v147, v143);
            v145(v146, v143);
            v149 = *v198;
            v150 = v210;
            (*v198)(v140, v210);
            v149(v202, v150);
            v16 = v204;
            v21 = v208;
            v117 = v209;
            v57 = v201;
            if (v148)
            {
LABEL_120:
              v151 = (v57 + v21[17]);
              v152 = v151[1];
              v153 = *(v57 + 16);
              v154 = *(v57 + 24);
              v214 = *v151;
              v215 = v152;

              v155._countAndFlagsBits = v153;
              v155._object = v154;
              String.append(_:)(v155);
              v157 = v214;
              v156 = v215;
              v158 = (v211 + v208[17]);
              v159 = v158[1];
              v160 = *(v211 + 16);
              v161 = *(v211 + 24);
              v214 = *v158;
              v215 = v159;

              v162._countAndFlagsBits = v160;
              v162._object = v161;
              String.append(_:)(v162);
              v163 = v214;
              v164 = v215;
              v214 = v157;
              v215 = v156;
              v21 = v208;
              v212 = v163;
              v213 = v164;
              sub_100035F3C();
              v165 = StringProtocol.caseInsensitiveCompare<A>(_:)();

              v16 = v204;

              v123 = v165 == -1;
              goto LABEL_123;
            }
          }

          else
          {
            v167 = *v198;
            v168 = v210;
            (*v198)(v140, v210);
            v167(v202, v168);
            v16 = v204;
            v21 = v208;
            v57 = v201;
LABEL_99:
            v117 = v209;
          }

LABEL_103:
          v129 = v21[14];
          v130 = round(*(v57 + v129));
          v131 = v130 > -9.22337204e18;
          if (v130 >= 9.22337204e18)
          {
            v131 = 0;
          }

          if (v131)
          {
            v132 = 30 * (v130 / 30);
          }

          else
          {
            v132 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v133 = round(*(v211 + v129));
          if (v133 > -9.22337204e18 && v133 < 9.22337204e18)
          {
            v135 = 30 * (v133 / 30);
            if (v132 == v135)
            {
              goto LABEL_120;
            }

            if (v131)
            {
              v136 = 30 * (v130 / 30);
              goto LABEL_122;
            }

LABEL_121:
            v136 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_122;
          }

          v135 = 0x7FFFFFFFFFFFFFFFLL;
          if (v132 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_120;
          }

          if (!v131)
          {
            goto LABEL_121;
          }

          v136 = 30 * (v130 / 30);
          v135 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_122:
          v123 = v136 < v135;
LABEL_123:
          v17 = type metadata accessor for FMDeviceCellViewModel;
          sub_10002A160(v211, type metadata accessor for FMDeviceCellViewModel);
          result = sub_10002A160(v57, type metadata accessor for FMDeviceCellViewModel);
          if (v123)
          {
            if (!v206)
            {
              goto LABEL_171;
            }

            v17 = v207;
            sub_10032AA04(v116, v207);
            swift_arrayInitWithTakeFrontToBack();
            sub_10032AA04(v17, v114);
            v114 += v205;
            v116 += v205;
            v166 = __CFADD__(v117++, 1);
            v41 = v210;
            if (v166)
            {
              goto LABEL_94;
            }

            continue;
          }

          break;
        }

        v41 = v210;
LABEL_94:
        v114 = v187 + v180;
        v115 = v186 - 1;
        v116 = v185 + v180;
        v58 = v181;
        if (++v189 != v181)
        {
          continue;
        }

        break;
      }

      v5 = v193;
      v42 = v178;
      if (v181 < v178)
      {
        goto LABEL_165;
      }

LABEL_39:
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v40 = v182;
      }

      else
      {
        result = sub_10008B8B8(0, *(v182 + 2) + 1, 1, v182);
        v40 = result;
      }

      v68 = *(v40 + 2);
      v67 = *(v40 + 3);
      v17 = v68 + 1;
      if (v68 >= v67 >> 1)
      {
        result = sub_10008B8B8((v67 > 1), v68 + 1, 1, v40);
        v40 = result;
      }

      *(v40 + 2) = v17;
      v69 = &v40[16 * v68];
      *(v69 + 4) = v42;
      *(v69 + 5) = v58;
      if (!*v177)
      {
        goto LABEL_175;
      }

      v39 = v58;
      if (v68)
      {
        v41 = v210;
        v70 = *v177;
        while (1)
        {
          v71 = v17 - 1;
          if (v17 >= 4)
          {
            break;
          }

          if (v17 == 3)
          {
            v72 = *(v40 + 4);
            v73 = *(v40 + 5);
            v82 = __OFSUB__(v73, v72);
            v74 = v73 - v72;
            v75 = v82;
LABEL_59:
            if (v75)
            {
              goto LABEL_154;
            }

            v88 = &v40[16 * v17];
            v90 = *v88;
            v89 = *(v88 + 1);
            v91 = __OFSUB__(v89, v90);
            v92 = v89 - v90;
            v93 = v91;
            if (v91)
            {
              goto LABEL_157;
            }

            v94 = &v40[16 * v71 + 32];
            v96 = *v94;
            v95 = *(v94 + 1);
            v82 = __OFSUB__(v95, v96);
            v97 = v95 - v96;
            if (v82)
            {
              goto LABEL_160;
            }

            if (__OFADD__(v92, v97))
            {
              goto LABEL_161;
            }

            if (v92 + v97 >= v74)
            {
              if (v74 < v97)
              {
                v71 = v17 - 2;
              }

              goto LABEL_80;
            }

            goto LABEL_73;
          }

          v98 = &v40[16 * v17];
          v100 = *v98;
          v99 = *(v98 + 1);
          v82 = __OFSUB__(v99, v100);
          v92 = v99 - v100;
          v93 = v82;
LABEL_73:
          if (v93)
          {
            goto LABEL_156;
          }

          v101 = &v40[16 * v71];
          v103 = *(v101 + 4);
          v102 = *(v101 + 5);
          v82 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v82)
          {
            goto LABEL_159;
          }

          if (v104 < v92)
          {
            goto LABEL_90;
          }

LABEL_80:
          v109 = v71 - 1;
          if (v71 - 1 >= v17)
          {
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
LABEL_156:
            __break(1u);
LABEL_157:
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
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            result = sub_10025EFD4(v17);
            goto LABEL_136;
          }

          if (!*v194)
          {
            goto LABEL_172;
          }

          v42 = v40;
          v17 = *&v40[16 * v109 + 32];
          v110 = *&v40[16 * v71 + 40];
          sub_100453804(*v194 + *(v192 + 72) * v17, *v194 + *(v192 + 72) * *&v40[16 * v71 + 32], *v194 + *(v192 + 72) * v110, v70);
          if (v5)
          {
          }

          if (v110 < v17)
          {
            goto LABEL_150;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_10025EFD4(v42);
          }

          if (v109 >= *(v42 + 2))
          {
            goto LABEL_151;
          }

          v111 = &v42[16 * v109];
          *(v111 + 4) = v17;
          *(v111 + 5) = v110;
          v216 = v42;
          result = sub_10025EF48(v71);
          v40 = v216;
          v17 = *(v216 + 16);
          v16 = v204;
          v41 = v210;
          if (v17 <= 1)
          {
            goto LABEL_90;
          }
        }

        v76 = &v40[16 * v17 + 32];
        v77 = *(v76 - 64);
        v78 = *(v76 - 56);
        v82 = __OFSUB__(v78, v77);
        v79 = v78 - v77;
        if (v82)
        {
          goto LABEL_152;
        }

        v81 = *(v76 - 48);
        v80 = *(v76 - 40);
        v82 = __OFSUB__(v80, v81);
        v74 = v80 - v81;
        v75 = v82;
        if (v82)
        {
          goto LABEL_153;
        }

        v83 = &v40[16 * v17];
        v85 = *v83;
        v84 = *(v83 + 1);
        v82 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v82)
        {
          goto LABEL_155;
        }

        v82 = __OFADD__(v74, v86);
        v87 = v74 + v86;
        if (v82)
        {
          goto LABEL_158;
        }

        if (v87 >= v79)
        {
          v105 = &v40[16 * v71 + 32];
          v107 = *v105;
          v106 = *(v105 + 1);
          v82 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v82)
          {
            goto LABEL_164;
          }

          if (v74 < v108)
          {
            v71 = v17 - 2;
          }

          goto LABEL_80;
        }

        goto LABEL_59;
      }

      v41 = v210;
LABEL_90:
      v38 = v194[1];
      a4 = v176;
      if (v39 >= v38)
      {
        goto LABEL_133;
      }
    }

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
    goto LABEL_176;
  }

  v40 = _swiftEmptyArrayStorage;
LABEL_133:
  v42 = *v177;
  if (*v177)
  {
    v17 = v40;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_167;
    }

    result = v17;
LABEL_136:
    v216 = result;
    v17 = *(result + 16);
    if (v17 < 2)
    {
    }

    while (*v194)
    {
      v169 = *(result + 16 * v17);
      v170 = result;
      v171 = *(result + 16 * (v17 - 1) + 40);
      sub_100453804(*v194 + *(v192 + 72) * v169, *v194 + *(v192 + 72) * *(result + 16 * (v17 - 1) + 32), *v194 + *(v192 + 72) * v171, v42);
      if (v5)
      {
      }

      if (v171 < v169)
      {
        goto LABEL_162;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v170 = sub_10025EFD4(v170);
      }

      if (v17 - 2 >= *(v170 + 2))
      {
        goto LABEL_163;
      }

      v172 = &v170[16 * v17];
      *v172 = v169;
      *(v172 + 1) = v171;
      v216 = v170;
      sub_10025EF48(v17 - 1);
      result = v216;
      v17 = *(v216 + 16);
      if (v17 <= 1)
      {
      }
    }

    goto LABEL_173;
  }

LABEL_176:
  __break(1u);
  return result;
}

uint64_t sub_100453804(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = type metadata accessor for FMDeviceCellViewModel();
  v9 = __chkstk_darwin(v64);
  v10 = __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v53 - v14;
  result = __chkstk_darwin(v13);
  v19 = &v53 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_64;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_65;
  }

  v23 = (a2 - a1) / v21;
  v67 = a1;
  v66 = a4;
  v63 = v21;
  if (v23 >= v22 / v21)
  {
    v26 = v22 / v21 * v21;
    v59 = v17;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v27 = v12;
    }

    else
    {
      v27 = v12;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v36 = a4 + v26;
    v37 = v4;
    if (v26 >= 1)
    {
      v38 = -v63;
      v39 = a4 + v26;
      v56 = a4;
      v57 = a1;
      v55 = -v63;
      do
      {
        v53 = v36;
        v40 = a2 + v38;
        v58 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v67 = a2;
            v65 = v53;
            goto LABEL_62;
          }

          v62 = a3;
          v63 = v39;
          v54 = v36;
          v61 = (v39 + v38);
          sub_100027C48(v39 + v38, v27, type metadata accessor for FMDeviceCellViewModel);
          v43 = v27;
          v44 = v59;
          sub_100027C48(v40, v59, type metadata accessor for FMDeviceCellViewModel);
          v45 = sub_1004512E4(v43, v44);
          if (v37)
          {
            sub_10002A160(v44, type metadata accessor for FMDeviceCellViewModel);
            sub_10002A160(v43, type metadata accessor for FMDeviceCellViewModel);
            v67 = v58;
            v65 = v54;
            goto LABEL_62;
          }

          v46 = v45;
          v60 = 0;
          v47 = v40;
          v48 = v62;
          v49 = v62 + v38;
          sub_10002A160(v44, type metadata accessor for FMDeviceCellViewModel);
          sub_10002A160(v43, type metadata accessor for FMDeviceCellViewModel);
          v27 = v43;
          if (v46)
          {
            break;
          }

          v50 = v61;
          v36 = v61;
          a3 = v48 + v38;
          if (v48 < v63 || v49 >= v63)
          {
            v41 = v61;
            swift_arrayInitWithTakeFrontToBack();
            v36 = v41;
            v40 = v47;
            v37 = v60;
          }

          else
          {
            v51 = v48 == v63;
            v40 = v47;
            v37 = v60;
            if (!v51)
            {
              v52 = v61;
              swift_arrayInitWithTakeBackToFront();
              v36 = v52;
            }
          }

          v39 = v36;
          a1 = v57;
          v42 = v50 > v56;
          v38 = v55;
          a2 = v58;
          if (!v42)
          {
            goto LABEL_58;
          }
        }

        a3 = v48 + v38;
        if (v48 < v58 || v49 >= v58)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v60;
          v38 = v55;
        }

        else
        {
          a2 = v47;
          v37 = v60;
          v38 = v55;
          if (v48 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v63;
        v36 = v54;
      }

      while (v63 > v56);
    }

LABEL_58:
    v67 = a2;
    v65 = v36;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v25 = v4;
    }

    else
    {
      v25 = v4;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v62 = a4 + v24;
    v65 = a4 + v24;
    if (v24 >= 1 && a2 < a3)
    {
      v29 = v63;
      v60 = v19;
      v61 = v15;
      while (1)
      {
        v30 = a3;
        sub_100027C48(a2, v19, type metadata accessor for FMDeviceCellViewModel);
        sub_100027C48(a4, v15, type metadata accessor for FMDeviceCellViewModel);
        v31 = sub_1004512E4(v19, v15);
        if (v25)
        {
          break;
        }

        v32 = v31;
        v33 = v15;
        v34 = a4;
        sub_10002A160(v33, type metadata accessor for FMDeviceCellViewModel);
        sub_10002A160(v19, type metadata accessor for FMDeviceCellViewModel);
        if (v32)
        {
          v35 = a2 + v29;
          if (a1 < a2 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v35;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v35;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v34 + v29;
        }

        v15 = v61;
        v29 = v63;
        a1 += v63;
        v67 = a1;
        v19 = v60;
        if (a4 >= v62 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_10002A160(v15, type metadata accessor for FMDeviceCellViewModel);
      sub_10002A160(v19, type metadata accessor for FMDeviceCellViewModel);
    }
  }

LABEL_62:
  sub_10025F138(&v67, &v66, &v65);
  return 1;
}

uint64_t sub_100453E34(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v7 = *(v19 - 8);
  __chkstk_darwin(v19);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v11, v12, "FMMultipartEntityListDataSource: didUpdate %ld devices", v13, 0xCu);
  }

  else
  {
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1;
  aBlock[4] = sub_100454438;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063FB78;
  v16 = _Block_copy(aBlock);

  v17 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A5D0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v19);
}

void sub_100454204(uint64_t a1)
{
  v2 = type metadata accessor for FMIPDevice();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  (*(v3 + 16))(v5, a1, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = FMIPDevice.debugDescription.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_100005B4C(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMMultipartEntityListDataSource: didUpdate single device %s", v9, 0xCu);
    sub_100006060(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

void sub_100454440()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    sub_10007EBC0(&unk_1006BBCC0);
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v5 + 4) = v7;
    v6->super.isa = v7.super.isa;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMMultipartEntityListDataSource: itemAger itemsDidAge %@", v5, 0xCu);
    sub_100012DF0(v6, &unk_1006AF760);
  }

  v8 = *(v1 + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_mediator);

  v9 = FMIPManager.devices.getter();

  v10 = *(*(v8 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v11 = v10;
  sub_10044E91C(v9, v10, 0);
}

uint64_t sub_100454620(uint64_t a1, void *a2)
{
  v3 = v2;
  v47 = a2;
  v44 = a1;
  v4 = type metadata accessor for FMIPDevice();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v48 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for FMSelectedSection();
  v6 = __chkstk_darwin(v46);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v43 = &v39 - v8;
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v41 = *(v9 - 8);
  v42 = v9;
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  *&v2[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_deviceSubscription] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_locationSubscription] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_cellsViewModel] = _swiftEmptyArrayStorage;
  v14 = OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_itemAger;
  type metadata accessor for FMItemAger();
  swift_allocObject();
  *&v2[v14] = sub_10002BE70();
  v40 = OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_updateQueue;
  v39 = sub_10000905C(0, &qword_1006AEDC0);
  static DispatchQoS.userInitiated.getter();
  v54 = _swiftEmptyArrayStorage;
  sub_10000A5D0(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004044(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v41 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v42);
  v15 = v43;
  v16 = v44;
  *&v2[v40] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_delayedUpdateWorkItem] = 0;
  v17 = &v2[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource__listTitle];
  *v17 = 0;
  *(v17 + 1) = 0xE000000000000000;
  v2[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_updatesEnabled] = 0;
  v18 = &v2[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_listSubtitle];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v2[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_mediator] = v16;
  v19 = v47;
  *&v3[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_tableView] = v47;
  v20 = *(v16 + 56);
  v21 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  v22 = v20 + v21;
  v23 = v45;
  sub_100027C48(v22, v15, type metadata accessor for FMSelectedSection);
  sub_100027C48(v15, v23, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v25 = v48;
    v24 = v49;
    v26 = v50;
    (*(v49 + 32))(v48, v23, v50);
    (*(v24 + 16))(&v3[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_selectedDevice], v25, v26);
    v27 = type metadata accessor for FMMultipartEntityListDataSource();
    v51.receiver = v3;
    v51.super_class = v27;

    v28 = v19;
    v29 = objc_msgSendSuper2(&v51, "init");
    sub_10007EBC0(&unk_1006BBCD0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = v29;
    v32 = String._bridgeToObjectiveC()();
    [v28 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v32];

    *(*&v31[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_itemAger] + 24) = &off_10063FA70;
    swift_unknownObjectWeakAssign();

    sub_10044FD80();
    v33 = FMIPManager.devices.getter();
    v34 = *(*(v16 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
    v35 = v34;
    sub_10044E91C(v33, v34, 0);

    (*(v24 + 8))(v25, v26);
    sub_10002A160(v15, type metadata accessor for FMSelectedSection);
    return v31;
  }

  else
  {

    v37 = v19;
    sub_10002A160(v23, type metadata accessor for FMSelectedSection);
    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(95);
    v38._countAndFlagsBits = 0xD00000000000005DLL;
    v38._object = 0x8000000100599E10;
    String.append(_:)(v38);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100454D20(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    sub_10000905C(0, &qword_1006BBCB0);
    v15.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v13 + 4) = v15;
    v14->super.isa = v15.super.isa;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMMultipartEntityListDataSource: locationProvider didUpdate locations %@", v13, 0xCu);
    sub_100012DF0(v14, &unk_1006AF760);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = a1;
  aBlock[4] = sub_10045513C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063FBC8;
  v18 = _Block_copy(aBlock);

  v19 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A5D0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v22 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v21);
}

uint64_t sub_100455144()
{
  v1 = *(type metadata accessor for FMIPDevice() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_10044F284(v4, v0 + v2, v5, v7, v8);
}

uint64_t sub_1004551E8()
{
  type metadata accessor for FMIPDevice();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_10044F938(v1, v2);
}

id sub_1004552A0(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *a1;
  }

  else
  {
    v6 = [objc_allocWithZone(FMRelativeDateFormatter) init];
    [v6 setFormattingContext:a2];
    v7 = *a1;
    *a1 = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100455328()
{
  v1 = v0;
  v2 = [v0 layer];
  v63 = &type metadata for SolariumFeatureFlag;
  v3 = sub_10000BD04();
  v64 = v3;
  v4 = isFeatureEnabled(_:)();
  sub_100006060(v62);
  v5 = _UISheetCornerRadius;
  v6 = 26.0;
  if ((v4 & 1) == 0)
  {
    v6 = _UISheetCornerRadius;
  }

  [v2 setCornerRadius:v6];

  v7 = [v1 layer];
  [v7 setCornerCurve:kCACornerCurveContinuous];

  v8 = [v1 layer];
  [v8 setMasksToBounds:0];

  v63 = &type metadata for SolariumFeatureFlag;
  v64 = v3;
  LOBYTE(v8) = isFeatureEnabled(_:)();
  sub_100006060(v62);
  if (v8)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v9 = [v1 traitCollection];
    v10 = sub_100356E0C(v9);

    [v1 setBackgroundColor:v10];
    [v1 addSubview:*&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_platterBackgroundView]];
  }

  else
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v11 = [v1 traitCollection];
    v12 = sub_100356E0C(v11);

    [v1 setBackgroundColor:v12];
    v13 = [v1 layer];
    [v13 setShouldRasterize:1];

    v14 = [v1 layer];
    v15 = [objc_opt_self() mainScreen];
    [v15 scale];
    v17 = v16;

    [v14 setRasterizationScale:v17];
    v18 = [v1 layer];
    v19 = [objc_opt_self() blackColor];
    v20 = [v19 CGColor];

    [v18 setShadowColor:v20];
    v21 = [v1 layer];
    LODWORD(v22) = 1031127695;
    [v21 setShadowOpacity:v22];

    v23 = [v1 layer];
    [v23 setShadowRadius:16.0];

    v24 = [v1 layer];
    [v24 setShadowOffset:{0.0, 0.0}];
  }

  v25 = *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentView];
  v26 = [v25 layer];
  v63 = &type metadata for SolariumFeatureFlag;
  v64 = v3;
  v27 = isFeatureEnabled(_:)();
  sub_100006060(v62);
  v28 = 26.0;
  if ((v27 & 1) == 0)
  {
    v28 = v5;
  }

  [v26 setCornerRadius:v28];

  v29 = [v25 layer];
  [v29 setCornerCurve:kCACornerCurveContinuous];

  v30 = [v25 layer];
  [v30 setMasksToBounds:1];

  [v1 addSubview:v25];
  v60 = objc_opt_self();
  v31 = [v60 clearColor];
  [v25 setBackgroundColor:v31];

  v61 = *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView];
  [v61 setAxis:1];
  v32 = *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton];
  v33 = [v32 titleLabel];
  if (v33)
  {
    v34 = v33;
    v35 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v34 setFont:v35];
  }

  v36 = [v32 titleLabel];
  [v36 setAdjustsFontForContentSizeCategory:1];

  [v32 setContentHorizontalAlignment:4];
  [v32 addTarget:v1 action:"handleAction" forControlEvents:64];
  v37 = *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_secondaryActionButton];
  v38 = [v37 titleLabel];
  if (v38)
  {
    v39 = v38;
    v40 = UIFontTextStyleBody;
    v41 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v39 setFont:v41];
  }

  else
  {
    v40 = UIFontTextStyleBody;
  }

  v42 = [v37 titleLabel];
  [v42 setAdjustsFontForContentSizeCategory:1];

  [v37 setContentHorizontalAlignment:4];
  [v37 addTarget:v1 action:"handleSecondaryAction" forControlEvents:64];
  v43 = *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel];
  v58 = objc_opt_self();
  v44 = [v58 preferredFontForTextStyle:v40];
  v45 = sub_100039388(0x8000);

  v46 = sub_100039388(2);
  [v43 setFont:v46];

  [v43 setNumberOfLines:0];
  v59 = v37;
  v47 = *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_topSeparator];
  v48 = [v60 labelColor];
  v49 = [v48 colorWithAlphaComponent:0.1];

  [v47 setBackgroundColor:v49];
  v50 = *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonSeparator];
  v51 = [v60 labelColor];
  v52 = [v51 colorWithAlphaComponent:0.1];

  [v50 setBackgroundColor:v52];
  [v25 addSubview:*&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView]];
  [v25 addSubview:v43];
  v53 = *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleLabel];
  v54 = [v58 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v53 setFont:v54];

  v55 = [v60 secondaryLabelColor];
  [v53 setTextColor:v55];

  [v53 setNumberOfLines:0];
  sub_1000D5EB8();
  [v25 addSubview:v53];
  v56 = *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackView];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  [v56 setSpacing:*&qword_1006D4750];
  [v56 setAxis:1];
  [v56 addArrangedSubview:v32];
  [v56 addArrangedSubview:v50];
  [v56 addArrangedSubview:v59];
  [v32 setHidden:1];
  [v50 setHidden:1];
  [v59 setHidden:1];
  [v25 addSubview:v47];
  [v25 addSubview:v61];
  return [v25 addSubview:v56];
}

void sub_100455CF8()
{
  v175 = &type metadata for SolariumFeatureFlag;
  v167 = sub_10000BD04();
  v176 = v167;
  v1 = isFeatureEnabled(_:)();
  sub_100006060(v174);
  v2 = 16.0;
  if ((v1 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
LABEL_32:
      swift_once();
    }

    v2 = *&qword_1006D4798;
  }

  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005568E0;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView];
  *(inited + 32) = v4;
  v5 = *&v0[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel];
  *(inited + 40) = v5;
  v6 = *&v0[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleLabel];
  *(inited + 48) = v6;
  v7 = *&v0[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_topSeparator];
  *(inited + 56) = v7;
  v8 = *&v0[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonSeparator];
  *(inited + 64) = v8;
  v9 = *&v0[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton];
  *(inited + 72) = v9;
  v10 = *&v0[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_secondaryActionButton];
  *(inited + 80) = v10;
  v11 = v0;
  v12 = *&v0[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView];
  *(inited + 88) = v12;
  v170 = *&v11[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentView];
  *(inited + 96) = v170;
  v168 = v11;
  v171 = *&v11[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackView];
  *(inited + 104) = v171;
  v164 = v4;
  v169 = v5;
  v162 = v6;
  v165 = v7;
  v166 = v8;
  v13 = v9;
  v163 = v10;
  v14 = v12;
  v15 = v170;
  v0 = v171;
  for (i = 4; i != 14; ++i)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((i - 4) >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_32;
      }

      v17 = *(inited + 8 * i);
    }

    v18 = v17;
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v160 = v0;
  v161 = v13;
  swift_setDeallocating();
  swift_arrayDestroy();
  v175 = &type metadata for SolariumFeatureFlag;
  v176 = v167;
  v19 = isFeatureEnabled(_:)();
  sub_100006060(v174);
  p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
  if (v19)
  {
    v21 = *&v168[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_platterBackgroundView];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v172 = objc_opt_self();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1005521F0;
    v23 = [v21 topAnchor];
    v24 = [v168 topAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];

    *(v22 + 32) = v25;
    v26 = [v21 bottomAnchor];
    v27 = [v168 bottomAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];

    *(v22 + 40) = v28;
    v29 = [v21 leadingAnchor];
    v30 = [v168 leadingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    *(v22 + 48) = v31;
    v32 = [v21 trailingAnchor];
    p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    v33 = [v168 trailingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];

    *(v22 + 56) = v34;
    sub_10002B27C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v172 activateConstraints:isa];
  }

  v36 = objc_opt_self();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1005521F0;
  v38 = [v15 p_ivar_lyt[429]];
  v39 = [v168 p_ivar_lyt[429]];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v37 + 32) = v40;
  v41 = [v15 bottomAnchor];
  v42 = [v168 bottomAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  *(v37 + 40) = v43;
  v44 = [v15 leadingAnchor];
  v45 = [v168 leadingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v37 + 48) = v46;
  v47 = [v15 trailingAnchor];
  v48 = [v168 trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v37 + 56) = v49;
  sub_10002B27C();
  v50 = Array._bridgeToObjectiveC()().super.isa;

  v173 = v36;
  [v36 activateConstraints:v50];

  v51 = [v164 image];
  if (v51)
  {

    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_100552EF0;
    v53 = [v164 p_ivar_lyt[429]];
    v54 = [v168 p_ivar_lyt[429]];
    v55 = [v53 constraintEqualToAnchor:v54 constant:v2];

    *(v52 + 32) = v55;
    v56 = [v164 leadingAnchor];
    v57 = [v168 leadingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57 constant:14.0];

    *(v52 + 40) = v58;
    v59 = [v164 trailingAnchor];
    v60 = [v168 trailingAnchor];
    v61 = [v59 constraintLessThanOrEqualToAnchor:v60 constant:-v2];

    *(v52 + 48) = v61;
    v62 = Array._bridgeToObjectiveC()().super.isa;

    [v36 activateConstraints:v62];

    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_100552EF0;
    v64 = [v169 p_ivar_lyt[429]];
    v65 = [v164 bottomAnchor];
    v66 = [v64 constraintEqualToAnchor:v65 constant:10.0];

    *(v63 + 32) = v66;
    v67 = [v169 leadingAnchor];
    v68 = [v168 leadingAnchor];
    v69 = [v67 constraintEqualToAnchor:v68 constant:v2];

    *(v63 + 40) = v69;
    v70 = [v169 trailingAnchor];
    v71 = (&LocateDeviceIntentResponse__metaData + 16);
  }

  else
  {
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_100552EF0;
    v73 = [v169 p_ivar_lyt[429]];
    v74 = [v168 p_ivar_lyt[429]];
    v75 = [v73 constraintEqualToAnchor:v74 constant:v2];

    *(v63 + 32) = v75;
    v76 = [v169 leadingAnchor];
    v77 = [v168 leadingAnchor];
    v78 = [v76 constraintEqualToAnchor:v77 constant:v2];

    *(v63 + 40) = v78;
    v70 = [v169 trailingAnchor];
    v71 = &LocateDeviceIntentResponse__metaData.ivar_lyt;
  }

  v72 = [v168 trailingAnchor];
  v79 = [v70 constraintEqualToAnchor:v72 constant:-v2];

  *(v63 + 48) = v79;
  v80 = Array._bridgeToObjectiveC()().super.isa;

  [v173 v71[436]];

  v175 = &type metadata for SolariumFeatureFlag;
  v176 = v167;
  LOBYTE(v80) = isFeatureEnabled(_:)();
  sub_100006060(v174);
  if (v80)
  {
    v81 = -v2;
    v82 = v2;
  }

  else
  {
    v81 = 0.0;
    if (v168[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_fullWidthSeparator])
    {
      v82 = 0.0;
    }

    else
    {
      v82 = v2;
    }
  }

  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_100555120;
  v84 = [v162 topAnchor];
  v85 = [v169 bottomAnchor];
  v86 = [v84 constraintEqualToAnchor:v85 constant:2.0];

  *(v83 + 32) = v86;
  v87 = [v162 leadingAnchor];
  v88 = [v169 leadingAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];

  *(v83 + 40) = v89;
  v90 = [v162 trailingAnchor];
  v91 = [v169 trailingAnchor];
  v92 = [v90 constraintEqualToAnchor:v91];

  *(v83 + 48) = v92;
  v93 = [v165 topAnchor];
  v94 = [v162 bottomAnchor];
  v95 = [v93 constraintEqualToAnchor:v94 constant:15.0];

  *(v83 + 56) = v95;
  v96 = [v165 leadingAnchor];
  v97 = [v168 leadingAnchor];
  v98 = [v96 constraintEqualToAnchor:v97 constant:v82];

  *(v83 + 64) = v98;
  v99 = [v165 trailingAnchor];
  v100 = [v168 trailingAnchor];
  v101 = [v99 constraintEqualToAnchor:v100 constant:v81];

  *(v83 + 72) = v101;
  v102 = [v165 heightAnchor];
  v103 = [v102 constraintEqualToConstant:1.0];

  *(v83 + 80) = v103;
  *&v168[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleShowingConstraints] = v83;

  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1005521F0;
  v105 = [v165 leadingAnchor];
  v106 = [v168 leadingAnchor];
  v107 = [v105 constraintEqualToAnchor:v106 constant:v82];

  *(v104 + 32) = v107;
  v108 = [v165 trailingAnchor];
  v109 = [v168 trailingAnchor];
  v110 = [v108 constraintEqualToAnchor:v109 constant:v81];

  *(v104 + 40) = v110;
  v111 = [v165 topAnchor];
  v112 = [v169 bottomAnchor];
  v113 = [v111 constraintEqualToAnchor:v112 constant:15.0];

  *(v104 + 48) = v113;
  v114 = [v165 heightAnchor];
  v115 = [v114 constraintEqualToConstant:1.0];

  *(v104 + 56) = v115;
  *&v168[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleHiddenConstraints] = v104;

  v116 = Array._bridgeToObjectiveC()().super.isa;

  [v173 deactivateConstraints:v116];

  v117 = Array._bridgeToObjectiveC()().super.isa;

  [v173 activateConstraints:v117];

  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_100552EF0;
  v119 = [v14 topAnchor];
  v120 = [v165 bottomAnchor];
  v121 = [v119 constraintEqualToAnchor:v120];

  *(v118 + 32) = v121;
  v122 = [v14 leadingAnchor];
  v123 = [v168 leadingAnchor];
  v124 = [v122 constraintEqualToAnchor:v123 constant:v2];

  *(v118 + 40) = v124;
  v125 = [v14 trailingAnchor];
  v126 = [v168 trailingAnchor];
  v127 = [v125 constraintEqualToAnchor:v126 constant:-v2];

  *(v118 + 48) = v127;
  v128 = Array._bridgeToObjectiveC()().super.isa;

  [v173 activateConstraints:v128];

  v129 = [v160 topAnchor];
  v130 = [v14 bottomAnchor];
  v131 = [v129 constraintEqualToAnchor:v130 constant:8.0];

  v132 = [v160 bottomAnchor];
  v133 = [v168 bottomAnchor];
  v134 = [v132 constraintEqualToAnchor:v133 constant:-12.0];

  v135 = *&v168[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewTopConstraint];
  *&v168[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewTopConstraint] = v131;
  v136 = v131;

  v137 = *&v168[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewBottomConstraint];
  *&v168[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewBottomConstraint] = v134;
  v138 = v134;

  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_100552F00;
  *(v139 + 32) = v136;
  v140 = v136;
  v141 = [v160 leadingAnchor];
  v142 = [v168 leadingAnchor];
  v143 = [v141 constraintEqualToAnchor:v142 constant:v2];

  *(v139 + 40) = v143;
  v144 = [v160 trailingAnchor];
  v145 = [v168 trailingAnchor];
  v146 = [v144 constraintEqualToAnchor:v145 constant:-v2];

  *(v139 + 48) = v146;
  *(v139 + 56) = v138;
  v147 = v138;
  v148 = [v166 heightAnchor];
  v149 = [v148 constraintEqualToConstant:1.0];

  *(v139 + 64) = v149;
  v150 = Array._bridgeToObjectiveC()().super.isa;

  [v173 activateConstraints:v150];

  v151 = [v161 titleLabel];
  if (v151)
  {
    v152 = v151;
    v153 = [v151 text];

    v154 = v163;
    if (v153)
    {

      v155 = 0;
    }

    else
    {
      v155 = 1;
    }
  }

  else
  {
    v155 = 1;
    v154 = v163;
  }

  v168[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden] = v155;
  sub_1004571E0();
  v156 = [v154 titleLabel];
  if (v156 && (v157 = v156, v158 = [v156 text], v157, v158))
  {

    v159 = 0;
  }

  else
  {
    v159 = 1;
  }

  v168[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionButtonHidden] = v159;
  sub_1004571E0();
}

id sub_1004571E0()
{
  v1 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden;
  if (*(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionButtonHidden);
  }

  [*(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonSeparator) setHidden:v2];
  [*(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton) setHidden:*(v0 + v1)];
  v3 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionButtonHidden;
  [*(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_secondaryActionButton) setHidden:*(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionButtonHidden)];
  if (*(v0 + v1) == 1 && *(v0 + v3) == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewTopConstraint);
    if (v4)
    {
      [v4 setConstant:0.0];
    }

    result = *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewBottomConstraint);
    if (result)
    {
      v6 = -3.0;
LABEL_14:

      return [result setConstant:v6];
    }
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewTopConstraint);
    if (v7)
    {
      [v7 setConstant:8.0];
    }

    result = *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewBottomConstraint);
    if (result)
    {
      v6 = -12.0;
      goto LABEL_14;
    }
  }

  return result;
}

void sub_100457338()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleLabel);

  v2 = String._bridgeToObjectiveC()();

  [v1 setText:v2];

  v3 = objc_opt_self();
  sub_10002B27C();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 deactivateConstraints:isa];

  v5 = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:v5];
}

id sub_100457618()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPlatterImageAndButtonGroupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004577A0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel;
  *(v1 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleLabel;
  *(v1 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView;
  *(v1 + v4) = [objc_allocWithZone(UIStackView) init];
  v5 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackView;
  *(v1 + v5) = [objc_allocWithZone(UIStackView) init];
  v6 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton;
  v7 = objc_opt_self();
  *(v1 + v6) = [v7 buttonWithType:1];
  v8 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_secondaryActionButton;
  *(v1 + v8) = [v7 buttonWithType:1];
  v9 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_topSeparator;
  *(v1 + v9) = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonSeparator;
  *(v1 + v10) = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentView;
  *(v1 + v11) = [objc_allocWithZone(UIView) init];
  v12 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_platterBackgroundView;
  v13 = type metadata accessor for FMPlatterBackgroundView();
  v14 = objc_allocWithZone(v13);
  v14[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v18.receiver = v14;
  v18.super_class = v13;
  v15 = objc_msgSendSuper2(&v18, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *(v1 + v12) = v15;
  v16 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView;
  *(v1 + v16) = [objc_allocWithZone(UIImageView) init];
  *(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleShowingConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleHiddenConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewBottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionButtonHidden) = 1;
  v17 = (v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitle);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100457A64()
{
  if (*&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBar])
  {
    if (qword_1006AEBA8 != -1)
    {
      swift_once();
    }

    v1 = *&xmmword_1006D4380;
    v2 = [v0 traitCollection];
    v3 = [v2 horizontalSizeClass];

    if (v3 == 2)
    {
      v4 = *&xmmword_1006D43C0 - v1;
    }

    else
    {
      v4 = -v1;
    }
  }

  else
  {
    v4 = 0.0;
  }

  v5 = *&v0[OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentViewBottomAnchorConstraint];

  return [v5 setConstant:v4];
}

id sub_100457B80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMCardContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100457C94()
{
  result = qword_1006C04B0;
  if (!qword_1006C04B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C04B0);
  }

  return result;
}

unint64_t sub_100457CEC()
{
  result = qword_1006C04B8;
  if (!qword_1006C04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C04B8);
  }

  return result;
}

id sub_100457D40(void *a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBar];
  v4 = *&v2[OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBar];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5 = a1;

  v13 = &type metadata for SolariumFeatureFlag;
  v14 = sub_10000BD04();
  LOBYTE(v4) = isFeatureEnabled(_:)();
  result = sub_100006060(v12);
  if (v4)
  {
    v7 = 0.0;
    if (*v3)
    {
      v8 = *v3;
      [v8 removeFromSuperview];
      [v2 addSubview:v8];
      sub_1000419C8();

      if (*v3)
      {
        if (qword_1006AEBA8 != -1)
        {
          swift_once();
        }

        v9 = *&xmmword_1006D4380;
        v10 = [v2 traitCollection];
        v11 = [v10 horizontalSizeClass];

        if (v11 == 2)
        {
          v7 = *&xmmword_1006D43C0 - v9;
        }

        else
        {
          v7 = -v9;
        }
      }
    }

    return [*&v2[OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentViewBottomAnchorConstraint] setConstant:v7];
  }

  return result;
}

void sub_100457EA0()
{
  *(v0 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_appearance) = 0;
  v1 = OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentView;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC6FindMy19FMCardContainerView_bluredBackground;
  *(v0 + v2) = [objc_allocWithZone(UIVisualEffectView) init];
  v3 = OBJC_IVAR____TtC6FindMy19FMCardContainerView_darkeningView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC6FindMy19FMCardContainerView_grabber;
  *(v0 + v4) = [objc_allocWithZone(_UIGrabber) init];
  v5 = (v0 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBar);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_contentViewBottomAnchorConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_currentBackgroundStyle) = 2;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarTralingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMCardContainerView_tabBarBottomConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100457FF8(uint64_t a1, unint64_t a2, Class isa)
{
  v4 = v3;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v9, v10))
  {

    if (!a2)
    {
      v14 = 0;
      if (!isa)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

LABEL_7:
    v14 = String._bridgeToObjectiveC()();
    if (!isa)
    {
LABEL_9:
      v15 = type metadata accessor for FMApplication();
      v18.receiver = v4;
      v18.super_class = v15;
      v16 = objc_msgSendSuper2(&v18, "runTest:options:", v14, isa);

      return v16;
    }

LABEL_8:
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    goto LABEL_9;
  }

  v11 = swift_slowAlloc();
  result = swift_slowAlloc();
  v17 = result;
  *v11 = 136315138;
  if (a2)
  {
    v13 = result;
    *(v11 + 4) = sub_100005B4C(a1, a2, &v17);
    _os_log_impl(&_mh_execute_header, v9, v10, "FMApplication: runTest: %s ", v11, 0xCu);
    sub_100006060(v13);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_10045828C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMApplication();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100458380(void *a1)
{
  v2 = v1;
  v23 = &type metadata for SolariumFeatureFlag;
  v24 = sub_10000BD04();
  v4 = isFeatureEnabled(_:)();
  sub_100006060(&v21);
  if (v4)
  {
    v5 = 0xD000000000000022;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v4)
  {
    v6 = "SEARCH_BAR_PLACEHOLDER";
  }

  else
  {
    v6 = "extended-launch-time";
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v21 = 0xD000000000000012;
  v22 = 0x800000010057A180;
  v7._object = (v6 | 0x8000000000000000);
  v7._countAndFlagsBits = v5;
  String.append(_:)(v7);
  v8 = v2;
  v9 = v21;
  v10 = v22;
  v11 = [objc_opt_self() mainBundle];
  v25._object = v10;
  v12._object = (v6 | 0x8000000000000000);
  v12._countAndFlagsBits = v5;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v25._countAndFlagsBits = v9;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v25);

  v14 = String._bridgeToObjectiveC()();

  [a1 setPlaceholder:v14];

  result = *(v8 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView);
  if (result)
  {
    [result setHidden:0];
    v16 = [a1 text];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      sub_100464D0C(v18, v20);
    }

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100458614(void *a1)
{
  v3 = type metadata accessor for FMFLocationAlertAddressType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  [a1 resignFirstResponder];
  v10 = [a1 text];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v13;
    v14 = [v1 navigationItem];
    v15 = [v14 searchController];

    if (v15)
    {
      [v15 setActive:0];
    }

    (*(v4 + 104))(v9, enum case for FMFLocationAlertAddressType.custom(_:), v3);
    v16 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView];
    if (v16)
    {
      v31 = v12;
      [v16 removeHandle:1];
      sub_100466954();
      v17 = [objc_allocWithZone(MKLocalSearchRequest) init];
      [v17 setNaturalLanguageQuery:v11];

      v18 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView];
      if (v18)
      {
        [v18 region];
        [v17 setRegion:?];
        v19 = [objc_allocWithZone(MKLocalSearch) initWithRequest:v17];
        v20 = [objc_opt_self() sharedApplication];
        [v20 setNetworkActivityIndicatorVisible:1];

        (*(v4 + 16))(v7, v9, v3);
        v21 = (*(v4 + 80) + 24) & ~*(v4 + 80);
        v22 = v21 + v5;
        v30 = v9;
        v23 = (v21 + v5) & 0xFFFFFFFFFFFFFFF8;
        v24 = swift_allocObject();
        *(v24 + 16) = v1;
        (*(v4 + 32))(v24 + v21, v7, v3);
        *(v24 + v22) = 0;
        v25 = v24 + v23;
        v26 = v32;
        *(v25 + 8) = v31;
        *(v25 + 16) = v26;
        aBlock[4] = sub_1002789D8;
        aBlock[5] = v24;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10012105C;
        aBlock[3] = &unk_10063FEF0;
        v27 = _Block_copy(aBlock);
        v28 = v1;

        [v19 startWithCompletionHandler:v27];
        _Block_release(v27);

        (*(v4 + 8))(v30, v3);
        return;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
  }
}

void sub_100458A38(void *a1)
{
  [a1 setText:0];
  v2 = &v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSearchedQuery];
  *v2 = 0;
  *(v2 + 1) = 0;

  v3 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView];
  if (v3)
  {
    [v3 setHidden:1];
    sub_100464D0C(0, 0xE000000000000000);
    v4 = [v1 navigationController];
    if (v4)
    {
      v5 = v4;
      [v4 setToolbarHidden:0 animated:0];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100458B70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&qword_1006B4058);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for FindingMode(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  if (qword_1006AED70 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4CF0);
  sub_10045ADE4(a1, v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v32[0] = v19;
    *v18 = 136315138;
    sub_10045ADE4(v13, v11);
    v20 = String.init<A>(describing:)();
    v30 = v6;
    v21 = v8;
    v22 = v7;
    v23 = a1;
    v25 = v24;
    sub_10045AC0C(v13);
    v26 = sub_100005B4C(v20, v25, v32);
    a1 = v23;
    v7 = v22;
    v8 = v21;
    v6 = v30;

    *(v18 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "🧭 FMFindingExperienceCoordinator: Did update finding experience mode: %s", v18, 0xCu);
    sub_100006060(v19);

    v2 = v31;
  }

  else
  {

    sub_10045AC0C(v13);
  }

  sub_10045ADE4(a1, v6);
  (*(v8 + 56))(v6, 0, 1, v7);
  v27 = OBJC_IVAR____TtC6FindMy30FMFindingExperienceCoordinator_mode;
  swift_beginAccess();
  sub_10045AE48(v6, v2 + v27);
  return swift_endAccess();
}

void sub_100458E70()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMFindingExperienceCoordinator: Creating spBTFindingSession", v5, 2u);
  }

  v6 = [objc_allocWithZone(SPBTFindingSessionConfig) initWithOptInRawRSSIMeasurement:0];
  v7 = [objc_allocWithZone(SPBTFindingSession) initWithConfig:v6];

  v8 = *(v1 + OBJC_IVAR____TtC6FindMy30FMFindingExperienceCoordinator_spFindingSession);
  *(v1 + OBJC_IVAR____TtC6FindMy30FMFindingExperienceCoordinator_spFindingSession) = v7;
  v9 = v7;

  if (v9)
  {
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12[4] = sub_10045AB94;
    v12[5] = v10;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100004AE4;
    v12[3] = &unk_10063FF40;
    v11 = _Block_copy(v12);

    [v9 setSessionInvalidatedCallback:v11];
    _Block_release(v11);
  }
}

uint64_t sub_100459068()
{
  v0 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v0 - 8);
  v110 = &v98 - v1;
  v2 = sub_10007EBC0(&unk_1006BBCE0);
  v3 = __chkstk_darwin(v2 - 8);
  v107 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v109 = &v98 - v5;
  v6 = type metadata accessor for FMIPDevice();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v106 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v108 = &v98 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v98 - v17;
  __chkstk_darwin(v16);
  v111 = &v98 - v19;
  v112 = sub_10007EBC0(&qword_1006B4058);
  v20 = __chkstk_darwin(v112);
  v113 = (&v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v24 = &v98 - v23;
  __chkstk_darwin(v22);
  v26 = &v98 - v25;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = result;
    v100 = v13;
    v104 = v6;
    sub_100458E70();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    v30 = sub_100005B14(v29, qword_1006D4630);
    v31 = v28;
    v105 = v30;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    v34 = os_log_type_enabled(v32, v33);
    v101 = v18;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v102 = v15;
      v37 = v36;
      v114[0] = v36;
      *v35 = 136315138;
      v103 = v7;
      v38 = v12;
      v39 = v11;
      v40 = v24;
      v41 = OBJC_IVAR____TtC6FindMy30FMFindingExperienceCoordinator_mode;
      swift_beginAccess();
      v42 = v31 + v41;
      v24 = v40;
      v11 = v39;
      v12 = v38;
      sub_10045AB9C(v42, v26);
      v43 = String.init<A>(describing:)();
      v45 = sub_100005B4C(v43, v44, v114);

      *(v35 + 4) = v45;
      v7 = v103;
      _os_log_impl(&_mh_execute_header, v32, v33, "FMFindingExperienceCoordinator: SPBTFindingSession invalidated, determining whether to re-set up for mode: %s", v35, 0xCu);
      sub_100006060(v37);
      v15 = v102;
    }

    v46 = OBJC_IVAR____TtC6FindMy30FMFindingExperienceCoordinator_mode;
    swift_beginAccess();
    sub_10045AB9C(v31 + v46, v24);
    v47 = type metadata accessor for FindingMode(0);
    if ((*(*(v47 - 8) + 48))(v24, 1, v47) == 1)
    {

      return sub_100012DF0(v24, &qword_1006B4058);
    }

    sub_10045AB9C(v24, v113);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {

        sub_10045AC0C(v113);
      }

      else
      {
        v49 = v113;
        v113 = *(v12 + 32);
        (v113)(v111, v49, v11);

        v50 = UUID.uuidString.getter();
        v51 = v109;
        sub_1000E5180(v50, v52, v109);

        v53 = v104;
        if ((*(v7 + 48))(v51, 1, v104) == 1)
        {
          sub_100012DF0(v51, &unk_1006BBCE0);
        }

        else
        {
          v63 = v108;
          (*(v7 + 32))(v108, v51, v53);
          if (FMIPDevice.isLocalFindable.getter())
          {
            v64 = Logger.logObject.getter();
            v65 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              *v66 = 0;
              _os_log_impl(&_mh_execute_header, v64, v65, "FMFindingExperienceCoordinator: Currently in proximity discovery, re-running start finding", v66, 2u);
            }

            v67 = v101;
            v68 = v111;
            (*(v12 + 16))(v101, v111, v11);
            v69 = (*(v12 + 80) + 16) & ~*(v12 + 80);
            v70 = swift_allocObject();
            (v113)(v70 + v69, v67, v11);
            sub_1001A4520(v68, sub_10045AD1C, v70);

            (*(v7 + 8))(v108, v104);
            (*(v12 + 8))(v68, v11);
            return sub_100012DF0(v24, &qword_1006B4058);
          }

          (*(v7 + 8))(v63, v53);
        }

        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&_mh_execute_header, v77, v78, "FMFindingExperienceCoordinator: Currently in proximity finding mode, but device isn't local findable. Returning.", v79, 2u);

          v80 = v31;
        }

        else
        {
          v80 = v77;
          v77 = v31;
        }

        (*(v12 + 8))(v111, v11);
      }

      return sub_100012DF0(v24, &qword_1006B4058);
    }

    v103 = v7;
    v54 = v31;
    v112 = v24;
    v55 = *v113;
    v56 = dispatch thunk of FMFindingSession.findingSessionIdentifier.getter();
    v58 = v57;
    v59 = v110;
    UUID.init(uuidString:)();
    if ((*(v12 + 48))(v59, 1, v11) == 1)
    {

      sub_100012DF0(v59, &unk_1006B20C0);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "FMFindingExperienceCoordinator: Currently in proximity finding mode, no findable. Returning.", v62, 2u);
      }

LABEL_16:

      v24 = v112;
      return sub_100012DF0(v24, &qword_1006B4058);
    }

    v71 = *(v12 + 32);
    v102 = v15;
    v113 = v71;
    (v71)(v15, v59, v11);

    v72 = v107;
    sub_1000E5180(v56, v58, v107);
    v73 = v72;

    v74 = v103;
    v75 = v72;
    v76 = v104;
    if ((*(v103 + 48))(v75, 1, v104) == 1)
    {

      sub_100012DF0(v73, &unk_1006BBCE0);
    }

    else
    {
      v81 = v73;
      v82 = v106;
      (*(v74 + 32))(v106, v81, v76);
      if (FMIPDevice.isLocalFindable.getter())
      {
        v111 = v55;
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&_mh_execute_header, v83, v84, "FMFindingExperienceCoordinator: Currently in proximity finding mode, re-running start finding", v85, 2u);
        }

        v86 = swift_allocObject();
        v99 = v54;
        swift_unknownObjectWeakInit();
        v87 = v101;
        (*(v12 + 16))(v101, v102, v11);
        v88 = (*(v12 + 80) + 24) & ~*(v12 + 80);
        v89 = (v100 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
        v90 = swift_allocObject();
        *(v90 + 16) = v86;
        (v113)(v90 + v88, v87, v11);
        v91 = (v90 + v89);
        *v91 = v56;
        v91[1] = v58;

        v92 = v102;
        v93 = v99;
        sub_1001A4520(v102, sub_10045AC68, v90);

        (*(v103 + 8))(v106, v104);
        (*(v12 + 8))(v92, v11);
        goto LABEL_16;
      }

      (*(v74 + 8))(v82, v76);
    }

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();
    v96 = os_log_type_enabled(v94, v95);
    v24 = v112;
    if (v96)
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&_mh_execute_header, v94, v95, "FMFindingExperienceCoordinator: Currently in proximity finding mode, but device isn't local findable. Returning.", v97, 2u);
    }

    else
    {
    }

    (*(v12 + 8))(v102, v11);
    return sub_100012DF0(v24, &qword_1006B4058);
  }

  return result;
}

void sub_100459CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPActionStatus();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, enum case for FMIPActionStatus.success(_:), v9);
  sub_10045AD9C(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v10 + 8))(v12, v9);
  if (v30 == v29)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100005B14(v13, qword_1006D4630);
    (*(v6 + 16))(v8, a3, v5);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = v17;
      *v16 = 136315138;
      sub_10045AD9C(&qword_1006B7830, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v6 + 8))(v8, v5);
      v21 = sub_100005B4C(v18, v20, &v30);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "FMFindingExperienceCoordinator: Finding action RESTART succeeded for identifier: %s", v16, 0xCu);
      sub_100006060(v17);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100005B14(v22, qword_1006D4630);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v27 = _swift_stdlib_bridgeErrorToNSError();
        v28 = v27;
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      *(v25 + 4) = v27;
      *v26 = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "FMFindingExperienceCoordinator: Finding action RESTART failed with error %@", v25, 0xCu);
      sub_100012DF0(v26, &unk_1006AF760);
    }
  }
}

uint64_t sub_10045A1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, unint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPActionStatus();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v41 = result;
    v17 = a4;
    (*(v13 + 104))(v15, enum case for FMIPActionStatus.success(_:), v12);
    sub_10045AD9C(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v13 + 8))(v15, v12);
    v18 = &off_1006AE000;
    if (v45 == v44)
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100005B14(v19, qword_1006D4630);
      (*(v9 + 16))(v11, v17, v8);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v45 = v23;
        *v22 = 136315138;
        sub_10045AD9C(&qword_1006B7830, &type metadata accessor for UUID);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v25;
        (*(v9 + 8))(v11, v8);
        v27 = sub_100005B4C(v24, v26, &v45);
        v18 = &off_1006AE000;

        *(v22 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v20, v21, "FMFindingExperienceCoordinator: Finding action RESTART succeeded for identifier: %s", v22, 0xCu);
        sub_100006060(v23);
      }

      else
      {

        (*(v9 + 8))(v11, v8);
      }
    }

    else
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100005B14(v28, qword_1006D4630);
      swift_errorRetain();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        if (a2)
        {
          swift_errorRetain();
          v33 = _swift_stdlib_bridgeErrorToNSError();
          v34 = v33;
        }

        else
        {
          v33 = 0;
          v34 = 0;
        }

        *(v31 + 4) = v33;
        *v32 = v34;
        _os_log_impl(&_mh_execute_header, v29, v30, "FMFindingExperienceCoordinator: Finding action RESTART failed with error %@", v31, 0xCu);
        sub_100012DF0(v32, &unk_1006AF760);
      }
    }

    if (v18[380] != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100005B14(v35, qword_1006D4630);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "FMFindingExperienceCoordinator: Now re-running start fast advt", v38, 2u);
    }

    v39 = v43;

    v40 = v41;
    sub_1001A5844(v42, v39, 1, v41, v42, v39);
  }

  return result;
}

void sub_10045A78C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);

  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100005B4C(a3, a4, &v13);
    *(v8 + 12) = 2080;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v9 = String.init<A>(describing:)();
    v11 = sub_100005B4C(v9, v10, &v13);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v7, "FMFindingExperienceCoordinator: Fast advertisement RESTARTED for identifier: %s. With error?: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

id sub_10045A9A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFindingExperienceCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMFindingExperienceCoordinator()
{
  result = qword_1006C0650;
  if (!qword_1006C0650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10045AA94()
{
  sub_10045AB3C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10045AB3C()
{
  if (!qword_1006B3F78)
  {
    type metadata accessor for FindingMode(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B3F78);
    }
  }
}

uint64_t sub_10045AB9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B4058);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10045AC0C(uint64_t a1)
{
  v2 = type metadata accessor for FindingMode(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10045AC68(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_10045A1B4(a1, a2, v7, v2 + v6, v9, v10);
}

void sub_10045AD1C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100459CF4(a1, a2, v6);
}

uint64_t sub_10045AD9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10045ADE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FindingMode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10045AE48(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B4058);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10045AEB8(unint64_t a1, void *a2)
{
  v27 = a2;
  v3 = sub_10007EBC0(&qword_1006B00C8);
  __chkstk_darwin(v3 - 8);
  v26 = &v23 - v4;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v29 = a1 & 0xC000000000000001;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = enum case for FMFLocationAlertAddressType.custom(_:);
    v25 = i;
    while (1)
    {
      if (v29)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v28 + 16))
        {
          goto LABEL_15;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 placemark];
      v11 = [v10 title];

      if (v11)
      {
        v12 = a1;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = type metadata accessor for FMFLocationAlertAddressType();
        v17 = *(v16 - 8);
        v18 = v26;
        (*(v17 + 104))(v26, v24, v16);
        (*(v17 + 56))(v18, 0, 1, v16);
        v19 = objc_allocWithZone(type metadata accessor for FMFenceMapTransientRecord());
        v20 = v8;
        sub_1002D2770(v13, v15, v18, v20);
        v8 = v21;
        v22 = v27;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        a1 = v12;
        i = v25;
      }

      ++v6;
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_10045B15C(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_10046645C(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_10045B250(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

double sub_10045B2B0()
{
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [objc_opt_self() redPinColor];
  v3 = [v0 systemRedColor];
  *&xmmword_1006D4B40 = 0x4038000000000000;
  *(&xmmword_1006D4B40 + 1) = v1;
  qword_1006D4B50 = 0x3FB999999999999ALL;
  unk_1006D4B58 = v2;
  *&xmmword_1006D4B60 = v3;
  result = 0.0;
  *(&xmmword_1006D4B60 + 8) = 0u;
  *&algn_1006D4B70[8] = 0u;
  *(&xmmword_1006D4B80 + 8) = 0u;
  qword_1006D4B98 = 0;
  return result;
}

double sub_10045B370()
{
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [objc_opt_self() redPinColor];
  v3 = [v0 systemRedColor];
  v4 = [v0 blackColor];
  v5 = [v4 colorWithAlphaComponent:0.1];

  *&xmmword_1006D4BA0 = 0x4038000000000000;
  *(&xmmword_1006D4BA0 + 1) = v1;
  qword_1006D4BB0 = 0x3FB999999999999ALL;
  unk_1006D4BB8 = v2;
  *&xmmword_1006D4BC0 = v3;
  *(&xmmword_1006D4BC0 + 8) = xmmword_1005622B0;
  qword_1006D4BD8 = v5;
  result = 1.0;
  xmmword_1006D4BE0 = xmmword_1005622C0;
  unk_1006D4BF0 = xmmword_1005622D0;
  return result;
}

void sub_10045B4B4()
{
  v1 = v0;
  v245 = &type metadata for SolariumFeatureFlag;
  v2 = sub_10000BD04();
  v246 = v2;
  v3 = isFeatureEnabled(_:)();
  sub_100006060(&v243);
  if ((v3 & 1) == 0)
  {
    v4 = [objc_opt_self() mainBundle];
    v247._object = 0x800000010059A740;
    v5._countAndFlagsBits = 0x594649544F4ELL;
    v247._countAndFlagsBits = 0xD000000000000018;
    v5._object = 0xE600000000000000;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v247);

    v7 = String._bridgeToObjectiveC()();

    [v1 setTitle:v7];
  }

  v8 = [objc_allocWithZone(MKMapView) init];
  v9 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
  v10 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView];
  *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView] = v8;
  v11 = v8;

  if (!v11)
  {
    __break(1u);
    goto LABEL_75;
  }

  [v11 setMapType:{objc_msgSend(objc_opt_self(), "storedMapType")}];

  v12 = *&v1[v9];
  if (!v12)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  sub_10000905C(0, &unk_1006BEF70);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = v12;
  v15 = String._bridgeToObjectiveC()();
  [v14 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:v15];

  v16 = *&v1[v9];
  if (!v16)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  [v16 setDelegate:v1];
  v17 = *&v1[v9];
  if (!v17)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v18 = [v17 layer];
  v19 = &v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_style];
  [v18 setCornerRadius:*&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_style + 40]];

  v20 = *&v1[v9];
  if (!v20)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v21 = [v20 layer];
  v22 = *(v19 + 7);
  if (v22)
  {
    v23 = [v22 CGColor];
  }

  else
  {
    v23 = 0;
  }

  [v21 setBorderColor:v23];

  v24 = *&v1[v9];
  if (!v24)
  {
    goto LABEL_79;
  }

  v25 = [v24 layer];
  [v25 setBorderWidth:*(v19 + 8)];

  v26 = [v1 view];
  if (!v26)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (!*&v1[v9])
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v27 = v26;
  [v26 addSubview:?];

  v28 = [objc_allocWithZone(FMMapDragRadiusView) init];
  v29 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView;
  v30 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView];
  *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView] = v28;
  v31 = v28;

  if (!v31)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v233 = objc_opt_self();
  v32 = [v233 clearColor];
  [v31 setBackgroundColor:v32];

  v33 = *&v1[v29];
  if (!v33)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  [v33 setMapView:*&v1[v9]];
  v34 = *&v1[v29];
  if (!v34)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  [v34 setDelegate:v1];
  v35 = [v1 view];
  if (!v35)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v234 = v19;
  if (!*&v1[v29])
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v36 = v35;
  [v35 addSubview:?];

  v245 = &type metadata for SolariumFeatureFlag;
  v246 = v2;
  v237 = v2;
  LOBYTE(v36) = isFeatureEnabled(_:)();
  sub_100006060(&v243);
  v37 = objc_opt_self();
  v38 = [v37 mainBundle];
  v248._object = 0x800000010059A780;
  v39._object = 0x800000010059A760;
  v248._countAndFlagsBits = 0xD000000000000024;
  v39._countAndFlagsBits = 0xD000000000000012;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v38, v40, v248);

  v232 = v9;
  if (v36)
  {
    v231 = v37;
    *&v230 = type metadata accessor for FMFenceMapViewController();
    v245 = v230;
    v243 = v1;
    v236 = "chooseSmallRadiusActionWithSender:";
    v42 = qword_1006AEBF0;
    v235 = v1;
    if (v42 != -1)
    {
      swift_once();
    }

    v43 = qword_1006D4648;
    v44 = unk_1006D4650;
    v46 = qword_1006D4658;
    v45 = unk_1006D4660;
    v229 = xmmword_1006D4668;
    v47 = qword_1006D4678;
    v48 = type metadata accessor for FMModernButton();
    v49 = objc_allocWithZone(v48);
    v50 = &v49[OBJC_IVAR____TtC6FindMy14FMModernButton_style];
    *v50 = v43;
    *(v50 + 1) = v44;
    *(v50 + 2) = v46;
    *(v50 + 3) = v45;
    *(v50 + 2) = v229;
    *(v50 + 6) = v47;
    v242.receiver = v49;
    v242.super_class = v48;
    *&v229 = v48;
    v51 = v43;
    v52 = v44;
    v53 = v46;
    v54 = v45;
    v55 = objc_msgSendSuper2(&v242, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v56 = String._bridgeToObjectiveC()();

    [v55 setTitle:v56 forState:0];

    sub_100007204(&v243, v240, &unk_1006B8740);
    v57 = v241;
    if (v241)
    {
      v58 = sub_1000244BC(v240, v241);
      v59 = *(v57 - 8);
      v60 = __chkstk_darwin(v58);
      v62 = &v226 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v59 + 16))(v62, v60);
      v63 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v59 + 8))(v62, v57);
      sub_100006060(v240);
    }

    else
    {
      v63 = 0;
    }

    [v55 addTarget:v63 action:v236 forControlEvents:64];
    swift_unknownObjectRelease();
    sub_1002EDEAC();
    [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
    v85 = [v55 heightAnchor];
    v86 = &v55[OBJC_IVAR____TtC6FindMy14FMModernButton_style];
    v87 = [v85 constraintEqualToConstant:*&v55[OBJC_IVAR____TtC6FindMy14FMModernButton_style + 48]];

    [v87 setActive:1];
    [v55 setTitleColor:*(v86 + 1) forState:0];
    [v55 setTitleColor:*(v86 + 2) forState:4];
    sub_100012DF0(&v243, &unk_1006B8740);

    v236 = v55;
    v88 = [v231 mainBundle];
    v251._object = 0x800000010059A7D0;
    v89._countAndFlagsBits = 0xD000000000000013;
    v89._object = 0x800000010059A7B0;
    v251._countAndFlagsBits = 0xD000000000000025;
    v90._countAndFlagsBits = 0;
    v90._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v89, 0, v88, v90, v251);

    v245 = v230;
    v91 = v235;
    v243 = v235;
    v227 = "chooseMediumRadiusActionWithSender:";
    v92 = qword_1006D4648;
    v93 = unk_1006D4650;
    v95 = qword_1006D4658;
    v94 = unk_1006D4660;
    v228 = xmmword_1006D4668;
    v96 = qword_1006D4678;
    v97 = v229;
    v98 = objc_allocWithZone(v229);
    v99 = &v98[OBJC_IVAR____TtC6FindMy14FMModernButton_style];
    *v99 = v92;
    *(v99 + 1) = v93;
    *(v99 + 2) = v95;
    *(v99 + 3) = v94;
    *(v99 + 2) = v228;
    *(v99 + 6) = v96;
    v239.receiver = v98;
    v239.super_class = v97;
    *&v228 = v91;
    v100 = v92;
    v101 = v93;
    v102 = v95;
    v103 = v94;
    v104 = objc_msgSendSuper2(&v239, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v105 = String._bridgeToObjectiveC()();

    [v104 setTitle:v105 forState:0];

    sub_100007204(&v243, v240, &unk_1006B8740);
    v106 = v241;
    if (v241)
    {
      v107 = sub_1000244BC(v240, v241);
      v108 = *(v106 - 8);
      v109 = __chkstk_darwin(v107);
      v111 = &v226 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v108 + 16))(v111, v109);
      v112 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v108 + 8))(v111, v106);
      sub_100006060(v240);
    }

    else
    {
      v112 = 0;
    }

    [v104 addTarget:v112 action:v227 forControlEvents:64];
    swift_unknownObjectRelease();
    sub_1002EDEAC();
    [v104 setTranslatesAutoresizingMaskIntoConstraints:0];
    v113 = [v104 heightAnchor];
    v114 = &v104[OBJC_IVAR____TtC6FindMy14FMModernButton_style];
    v115 = [v113 constraintEqualToConstant:*&v104[OBJC_IVAR____TtC6FindMy14FMModernButton_style + 48]];

    [v115 setActive:1];
    [v104 setTitleColor:*(v114 + 1) forState:0];
    [v104 setTitleColor:*(v114 + 2) forState:4];
    sub_100012DF0(&v243, &unk_1006B8740);

    v235 = v104;
    v116 = [v231 mainBundle];
    v252._object = 0x800000010059A820;
    v117._object = 0x800000010059A800;
    v252._countAndFlagsBits = 0xD000000000000024;
    v117._countAndFlagsBits = 0xD000000000000012;
    v118._countAndFlagsBits = 0;
    v118._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v117, 0, v116, v118, v252);

    v245 = v230;
    v119 = v228;
    v243 = v228;
    v231 = "chooseLargeRadiusActionWithSender:";
    v120 = qword_1006D4648;
    v121 = unk_1006D4650;
    v122 = qword_1006D4658;
    v123 = unk_1006D4660;
    v230 = xmmword_1006D4668;
    v124 = qword_1006D4678;
    v125 = v229;
    v126 = objc_allocWithZone(v229);
    v127 = &v126[OBJC_IVAR____TtC6FindMy14FMModernButton_style];
    *v127 = v120;
    *(v127 + 1) = v121;
    *(v127 + 2) = v122;
    *(v127 + 3) = v123;
    *(v127 + 2) = v230;
    *(v127 + 6) = v124;
    v238.receiver = v126;
    v238.super_class = v125;
    v128 = v119;
    v129 = v120;
    v130 = v121;
    v131 = v122;
    v132 = v123;
    v83 = objc_msgSendSuper2(&v238, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v133 = String._bridgeToObjectiveC()();

    [v83 setTitle:v133 forState:0];

    sub_100007204(&v243, v240, &unk_1006B8740);
    v134 = v241;
    if (v241)
    {
      v135 = sub_1000244BC(v240, v241);
      v136 = *(v134 - 8);
      v137 = __chkstk_darwin(v135);
      v139 = &v226 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v136 + 16))(v139, v137);
      v140 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v136 + 8))(v139, v134);
      sub_100006060(v240);
    }

    else
    {
      v140 = 0;
    }

    v75 = v236;
    v84 = v237;
    [v83 addTarget:v140 action:v231 forControlEvents:64];
    swift_unknownObjectRelease();
    sub_1002EDEAC();
    [v83 setTranslatesAutoresizingMaskIntoConstraints:0];
    v141 = [v83 heightAnchor];
    v142 = &v83[OBJC_IVAR____TtC6FindMy14FMModernButton_style];
    v143 = [v141 constraintEqualToConstant:*&v83[OBJC_IVAR____TtC6FindMy14FMModernButton_style + 48]];

    [v143 setActive:1];
    [v83 setTitleColor:*(v142 + 1) forState:0];
    [v83 setTitleColor:*(v142 + 2) forState:4];
    sub_100012DF0(&v243, &unk_1006B8740);

    v76 = v235;
  }

  else
  {
    v64 = type metadata accessor for FMFenceMapViewController();
    v245 = v64;
    v235 = v64;
    v243 = v1;
    v65 = type metadata accessor for FMStickyRoundedButton();
    v66 = objc_allocWithZone(v65);
    v67 = v1;
    v236 = sub_1001C943C(v41._countAndFlagsBits, v41._object, &v243, "chooseSmallRadiusActionWithSender:");
    v68 = [v37 mainBundle];
    v249._object = 0x800000010059A7D0;
    v69._countAndFlagsBits = 0xD000000000000013;
    v69._object = 0x800000010059A7B0;
    v249._countAndFlagsBits = 0xD000000000000025;
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    v71 = NSLocalizedString(_:tableName:bundle:value:comment:)(v69, 0, v68, v70, v249);
    v72 = v37;

    v245 = v64;
    v243 = v67;
    v73 = objc_allocWithZone(v65);
    v74 = v67;
    v75 = v236;
    v76 = sub_1001C943C(v71._countAndFlagsBits, v71._object, &v243, "chooseMediumRadiusActionWithSender:");
    v77 = [v72 mainBundle];
    v250._object = 0x800000010059A820;
    v78._object = 0x800000010059A800;
    v250._countAndFlagsBits = 0xD000000000000024;
    v78._countAndFlagsBits = 0xD000000000000012;
    v79._countAndFlagsBits = 0;
    v79._object = 0xE000000000000000;
    v80 = NSLocalizedString(_:tableName:bundle:value:comment:)(v78, 0, v77, v79, v250);

    v245 = v64;
    v243 = v74;
    v81 = objc_allocWithZone(v65);
    v82 = v74;
    v83 = sub_1001C943C(v80._countAndFlagsBits, v80._object, &v243, "chooseLargeRadiusActionWithSender:");
    v84 = v237;
  }

  v144 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_smallRadiusButton];
  *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_smallRadiusButton] = v75;
  v145 = v83;

  v146 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediumRadiusButton];
  *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediumRadiusButton] = v76;

  v147 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_largeRadiusButton];
  *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_largeRadiusButton] = v145;

  v245 = &type metadata for SolariumFeatureFlag;
  v246 = v84;
  v148 = isFeatureEnabled(_:)();
  sub_100006060(&v243);
  v235 = v76;
  v236 = v75;
  v231 = v145;
  if (v148)
  {
    v149 = [v1 navigationItem];
    [v149 setPreferredSearchBarPlacement:2];

    v150 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_radiusButtonsStackView;
    [*&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_radiusButtonsStackView] setAxis:0];
    [*&v1[v150] setDistribution:3];
    [*&v1[v150] addArrangedSubview:v75];
    [*&v1[v150] addArrangedSubview:v76];
    [*&v1[v150] addArrangedSubview:v145];
    v151 = [v1 view];
    if (!v151)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v152 = v151;
    [v151 addSubview:*&v1[v150]];
LABEL_43:

    v172 = [v1 navigationController];
    if (v172)
    {
      v173 = v172;
      v174 = [v172 view];

      if (!v174)
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v175 = [v233 secondarySystemBackgroundColor];
      [v174 setBackgroundColor:v175];
    }

    if ((v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isOtherUsage] & 1) == 0)
    {
      v176 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v1 action:"cancelActionWithSender:"];
      v177 = [v1 navigationItem];
      [v177 setLeftBarButtonItem:v176];
    }

    v178 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v1 action:"doneActionWithSender:"];
    v179 = [v1 navigationItem];
    [v179 setRightBarButtonItem:v178];

    v180 = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
    v181 = [v1 traitCollection];
    v182 = [v181 horizontalSizeClass];

    v183 = [v1 traitCollection];
    v184 = [v183 verticalSizeClass];

    v186 = v182 == 1 || v184 == 1;
    [v180 setHidesNavigationBarDuringPresentation:v186];
    [v180 setObscuresBackgroundDuringPresentation:0];
    [v180 setSearchResultsUpdater:v1];
    v187 = [v180 searchBar];
    v245 = &type metadata for SolariumFeatureFlag;
    v246 = v237;
    v188 = isFeatureEnabled(_:)();
    sub_100006060(&v243);
    if (v188)
    {
      v189 = 0xD000000000000022;
    }

    else
    {
      v189 = 0xD000000000000016;
    }

    if (v188)
    {
      v190 = "SEARCH_BAR_PLACEHOLDER";
    }

    else
    {
      v190 = "extended-launch-time";
    }

    v243 = 0;
    v244 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v243 = 0xD000000000000012;
    v244 = 0x800000010057A180;
    v191._object = (v190 | 0x8000000000000000);
    v191._countAndFlagsBits = v189;
    String.append(_:)(v191);
    v192 = v243;
    v193 = v244;
    v194 = [objc_opt_self() mainBundle];
    v253._object = v193;
    v195._object = (v190 | 0x8000000000000000);
    v195._countAndFlagsBits = v189;
    v196._countAndFlagsBits = 0;
    v196._object = 0xE000000000000000;
    v253._countAndFlagsBits = v192;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v195, 0, v194, v196, v253);

    v197 = String._bridgeToObjectiveC()();

    [v187 setPlaceholder:v197];

    v198 = [v180 searchBar];
    [v198 setDelegate:v1];

    v199 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchController];
    *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchController] = v180;
    v200 = v180;

    v201 = [objc_allocWithZone(UITableView) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
    v202 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView;
    v203 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView];
    *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView] = v201;
    v204 = v201;

    if (v204)
    {
      [v204 setDataSource:v1];

      v205 = *&v1[v202];
      v206 = v232;
      v207 = v234;
      if (v205)
      {
        [v205 setDelegate:v1];
        v208 = *&v1[v202];
        v209 = v237;
        v210 = v235;
        if (v208)
        {
          [v208 setKeyboardDismissMode:2];
          v211 = *&v1[v202];
          if (v211)
          {
            [v211 setHidden:1];
            v212 = *&v1[v202];
            if (v212)
            {
              [v212 setAutoresizingMask:0];
              v245 = &type metadata for SolariumFeatureFlag;
              v246 = v209;
              v213 = isFeatureEnabled(_:)();
              sub_100006060(&v243);
              if (v213)
              {
                v214 = *&v1[v202];
                if (!v214)
                {
LABEL_98:
                  __break(1u);
                  goto LABEL_99;
                }

                v215 = v214;
                v216 = [v233 secondarySystemBackgroundColor];
                [v215 setBackgroundColor:v216];

                v217 = *&v1[v202];
                if (!v217)
                {
LABEL_99:
                  __break(1u);
                  goto LABEL_100;
                }

                [v217 setSeparatorInset:{0.0, v207[6], 0.0, v207[6]}];
              }

              v218 = [v1 view];
              if (v218)
              {
                v219 = v231;
                if (*&v1[v202])
                {
                  v220 = v218;
                  [v218 addSubview:?];

                  v221 = [v1 navigationItem];
                  [v221 setHidesSearchBarWhenScrolling:1];

                  v222 = [v1 navigationItem];
                  [v222 setSearchController:v200];

                  v223 = *&v1[v206];
                  if (v223)
                  {
                    [v223 setShowsUserLocation:1];
                    v224 = *&v1[v206];
                    if (v224)
                    {
                      v225 = v224;
                      [v225 setUserTrackingMode:0 animated:1];

                      return;
                    }

                    goto LABEL_95;
                  }

LABEL_94:
                  __break(1u);
LABEL_95:
                  __break(1u);
                  goto LABEL_96;
                }

LABEL_93:
                __break(1u);
                goto LABEL_94;
              }

LABEL_92:
              __break(1u);
              goto LABEL_93;
            }

LABEL_91:
            __break(1u);
            goto LABEL_92;
          }

LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v153 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v75];
  v154 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v76];
  v155 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v145];
  v156 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:6 target:0 action:0];
  [v156 setWidth:*v234];
  v157 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:5 target:0 action:0];
  sub_10007EBC0(&qword_1006AFC30);
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_100555120;
  *(v158 + 32) = v156;
  *(v158 + 40) = v153;
  *(v158 + 48) = v157;
  *(v158 + 56) = v154;
  *(v158 + 64) = v157;
  *(v158 + 72) = v155;
  *(v158 + 80) = v156;
  sub_10000905C(0, &qword_1006B0160);
  v159 = v156;
  v160 = v157;
  v152 = v159;
  v161 = v153;
  v162 = v154;
  v163 = v155;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setToolbarItems:isa];

  v165 = [v1 navigationController];
  if (v165)
  {
    v166 = v165;
    v167 = [v165 toolbar];

    if (!v167)
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    [v167 setTranslucent:0];
  }

  v168 = [v1 navigationController];
  if (!v168)
  {
LABEL_42:

    goto LABEL_43;
  }

  v169 = v168;
  v170 = [v168 toolbar];

  if (v170)
  {
    v171 = [v233 secondarySystemBackgroundColor];
    [v170 setBackgroundColor:v171];

    goto LABEL_42;
  }

LABEL_101:
  __break(1u);
}

void sub_10045CF44()
{
  v1 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_38;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10007EBC0(&qword_1006AFC30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100552EF0;
  v4 = *&v0[v1];
  if (!v4)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v5 = [v4 topAnchor];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v7 = v6;
  v8 = [v6 safeAreaLayoutGuide];

  v9 = [v8 topAnchor];
  v10 = [v5 constraintEqualToAnchor:v9];

  *(v3 + 32) = v10;
  v11 = *&v0[v1];
  if (!v11)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v12 = [v11 leadingAnchor];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v14 = v13;
  v15 = [v13 safeAreaLayoutGuide];

  v16 = [v15 leadingAnchor];
  v126 = &v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_style];
  v17 = *&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_style + 48];
  v18 = [v12 constraintEqualToAnchor:v16 constant:v17];

  *(v3 + 40) = v18;
  v19 = *&v0[v1];
  if (!v19)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v20 = [v19 trailingAnchor];
  v21 = [v0 view];
  if (!v21)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v22 = v21;
  v23 = objc_opt_self();
  v24 = [v22 safeAreaLayoutGuide];

  v25 = [v24 trailingAnchor];
  v26 = [v20 constraintEqualToAnchor:v25 constant:-v17];

  *(v3 + 48) = v26;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v127 = v23;
  [v23 activateConstraints:isa];

  v28 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_radiusButtonsStackView;
  [*&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_radiusButtonsStackView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v129 = &type metadata for SolariumFeatureFlag;
  v130 = sub_10000BD04();
  v29 = isFeatureEnabled(_:)();
  sub_100006060(v128);
  if ((v29 & 1) == 0)
  {
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1005528C0;
    v58 = *&v0[v1];
    if (!v58)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v47 = [v58 bottomAnchor];
    p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    v59 = [v0 view];
    v55 = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    v56 = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    if (!v59)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v60 = v59;
    v50 = (v57 + 32);
    v61 = [v59 safeAreaLayoutGuide];

    v52 = [v61 bottomAnchor];
    v53 = [v47 constraintEqualToAnchor:v52];
LABEL_18:
    v62 = v53;

    *v50 = v62;
    v63 = Array._bridgeToObjectiveC()().super.isa;

    [v127 activateConstraints:v63];

    v64 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView;
    v65 = *&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView];
    if (v65)
    {
      [v65 setTranslatesAutoresizingMaskIntoConstraints:0];
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1005521F0;
      v67 = *&v0[v64];
      if (v67)
      {
        v68 = [v67 topAnchor];
        v69 = [v0 p_ivar_lyt[433]];
        if (v69)
        {
          v70 = v69;
          v71 = [v69 safeAreaLayoutGuide];

          v72 = [v71 topAnchor];
          v73 = [v68 v55[437]];

          *(v66 + 32) = v73;
          v74 = *&v0[v64];
          if (v74)
          {
            v75 = [v74 bottomAnchor];
            v76 = [v0 p_ivar_lyt[433]];
            if (v76)
            {
              v77 = v76;
              v78 = [v76 safeAreaLayoutGuide];

              v79 = [v78 bottomAnchor];
              v80 = [v75 v55[437]];

              *(v66 + 40) = v80;
              v81 = *&v0[v64];
              if (v81)
              {
                v82 = [v81 v56[432]];
                v83 = [v0 p_ivar_lyt[433]];
                if (v83)
                {
                  v84 = v83;
                  v85 = [v83 safeAreaLayoutGuide];

                  v86 = [v85 v56[432]];
                  v87 = [v82 v55[437]];

                  *(v66 + 48) = v87;
                  v88 = *&v0[v64];
                  if (v88)
                  {
                    v89 = [v88 trailingAnchor];
                    v90 = [v0 p_ivar_lyt[433]];
                    if (v90)
                    {
                      v91 = v90;
                      v92 = [v90 safeAreaLayoutGuide];

                      v93 = [v92 trailingAnchor];
                      v94 = [v89 v55[437]];

                      *(v66 + 56) = v94;
                      v95 = Array._bridgeToObjectiveC()().super.isa;

                      [v127 activateConstraints:v95];

                      v96 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView;
                      v97 = *&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView];
                      if (v97)
                      {
                        [v97 setTranslatesAutoresizingMaskIntoConstraints:0];
                        v98 = swift_allocObject();
                        *(v98 + 16) = xmmword_1005521F0;
                        v99 = *&v0[v96];
                        if (v99)
                        {
                          v100 = [v99 topAnchor];
                          v101 = [v0 p_ivar_lyt[433]];
                          if (v101)
                          {
                            v102 = v101;
                            v103 = [v101 safeAreaLayoutGuide];

                            v104 = [v103 topAnchor];
                            v105 = [v100 v55[437]];

                            *(v98 + 32) = v105;
                            v106 = *&v0[v96];
                            if (v106)
                            {
                              v107 = [v106 bottomAnchor];
                              v108 = [v0 p_ivar_lyt[433]];
                              if (v108)
                              {
                                v109 = v108;
                                v110 = [v108 safeAreaLayoutGuide];

                                v111 = [v110 bottomAnchor];
                                v112 = [v107 v55[437]];

                                *(v98 + 40) = v112;
                                v113 = *&v0[v96];
                                if (v113)
                                {
                                  v114 = [v113 v56[432]];
                                  v115 = [v0 p_ivar_lyt[433]];
                                  if (v115)
                                  {
                                    v116 = v115;
                                    v117 = [v115 v56[432]];

                                    v118 = [v114 v55[437]];
                                    *(v98 + 48) = v118;
                                    v119 = *&v0[v96];
                                    if (v119)
                                    {
                                      v120 = [v119 trailingAnchor];
                                      v121 = [v0 p_ivar_lyt[433]];
                                      if (v121)
                                      {
                                        v122 = v121;
                                        v123 = [v121 trailingAnchor];

                                        v124 = [v120 v55[437]];
                                        *(v98 + 56) = v124;
                                        v125 = Array._bridgeToObjectiveC()().super.isa;

                                        [v127 activateConstraints:v125];

                                        return;
                                      }

                                      goto LABEL_61;
                                    }

LABEL_60:
                                    __break(1u);
LABEL_61:
                                    __break(1u);
                                    goto LABEL_62;
                                  }

LABEL_59:
                                  __break(1u);
                                  goto LABEL_60;
                                }

LABEL_58:
                                __break(1u);
                                goto LABEL_59;
                              }

LABEL_57:
                              __break(1u);
                              goto LABEL_58;
                            }

LABEL_56:
                            __break(1u);
                            goto LABEL_57;
                          }

LABEL_55:
                          __break(1u);
                          goto LABEL_56;
                        }

LABEL_54:
                        __break(1u);
                        goto LABEL_55;
                      }

LABEL_53:
                      __break(1u);
                      goto LABEL_54;
                    }

LABEL_52:
                    __break(1u);
                    goto LABEL_53;
                  }

LABEL_51:
                  __break(1u);
                  goto LABEL_52;
                }

LABEL_50:
                __break(1u);
                goto LABEL_51;
              }

LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1005521F0;
  v31 = [*&v0[v28] leadingAnchor];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v33 = v32;
  v34 = [v32 leadingAnchor];

  v35 = v126[10];
  v36 = [v31 constraintEqualToAnchor:v34 constant:v35];

  *(v30 + 32) = v36;
  v37 = [*&v0[v28] trailingAnchor];
  v38 = [v0 view];
  if (!v38)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v39 = v38;
  v40 = [v38 trailingAnchor];

  v41 = [v37 constraintEqualToAnchor:v40 constant:-v35];
  *(v30 + 40) = v41;
  v42 = [*&v0[v28] bottomAnchor];
  v43 = *&v0[v1];
  if (!v43)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v44 = [v43 bottomAnchor];
  v45 = [v42 constraintEqualToAnchor:v44 constant:-v126[11]];

  *(v30 + 48) = v45;
  v46 = *&v0[v1];
  if (!v46)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v47 = [v46 bottomAnchor];
  v48 = [v0 view];
  if (v48)
  {
    v49 = v48;
    v50 = (v30 + 56);
    v51 = [v48 safeAreaLayoutGuide];

    v52 = [v51 bottomAnchor];
    v53 = [v47 constraintEqualToAnchor:v52 constant:-v126[9]];
    p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
    v55 = (&LocateDeviceIntentResponse__metaData + 16);
    v56 = (&LocateDeviceIntentResponse__metaData + 16);
    goto LABEL_18;
  }

LABEL_68:
  __break(1u);
}

void sub_10045DBB8()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for FMFenceMapViewController();
  objc_msgSendSuper2(&v13, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediator];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = *(v2 + 48);
  type metadata accessor for FMPeopleSubscription();
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v4 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_100640060;
  swift_unknownObjectWeakAssign();
  v5 = *(v3 + 32);

  os_unfair_lock_lock((v5 + 24));
  sub_10000E7C0((v5 + 16));
  os_unfair_lock_unlock((v5 + 24));

  *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_peopleSubscription] = v4;

  sub_10045B4B4();
  sub_10045CF44();
  v6 = objc_allocWithZone(UILongPressGestureRecognizer);
  v7 = v1;
  v8 = [v6 initWithTarget:v7 action:"longPressActionWithSender:"];
  v9 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
  v10 = *&v7[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView];
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v10 addGestureRecognizer:v8];
  v11 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v7 action:"mapTappedActionWithSender:"];

  v12 = *&v7[v9];
  if (v12)
  {
    [v12 addGestureRecognizer:v11];

    sub_10045E6E4();
    return;
  }

LABEL_7:
  __break(1u);
}

id sub_10045DDE0(id result)
{
  v2 = result;
  v3 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_peopleSubscription;
  if (!*&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_peopleSubscription])
  {
    goto LABEL_4;
  }

  v4 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediator];
  if (v4)
  {
    v5 = *(*(v4 + 48) + 32);

    os_unfair_lock_lock((v5 + 24));
    sub_10008FB88((v5 + 16));
    os_unfair_lock_unlock((v5 + 24));

    *&v1[v3] = 0;

LABEL_4:
    v6.receiver = v1;
    v6.super_class = type metadata accessor for FMFenceMapViewController();
    return objc_msgSendSuper2(&v6, "viewWillDisappear:", v2 & 1);
  }

  __break(1u);
  return result;
}

id sub_10045DF1C(uint64_t a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for FMFenceMapViewController();
  result = objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v4 = &v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion];
  if ((v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion + 32] & 1) == 0)
  {
    v5 = *v4;
    v6 = v4[1];
    v7 = fabs(*v4);
    if (fabs(v6) <= 180.0 && v7 <= 90.0)
    {
      v9 = v4[2];
      if (v9 >= 0.0 && v9 <= 180.0)
      {
        v11 = v4[3];
        if (v11 >= 0.0 && v11 <= 360.0)
        {
          result = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView];
          if (result)
          {
            result = [result setRegion:1 animated:?];
            *v4 = v5;
            v4[1] = v6;
            v4[2] = v9;
            v4[3] = v11;
            *(v4 + 32) = 0;
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }

  return result;
}

void sub_10045E09C(uint64_t a1, char *a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v32 - v14;
  v16 = [a2 traitCollection];
  v17 = [v16 horizontalSizeClass];

  v18 = [a2 traitCollection];
  v19 = [v18 verticalSizeClass];

  if (v17 != 1 && v19 != 1)
  {
    return;
  }

  v20 = *&a2[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView];
  if (!v20)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  [v20 setHidden:1];
  v21 = [a2 navigationItem];
  v22 = [v21 searchController];

  if (v22)
  {
    [v22 setActive:0];
  }

  v23 = *&a2[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView];
  if (!v23)
  {
    goto LABEL_25;
  }

  v24 = [v23 selectedAnnotations];
  sub_10007EBC0(&qword_1006C1DD0);
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v25 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_9;
    }
  }

  else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:
    if ((v25 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:

      type metadata accessor for FMFenceMapAnnotation();
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        v27 = v26;
        sub_10000905C(0, &qword_1006AEDC0);
        v32 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v33 = v9;
        v34 = *(v34 + 8);
        (v34)(v11, v9);
        v28 = swift_allocObject();
        *(v28 + 16) = a2;
        *(v28 + 24) = v27;
        aBlock[4] = sub_10046D86C;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100004AE4;
        aBlock[3] = &unk_1006404B0;
        v29 = _Block_copy(aBlock);
        v30 = a2;
        swift_unknownObjectRetain();

        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10000A618(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10007EBC0(&unk_1006B0640);
        sub_100037970();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v31 = v32;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v29);
        swift_unknownObjectRelease();

        (*(v37 + 8))(v5, v3);
        (*(v35 + 8))(v8, v36);
        (v34)(v15, v33);
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return;
    }

    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_24;
  }
}

void sub_10045E6E4()
{
  v1 = v0;
  v178 = type metadata accessor for FMFAddress();
  v2 = *(v178 - 8);
  __chkstk_darwin(v178);
  v170 = &v161 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&qword_1006B0040);
  __chkstk_darwin(v4 - 8);
  v6 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v168 = &v161 - v8;
  __chkstk_darwin(v9);
  v172 = &v161 - v10;
  __chkstk_darwin(v11);
  v171 = &v161 - v12;
  v174 = type metadata accessor for FMFLabel();
  v173 = *(v174 - 8);
  __chkstk_darwin(v174);
  v169 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007EBC0(&qword_1006B0038);
  __chkstk_darwin(v14 - 8);
  v16 = &v161 - v15;
  v17 = sub_10007EBC0(&qword_1006B00C8);
  __chkstk_darwin(v17 - 8);
  v19 = &v161 - v18;
  v20 = type metadata accessor for FMFLocationAlertAddressType();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  __chkstk_darwin(v22);
  v24 = &v161 - v23;
  *&v28 = __chkstk_darwin(v25).n128_u64[0];
  v29 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedLocation;
  v30 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedLocation);
  if (v30)
  {
    v177 = v2;
    v175 = v27;
    v179 = &v161 - v26;
    v31 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressType;
    swift_beginAccess();
    sub_100007204(v1 + v31, v19, &qword_1006B00C8);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_100012DF0(v19, &qword_1006B00C8);
      v32 = *(v1 + v29);
      if (v32)
      {
        if (*(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressRadius + 8))
        {
          v33 = 2817.5;
        }

        else
        {
          v33 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressRadius);
        }

        v34 = v32;
        [v34 coordinate];
        v36 = v35;
        [v34 coordinate];
        v184.latitude = v36;
        v185 = MKCoordinateRegionMakeWithDistance(v184, v33, v33);
        v37 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
        v38 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
        if (v38)
        {
          [v38 regionThatFits:{v185.center.latitude, v185.center.longitude, v185.span.latitudeDelta, v185.span.longitudeDelta}];
          if (fabs(v40) > 180.0 || fabs(v39) > 90.0 || v41 < 0.0 || v41 > 180.0 || v42 < 0.0 || v42 > 360.0)
          {

            goto LABEL_40;
          }

          v43 = *(v1 + v37);
          if (v43)
          {
            v44 = v42;
            v45 = v41;
            v46 = v40;
            v47 = v39;
            v48 = v43;
            [v48 setRegion:1 animated:{v47, v46, v45, v44}];

            v49 = v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion;
            *v49 = v47;
            *(v49 + 8) = v46;
            *(v49 + 16) = v45;
            *(v49 + 24) = v44;
            *(v49 + 32) = 0;
LABEL_40:
            *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_showingUserLocation) = 1;
            return;
          }

          goto LABEL_120;
        }

        goto LABEL_117;
      }

      goto LABEL_16;
    }

    (*(v21 + 32))(v179, v19, v20);
    v57 = v30;
    [v57 coordinate];
    v59 = v58;
    v165 = v57;
    [v57 coordinate];
    v61 = v60;
    v62 = (v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressRadius);
    if (*(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressRadius + 8) == 1)
    {
      if (qword_1006AED88 != -1)
      {
        swift_once();
      }

      v62 = &qword_1006D4D20;
    }

    v176 = v20;
    v63 = *v62;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100005B14(v64, qword_1006D4630);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    v67 = os_log_type_enabled(v65, v66);
    v167 = v6;
    v166 = v1;
    if (v67)
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v182 = v69;
      *v68 = 136315138;
      v70 = Double.description.getter();
      v72 = sub_100005B4C(v70, v71, &v182);

      *(v68 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v65, v66, "FMFenceMapViewController: radius %s", v68, 0xCu);
      sub_100006060(v69);
    }

    v73 = *(v21 + 104);
    v74 = v176;
    v73(v24, enum case for FMFLocationAlertAddressType.friendLocation(_:), v176);
    sub_10000A618(&unk_1006C07F0, &type metadata accessor for FMFLocationAlertAddressType);
    v75 = v21;
    v76 = v74;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v162 = v75;
    v77 = *(v75 + 8);
    v77(v24, v76);
    v164 = v75 + 8;
    v163 = v77;
    if (v182 != v180)
    {
      v73(v24, enum case for FMFLocationAlertAddressType.custom(_:), v76);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v77(v24, v76);
      if (v182 != v180)
      {
        v73(v24, enum case for FMFLocationAlertAddressType.currentLocation(_:), v76);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v77(v24, v76);
        if (v182 != v180)
        {
          v174 = 0;
          v115 = 0;
          v173 = 0;
          object = 0;
          v86 = v178;
          v79 = v166;
          v87 = v162;
          v82 = (&xmmword_1006D3FF8 + 8);
          goto LABEL_74;
        }

        v99 = [objc_opt_self() mainBundle];
        v183._object = 0x800000010059A700;
        v100._object = 0x800000010059A6D0;
        v183._countAndFlagsBits = 0xD00000000000003FLL;
        v100._countAndFlagsBits = 0xD00000000000002DLL;
        v101._countAndFlagsBits = 0;
        v101._object = 0xE000000000000000;
        v102 = NSLocalizedString(_:tableName:bundle:value:comment:)(v100, 0, v99, v101, v183);
        countAndFlagsBits = v102._countAndFlagsBits;
        object = v102._object;

        v103 = (v102._object >> 56) & 0xF;
        if ((v102._object & 0x2000000000000000) == 0)
        {
          v103 = v102._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        v86 = v178;
        v79 = v166;
        v87 = v162;
        if (!v103)
        {
          v173 = v102._countAndFlagsBits;
          v174 = 0;
          v115 = 0;
          v82 = (&xmmword_1006D3FF8 + 8);
          goto LABEL_74;
        }

        v82 = &xmmword_1006D3FF8 + 8;
        v104 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_address;
        swift_beginAccess();
        v105 = v79 + v104;
        v106 = v168;
        sub_100007204(v105, v168, &qword_1006B0040);
        v107 = v177;
        if (!(*(v177 + 48))(v106, 1, v86))
        {
          v118 = v170;
          (*(v107 + 16))(v170, v106, v86);
          sub_100012DF0(v106, &qword_1006B0040);
          v119 = FMFAddress.displayAddressWithoutStreetName.getter();
          v121 = v120;
          (*(v107 + 8))(v118, v86);
          if (v121)
          {
            v114 = v119;
          }

          else
          {
            v114 = 0;
          }

          if (v121)
          {
            v115 = v121;
          }

          else
          {
            v115 = 0xE000000000000000;
          }

          v82 = &xmmword_1006D3FF8 + 8;
          if (v102._countAndFlagsBits != v114)
          {
            goto LABEL_71;
          }

          goto LABEL_60;
        }

        sub_100012DF0(v106, &qword_1006B0040);
        goto LABEL_55;
      }
    }

    v78 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressLabel;
    v79 = v166;
    swift_beginAccess();
    sub_100007204(v79 + v78, v16, &qword_1006B0038);
    v80 = v173;
    v81 = v174;
    if ((*(v173 + 48))(v16, 1, v174))
    {
      sub_100012DF0(v16, &qword_1006B0038);
      v82 = &xmmword_1006D3FF8 + 8;
      v83 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_address;
      swift_beginAccess();
      v84 = v171;
      sub_100007204(v79 + v83, v171, &qword_1006B0040);
      v85 = v177;
      v86 = v178;
      if ((*(v177 + 48))(v84, 1, v178))
      {
        sub_100012DF0(v84, &qword_1006B0040);
        v87 = v162;
      }

      else
      {
        v108 = v170;
        (*(v85 + 16))(v170, v84, v86);
        sub_100012DF0(v84, &qword_1006B0040);
        countAndFlagsBits = FMFAddress.displayAddressWithStreetName.getter();
        object = v109;
        (*(v85 + 8))(v108, v86);
        v87 = v162;
        if (object)
        {
          goto LABEL_49;
        }
      }

      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    else
    {
      v97 = v169;
      (*(v80 + 16))(v169, v16, v81);
      sub_100012DF0(v16, &qword_1006B0038);
      countAndFlagsBits = FMFLabel.localizedValue.getter();
      object = v98;
      (*(v80 + 8))(v97, v81);
      v86 = v178;
      v85 = v177;
      v87 = v162;
      v82 = (&xmmword_1006D3FF8 + 8);
    }

LABEL_49:
    v110 = HIBYTE(object) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v110 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v110)
    {
      v173 = countAndFlagsBits;
LABEL_73:
      v174 = 0;
      v115 = 0;
      goto LABEL_74;
    }

    v111 = *(v82 + 386);
    swift_beginAccess();
    v112 = v79 + v111;
    v113 = v172;
    sub_100007204(v112, v172, &qword_1006B0040);
    if ((*(v85 + 48))(v113, 1, v86))
    {
      sub_100012DF0(v113, &qword_1006B0040);
    }

    else
    {
      v116 = v170;
      (*(v85 + 16))(v170, v113, v86);
      sub_100012DF0(v113, &qword_1006B0040);
      v114 = FMFAddress.displayAddressWithoutStreetName.getter();
      v115 = v117;
      (*(v85 + 8))(v116, v86);
      if (v115)
      {
        if (countAndFlagsBits != v114)
        {
          goto LABEL_71;
        }

LABEL_60:
        if (object == v115)
        {
          countAndFlagsBits = v114;
          object = v115;
LABEL_72:
          v173 = countAndFlagsBits;

          goto LABEL_73;
        }

LABEL_71:
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v174 = v114;
          v173 = countAndFlagsBits;
LABEL_74:
          v122 = *(v87 + 16);
          v123 = v175;
          v124 = v176;
          v122(v175, v179, v176);
          v125 = *(v82 + 386);
          swift_beginAccess();
          sub_100007204(v79 + v125, v167, &qword_1006B0040);
          v126 = type metadata accessor for FMFenceMapAnnotation();
          v127 = objc_allocWithZone(v126);
          (*(v177 + 56))(&v127[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark], 1, 1, v86);
          *&v127[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_clPlacemark] = 0;
          v128 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didReverseGeocodeGroup;
          *&v127[v128] = dispatch_group_create();
          v129 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_geocoder;
          *&v127[v129] = [objc_allocWithZone(CLGeocoder) init];
          v127[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didZoomOnSelection] = 0;
          *&v127[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay] = 0;
          v130 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius;
          if (qword_1006AED88 != -1)
          {
            swift_once();
          }

          v131 = *&qword_1006D4D20;
          *&v127[v130] = qword_1006D4D20;
          v122(&v127[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_addressType], v123, v124);
          v127[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_locationType] = 0;
          v181.receiver = v127;
          v181.super_class = v126;
          v132 = objc_msgSendSuper2(&v181, "init");
          v133 = v132;
          if (object)
          {
            v134 = String._bridgeToObjectiveC()();
          }

          else
          {
            v134 = 0;
          }

          v135 = v167;
          v136 = v178;
          v137 = v166;
          [v132 setTitle:v134];

          if (v115)
          {

            v138 = String._bridgeToObjectiveC()();
          }

          else
          {
            v138 = 0;
          }

          [v132 setSubtitle:v138];

          [v132 setCoordinate:{v59, v61}];
          v139 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark;
          swift_beginAccess();
          sub_100278A8C(v135, &v132[v139]);
          swift_endAccess();
          if (qword_1006AED90 != -1)
          {
            swift_once();
          }

          if (v131 > v63)
          {
            v140 = v131;
          }

          else
          {
            v140 = v63;
          }

          if (v140 >= *&qword_1006D4D28)
          {
            v141 = *&qword_1006D4D28;
          }

          else
          {
            v141 = v140;
          }

          *&v132[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius] = v141;
          v142 = [objc_opt_self() circleWithCenterCoordinate:v59 radius:{v61, v141}];
          v143 = *&v132[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay];
          *&v132[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay] = v142;

          v144 = (*(v177 + 48))(v135, 1, v136);
          v145 = v163;
          if (v144 == 1)
          {

            v146 = v176;
LABEL_96:
            dispatch_group_enter(*&v132[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didReverseGeocodeGroup]);
            sub_100485F88();
            v145(v175, v146);
            sub_100012DF0(v135, &qword_1006B0040);
            sub_10045FC64(v132);

            v145(v179, v146);
            v148 = *(v137 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_userDroppedAnnotation);
            *(v137 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_userDroppedAnnotation) = v132;

            *(v137 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_showingUserLocation) = 1;
            return;
          }

          v146 = v176;
          if (v115)
          {
            goto LABEL_93;
          }

          v149 = [v132 title];
          if (v149)
          {
            v150 = v145;
            v151 = v149;
            v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v154 = v153;

            v155 = sub_100486C44();
            v157 = v156;
            if (v154)
            {
              if (v156)
              {
                if (v152 == v155 && v156 == v154)
                {

                  v147 = 0;
                  v145 = v150;
                  goto LABEL_94;
                }

                v160 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v145 = v150;
                if (v160)
                {
                  goto LABEL_114;
                }

                goto LABEL_111;
              }

              v145 = v150;
LABEL_110:

LABEL_111:
              v174 = sub_100486C44();
              if (v159)
              {
LABEL_93:
                v147 = String._bridgeToObjectiveC()();
LABEL_94:

LABEL_95:
                [v132 setSubtitle:v147];

                goto LABEL_96;
              }

LABEL_114:
              v147 = 0;
              goto LABEL_95;
            }

            v145 = v150;
          }

          else
          {
            sub_100486C44();
            v157 = v158;
          }

          if (!v157)
          {
            goto LABEL_114;
          }

          goto LABEL_110;
        }

        goto LABEL_72;
      }
    }

LABEL_55:
    v114 = 0;
    v115 = 0xE000000000000000;
    if (countAndFlagsBits)
    {
      goto LABEL_71;
    }

    goto LABEL_60;
  }

LABEL_16:
  v50 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
  v51 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
  if (!v51)
  {
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v52 = [v51 userLocation];
  v53 = [v52 location];

  if (v53)
  {

    v54 = *(v1 + v50);
    if (v54)
    {
      v55 = v54;
      v56 = [v55 userLocation];
      [v55 selectAnnotation:v56 animated:1];

      return;
    }

    goto LABEL_116;
  }

  v90 = *(v1 + v50);
  if (!v90)
  {
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
    return;
  }

  [v90 centerCoordinate];
  if (fabs(v92) <= 180.0 && fabs(v91) <= 90.0)
  {
    v93 = *(v1 + v50);
    if (v93)
    {
      v94 = v91;
      v95 = v92;
      [v93 setRegion:1 animated:?];
      v96 = v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion;
      *v96 = v94;
      *(v96 + 8) = v95;
      *(v96 + 16) = xmmword_1005622E0;
      *(v96 + 32) = 0;
      return;
    }

    goto LABEL_119;
  }
}

void sub_10045FC64(void *a1)
{
  v2 = v1;
  v51 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v51 - 8);
  __chkstk_darwin(v51);
  v54 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock = v12;
    *v11 = 136315138;
    v13 = [v8 debugDescription];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100005B4C(v14, v16, &aBlock);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMFenceMapViewController: addAndSelectAnnotation %s", v11, 0xCu);
    sub_100006060(v12);
  }

  v18 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
  v19 = *(v2 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = v19;
  [v8 coordinate];
  v64 = MKCoordinateRegionMakeWithDistance(v63, *&v8[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius] * 3.5, *&v8[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius] * 3.5);
  [v20 regionThatFits:{v64.center.latitude, v64.center.longitude, v64.span.latitudeDelta, v64.span.longitudeDelta}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = fabs(v22);
  v30 = fabs(v24) > 180.0 || v29 > 90.0;
  if (v30 || (v26 >= 0.0 ? (v31 = v26 > 180.0) : (v31 = 1), v31 || (v28 >= 0.0 ? (v32 = v28 > 360.0) : (v32 = 1), v32)))
  {
LABEL_20:
    v50 = v4;
    v35 = *(v2 + v18);
    if (v35)
    {
      [v35 addAnnotation:v8];
      sub_10000905C(0, &qword_1006AEDC0);
      v36 = static OS_dispatch_queue.main.getter();
      v37 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      *(v38 + 24) = v8;
      v61 = sub_10046D108;
      v62 = v38;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_100004AE4;
      v60 = &unk_100640348;
      v39 = _Block_copy(&aBlock);
      v40 = v8;

      v41 = v52;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      v49[2] = sub_10000A618(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      v49[1] = sub_10007EBC0(&unk_1006B0640);
      v49[3] = sub_100037970();
      v42 = v54;
      v43 = v51;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v39);

      v50 = *(v50 + 8);
      (v50)(v42, v43);
      v53 = *(v53 + 8);
      (v53)(v41, v55);
      v49[0] = *&v40[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didReverseGeocodeGroup];
      v44 = static OS_dispatch_queue.main.getter();
      v45 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v46 = swift_allocObject();
      *(v46 + 16) = v45;
      *(v46 + 24) = v40;
      v61 = sub_10046D158;
      v62 = v46;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_100004AE4;
      v60 = &unk_100640398;
      v47 = _Block_copy(&aBlock);
      v48 = v40;

      static DispatchQoS.unspecified.getter();
      v56 = _swiftEmptyArrayStorage;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v47);

      (v50)(v42, v43);
      (v53)(v41, v55);

      return;
    }

    goto LABEL_23;
  }

  v33 = *(v2 + v18);
  if (v33)
  {
    [v33 setRegion:1 animated:{v22, v24, v26, v28}];
    v34 = v2 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion;
    *v34 = v22;
    *(v34 + 8) = v24;
    *(v34 + 16) = v26;
    *(v34 + 24) = v28;
    *(v34 + 32) = 0;
    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
}

void sub_100460368(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      [v6 selectAnnotation:a2 animated:1];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1004603FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007EBC0(&qword_1006B0040);
  __chkstk_darwin(v3 - 8);
  v5 = &v14[-v4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
    v8 = Strong;
    v9 = v7;

    if (v7)
    {
      v10 = [v9 viewForAnnotation:a2];

      if (v10)
      {
        v11 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark;
        swift_beginAccess();
        sub_100007204(a2 + v11, v5, &qword_1006B0040);
        v12 = type metadata accessor for FMFAddress();
        v13 = (*(*(v12 - 8) + 48))(v5, 1, v12) != 1;
        sub_100012DF0(v5, &qword_1006B0040);
        [v10 setCanShowCallout:v13];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1004605A0(void *a1, uint64_t a2, char *a3, uint64_t a4, char a5, void *a6, uint64_t a7)
{
  v57 = a6;
  v13 = sub_10007EBC0(&qword_1006B00C8);
  __chkstk_darwin(v13 - 8);
  v15 = v52 - v14;
  v16 = type metadata accessor for FMFLocationAlertAddressType();
  __chkstk_darwin(v16);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    goto LABEL_2;
  }

  if (!a1)
  {
    return;
  }

  v55 = a7;
  v56 = v17;
  v26 = [a1 mapItems];
  sub_10000905C(0, &qword_1006C0800);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = v27 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v28)
  {
LABEL_2:
    v20 = *&a3[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchController];
    if (v20)
    {
      v21 = [v20 searchBar];
      v22 = [objc_opt_self() mainBundle];
      v60._object = 0x800000010058B160;
      v23._object = 0x800000010058B140;
      v60._countAndFlagsBits = 0xD00000000000002CLL;
      v23._countAndFlagsBits = 0xD00000000000001ALL;
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v60);

      v57 = String._bridgeToObjectiveC()();

      [v21 setPlaceholder:v57];

      v25 = v57;
    }
  }

  else
  {
    v29 = [a1 mapItems];
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v30 >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
      if (v31)
      {
LABEL_12:
        v58 = _swiftEmptyArrayStorage;
        __chkstk_darwin(v31);
        v54 = a4;
        v52[-6] = a4;
        v52[-5] = &v58;
        v52[-4] = v30;
        LOBYTE(v52[-3]) = a5 & 1;
        v60._object = a3;
        sub_100190528(sub_10046D83C, &v52[-8], v30);
        v32 = *&a3[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView];
        if (v32)
        {
          v53 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
          v33 = v58;
          v34 = v58 >> 62;
          if (v58 >> 62)
          {
            v51 = v32;

            sub_10007EBC0(&qword_1006C1DD0);
            _bridgeCocoaArray<A>(_:)();
          }

          else
          {
            v35 = v32;

            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          }

          v52[1] = sub_10007EBC0(&qword_1006C1DD0);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v32 addAnnotations:isa];

          v37 = v56;
          (*(v56 + 104))(v19, enum case for FMFLocationAlertAddressType.droppedPin(_:), v16);
          sub_10000A618(&qword_1006BA958, &type metadata accessor for FMFLocationAlertAddressType);
          LOBYTE(isa) = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v37 + 8))(v19, v16);
          if ((isa & 1) != 0 || (v34 ? (v38 = _CocoaArrayWrapper.endIndex.getter()) : (v38 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10)), !v38))
          {
LABEL_30:
            v43 = *&a3[v53];
            if (v43)
            {

              v44 = v43;
              if (v34)
              {
                _bridgeCocoaArray<A>(_:)();
              }

              else
              {
                dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
              }

              v40 = Array._bridgeToObjectiveC()().super.isa;

              [v43 showAnnotations:v40 animated:1];

              goto LABEL_35;
            }

            goto LABEL_46;
          }

          if ((v33 & 0xC000000000000001) != 0)
          {
            v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_23;
          }

          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v39 = *(v33 + 32);
LABEL_23:
            v40 = v39;
            if (v34)
            {
              v41 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v41 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v41 == 1)
            {
              v42 = *&a3[v53];
              if (v42)
              {
                [v42 selectAnnotation:v40 animated:1];
LABEL_35:
                v45 = v54;

                *&a3[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapSearchResults] = v30;

                v46 = v56;
                (*(v56 + 16))(v15, v45, v16);
                (*(v46 + 56))(v15, 0, 1, v16);
                v47 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSeachAddressType;
                swift_beginAccess();
                sub_1000BBF40(v15, &a3[v47], &qword_1006B00C8);
                swift_endAccess();
                v48 = &a3[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSearchedQuery];
                v49 = v55;
                *v48 = v57;
                *(v48 + 1) = v49;

                v50 = [objc_opt_self() sharedApplication];
                [v50 setNetworkActivityIndicatorVisible:0];

                return;
              }

LABEL_47:
              __break(1u);
              return;
            }

            goto LABEL_30;
          }

          __break(1u);
        }

        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
        goto LABEL_12;
      }
    }
  }
}

void sub_100460D10(id *a1, uint64_t a2, void *a3, unint64_t a4, int a5, uint64_t a6)
{
  v99 = a6;
  v100 = a5;
  v105 = a3;
  v106 = a4;
  v8 = sub_10007EBC0(&qword_1006B0040);
  __chkstk_darwin(v8 - 8);
  v113 = &v99 - v9;
  v10 = type metadata accessor for FMFLocationAlertAddressType();
  v11 = *(v10 - 8);
  v109 = v10;
  v110 = v11;
  __chkstk_darwin(v10);
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for FMFAddress();
  v14 = *(v111 - 8);
  __chkstk_darwin(v111);
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = [*a1 placemark];
  FMFAddress.init(from:)();
  v19 = [v17 placemark];
  v20 = [v19 region];

  if (v20)
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    v104 = v21 == 0;
    if (v21)
    {
      [v21 radius];
      v23 = v22;
    }

    else
    {
      v23 = 0.0;
    }

    v24 = v109;
  }

  else
  {
    v104 = 1;
    v23 = 0.0;
    v24 = v109;
  }

  v25 = [v17 placemark];
  [v25 coordinate];
  v27 = v26;
  v29 = v28;

  v30 = [v17 name];
  v101 = v17;
  if (v30)
  {
    v31 = v13;
    v32 = v30;
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v33;

    v13 = v31;
  }

  else
  {
    v102 = 0;
    v103 = 0;
  }

  v34 = *(v110 + 16);
  v34(v13, a2, v24);
  v35 = *(v14 + 16);
  v36 = v113;
  v107 = v16;
  v37 = v111;
  v35(v113, v16, v111);
  v108 = v14;
  v38 = *(v14 + 56);
  v38(v36, 0, 1, v37);
  v39 = type metadata accessor for FMFenceMapAnnotation();
  v40 = v13;
  v41 = objc_allocWithZone(v39);
  v38(&v41[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark], 1, 1, v37);
  *&v41[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_clPlacemark] = 0;
  v42 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didReverseGeocodeGroup;
  *&v41[v42] = dispatch_group_create();
  v43 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_geocoder;
  *&v41[v43] = [objc_allocWithZone(CLGeocoder) init];
  v41[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didZoomOnSelection] = 0;
  *&v41[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay] = 0;
  v44 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius;
  if (qword_1006AED88 != -1)
  {
    swift_once();
  }

  v45 = *&qword_1006D4D20;
  *&v41[v44] = qword_1006D4D20;
  v46 = v40;
  v34(&v41[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_addressType], v40, v24);
  v41[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_locationType] = 1;
  v112.receiver = v41;
  v112.super_class = v39;
  v47 = objc_msgSendSuper2(&v112, "init");
  v48 = v47;
  v49 = v24;
  if (v103)
  {
    v50 = v47;
    v51 = String._bridgeToObjectiveC()();
  }

  else
  {
    v52 = v47;
    v51 = 0;
  }

  v53 = v111;
  v54 = v107;
  v55 = v108;
  [v48 setTitle:v51];

  [v48 setSubtitle:0];
  [v48 setCoordinate:{v27, v29}];

  v56 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark;
  swift_beginAccess();
  v57 = &v48[v56];
  v58 = v113;
  sub_100278A8C(v113, v57);
  swift_endAccess();
  if (qword_1006AED90 != -1)
  {
    swift_once();
  }

  if (v104)
  {
    v59 = v45;
  }

  else
  {
    v59 = v23;
  }

  if (v45 > v59)
  {
    v59 = v45;
  }

  if (v59 >= *&qword_1006D4D28)
  {
    v60 = *&qword_1006D4D28;
  }

  else
  {
    v60 = v59;
  }

  v111 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius;
  *&v48[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius] = v60;
  v61 = [objc_opt_self() circleWithCenterCoordinate:v27 radius:{v29, v60}];
  v62 = *&v48[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay];
  *&v48[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay] = v61;

  v63 = v48;
  if ((*(v55 + 48))(v58, 1, v53) != 1)
  {
    v64 = [v48 title];
    if (v64)
    {
      v65 = v64;
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69 = sub_100486C44();
      if (v68)
      {
        if (v70)
        {
          if (v66 == v69 && v70 == v68)
          {

            v63 = 0;
LABEL_36:
            v49 = v109;

LABEL_41:
            [v48 setSubtitle:v63];

            goto LABEL_42;
          }

          v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v73)
          {
LABEL_40:
            v63 = 0;
            v49 = v109;
            goto LABEL_41;
          }

LABEL_34:
          sub_100486C44();
          if (v72)
          {
            v63 = String._bridgeToObjectiveC()();
            goto LABEL_36;
          }

          goto LABEL_40;
        }

LABEL_33:

        goto LABEL_34;
      }

      v49 = v109;
      if (v70)
      {
        goto LABEL_33;
      }
    }

    else
    {
      sub_100486C44();
      if (v71)
      {
        goto LABEL_33;
      }
    }

    v63 = 0;
    goto LABEL_41;
  }

LABEL_42:

  dispatch_group_enter(*&v48[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didReverseGeocodeGroup]);
  sub_100485F88();
  (*(v110 + 8))(v46, v49);
  sub_100012DF0(v58, &qword_1006B0040);
  v74 = v48;
  v75 = v105;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v76 = v106;
  if (v106 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_62;
    }
  }

  else if (!*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_62;
  }

  if ((v76 & 0xC000000000000001) != 0)
  {
    v77 = v54;
    v79 = v101;
    v98 = v101;
    v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_65;
    }

    v77 = v54;
    v78 = *(v76 + 32);
    v79 = v101;
    v80 = v101;
    v81 = v78;
  }

  v82 = v81;
  sub_10000905C(0, &qword_1006C0800);
  v83 = static NSObject.== infix(_:_:)();

  v54 = v77;
  if ((v83 & 1) == 0 || (v100 & 1) == 0)
  {
LABEL_62:

    (*(v55 + 8))(v54, v53);
    return;
  }

  v84 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
  v85 = *(v99 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
  if (v85)
  {
    v86 = v85;
    [v74 coordinate];
    v115 = MKCoordinateRegionMakeWithDistance(v114, *&v48[v111] * 3.5, *&v48[v111] * 3.5);
    [v86 regionThatFits:{v115.center.latitude, v115.center.longitude, v115.span.latitudeDelta, v115.span.longitudeDelta}];
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v94 = v93;

    if (fabs(v90) > 180.0 || fabs(v88) > 90.0 || v92 < 0.0 || v92 > 180.0 || v94 < 0.0 || v94 > 360.0)
    {

      (*(v55 + 8))(v77, v53);
      return;
    }

    v95 = v99;
    v96 = *(v99 + v84);
    if (v96)
    {
      [v96 setRegion:1 animated:{v88, v90, v92, v94}];

      (*(v55 + 8))(v77, v53);
      v97 = v95 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion;
      *v97 = v88;
      *(v97 + 8) = v90;
      *(v97 + 16) = v92;
      *(v97 + 24) = v94;
      *(v97 + 32) = 0;
      return;
    }

    goto LABEL_66;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

void *sub_100461728()
{
  v1 = sub_10007EBC0(&qword_1006AF740);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = type metadata accessor for FMFFriend();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v29 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  if (!*(v0 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediator))
  {
LABEL_16:
    __break(1u);

    __break(1u);
    return result;
  }

  v10 = dispatch thunk of FMFManager.friends.getter();

  v28 = *(v10 + 16);
  if (v28)
  {
    v11 = 0;
    v26 = (v5 + 32);
    v27 = v5 + 16;
    v22 = (v5 + 8);
    v12 = _swiftEmptyArrayStorage;
    v24 = v4;
    v25 = v3;
    v23 = v10;
    while (v11 < *(v10 + 16))
    {
      v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v14 = *(v5 + 72);
      (*(v5 + 16))(v9, v10 + v13 + v14 * v11, v4);
      FMFFriend.location.getter();
      v15 = type metadata accessor for FMFLocation();
      v16 = (*(*(v15 - 8) + 48))(v3, 1, v15);
      sub_100012DF0(v3, &qword_1006AF740);
      if (v16 == 1)
      {
        (*v22)(v9, v4);
      }

      else
      {
        v17 = *v26;
        (*v26)(v29, v9, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001671C0(0, v12[2] + 1, 1);
          v12 = v30;
        }

        v20 = v12[2];
        v19 = v12[3];
        if (v20 >= v19 >> 1)
        {
          sub_1001671C0(v19 > 1, v20 + 1, 1);
          v12 = v30;
        }

        v12[2] = v20 + 1;
        v4 = v24;
        v17(v12 + v13 + v20 * v14, v29, v24);
        v3 = v25;
        v10 = v23;
      }

      if (v28 == ++v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_14:

  v30 = v12;

  sub_10046946C(&v30);

  return v30;
}

uint64_t sub_100461A98()
{
  v326 = type metadata accessor for DispatchWorkItemFlags();
  v304 = *(v326 - 8);
  __chkstk_darwin(v326);
  v325 = &v281 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = type metadata accessor for DispatchQoS();
  v303 = *(v324 - 8);
  __chkstk_darwin(v324);
  v323 = &v281 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v331 = type metadata accessor for FMFLabelledLocation();
  v330 = *(v331 - 8);
  v3 = __chkstk_darwin(v331);
  v320 = &v281 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v313 = &v281 - v6;
  v7 = __chkstk_darwin(v5);
  v312 = (&v281 - v8);
  v9 = __chkstk_darwin(v7);
  v329 = &v281 - v10;
  v11 = __chkstk_darwin(v9);
  v300 = &v281 - v12;
  v13 = __chkstk_darwin(v11);
  v311 = &v281 - v14;
  __chkstk_darwin(v13);
  v322 = &v281 - v15;
  v16 = sub_10007EBC0(&unk_1006B0670);
  __chkstk_darwin(v16 - 8);
  v292 = &v281 - v17;
  v294 = type metadata accessor for FMFContact();
  v293 = *(v294 - 8);
  __chkstk_darwin(v294);
  v286 = &v281 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10007EBC0(&qword_1006B0038);
  v20 = __chkstk_darwin(v19 - 8);
  v321 = &v281 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v318 = &v281 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v281 - v25;
  v27 = __chkstk_darwin(v24);
  v319 = (&v281 - v28);
  __chkstk_darwin(v27);
  v287 = &v281 - v29;
  v315 = type metadata accessor for FMFFriend();
  v310 = *(v315 - 8);
  v30 = __chkstk_darwin(v315);
  v291 = &v281 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v309 = &v281 - v32;
  v33 = sub_10007EBC0(&qword_1006B0050);
  v34 = __chkstk_darwin(v33 - 8);
  v314 = &v281 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v305 = &v281 - v37;
  v38 = __chkstk_darwin(v36);
  v299 = &v281 - v39;
  v40 = __chkstk_darwin(v38);
  v284 = &v281 - v41;
  v42 = __chkstk_darwin(v40);
  v285 = &v281 - v43;
  __chkstk_darwin(v42);
  v327 = &v281 - v44;
  v45 = sub_10007EBC0(&qword_1006B00C8);
  __chkstk_darwin(v45 - 8);
  v307 = &v281 - v46;
  v316 = type metadata accessor for FMFLocationAlertAddressType();
  v308 = *(v316 - 1);
  __chkstk_darwin(v316);
  v296 = &v281 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10007EBC0(&qword_1006B0040);
  v49 = __chkstk_darwin(v48 - 8);
  v288 = &v281 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v52 = &v281 - v51;
  v53 = sub_10007EBC0(&qword_1006AF740);
  v54 = __chkstk_darwin(v53 - 8);
  v290 = &v281 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v54);
  v301 = &v281 - v57;
  __chkstk_darwin(v56);
  v59 = &v281 - v58;
  v60 = type metadata accessor for FMFLocation();
  v61 = *(v60 - 8);
  v62 = __chkstk_darwin(v60);
  v289 = &v281 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v295 = &v281 - v65;
  __chkstk_darwin(v64);
  v67 = &v281 - v66;
  v336 = _swiftEmptyArrayStorage;
  v68 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_myLocation;
  swift_beginAccess();
  v328 = v0;
  sub_100007204(v0 + v68, v59, &qword_1006AF740);
  v298 = *(v61 + 48);
  v69 = v298(v59, 1, v60);
  v302 = v61;
  if (v69 == 1)
  {
    v70 = &qword_1006AF740;
    v71 = v59;
LABEL_5:
    sub_100012DF0(v71, v70);
    v73 = v327;
    v74 = [objc_opt_self() mainBundle];
    v337._object = 0x800000010059A700;
    v75._object = 0x800000010059A6D0;
    v337._countAndFlagsBits = 0xD00000000000003FLL;
    v75._countAndFlagsBits = 0xD00000000000002DLL;
    v76._countAndFlagsBits = 0;
    v76._object = 0xE000000000000000;
    v77 = NSLocalizedString(_:tableName:bundle:value:comment:)(v75, 0, v74, v76, v337);

    v78 = v307;
    (*(v308 + 56))(v307, 1, 1, v316);
    v79 = objc_allocWithZone(type metadata accessor for FMFenceMapTransientRecord());
    v80 = sub_1002D06C0(v77._countAndFlagsBits, v77._object, v78, 0, 0, 0, 0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v336 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v336 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    goto LABEL_11;
  }

  (*(v61 + 32))(v67, v59, v60);
  FMFLocation.address.getter();
  v72 = type metadata accessor for FMFAddress();
  if ((*(*(v72 - 8) + 48))(v52, 1, v72) == 1)
  {
    (*(v61 + 8))(v67, v60);
    v70 = &qword_1006B0040;
    v71 = v52;
    goto LABEL_5;
  }

  sub_100012DF0(v52, &qword_1006B0040);
  v81 = [objc_opt_self() mainBundle];
  v338._object = 0x800000010059A700;
  v82._object = 0x800000010059A6D0;
  v338._countAndFlagsBits = 0xD00000000000003FLL;
  v82._countAndFlagsBits = 0xD00000000000002DLL;
  v83._countAndFlagsBits = 0;
  v83._object = 0xE000000000000000;
  v84 = NSLocalizedString(_:tableName:bundle:value:comment:)(v82, 0, v81, v83, v338);

  v85 = v296;
  (*(v308 + 104))(v296, enum case for FMFLocationAlertAddressType.currentLocation(_:), v316);
  v86 = v295;
  (*(v61 + 16))(v295, v67, v60);
  v87 = objc_allocWithZone(type metadata accessor for FMFenceMapTransientRecord());
  v88 = sub_1002D0C50(v84._countAndFlagsBits, v84._object, v85, v86);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v336 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v336 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  (*(v61 + 8))(v67, v60);
  v73 = v327;
LABEL_11:
  v327 = v336;
  v89 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isNotifyMe;
  v90 = v328;
  v91 = *(v328 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isNotifyMe) == 1;
  v317 = v26;
  if (v91)
  {
    v297 = v60;
    v306 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isNotifyMe;
    v92 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_friendForFence;
    swift_beginAccess();
    sub_100007204(v90 + v92, v73, &qword_1006B0050);
    v93 = v310;
    v94 = *(v310 + 48);
    v95 = v315;
    if (v94(v73, 1, v315))
    {
      sub_100012DF0(v73, &qword_1006B0050);
      v96 = v302;
      v97 = v301;
      (*(v302 + 56))(v301, 1, 1, v297);
LABEL_16:
      sub_100012DF0(v97, &qword_1006AF740);
LABEL_17:
      v104 = v299;
      sub_100007204(v328 + v92, v299, &qword_1006B0050);
      v105 = v315;
      if (v94(v104, 1, v315))
      {
        sub_100012DF0(v104, &qword_1006B0050);
        v98 = v328;
        v99 = _swiftEmptyArrayStorage;
        v106 = v305;
        v89 = v306;
        goto LABEL_34;
      }

      v283 = v94;
      v107 = v310;
      v108 = v291;
      (*(v310 + 16))(v291, v104, v105);
      sub_100012DF0(v104, &qword_1006B0050);
      v109 = v290;
      FMFFriend.location.getter();
      (*(v107 + 8))(v108, v105);
      v110 = v297;
      if (v298(v109, 1, v297) == 1)
      {
        v111 = &qword_1006AF740;
        v112 = v109;
      }

      else
      {
        v117 = v287;
        FMFLocation.label.getter();
        (*(v96 + 8))(v109, v110);
        v118 = type metadata accessor for FMFLabel();
        v119 = *(v118 - 8);
        if ((*(v119 + 48))(v117, 1, v118) != 1)
        {
          v124 = FMFLabel.localizedValue.getter();
          v126 = v125;
          (*(v119 + 8))(v117, v118);
          v127 = [objc_opt_self() mainBundle];
          v339._object = 0x800000010059A700;
          v128._object = 0x800000010059A6D0;
          v339._countAndFlagsBits = 0xD00000000000003FLL;
          v128._countAndFlagsBits = 0xD00000000000002DLL;
          v129._countAndFlagsBits = 0;
          v129._object = 0xE000000000000000;
          v130 = NSLocalizedString(_:tableName:bundle:value:comment:)(v128, 0, v127, v129, v339);

          v131 = v307;
          (*(v308 + 56))(v307, 1, 1, v316);
          v132 = objc_allocWithZone(type metadata accessor for FMFenceMapTransientRecord());
          v133 = sub_1002D06C0(v130._countAndFlagsBits, v130._object, v131, v124, v126, 0, 0);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v98 = v328;
          v99 = _swiftEmptyArrayStorage;
          v106 = v305;
          if (*((v336 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v336 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_152;
          }

          goto LABEL_32;
        }

        v111 = &qword_1006B0038;
        v112 = v117;
      }

      sub_100012DF0(v112, v111);
LABEL_26:
      v98 = v328;
      v99 = _swiftEmptyArrayStorage;
      v106 = v305;
      goto LABEL_33;
    }

    v100 = *(v93 + 16);
    v283 = v94;
    v101 = v309;
    v281 = v100;
    v100(v309, v73, v95);
    sub_100012DF0(v73, &qword_1006B0050);
    v97 = v301;
    FMFFriend.location.getter();
    v102 = v101;
    v94 = v283;
    v282 = *(v93 + 8);
    v282(v102, v95);
    v103 = v298(v97, 1, v297);
    v96 = v302;
    if (v103 == 1)
    {
      goto LABEL_16;
    }

    v113 = v289;
    v114 = v297;
    (*(v302 + 32))(v289, v97, v297);
    v115 = v288;
    FMFLocation.address.getter();
    v116 = type metadata accessor for FMFAddress();
    if ((*(*(v116 - 8) + 48))(v115, 1, v116) == 1)
    {
      (*(v96 + 8))(v113, v114);
      sub_100012DF0(v115, &qword_1006B0040);
      v94 = v283;
      goto LABEL_17;
    }

    sub_100012DF0(v115, &qword_1006B0040);
    v120 = v285;
    sub_100007204(v328 + v92, v285, &qword_1006B0050);
    v121 = v315;
    if (v283(v120, 1, v315))
    {
      sub_100012DF0(v120, &qword_1006B0050);
    }

    else
    {
      v257 = v309;
      v281(v309, v120, v121);
      sub_100012DF0(v120, &qword_1006B0050);
      v288 = FMFFriend.shortName.getter();
      v259 = v258;
      v282(v257, v121);
      v301 = v259;
      if (v259)
      {
        v260 = v288;
        goto LABEL_138;
      }
    }

    v122 = v284;
    sub_100007204(v328 + v92, v284, &qword_1006B0050);
    v123 = v315;
    v94 = v283;
    if (v283(v122, 1, v315))
    {
      sub_100012DF0(v122, &qword_1006B0050);

      (*(v96 + 8))(v289, v297);
      goto LABEL_17;
    }

    v261 = v309;
    v281(v309, v122, v123);
    sub_100012DF0(v122, &qword_1006B0050);
    v262 = FMFFriend.name.getter();
    v263 = v123;
    v260 = v262;
    v301 = v264;
    v282(v261, v263);

LABEL_138:
    v265 = [objc_opt_self() mainBundle];
    v266._countAndFlagsBits = 0xD000000000000027;
    v340._object = 0x800000010057AD90;
    v266._object = 0x800000010057AD60;
    v340._countAndFlagsBits = 0xD000000000000039;
    v267._countAndFlagsBits = 0;
    v267._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v266, 0, v265, v267, v340);

    sub_10007EBC0(&unk_1006B20B0);
    v268 = swift_allocObject();
    *(v268 + 16) = xmmword_100552220;
    *(v268 + 56) = &type metadata for String;
    *(v268 + 64) = sub_10008EE84();
    v269 = v301;
    *(v268 + 32) = v260;
    *(v268 + 40) = v269;
    v270 = String.init(format:_:)();
    v272 = v271;

    v273 = v296;
    (*(v308 + 104))(v296, enum case for FMFLocationAlertAddressType.friendLocation(_:), v316);
    v274 = v295;
    v275 = v289;
    v276 = v297;
    (*(v96 + 16))(v295, v289, v297);
    v277 = objc_allocWithZone(type metadata accessor for FMFenceMapTransientRecord());
    v278 = sub_1002D0C50(v270, v272, v273, v274);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v336 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v336 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    (*(v96 + 8))(v275, v276);
    v327 = v336;
    goto LABEL_26;
  }

  v98 = v328;
  v99 = _swiftEmptyArrayStorage;
LABEL_37:
  v137 = sub_100478F60();
  if (v137)
  {
    while (1)
    {
      v138 = v137;
      v139 = objc_opt_self();
      v305 = v138;
      v106 = v138;
      v140 = [v139 stringFromContact:v106 style:0];
      if (!v140)
      {

        goto LABEL_54;
      }

      v141 = v140;
      v316 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v143 = v142;

      v133 = [v106 postalAddresses];
      sub_10007EBC0(&unk_1006BC970);
      v144 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v145 = v144;
      if (v144 >> 62)
      {
        v133 = v144;
        v280 = _CocoaArrayWrapper.endIndex.getter();
        v145 = v144;
        v99 = v280;
        if (!v280)
        {
LABEL_150:

          v98 = v328;
          v99 = _swiftEmptyArrayStorage;
          goto LABEL_54;
        }
      }

      else
      {
        v99 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v99)
        {
          goto LABEL_150;
        }
      }

      v306 = v89;
      if (v99 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_152:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_32:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v327 = v336;
LABEL_33:
      v89 = v306;
      v94 = v283;
LABEL_34:
      if (*(v98 + v89) != 1)
      {
        goto LABEL_37;
      }

      v134 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_friendForFence;
      swift_beginAccess();
      sub_100007204(v98 + v134, v106, &qword_1006B0050);
      v135 = v315;
      if (v94(v106, 1, v315))
      {
        sub_100012DF0(v106, &qword_1006B0050);
        v136 = v292;
        (*(v293 + 56))(v292, 1, 1, v294);
LABEL_52:
        sub_100012DF0(v136, &unk_1006B0670);
        goto LABEL_53;
      }

      v155 = v310;
      v156 = v309;
      (*(v310 + 16))(v309, v106, v135);
      sub_100012DF0(v106, &qword_1006B0050);
      v136 = v292;
      FMFFriend.contact.getter();
      v157 = v155;
      v89 = v306;
      (*(v157 + 8))(v156, v135);
      v158 = v293;
      v159 = v294;
      if ((*(v293 + 48))(v136, 1, v294) == 1)
      {
        goto LABEL_52;
      }

      v254 = v286;
      (*(v158 + 32))(v286, v136, v159);
      FMFContact.storeUUID.getter();
      sub_10007EBC0(&qword_1006AFC30);
      v255 = swift_allocObject();
      *(v255 + 16) = xmmword_1005528C0;
      *(v255 + 32) = [objc_opt_self() descriptorForRequiredKeys];
      v256 = dispatch thunk of FMFContactsDataController.contact(for:keysToFetch:)();
      v89 = v306;

      (*(v158 + 8))(v254, v159);
      v137 = v256;
      if (!v256)
      {
        goto LABEL_53;
      }
    }

    v146 = 0;
    v327 = (v145 & 0xC000000000000001);
    v147 = v145;
    do
    {
      if (v327)
      {
        v148 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v148 = *(v145 + 8 * v146 + 32);
      }

      v149 = v148;
      v150 = objc_allocWithZone(type metadata accessor for FMFenceMapTransientRecord());
      v151 = v106;
      v152 = v106;

      v153 = v149;
      v154 = sub_1002D1F7C(v316, v143, v152, v153, 0, 0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v336 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v336 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v146;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v106 = v151;
      v145 = v147;
    }

    while (v99 != v146);
    v327 = v336;

    v98 = v328;
    v99 = _swiftEmptyArrayStorage;
    v89 = v306;
  }

  else
  {
LABEL_53:
    v305 = 0;
  }

LABEL_54:
  v160 = *(v98 + v89);
  v335 = v99;
  v161 = *(v98 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediator);
  if (v160 == 1)
  {
    if (!v161)
    {
LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

    v162 = *(v161 + 48);

    v163 = dispatch thunk of FMFManager.labelledLocations.getter();

    if (v163)
    {
      v164 = v163;
    }

    else
    {
      v164 = v99;
    }

    v165 = *(v164 + 16);
    v313 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_friendForFence;
    swift_beginAccess();
    if (v165)
    {
      v166 = 0;
      v167 = v330 + 16;
      v312 = (v310 + 48);
      v307 = (v310 + 16);
      v306 = (v310 + 8);
      v310 = v330 + 32;
      v316 = (v330 + 8);
      v168 = _swiftEmptyArrayStorage;
      v169 = v331;
      v170 = v322;
      while (1)
      {
        if (v166 >= *(v164 + 16))
        {
          goto LABEL_143;
        }

        v321 = ((*(v330 + 80) + 32) & ~*(v330 + 80));
        v320 = *(v330 + 72);
        (*(v330 + 16))(v170, &v321[v164 + v320 * v166], v169);
        v171 = v319;
        FMFLabelledLocation.label.getter();
        v172 = v171;
        v162 = type metadata accessor for FMFLabel();
        v173 = *(v162 - 8);
        if ((*(v173 + 48))(v172, 1, v162) == 1)
        {
          sub_100012DF0(v172, &qword_1006B0038);
        }

        else
        {
          v318 = v168;
          v174 = v167;
          v175 = v164;
          v176 = v165;
          FMFLabel.localizedValue.getter();
          (*(v173 + 8))(v172, v162);
          v177 = v315;

          v178 = FMFLabelledLocation.userId.getter();
          v162 = v179;
          v180 = v314;
          sub_100007204(&v313[v328], v314, &qword_1006B0050);
          if ((*v312)(v180, 1, v177))
          {
            sub_100012DF0(v180, &qword_1006B0050);
            v165 = v176;
            v164 = v175;
            v167 = v174;
            v168 = v318;
            if (!v162)
            {
              goto LABEL_77;
            }

LABEL_75:

            goto LABEL_62;
          }

          v308 = v178;
          v181 = v309;
          (*v307)(v309, v180, v177);
          sub_100012DF0(v180, &qword_1006B0050);
          v182 = FMFFriend.identifier.getter();
          v184 = v183;
          (*v306)(v181, v177);
          v165 = v176;
          v164 = v175;
          v167 = v174;
          if (!v162)
          {
            v168 = v318;
            if (!v184)
            {
              goto LABEL_77;
            }

            goto LABEL_75;
          }

          v168 = v318;
          if (!v184)
          {
            goto LABEL_75;
          }

          if (v308 == v182 && v162 == v184)
          {

LABEL_77:
            v186 = *v310;
            v169 = v331;
            (*v310)(v311, v322, v331);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v168;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1001675DC(0, *(v168 + 16) + 1, 1);
              v169 = v331;
              v168 = aBlock[0];
            }

            v189 = *(v168 + 16);
            v188 = *(v168 + 24);
            v162 = v189 + 1;
            if (v189 >= v188 >> 1)
            {
              sub_1001675DC(v188 > 1, v189 + 1, 1);
              v169 = v331;
              v168 = aBlock[0];
            }

            *(v168 + 16) = v162;
            v186(&v321[v168 + v189 * v320], v311, v169);
            v170 = v322;
            goto LABEL_63;
          }

          v185 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v185)
          {
            goto LABEL_77;
          }
        }

LABEL_62:
        v170 = v322;
        v169 = v331;
        (*v316)(v322, v331);
LABEL_63:
        if (v165 == ++v166)
        {
          goto LABEL_101;
        }
      }
    }

    v168 = v99;
    v169 = v331;
LABEL_101:

    aBlock[0] = v168;

    sub_1004693C4(aBlock);

    v209 = aBlock[0];
    v210 = v300;
    v322 = aBlock[0][2];
    if (v322)
    {
      v211 = 0;
      v212 = v330 + 16;
      v320 = v330 + 8;
      v321 = aBlock[0];
      v213 = v317;
      while (1)
      {
        if (v211 >= *(v209 + 2))
        {
          goto LABEL_145;
        }

        v214 = *(v330 + 16);
        v214(v210, &v209[((*(v330 + 80) + 32) & ~*(v330 + 80)) + *(v330 + 72) * v211], v169);
        v215 = v212;
        v216 = v169;
        FMFLabelledLocation.label.getter();
        v217 = type metadata accessor for FMFLabel();
        v218 = *(v217 - 8);
        if ((*(v218 + 48))(v213, 1, v217) == 1)
        {
          break;
        }

        v219 = FMFLabel.localizedValue.getter();
        v221 = v220;
        (*(v218 + 8))(v213, v217);
        v222 = v329;
        v214(v329, v210, v216);
        v223 = objc_allocWithZone(type metadata accessor for FMFenceMapTransientRecord());
        v224 = sub_1002D1934(v219, v221, v222, 0, 0);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v212 = v215;
        if (*((v336 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v336 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v327 = v336;
        v162 = v224;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v209 = v321;
        if (*((v335 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v335 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v211;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v169 = v331;
        (*v320)(v210, v331);
        if (v322 == v211)
        {
          goto LABEL_121;
        }
      }

      __break(1u);
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    goto LABEL_122;
  }

  if (!v161)
  {
LABEL_156:
    __break(1u);

    __break(1u);
    return result;
  }

  v190 = dispatch thunk of FMFManager.labelledLocations.getter();

  if (v190)
  {
    v162 = v190;
  }

  else
  {
    v162 = v99;
  }

  v191 = *(v162 + 16);
  if (v191)
  {
    v192 = 0;
    v316 = (v330 + 32);
    v322 = (v330 + 8);
    v317 = _swiftEmptyArrayStorage;
    v193 = v331;
    v194 = v312;
    v319 = v162;
    while (1)
    {
      if (v192 >= *(v162 + 16))
      {
        goto LABEL_144;
      }

      v195 = (*(v330 + 80) + 32) & ~*(v330 + 80);
      v196 = *(v330 + 72);
      (*(v330 + 16))(v194, v162 + v195 + v196 * v192, v193);
      v197 = v318;
      FMFLabelledLocation.label.getter();
      v198 = v197;
      v199 = type metadata accessor for FMFLabel();
      v200 = *(v199 - 8);
      if ((*(v200 + 48))(v198, 1, v199) == 1)
      {
        sub_100012DF0(v198, &qword_1006B0038);
        v193 = v331;
      }

      else
      {
        FMFLabel.localizedValue.getter();
        (*(v200 + 8))(v198, v199);

        FMFLabelledLocation.userId.getter();
        if (!v201)
        {
          v202 = v194;
          v203 = *v316;
          v193 = v331;
          (*v316)(v313, v202, v331);
          v204 = v317;
          v205 = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v204;
          if ((v205 & 1) == 0)
          {
            sub_1001675DC(0, v204[2] + 1, 1);
            v193 = v331;
            v204 = aBlock[0];
          }

          v207 = v204[2];
          v206 = v204[3];
          v208 = v204;
          v162 = v319;
          if (v207 >= v206 >> 1)
          {
            sub_1001675DC(v206 > 1, v207 + 1, 1);
            v193 = v331;
            v208 = aBlock[0];
          }

          v208[2] = v207 + 1;
          v317 = v208;
          v203(v208 + v195 + v207 * v196, v313, v193);
          v194 = v312;
          goto LABEL_90;
        }

        v193 = v331;
        v162 = v319;
      }

      (*v322)(v194, v193);
LABEL_90:
      if (v191 == ++v192)
      {
        goto LABEL_112;
      }
    }
  }

  v317 = v99;
  v193 = v331;
LABEL_112:

  v162 = v317;
  aBlock[0] = v317;

  sub_1004693C4(aBlock);

  v225 = aBlock[0];
  v226 = v321;
  v322 = aBlock[0][2];
  if (v322)
  {
    v227 = 0;
    v319 = (v330 + 8);
    v228 = v320;
    while (1)
    {
      if (v227 >= *(v225 + 2))
      {
        goto LABEL_146;
      }

      v229 = *(v330 + 16);
      v229(v228, &v225[((*(v330 + 80) + 32) & ~*(v330 + 80)) + *(v330 + 72) * v227], v193);
      v230 = v193;
      FMFLabelledLocation.label.getter();
      v231 = type metadata accessor for FMFLabel();
      v232 = *(v231 - 8);
      if ((*(v232 + 48))(v226, 1, v231) == 1)
      {
        goto LABEL_154;
      }

      v233 = FMFLabel.localizedValue.getter();
      v234 = v226;
      v236 = v235;
      (*(v232 + 8))(v234, v231);
      v237 = v329;
      v229(v329, v228, v230);
      v238 = objc_allocWithZone(type metadata accessor for FMFenceMapTransientRecord());
      v239 = sub_1002D1934(v233, v236, v237, 0, 0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v336 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v336 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v327 = v336;
      v162 = v239;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v335 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v335 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v227;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v228 = v320;
      v193 = v331;
      (*v319)(v320, v331);
      v226 = v321;
      if (v322 == v227)
      {
LABEL_121:
        v162 = v335;
        goto LABEL_123;
      }
    }
  }

LABEL_122:
  v162 = _swiftEmptyArrayStorage;
LABEL_123:

  if (v162 >> 62)
  {
    goto LABEL_147;
  }

  for (i = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v241 = 0;
    v322 = (v162 & 0xC000000000000001);
    v321 = (v162 & 0xFFFFFFFFFFFFFF8);
    v319 = v334;
    v318 = (v304 + 8);
    v317 = (v303 + 8);
    v320 = i;
    v242 = v325;
    while (1)
    {
      if (v322)
      {
        v243 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v241 >= *(v321 + 2))
        {
          goto LABEL_142;
        }

        v243 = *(v162 + 8 * v241 + 32);
      }

      v244 = v243;
      if (__OFADD__(v241, 1))
      {
        break;
      }

      v331 = v241 + 1;
      v330 = *&v243[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_completedGeoWorkGroup];
      sub_10000905C(0, &qword_1006AEDC0);
      v245 = static OS_dispatch_queue.main.getter();
      v246 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v247 = swift_allocObject();
      *(v247 + 16) = v246;
      *(v247 + 24) = v244;
      v334[2] = sub_10046D100;
      v334[3] = v247;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v334[0] = sub_100004AE4;
      v334[1] = &unk_1006402F8;
      v248 = _Block_copy(aBlock);

      v329 = v244;
      v249 = v323;
      static DispatchQoS.unspecified.getter();
      v332 = _swiftEmptyArrayStorage;
      sub_10000A618(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100037970();
      v250 = v162;
      v251 = v326;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v248);

      v252 = v251;
      v162 = v250;
      (*v318)(v242, v252);
      (*v317)(v249, v324);

      v253 = v320;

      ++v241;
      if (v331 == v253)
      {
        goto LABEL_148;
      }
    }

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
    ;
  }

LABEL_148:

  return v327;
}

uint64_t sub_1004647DC(uint64_t a1, uint64_t a2)
{
  v17[3] = a2;
  v2 = sub_10007EBC0(&qword_1006B0038);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v17 - v6;
  FMFLabelledLocation.label.getter();
  v8 = type metadata accessor for FMFLabel();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  result = v10(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  FMFLabel.localizedValue.getter();
  v12 = *(v9 + 8);
  v12(v7, v8);
  v13 = String.lowercased()();
  v17[0] = v13._countAndFlagsBits;

  FMFLabelledLocation.label.getter();
  result = v10(v5, 1, v8);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  FMFLabel.localizedValue.getter();
  v12(v5, v8);
  v14 = String.lowercased()();

  if (v17[0] == v14._countAndFlagsBits && v13._object == v14._object)
  {
    v16 = 0;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v16 & 1;
}

void sub_100464A00(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView);
    v4 = Strong;
    v5 = v3;

    if (v3)
    {
      v6 = [v5 visibleCells];

      sub_10000905C(0, &qword_1006B00B0);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v7 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v9 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = v10;
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          type metadata accessor for FMFenceMapTableViewCell();
          if (swift_dynamicCastClass())
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v9;
          if (v12 == i)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      v13 = sub_100537628(_swiftEmptyArrayStorage);

      if (v13)
      {
        v14 = v13 & 0xFFFFFFFFFFFFFF8;
        if (v13 >> 62)
        {
          goto LABEL_34;
        }

        for (j = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
        {
          v16 = 0;
          while (1)
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v16 >= *(v14 + 16))
              {
                goto LABEL_33;
              }

              v17 = *(v13 + 8 * v16 + 32);
            }

            v18 = v17;
            v19 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            v20 = OBJC_IVAR____TtC6FindMy23FMFenceMapTableViewCell_record;
            v21 = *&v17[OBJC_IVAR____TtC6FindMy23FMFenceMapTableViewCell_record];
            if (v21)
            {
              type metadata accessor for FMFenceMapTransientRecord();
              v22 = v14;
              v23 = v21;
              v24 = a2;
              v25 = static NSObject.== infix(_:_:)();

              v14 = v22;
              if (v25)
              {

                v26 = *&v18[v20];
                *&v18[v20] = v24;
                v27 = v24;

                sub_1003D1198();
                return;
              }
            }

            ++v16;
            if (v19 == j)
            {
              goto LABEL_35;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          ;
        }

LABEL_35:
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100464D0C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v123 = *(v5 - 8);
  __chkstk_darwin(v5);
  v121 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for DispatchQoS();
  v120 = *(v122 - 8);
  __chkstk_darwin(v122);
  v119 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for DispatchQoS.QoSClass();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for FMFLocationAlertAddressType();
  v113 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&qword_1006AF740);
  __chkstk_darwin(v10 - 8);
  v131 = &v110 - v11;
  v138 = type metadata accessor for FMFLocation();
  v112 = *(v138 - 8);
  v12 = __chkstk_darwin(v138);
  v128 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v110 - v14;
  v132 = type metadata accessor for FMFFriend();
  v142 = *(v132 - 8);
  v16 = __chkstk_darwin(v132);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v137 = &v110 - v20;
  v21 = __chkstk_darwin(v19);
  v140 = &v110 - v22;
  __chkstk_darwin(v21);
  v125 = &v110 - v23;
  v117 = a1;
  v118 = a2;
  v25 = String.lowercased()();
  object = v25._object;
  countAndFlagsBits = v25._countAndFlagsBits;
  v27 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_defaultSearchRecords;
  v124 = v2;
  if (!*&v2[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_defaultSearchRecords])
  {
    v28 = v124;
    *&v28[v27] = sub_100461A98();

    object = v25._object;
    countAndFlagsBits = v25._countAndFlagsBits;
  }

  v29 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v29 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v143 = object;
    v111 = v5;
    v152 = _swiftEmptyArrayStorage;
    if (*&v124[v27])
    {
      v30 = *&v124[v27];
    }

    else
    {
      v30 = _swiftEmptyArrayStorage;
    }

    sub_100494798(v30);
    v31 = v152;
    v151 = _swiftEmptyArrayStorage;
    if (v152 >> 62)
    {
      goto LABEL_82;
    }

    for (i = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v127 = v15;
      v141 = v18;
      if (i)
      {
        v33 = 0;
        v139 = (v31 & 0xC000000000000001);
        v15 = (v31 & 0xFFFFFFFFFFFFFF8);
        v18 = &type metadata for String;
        while (1)
        {
          if (v139)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_78;
            }

            v34 = *(v31 + 8 * v33 + 32);
          }

          v35 = v34;
          v36 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (*&v34[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_title + 8] && (aBlock = String.lowercased()(), v149 = countAndFlagsBits, v150 = v143, sub_100035F3C(), v37 = StringProtocol.contains<A>(_:)(), , (v37 & 1) != 0) || *&v35[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelLocalizedValue + 8] && (aBlock = String.lowercased()(), v149 = countAndFlagsBits, v150 = v143, sub_100035F3C(), v38 = StringProtocol.contains<A>(_:)(), , (v38 & 1) != 0) || *&v35[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_displayAddress + 8] && (aBlock = String.lowercased()(), v149 = countAndFlagsBits, v150 = v143, sub_100035F3C(), v39 = StringProtocol.contains<A>(_:)(), , (v39 & 1) != 0))
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v33;
          if (v36 == i)
          {
            v40 = v151;
            v18 = v141;
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_78:
        __break(1u);
      }

      else
      {
        v40 = _swiftEmptyArrayStorage;
LABEL_33:

        v152 = v40;
        v43 = *&v124[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapSearchResults];
        v44 = _swiftEmptyArrayStorage;
        v15 = v140;
        if (v43)
        {
          v151 = _swiftEmptyArrayStorage;
          v45 = v43 & 0xFFFFFFFFFFFFFF8;
          if (v43 >> 62)
          {
            v46 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v46 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v46)
          {
            v31 = 0;
            v139 = (v43 & 0xC000000000000001);
            v136 = v43;
            while (1)
            {
              if (v139)
              {
                v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v31 >= *(v45 + 16))
                {
                  goto LABEL_81;
                }

                v48 = *(v43 + 8 * v31 + 32);
              }

              v49 = v48;
              v18 = (v31 + 1);
              if (__OFADD__(v31, 1))
              {
                goto LABEL_80;
              }

              v50 = [v48 name];
              if (v50 && (v51 = v50, static String._unconditionallyBridgeFromObjectiveC(_:)(), v51, v52 = String.lowercased()(), , aBlock = v52, v149 = countAndFlagsBits, v150 = v143, sub_100035F3C(), LOBYTE(v51) = StringProtocol.contains<A>(_:)(), , (v51 & 1) != 0) || (v53 = [v49 placemark], v54 = objc_msgSend(v53, "locality"), v53, v54) && (v55 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v57 = v56, v54, aBlock._countAndFlagsBits = v55, aBlock._object = v57, v149 = countAndFlagsBits, v150 = v143, sub_100035F3C(), v58 = StringProtocol.contains<A>(_:)(), , (v58 & 1) != 0) || (v59 = objc_msgSend(v49, "placemark"), v60 = objc_msgSend(v59, "subLocality"), v59, v60) && (v61 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v63 = v62, v60, aBlock._countAndFlagsBits = v61, aBlock._object = v63, v149 = countAndFlagsBits, v150 = v143, sub_100035F3C(), v64 = StringProtocol.contains<A>(_:)(), , (v64 & 1) != 0))
              {
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
              }

              else
              {
              }

              ++v31;
              v47 = v18 == v46;
              v18 = v141;
              v43 = v136;
              if (v47)
              {
                v44 = v151;
                break;
              }
            }
          }
        }

        sub_10045AEB8(v44, &v152);

        v31 = sub_100461728();
        v136 = *(v31 + 16);
        if (!v136)
        {
          v139 = _swiftEmptyArrayStorage;
          v66 = v132;
LABEL_67:

          v80 = v139[2];
          if (v80)
          {
            v81 = *(v142 + 16);
            v82 = v139 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
            v143 = *(v142 + 72);
            v141 = (v112 + 48);
            v136 = (v112 + 32);
            LODWORD(v135) = enum case for FMFLocationAlertAddressType.friendLocation(_:);
            v134 = (v113 + 104);
            v133 = (v112 + 16);
            v126 = (v112 + 8);
            v142 += 16;
            v83 = (v142 - 8);
            v84 = v131;
            v137 = v81;
            v85 = v138;
            do
            {
              (v81)(v15, v82, v66);
              (v81)(v18, v15, v66);
              FMFFriend.location.getter();
              if ((*v141)(v84, 1, v85) == 1)
              {
                v86 = *v83;
                (*v83)(v18, v66);
                v86(v15, v66);
                sub_100012DF0(v84, &qword_1006AF740);
              }

              else
              {
                v87 = v127;
                (*v136)(v127, v84, v85);
                v88 = FMFFriend.name.getter();
                v90 = v89;
                v91 = v129;
                (*v134)(v129, v135, v130);
                v92 = v18;
                v93 = v128;
                (*v133)(v128, v87, v85);
                v94 = objc_allocWithZone(type metadata accessor for FMFenceMapTransientRecord());
                v95 = sub_1002D0C50(v88, v90, v91, v93);
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v152 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v152 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                (*v126)(v87, v85);
                v96 = *v83;
                v66 = v132;
                (*v83)(v92, v132);
                v97 = v140;
                v96(v140, v66);
                v84 = v131;
                v18 = v92;
                v15 = v97;
                v81 = v137;
              }

              v82 += v143;
              --v80;
            }

            while (v80);
          }

          v98 = v124;
          *&v124[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_filteredSearchRecords] = v152;

          result = *&v98[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView];
          if (result)
          {
            [result reloadData];
            sub_10000905C(0, &qword_1006AEDC0);
            v99 = v115;
            v100 = v114;
            v101 = v116;
            (*(v115 + 104))(v114, enum case for DispatchQoS.QoSClass.default(_:), v116);
            v102 = static OS_dispatch_queue.global(qos:)();
            (*(v99 + 8))(v100, v101);
            v103 = swift_allocObject();
            v104 = v118;
            v103[2] = v117;
            v103[3] = v104;
            v103[4] = v98;
            v147 = sub_10046D0EC;
            v148 = v103;
            aBlock._countAndFlagsBits = _NSConcreteStackBlock;
            aBlock._object = 1107296256;
            v145 = sub_100004AE4;
            v146 = &unk_100640230;
            v105 = _Block_copy(&aBlock);

            v106 = v98;
            v107 = v119;
            static DispatchQoS.unspecified.getter();
            v149 = _swiftEmptyArrayStorage;
            sub_10000A618(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
            sub_10007EBC0(&unk_1006B0640);
            sub_100037970();
            v108 = v121;
            v109 = v111;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v105);

            (*(v123 + 8))(v108, v109);
            (*(v120 + 8))(v107, v122);
          }

          __break(1u);
LABEL_85:
          __break(1u);
          return result;
        }

        v65 = 0;
        v134 = (v142 + 16);
        v126 = (v142 + 8);
        v133 = (v142 + 32);
        v139 = _swiftEmptyArrayStorage;
        v66 = v132;
        v67 = v125;
        v135 = countAndFlagsBits;
        while (v65 < *(v31 + 16))
        {
          v68 = (*(v142 + 80) + 32) & ~*(v142 + 80);
          v69 = v31;
          v70 = *(v142 + 72);
          (*(v142 + 16))(v67, v31 + v68 + v70 * v65, v66);
          v71 = v67;
          FMFFriend.name.getter();
          v72 = String.lowercased()();

          aBlock = v72;
          v149 = countAndFlagsBits;
          v150 = v143;
          sub_100035F3C();
          v73 = StringProtocol.contains<A>(_:)();

          if (v73)
          {
            v74 = *v133;
            (*v133)(v137, v71, v66);
            v75 = v139;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v151 = v75;
            if (isUniquelyReferenced_nonNull_native)
            {
              v67 = v71;
            }

            else
            {
              sub_1001671C0(0, v75[2] + 1, 1);
              v67 = v125;
              v75 = v151;
            }

            v31 = v69;
            v78 = v75[2];
            v77 = v75[3];
            v79 = v75;
            if (v78 >= v77 >> 1)
            {
              sub_1001671C0(v77 > 1, v78 + 1, 1);
              v67 = v125;
              v79 = v151;
            }

            v79[2] = v78 + 1;
            v139 = v79;
            v74(v79 + v68 + v78 * v70, v137, v66);
          }

          else
          {
            (*v126)(v71, v66);
            v67 = v71;
            v31 = v69;
          }

          ++v65;
          countAndFlagsBits = v135;
          v15 = v140;
          v18 = v141;
          if (v136 == v65)
          {
            goto LABEL_67;
          }
        }
      }

      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      ;
    }
  }

  v41 = v124;
  *&v124[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_filteredSearchRecords] = *&v124[v27];

  result = *&v41[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView];
  if (!result)
  {
    goto LABEL_85;
  }

  return [result reloadData];
}

uint64_t sub_100465F14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 predicateForContactsMatchingString:v12 accountIdentifier:0 containerIdentifier:0 groupIdentifier:0];

  v14 = [objc_allocWithZone(CNContactStore) init];
  if (qword_1006AED58 != -1)
  {
    swift_once();
  }

  sub_10007EBC0(&qword_1006AF180);
  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock[0] = 0;
  v16 = [v14 unifiedContactsMatchingPredicate:v13 keysToFetch:isa error:aBlock];

  v17 = aBlock[0];
  if (v16)
  {
    sub_10000905C(0, &qword_1006BFD00);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v17;
  }

  else
  {
    v20 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v18 = 0;
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  v22[2] = v18;
  v22[3] = a3;
  aBlock[4] = sub_10046D0F8;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100640280;
  v23 = _Block_copy(aBlock);
  v24 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A618(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v27);
}

void *sub_100466384(unint64_t a1, uint64_t a2)
{
  v8 = _swiftEmptyArrayStorage;
  if (a1)
  {
    sub_10045B15C(a1, &v8);
    v3 = v8;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v4 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_filteredSearchRecords;
  if (*(a2 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_filteredSearchRecords))
  {
    v5 = *(a2 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_filteredSearchRecords);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v7 = v5;

  sub_100494798(v3);
  *(a2 + v4) = v7;

  result = *(a2 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView);
  if (result)
  {
    [result reloadData];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10046645C(void *a1, void *a2)
{
  v3 = *a1;
  v4 = [objc_opt_self() stringFromContact:*a1 style:0];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [v3 postalAddresses];
  sub_10007EBC0(&unk_1006BC970);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = v9;
  if (v9 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
    v10 = v9;
    v11 = v20;
    if (v20)
    {
      goto LABEL_4;
    }

LABEL_15:

    return;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (v11 >= 1)
  {
    v12 = 0;
    v21 = v10 & 0xC000000000000001;
    v22 = v10;
    do
    {
      if (v21)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = objc_allocWithZone(type metadata accessor for FMFenceMapTransientRecord());

      v16 = v3;
      v17 = v3;
      v18 = v14;
      v19 = sub_1002D1F7C(v23, v7, v17, v18, 0, 0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v12;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v3 = v16;
      v10 = v22;
    }

    while (v11 != v12);
    goto LABEL_15;
  }

  __break(1u);
}

void *sub_100466684(unint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
  if (!result)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v14 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
  v4 = [result overlays];
  sub_10007EBC0(&unk_1006C2490);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
LABEL_30:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v1;
  v13 = a1;
  if (v6)
  {
    v8 = 0;
    a1 = v5 & 0xC000000000000001;
    do
    {
      v1 = v8;
      while (1)
      {
        if (a1)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (v1 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          swift_unknownObjectRetain();
          v8 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v1;
        if (v8 == v6)
        {
          goto LABEL_19;
        }
      }

      swift_unknownObjectRetain();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_unknownObjectRelease();
    }

    while (v8 != v6);
  }

LABEL_19:

  v9 = *(v7 + v14);
  if (!v9)
  {
    goto LABEL_33;
  }

  v10 = v7;
  v11 = v9;

  if (_swiftEmptyArrayStorage >> 62)
  {
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 removeOverlays:isa];

  if (!v13)
  {
    goto LABEL_25;
  }

  result = *(v10 + v14);
  if (!result)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  [result addOverlay:v13];
LABEL_25:
}

void sub_100466954()
{
  v2 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
  v3 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
  if (!v3)
  {
    __break(1u);
LABEL_27:

    __break(1u);
    goto LABEL_28;
  }

  isa = [v3 overlays];
  if (!isa)
  {
    sub_10007EBC0(&unk_1006C2490);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v4 = *(v1 + v2);
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = v4;
  [v5 removeOverlays:isa];

  v6 = *(v1 + v2);
  if (!v6)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v7 = [v6 annotations];
  sub_10007EBC0(&qword_1006C1DD0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = _swiftEmptyArrayStorage;
  if (v8 >> 62)
  {
    goto LABEL_21;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    while (1)
    {
      v16 = v2;
      v17 = v1;
      v2 = 0;
      while ((v8 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v10 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v1 = v17;
          v2 = v16;
          goto LABEL_22;
        }

LABEL_14:
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v1 = &v18;
          specialized ContiguousArray._endMutation()();
        }

        ++v2;
        if (v10 == v9)
        {
          goto LABEL_19;
        }
      }

      if (v2 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_21:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
      {
        goto LABEL_22;
      }
    }

    swift_unknownObjectRetain();
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

LABEL_22:

  v11 = *(v1 + v2);
  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = v11;
  v13 = Array._bridgeToObjectiveC()().super.isa;

  [v12 removeAnnotations:v13];

  v14 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedAnnotation);
  *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedAnnotation) = 0;

  v15 = (v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSearchedQuery);
  *v15 = 0;
  v15[1] = 0;
}

id sub_100466C20(char *a1)
{
  v3 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius;
  v4 = *&a1[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius];
  [a1 coordinate];
  v30 = MKCoordinateRegionMakeWithDistance(v28, v4 * 3.5, v4 * 3.5);
  v5 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
  result = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  [result regionThatFits:{v30.center.latitude, v30.center.longitude, v30.span.latitudeDelta, v30.span.longitudeDelta}];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *&a1[v3];
  [a1 coordinate];
  v31 = MKCoordinateRegionMakeWithDistance(v29, v15 * 3.5, v15 * 3.5);
  result = *(v1 + v5);
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [result regionThatFits:{v31.center.latitude, v31.center.longitude, v31.span.latitudeDelta, v31.span.longitudeDelta}];
  result = *(v1 + v5);
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = v16;
  v19 = v17;
  result = [result region];
  if (v21 != v18 || v20 != v19)
  {
    result = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView);
    if (result)
    {
      result = [result removeHandle:0];
      goto LABEL_10;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_10:
  v23 = fabs(v8);
  if (fabs(v10) <= 180.0 && v23 <= 90.0 && v12 >= 0.0 && v12 <= 180.0 && v14 >= 0.0 && v14 <= 360.0)
  {
    result = *(v1 + v5);
    if (result)
    {
      result = [result setRegion:1 animated:{v8, v10, v12, v14}];
      v27 = v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion;
      *v27 = v8;
      *(v27 + 8) = v10;
      *(v27 + 16) = v12;
      *(v27 + 24) = v14;
      *(v27 + 32) = 0;
      return result;
    }

LABEL_29:
    __break(1u);
  }

  return result;
}

void *sub_100466DE4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView];
  if (!result)
  {
    goto LABEL_26;
  }

  v11 = [result selectedAnnotations];
  sub_10007EBC0(&qword_1006C1DD0);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v12 >> 62))
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_21:
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  swift_unknownObjectRetain();
LABEL_7:

  type metadata accessor for FMFenceMapAnnotation();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    if (!*(v13 + OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_clPlacemark))
    {
      v27[1] = *(v13 + OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didReverseGeocodeGroup);
      v18 = v2;
      v19 = v13;
      sub_10000905C(0, &qword_1006AEDC0);
      v27[0] = static OS_dispatch_queue.main.getter();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = v0;
      *(v20 + 24) = v19;
      aBlock[4] = sub_10046CAA4;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100640140;
      v21 = _Block_copy(aBlock);
      v22 = v0;
      swift_unknownObjectRetain();
      static DispatchQoS.unspecified.getter();
      v27[2] = _swiftEmptyArrayStorage;
      sub_10000A618(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100037970();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v23 = v27[0];
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v21);

      (*(v18 + 8))(v4, v1);
      (*(v6 + 8))(v9, v5);
      swift_unknownObjectWeakDestroy();
      swift_unknownObjectRelease();
    }

    v14 = v13;
    v15 = *&v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_doneHandler];
    if (v15)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v0;
      *(v16 + 24) = v14;
      sub_100062900(v15);
      v17 = v0;
      swift_unknownObjectRetain();
      v15(v14, sub_10046D0D8, v16);

      swift_unknownObjectRelease();

      return sub_10001835C(v15);
    }

    v24 = &v0[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v24 + 1);
      ObjectType = swift_getObjectType();
      (*(v25 + 8))(v14, 0, ObjectType, v25);
      swift_unknownObjectRelease();
    }

    sub_1004676B8(v0);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_100467358(char a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &a2[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 1);
    v23 = v13;
    ObjectType = swift_getObjectType();
    (*(v15 + 8))(a3, a1 & 1, ObjectType, v15);
    v13 = v23;
    swift_unknownObjectRelease();
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a1 & 1;
  aBlock[4] = sub_10046D0E0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006401B8;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A618(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

void sub_1004676B8(char *a1)
{
  v2 = sub_10007EBC0(&unk_1006B8DD0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v12 - v4;
  if (a1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isOtherUsage] == 1)
  {
    v6 = [a1 navigationController];
    if (v6)
    {
      v12 = v6;

      v7 = v12;
    }
  }

  else
  {
    v8 = *&a1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediator];
    if (v8)
    {
      v9 = *(v8 + 56);
      v10 = type metadata accessor for FMSelectionPendingAction(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
      v11 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
      swift_beginAccess();

      sub_1000BBF40(v5, v9 + v11, &unk_1006B8DD0);
      swift_endAccess();

      [a1 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100467884(char *a1, void *a2)
{
  v4 = *&a1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_doneHandler];
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_100062900(v4);
    v6 = a1;
    v7 = a2;
    v4(a2, sub_10046D8E0, v5);

    sub_10001835C(v4);
  }

  else
  {
    v8 = &a1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 1);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(a2, 0, ObjectType, v9);
      swift_unknownObjectRelease();
    }

    sub_1004676B8(a1);
  }
}

id sub_1004679C4(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = -1.0;
  }

  else
  {
    v3 = *&a1;
  }

  v4 = *(v2 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_smallRadiusButton);
  if (v4)
  {
    [v4 setSelected:v3 == 100.0];
  }

  v5 = *(v2 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediumRadiusButton);
  if (v5)
  {
    [v5 setSelected:v3 == 250.0];
  }

  result = *(v2 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_largeRadiusButton);
  if (result)
  {

    return [result setSelected:v3 == 375.0];
  }

  return result;
}

id sub_100467A98(uint64_t a1, int a2)
{
  v42 = a2;
  v41 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v38 = v6;
  v39 = v7;
  __chkstk_darwin(v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = v34 - v16;
  v18 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView;
  v19 = *&v2[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView];
  if (v19)
  {
    v20 = [v19 annotation];
    if (v20)
    {
      v21 = v20;
      if (v42)
      {
      }

      else
      {
        v36 = v3;
        v37 = v2;
        v22 = *&v2[v18];
        if (v22)
        {
          [v22 removeHandle:1];
        }

        *&v21[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius] = v41;
        sub_100486AA8();
        v23 = *&v21[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay];
        v24 = v23;
        v25 = v37;
        sub_100466684(v23);

        sub_100466C20(v21);
        sub_10000905C(0, &qword_1006AEDC0);
        v34[0] = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v26 = *(v11 + 8);
        v34[1] = v11 + 8;
        v35 = v26;
        v26(v13, v10);
        v27 = swift_allocObject();
        *(v27 + 16) = v25;
        *(v27 + 24) = v21;
        aBlock[4] = sub_10046939C;
        aBlock[5] = v27;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100004AE4;
        aBlock[3] = &unk_1006400F0;
        v28 = _Block_copy(aBlock);
        v29 = v25;
        v30 = v21;

        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10000A618(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10007EBC0(&unk_1006B0640);
        sub_100037970();
        v31 = v36;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v32 = v34[0];
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v28);

        (*(v40 + 8))(v5, v31);
        (*(v39 + 8))(v9, v38);
        v35(v17, v10);
      }
    }
  }

  return sub_1004679C4(v41, v42 & 1);
}

id sub_100467F18(void *a1)
{
  result = [a1 annotation];
  if (result)
  {

    sub_100466684(0);
    if (a1)
    {
      [a1 removeHandle:1];
    }

    result = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
    if (result)
    {

      return [result setUserInteractionEnabled:0];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10046801C(void *a1)
{
  if (a1)
  {
    v3 = [a1 annotation];
    if (v3)
    {
      v4 = v3;
      v5 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius;
      sub_1004679C4(*&v3[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius], 0);
      [v4 coordinate];
      v25 = MKCoordinateRegionMakeWithDistance(v24, *&v4[v5] * 3.5, *&v4[v5] * 3.5);
      v6 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
      result = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
      if (!result)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      [result regionThatFits:{v25.center.latitude, v25.center.longitude, v25.span.latitudeDelta, v25.span.longitudeDelta}];
      v12 = fabs(v8);
      if (fabs(v9) <= 180.0 && v12 <= 90.0 && v10 >= 0.0 && v10 <= 180.0 && v11 >= 0.0 && v11 <= 360.0)
      {
        result = *(v1 + v6);
        if (!result)
        {
LABEL_25:
          __break(1u);
          return result;
        }

        v16 = v8;
        v17 = v9;
        v18 = v10;
        v19 = v11;
        [result setRegion:1 animated:?];
        v20 = v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion;
        *v20 = v16;
        *(v20 + 8) = v17;
        *(v20 + 16) = v18;
        *(v20 + 24) = v19;
        *(v20 + 32) = 0;
      }

      v21 = *&v4[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay];
      v22 = v21;
      sub_100466684(v21);

      [a1 addHandleForAnnotation:v4];
    }
  }

  result = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  return [result setUserInteractionEnabled:1];
}

void sub_100468460(void *a1)
{
  v3 = sub_10007EBC0(&qword_1006B0040);
  __chkstk_darwin(v3 - 8);
  v5 = v46 - v4;
  v6 = type metadata accessor for FMFLocationAlertAddressType();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 state] != 1)
  {
    return;
  }

  v49 = v10;
  v50 = v6;
  v51 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_userDroppedAnnotation;
  v11 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_userDroppedAnnotation);
  if (v11)
  {
    v12 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
    if (!v12)
    {
LABEL_15:
      __break(1u);
      return;
    }

    sub_10007EBC0(&qword_1006AFC30);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1005528C0;
    *(v13 + 32) = v11;
    v14 = v11;
    v15 = v12;
    sub_10007EBC0(&qword_1006C1DD0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 removeAnnotations:isa];
  }

  v17 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView;
  [a1 locationInView:*(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView)];
  v48 = v1;
  v18 = *(v1 + v17);
  if (!v18)
  {
    __break(1u);
    goto LABEL_15;
  }

  [v18 convertPoint:*(v1 + v17) toCoordinateFromView:?];
  v21 = [objc_allocWithZone(CLLocation) initWithLatitude:v19 longitude:v20];
  v22 = [objc_opt_self() mainBundle];
  v53._object = 0x800000010059A690;
  v23._object = 0x800000010059A660;
  v53._countAndFlagsBits = 0xD000000000000033;
  v23._countAndFlagsBits = 0xD000000000000021;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v46[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v53)._countAndFlagsBits;

  v47 = v21;
  [v21 coordinate];
  v26 = v25;
  v28 = v27;
  v29 = v49;
  v30 = v50;
  (*(v7 + 104))(v49, enum case for FMFLocationAlertAddressType.droppedPin(_:), v50);
  v31 = type metadata accessor for FMFAddress();
  v32 = *(*(v31 - 8) + 56);
  v32(v5, 1, 1, v31);
  v33 = type metadata accessor for FMFenceMapAnnotation();
  v34 = objc_allocWithZone(v33);
  v32(&v34[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark], 1, 1, v31);
  *&v34[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_clPlacemark] = 0;
  v35 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didReverseGeocodeGroup;
  *&v34[v35] = dispatch_group_create();
  v36 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_geocoder;
  *&v34[v36] = [objc_allocWithZone(CLGeocoder) init];
  v34[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didZoomOnSelection] = 0;
  *&v34[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay] = 0;
  v37 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius;
  if (qword_1006AED88 != -1)
  {
    swift_once();
  }

  v38 = *&qword_1006D4D20;
  *&v34[v37] = qword_1006D4D20;
  (*(v7 + 16))(&v34[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_addressType], v29, v30);
  v34[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_locationType] = 0;
  v52.receiver = v34;
  v52.super_class = v33;
  v39 = objc_msgSendSuper2(&v52, "init");
  v40 = String._bridgeToObjectiveC()();

  [v39 setTitle:v40];

  [v39 setSubtitle:0];
  [v39 setCoordinate:{v26, v28}];

  v41 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark;
  swift_beginAccess();
  sub_100278A8C(v5, &v39[v41]);
  swift_endAccess();
  if (qword_1006AED90 != -1)
  {
    swift_once();
  }

  if (v38 >= *&qword_1006D4D28)
  {
    v38 = *&qword_1006D4D28;
  }

  *&v39[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius] = v38;
  v42 = [objc_opt_self() circleWithCenterCoordinate:v26 radius:{v28, v38}];
  v43 = *&v39[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay];
  *&v39[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay] = v42;

  dispatch_group_enter(*&v39[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didReverseGeocodeGroup]);
  sub_100485F88();
  (*(v7 + 8))(v29, v30);
  sub_100012DF0(v5, &qword_1006B0040);
  v44 = v48;
  sub_10045FC64(v39);

  v45 = *(v44 + v51);
  *(v44 + v51) = v39;
}

id sub_100468CCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFenceMapViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMFenceMapViewController()
{
  result = qword_1006C07C0;
  if (!qword_1006C07C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100468FE4()
{
  sub_10046927C(319, &qword_1006C07D0, &type metadata accessor for FMFLocation);
  if (v0 <= 0x3F)
  {
    sub_10046927C(319, &qword_1006BA950, &type metadata accessor for FMFAddress);
    if (v1 <= 0x3F)
    {
      sub_10046927C(319, &qword_1006C07E0, &type metadata accessor for FMFLocationAlertAddressType);
      if (v2 <= 0x3F)
      {
        sub_10046927C(319, &qword_1006C07E8, &type metadata accessor for FMFLabel);
        if (v3 <= 0x3F)
        {
          sub_10046927C(319, &qword_1006AFE60, &type metadata accessor for FMFFriend);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_10046927C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_1004692D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1004692EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_100469334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10046939C()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView);
  if (result)
  {
    return [result addHandleForAnnotation:*(v0 + 24)];
  }

  return result;
}

Swift::Int sub_1004693C4(void **a1)
{
  v2 = *(type metadata accessor for FMFLabelledLocation() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10025F3E0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100469514(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10046946C(void **a1)
{
  v2 = *(type metadata accessor for FMFFriend() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10025F3F4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100469640(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100469514(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FMFLabelledLocation();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FMFLabelledLocation() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100469F3C(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10046976C(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_100469640(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FMFFriend();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FMFFriend() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10046AE94(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100469C34(0, v2, 1, a1);
  }

  return result;
}