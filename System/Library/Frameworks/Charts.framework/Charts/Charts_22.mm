__n128 AreaPlot<A>.init<A, B>(x:y:domain:function:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v44 = a7;
  v43 = a6;
  v41 = a5;
  *(&v42 + 1) = a4;
  *&v42 = a3;
  v37 = a1;
  v13 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  (*(v17 + 16))(&v35[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)], v19);
  v40 = sub_1AAF8EA64();
  v39 = v21;
  v36 = v22;
  v38 = v23;
  (*(v13 + 16))(v15, a2, a10);
  v24 = sub_1AAF8EA64();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v13 + 8))(a2, a10);
  (*(v17 + 8))(v37, a8);
  v47 = v36 & 1;
  v46 = v28 & 1;
  v45 = v41 & 1;
  *&v48 = v40;
  *(&v48 + 1) = v39;
  v49.n128_u8[0] = v36 & 1;
  v49.n128_u64[1] = v38;
  *&v50 = v24;
  *(&v50 + 1) = v26;
  LOBYTE(v51) = v28 & 1;
  *(&v51 + 1) = v30;
  v52 = v42;
  LOBYTE(v53) = v41 & 1;
  *(&v53 + 1) = v43;
  *&v54 = v44;
  sub_1AAE4EE7C(&v48);
  v31 = v55;
  *(a9 + 96) = v54;
  *(a9 + 112) = v31;
  *(a9 + 128) = v56;
  v32 = v51;
  *(a9 + 32) = v50;
  *(a9 + 48) = v32;
  v33 = v53;
  *(a9 + 64) = v52;
  *(a9 + 80) = v33;
  result = v49;
  *a9 = v48;
  *(a9 + 16) = result;
  return result;
}

void sub_1AAE4F2DC(double (*a1)(double), uint64_t a2)
{
  sub_1AAF84DA0(a1, 0.014959965, 659.734457, a2, 1000);
  if (v5)
  {
    sub_1AAF8545C(a1);
    v2 = v6;
    v8 = v7;
    sub_1AAF85BB0(a1);
    if (v8)
    {
      if (v5)
      {
        sub_1AAF864AC(a1, v9);
        return;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (v4 * -1.5 <= v4 * 1.5)
    {
      return;
    }

    __break(1u);
  }

  v10 = v2;
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v2 >= 0.0)
  {
    return;
  }

  __break(1u);
LABEL_10:
  v10 = v4;
  if (v4 >= 0.0)
  {
    return;
  }

  __break(1u);
LABEL_12:
  if (v10 <= v4)
  {
    v10 = v4;
  }

  if (v10 < 0.0)
  {
    __break(1u);
  }
}

uint64_t sub_1AAE4F3BC(uint64_t a1, uint64_t a2, double a3, double a4)
{

  v8 = sub_1AAF870B0(0, 0, 0, 1, a1, a2, a3, a4);
  v10 = v9;

  v11 = sub_1AAF870B4(0, 0, 0, 1, a1, a2, a3, a4);
  v13 = v12;

  if (v11 >= v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = v11;
  }

  if (v10 > v13)
  {
    v16 = v10;
  }

  else
  {
    v16 = v13;
  }

  if (v15 > v16)
  {
    __break(1u);
  }

  return result;
}

void sub_1AAE4F48C(uint64_t (*a1)(double))
{
  swift_retain_n();
  v2 = 0;
  for (i = pow(44100.0, 0 / 999.0); ; i = pow(44100.0, v2 / 999.0))
  {
    v4 = i * 0.014959965;
    v5 = v4 / 1.02164068;
    v6 = v4 * 1.02164068;
    if (v4 / 1.02164068 > v4 * 1.02164068)
    {
      __break(1u);
      goto LABEL_51;
    }

    v7 = a1(v5 + 0.292048924);
    v9 = v8;
    v10 = (a1)(v7, 0.292048924);
    if (vabdd_f64(v9, v11) >= 1.0e-10)
    {
      v12 = v11;
      v13 = (a1)(v10, v6 + 0.292048924);
      v15 = v14;
      v16 = (a1)(v13, 0.292048924);
      if (vabdd_f64(v15, v17) >= 1.0e-10)
      {
        v18 = v9 - v12;
        if (v18 * (v15 - v17) >= 0.0)
        {
          goto LABEL_2;
        }

        v19 = 40;
        while (1)
        {
          v20 = (v6 + v5) * 0.5;
          v21 = (a1)(v16, v20 + 0.292048924);
          v23 = v22;
          v16 = (a1)(v21, 0.292048924);
          if (vabdd_f64(v23, v24) < 1.0e-10)
          {
            break;
          }

          v25 = v23 - v24;
          v26 = v18 * (v23 - v24);
          if (v26 < 0.0)
          {
            v6 = (v6 + v5) * 0.5;
          }

          else
          {
            v18 = v25;
          }

          if (v26 >= 0.0)
          {
            v5 = v20;
          }

          if (!--v19)
          {
            goto LABEL_2;
          }
        }

        v5 = (v6 + v5) * 0.5;
      }

      else
      {
        v5 = v6;
      }
    }

    v27 = sub_1AAF86680(a1, v5);

    if (v27)
    {

      v28 = sub_1AAF86680(a1, v5 * 0.5);

      if ((v28 & 1) == 0)
      {
        break;
      }
    }

LABEL_2:
    if (++v2 == 1000)
    {
      goto LABEL_23;
    }
  }

  if (v5 * -1.5 <= v5 * 1.5)
  {
    return;
  }

  __break(1u);
LABEL_23:

  sub_1AAF867B8(a1);
  v30 = v29;
  v32 = v31;

  sub_1AAF85BB0(sub_1AAE52A24);
  v36 = v35;
  v37 = v33;
  if (v32)
  {
    if (v33)
    {
      v34.n128_u64[0] = 0xC0F86A0000000000;
      sub_1AAF86F08(a1, v34, 100000.0);
      if (v38 > 0.1)
      {
        goto LABEL_40;
      }

      v39 = *&qword_1F1FCF078;
      if (*&qword_1F1FCF078 < 0.0)
      {
        goto LABEL_52;
      }

      v40.n128_f64[0] = -v39;
      sub_1AAF86F08(a1, v40, v39);
      v42 = v41;

      if (v42 >= 0.4)
      {
        goto LABEL_40;
      }

      v43 = *&qword_1F1FCF080;
      if (*&qword_1F1FCF080 < 0.0)
      {
        goto LABEL_52;
      }

      v44.n128_f64[0] = -v43;
      sub_1AAF86F08(a1, v44, v43);
      v46 = v45;

      if (v46 >= 0.4)
      {
        goto LABEL_40;
      }

      v47 = *&qword_1F1FCF088;
      if (*&qword_1F1FCF088 < 0.0)
      {
        goto LABEL_52;
      }

      v48.n128_f64[0] = -v47;
      sub_1AAF86F08(a1, v48, v47);
      v50 = v49;

      if (v50 >= 0.4)
      {
        goto LABEL_40;
      }

      v51 = *&qword_1F1FCF090;
      if (*&qword_1F1FCF090 < 0.0)
      {
        goto LABEL_52;
      }

      v52.n128_f64[0] = -v51;
      sub_1AAF86F08(a1, v52, v51);
      v54 = v53;

      if (v54 >= 0.4)
      {
        goto LABEL_40;
      }

      v55 = *&qword_1F1FCF098;
      if (*&qword_1F1FCF098 < 0.0)
      {
        goto LABEL_52;
      }

      v56.n128_f64[0] = -v55;
      sub_1AAF86F08(a1, v56, v55);
      v58 = v57;

      if (v58 >= 0.4)
      {
        goto LABEL_40;
      }

      v59 = *&qword_1F1FCF0A0;
      if (*&qword_1F1FCF0A0 < 0.0)
      {
        goto LABEL_52;
      }

      v60.n128_f64[0] = -v59;
      sub_1AAF86F08(a1, v60, v59);
      v62 = v61;

      if (v62 >= 0.4)
      {
LABEL_40:

        return;
      }

      v63 = *&qword_1F1FCF0A8;
      if (*&qword_1F1FCF0A8 >= 0.0)
      {

        v64.n128_f64[0] = -v63;
        sub_1AAF86F08(a1, v64, v63);

        goto LABEL_40;
      }

      goto LABEL_52;
    }

LABEL_44:

    v65 = v36;
    if (v36 >= 0.0)
    {
      return;
    }

    __break(1u);
  }

  else
  {

    v65 = v30;
    if (v37)
    {
      if (v30 >= 0.0)
      {
        return;
      }

      __break(1u);
      goto LABEL_44;
    }
  }

  if (v65 <= v36)
  {
    v65 = v36;
  }

  if (v65 < 0.0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }
}

void static FunctionAreaPlotContent._renderChartContent(_:_:)(__int128 *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AAE527B8(0, &qword_1EB425A70);
  v7 = v6;
  *&v141 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v122 - v8;
  v10 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SgShapeStyle();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[5];
  v17 = a1[7];
  v173 = a1[6];
  v174 = v17;
  v18 = a1[1];
  v19 = a1[3];
  v169 = a1[2];
  v170 = v19;
  v20 = a1[3];
  v21 = a1[5];
  v171 = a1[4];
  v172 = v21;
  v22 = a1[1];
  v23 = *a1;
  v167 = *a1;
  v168 = v22;
  v24 = a1[7];
  v191 = v173;
  v192 = v24;
  v187 = v169;
  v188 = v20;
  v190 = v16;
  v189 = v171;
  v25 = *(a2 + 1);
  v26 = *(v25 + 24);
  v27 = *(v25 + 32);
  if (v27 >= v26)
  {
    v28 = *(v25 + 24);
  }

  else
  {
    v28 = *(v25 + 32);
  }

  if (v26 > v27)
  {
    v29 = *(v25 + 24);
  }

  else
  {
    v29 = *(v25 + 32);
  }

  v175 = *(a1 + 16);
  v193 = *(a1 + 16);
  v186 = v18;
  v185 = v23;
  if (v28 > v29)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return;
  }

  v30 = *a2;
  v31 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
  v32 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
  v33 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
  v165 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
  v166[0] = v32;
  *(v166 + 9) = v31;
  v35 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
  v34 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
  v164[0] = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
  v164[1] = v35;
  v164[2] = v34;
  v164[3] = v33;
  if (BYTE8(v166[1]) == 255 || (BYTE8(v166[1]) & 1) != 0 || (v36 = *(v166 + 1), v37 = *&v166[1], v38 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89), v39 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80), v40 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48), v162 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64), v163[0] = v39, *(v163 + 9) = v38, v42 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16), v41 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32), v161[0] = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale), v161[1] = v42, v161[2] = v41, v161[3] = v40, BYTE8(v163[1]) == 255) || (BYTE8(v163[1]) & 1) != 0 || LOBYTE(v166[0]) == 255 || LOBYTE(v163[0]) == 255)
  {
    v43 = 0xE000000000000000;
LABEL_15:
    *a3 = v43;
    return;
  }

  v134 = *(&v162 + 1);
  v135 = LOBYTE(v163[0]);
  v44 = *(v163 + 1);
  v45 = *&v163[1];
  v136 = *(&v165 + 1);
  v137 = LOBYTE(v166[0]);
  sub_1AAE51E00(v164, &v176, sub_1AACCF364);
  sub_1AAE51E00(v161, &v176, sub_1AACCF364);
  sub_1AAE5064C(v136, v137, v134, v135, v36, v37, v44, v45, v28, v29);
  v47 = v46;
  v133 = a3;
  if ((v30 & 1) == 0)
  {
    sub_1AAF8E934();
    v60 = *(v47 + 16);
    if (!v60)
    {
LABEL_52:

      v139 = type metadata accessor for SgPath(0);
      v140 = swift_allocBox();
      v69 = v68;
      v138 = *(*(v25 + 16) + 24);
      v70 = v146;
      v71 = v148;
      v135 = v147;
      v136 = v145;
      v72 = v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
      v137 = v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
      LODWORD(v141) = v149;
      swift_beginAccess();
      sub_1AAE51E00(v72, v12, type metadata accessor for ChartContentRenderContext.Environment);
      v73 = v135;
      v74 = v136;
      sub_1AAE5214C(v136, v70, v135, v71, v141);
      sub_1AAD0F2A4(v12, v15);
      sub_1AAE52094(v161);
      sub_1AAE52094(v164);
      v75 = v73;
      v76 = v73;
      LOBYTE(v73) = v141;
      sub_1AAD0E508(v74, v70, v76, v71, v141);
      v77 = *(v137 + *(v10 + 64));
      *v69 = v138;
      *(v69 + 8) = v74;
      *(v69 + 16) = v70;
      *(v69 + 24) = v75;
      *(v69 + 32) = v71;
      *(v69 + 40) = v73;
      v78 = v139;
      sub_1AAE52164(v15, v69 + *(v139 + 24));
      *(v69 + *(v78 + 28)) = v77;
      v43 = v140 | 0x9000000000000000;
      goto LABEL_15;
    }

    v61 = 0;
    v62 = v47 + 32;
    v140 = v47;
    v137 = v47 + 32;
    v138 = v60;
    while (v61 < *(v47 + 16))
    {
      v63 = *(v62 + 8 * v61);
      if (*(v63 + 16) >= 2uLL)
      {
        v139 = v61;

        sub_1AAF8E934();
        v64 = *(v63 + 16);
        if (v64)
        {
          v65 = (v63 + 32);
          v66 = *(v63 + 16);
          do
          {
            v141 = *v65;
            v152 = v142;
            v153 = v143;
            LOBYTE(v154) = v144;
            if (sub_1AAF8E8E4())
            {
              sub_1AAF8E8A4();
            }

            else
            {
              sub_1AAF8E8D4();
            }

            v65 += 2;
            --v66;
          }

          while (v66);
          v60 = v138;
          while (1)
          {
            v67 = v64 - 1;
            if (v64 < 1)
            {
              break;
            }

            if (v67 >= *(v63 + 16))
            {
              goto LABEL_59;
            }

            sub_1AAF8E8D4();
            --v64;
            if (!v67)
            {
              goto LABEL_37;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

LABEL_37:

        sub_1AAF8E884();
        v150[0] = v142;
        v150[1] = v143;
        v151 = v144;
        *&v177 = 0;
        v176 = 0x3FF0000000000000uLL;
        *(&v177 + 1) = 0x3FF0000000000000;
        v178 = 0uLL;
        sub_1AAF8E844();
        sub_1AAD12C10(v150);
        a3 = v133;
        v61 = v139;
        v47 = v140;
        v62 = v137;
      }

      if (++v61 == v60)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_66;
  }

  v139 = *(v46 + 16);
  v140 = v46;
  if (v139)
  {
    v48 = 0;
    v138 = v46 + 32;
    v49 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v48 >= *(v140 + 16))
      {
        goto LABEL_61;
      }

      v50 = *(v138 + 8 * v48);
      v51 = *(v50 + 16);
      v52 = *(v49 + 2);
      v53 = v52 + v51;
      if (__OFADD__(v52, v51))
      {
        goto LABEL_62;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v53 <= *(v49 + 3) >> 1)
      {
        if (!*(v50 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v52 <= v53)
        {
          v55 = v52 + v51;
        }

        else
        {
          v55 = v52;
        }

        v49 = sub_1AAD696E0(isUniquelyReferenced_nonNull_native, v55, 1, v49);
        if (!*(v50 + 16))
        {
LABEL_19:

          if (v51)
          {
            goto LABEL_63;
          }

          goto LABEL_20;
        }
      }

      v56 = *(v49 + 2);
      if ((*(v49 + 3) >> 1) - v56 < v51)
      {
        goto LABEL_64;
      }

      memcpy(&v49[32 * v56 + 32], (v50 + 32), 32 * v51);

      if (v51)
      {
        v57 = *(v49 + 2);
        v58 = __OFADD__(v57, v51);
        v59 = v57 + v51;
        if (v58)
        {
          goto LABEL_65;
        }

        *(v49 + 2) = v59;
      }

LABEL_20:
      if (v139 == ++v48)
      {
        goto LABEL_54;
      }
    }
  }

  v49 = MEMORY[0x1E69E7CC0];
LABEL_54:

  v182 = v173;
  v183 = v174;
  v184 = v175;
  v178 = v169;
  v179 = v170;
  v180 = v171;
  v181 = v172;
  v176 = v167;
  v177 = v168;
  if (sub_1AAE51DF4(&v176) == 1)
  {
    v79 = sub_1AAD311C4(&v176);
    v80 = *(v79 + 8);
    v81 = *(v79 + 24);
    v82 = *(v79 + 32);
    v138 = *v79;
    v139 = v81;
    v83 = *(v79 + 40);
    v84 = *(v79 + 56);
    v129 = *(v79 + 64);
    v130 = v84;
    v131 = *(v79 + 72);
    v132 = v80;
    v140 = *(v79 + 88);
    v85 = *(v79 + 16);
    LODWORD(v81) = *(v79 + 80);
    v123 = *(v79 + 48);
    v124 = v81;
    v158 = v191;
    v159 = v192;
    v160 = v193;
    v152 = v185;
    v153 = v186;
    v154 = v187;
    v155 = v188;
    v156 = v189;
    v157 = v190;
    v86 = sub_1AAD311C4(&v152);
    sub_1AAE51E00(v86, v150, sub_1AAE51E68);

    v122 = *(v49 + 2);
    KeyPath = swift_getKeyPath();
    v87 = swift_allocObject();
    *(v87 + 16) = v49;
    v88 = v138;
    v89 = v139;
    v90 = v132;
    *(v87 + 24) = v138;
    *(v87 + 32) = v90;
    *(v87 + 40) = v85 & 1;
    LODWORD(v128) = v85 & 1;
    v92 = v136;
    v91 = v137;
    *(v87 + 48) = v89;
    *(v87 + 56) = v92;
    *(v87 + 64) = v91;
    *(v87 + 72) = v36;
    *(v87 + 80) = v37;
    v126 = v83;
    v127 = v82;
    *(v87 + 88) = v82;
    *(v87 + 96) = v83;
    LODWORD(v137) = v123 & 1;
    *(v87 + 104) = v123 & 1;
    v93 = v129;
    v95 = v134;
    v94 = v135;
    *(v87 + 112) = v130;
    *(v87 + 120) = v95;
    *(v87 + 128) = v94;
    *(v87 + 136) = v44;
    *(v87 + 144) = v45;
    v96 = v131;
    *(v87 + 152) = v93;
    *(v87 + 160) = v96;
    LODWORD(v136) = v124 & 1;
    *(v87 + 168) = v124 & 1;
    *(v87 + 176) = v140;
    *&v150[0] = 0;
    *(&v150[0] + 1) = v122;
    sub_1AACD7304(v88, v90, v85 & 1);

    sub_1AACD7304(v82, v83, v137);

    v97 = v93;
    v98 = v131;
    LOBYTE(v82) = v136;
    sub_1AACD7304(v97, v131, v136);
    sub_1AAD26778(0, &qword_1ED9B29B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    sub_1AAD116F4();

    sub_1AAF8EF84();

    sub_1AAE49700(v9, 1, v25, &qword_1EB425A70, sub_1AAE528C0, v133);
    sub_1AAE52094(v161);
    sub_1AAE52094(v164);
    sub_1AAD04750(v129, v98, v82);

    sub_1AAD04750(v127, v126, v137);

    sub_1AAD04750(v138, v132, v128);
  }

  else
  {
    v99 = sub_1AAD311C4(&v176);
    v100 = *v99;
    v138 = *(v99 + 8);
    v139 = v100;
    LODWORD(v132) = *(v99 + 16);
    v101 = *(v99 + 32);
    v140 = *(v99 + 24);
    v130 = *(v99 + 40);
    v131 = v101;
    v102 = *(v99 + 48);
    v103 = *(v99 + 56);
    v128 = *(v99 + 96);
    v129 = v103;
    v158 = v191;
    v159 = v192;
    v160 = v193;
    v152 = v185;
    v153 = v186;
    v154 = v187;
    v155 = v188;
    v156 = v189;
    v157 = v190;
    v104 = sub_1AAD311C4(&v152);
    v106 = *v104;
    v105 = *(v104 + 8);
    v107 = *(v104 + 16);
    v108 = *(v104 + 32);
    v109 = *(v104 + 40);
    v110 = *(v104 + 48);
    v111 = *(v104 + 96);
    KeyPath = *(v104 + 56);
    v126 = v111;
    sub_1AACD7304(v106, v105, v107);

    sub_1AACD7304(v108, v109, v110);

    v126 = *(v49 + 2);
    v128 = swift_getKeyPath();
    v112 = swift_allocObject();
    *(v112 + 16) = v49;
    v114 = v138;
    v113 = v139;
    *(v112 + 24) = v139;
    *(v112 + 32) = v114;
    v115 = v132;
    *(v112 + 40) = v132;
    v117 = v136;
    v116 = v137;
    *(v112 + 48) = v140;
    *(v112 + 56) = v117;
    *(v112 + 64) = v116;
    *(v112 + 72) = v36;
    *(v112 + 80) = v37;
    v118 = v130;
    v119 = v131;
    *(v112 + 88) = v131;
    *(v112 + 96) = v118;
    LODWORD(v127) = v102;
    *(v112 + 104) = v102;
    v121 = v134;
    v120 = v135;
    *(v112 + 112) = v129;
    *(v112 + 120) = v121;
    *(v112 + 128) = v120;
    *(v112 + 136) = v44;
    *(v112 + 144) = v45;
    *&v150[0] = 0;
    *(&v150[0] + 1) = v126;
    sub_1AACD7304(v113, v114, v115);

    sub_1AACD7304(v119, v118, v102);
    sub_1AAD26778(0, &qword_1ED9B29B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    sub_1AAD116F4();

    sub_1AAF8EF84();

    sub_1AAE49700(v9, 1, v25, &qword_1EB425A70, sub_1AAE528C0, v133);
    sub_1AAE52094(v161);
    sub_1AAE52094(v164);
    sub_1AAD04750(v131, v130, v127);

    sub_1AAD04750(v139, v138, v132);
  }

  (*(v141 + 8))(v9, v7);
}

void sub_1AAE5064C(uint64_t a1, int a2, void *a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v112 = a4;
  LODWORD(v111) = a2;
  v19 = *(v10 + 112);
  v118[6] = *(v10 + 96);
  v118[7] = v19;
  v119 = *(v10 + 128);
  v20 = *(v10 + 48);
  v118[2] = *(v10 + 32);
  v118[3] = v20;
  v21 = *(v10 + 80);
  v118[4] = *(v10 + 64);
  v118[5] = v21;
  v22 = *(v10 + 16);
  v118[0] = *v10;
  v118[1] = v22;
  v23 = sub_1AAE51DF4(v118);
  v24 = sub_1AAD311C4(v118);
  if (v23 == 1)
  {
    if ((*(v24 + 112) & 1) == 0)
    {
      v25 = (v24 + 96);
      v26 = (v24 + 104);
      goto LABEL_6;
    }

LABEL_26:
    v35 = *(v10 + 112);
    v116[6] = *(v10 + 96);
    v116[7] = v35;
    v117 = *(v10 + 128);
    v36 = *(v10 + 48);
    v116[2] = *(v10 + 32);
    v116[3] = v36;
    v37 = *(v10 + 80);
    v116[4] = *(v10 + 64);
    v116[5] = v37;
    v38 = *(v10 + 16);
    v116[0] = *v10;
    v116[1] = v38;
    v39 = sub_1AAE51DF4(v116);
    v40 = sub_1AAD311C4(v116);
    if (v39 == 1)
    {
      v41 = *(v40 + 120);
      v42 = *(v40 + 128);
      MEMORY[0x1EEE9AC00](v40);
      v94 = a1;
      v95 = v111;
      v96 = a5;
      v97 = a6;
      v98.n128_u64[0] = v41;
      v98.n128_u64[1] = v42;
      v99 = a3;
      v100 = v112;
      v101 = a7;
      v102 = a8;
      v43.n128_f64[0] = a9;
      v44.n128_f64[0] = a10;
      v45 = sub_1AAF81604(4, 7, 1, sub_1AAE5299C, v93, v43, v44);
      v46 = v45[2];
      if (v46)
      {
        v115 = MEMORY[0x1E69E7CC0];
        v104 = v45;
        v105 = v46;
        sub_1AAD41290(0, v46, 0);
        v47 = v104;
        v48 = v105;
        v49 = 0;
        v50 = v115;
        v106 = v104 + 4;
        v109.i64[0] = a1;
        v51 = *&a1;
        v110 = a3;
        v52 = *&a3;
        v53 = 1.0 / *&a1;
        while (v49 < v47[2])
        {
          v108 = v50;
          v54 = v106[v49];
          v55 = *(v54 + 16);
          if (v55)
          {
            v107 = v49;
            v114 = MEMORY[0x1E69E7CC0];

            sub_1AAD412E0(0, v55, 0);
            v56 = v114;
            v57 = 32;
            do
            {
              v58 = *(v54 + v57);
              v113 = v58;
              v58.n128_f64[0] = (v58.n128_f64[0] - a6) / a5;
              if (v111)
              {
                if (v111 == 1)
                {
                  if ((v58.n128_u64[0] & 0x8000000000000000) != 0)
                  {
                    v58.n128_f64[0] = 1.0 - exp(-v58.n128_f64[0]);
                  }

                  else
                  {
                    v58.n128_f64[0] = exp(v58.n128_f64[0]) + -1.0;
                  }

                  v58.n128_f64[0] = v58.n128_f64[0] / v51;
                }

                else if (v109.i64[0])
                {
                  v58.n128_f64[0] = exp(v58.n128_f64[0]);
                }
              }

              else
              {
                v58.n128_f64[0] = pow(v58.n128_f64[0], v53);
              }

              v41(v58);
              if (v112)
              {
                if (v112 == 1)
                {
                  v60 = v59;
                  v61 = v59 * v52;
                  if ((*&v60 & 0x8000000000000000) != 0)
                  {
                    v59 = -log(1.0 - v61);
                  }

                  else
                  {
                    v59 = log(v61 + 1.0);
                  }
                }

                else if (v110)
                {
                  v59 = log(v59);
                }
              }

              else
              {
                v59 = pow(v59, v52);
              }

              v114 = v56;
              v63 = *(v56 + 16);
              v62 = *(v56 + 24);
              if (v63 >= v62 >> 1)
              {
                v103 = v59;
                sub_1AAD412E0((v62 > 1), v63 + 1, 1);
                v59 = v103;
                v56 = v114;
              }

              *&v64 = v113.i64[0];
              *(&v64 + 1) = v59 * a7 + a8;
              v65 = vzip2q_s64(v113, 0);
              *(v56 + 16) = v63 + 1;
              v66 = v56 + 32 * v63;
              *(v66 + 32) = v64;
              *(v66 + 48) = v65;
              v57 += 16;
              --v55;
            }

            while (v55);

            v47 = v104;
            v48 = v105;
            v49 = v107;
          }

          else
          {
            v56 = MEMORY[0x1E69E7CC0];
          }

          v50 = v108;
          v115 = v108;
          v68 = *(v108 + 16);
          v67 = *(v108 + 24);
          if (v68 >= v67 >> 1)
          {
            v69 = v49;
            sub_1AAD41290((v67 > 1), v68 + 1, 1);
            v49 = v69;
            v47 = v104;
            v48 = v105;
            v50 = v115;
          }

          ++v49;
          *(v50 + 16) = v68 + 1;
          *(v50 + 8 * v68 + 32) = v56;
          if (v49 == v48)
          {
            goto LABEL_78;
          }
        }

        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

LABEL_78:

      return;
    }

    v70.n128_f64[0] = MEMORY[0x1EEE9AC00](v40);
    v94 = a1;
    v95 = v111;
    v96 = a5;
    v97 = a6;
    v98 = v70;
    v99 = a3;
    v100 = v112;
    v101 = a7;
    v102 = a8;
    v70.n128_f64[0] = a9;
    v71.n128_f64[0] = a10;
    v72 = sub_1AAF81604(4, 7, 1, sub_1AAE529B4, v93, v70, v71);
    v73 = v72[2];
    if (!v73)
    {
      goto LABEL_78;
    }

    v115 = MEMORY[0x1E69E7CC0];
    sub_1AAD41290(0, v73, 0);
    v74 = v115;
    v111 = v72 + 4;
    v75 = log(0.0);
    v76 = *&a3;
    v78 = log(*&a3 * 0.0 + 1.0);
    v79 = 0;
    if (*&a3 == 0.0)
    {
      v75 = 0.0;
    }

    v110 = v72;
    while (1)
    {
      if (v79 >= v72[2])
      {
        goto LABEL_80;
      }

      v80 = v111[v79];
      if (v112)
      {
        if (v112 == 1)
        {
          *v77.i64 = v78;
        }

        else
        {
          *v77.i64 = v75;
        }

        v81 = *(v80 + 16);
        if (v81)
        {
LABEL_68:
          *v77.i64 = *v77.i64 * a7 + a8;
          v113 = v77;
          v114 = MEMORY[0x1E69E7CC0];

          sub_1AAD412E0(0, v81, 0);
          v82 = v113.i64[0];
          v83 = 0uLL;
          v84 = v114;
          v85 = *(v114 + 16) + 1;
          v86 = 32;
          do
          {
            v87 = *(v80 + v86);
            v114 = v84;
            v88 = *(v84 + 24);
            if (v85 - 1 >= v88 >> 1)
            {
              v109 = v87;
              sub_1AAD412E0((v88 > 1), v85, 1);
              v87 = v109;
              v82 = v113.i64[0];
              v83 = 0uLL;
              v84 = v114;
            }

            v89 = vzip2q_s64(v87, v83);
            v87.i64[1] = v82;
            *(v84 + 16) = v85;
            v90 = (v84 + 32 * v85);
            *v90 = v87;
            v90[1] = v89;
            ++v85;
            v86 += 16;
            --v81;
          }

          while (v81);

          v72 = v110;
          goto LABEL_75;
        }
      }

      else
      {
        *v77.i64 = pow(0.0, v76);
        v81 = *(v80 + 16);
        if (v81)
        {
          goto LABEL_68;
        }
      }

      v84 = MEMORY[0x1E69E7CC0];
LABEL_75:
      v115 = v74;
      v92 = *(v74 + 16);
      v91 = *(v74 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_1AAD41290((v91 > 1), v92 + 1, 1);
        v74 = v115;
      }

      ++v79;
      *(v74 + 16) = v92 + 1;
      *(v74 + 8 * v92 + 32) = v84;
      if (v79 == v73)
      {
        goto LABEL_78;
      }
    }
  }

  if (*(v24 + 80))
  {
    goto LABEL_26;
  }

  v25 = (v24 + 64);
  v26 = (v24 + 72);
LABEL_6:
  v27 = *v25;
  v28 = *v26;
  v29 = *v26;
  if (!v111)
  {
    v31 = pow(v27, *&a1) * a5 + a6;
    v29 = pow(v29, *&a1);
    goto LABEL_19;
  }

  if (v111 == 1)
  {
    v30 = *&a1 * v27;
    if ((*&v27 & 0x8000000000000000) != 0)
    {
      v31 = a6 - log(1.0 - v30) * a5;
    }

    else
    {
      v31 = log(v30 + 1.0) * a5 + a6;
    }

    v33 = *&a1 * v29;
    if ((*&v28 & 0x8000000000000000) == 0)
    {
      v32 = v33 + 1.0;
      goto LABEL_16;
    }

    v29 = -log(1.0 - v33);
  }

  else
  {
    if (*&a1 != 0.0)
    {
      v31 = log(v27) * a5 + a6;
      v32 = v29;
LABEL_16:
      v29 = log(v32);
      goto LABEL_19;
    }

    v31 = v27 * a5 + a6;
  }

LABEL_19:
  v34 = v29 * a5 + a6;
  if (v34 >= v31)
  {
    a9 = v31;
  }

  else
  {
    a9 = v29 * a5 + a6;
  }

  if (v31 > v34)
  {
    a10 = v31;
  }

  else
  {
    a10 = v29 * a5 + a6;
  }

  if (a9 <= a10)
  {
    goto LABEL_26;
  }

LABEL_81:
  __break(1u);
}

unint64_t *sub_1AAE50DE4@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  v25 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v25 >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v49 = v24;
  v50 = v23;
  v51 = v22;
  v52 = v21;
  v53 = v19;
  v54 = v20;
  v30 = a2 + 32 * v25;
  v31 = *(v30 + 48);
  v34 = sub_1AAF4242C(a7, a8, *(v30 + 32), a10, a11);
  v36[0] = a3;
  v36[1] = a4;
  v37 = a5 & 1;
  v38 = a6;
  v39 = v34;
  v40 = 0;
  v41 = 0;
  v42[0] = a14;
  v42[1] = a15;
  v43 = a16 & 1;
  v44 = a17;
  v45 = sub_1AAF4242C(a18, a19, v31, a12, a13);
  v46 = 0;
  v47 = 0;
  sub_1AAE49B40(v36, v42, 0, __src);
  memcpy(a9, __src, 0x131uLL);
  sub_1AACD7304(a3, a4, a5 & 1);

  sub_1AACD7304(a14, a15, a16 & 1);
}

unint64_t *sub_1AAE50F60@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22)
{
  v23 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v23 < *(a2 + 16))
  {
    v29 = a2 + 32 * v23;
    v36 = *(v29 + 32);
    v30 = *(v29 + 48);
    v32 = sub_1AAF4242C(a7, a8, *(v29 + 32), a10, a11);
    v33 = sub_1AAF4242C(a17, a18, *(&v36 + 1), a12, a13);
    v34 = sub_1AAF4242C(a17, a18, v30, a12, a13);
    a5 &= 1u;
    v39 = a5;
    *&v40 = a3;
    *(&v40 + 1) = a4;
    LOBYTE(v41) = a5;
    *(&v41 + 1) = a6;
    v42 = *&v32;
    LOBYTE(v43) = 0;
    v35 = MEMORY[0x1E69E63B0];
    *(&v43 + 1) = MEMORY[0x1E69E63B0];
    *&v44 = &protocol witness table for Double;
    sub_1AAE4637C(&v40);
    __src[6] = v46;
    __src[7] = v47;
    __src[8] = v48;
    __src[2] = v42;
    __src[3] = v43;
    __src[4] = v44;
    __src[5] = v45;
    __src[0] = v40;
    __src[1] = v41;
    v49 = a15 & 1;
    v50 = a21 & 1;
    v51 = a14;
    LOBYTE(v52) = a15 & 1;
    *(&v52 + 1) = a16;
    v53 = *&v33;
    LOBYTE(v54) = 0;
    *(&v54 + 1) = v35;
    *&v55 = &protocol witness table for Double;
    *(&v55 + 1) = a19;
    *&v56 = a20;
    BYTE8(v56) = a21 & 1;
    *&v57 = a22;
    *(&v57 + 1) = v34;
    *&v58 = 0;
    BYTE8(v58) = 0;
    *&v59 = v35;
    *(&v59 + 1) = &protocol witness table for Double;
    sub_1AAE52954(&v51);
    __src[15] = v57;
    __src[16] = v58;
    __src[17] = v59;
    __src[11] = v53;
    __src[12] = v54;
    __src[13] = v55;
    __src[14] = v56;
    __src[9] = v51;
    __src[10] = v52;
    memcpy(a9, __src, 0x120uLL);
    *(a9 + 288) = 0;
    *(a9 + 296) = 0;
    *(a9 + 304) = -1;
    sub_1AACD7304(a3, a4, a5);

    sub_1AACD7304(a14, *(&a14 + 1), a15 & 1);

    sub_1AACD7304(a19, a20, a21 & 1);
  }

  __break(1u);
  return result;
}

double sub_1AAE5126C(uint64_t a1, char a2, void (*a3)(__n128), __n128 a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, char a11)
{
  a4.n128_f64[0] = (a4.n128_f64[0] - a6) / a5;
  if (a2)
  {
    if (a2 == 1)
    {
      if ((a4.n128_u64[0] & 0x8000000000000000) != 0)
      {
        a4.n128_f64[0] = 1.0 - exp(-a4.n128_f64[0]);
      }

      else
      {
        a4.n128_f64[0] = exp(a4.n128_f64[0]) + -1.0;
      }

      a4.n128_f64[0] = a4.n128_f64[0] / *&a1;
    }

    else if (*&a1 != 0.0)
    {
      a4.n128_f64[0] = exp(a4.n128_f64[0]);
    }
  }

  else
  {
    a4.n128_f64[0] = pow(a4.n128_f64[0], 1.0 / *&a1);
  }

  a3(a4);
  if (a11)
  {
    if (a11 == 1)
    {
      v18 = v17;
      v19 = v17 * *&a10;
      if ((*&v18 & 0x8000000000000000) != 0)
      {
        v17 = -log(1.0 - v19);
        return v17 * a7 + a8;
      }

      v17 = v19 + 1.0;
      goto LABEL_16;
    }

    if (*&a10 != 0.0)
    {
LABEL_16:
      v17 = log(v17);
    }
  }

  else
  {
    v17 = pow(v17, *&a10);
  }

  return v17 * a7 + a8;
}

double sub_1AAE51380(uint64_t a1, char a2, void (*a3)(__n128), __n128 a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, char a11)
{
  a4.n128_f64[0] = (a4.n128_f64[0] - a6) / a5;
  if (a2)
  {
    if (a2 == 1)
    {
      if ((a4.n128_u64[0] & 0x8000000000000000) != 0)
      {
        a4.n128_f64[0] = 1.0 - exp(-a4.n128_f64[0]);
      }

      else
      {
        a4.n128_f64[0] = exp(a4.n128_f64[0]) + -1.0;
      }

      a4.n128_f64[0] = a4.n128_f64[0] / *&a1;
    }

    else if (*&a1 != 0.0)
    {
      a4.n128_f64[0] = exp(a4.n128_f64[0]);
    }
  }

  else
  {
    a4.n128_f64[0] = pow(a4.n128_f64[0], 1.0 / *&a1);
  }

  a3(a4);
  v18 = v17;
  if (a11)
  {
    if (a11 == 1)
    {
      v19 = v17 * *&a10;
      if ((*&v17 & 0x8000000000000000) != 0)
      {
        v18 = -log(1.0 - v19);
        return v18 * a7 + a8;
      }

      v18 = v19 + 1.0;
      goto LABEL_16;
    }

    if (*&a10 != 0.0)
    {
LABEL_16:
      v18 = log(v18);
    }
  }

  else
  {
    v18 = pow(v17, *&a10);
  }

  return v18 * a7 + a8;
}

uint64_t VectorizedAreaPlotContent.body.getter()
{
  v1 = type metadata accessor for Vectorizer();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - v3;
  sub_1AACE0800(v0, v1, &off_1EE75E640);
  sub_1AACE0800(v4, v1, &off_1EE75E640);
  return (*(v2 + 8))(v4, v1);
}

uint64_t _s6Charts23FunctionAreaPlotContentV012_layoutChartE0yyAC_AA01_gE12LayoutInputsVtFZ_0(__int128 *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (!*(v3 + 16))
  {
    goto LABEL_13;
  }

  v5 = sub_1AACB6398(0);
  v6 = 0;
  if (v7)
  {
    v8 = *(*(v3 + 56) + 72 * v5 + 40);
    v9 = v8 >> 8;
    v10 = (v8 & 0xFF00) != 768;
    v6 = v9 <= 0xFE && v10;
  }

  if (*(v3 + 16))
  {
    result = sub_1AACB6398(1u);
    if (v12)
    {
      v13 = *(*(v3 + 56) + 72 * result + 40);
      if (v13 >> 8 <= 0xFE && (v13 & 0xFF00) != 0x300)
      {
        if (v6)
        {
          return result;
        }

        v14 = 1;
LABEL_14:
        v15 = a1[7];
        v124 = a1[6];
        v125 = v15;
        v126 = *(a1 + 16);
        v16 = a1[3];
        v120 = a1[2];
        v121 = v16;
        v17 = a1[5];
        v122 = a1[4];
        v123 = v17;
        v18 = a1[1];
        v118 = *a1;
        v119 = v18;
        v19 = sub_1AAE51DF4(&v118);
        result = sub_1AAD311C4(&v118);
        v20 = 64;
        if (v19 == 1)
        {
          v20 = 96;
        }

        v21 = 72;
        if (v19 == 1)
        {
          v21 = 104;
        }

        v22 = 80;
        if (v19 == 1)
        {
          v22 = 112;
        }

        if ((*(result + v22) & 1) == 0)
        {
          v23 = *(result + v21);
          v24 = *(result + v20);
          result = swift_beginAccess();
          if ((~*&v24 & 0x7FF0000000000000) != 0)
          {
            v25 = v24;
            if (*(v4 + 40))
            {
              v26 = v24;
            }

            else
            {
              v26 = *(v4 + 24);
              if (v26 >= v24)
              {
                v26 = v24;
              }

              if (*(v4 + 32) >= v24)
              {
                v25 = *(v4 + 32);
              }
            }

            *(v4 + 24) = v26;
            *(v4 + 32) = v25;
            *(v4 + 40) = 0;
          }

          if ((~*&v23 & 0x7FF0000000000000) != 0)
          {
            v27 = v23;
            if (*(v4 + 40))
            {
              v28 = v23;
            }

            else
            {
              v28 = *(v4 + 24);
              if (v28 >= v23)
              {
                v28 = v23;
              }

              if (*(v4 + 32) >= v23)
              {
                v27 = *(v4 + 32);
              }
            }

            *(v4 + 24) = v28;
            *(v4 + 32) = v27;
            *(v4 + 40) = 0;
          }
        }

        if (v14)
        {
          return result;
        }

        goto LABEL_38;
      }
    }
  }

  if (!v6)
  {
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

LABEL_38:
  v107 = v4;
  v29 = a1[7];
  v124 = a1[6];
  v125 = v29;
  v126 = *(a1 + 16);
  v30 = a1[3];
  v120 = a1[2];
  v121 = v30;
  v31 = a1[5];
  v122 = a1[4];
  v123 = v31;
  v32 = a1[1];
  v118 = *a1;
  v119 = v32;
  if (sub_1AAE51DF4(&v118) != 1)
  {
    v57 = sub_1AAD311C4(&v118);
    v98 = *(v57 + 8);
    v100 = *v57;
    v97 = *(v57 + 16);
    v58 = *(v57 + 32);
    v59 = *(v57 + 40);
    v60 = *(v57 + 48);
    v61 = *(v57 + 64);
    v62 = *(v57 + 72);
    v103 = *(v57 + 80);
    v104 = *(v57 + 88);
    v106 = *(v57 + 96);
    v63 = a1[3];
    v111 = a1[2];
    v112 = v63;
    v64 = a1[1];
    v109 = *a1;
    v110 = v64;
    v117 = *(a1 + 16);
    v65 = a1[7];
    v115 = a1[6];
    v116 = v65;
    v66 = a1[5];
    v113 = a1[4];
    v114 = v66;
    v67 = sub_1AAD311C4(&v109);
    v68 = *(v67 + 32);
    v69 = *(v67 + 40);
    v70 = *(v67 + 48);
    sub_1AACD7304(*v67, *(v67 + 8), *(v67 + 16));

    sub_1AACD7304(v68, v69, v70);

    sub_1AAD04750(v58, v59, v60);

    sub_1AAD04750(v100, v98, v97);

    swift_beginAccess();
    v71 = 0.0;
    v72 = 0.0;
    if ((*(v4 + 112) & 1) == 0)
    {
      v72 = *(v4 + 104);
      v71 = fmin(*(v4 + 96), 0.0);
      if (v72 < 0.0)
      {
        v72 = 0.0;
      }
    }

    *(v4 + 96) = v71;
    *(v4 + 104) = v72;
    *(v4 + 112) = 0;
    if (v103)
    {
      v73 = swift_allocObject();
      *(v73 + 16) = v104;
      *(v73 + 24) = v106;
      v74 = swift_allocObject();
      *(v74 + 16) = v104;
      *(v74 + 24) = v106;
      swift_beginAccess();
      v75 = *(v4 + 240);
      swift_retain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 240) = v75;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v75 = sub_1AAD691C4(0, *(v75 + 2) + 1, 1, v75);
        *(v4 + 240) = v75;
      }

      v78 = *(v75 + 2);
      v77 = *(v75 + 3);
      if (v78 >= v77 >> 1)
      {
        v75 = sub_1AAD691C4((v77 > 1), v78 + 1, 1, v75);
      }

      *(v75 + 2) = v78 + 1;
      v79 = &v75[32 * v78];
      *(v79 + 4) = sub_1AAE52A04;
      *(v79 + 5) = v73;
      *(v79 + 6) = sub_1AAE52A1C;
      *(v79 + 7) = v74;
      *(v4 + 240) = v75;
      swift_endAccess();
    }

    else
    {
      sub_1AAF7F860(0, 0, 0, 1, v104, v61, v62);
      if ((*&v87 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v89 = v87;
        if ((*(v4 + 112) & 1) == 0)
        {
          v90 = *(v4 + 96);
          v89 = *(v4 + 104);
          if (v90 >= v87)
          {
            v90 = v87;
          }

          if (v87 > v89)
          {
            v89 = v87;
          }

          v87 = v90;
        }

        *(v4 + 96) = v87;
        *(v4 + 104) = v89;
        *(v4 + 112) = 0;
      }

      if ((*&v88 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v91 = v88;
        if ((*(v4 + 112) & 1) == 0)
        {
          v92 = *(v4 + 96);
          v91 = *(v4 + 104);
          if (v92 >= v88)
          {
            v92 = v88;
          }

          if (v88 > v91)
          {
            v91 = v88;
          }

          v88 = v92;
        }

        *(v4 + 96) = v88;
        *(v4 + 104) = v91;
        *(v4 + 112) = 0;
      }
    }
  }

  v33 = sub_1AAD311C4(&v118);
  v34 = a1[7];
  v115 = a1[6];
  v116 = v34;
  v117 = *(a1 + 16);
  v35 = a1[3];
  v111 = a1[2];
  v112 = v35;
  v36 = a1[5];
  v113 = a1[4];
  v114 = v36;
  v37 = a1[1];
  v109 = *a1;
  v110 = v37;
  v38 = sub_1AAD311C4(&v109);
  v101 = *(v33 + 8);
  v102 = *v33;
  v99 = *(v33 + 16);
  v39 = *(v33 + 32);
  v40 = *(v33 + 40);
  v41 = *(v33 + 48);
  v42 = *(v33 + 64);
  v43 = *(v33 + 72);
  v44 = *(v33 + 80);
  v45 = *(v33 + 96);
  v46 = *(v33 + 104);
  v47 = *(v33 + 112);
  v48 = *(v33 + 120);
  v49 = *(v33 + 128);
  v105 = v48;
  sub_1AAE51E00(v38, v108, sub_1AAE51E68);
  sub_1AAD04750(v42, v43, v44);

  sub_1AAD04750(v39, v40, v41);

  sub_1AAD04750(v102, v101, v99);

  if (v47)
  {
    v50 = swift_allocObject();
    *(v50 + 16) = v105;
    *(v50 + 24) = v49;
    v51 = swift_allocObject();
    *(v51 + 16) = v105;
    *(v51 + 24) = v49;
    swift_beginAccess();
    v52 = *(v107 + 240);
    swift_retain_n();

    v53 = swift_isUniquelyReferenced_nonNull_native();
    *(v107 + 240) = v52;
    if ((v53 & 1) == 0)
    {
      v52 = sub_1AAD691C4(0, *(v52 + 2) + 1, 1, v52);
      *(v107 + 240) = v52;
    }

    v55 = *(v52 + 2);
    v54 = *(v52 + 3);
    if (v55 >= v54 >> 1)
    {
      v52 = sub_1AAD691C4((v54 > 1), v55 + 1, 1, v52);
    }

    *(v52 + 2) = v55 + 1;
    v56 = &v52[32 * v55];
    *(v56 + 4) = sub_1AAE529F4;
    *(v56 + 5) = v50;
    *(v56 + 6) = sub_1AAE529FC;
    *(v56 + 7) = v51;
    *(v107 + 240) = v52;
    swift_endAccess();
  }

  v80 = sub_1AAF870B0(0, 0, 0, 1, v105, v49, v45, v46);
  v82 = v81;

  v83 = sub_1AAF870B4(0, 0, 0, 1, v105, v49, v45, v46);
  v85 = v84;

  if (v83 >= v80)
  {
    v83 = v80;
  }

  result = swift_beginAccess();
  if ((*&v83 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (*(v107 + 112))
    {
      v86 = v83;
    }

    else
    {
      v93 = *(v107 + 96);
      v86 = *(v107 + 104);
      if (v93 >= v83)
      {
        v93 = v83;
      }

      if (v83 > v86)
      {
        v86 = v83;
      }

      v83 = v93;
    }

    *(v107 + 96) = v83;
    *(v107 + 104) = v86;
    *(v107 + 112) = 0;
  }

  if (v82 > v85)
  {
    v94 = v82;
  }

  else
  {
    v94 = v85;
  }

  if ((*&v94 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (*(v107 + 112))
    {
      v95 = v94;
    }

    else
    {
      v96 = *(v107 + 96);
      v95 = *(v107 + 104);
      if (v96 >= v94)
      {
        v96 = v94;
      }

      if (v94 > v95)
      {
        v95 = v94;
      }

      v94 = v96;
    }

    *(v107 + 96) = v94;
    *(v107 + 104) = v95;
    *(v107 + 112) = 0;
  }

  return result;
}

uint64_t sub_1AAE51E00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AAE51E68(uint64_t a1)
{
  if (!qword_1EB425A78)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1AAE51F94();
    sub_1AACFDCAC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB425A78);
    }
  }
}

void sub_1AAE51F94()
{
  if (!qword_1EB425A80)
  {
    sub_1AAD26778(255, &qword_1EB423600, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB425A80);
    }
  }
}

uint64_t sub_1AAE52094(uint64_t a1)
{
  sub_1AACCF364();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAE5214C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t sub_1AAE52164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SgShapeStyle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE52210(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE52264(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE52318()
{
  result = type metadata accessor for Vectorizer();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAE52388(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1AAE524CC(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_1AAE52698(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAE526E8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 120) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 136) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      return result;
    }

    *(a1 + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1AAE52770(void *result, uint64_t a2)
{
  v2 = result[6] & 1;
  v3 = result[10] & 1;
  v4 = result[14] & 1 | (a2 << 63);
  result[2] &= 1uLL;
  result[6] = v2;
  result[10] = v3;
  result[14] = v4;
  return result;
}

void sub_1AAE527B8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1AAD26778(255, &qword_1ED9B29B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    sub_1AAD116F4();
    v3 = sub_1AAF8EFE4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

int8x16_t sub_1AAE52954(uint64_t a1)
{
  v1 = *(a1 + 64) & 0xFFFFFFFFFFFFFF8;
  v2 = *(a1 + 136) & 0xFFFFFFFFFFFFFF8 | 0x6000000000000000;
  *(a1 + 48) = vandq_s8(*(a1 + 48), xmmword_1AAF92DB0);
  *(a1 + 64) = v1;
  result = vandq_s8(*(a1 + 120), xmmword_1AAF92DC0);
  *(a1 + 120) = result;
  *(a1 + 136) = v2;
  return result;
}

void *BarMark.init<A>(x:yStart:yEnd:width:stacking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, int a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v22 = a8;
  v26 = a5;
  v25 = a4;
  v24 = a3;
  v23 = a2;
  v27 = a9;
  v14 = type metadata accessor for PlottableValue();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v21[-v17];
  (*(v15 + 16))(&v21[-v17], a1, v14, v16);
  sub_1AACD6F84(v18, a10, a11, &v47);
  (*(v15 + 8))(a1, v14);
  if (v50)
  {
    v30 = v49;
    v31 = v50;
    v28 = v47;
    v29 = v48;
    *&v32 = v51;
    *(&v32 + 1) = a6;
    LOBYTE(v33) = a7;
    sub_1AACD7CA8(&v28);
    v46[6] = v34;
    v46[7] = v35;
    v46[8] = v36;
    v46[2] = v30;
    v46[3] = v31;
    v46[4] = v32;
    v46[5] = v33;
    v46[0] = v28;
    v46[1] = v29;
    *&v37 = v23;
    BYTE8(v37) = v24 & 1;
    *&v38 = v25;
    BYTE8(v38) = v26 & 1;
    sub_1AAE52D28(&v37);
    v46[15] = v43;
    v46[16] = v44;
    v46[17] = v45;
    v46[11] = v39;
    v46[12] = v40;
    v46[13] = v41;
    v46[14] = v42;
    v46[9] = v37;
    v46[10] = v38;
  }

  else
  {
    v19 = v49;
    v30 = v49;
    v31 = v50;
    *&v32 = v51;
    v28 = v47;
    v29 = v48;
    BYTE8(v32) = v22;
    *(&v32 + 9) = 0;
    v33 = 0uLL;
    LOBYTE(v34) = 0;
    *(&v34 + 1) = 0;
    *&v35 = 0;
    BYTE8(v35) = -4;
    sub_1AACD7C5C(&v28);
    v46[6] = v34;
    v46[7] = v35;
    v46[8] = v36;
    v46[2] = v30;
    v46[3] = v31;
    v46[4] = v32;
    v46[5] = v33;
    v46[0] = v28;
    v46[1] = v29;
    *&v37 = v23;
    BYTE8(v37) = v24 & 1;
    *&v38 = v25;
    BYTE8(v38) = v26 & 1;
    sub_1AAE52D28(&v37);
    v46[15] = v43;
    v46[16] = v44;
    v46[17] = v45;
    v46[11] = v39;
    v46[12] = v40;
    v46[13] = v41;
    v46[14] = v42;
    v46[9] = v37;
    v46[10] = v38;
    sub_1AACCAE10(v19, *(&v19 + 1), 0);
  }

  return memcpy(v27, v46, 0x120uLL);
}

int8x16_t sub_1AAE52D28(uint64_t a1)
{
  v1 = *(a1 + 64) & 0xFFFFFFFFFFFFFF8;
  v2 = *(a1 + 136) & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
  *(a1 + 48) = vandq_s8(*(a1 + 48), xmmword_1AAF92DB0);
  *(a1 + 64) = v1;
  result = vandq_s8(*(a1 + 120), xmmword_1AAF92DC0);
  *(a1 + 120) = result;
  *(a1 + 136) = v2;
  return result;
}

void *BarMark.init<A>(xStart:xEnd:y:height:stacking:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v23 = a8;
  v25 = a7;
  v26 = a4;
  v24 = a6;
  v27 = a9;
  v15 = type metadata accessor for PlottableValue();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v22[-v18];
  (*(v16 + 16))(&v22[-v18], a5, v15, v17);
  sub_1AACD6F84(v19, a10, a11, &v47);
  (*(v16 + 8))(a5, v15);
  if (v50)
  {
    *&v28 = a1;
    BYTE8(v28) = a2 & 1;
    *&v29 = a3;
    BYTE8(v29) = v26 & 1;
    sub_1AAE52D28(&v28);
    v46[6] = v34;
    v46[7] = v35;
    v46[8] = v36;
    v46[2] = v30;
    v46[3] = v31;
    v46[4] = v32;
    v46[5] = v33;
    v46[0] = v28;
    v46[1] = v29;
    v39 = v49;
    v40 = v50;
    v37 = v47;
    v38 = v48;
    *&v41 = v51;
    *(&v41 + 1) = v24;
    LOBYTE(v42) = v25;
    sub_1AACD7CA8(&v37);
    v46[15] = v43;
    v46[16] = v44;
    v46[17] = v45;
    v46[11] = v39;
    v46[12] = v40;
    v46[13] = v41;
    v46[14] = v42;
    v46[9] = v37;
    v46[10] = v38;
  }

  else
  {
    v20 = v49;
    *&v28 = a1;
    BYTE8(v28) = a2 & 1;
    *&v29 = a3;
    BYTE8(v29) = v26 & 1;
    sub_1AAE52D28(&v28);
    v46[6] = v34;
    v46[7] = v35;
    v46[8] = v36;
    v46[2] = v30;
    v46[3] = v31;
    v46[4] = v32;
    v46[5] = v33;
    v46[0] = v28;
    v46[1] = v29;
    v39 = v49;
    v40 = v50;
    *&v41 = v51;
    v37 = v47;
    v38 = v48;
    BYTE8(v41) = v23;
    *(&v41 + 9) = 1;
    v42 = 0uLL;
    LOBYTE(v43) = 0;
    *(&v43 + 1) = 0;
    *&v44 = 0;
    BYTE8(v44) = -4;
    sub_1AACD7C5C(&v37);
    v46[15] = v43;
    v46[16] = v44;
    v46[17] = v45;
    v46[11] = v39;
    v46[12] = v40;
    v46[13] = v41;
    v46[14] = v42;
    v46[9] = v37;
    v46[10] = v38;
    sub_1AACCAE10(v20, *(&v20 + 1), 0);
  }

  return memcpy(v27, v46, 0x120uLL);
}

__n128 BarMark.init<A, B>(xStart:xEnd:y:height:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_1AAE83D50(a1, a2, a6, a8, v28);
  v17 = v28[7];
  *(a9 + 96) = v28[6];
  *(a9 + 112) = v17;
  *(a9 + 128) = v28[8];
  v18 = v28[3];
  *(a9 + 32) = v28[2];
  *(a9 + 48) = v18;
  v19 = v28[5];
  *(a9 + 64) = v28[4];
  *(a9 + 80) = v19;
  v20 = v28[1];
  *a9 = v28[0];
  *(a9 + 16) = v20;
  sub_1AAE83EF8(a3, a4, a5, a7, a10, v29);
  v21 = type metadata accessor for PlottableValue();
  (*(*(v21 - 8) + 8))(a3, v21);
  v22 = type metadata accessor for PlottableValue();
  v23 = *(*(v22 - 8) + 8);
  v23(a2, v22);
  v23(a1, v22);
  v24 = v29[7];
  *(a9 + 240) = v29[6];
  *(a9 + 256) = v24;
  *(a9 + 272) = v29[8];
  v25 = v29[3];
  *(a9 + 176) = v29[2];
  *(a9 + 192) = v25;
  v26 = v29[5];
  *(a9 + 208) = v29[4];
  *(a9 + 224) = v26;
  result = v29[1];
  *(a9 + 144) = v29[0];
  *(a9 + 160) = result;
  return result;
}

__n128 BarMark.init<A>(xStart:xEnd:yStart:yEnd:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, unint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_1AAE83D50(a1, a2, a7, a8, v26);
  v16 = type metadata accessor for PlottableValue();
  v17 = *(*(v16 - 8) + 8);
  v17(a2, v16);
  v17(a1, v16);
  v18 = v26[7];
  *(a9 + 96) = v26[6];
  *(a9 + 112) = v18;
  *(a9 + 128) = v26[8];
  v19 = v26[3];
  *(a9 + 32) = v26[2];
  *(a9 + 48) = v19;
  v20 = v26[5];
  *(a9 + 64) = v26[4];
  *(a9 + 80) = v20;
  v21 = v26[1];
  *a9 = v26[0];
  *(a9 + 16) = v21;
  *&v27 = a3;
  BYTE8(v27) = a4 & 1;
  v28.n128_u64[0] = a5;
  v28.n128_u8[8] = a6 & 1;
  sub_1AAE52D28(&v27);
  v22 = v34;
  *(a9 + 240) = v33;
  *(a9 + 256) = v22;
  *(a9 + 272) = v35;
  v23 = v30;
  *(a9 + 176) = v29;
  *(a9 + 192) = v23;
  v24 = v32;
  *(a9 + 208) = v31;
  *(a9 + 224) = v24;
  result = v28;
  *(a9 + 144) = v27;
  *(a9 + 160) = result;
  return result;
}

__n128 BarMark.init<A, B>(x:yStart:yEnd:width:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_1AAE83EF8(a1, a4, a5, a6, a8, v26);
  v15 = v26[7];
  *(a9 + 96) = v26[6];
  *(a9 + 112) = v15;
  *(a9 + 128) = v26[8];
  v16 = v26[3];
  *(a9 + 32) = v26[2];
  *(a9 + 48) = v16;
  v17 = v26[5];
  *(a9 + 64) = v26[4];
  *(a9 + 80) = v17;
  v18 = v26[1];
  *a9 = v26[0];
  *(a9 + 16) = v18;
  sub_1AAE83D50(a2, a3, a7, a10, v27);
  v19 = type metadata accessor for PlottableValue();
  v20 = *(*(v19 - 8) + 8);
  v20(a3, v19);
  v20(a2, v19);
  v21 = type metadata accessor for PlottableValue();
  (*(*(v21 - 8) + 8))(a1, v21);
  v22 = v27[7];
  *(a9 + 240) = v27[6];
  *(a9 + 256) = v22;
  *(a9 + 272) = v27[8];
  v23 = v27[3];
  *(a9 + 176) = v27[2];
  *(a9 + 192) = v23;
  v24 = v27[5];
  *(a9 + 208) = v27[4];
  *(a9 + 224) = v24;
  result = v27[1];
  *(a9 + 144) = v27[0];
  *(a9 + 160) = result;
  return result;
}

__n128 BarMark.init<A>(xStart:xEnd:yStart:yEnd:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&v25 = a1;
  BYTE8(v25) = a2 & 1;
  *&v26 = a3;
  BYTE8(v26) = a4 & 1;
  sub_1AAE52D28(&v25);
  v14 = v32;
  *(a9 + 96) = v31;
  *(a9 + 112) = v14;
  *(a9 + 128) = v33;
  v15 = v28;
  *(a9 + 32) = v27;
  *(a9 + 48) = v15;
  v16 = v30;
  *(a9 + 64) = v29;
  *(a9 + 80) = v16;
  v17 = v26;
  *a9 = v25;
  *(a9 + 16) = v17;
  sub_1AAE83D50(a5, a6, a7, a8, v24);
  v18 = type metadata accessor for PlottableValue();
  v19 = *(*(v18 - 8) + 8);
  v19(a6, v18);
  v19(a5, v18);
  v20 = v24[7];
  *(a9 + 240) = v24[6];
  *(a9 + 256) = v20;
  *(a9 + 272) = v24[8];
  v21 = v24[3];
  *(a9 + 176) = v24[2];
  *(a9 + 192) = v21;
  v22 = v24[5];
  *(a9 + 208) = v24[4];
  *(a9 + 224) = v22;
  result = v24[1];
  *(a9 + 144) = v24[0];
  *(a9 + 160) = result;
  return result;
}

uint64_t static BarMark._layoutChartContent(_:_:)(_OWORD *a1)
{
  v1 = a1[7];
  v13[6] = a1[6];
  v13[7] = v1;
  v2 = a1[9];
  v13[8] = a1[8];
  v3 = a1[3];
  v13[2] = a1[2];
  v13[3] = v3;
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[14];
  v7 = a1[16];
  v8 = a1[17];
  v14[6] = a1[15];
  v14[7] = v7;
  v14[8] = v8;
  v9 = a1[10];
  v10 = a1[12];
  v11 = a1[13];
  v14[2] = a1[11];
  v14[3] = v10;
  v14[4] = v11;
  v14[5] = v6;
  v14[0] = v2;
  v14[1] = v9;
  return sub_1AACD2B20(v13, v14);
}

unint64_t sub_1AAE53674(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = a1[7];
  v305[6] = a1[6];
  v305[7] = v6;
  v305[8] = a1[8];
  v7 = a1[3];
  v305[2] = a1[2];
  v305[3] = v7;
  v8 = a1[4];
  v305[5] = a1[5];
  v305[4] = v8;
  v9 = *a1;
  v305[1] = a1[1];
  v305[0] = v9;
  v10 = sub_1AACDB99C(v305);
  if (v10 == 5 || v10 == 3)
  {
    sub_1AACD2C84(v305);
    v11 = 0;
    v12 = 4;
    v13 = 1;
    v14 = a2;
    v15 = a1;
  }

  else
  {
    v13 = 0;
    v12 = 3;
    v11 = 1;
    v14 = a1;
    v15 = a2;
  }

  v16 = v14[7];
  *&__dst[96] = v14[6];
  *&__dst[112] = v16;
  v17 = v14[8];
  v18 = v14[3];
  *&__dst[32] = v14[2];
  *&__dst[48] = v18;
  v19 = v14[4];
  *&__dst[80] = v14[5];
  *&__dst[64] = v19;
  v20 = *v14;
  *&__dst[16] = v14[1];
  *__dst = v20;
  v21 = v15[6];
  v22 = v15[7];
  v23 = v15[4];
  *&__dst[224] = v15[5];
  *&__dst[240] = v21;
  v24 = v15[8];
  *&__dst[256] = v22;
  v288 = v24;
  v25 = v15[2];
  v26 = v15[3];
  v27 = *v15;
  *&__dst[160] = v15[1];
  *&__dst[176] = v25;
  *&__dst[192] = v26;
  *&__dst[208] = v23;
  *&__dst[128] = v17;
  *&__dst[144] = v27;
  v312 = *&__dst[96];
  v313 = *&__dst[112];
  v314 = v17;
  v308 = *&__dst[32];
  v309 = *&__dst[48];
  v311 = *&__dst[80];
  v310 = *&__dst[64];
  v307 = *&__dst[16];
  v306 = *__dst;
  v333[6] = *&__dst[240];
  v333[7] = *&__dst[256];
  v333[8] = v288;
  v333[2] = v25;
  v333[3] = v26;
  v333[5] = *&__dst[224];
  v333[4] = v23;
  v333[1] = *&__dst[160];
  v333[0] = v27;
  swift_beginAccess();
  memcpy(__dst, (a3 + 80), 0x102uLL);
  sub_1AAD5835C(a2, v276);
  sub_1AAD5835C(a1, v276);
  sub_1AACBB21C(__dst, v276);
  sub_1AACDBAD0(v13, &v289);
  sub_1AACBB254(__dst);
  if (v291)
  {
    *&v213[8] = v292;
    *&v213[24] = v293;
    *&v213[40] = v294;
    *&v252[7] = v289;
    *&v252[23] = v290;
    v212[0] = v12;
    *&v212[1] = *v252;
    *&v212[16] = *&v252[15];
    *v213 = v291;
    LOBYTE(v214) = 3;
    sub_1AAE0C0B0(v212);
    v276[6] = v215;
    v276[7] = v216;
    v276[8] = v217;
    *&v276[9] = v218;
    v276[2] = *v213;
    v276[3] = *&v213[16];
    v276[4] = *&v213[32];
    v276[5] = v214;
    v276[0] = *v212;
    v276[1] = *&v212[16];
    nullsub_1(v276, v28);
    v283 = v276[6];
    v284 = v276[7];
    v285 = v276[8];
    v286 = *&v276[9];
    v279 = v276[2];
    v280 = v276[3];
    v281 = v276[4];
    v282 = v276[5];
    v277 = v276[0];
    v278 = v276[1];
  }

  else
  {
    sub_1AAE2D7EC(&v277);
  }

  sub_1AAD6D0FC();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1AAF9E2B0;
  sub_1AAD5835C(v333, v276);
  sub_1AAF72B20(v11, v333, v295);
  v30 = v295[7];
  *(v29 + 128) = v295[6];
  *(v29 + 144) = v30;
  *(v29 + 160) = v295[8];
  *(v29 + 176) = v296;
  v31 = v295[3];
  *(v29 + 64) = v295[2];
  *(v29 + 80) = v31;
  v32 = v295[5];
  *(v29 + 96) = v295[4];
  *(v29 + 112) = v32;
  v33 = v295[1];
  v34 = a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  *(v29 + 32) = v295[0];
  *(v29 + 48) = v33;
  swift_beginAccess();
  v35 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v36 = (v34 + v35[17]);
  v275 = *(v36 + 8);
  v37 = v36[3];
  v273 = v36[2];
  v274 = v37;
  v38 = *v36;
  v272 = v36[1];
  v271 = v38;
  if (*(&v272 + 1))
  {
    *&v252[7] = *v36;
    v39 = v36[3];
    *&v213[8] = v36[2];
    *&v252[23] = *(v36 + 2);
    *&v213[24] = v39;
    *&v213[40] = *(v36 + 8);
    v212[0] = 5;
    *&v212[1] = *v252;
    *&v212[16] = *&v252[15];
    *v213 = *(&v272 + 1);
    LOBYTE(v214) = 3;
    sub_1AAE0C0B0(v212);
    v276[6] = v215;
    v276[7] = v216;
    v276[8] = v217;
    *&v276[9] = v218;
    v276[2] = *v213;
    v276[3] = *&v213[16];
    v276[4] = *&v213[32];
    v276[5] = v214;
    v276[0] = *v212;
    v276[1] = *&v212[16];
    nullsub_1(v276, v40);
    v267 = v276[6];
    v268 = v276[7];
    v269 = v276[8];
    v270 = *&v276[9];
    v263 = v276[2];
    v264 = v276[3];
    v265 = v276[4];
    v266 = v276[5];
    v261 = v276[0];
    v262 = v276[1];
  }

  else
  {
    sub_1AAE2D7EC(&v261);
  }

  v41 = v267;
  v42 = v269;
  *(v29 + 296) = v268;
  *(v29 + 312) = v42;
  v43 = v264;
  *(v29 + 216) = v263;
  *(v29 + 232) = v43;
  v44 = v266;
  *(v29 + 248) = v265;
  *(v29 + 264) = v44;
  *(v29 + 280) = v41;
  v45 = v262;
  *(v29 + 184) = v261;
  *(v29 + 328) = v270;
  *(v29 + 200) = v45;
  v46 = MEMORY[0x1E69E6720];
  sub_1AAE5533C(&v271, v276, qword_1ED9B3D88, &type metadata for AnyPlottableValue, MEMORY[0x1E69E6720]);
  v211 = sub_1AAF70438(v29);
  v209 = v47;
  swift_setDeallocating();
  sub_1AAD04A08(0, qword_1ED9B2098, &type metadata for AccessibilityDataField, v46);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v334[6] = v312;
  v334[7] = v313;
  v334[8] = v314;
  v334[2] = v308;
  v334[3] = v309;
  v334[5] = v311;
  v334[4] = v310;
  v334[1] = v307;
  v334[0] = v306;
  v48 = sub_1AACDB99C(v334);
  v210 = v13;
  if (v48 != 2)
  {
    if (v48)
    {
      sub_1AAE49270(v212);
LABEL_73:
      sub_1AAD036DC(a1, 0, v300);
      v148 = v300[0];
      v149 = v300[1];
      sub_1AAD036DC(a2, 1, &v301);
      if (v149 >= v148)
      {
        v150 = v148;
      }

      else
      {
        v150 = v149;
      }

      if (v302 >= v301)
      {
        v151 = v301;
      }

      else
      {
        v151 = v302;
      }

      v152 = vabdd_f64(v149, v148);
      v153 = vabdd_f64(v302, v301);
      v276[8] = v217;
      v276[9] = v218;
      *&v276[10] = v219;
      v276[4] = *&v213[32];
      v276[5] = v214;
      v276[7] = v216;
      v276[6] = v215;
      v276[0] = *v212;
      v276[1] = *&v212[16];
      v155 = *v213;
      v154 = *&v213[16];
      goto LABEL_87;
    }

    v49 = sub_1AACD2C84(v334);
    v337 = *v49;
    v50 = *(v49 + 24);
    v338 = *(v49 + 16);
    v339 = v50;
    v335 = *(v49 + 32);
    v336 = *(v49 + 48);
    v315 = v337;
    v316 = v338;
    v317 = v50;
    v318 = v335;
    v319 = v336;
    *&v320[15] = *(v49 + 64);
    *v320 = *(v49 + 49);
    v340 = v337;
    v341 = v338;
    v343 = v336;
    v342 = v335;
    v206 = a2;
    v51 = (a3 + 80);
    if (v13)
    {
      memcpy(v276, v51, 0x102uLL);
      if (*&v276[7])
      {
        v52 = *(a3 + 216);
        *v213 = *(a3 + 200);
        *&v213[16] = v52;
        *&v213[32] = *(a3 + 232);
        LOBYTE(v214) = *(a3 + 248);
        v53 = *(a3 + 184);
        *v212 = *(a3 + 168);
        *&v212[16] = v53;
        sub_1AAE14D50(&v342, v252);

        sub_1AADFA6FC(&v340, v252);
        sub_1AAE5533C(&v339, v252, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
        v222 = *v213;
        v223 = *&v213[16];
        v224 = *&v213[32];
        LOBYTE(v225) = v214;
        v220 = *v212;
        v221 = *&v212[16];
LABEL_16:
        v54 = *(&v224 + 1);
        v55 = v222;
        v56 = v223;
        v57 = v225;
        sub_1AAE5533C(&v276[5] + 8, v212, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AAE0BFDC(&v220, v212);
        sub_1AAE0A738(v55, *(&v55 + 1), v56, v54, v57, 4, &v297);
        v200 = v298;
        v203 = v297;
        v58 = v299;
        sub_1AAE0C014(&v220);
        sub_1AAD04750(v220, *(&v220 + 1), v221);

        sub_1AAD0E818(v55, *(&v55 + 1), v56);
        v60 = v200;
        v59 = v203;
        goto LABEL_53;
      }

      if (BYTE1(v276[16]) == 2)
      {
        sub_1AAE14D50(&v342, v212);

        sub_1AADFA6FC(&v340, v212);
        sub_1AAE5533C(&v339, v212, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      }

      else
      {
        sub_1AAE14D50(&v342, v212);

        sub_1AADFA6FC(&v340, v212);
        sub_1AAE5533C(&v339, v212, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
        sub_1AACBB21C(v276, v212);
        v113 = sub_1AAF8E7A4();
        if (v113 == sub_1AAF8E7A4())
        {
          sub_1AAE5533C(&v276[11], v212, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
          sub_1AACBB254(v276);
          if (*(&v276[12] + 1))
          {
            v220 = v276[11];
            v221 = v276[12];
            v222 = v276[13];
            v223 = v276[14];
            v224 = v276[15];
            LOBYTE(v225) = v276[16];
            goto LABEL_16;
          }
        }

        else
        {
          sub_1AACBB254(v276);
        }
      }

      v59 = 0uLL;
      v58 = 2;
      v60 = 0uLL;
LABEL_53:
      v117 = (v34 + v35[22]);
      v118 = *(v117 + 2);
      v327 = *v117;
      v328 = v118;
      v329 = v59;
      v330 = v60;
      v331 = v58;
      v332 = *(a3 + 368);
      v119 = (a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
      v120 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80);
      v255 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64);
      *v256 = v120;
      *&v256[9] = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89);
      v121 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16);
      *v252 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
      *&v252[16] = v121;
      v122 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32);
      v254 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48);
      v253 = v122;
      if (v256[24] != 255)
      {
        v123 = v119[5];
        v246 = v119[4];
        *v247 = v123;
        *&v247[9] = *(v119 + 89);
        v124 = v119[1];
        v242 = *v119;
        v243 = v124;
        v125 = v119[3];
        v244 = v119[2];
        v245 = v125;
        v321 = v242;
        v322 = v124;
        v323 = v244;
        v324 = v125;
        v325 = v246;
        v326[0] = v123;
        *(v326 + 9) = *&v247[9];
        sub_1AAE5533C(&v242, v212, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
        v126 = a3;
        v127 = 1;
LABEL_59:
        sub_1AAE08D1C(&v321, v126, v127, &v315, v212);
        sub_1AAD0F610(v252, sub_1AACCF364);
        nullsub_1(v212, v137);

        sub_1AAD6E0DC(&v340);
        sub_1AAE491F0(&v339);
        sub_1AAD6E18C(&v342);
LABEL_61:
        a2 = v206;
        goto LABEL_71;
      }

      goto LABEL_60;
    }

    memcpy(v276, v51, 0x102uLL);
    if (*(&v276[1] + 1))
    {
      v80 = *(a3 + 128);
      *v213 = *(a3 + 112);
      *&v213[16] = v80;
      *&v213[32] = *(a3 + 144);
      LOBYTE(v214) = *(a3 + 160);
      v81 = *(a3 + 96);
      *v212 = *(a3 + 80);
      *&v212[16] = v81;
      sub_1AAE14D50(&v342, v252);

      sub_1AADFA6FC(&v340, v252);
      sub_1AAE5533C(&v339, v252, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      v222 = *v213;
      v223 = *&v213[16];
      v224 = *&v213[32];
      LOBYTE(v225) = v214;
      v220 = *v212;
      v221 = *&v212[16];
LABEL_24:
      v82 = *(&v224 + 1);
      v83 = v222;
      v84 = v223;
      v85 = v225;
      sub_1AAE5533C(v276, v212, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v220, v212);
      sub_1AAE0A738(v83, *(&v83 + 1), v84, v82, v85, 3, &v297);
      v202 = v298;
      v204 = v297;
      v86 = v299;
      sub_1AAE0C014(&v220);
      sub_1AAD04750(v220, *(&v220 + 1), v221);

      sub_1AAD0E818(v83, *(&v83 + 1), v84);
      v88 = v202;
      v87 = v204;
      goto LABEL_57;
    }

    if (BYTE1(v276[16]) == 2)
    {
      sub_1AAE14D50(&v342, v212);

      sub_1AADFA6FC(&v340, v212);
      sub_1AAE5533C(&v339, v212, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    }

    else
    {
      sub_1AAE14D50(&v342, v212);

      sub_1AADFA6FC(&v340, v212);
      sub_1AAE5533C(&v339, v212, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AACBB21C(v276, v212);
      v114 = sub_1AAF8E7A4();
      if (v114 == sub_1AAF8E7A4())
      {
        sub_1AAE5533C(&v276[11], v212, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AACBB254(v276);
        if (*(&v276[12] + 1))
        {
          v220 = v276[11];
          v221 = v276[12];
          v222 = v276[13];
          v223 = v276[14];
          v224 = v276[15];
          LOBYTE(v225) = v276[16];
          goto LABEL_24;
        }
      }

      else
      {
        sub_1AACBB254(v276);
      }
    }

    v87 = 0uLL;
    v86 = 2;
    v88 = 0uLL;
LABEL_57:
    v128 = (v34 + v35[21]);
    v129 = *(v128 + 2);
    v327 = *v128;
    v328 = v129;
    v329 = v87;
    v330 = v88;
    v331 = v86;
    v332 = *(a3 + 352);
    v130 = (a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
    v131 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
    v255 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
    *v256 = v131;
    *&v256[9] = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
    v132 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
    *v252 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
    *&v252[16] = v132;
    v133 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
    v254 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
    v253 = v133;
    if (v256[24] != 255)
    {
      v134 = v130[5];
      v246 = v130[4];
      *v247 = v134;
      *&v247[9] = *(v130 + 89);
      v135 = v130[1];
      v242 = *v130;
      v243 = v135;
      v136 = v130[3];
      v244 = v130[2];
      v245 = v136;
      v321 = v242;
      v322 = v135;
      v323 = v244;
      v324 = v136;
      v325 = v246;
      v326[0] = v134;
      *(v326 + 9) = *&v247[9];
      sub_1AAE5533C(&v242, v212, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
      v126 = a3;
      v127 = 0;
      goto LABEL_59;
    }

LABEL_60:

    sub_1AAD6E0DC(&v340);
    sub_1AAE491F0(&v339);
    sub_1AAD6E18C(&v342);
    sub_1AAE49270(v212);
    goto LABEL_61;
  }

  v61 = sub_1AACD2C84(v334);
  v63 = *v61;
  v62 = *(v61 + 8);
  v64 = *(v61 + 16);
  *(&v316 + 1) = *(v61 + 17);
  HIDWORD(v316) = *(v61 + 20);
  v65 = *(v61 + 24);
  v66 = *(v61 + 32);
  v67 = *(v61 + 40);
  v68 = *(v61 + 48);
  v199 = v63;
  v201 = v62;
  *&v315 = v63;
  *(&v315 + 1) = v62;
  v198 = v64;
  LOBYTE(v316) = v64;
  v317 = v65;
  *&v318 = v66;
  *(&v318 + 1) = v67;
  v319 = v68;
  *v320 = *(v61 + 49);
  *&v320[15] = *(v61 + 64);
  v196 = v67;
  v197 = v66;
  if (v13)
  {
    v207 = a2;
    memcpy(v276, (a3 + 80), 0x102uLL);
    if (*&v276[7])
    {
      v69 = *(a3 + 216);
      *v213 = *(a3 + 200);
      *&v213[16] = v69;
      *&v213[32] = *(a3 + 232);
      LOBYTE(v214) = *(a3 + 248);
      v70 = *(a3 + 184);
      *v212 = *(a3 + 168);
      *&v212[16] = v70;

      v71 = v68;
      sub_1AACD7C50(v66, v67, v68);
      sub_1AACD7304(v199, v201, v198 & 1);
      v222 = *v213;
      v223 = *&v213[16];
      v224 = *&v213[32];
      LOBYTE(v225) = v214;
      v220 = *v212;
      v221 = *&v212[16];

LABEL_20:
      v72 = *(&v224 + 1);
      v74 = *(&v222 + 1);
      v73 = v222;
      v75 = v223;
      v76 = v225;
      sub_1AAE5533C(&v276[5] + 8, v212, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v220, v212);
      sub_1AAE0A738(v73, v74, v75, v72, v76, 4, &v297);
      v191 = v298;
      v194 = v297;
      v77 = v299;
      sub_1AAE0C014(&v220);
      sub_1AAD04750(v220, *(&v220 + 1), v221);

      sub_1AAD0E818(v73, v74, v75);
      v79 = v191;
      v78 = v194;
      v68 = v71;
LABEL_34:
      v66 = v197;
      goto LABEL_35;
    }

    v99 = v66;
    v100 = BYTE1(v276[16]);

    sub_1AACD7C50(v99, v67, v68);
    sub_1AACD7304(v199, v201, v198 & 1);

    v78 = 0uLL;
    if (v100 == 2)
    {
      v77 = 2;
      v79 = 0uLL;
      goto LABEL_34;
    }

    v71 = v68;
    sub_1AACBB21C(v276, v212);
    v115 = sub_1AAF8E7A4();
    if (v115 == sub_1AAF8E7A4())
    {
      sub_1AAE5533C(&v276[11], v212, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AACBB254(v276);
      v66 = v197;
      if (*(&v276[12] + 1))
      {
        v220 = v276[11];
        v221 = v276[12];
        v222 = v276[13];
        v223 = v276[14];
        v224 = v276[15];
        LOBYTE(v225) = v276[16];
        goto LABEL_20;
      }

      v77 = 2;
      v79 = 0uLL;
      v78 = 0uLL;
    }

    else
    {
      sub_1AACBB254(v276);
      v77 = 2;
      v79 = 0uLL;
      v66 = v197;
      v78 = 0uLL;
    }

LABEL_35:
    v101 = (v34 + v35[22]);
    v102 = *(v101 + 2);
    v327 = *v101;
    v328 = v102;
    v329 = v78;
    v330 = v79;
    v331 = v77;
    v332 = *(a3 + 368);
    v103 = (a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
    v104 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80);
    v255 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64);
    *v256 = v104;
    *&v256[9] = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89);
    v105 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16);
    *v252 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
    *&v252[16] = v105;
    v106 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32);
    v254 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48);
    v253 = v106;
    a2 = v207;
    if (v256[24] != 255)
    {
      v107 = v103[5];
      v246 = v103[4];
      *v247 = v107;
      *&v247[9] = *(v103 + 89);
      v108 = v103[1];
      v242 = *v103;
      v243 = v108;
      v109 = v103[3];
      v244 = v103[2];
      v245 = v109;
      v321 = v242;
      v322 = v108;
      v323 = v244;
      v324 = v109;
      v325 = v246;
      v326[0] = v107;
      *(v326 + 9) = *&v247[9];
      sub_1AAE5533C(&v242, v212, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
      v110 = a3;
      v111 = 1;
LABEL_69:
      sub_1AAE08D1C(&v321, v110, v111, &v315, v212);
      sub_1AAD0F610(v252, sub_1AACCF364);
      nullsub_1(v212, v147);

      sub_1AAD04750(v199, v201, v198 & 1);

      sub_1AAD0E818(v66, v196, v68);
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  memcpy(v276, (a3 + 80), 0x102uLL);
  if (*(&v276[1] + 1))
  {
    v89 = *(a3 + 128);
    *v213 = *(a3 + 112);
    *&v213[16] = v89;
    *&v213[32] = *(a3 + 144);
    LOBYTE(v214) = *(a3 + 160);
    v90 = *(a3 + 96);
    *v212 = *(a3 + 80);
    *&v212[16] = v90;

    v195 = v68;
    sub_1AACD7C50(v66, v67, v68);
    sub_1AACD7304(v199, v201, v198 & 1);
    v222 = *v213;
    v223 = *&v213[16];
    v224 = *&v213[32];
    LOBYTE(v225) = v214;
    v220 = *v212;
    v221 = *&v212[16];

LABEL_27:
    v91 = *(&v224 + 1);
    v93 = *(&v222 + 1);
    v92 = v222;
    v94 = v223;
    v95 = v225;
    sub_1AAE5533C(v276, v212, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
    sub_1AAE0BFDC(&v220, v212);
    sub_1AAE0A738(v92, v93, v94, v91, v95, 3, &v297);
    v190 = v298;
    v192 = v297;
    v96 = v299;
    sub_1AAE0C014(&v220);
    sub_1AAD04750(v220, *(&v220 + 1), v221);

    sub_1AAD0E818(v92, v93, v94);
    v98 = v190;
    v97 = v192;
    v68 = v195;
    v66 = v197;
    goto LABEL_67;
  }

  v193 = v35;
  v112 = BYTE1(v276[16]);

  sub_1AACD7C50(v66, v67, v68);
  sub_1AACD7304(v199, v201, v198 & 1);

  v97 = 0uLL;
  if (v112 == 2)
  {
    v96 = 2;
    v98 = 0uLL;
    v35 = v193;
  }

  else
  {
    v195 = v68;
    sub_1AACBB21C(v276, v212);
    v116 = sub_1AAF8E7A4();
    if (v116 == sub_1AAF8E7A4())
    {
      sub_1AAE5533C(&v276[11], v212, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AACBB254(v276);
      v66 = v197;
      v35 = v193;
      if (*(&v276[12] + 1))
      {
        v220 = v276[11];
        v221 = v276[12];
        v222 = v276[13];
        v223 = v276[14];
        v224 = v276[15];
        LOBYTE(v225) = v276[16];
        goto LABEL_27;
      }

      v96 = 2;
      v98 = 0uLL;
    }

    else
    {
      sub_1AACBB254(v276);
      v96 = 2;
      v98 = 0uLL;
      v66 = v197;
      v35 = v193;
    }

    v97 = 0uLL;
  }

LABEL_67:
  v138 = (v34 + v35[21]);
  v139 = *(v138 + 2);
  v327 = *v138;
  v328 = v139;
  v329 = v97;
  v330 = v98;
  v331 = v96;
  v332 = *(a3 + 352);
  v140 = (a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
  v141 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
  v255 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
  *v256 = v141;
  *&v256[9] = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
  v142 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
  *v252 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
  *&v252[16] = v142;
  v143 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
  v254 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
  v253 = v143;
  if (v256[24] != 255)
  {
    v144 = v140[5];
    v246 = v140[4];
    *v247 = v144;
    *&v247[9] = *(v140 + 89);
    v145 = v140[1];
    v242 = *v140;
    v243 = v145;
    v146 = v140[3];
    v244 = v140[2];
    v245 = v146;
    v321 = v242;
    v322 = v145;
    v323 = v244;
    v324 = v146;
    v325 = v246;
    v326[0] = v144;
    *(v326 + 9) = *&v247[9];
    sub_1AAE5533C(&v242, v212, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
    v110 = a3;
    v111 = 0;
    goto LABEL_69;
  }

LABEL_70:

  sub_1AAD04750(v199, v201, v198 & 1);

  sub_1AAD0E818(v66, v196, v68);
  sub_1AAE49270(v212);
LABEL_71:
  v258 = v217;
  v259 = v218;
  v260 = v219;
  v255 = *&v213[32];
  *v256 = v214;
  v257 = v216;
  *&v256[16] = v215;
  *v252 = *v212;
  *&v252[16] = *&v212[16];
  v254 = *&v213[16];
  v253 = *v213;
  v249 = v217;
  v250 = v218;
  v251 = v219;
  v246 = *&v213[32];
  *v247 = v214;
  *&v247[16] = v215;
  v248 = v216;
  v242 = *v212;
  v243 = *&v212[16];
  v244 = *v213;
  v245 = *&v213[16];
  if (sub_1AAE492A8(&v242) == 1)
  {
    v217 = v258;
    v218 = v259;
    v219 = v260;
    *&v213[32] = v255;
    v214 = *v256;
    v215 = *&v256[16];
    v216 = v257;
    *v212 = *v252;
    *&v212[16] = *&v252[16];
    *v213 = v253;
    *&v213[16] = v254;
    goto LABEL_73;
  }

  sub_1AAD036DC(a1, 0, &v301);
  v156 = v303;
  v157 = v304;
  sub_1AAD036DC(a2, 1, v212);
  if (v157 >= v156)
  {
    v150 = v156;
  }

  else
  {
    v150 = v157;
  }

  if (*&v213[8] >= *v213)
  {
    v151 = *v213;
  }

  else
  {
    v151 = *&v213[8];
  }

  v152 = vabdd_f64(v157, v156);
  v153 = vabdd_f64(*&v213[8], *v213);
  v276[8] = v258;
  v276[9] = v259;
  *&v276[10] = v260;
  v276[4] = v255;
  v276[5] = *v256;
  v276[7] = v257;
  v276[6] = *&v256[16];
  v276[0] = *v252;
  v276[1] = *&v252[16];
  v154 = v254;
  v155 = v253;
LABEL_87:
  v276[3] = v154;
  v276[2] = v155;
  v205 = *(*(a3 + 16) + 24);
  v158 = (v34 + v35[25]);
  v159 = v158[1];
  v208 = *v158;
  v160 = v35[24];
  v161 = (v34 + v35[23]);
  v163 = *v161;
  v162 = v161[1];
  v165 = v161[2];
  v164 = v161[3];
  v166 = (v34 + v160);
  v168 = *(v34 + v160);
  v167 = v166[1];
  v169 = v166[2];
  v170 = v166[3];

  sub_1AADA61DC(v163, v162, v165, v164);
  sub_1AADA61DC(v168, v167, v169, v170);
  sub_1AAF72B20(v210, &v306, v240);
  sub_1AADC7F60(v333);

  v249 = v276[8];
  v250 = v276[9];
  v251 = *&v276[10];
  v246 = v276[4];
  *v247 = v276[5];
  *&v247[16] = v276[6];
  v248 = v276[7];
  v242 = v276[0];
  v243 = v276[1];
  v244 = v276[2];
  v245 = v276[3];
  if (sub_1AAE492A8(&v242) == 1)
  {
    sub_1AAE2D7EC(&v230);
  }

  else
  {
    v226 = v248;
    v227 = v249;
    v228 = v250;
    v229 = v251;
    v222 = v245;
    v223 = v246;
    v224 = *v247;
    v225 = *&v247[16];
    v220 = v243;
    v221 = v244;
    nullsub_1(&v220, v171);
    v236 = v226;
    v237 = v227;
    v238 = v228;
    v239 = v229;
    v232 = v222;
    v233 = v223;
    v234 = v224;
    v235 = v225;
    v230 = v220;
    v231 = v221;
  }

  v172 = swift_allocObject();
  *(v172 + 16) = v205;
  *(v172 + 24) = v150;
  *(v172 + 32) = v151;
  *(v172 + 40) = v152;
  *(v172 + 48) = v153;
  *&v173 = v208;
  *(&v173 + 1) = v159;
  *&v174 = v163;
  *(&v174 + 1) = v162;
  *(v172 + 72) = v174;
  *&v174 = v165;
  *(&v174 + 1) = v164;
  *&v175 = v168;
  *(&v175 + 1) = v167;
  *(v172 + 56) = v173;
  *(v172 + 104) = v175;
  *(v172 + 88) = v174;
  *(v172 + 120) = v169;
  *(v172 + 128) = v170;
  *(v172 + 136) = v211;
  v176 = v240[7];
  *(v172 + 240) = v240[6];
  *(v172 + 256) = v176;
  *(v172 + 272) = v240[8];
  v177 = v241;
  v178 = v240[3];
  *(v172 + 176) = v240[2];
  *(v172 + 192) = v178;
  v179 = v240[5];
  *(v172 + 208) = v240[4];
  *(v172 + 224) = v179;
  v180 = v240[1];
  *(v172 + 144) = v240[0];
  *(v172 + 160) = v180;
  *(v172 + 288) = v177;
  *(v172 + 296) = v209;
  v181 = v237;
  *(v172 + 400) = v236;
  *(v172 + 416) = v181;
  *(v172 + 432) = v238;
  *(v172 + 448) = v239;
  v182 = v233;
  *(v172 + 336) = v232;
  *(v172 + 352) = v182;
  v183 = v235;
  *(v172 + 368) = v234;
  *(v172 + 384) = v183;
  v184 = v231;
  *(v172 + 304) = v230;
  *(v172 + 320) = v184;
  v185 = v284;
  *(v172 + 552) = v283;
  *(v172 + 568) = v185;
  *(v172 + 584) = v285;
  *(v172 + 600) = v286;
  v186 = v280;
  *(v172 + 488) = v279;
  *(v172 + 504) = v186;
  v187 = v282;
  *(v172 + 520) = v281;
  *(v172 + 536) = v187;
  v188 = v278;
  *(v172 + 456) = v277;
  *(v172 + 472) = v188;
  *(v172 + 608) = 256;
  result = v172 | 0xC000000000000000;
  *(v172 + 616) = 0;
  return result;
}

uint64_t sub_1AAE551B4(uint64_t a1)
{
  sub_1AACAE13C(0, &qword_1ED9B5558, MEMORY[0x1E697F488]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAE5522C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 3) & 0xFFFFFFE0 | (*(a1 + 48) >> 2) & 0x1F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAE55280(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 280) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 288) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (8 * -a2) & 0x7FFFFFF00 | (4 * (-a2 & 0x1FLL));
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0;
      return result;
    }

    *(a1 + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAE5533C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AAD04A08(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t BarPlot<A>.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE0800(v2, v4, a2);
  sub_1AACE0800(v7, v4, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t BarPlot.init<A, B, C>(_:x:y:width:height:stacking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v72 = a8;
  v79 = a6;
  v83 = a3;
  v84 = a2;
  v82 = a1;
  v80 = a9;
  v73 = a12;
  v76 = a13;
  v75 = a10;
  v65 = a11;
  swift_getAssociatedTypeWitness();
  v70 = type metadata accessor for PlottableProjection();
  v68 = *(v70 - 8);
  v71 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v61 - v16;
  v17 = type metadata accessor for PlottableProjection();
  v81 = *(v17 - 8);
  v18 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v61 - v19;
  v63 = &v61 - v19;
  v21 = a7;
  v69 = *(a7 - 8);
  v22 = v69;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v25;
  v26 = type metadata accessor for VectorizedBarPlotContent();
  v77 = *(v26 - 8);
  v78 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v74 = &v61 - v27;
  v28 = a4[5];
  v89 = a4[4];
  v90 = v28;
  v91 = a4[6];
  v92 = *(a4 + 112);
  v29 = a4[1];
  v85 = *a4;
  v86 = v29;
  v30 = a4[3];
  v87 = a4[2];
  v88 = v30;
  v31 = *a5;
  v32 = a5[1];
  v33 = a5[3];
  v95 = a5[2];
  v96 = v33;
  v93 = v31;
  v94 = v32;
  v34 = a5[4];
  v35 = a5[5];
  v36 = a5[6];
  v100 = *(a5 + 112);
  v98 = v35;
  v99 = v36;
  v97 = v34;
  v37 = *(v22 + 16);
  v64 = v21;
  v37(v25, v82, v21);
  v38 = v81;
  v39 = v17;
  (*(v81 + 16))(v20, v84, v17);
  v40 = v67;
  v41 = v68;
  v42 = v70;
  (*(v68 + 16))(v67, v83, v70);
  v43 = (*(v38 + 80) + 64) & ~*(v38 + 80);
  v44 = (v18 + *(v41 + 80) + v43) & ~*(v41 + 80);
  v62 = (v44 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v44 + v71 + 127) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = v72;
  *(v45 + 2) = v21;
  *(v45 + 3) = v46;
  v47 = v65;
  *(v45 + 4) = v75;
  *(v45 + 5) = v47;
  v48 = v76;
  *(v45 + 6) = v73;
  *(v45 + 7) = v48;
  (*(v38 + 32))(&v45[v43], v63, v39);
  v49 = v42;
  (*(v41 + 32))(&v45[v44], v40, v42);
  v50 = &v45[v62];
  v51 = v88;
  *(v50 + 2) = v87;
  *(v50 + 3) = v51;
  v52 = v86;
  *v50 = v85;
  *(v50 + 1) = v52;
  v50[112] = v92;
  v53 = v91;
  *(v50 + 5) = v90;
  *(v50 + 6) = v53;
  *(v50 + 4) = v89;
  v54 = &v45[v71];
  v55 = v98;
  *(v54 + 4) = v97;
  *(v54 + 5) = v55;
  *(v54 + 6) = v99;
  v54[112] = v100;
  v56 = v94;
  *v54 = v93;
  *(v54 + 1) = v56;
  v57 = v96;
  *(v54 + 2) = v95;
  *(v54 + 3) = v57;
  v54[113] = v79;
  v58 = v74;
  v59 = v64;
  sub_1AAE56040(v66, sub_1AAE55EBC, v45, v64, &type metadata for BarMark, v47, &protocol witness table for BarMark, v74);
  (*(v41 + 8))(v83, v49);
  (*(v81 + 8))(v84, v39);
  (*(v69 + 8))(v82, v59);
  return (*(v77 + 32))(v80, v58, v78);
}

void *sub_1AAE55A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v61 = a6;
  v59 = a3;
  v60 = a5;
  v52 = a4;
  v58 = a2;
  v64 = a1;
  v62 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = a12;
  v67 = a9;
  v14 = type metadata accessor for PlottableProjection();
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v51 - v15;
  v16 = type metadata accessor for PlottableValue();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v65 = &v51 - v17;
  v18 = a7;
  v63 = a11;
  v51 = type metadata accessor for PlottableProjection();
  v19 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v21 = &v51 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v51 - v24;
  v57 = v18;
  v26 = type metadata accessor for PlottableValue();
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v51 - v28;
  v56 = &v51 - v28;
  v30 = *(v22 + 16);
  v31 = v64;
  v30(v25, v64, AssociatedTypeWitness, v27);
  (*(v19 + 16))(v21, v58, v51);
  sub_1AAF30D00(v25, v21, v18, AssociatedTypeWitness, v63, v29);
  (v30)(v25, v31, AssociatedTypeWitness);
  v32 = v53;
  (*(v54 + 16))(v53, v59, v55);
  sub_1AAF30D00(v25, v32, v67, AssociatedTypeWitness, v66, v65);
  (v30)(v25, v31, AssociatedTypeWitness);
  v33 = v52;
  v34 = *(v52 + 64);
  v35 = *(v52 + 96);
  v69[5] = *(v52 + 80);
  v69[6] = v35;
  v36 = *(v52 + 16);
  v69[0] = *v52;
  v37 = *(v52 + 32);
  v38 = *(v52 + 48);
  v69[1] = v36;
  v69[2] = v37;
  LOBYTE(v69[7]) = *(v52 + 112);
  v69[3] = v38;
  v69[4] = v34;
  v39 = type metadata accessor for MarkDimensions();
  v40 = *(*(v39 - 8) + 16);
  (v40)(v68, v33, v39);
  v41 = sub_1AAF312D4(v25, v69, AssociatedTypeWitness);
  LODWORD(v59) = v42;
  (v30)(v25, v64, AssociatedTypeWitness);
  v43 = *(v60 + 64);
  v44 = *(v60 + 96);
  v69[5] = *(v60 + 80);
  v69[6] = v44;
  v45 = *(v60 + 16);
  v69[0] = *v60;
  v46 = *(v60 + 32);
  v47 = *(v60 + 48);
  v69[1] = v45;
  v69[2] = v46;
  LOBYTE(v69[7]) = *(v60 + 112);
  v69[3] = v47;
  v69[4] = v43;
  v40(v68);
  v48 = sub_1AAF312D4(v25, v69, AssociatedTypeWitness);
  BarMark.init<A, B>(x:y:width:height:stacking:)(v56, v65, v41, v59, v48, v49, v61, v57, v69, v67, v63, v66);
  return memcpy(v62, v69, 0x120uLL);
}

void *sub_1AAE55EBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for PlottableProjection() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for PlottableProjection() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  return sub_1AAE55A04(a1, v2 + v9, v2 + v12, v2 + ((v12 + *(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8), v2 + ((v12 + *(v11 + 64) + 127) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((v12 + *(v11 + 64) + 127) & 0xFFFFFFFFFFFFFFF8) + 113), v3, a2, v4, v5, v6, v7);
}

uint64_t sub_1AAE56040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a4 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v20, v17);
  sub_1AAF311A4(v19, a2, a3, a4, a5, a6, a7, a8);
  return (*(v16 + 8))(a1, a4);
}

uint64_t BarPlot.init<A, B, C>(_:xStart:xEnd:y:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v71 = a8;
  v69 = a7;
  v79 = a4;
  v80 = a3;
  v77 = a1;
  v78 = a2;
  v75 = a9;
  v73 = a12;
  v70 = a11;
  swift_getAssociatedTypeWitness();
  v68 = type metadata accessor for PlottableProjection();
  v76 = *(v68 - 8);
  v66 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v64 = &v57 - v14;
  v15 = type metadata accessor for PlottableProjection();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v57 - v19;
  v59 = &v57 - v19;
  v67 = *(a6 - 8);
  v21 = v67;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v24;
  v74 = type metadata accessor for VectorizedBarPlotContent();
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v65 = &v57 - v25;
  v26 = a5[5];
  v85 = a5[4];
  v86 = v26;
  v87 = a5[6];
  v88 = *(a5 + 112);
  v27 = a5[1];
  v81 = *a5;
  v82 = v27;
  v28 = a5[3];
  v83 = a5[2];
  v84 = v28;
  v29 = *(v21 + 16);
  v61 = a6;
  v29(v24, v77, a6);
  v30 = *(v16 + 16);
  v58 = v15;
  v30(v20, v78, v15);
  v30(&v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v80, v15);
  v31 = v76;
  v32 = v64;
  v33 = v68;
  (*(v76 + 16))(v64, v79, v68);
  v34 = *(v16 + 80);
  v62 = v16;
  v35 = (v34 + 64) & ~v34;
  v36 = (v17 + v34 + v35) & ~v34;
  v37 = (v17 + *(v31 + 80) + v36) & ~*(v31 + 80);
  v38 = (v66 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = v69;
  *(v39 + 2) = a6;
  *(v39 + 3) = v40;
  *(v39 + 4) = v71;
  *(v39 + 5) = a10;
  v41 = v73;
  *(v39 + 6) = v70;
  *(v39 + 7) = v41;
  v42 = *(v16 + 32);
  v43 = &v39[v35];
  v44 = v58;
  v42(v43, v59, v58);
  v45 = &v39[v36];
  v46 = v44;
  v42(v45, v60, v44);
  v47 = v76;
  (*(v76 + 32))(&v39[v37], v32, v33);
  v48 = &v39[v38];
  v49 = v86;
  *(v48 + 4) = v85;
  *(v48 + 5) = v49;
  *(v48 + 6) = v87;
  v48[112] = v88;
  v50 = v82;
  *v48 = v81;
  *(v48 + 1) = v50;
  v51 = v84;
  *(v48 + 2) = v83;
  *(v48 + 3) = v51;
  v52 = v65;
  v53 = v39;
  v54 = v61;
  sub_1AAE56040(v63, sub_1AAE56C10, v53, v61, &type metadata for BarMark, a10, &protocol witness table for BarMark, v65);
  (*(v47 + 8))(v79, v33);
  v55 = *(v62 + 8);
  v55(v80, v46);
  v55(v78, v46);
  (*(v67 + 8))(v77, v54);
  return (*(v72 + 32))(v75, v52, v74);
}

void *sub_1AAE56744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v67 = a5;
  v68 = a2;
  v70 = a3;
  v71 = a4;
  v65 = a1;
  v72 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = a7;
  v64 = a11;
  v69 = type metadata accessor for PlottableProjection();
  v66 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v62 = &v55 - v14;
  v15 = type metadata accessor for PlottableValue();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v61 = &v55 - v16;
  v73 = a10;
  v74 = a6;
  v59 = type metadata accessor for PlottableProjection();
  v17 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v19 = &v55 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  v24 = type metadata accessor for PlottableValue();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v75 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v55 - v28;
  v60 = &v55 - v28;
  v30 = *(v20 + 16);
  v58 = v20 + 16;
  v31 = v65;
  v30(v23, v65, AssociatedTypeWitness, v27);
  v32 = *(v17 + 16);
  v57 = v17 + 16;
  v33 = v59;
  v32(v19, v68, v59);
  v34 = v29;
  v35 = v23;
  v56 = v23;
  v36 = v23;
  v38 = v73;
  v37 = v74;
  sub_1AAF30D00(v36, v19, v74, AssociatedTypeWitness, v73, v34);
  (v30)(v35, v31, AssociatedTypeWitness);
  v32(v19, v70, v33);
  v39 = v56;
  sub_1AAF30D00(v56, v19, v37, AssociatedTypeWitness, v38, v75);
  (v30)(v39, v31, AssociatedTypeWitness);
  v40 = v62;
  (*(v66 + 16))(v62, v71, v69);
  v41 = v61;
  v42 = v40;
  v43 = v63;
  v44 = v64;
  sub_1AAF30D00(v39, v42, v63, AssociatedTypeWitness, v64, v61);
  (v30)(v39, v31, AssociatedTypeWitness);
  v45 = v67;
  v46 = *(v67 + 64);
  v47 = *(v67 + 96);
  v77[5] = *(v67 + 80);
  v77[6] = v47;
  v48 = *(v67 + 16);
  v77[0] = *v67;
  v49 = *(v67 + 32);
  v50 = *(v67 + 48);
  v77[1] = v48;
  v77[2] = v49;
  LOBYTE(v77[7]) = *(v67 + 112);
  v77[3] = v50;
  v77[4] = v46;
  v51 = type metadata accessor for MarkDimensions();
  (*(*(v51 - 8) + 16))(&v76, v45, v51);
  v52 = sub_1AAF312D4(v39, v77, AssociatedTypeWitness);
  BarMark.init<A, B>(xStart:xEnd:y:height:)(v60, v75, v41, v52, v53, v74, v43, v73, v77, v44);
  return memcpy(v72, v77, 0x120uLL);
}

void *sub_1AAE56C10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15 = v2[3];
  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[6];
  v6 = v2[7];
  swift_getAssociatedTypeWitness();
  v7 = *(type metadata accessor for PlottableProjection() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 64) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = *(type metadata accessor for PlottableProjection() - 8);
  v13 = (v11 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  return sub_1AAE56744(a1, v2 + v9, v2 + v11, v2 + v13, v2 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8), v15, v3, a2, v4, v5, v6);
}

uint64_t BarPlot.init<A, B, C>(_:x:yStart:yEnd:width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v76 = a8;
  v78 = a7;
  v85 = a4;
  v86 = a3;
  v87 = a2;
  v84 = a1;
  v82 = a9;
  v77 = a12;
  v79 = a11;
  v69 = a10;
  swift_getAssociatedTypeWitness();
  v83 = type metadata accessor for PlottableProjection();
  v14 = *(v83 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v73 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v64 - v17;
  v18 = type metadata accessor for PlottableProjection();
  v19 = *(v18 - 8);
  v70 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v64 - v20;
  v65 = &v64 - v20;
  v75 = *(a6 - 8);
  v22 = v75;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v25;
  v81 = type metadata accessor for VectorizedBarPlotContent();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v74 = &v64 - v26;
  v27 = a5[5];
  v92 = a5[4];
  v93 = v27;
  v94 = a5[6];
  v95 = *(a5 + 112);
  v28 = a5[1];
  v88 = *a5;
  v89 = v28;
  v29 = a5[3];
  v90 = a5[2];
  v91 = v29;
  v30 = *(v22 + 16);
  v66 = a6;
  v30(v25, v84, a6);
  v31 = v19;
  v32 = *(v19 + 16);
  v33 = v21;
  v34 = v18;
  v67 = v18;
  v32(v33, v87, v18);
  v35 = v14;
  v64 = v14;
  v36 = *(v14 + 16);
  v37 = v72;
  v38 = v83;
  v36(v72, v86, v83);
  v39 = v73;
  v36(v73, v85, v38);
  v40 = *(v31 + 80);
  v68 = v31;
  v41 = (v40 + 64) & ~v40;
  v42 = *(v35 + 80);
  v43 = (v70 + v42 + v41) & ~v42;
  v44 = (v15 + v42 + v43) & ~v42;
  v45 = (v15 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  v47 = v78;
  *(v46 + 2) = a6;
  *(v46 + 3) = v47;
  v48 = v69;
  *(v46 + 4) = v76;
  *(v46 + 5) = v48;
  v49 = v77;
  *(v46 + 6) = v79;
  *(v46 + 7) = v49;
  (*(v31 + 32))(&v46[v41], v65, v34);
  v50 = v64;
  v51 = *(v64 + 32);
  v52 = &v46[v43];
  v53 = v83;
  v51(v52, v37, v83);
  v54 = &v46[v44];
  v55 = v53;
  v51(v54, v39, v53);
  v56 = &v46[v45];
  v57 = v93;
  *(v56 + 4) = v92;
  *(v56 + 5) = v57;
  *(v56 + 6) = v94;
  v56[112] = v95;
  v58 = v89;
  *v56 = v88;
  *(v56 + 1) = v58;
  v59 = v91;
  *(v56 + 2) = v90;
  *(v56 + 3) = v59;
  v60 = v74;
  v61 = v66;
  sub_1AAE56040(v71, sub_1AAE57850, v46, v66, &type metadata for BarMark, v48, &protocol witness table for BarMark, v74);
  v62 = *(v50 + 8);
  v62(v85, v55);
  v62(v86, v55);
  (*(v68 + 8))(v87, v67);
  (*(v75 + 8))(v84, v61);
  return (*(v80 + 32))(v82, v60, v81);
}

void *sub_1AAE57398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v62 = a5;
  v63 = a3;
  v64 = a4;
  v65 = a8;
  v61 = a2;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = a6;
  v58 = a10;
  v60 = type metadata accessor for PlottableProjection();
  v68 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v56 = &v50 - v14;
  v15 = type metadata accessor for PlottableValue();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v59 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v50 - v18;
  v19 = type metadata accessor for PlottableProjection();
  v51 = *(v19 - 8);
  v52 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - v24;
  v54 = a7;
  v55 = a11;
  v26 = type metadata accessor for PlottableValue();
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v50 - v28;
  v53 = &v50 - v28;
  v30 = *(v22 + 16);
  v31 = v66;
  v30(v25, v66, AssociatedTypeWitness, v27);
  v50 = v30;
  (*(v51 + 16))(v21, v61, v52);
  sub_1AAF30D00(v25, v21, a7, AssociatedTypeWitness, a11, v29);
  (v30)(v25, v31, AssociatedTypeWitness);
  v32 = *(v68 + 16);
  v68 += 16;
  v33 = v56;
  v34 = v60;
  v32(v56, v63, v60);
  v35 = v57;
  v36 = v58;
  sub_1AAF30D00(v25, v33, v57, AssociatedTypeWitness, v58, v67);
  v37 = v31;
  v38 = v50;
  v50(v25, v37, AssociatedTypeWitness);
  v32(v33, v64, v34);
  v39 = v59;
  sub_1AAF30D00(v25, v33, v35, AssociatedTypeWitness, v36, v59);
  v38(v25, v66, AssociatedTypeWitness);
  v40 = v62;
  v41 = *(v62 + 64);
  v42 = *(v62 + 96);
  v70[5] = *(v62 + 80);
  v70[6] = v42;
  v43 = *(v62 + 16);
  v70[0] = *v62;
  v44 = *(v62 + 32);
  v45 = *(v62 + 48);
  v70[1] = v43;
  v70[2] = v44;
  LOBYTE(v70[7]) = *(v62 + 112);
  v70[3] = v45;
  v70[4] = v41;
  v46 = type metadata accessor for MarkDimensions();
  (*(*(v46 - 8) + 16))(&v69, v40, v46);
  v47 = sub_1AAF312D4(v25, v70, AssociatedTypeWitness);
  BarMark.init<A, B>(x:yStart:yEnd:width:)(v53, v67, v39, v47, v48, v54, v35, v55, v70, v36);
  return memcpy(v65, v70, 0x120uLL);
}

void *sub_1AAE57850@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for PlottableProjection() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for PlottableProjection() - 8);
  v12 = *(v11 + 80);
  return sub_1AAE57398(a1, v2 + v9, v2 + ((v9 + v10 + v12) & ~v12), v2 + ((*(v11 + 64) + v12 + ((v9 + v10 + v12) & ~v12)) & ~v12), v2 + ((*(v11 + 64) + ((*(v11 + 64) + v12 + ((v9 + v10 + v12) & ~v12)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8), v3, v4, a2, v5, v6, v7);
}

uint64_t BarPlot.init<A, B>(_:x:yStart:yEnd:width:stacking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, __int128 *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v56 = a6;
  v57 = a8;
  v55 = a5;
  v54 = a4;
  v53 = a3;
  v44 = a2;
  v46 = a1;
  v58 = a9;
  v49 = a11;
  v50 = a13;
  v42 = a12;
  swift_getAssociatedTypeWitness();
  v45 = type metadata accessor for PlottableProjection();
  v16 = *(v45 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v19 = &v42 - v18;
  v47 = *(a10 - 8);
  v20 = v47;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v23;
  v52 = type metadata accessor for VectorizedBarPlotContent();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v42 - v24;
  v25 = a7[5];
  v63 = a7[4];
  v64 = v25;
  v65 = a7[6];
  v66 = *(a7 + 112);
  v26 = a7[1];
  v59 = *a7;
  v60 = v26;
  v27 = a7[3];
  v61 = a7[2];
  v62 = v27;
  (*(v20 + 16))(v23, a1, a10);
  v28 = v45;
  (*(v16 + 16))(v19, a2, v45);
  v29 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v30 = swift_allocObject();
  v31 = v49;
  *(v30 + 2) = a10;
  *(v30 + 3) = v31;
  v32 = v42;
  v33 = v50;
  *(v30 + 4) = v42;
  *(v30 + 5) = v33;
  (*(v16 + 32))(&v30[v29], v19, v28);
  v34 = &v30[(v29 + v17 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v34 = v53;
  v34[8] = v54 & 1;
  v35 = &v30[(v29 + v17 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v35 = v55;
  v35[8] = v56 & 1;
  v36 = &v30[(v29 + v17 + 39) & 0xFFFFFFFFFFFFFFF8];
  v37 = v62;
  *(v36 + 2) = v61;
  *(v36 + 3) = v37;
  v38 = v60;
  *v36 = v59;
  *(v36 + 1) = v38;
  v36[112] = v66;
  v39 = v65;
  *(v36 + 5) = v64;
  *(v36 + 6) = v39;
  *(v36 + 4) = v63;
  v36[113] = v57;
  v40 = v48;
  sub_1AAE56040(v43, sub_1AAE58128, v30, a10, &type metadata for BarMark, v32, &protocol witness table for BarMark, v48);
  (*(v16 + 8))(v44, v28);
  (*(v47 + 8))(v46, a10);
  return (*(v51 + 32))(v58, v40, v52);
}

void *sub_1AAE57E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v49 = a8;
  v47 = a6;
  v48 = a5;
  v45 = a4;
  v46 = a3;
  v44 = a2;
  v50 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = a11;
  v42 = a13;
  v43 = type metadata accessor for PlottableProjection();
  v16 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v18 = &v40 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  v23 = type metadata accessor for PlottableValue();
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v40 - v25;
  v27 = *(v19 + 16);
  v27(v22, a1, AssociatedTypeWitness, v24);
  (*(v16 + 16))(v18, v44, v43);
  v28 = v18;
  v29 = v41;
  v30 = v42;
  sub_1AAF30D00(v22, v28, v41, AssociatedTypeWitness, v42, v26);
  (v27)(v22, a1, AssociatedTypeWitness);
  v31 = *(a7 + 64);
  v32 = *(a7 + 96);
  v52[5] = *(a7 + 80);
  v52[6] = v32;
  v33 = *(a7 + 16);
  v52[0] = *a7;
  v34 = *(a7 + 32);
  v35 = *(a7 + 48);
  v52[1] = v33;
  v52[2] = v34;
  LOBYTE(v52[7]) = *(a7 + 112);
  v52[3] = v35;
  v52[4] = v31;
  v36 = type metadata accessor for MarkDimensions();
  (*(*(v36 - 8) + 16))(&v51, a7, v36);
  v37 = sub_1AAF312D4(v22, v52, AssociatedTypeWitness);
  BarMark.init<A>(x:yStart:yEnd:width:stacking:)(v26, v46, v45 & 1, v48, v47 & 1, v37, v38, v49, v52, v29, v30);
  return memcpy(v50, v52, 0x120uLL);
}

void *sub_1AAE58128@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  swift_getAssociatedTypeWitness();
  v9 = *(type metadata accessor for PlottableProjection() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v10 + *(v9 + 64);
  return sub_1AAE57E28(a1, v2 + v10, *(v2 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v2 + ((v11 + 39) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((v11 + 39) & 0xFFFFFFFFFFFFFFF8) + 113), a2, v5, v6, v8, v7);
}

uint64_t BarPlot.init<A, B>(_:xStart:xEnd:y:height:stacking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, __int128 *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v53 = a8;
  v46 = a6;
  v52 = a5;
  v51 = a4;
  v50 = a3;
  v49 = a2;
  v42 = a1;
  v54 = a9;
  v44 = a11;
  v45 = a13;
  v40 = a12;
  swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for PlottableProjection();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - v18;
  v20 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v23;
  v48 = type metadata accessor for VectorizedBarPlotContent();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v43 = &v40 - v24;
  v25 = a7[5];
  v59 = a7[4];
  v60 = v25;
  v61 = a7[6];
  v62 = *(a7 + 112);
  v26 = a7[1];
  v55 = *a7;
  v56 = v26;
  v27 = a7[3];
  v57 = a7[2];
  v58 = v27;
  (*(v20 + 16))(v23, a1, a10);
  v28 = v46;
  (*(v16 + 16))(v19, v46, v15);
  v29 = (*(v16 + 80) + 73) & ~*(v16 + 80);
  v30 = swift_allocObject();
  v31 = v44;
  *(v30 + 16) = a10;
  *(v30 + 24) = v31;
  v32 = v40;
  v33 = v45;
  *(v30 + 32) = v40;
  *(v30 + 40) = v33;
  *(v30 + 48) = v49;
  *(v30 + 56) = v50 & 1;
  *(v30 + 64) = v51;
  *(v30 + 72) = v52 & 1;
  (*(v16 + 32))(v30 + v29, v19, v15);
  v34 = v30 + ((v17 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
  v35 = v60;
  *(v34 + 64) = v59;
  *(v34 + 80) = v35;
  *(v34 + 96) = v61;
  *(v34 + 112) = v62;
  v36 = v56;
  *v34 = v55;
  *(v34 + 16) = v36;
  v37 = v58;
  *(v34 + 32) = v57;
  *(v34 + 48) = v37;
  *(v34 + 113) = v53;
  v38 = v43;
  sub_1AAE56040(v41, sub_1AAE58970, v30, a10, &type metadata for BarMark, v32, &protocol witness table for BarMark, v43);
  (*(v16 + 8))(v28, v15);
  (*(v20 + 8))(v42, a10);
  return (*(v47 + 32))(v54, v38, v48);
}

void *sub_1AAE58670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v49 = a8;
  v44 = a6;
  v47 = a5;
  v48 = a4;
  v45 = a3;
  v46 = a2;
  v50 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = a11;
  v42 = a13;
  v43 = type metadata accessor for PlottableProjection();
  v16 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v18 = &v40 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  v23 = type metadata accessor for PlottableValue();
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v40 - v25;
  v27 = *(v19 + 16);
  v27(v22, a1, AssociatedTypeWitness, v24);
  (*(v16 + 16))(v18, v44, v43);
  v28 = v18;
  v29 = v41;
  v30 = v42;
  sub_1AAF30D00(v22, v28, v41, AssociatedTypeWitness, v42, v26);
  (v27)(v22, a1, AssociatedTypeWitness);
  v31 = *(a7 + 64);
  v32 = *(a7 + 96);
  v52[5] = *(a7 + 80);
  v52[6] = v32;
  v33 = *(a7 + 16);
  v52[0] = *a7;
  v34 = *(a7 + 32);
  v35 = *(a7 + 48);
  v52[1] = v33;
  v52[2] = v34;
  LOBYTE(v52[7]) = *(a7 + 112);
  v52[3] = v35;
  v52[4] = v31;
  v36 = type metadata accessor for MarkDimensions();
  (*(*(v36 - 8) + 16))(&v51, a7, v36);
  v37 = sub_1AAF312D4(v22, v52, AssociatedTypeWitness);
  BarMark.init<A>(xStart:xEnd:y:height:stacking:)(v46, v45 & 1, v48, v47 & 1, v26, v37, v38, v49, v52, v29, v30);
  return memcpy(v50, v52, 0x120uLL);
}

void *sub_1AAE58970@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 32);
  v7 = *(v2 + 40);
  swift_getAssociatedTypeWitness();
  v9 = *(type metadata accessor for PlottableProjection() - 8);
  v10 = (*(v9 + 80) + 73) & ~*(v9 + 80);
  v11 = v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1AAE58670(a1, *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), v2 + v10, v11, *(v11 + 113), a2, v5, v6, v8, v7);
}

uint64_t BarPlot.init<A, B>(_:xStart:xEnd:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v59 = a7;
  v58 = a6;
  v57 = a5;
  v56 = a4;
  v61 = a2;
  v62 = a3;
  v50 = a1;
  v60 = a9;
  v53 = a10;
  v54 = a12;
  v47 = a11;
  swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for PlottableProjection();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  v45 = &v44 - v18;
  v51 = *(a8 - 8);
  v20 = v51;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v23;
  v55 = type metadata accessor for VectorizedBarPlotContent();
  v52 = *(v55 - 8);
  v24 = MEMORY[0x1EEE9AC00](v55);
  v49 = &v44 - v25;
  v26 = *(v20 + 16);
  v44 = a8;
  v26(v23, a1, a8, v24);
  v27 = *(v15 + 16);
  v27(v19, v61, v14);
  v27(&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v62, v14);
  v28 = *(v15 + 80);
  v29 = (v28 + 48) & ~v28;
  v30 = (v16 + v28 + v29) & ~v28;
  v31 = (v30 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v30 + v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v35 = v53;
  v34 = v54;
  *(v33 + 2) = a8;
  *(v33 + 3) = v35;
  v36 = v47;
  *(v33 + 4) = v47;
  *(v33 + 5) = v34;
  v37 = *(v15 + 32);
  v37(&v33[v29], v45, v14);
  v37(&v33[v30], v46, v14);
  v38 = &v33[v31];
  *v38 = v56;
  v38[8] = v57 & 1;
  v39 = &v33[v32];
  *v39 = v58;
  v39[8] = v59 & 1;
  v40 = v49;
  v41 = v44;
  sub_1AAE56040(v48, sub_1AAE59154, v33, v44, &type metadata for BarMark, v36, &protocol witness table for BarMark, v49);
  v42 = *(v15 + 8);
  v42(v62, v14);
  v42(v61, v14);
  (*(v51 + 8))(v50, v41);
  return (*(v52 + 32))(v60, v40, v55);
}

void *sub_1AAE58E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, unint64_t a6@<X5>, int a7@<W6>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v43 = a5;
  v44 = a7;
  v45 = a4;
  v46 = a6;
  v41 = a2;
  v42 = a3;
  v35 = a1;
  v47 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = a9;
  v38 = a11;
  v40 = type metadata accessor for PlottableProjection();
  v13 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v15 = &v34 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  v20 = type metadata accessor for PlottableValue();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v39 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v36 = &v34 - v24;
  v26 = *(v16 + 16);
  v34 = v16 + 16;
  v26(v19, a1, AssociatedTypeWitness, v23);
  v27 = *(v13 + 16);
  v28 = v40;
  v27(v15, v41, v40);
  v29 = v25;
  v31 = v37;
  v30 = v38;
  sub_1AAF30D00(v19, v15, v37, AssociatedTypeWitness, v38, v29);
  (v26)(v19, v35, AssociatedTypeWitness);
  v27(v15, v42, v28);
  v32 = v39;
  sub_1AAF30D00(v19, v15, v31, AssociatedTypeWitness, v30, v39);
  BarMark.init<A>(xStart:xEnd:yStart:yEnd:)(v36, v32, v45, v43 & 1, v46, v44 & 1, v31, v30, v48);
  return memcpy(v47, v48, 0x120uLL);
}

void *sub_1AAE59154@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[3];
  v7 = v2[4];
  v6 = v2[5];
  swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for PlottableProjection() - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + 48) & ~v9;
  v11 = *(v8 + 64);
  v12 = (v11 + v9 + v10) & ~v9;
  return sub_1AAE58E7C(a1, v2 + v10, v2 + v12, *(v2 + ((v12 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v12 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v12 + v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v12 + v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), a2, v5, v7, v6);
}

uint64_t BarPlot.init<A, B>(_:xStart:xEnd:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v53 = a6;
  v54 = a7;
  v51 = a5;
  v50 = a4;
  v49 = a3;
  v48 = a2;
  v42 = a1;
  v52 = a9;
  v45 = a10;
  v46 = a12;
  swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for PlottableProjection();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v38 = &v38 - v18;
  v43 = *(a8 - 8);
  v20 = v43;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v23;
  v47 = type metadata accessor for VectorizedBarPlotContent();
  v44 = *(v47 - 8);
  v24 = MEMORY[0x1EEE9AC00](v47);
  v40 = &v38 - v25;
  (*(v20 + 16))(v23, a1, a8, v24);
  v26 = *(v15 + 16);
  v26(v19, v53, v14);
  v27 = v41;
  v26(v41, v54, v14);
  v28 = *(v15 + 80);
  v29 = (v28 + 73) & ~v28;
  v30 = (v16 + v28 + v29) & ~v28;
  v31 = swift_allocObject();
  v33 = v45;
  v32 = v46;
  *(v31 + 16) = a8;
  *(v31 + 24) = v33;
  *(v31 + 32) = a11;
  *(v31 + 40) = v32;
  *(v31 + 48) = v48;
  *(v31 + 56) = v49 & 1;
  *(v31 + 64) = v50;
  *(v31 + 72) = v51 & 1;
  v34 = *(v15 + 32);
  v34(v31 + v29, v38, v14);
  v34(v31 + v30, v27, v14);
  v35 = v40;
  sub_1AAE56040(v39, sub_1AAE59938, v31, a8, &type metadata for BarMark, a11, &protocol witness table for BarMark, v40);
  v36 = *(v15 + 8);
  v36(v54, v14);
  v36(v53, v14);
  (*(v43 + 8))(v42, a8);
  return (*(v44 + 32))(v52, v35, v47);
}

void *sub_1AAE59654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v41 = a6;
  v42 = a7;
  v45 = a5;
  v46 = a4;
  v47 = a8;
  v43 = a3;
  v44 = a2;
  v35 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = a9;
  v38 = a11;
  v40 = type metadata accessor for PlottableProjection();
  v13 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v15 = v34 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v34 - v18;
  v20 = type metadata accessor for PlottableValue();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v39 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v34 - v24;
  v36 = v34 - v24;
  v26 = *(v16 + 16);
  v34[1] = v16 + 16;
  v26(v19, a1, AssociatedTypeWitness, v23);
  v27 = *(v13 + 16);
  v28 = v40;
  v27(v15, v41, v40);
  v29 = v25;
  v31 = v37;
  v30 = v38;
  sub_1AAF30D00(v19, v15, v37, AssociatedTypeWitness, v38, v29);
  (v26)(v19, v35, AssociatedTypeWitness);
  v27(v15, v42, v28);
  v32 = v39;
  sub_1AAF30D00(v19, v15, v31, AssociatedTypeWitness, v30, v39);
  BarMark.init<A>(xStart:xEnd:yStart:yEnd:)(v44, v43 & 1, v46, v45 & 1, v36, v32, v31, v30, v48);
  return memcpy(v47, v48, 0x120uLL);
}

void *sub_1AAE59938@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 24);
  v7 = *(v2 + 32);
  v6 = *(v2 + 40);
  swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for PlottableProjection() - 8);
  v9 = *(v8 + 80);
  return sub_1AAE59654(a1, *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), v2 + ((v9 + 73) & ~v9), v2 + ((*(v8 + 64) + v9 + ((v9 + 73) & ~v9)) & ~v9), a2, v5, v7, v6);
}

uint64_t BarPlot.init<A, B>(_:x:yStart:yEnd:width:stacking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a8;
  v57 = a6;
  v56 = a4;
  v45 = a2;
  v47 = a1;
  v55 = a3;
  v58 = a9;
  v46 = a10;
  v52 = a11;
  v48 = type metadata accessor for PlottableProjection();
  v15 = *(v48 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v18 = &v43 - v17;
  v49 = *(a7 - 8);
  v19 = v49;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v22;
  v23 = type metadata accessor for VectorizedBarPlotContent();
  v53 = *(v23 - 8);
  v54 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v50 = &v43 - v24;
  v25 = a5[5];
  v63 = a5[4];
  v64 = v25;
  v65 = a5[6];
  v66 = *(a5 + 112);
  v26 = a5[1];
  v59 = *a5;
  v60 = v26;
  v27 = a5[3];
  v61 = a5[2];
  v62 = v27;
  (*(v19 + 16))(v22, a1, a7);
  v28 = v48;
  (*(v15 + 16))(v18, a2, v48);
  v29 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v30 = (v16 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v51;
  *(v32 + 2) = a7;
  *(v32 + 3) = v33;
  v34 = v46;
  v35 = v52;
  *(v32 + 4) = v46;
  *(v32 + 5) = v35;
  (*(v15 + 32))(&v32[v29], v18, v28);
  v36 = v56;
  *&v32[v30] = v55;
  *&v32[v31] = v36;
  v37 = &v32[(v31 + 15) & 0xFFFFFFFFFFFFFFF8];
  v38 = v64;
  *(v37 + 4) = v63;
  *(v37 + 5) = v38;
  *(v37 + 6) = v65;
  v37[112] = v66;
  v39 = v60;
  *v37 = v59;
  *(v37 + 1) = v39;
  v40 = v62;
  *(v37 + 2) = v61;
  *(v37 + 3) = v40;
  v37[113] = v57;
  v41 = v50;
  sub_1AAE56040(v44, sub_1AAE5A19C, v32, a7, &type metadata for BarMark, v34, &protocol witness table for BarMark, v50);
  (*(v15 + 8))(v45, v28);
  (*(v49 + 8))(v47, a7);
  return (*(v53 + 32))(v58, v41, v54);
}

void *sub_1AAE59E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v45 = a6;
  v43 = a3;
  v44 = a4;
  v42 = a2;
  v46 = a8;
  v13 = *(*a3 + *MEMORY[0x1E69E77B0]);
  v37 = a10;
  v40 = type metadata accessor for PlottableProjection();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v15 = &v36 - v14;
  v16 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v41 = a7;
  v20 = type metadata accessor for PlottableValue();
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v36 - v22;
  v39 = &v36 - v22;
  v24 = *(v16 + 16);
  v24(v19, a1, v13, v21);
  (*(v38 + 16))(v15, v42, v40);
  v25 = v15;
  v26 = v37;
  sub_1AAF30D00(v19, v25, a7, v13, v37, v23);
  swift_getAtKeyPath();
  v27 = v47[16];
  swift_getAtKeyPath();
  v28 = v47[15];
  (v24)(v19, a1, v13);
  v29 = *(a5 + 80);
  v48[4] = *(a5 + 64);
  v48[5] = v29;
  v48[6] = *(a5 + 96);
  LOBYTE(v48[7]) = *(a5 + 112);
  v30 = *(a5 + 16);
  v48[0] = *a5;
  v48[1] = v30;
  v31 = *(a5 + 48);
  v48[2] = *(a5 + 32);
  v48[3] = v31;
  v32 = type metadata accessor for MarkDimensions();
  (*(*(v32 - 8) + 16))(v47, a5, v32);
  v33 = sub_1AAF312D4(v19, v48, v13);
  BarMark.init<A>(x:yStart:yEnd:width:stacking:)(v39, v27, 0, v28, 0, v33, v34, v45, v48, v41, v26);
  return memcpy(v46, v48, 0x120uLL);
}

void *sub_1AAE5A19C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[3];
  v7 = v2[4];
  v6 = v2[5];
  swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for PlottableProjection() - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1AAE59E60(a1, v2 + v9, *(v2 + v10), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), v2 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 113), v5, a2, v7, v6);
}

uint64_t BarPlot.init<A, B>(_:xStart:xEnd:y:height:stacking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v49 = a8;
  v55 = a6;
  v54 = a3;
  v46 = a1;
  v52 = a2;
  v56 = a9;
  v45 = a10;
  v50 = a11;
  v48 = type metadata accessor for PlottableProjection();
  v15 = *(v48 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v18 = &v43 - v17;
  v19 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v22;
  v53 = type metadata accessor for VectorizedBarPlotContent();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v47 = &v43 - v23;
  v24 = a5[5];
  v61 = a5[4];
  v62 = v24;
  v63 = a5[6];
  v64 = *(a5 + 112);
  v25 = a5[1];
  v57 = *a5;
  v58 = v25;
  v26 = a5[3];
  v59 = a5[2];
  v60 = v26;
  (*(v19 + 16))(v22, a1, a7);
  v27 = a4;
  v28 = a4;
  v29 = v48;
  (*(v15 + 16))(v18, v28, v48);
  v30 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v31 = (v16 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v49;
  *(v32 + 2) = a7;
  *(v32 + 3) = v33;
  v34 = v45;
  v35 = v50;
  *(v32 + 4) = v45;
  *(v32 + 5) = v35;
  v36 = v54;
  *(v32 + 6) = v52;
  *(v32 + 7) = v36;
  (*(v15 + 32))(&v32[v30], v18, v29);
  v37 = &v32[v31];
  v38 = v62;
  *(v37 + 4) = v61;
  *(v37 + 5) = v38;
  *(v37 + 6) = v63;
  v37[112] = v64;
  v39 = v58;
  *v37 = v57;
  *(v37 + 1) = v39;
  v40 = v60;
  *(v37 + 2) = v59;
  *(v37 + 3) = v40;
  v37[113] = v55;
  v41 = v47;
  sub_1AAE56040(v44, sub_1AAE5A9DC, v32, a7, &type metadata for BarMark, v34, &protocol witness table for BarMark, v47);
  (*(v15 + 8))(v27, v29);
  (*(v19 + 8))(v46, a7);
  return (*(v51 + 32))(v56, v41, v53);
}

void *sub_1AAE5A6B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v41 = a6;
  v39 = a3;
  v40 = a4;
  v37 = a1;
  v42 = a8;
  v11 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v34 = a7;
  v35 = a10;
  v36 = type metadata accessor for PlottableProjection();
  v12 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v14 = &v34 - v13;
  v15 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v19 = type metadata accessor for PlottableValue();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v34 - v20;
  v22 = v37;
  swift_getAtKeyPath();
  v38 = v43[16];
  swift_getAtKeyPath();
  v39 = v43[15];
  v23 = *(v15 + 16);
  v23(v18, v22, v11);
  (*(v12 + 16))(v14, v40, v36);
  v24 = v14;
  v26 = v34;
  v25 = v35;
  sub_1AAF30D00(v18, v24, v34, v11, v35, v21);
  v23(v18, v22, v11);
  v27 = *(a5 + 80);
  v44[4] = *(a5 + 64);
  v44[5] = v27;
  v44[6] = *(a5 + 96);
  LOBYTE(v44[7]) = *(a5 + 112);
  v28 = *(a5 + 16);
  v44[0] = *a5;
  v44[1] = v28;
  v29 = *(a5 + 48);
  v44[2] = *(a5 + 32);
  v44[3] = v29;
  v30 = type metadata accessor for MarkDimensions();
  (*(*(v30 - 8) + 16))(v43, a5, v30);
  v31 = sub_1AAF312D4(v18, v44, v11);
  BarMark.init<A>(xStart:xEnd:y:height:stacking:)(v38, 0, v39, 0, v21, v31, v32, v41, v44, v26, v25);
  return memcpy(v42, v44, 0x120uLL);
}

void *sub_1AAE5A9DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 24);
  v7 = *(v2 + 32);
  v6 = *(v2 + 40);
  swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for PlottableProjection() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1AAE5A6B0(a1, *(v2 + 48), *(v2 + 56), v2 + v9, v10, *(v10 + 113), v5, a2, v7, v6);
}

uint64_t BarPlot.init<A, B>(_:xStart:xEnd:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v44 = a8;
  v49 = a7;
  v53 = a4;
  v54 = a5;
  v56 = a2;
  v57 = a3;
  v47 = a1;
  v55 = a9;
  v51 = a10;
  v12 = type metadata accessor for PlottableProjection();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v42 = &v40 - v16;
  v48 = *(a6 - 8);
  v18 = v48;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v21;
  v52 = type metadata accessor for VectorizedBarPlotContent();
  v50 = *(v52 - 8);
  v22 = MEMORY[0x1EEE9AC00](v52);
  v46 = &v40 - v23;
  v24 = *(v18 + 16);
  v41 = a6;
  v24(v21, a1, a6, v22);
  v25 = *(v13 + 16);
  v25(v17, v56, v12);
  v25(&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v57, v12);
  v26 = *(v13 + 80);
  v27 = (v26 + 48) & ~v26;
  v28 = (v14 + v26 + v27) & ~v26;
  v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = v49;
  *(v30 + 2) = a6;
  *(v30 + 3) = v31;
  v32 = v44;
  v33 = v51;
  *(v30 + 4) = v44;
  *(v30 + 5) = v33;
  v34 = *(v13 + 32);
  v34(&v30[v27], v42, v12);
  v34(&v30[v28], v43, v12);
  v35 = v54;
  *&v30[v29] = v53;
  *&v30[(v29 + 15) & 0xFFFFFFFFFFFFFFF8] = v35;
  v36 = v46;
  v37 = v41;
  sub_1AAE56040(v45, sub_1AAE5B1CC, v30, v41, &type metadata for BarMark, v32, &protocol witness table for BarMark, v46);
  v38 = *(v13 + 8);
  v38(v57, v12);
  v38(v56, v12);
  (*(v48 + 8))(v47, v37);
  return (*(v50 + 32))(v55, v36, v52);
}

{
  v53 = a4;
  v54 = a5;
  v50 = a2;
  v51 = a3;
  v44 = a1;
  v52 = a9;
  v47 = a7;
  v48 = a10;
  v13 = type metadata accessor for PlottableProjection();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v40 = &v39 - v17;
  v45 = *(a6 - 8);
  v19 = v45;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v22;
  v49 = type metadata accessor for VectorizedBarPlotContent();
  v46 = *(v49 - 8);
  v23 = MEMORY[0x1EEE9AC00](v49);
  v42 = &v39 - v24;
  (*(v19 + 16))(v22, a1, a6, v23);
  v25 = *(v14 + 16);
  v25(v18, v53, v13);
  v26 = v43;
  v25(v43, v54, v13);
  v27 = *(v14 + 80);
  v28 = (v27 + 64) & ~v27;
  v29 = (v15 + v27 + v28) & ~v27;
  v30 = swift_allocObject();
  v32 = v47;
  v31 = v48;
  *(v30 + 2) = a6;
  *(v30 + 3) = v32;
  v33 = a8;
  *(v30 + 4) = a8;
  *(v30 + 5) = v31;
  v34 = v51;
  *(v30 + 6) = v50;
  *(v30 + 7) = v34;
  v35 = *(v14 + 32);
  v35(&v30[v28], v40, v13);
  v35(&v30[v29], v26, v13);
  v36 = v42;
  sub_1AAE56040(v41, sub_1AAE5B9A8, v30, a6, &type metadata for BarMark, v33, &protocol witness table for BarMark, v42);
  v37 = *(v14 + 8);
  v37(v54, v13);
  v37(v53, v13);
  (*(v45 + 8))(v44, a6);
  return (*(v46 + 32))(v52, v36, v49);
}

void *sub_1AAE5AEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, void *a7@<X8>, uint64_t a8)
{
  v43 = a5;
  v44 = a7;
  v40 = a2;
  v41 = a3;
  v42 = a4;
  v10 = *(*a4 + *MEMORY[0x1E69E77B0]);
  v35 = a8;
  v39 = type metadata accessor for PlottableProjection();
  v11 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = v33 - v12;
  v33[0] = v10;
  v13 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v33 - v15;
  v17 = type metadata accessor for PlottableValue();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v36 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v33 - v21;
  v37 = v33 - v21;
  v23 = *(v13 + 16);
  v33[1] = v13 + 16;
  v34 = v23;
  (v23)(v16, a1, v10, v20);
  v24 = *(v11 + 16);
  v26 = v38;
  v25 = v39;
  v24(v38, v40, v39);
  v27 = v22;
  v28 = v33[0];
  v29 = v35;
  sub_1AAF30D00(v16, v26, a6, v33[0], v35, v27);
  v34(v16, a1, v28);
  v24(v26, v41, v25);
  v30 = v36;
  sub_1AAF30D00(v16, v26, a6, v28, v29, v36);
  swift_getAtKeyPath();
  v31 = v46;
  swift_getAtKeyPath();
  BarMark.init<A>(xStart:xEnd:yStart:yEnd:)(v37, v30, v31, 0, v45, 0, a6, v29, v47);
  return memcpy(v44, v47, 0x120uLL);
}

void *sub_1AAE5B1CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  swift_getAssociatedTypeWitness();
  v7 = *(type metadata accessor for PlottableProjection() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 48) & ~v8;
  v10 = *(v7 + 64);
  return sub_1AAE5AEBC(a1, v2 + v9, v2 + ((v10 + v8 + v9) & ~v8), *(v2 + ((v10 + ((v10 + v8 + v9) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v10 + ((v10 + v8 + v9) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v5, a2, v6);
}

void *sub_1AAE5B698@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, void *a7@<X8>, uint64_t a8)
{
  v43 = a4;
  v44 = a5;
  v40 = a3;
  v45 = a7;
  v10 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v38 = a8;
  v11 = type metadata accessor for PlottableProjection();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v34 - v12;
  v14 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v34 - v16;
  v18 = type metadata accessor for PlottableValue();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v39 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v34 - v21;
  v35 = a1;
  v36 = v34 - v21;
  swift_getAtKeyPath();
  v37 = v47;
  swift_getAtKeyPath();
  v40 = v46;
  v23 = *(v14 + 16);
  v34[1] = v14 + 16;
  v23(v17, a1, v10);
  v24 = *(v41 + 16);
  v25 = v13;
  v26 = v13;
  v27 = v42;
  v24(v26, v43, v42);
  v28 = v22;
  v29 = v25;
  v30 = v25;
  v31 = v38;
  sub_1AAF30D00(v17, v29, a6, v10, v38, v28);
  v23(v17, v35, v10);
  v24(v30, v44, v27);
  v32 = v39;
  sub_1AAF30D00(v17, v30, a6, v10, v31, v39);
  BarMark.init<A>(xStart:xEnd:yStart:yEnd:)(v37, 0, v40, 0, v36, v32, a6, v31, v48);
  return memcpy(v45, v48, 0x120uLL);
}

void *sub_1AAE5B9A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  swift_getAssociatedTypeWitness();
  v7 = *(type metadata accessor for PlottableProjection() - 8);
  v8 = *(v7 + 80);
  return sub_1AAE5B698(a1, *(v2 + 48), *(v2 + 56), v2 + ((v8 + 64) & ~v8), v2 + ((*(v7 + 64) + v8 + ((v8 + 64) & ~v8)) & ~v8), v5, a2, v6);
}

uint64_t VectorizedBarPlotContent.body.getter()
{
  v1 = type metadata accessor for Vectorizer();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - v3;
  sub_1AACE0800(v0, v1, &off_1EE75E640);
  sub_1AACE0800(v4, v1, &off_1EE75E640);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1AAE5BBEC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE5BC40(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 LineMark.init<A, B>(x:y:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1AAE83B9C(a1, a3, a5, v22);
  v12 = v22[7];
  *(a7 + 96) = v22[6];
  *(a7 + 112) = v12;
  *(a7 + 128) = v22[8];
  v13 = v22[3];
  *(a7 + 32) = v22[2];
  *(a7 + 48) = v13;
  v14 = v22[5];
  *(a7 + 64) = v22[4];
  *(a7 + 80) = v14;
  v15 = v22[1];
  *a7 = v22[0];
  *(a7 + 16) = v15;
  sub_1AAE83B9C(a2, a4, a6, v23);
  v16 = type metadata accessor for PlottableValue();
  (*(*(v16 - 8) + 8))(a2, v16);
  v17 = type metadata accessor for PlottableValue();
  (*(*(v17 - 8) + 8))(a1, v17);
  v18 = v23[7];
  *(a7 + 240) = v23[6];
  *(a7 + 256) = v18;
  *(a7 + 272) = v23[8];
  v19 = v23[3];
  *(a7 + 176) = v23[2];
  *(a7 + 192) = v19;
  v20 = v23[5];
  *(a7 + 208) = v23[4];
  *(a7 + 224) = v20;
  result = v23[1];
  *(a7 + 144) = v23[0];
  *(a7 + 160) = result;
  *(a7 + 288) = 0;
  *(a7 + 296) = 0;
  *(a7 + 304) = -1;
  return result;
}

uint64_t LineMark.init<A, B, C>(x:y:series:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = a8;
  v38[1] = a5;
  v38[2] = a8;
  v40 = a4;
  v41 = a7;
  v39 = a2;
  v42 = a1;
  v16 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE83B9C(v19, v20, v21, v43);
  v22 = v43[7];
  *(a9 + 96) = v43[6];
  *(a9 + 112) = v22;
  *(a9 + 128) = v43[8];
  v23 = v43[3];
  *(a9 + 32) = v43[2];
  *(a9 + 48) = v23;
  v24 = v43[5];
  *(a9 + 64) = v43[4];
  *(a9 + 80) = v24;
  v25 = v43[1];
  *a9 = v43[0];
  *(a9 + 16) = v25;
  sub_1AAE83B9C(a2, a5, v10, v44);
  v26 = v44[7];
  *(a9 + 240) = v44[6];
  *(a9 + 256) = v26;
  *(a9 + 272) = v44[8];
  v27 = v44[3];
  *(a9 + 176) = v44[2];
  *(a9 + 192) = v27;
  v28 = v44[5];
  *(a9 + 208) = v44[4];
  *(a9 + 224) = v28;
  v29 = v44[1];
  *(a9 + 144) = v44[0];
  *(a9 + 160) = v29;
  v30 = type metadata accessor for PlottableValue();
  sub_1AAE8CA40(v30, v18);
  v31 = sub_1AACD78AC(v18, a6, a10);
  v33 = v32;
  LOBYTE(v10) = v34;
  (*(v16 + 8))(v18, a6);
  (*(*(v30 - 8) + 8))(a3, v30);
  v35 = type metadata accessor for PlottableValue();
  (*(*(v35 - 8) + 8))(v39, v35);
  v36 = type metadata accessor for PlottableValue();
  result = (*(*(v36 - 8) + 8))(v42, v36);
  *(a9 + 288) = v31;
  *(a9 + 296) = v33;
  *(a9 + 304) = v10;
  return result;
}

uint64_t static LineMark._layoutChartContent(_:_:)(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[7];
  v15[6] = a1[6];
  v15[7] = v2;
  v3 = a1[9];
  v15[8] = a1[8];
  v4 = a1[3];
  v15[2] = a1[2];
  v15[3] = v4;
  v5 = a1[5];
  v15[4] = a1[4];
  v15[5] = v5;
  v6 = a1[1];
  v15[0] = *a1;
  v15[1] = v6;
  v7 = a1[14];
  v8 = a1[16];
  v9 = a1[17];
  v16[6] = a1[15];
  v16[7] = v8;
  v16[8] = v9;
  v10 = a1[10];
  v11 = a1[12];
  v12 = a1[13];
  v16[2] = a1[11];
  v16[3] = v11;
  v16[4] = v12;
  v16[5] = v7;
  v16[0] = v3;
  v16[1] = v10;
  v13 = *a2;
  result = sub_1AACD2B20(v15, v16);
  if (*(v13 + 1264) == 1)
  {
    *(v13 + 1265) = 1;
  }

  return result;
}

uint64_t static LineMark._renderChartContent(_:_:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v308 = v5;
  v6 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v6);
  v306 = &v299 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v8);
  *&v305 = &v299 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v299 - v11;
  v13 = v4[7];
  v420 = v4[6];
  v421 = v13;
  v14 = v4[9];
  v422 = v4[8];
  v15 = v4[3];
  v416 = v4[2];
  v417 = v15;
  v16 = v4[4];
  v419 = v4[5];
  v418 = v16;
  v17 = *v4;
  v415 = v4[1];
  v414 = v17;
  v18 = v4[14];
  v19 = v4[16];
  v429 = v4[15];
  v430 = v19;
  v20 = v4[16];
  v431 = v4[17];
  v21 = v4[10];
  v22 = v4[12];
  v425 = v4[11];
  v426 = v22;
  v24 = v4[12];
  v23 = v4[13];
  v428 = v4[14];
  v427 = v23;
  v25 = v4[9];
  v424 = v4[10];
  v423 = v14;
  v484 = v429;
  v485 = v20;
  v486 = v4[17];
  v480 = v425;
  v481 = v24;
  v483 = v18;
  v482 = v23;
  v479 = v21;
  v478 = v25;
  v26 = *(v4 + 37);
  v307 = *(v4 + 36);
  v27 = *(v4 + 304);
  *&v312 = *(v2 + 1);
  v28 = v312 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  LODWORD(v309) = *v2;
  swift_beginAccess();
  v310 = v28;
  sub_1AAE4911C(v28, v12);
  v460[6] = v420;
  v460[7] = v421;
  v460[8] = v422;
  v460[2] = v416;
  v460[3] = v417;
  v460[5] = v419;
  v460[4] = v418;
  v460[1] = v415;
  v460[0] = v414;
  v29 = sub_1AACDB99C(v460);
  *&v311 = v8;
  if (v29 > 2)
  {
    if (v29 == 3)
    {
      sub_1AACD2C84(v460);
      v58 = v4[7];
      *&v327[96] = v4[6];
      *&v327[112] = v58;
      *&v327[128] = v4[8];
      v59 = v4[3];
      *&v327[32] = v4[2];
      *&v327[48] = v59;
      v60 = v4[5];
      *&v327[64] = v4[4];
      *&v327[80] = v60;
      v61 = v4[1];
      *v327 = *v4;
      *&v327[16] = v61;
      v62 = sub_1AACD2C84(v327);
      v63 = v4[7];
      v396 = v4[6];
      v397 = v63;
      v398 = v4[8];
      v64 = v4[3];
      v395[1] = v4[2];
      v395[2] = v64;
      v65 = v4[4];
      v395[4] = v4[5];
      v395[3] = v65;
      v66 = *v4;
      v395[0] = v4[1];
      v394 = v66;
      v67 = sub_1AACD2C84(&v394);
      v68 = &unk_1EB425BA0;
      goto LABEL_14;
    }

    v31 = v312;
    if (v29 == 4)
    {
      sub_1AACD2C84(v460);
    }

    else
    {
      sub_1AACD2C84(v460);
      v77 = v4[7];
      *&v327[96] = v4[6];
      *&v327[112] = v77;
      *&v327[128] = v4[8];
      v78 = v4[3];
      *&v327[32] = v4[2];
      *&v327[48] = v78;
      v79 = v4[5];
      *&v327[64] = v4[4];
      *&v327[80] = v79;
      v80 = v4[1];
      *v327 = *v4;
      *&v327[16] = v80;
      v81 = sub_1AACD2C84(v327);
      v82 = v4[7];
      v396 = v4[6];
      v397 = v82;
      v398 = v4[8];
      v83 = v4[3];
      v395[1] = v4[2];
      v395[2] = v83;
      v84 = v4[4];
      v395[4] = v4[5];
      v395[3] = v84;
      v85 = *v4;
      v395[0] = v4[1];
      v394 = v85;
      v86 = sub_1AACD2C84(&v394);
      sub_1AAE5EC3C(v86, v313, &qword_1EB425B98);
      sub_1AAE5EC3C(v81, v313, &qword_1EB425B98);
    }

    v57 = NAN;
  }

  else
  {
    if (v29)
    {
      if (v29 == 1)
      {
        v30 = sub_1AACD2C84(v460);
        v31 = v312;
        if (*(v30 + 8))
        {
          v32 = (*(v312 + 24) + *(v312 + 32)) * 0.5;
        }

        else
        {
          v32 = *v30;
        }

        v57 = v32 + *(v310 + v8[21]);
        goto LABEL_20;
      }

      sub_1AACD2C84(v460);
      v69 = v4[7];
      *&v327[96] = v4[6];
      *&v327[112] = v69;
      *&v327[128] = v4[8];
      v70 = v4[3];
      *&v327[32] = v4[2];
      *&v327[48] = v70;
      v71 = v4[5];
      *&v327[64] = v4[4];
      *&v327[80] = v71;
      v72 = v4[1];
      *v327 = *v4;
      *&v327[16] = v72;
      v62 = sub_1AACD2C84(v327);
      v73 = v4[7];
      v396 = v4[6];
      v397 = v73;
      v398 = v4[8];
      v74 = v4[3];
      v395[1] = v4[2];
      v395[2] = v74;
      v75 = v4[4];
      v395[4] = v4[5];
      v395[3] = v75;
      v76 = *v4;
      v395[0] = v4[1];
      v394 = v76;
      v67 = sub_1AACD2C84(&v394);
      v68 = &unk_1EB425B90;
LABEL_14:
      sub_1AAE5EC3C(v67, v313, v68);
      sub_1AAE5EC3C(v62, v313, v68);
      v57 = NAN;
      v31 = v312;
      goto LABEL_20;
    }

    v301 = v26;
    v302 = v27;
    v303 = v6;
    v304 = v12;
    v33 = sub_1AACD2C84(v460);
    v461 = *v33;
    v34 = *(v33 + 24);
    v462 = *(v33 + 16);
    v35 = *(v33 + 32);
    v300 = *(v33 + 40);
    v36 = v4[1];
    v394 = *v4;
    v395[0] = v36;
    v37 = *(v33 + 48);
    v38 = v4[3];
    v395[1] = v4[2];
    v395[2] = v38;
    v39 = v4[7];
    v398 = v4[8];
    v40 = v4[5];
    v41 = v4[6];
    v397 = v39;
    v396 = v41;
    v395[3] = v4[4];
    v395[4] = v40;
    v42 = sub_1AACD2C84(&v394);
    v465 = v462;
    v464 = v461;
    v463 = v34;
    v43 = *v42;
    v44 = *(v42 + 8);
    v45 = *(v42 + 16);
    v46 = *(v42 + 32);
    v47 = *(v42 + 40);
    v48 = *(v42 + 48);

    sub_1AACD7304(v43, v44, v45);
    sub_1AACD7C50(v46, v47, v48);

    sub_1AACD7304(v43, v44, v45);
    sub_1AACD7C50(v46, v47, v48);
    v49 = v312;

    v50 = MEMORY[0x1E69810C8];
    v51 = MEMORY[0x1E69E62F8];
    sub_1AAE5ECA8(&v463, v327, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AADFA6FC(&v464, v327);
    v52 = v300;
    sub_1AACD7C50(v35, v300, v37);
    *&v53 = COERCE_DOUBLE(sub_1AAE0B2C8(0, v49, v35, v52, v37));
    v55 = v54;
    sub_1AAD6E0DC(&v464);
    sub_1AAE5ED98(&v463, &qword_1ED9B1E40, v50, v51);
    v56 = v35;
    v31 = v49;
    sub_1AAD0E818(v56, v52, v37);

    if (v55)
    {
      v57 = NAN;
    }

    else
    {
      v57 = *&v53;
    }

    v6 = v303;
    v12 = v304;
    v8 = v311;
    v26 = v301;
    v27 = v302;
  }

LABEL_20:
  v459[6] = v429;
  v459[7] = v430;
  v459[8] = v431;
  v459[2] = v425;
  v459[3] = v426;
  v459[5] = v428;
  v459[4] = v427;
  v459[1] = v424;
  v459[0] = v423;
  v87 = sub_1AACDB99C(v459);
  if (v87 > 2)
  {
    if (v87 == 3)
    {
      sub_1AACD2C84(v459);
      *&v327[96] = v484;
      *&v327[112] = v485;
      *&v327[128] = v486;
      *&v327[32] = v480;
      *&v327[48] = v481;
      *&v327[64] = v482;
      *&v327[80] = v483;
      *v327 = v478;
      *&v327[16] = v479;
      v109 = sub_1AACD2C84(v327);
      v396 = v484;
      v397 = v485;
      v398 = v486;
      v395[1] = v480;
      v395[2] = v481;
      v395[4] = v483;
      v395[3] = v482;
      v395[0] = v479;
      v394 = v478;
      v110 = sub_1AACD2C84(&v394);
      v111 = &unk_1EB425BA0;
    }

    else
    {
      if (v87 == 4)
      {
        sub_1AACD2C84(v459);
LABEL_34:
        v108 = NAN;
        goto LABEL_35;
      }

      sub_1AACD2C84(v459);
      *&v327[96] = v484;
      *&v327[112] = v485;
      *&v327[128] = v486;
      *&v327[32] = v480;
      *&v327[48] = v481;
      *&v327[64] = v482;
      *&v327[80] = v483;
      *v327 = v478;
      *&v327[16] = v479;
      v109 = sub_1AACD2C84(v327);
      v396 = v484;
      v397 = v485;
      v398 = v486;
      v395[1] = v480;
      v395[2] = v481;
      v395[4] = v483;
      v395[3] = v482;
      v395[0] = v479;
      v394 = v478;
      v110 = sub_1AACD2C84(&v394);
      v111 = &qword_1EB425B98;
    }

LABEL_33:
    sub_1AAE5EC3C(v110, v313, v111);
    sub_1AAE5EC3C(v109, v313, v111);
    goto LABEL_34;
  }

  if (v87)
  {
    if (v87 == 1)
    {
      v88 = sub_1AACD2C84(v459);
      if (*(v88 + 8))
      {
        v89 = (*(v31 + 40) + *(v31 + 48)) * 0.5;
      }

      else
      {
        v89 = *v88;
      }

      v108 = v89 + *(v310 + v8[22]);
      goto LABEL_35;
    }

    sub_1AACD2C84(v459);
    *&v327[96] = v484;
    *&v327[112] = v485;
    *&v327[128] = v486;
    *&v327[32] = v480;
    *&v327[48] = v481;
    *&v327[64] = v482;
    *&v327[80] = v483;
    *v327 = v478;
    *&v327[16] = v479;
    v109 = sub_1AACD2C84(v327);
    v396 = v484;
    v397 = v485;
    v398 = v486;
    v395[1] = v480;
    v395[2] = v481;
    v395[4] = v483;
    v395[3] = v482;
    v395[0] = v479;
    v394 = v478;
    v110 = sub_1AACD2C84(&v394);
    v111 = &unk_1EB425B90;
    goto LABEL_33;
  }

  v301 = v26;
  v302 = v27;
  v303 = v6;
  v304 = v12;
  v90 = sub_1AACD2C84(v459);
  v466 = *v90;
  v91 = *(v90 + 24);
  v467 = *(v90 + 16);
  v92 = *(v90 + 40);
  v300 = *(v90 + 32);
  v394 = v478;
  v395[0] = v479;
  v93 = *(v90 + 48);
  v395[1] = v480;
  v395[2] = v481;
  v398 = v486;
  v397 = v485;
  v396 = v484;
  v395[3] = v482;
  v395[4] = v483;
  v94 = sub_1AACD2C84(&v394);
  v470 = v467;
  v469 = v466;
  v468 = v91;
  v95 = *v94;
  v96 = *(v94 + 8);
  v97 = *(v94 + 16);
  v98 = *(v94 + 32);
  v99 = *(v94 + 40);
  v100 = *(v94 + 48);

  sub_1AACD7304(v95, v96, v97);
  sub_1AACD7C50(v98, v99, v100);

  sub_1AACD7304(v95, v96, v97);
  v101 = v99;
  v31 = v312;
  sub_1AACD7C50(v98, v101, v100);
  v102 = MEMORY[0x1E69810C8];
  v103 = MEMORY[0x1E69E62F8];
  sub_1AAE5ECA8(&v468, v327, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  sub_1AADFA6FC(&v469, v327);
  v104 = v300;
  sub_1AACD7C50(v300, v92, v93);
  *&v105 = COERCE_DOUBLE(sub_1AAE0B2C8(1, v31, v104, v92, v93));
  v107 = v106;
  sub_1AAD6E0DC(&v469);
  sub_1AAE5ED98(&v468, &qword_1ED9B1E40, v102, v103);
  sub_1AAD0E818(v104, v92, v93);

  if (v107)
  {
    v108 = NAN;
  }

  else
  {
    v108 = *&v105;
  }

  v6 = v303;
  v12 = v304;
  v8 = v311;
  v26 = v301;
  v27 = v302;
LABEL_35:
  if ((v309 & 1) == 0)
  {
    sub_1AADC7F60(&v423);
    sub_1AADC7F60(&v414);
    sub_1AADC7F60(&v414);
    sub_1AADC7F60(&v423);
    if (v27 == 255)
    {
      v153 = &v12[v8[17]];
      if (*(v153 + 3))
      {
        v155 = *(v153 + 4);
        v154 = *(v153 + 5);
        v309 = v153[48];
        v310 = v154;
        sub_1AACD7C50(v155, v154, v309);
      }

      else
      {
        v155 = 0;
        v309 = 252;
        v310 = 0;
      }

      v302 = v27;
      v303 = v6;
      v195 = &v12[*(v311 + 72)];
      if (*(v195 + 3))
      {
        v196 = v195[48];
        v197 = *(v195 + 4);
        v198 = *(v195 + 5);
        sub_1AACD7C50(v197, v198, v195[48]);
        v27 = v196 | 0x8000000000000000;
      }

      else
      {
        v197 = 0;
        v198 = 0;
        v27 = 0x80000000000000FCLL;
      }

      v199 = v26;
      v200 = v12;
      v201 = &v12[*(v311 + 80)];
      if (*(v201 + 3))
      {
        v202 = v201[48];
        v204 = *(v201 + 4);
        v203 = *(v201 + 5);
        sub_1AACD7C50(v204, v203, v202);
      }

      else
      {
        v204 = 0;
        v203 = 0;
        v202 = -4;
      }

      *&v339[0] = v155;
      *(&v339[0] + 1) = v310;
      *&v339[1] = v309;
      *(&v339[1] + 1) = v197;
      *&v340 = v198;
      *(&v340 + 1) = v27;
      *&v341 = v204;
      *(&v341 + 1) = v203;
      LOBYTE(v342) = v202;
      v139 = v200;
      v138 = v312;
      LOBYTE(v27) = v302;
      v140 = v303;
      v141 = v307;
      v142 = v199;
    }

    else
    {
      v138 = v31;
      v139 = v12;
      v140 = v6;
      v141 = v307;
      *&v339[0] = v307;
      *(&v339[0] + 1) = v26;
      *&v339[1] = v27;
      *(&v340 + 1) = 0;
      v142 = v26;
    }

    v314[0] = v340;
    v314[1] = v341;
    LOBYTE(v314[2]) = v342;
    v313[0] = v339[0];
    v313[1] = v339[1];
    v205 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineSeriesContext;
    swift_beginAccess();
    v206 = v138;
    v207 = *(v138 + v205);
    v208 = *(v207 + 16);
    sub_1AAE49370(v141, v142, v27);
    if (v208 && (v209 = sub_1AADB0B14(v313), (v210 & 1) != 0))
    {
      v211 = *(*(v207 + 56) + 8 * v209);
    }

    else
    {
      type metadata accessor for SgLine.Points();
      v211 = swift_allocObject();
      *(v211 + 16) = MEMORY[0x1E69E7CC0];
      sub_1AAD9B8B0(v339, &v394);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v394 = *(v206 + v205);
      *(v206 + v205) = 0x8000000000000000;
      sub_1AADD2C2C(v211, v313, isUniquelyReferenced_nonNull_native);
      sub_1AAE5ED18(v339);
      *(v206 + v205) = v394;
    }

    v213 = v140;
    swift_endAccess();
    sub_1AAE5ED18(v339);
    swift_beginAccess();
    v214 = *(*(v211 + 16) + 16);
    v215 = *(*(v206 + 16) + 24);
    *(&v395[2] + 1) = 0;
    *(&v395[1] + 8) = 0u;
    *(v395 + 8) = 0u;
    LOBYTE(v395[3]) = -1;
    *&v394 = v215;
    *(&v394 + 1) = v57;
    *v395 = v108;
    *&v395[4] = 0;
    *(&v395[3] + 1) = 0;
    BYTE8(v395[4]) = -1;
    v12 = v139;
    sub_1AAE5ECA8((v139 + 88), &v408, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
    if (BYTE8(v409[1]) == 255)
    {
      sub_1AAE5ED98(&v408, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
    }

    else
    {
      *v327 = v408;
      *&v327[16] = v409[0];
      *&v327[25] = *(v409 + 9);
      sub_1AAE5ED98(v395 + 8, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
      *(v395 + 8) = *v327;
      *(&v395[1] + 8) = *&v327[16];
      *(&v395[2] + 1) = *&v327[25];
      v216 = v139[152];
      if (v216 == 255)
      {
        *(&v395[3] + 8) = xmmword_1AAFA9FD0;
        BYTE8(v395[4]) = 0;
      }

      else
      {
        *(&v395[3] + 8) = *(v139 + 136);
        BYTE8(v395[4]) = v216;
      }
    }

    sub_1AAE5EDF4(&v394, v327);
    swift_beginAccess();
    v217 = *(v211 + 16);
    v218 = swift_isUniquelyReferenced_nonNull_native();
    *(v211 + 16) = v217;
    if ((v218 & 1) == 0)
    {
      v217 = sub_1AAD69968(0, *(v217 + 2) + 1, 1, v217);
      *(v211 + 16) = v217;
    }

    v220 = *(v217 + 2);
    v219 = *(v217 + 3);
    if (v220 >= v219 >> 1)
    {
      v217 = sub_1AAD69968((v219 > 1), v220 + 1, 1, v217);
    }

    *(v217 + 2) = v220 + 1;
    v221 = &v217[96 * v220];
    v222 = *&v327[16];
    *(v221 + 2) = *v327;
    *(v221 + 3) = v222;
    v223 = *&v327[32];
    v224 = *&v327[48];
    v225 = *&v327[64];
    *(v221 + 105) = *&v327[73];
    *(v221 + 5) = v224;
    *(v221 + 6) = v225;
    *(v221 + 4) = v223;
    *(v211 + 16) = v217;
    swift_endAccess();
    if (v214)
    {

      v226 = 0xE000000000000000;
    }

    else
    {
      v227 = sub_1AAE63890(&v414, &v423);
      v228 = v311;
      v229 = &v139[*(v311 + 48)];
      v230 = *v229;
      v231 = v229[8];
      v232 = v139;
      v233 = v305;
      sub_1AAE4911C(v232, v305);
      v234 = v306;
      sub_1AAD0F2A4(v233, &v306[*(v213 + 32)]);
      v235 = *&v12[*(v228 + 64)];
      *v234 = 0;
      *(v234 + 8) = v211;
      *(v234 + 16) = v227;
      *(v234 + 24) = v230;
      *(v234 + 32) = v231;
      *(v234 + *(v213 + 36)) = v235;
      v236 = swift_allocBox();
      sub_1AAE5EEA4(v234, v237);
      v226 = v236 | 0x7000000000000000;
    }

    *v308 = v226;
    sub_1AAE5EE50(&v394);
    return sub_1AAE492C0(v12, type metadata accessor for ChartContentRenderContext.Environment);
  }

  v112 = &v414;
  LODWORD(v309) = sub_1AAE63890(&v414, &v423);
  v113 = sub_1AAE63890(&v414, &v423);
  v114 = sub_1AAE63890(&v414, &v423);
  if (v114)
  {
    v115 = &v414;
  }

  else
  {
    v115 = &v423;
  }

  if (v114)
  {
    v112 = &v423;
  }

  sub_1AADC7F60(v115);
  sub_1AADC7F60(v112);
  v116 = v115[7];
  v396 = v115[6];
  v397 = v116;
  v117 = v115[8];
  v118 = v115[3];
  v395[1] = v115[2];
  v395[2] = v118;
  v119 = v115[4];
  v395[4] = v115[5];
  v395[3] = v119;
  v120 = *v115;
  v395[0] = v115[1];
  v394 = v120;
  v121 = v112[6];
  v122 = v112[7];
  v123 = v112[4];
  v404 = v112[5];
  v405 = v121;
  v124 = v112[8];
  v406 = v122;
  v407 = v124;
  v125 = v112[2];
  v126 = v112[3];
  v127 = *v112;
  v400 = v112[1];
  v401 = v125;
  v402 = v126;
  v403 = v123;
  v398 = v117;
  v399 = v127;
  v438 = v396;
  v439 = v397;
  v440 = v117;
  v434 = v395[1];
  v435 = v395[2];
  v437 = v395[4];
  v436 = v395[3];
  v433 = v395[0];
  v432 = v394;
  v455[6] = v405;
  v455[7] = v406;
  v455[8] = v407;
  v455[2] = v125;
  v455[3] = v126;
  v455[5] = v404;
  v455[4] = v123;
  v455[1] = v400;
  v455[0] = v127;
  sub_1AAD6D0FC();
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_1AAFA9FE0;
  sub_1AAD5835C(v455, v327);
  sub_1AAF72B20(v113, v455, &v408);
  v129 = v409[4];
  *(v128 + 96) = v409[3];
  *(v128 + 112) = v129;
  v130 = v409[2];
  *(v128 + 64) = v409[1];
  *(v128 + 80) = v130;
  *(v128 + 176) = v410;
  v131 = v409[7];
  *(v128 + 144) = v409[6];
  *(v128 + 160) = v131;
  *(v128 + 128) = v409[5];
  v132 = v409[0];
  *(v128 + 32) = v408;
  *(v128 + 48) = v132;
  v133 = &v12[v8[17]];
  v134 = *(v133 + 3);
  v391 = *(v133 + 2);
  v392 = v134;
  v393 = *(v133 + 8);
  v135 = *v133;
  v390 = *(v133 + 1);
  v389 = v135;
  if (*(&v390 + 1))
  {
    *(v339 + 7) = *v133;
    v136 = *(v133 + 3);
    *(v314 + 8) = *(v133 + 2);
    *(&v339[1] + 7) = *(v133 + 2);
    *(&v314[1] + 8) = v136;
    *(&v314[2] + 1) = *(v133 + 8);
    LOBYTE(v313[0]) = 5;
    *(v313 + 1) = v339[0];
    v313[1] = *(v339 + 15);
    *&v314[0] = *(&v390 + 1);
    LOBYTE(v315[0]) = 3;
    sub_1AAE0C0B0(v313);
    *&v327[96] = v315[1];
    *&v327[112] = v316;
    *&v327[128] = v317;
    *&v327[144] = v318;
    *&v327[32] = v314[0];
    *&v327[48] = v314[1];
    *&v327[64] = v314[2];
    *&v327[80] = v315[0];
    *v327 = v313[0];
    *&v327[16] = v313[1];
    nullsub_1(v327, v137);
    v385 = *&v327[96];
    v386 = *&v327[112];
    v387 = *&v327[128];
    v388 = *&v327[144];
    v381 = *&v327[32];
    v382 = *&v327[48];
    v383 = *&v327[64];
    v384 = *&v327[80];
    v379 = *v327;
    v380 = *&v327[16];
  }

  else
  {
    sub_1AAE2D7EC(&v379);
  }

  v143 = v384;
  *(v128 + 248) = v383;
  v144 = v381;
  *(v128 + 232) = v382;
  *(v128 + 216) = v144;
  v145 = v387;
  v146 = v385;
  *(v128 + 296) = v386;
  *(v128 + 312) = v145;
  *(v128 + 328) = v388;
  *(v128 + 264) = v143;
  *(v128 + 280) = v146;
  v147 = v380;
  *(v128 + 184) = v379;
  *(v128 + 200) = v147;
  v148 = &v12[v8[18]];
  v149 = *(v148 + 3);
  v376 = *(v148 + 2);
  v377 = v149;
  v378 = *(v148 + 8);
  v150 = *v148;
  v375 = *(v148 + 1);
  v374 = v150;
  if (*(&v375 + 1))
  {
    *(v339 + 7) = *v148;
    v151 = *(v148 + 3);
    *(v314 + 8) = *(v148 + 2);
    *(&v339[1] + 7) = *(v148 + 2);
    *(&v314[1] + 8) = v151;
    *(&v314[2] + 1) = *(v148 + 8);
    LOBYTE(v313[0]) = 6;
    *(v313 + 1) = v339[0];
    v313[1] = *(v339 + 15);
    *&v314[0] = *(&v375 + 1);
    LOBYTE(v315[0]) = 3;
    sub_1AAE0C0B0(v313);
    *&v327[96] = v315[1];
    *&v327[112] = v316;
    *&v327[128] = v317;
    *&v327[144] = v318;
    *&v327[32] = v314[0];
    *&v327[48] = v314[1];
    *&v327[64] = v314[2];
    *&v327[80] = v315[0];
    *v327 = v313[0];
    *&v327[16] = v313[1];
    nullsub_1(v327, v152);
    v370 = *&v327[96];
    v371 = *&v327[112];
    v372 = *&v327[128];
    v373 = *&v327[144];
    v366 = *&v327[32];
    v367 = *&v327[48];
    v368 = *&v327[64];
    v369 = *&v327[80];
    v364 = *v327;
    v365 = *&v327[16];
  }

  else
  {
    sub_1AAE2D7EC(&v364);
  }

  v156 = v369;
  *(v128 + 400) = v368;
  *(v128 + 416) = v156;
  v157 = v367;
  *(v128 + 368) = v366;
  *(v128 + 384) = v157;
  *(v128 + 480) = v373;
  v158 = v372;
  v159 = v370;
  *(v128 + 448) = v371;
  *(v128 + 464) = v158;
  *(v128 + 432) = v159;
  v160 = v365;
  *(v128 + 336) = v364;
  *(v128 + 352) = v160;
  v161 = &v12[v8[20]];
  v162 = *(v161 + 3);
  v361 = *(v161 + 2);
  v362 = v162;
  v363 = *(v161 + 8);
  v163 = *v161;
  v360 = *(v161 + 1);
  v359 = v163;
  if (*(&v360 + 1))
  {
    *(v339 + 7) = *v161;
    v164 = *(v161 + 3);
    *(v314 + 8) = *(v161 + 2);
    *(&v339[1] + 7) = *(v161 + 2);
    *(&v314[1] + 8) = v164;
    *(&v314[2] + 1) = *(v161 + 8);
    LOBYTE(v313[0]) = 8;
    *(v313 + 1) = v339[0];
    v313[1] = *(v339 + 15);
    *&v314[0] = *(&v360 + 1);
    LOBYTE(v315[0]) = 3;
    sub_1AAE0C0B0(v313);
    *&v327[96] = v315[1];
    *&v327[112] = v316;
    *&v327[128] = v317;
    *&v327[144] = v318;
    *&v327[32] = v314[0];
    *&v327[48] = v314[1];
    *&v327[64] = v314[2];
    *&v327[80] = v315[0];
    *v327 = v313[0];
    *&v327[16] = v313[1];
    nullsub_1(v327, v165);
    v355 = *&v327[96];
    v356 = *&v327[112];
    v357 = *&v327[128];
    v358 = *&v327[144];
    v351 = *&v327[32];
    v352 = *&v327[48];
    v353 = *&v327[64];
    v354 = *&v327[80];
    v349 = *v327;
    v350 = *&v327[16];
  }

  else
  {
    sub_1AAE2D7EC(&v349);
  }

  *(v128 + 632) = v358;
  v166 = v356;
  *(v128 + 584) = v355;
  *(v128 + 600) = v166;
  *(v128 + 616) = v357;
  v167 = v352;
  *(v128 + 520) = v351;
  *(v128 + 536) = v167;
  v168 = v354;
  *(v128 + 552) = v353;
  *(v128 + 568) = v168;
  v169 = v350;
  *(v128 + 488) = v349;
  *(v128 + 504) = v169;
  v170 = MEMORY[0x1E69E6720];
  sub_1AAE5ECA8(&v389, v327, qword_1ED9B3D88, &type metadata for AnyPlottableValue, MEMORY[0x1E69E6720]);
  sub_1AAE5ECA8(&v374, v327, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v170);
  sub_1AAE5ECA8(&v359, v327, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v170);
  v306 = sub_1AAF70438(v128);
  v307 = v171;
  swift_setDeallocating();
  sub_1AAE5ED48(0, qword_1ED9B2098, &type metadata for AccessibilityDataField, v170);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v456[6] = v438;
  v456[7] = v439;
  v456[8] = v440;
  v456[2] = v434;
  v456[3] = v435;
  v456[5] = v437;
  v456[4] = v436;
  v456[1] = v433;
  v456[0] = v432;
  result = sub_1AACDB99C(v456);
  if (!result)
  {
    v173 = sub_1AACD2C84(v456);
    v471 = *v173;
    v174 = *(v173 + 24);
    v472 = *(v173 + 16);
    v457 = *(v173 + 32);
    v458 = *(v173 + 48);
    v441 = v471;
    v442 = v472;
    v443 = v174;
    v444 = v457;
    v445 = v458;
    *&v446[15] = *(v173 + 64);
    *v446 = *(v173 + 49);
    v474 = v471;
    v475 = v472;
    v473 = v174;
    v477 = v458;
    v476 = v457;
    if (v309)
    {
      swift_beginAccess();
      memcpy(v327, (v31 + 80), sizeof(v327));
      if (*&v327[24])
      {
        v175 = *(v31 + 128);
        v332 = *(v31 + 112);
        v333 = v175;
        v334 = *(v31 + 144);
        LOBYTE(v335[0]) = *(v31 + 160);
        v176 = *(v31 + 96);
        v330 = *(v31 + 80);
        v331 = v176;

        sub_1AADFA6FC(&v474, v313);
        sub_1AAE5ECA8(&v473, v313, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
        sub_1AAE14D50(&v476, v313);
        sub_1AAD5835C(&v432, v313);
        v323 = v332;
        v324 = v333;
        v325 = v334;
        v326 = v335[0];
        v321 = v330;
        v322 = v331;
LABEL_58:
        v177 = *(&v325 + 1);
        v178 = v323;
        v179 = v324;
        v180 = v326;
        sub_1AAE5ECA8(v327, v313, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AAE0BFDC(&v321, v313);
        sub_1AAE0A738(v178, *(&v178 + 1), v179, v177, v180, 3, &v411);
        v312 = v411;
        v305 = v412;
        v181 = v413;
        sub_1AAE0C014(&v321);
        sub_1AAD04750(v321, *(&v321 + 1), v322);

        sub_1AAD0E818(v178, *(&v178 + 1), v179);
        v182 = v305;
        v183 = v312;
        v8 = v311;
        goto LABEL_103;
      }

      v193 = v327[257];

      if (v193 == 2)
      {
        sub_1AADFA6FC(&v474, v313);
        sub_1AAE5ECA8(&v473, v313, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
        sub_1AAE14D50(&v476, v313);
        sub_1AAD5835C(&v432, v313);
      }

      else
      {
        sub_1AADFA6FC(&v474, v313);
        sub_1AAE5ECA8(&v473, v313, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
        sub_1AAE14D50(&v476, v313);
        sub_1AAD5835C(&v432, v313);
        sub_1AACBB21C(v327, v313);
        v238 = sub_1AAF8E7A4();
        if (v238 == sub_1AAF8E7A4())
        {
          sub_1AAE5ECA8(&v327[176], v313, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
          sub_1AACBB254(v327);
          if (*&v327[200])
          {
            v321 = *&v327[176];
            v322 = *&v327[192];
            v323 = *&v327[208];
            v324 = *&v327[224];
            v325 = *&v327[240];
            v326 = v327[256];
            goto LABEL_58;
          }
        }

        else
        {
          sub_1AACBB254(v327);
        }
      }

      v183 = 0uLL;
      v181 = 2;
      v182 = 0uLL;
LABEL_103:
      v240 = v310 + v8[21];
      v241 = *(v240 + 16);
      v449 = *v240;
      v450 = v241;
      v451 = v183;
      v452 = v182;
      v453 = v181;
      v454 = *(v31 + 352);
      v243 = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
      v242 = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
      v313[0] = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
      v313[1] = v243;
      v314[0] = v242;
      v245 = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
      v244 = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
      v246 = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
      *(v315 + 9) = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
      v314[2] = v245;
      v315[0] = v244;
      v314[1] = v246;
      if (BYTE8(v315[1]) == 255)
      {
LABEL_104:

        sub_1AAD6E0DC(&v474);
        sub_1AAE5ED98(&v473, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
        sub_1AAE49270(v339);
LABEL_109:
        sub_1AAD6E18C(&v476);
        *&v327[128] = v346;
        *&v327[144] = v347;
        *&v327[160] = v348;
        *&v327[64] = v342;
        *&v327[80] = v343;
        *&v327[96] = v344;
        *&v327[112] = v345;
        *v327 = v339[0];
        *&v327[16] = v339[1];
        *&v327[32] = v340;
        *&v327[48] = v341;
        if (sub_1AAE492A8(v327) == 1)
        {
          sub_1AADC7F60(&v432);

          sub_1AADC7F60(v455);
          sub_1AAD6E0DC(&v474);
          sub_1AAE5ED98(&v473, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
          sub_1AAD6E18C(&v476);
          v255 = 0xE000000000000000;
        }

        else
        {
          if (sub_1AAE63890(&v414, &v423))
          {
            if (*(v310 + v8[26]))
            {
              v257 = *(v31 + 40);
              v258 = *(v31 + 48);
              if (v258 >= v257)
              {
                v108 = *(v31 + 40);
              }

              else
              {
                v108 = *(v31 + 48);
              }

              v259 = vabdd_f64(v258, v257);
              v260 = 0.0;
            }

            else
            {
              if (*&v327[8] >= *v327)
              {
                v57 = *v327;
              }

              else
              {
                v57 = *&v327[8];
              }

              v263 = *(v31 + 40);
              v264 = *(v31 + 48);
              if (v264 >= v263)
              {
                v108 = *(v31 + 40);
              }

              else
              {
                v108 = *(v31 + 48);
              }

              v260 = vabdd_f64(*&v327[8], *v327);
              v259 = vabdd_f64(v264, v263);
            }
          }

          else if (*(v310 + v8[26]))
          {
            v261 = *(v31 + 24);
            v262 = *(v31 + 32);
            if (v262 >= v261)
            {
              v57 = *(v31 + 24);
            }

            else
            {
              v57 = *(v31 + 32);
            }

            v260 = vabdd_f64(v262, v261);
            v259 = 0.0;
          }

          else
          {
            v265 = *(v31 + 24);
            v266 = *(v31 + 32);
            if (v266 >= v265)
            {
              v57 = *(v31 + 24);
            }

            else
            {
              v57 = *(v31 + 32);
            }

            if (*&v327[8] >= *v327)
            {
              v108 = *v327;
            }

            else
            {
              v108 = *&v327[8];
            }

            v260 = vabdd_f64(v266, v265);
            v259 = vabdd_f64(*&v327[8], *v327);
          }

          *&v312 = *(*(v31 + 16) + 24);
          v267 = v8[24];
          v268 = &v12[v8[25]];
          *&v305 = *(v268 + 1);
          v269 = &v12[v8[23]];
          v270 = *v269;
          v271 = v269[1];
          v272 = v12;
          v274 = v269[2];
          v273 = v269[3];
          v276 = *&v272[v267];
          v275 = *&v272[v267 + 8];
          v278 = *&v272[v267 + 24];
          v310 = *&v272[v267 + 16];
          v277 = v310;
          *&v256 = *v268;
          v311 = v256;

          sub_1AADA61DC(v270, v271, v274, v273);
          sub_1AADA61DC(v276, v275, v277, v278);
          v279 = v306;

          sub_1AAF72B20((v309 & 1) == 0, &v432, v328);
          sub_1AADC7F60(v455);
          sub_1AAD6E0DC(&v474);
          sub_1AAE5ED98(&v473, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
          sub_1AAD6E18C(&v476);

          v335[1] = *&v327[112];
          v336 = *&v327[128];
          v337 = *&v327[144];
          v338 = *&v327[160];
          v332 = *&v327[48];
          v333 = *&v327[64];
          v334 = *&v327[80];
          v335[0] = *&v327[96];
          v330 = *&v327[16];
          v331 = *&v327[32];
          nullsub_1(&v330, v280);
          sub_1AAE2D7EC(v313);
          v281 = swift_allocObject();
          *(v281 + 16) = v312;
          *(v281 + 24) = v57;
          *(v281 + 32) = v108;
          *(v281 + 40) = v260;
          *(v281 + 48) = v259;
          *&v282 = v311;
          *(&v282 + 1) = v305;
          *&v283 = v270;
          *(&v283 + 1) = v271;
          *(v281 + 72) = v283;
          *&v283 = v274;
          v12 = v272;
          *(&v283 + 1) = v273;
          *&v284 = v276;
          *(&v284 + 1) = v275;
          *(v281 + 56) = v282;
          *(v281 + 104) = v284;
          *(v281 + 88) = v283;
          *(v281 + 120) = v310;
          *(v281 + 128) = v278;
          *(v281 + 136) = v279;
          v285 = v328[7];
          *(v281 + 240) = v328[6];
          *(v281 + 256) = v285;
          *(v281 + 272) = v328[8];
          v286 = v329;
          v287 = v328[3];
          *(v281 + 176) = v328[2];
          *(v281 + 192) = v287;
          v288 = v328[5];
          *(v281 + 208) = v328[4];
          *(v281 + 224) = v288;
          v289 = v328[1];
          *(v281 + 144) = v328[0];
          *(v281 + 160) = v289;
          v290 = v307;
          *(v281 + 288) = v286;
          *(v281 + 296) = v290;
          v291 = v336;
          *(v281 + 400) = v335[1];
          *(v281 + 416) = v291;
          *(v281 + 432) = v337;
          *(v281 + 448) = v338;
          v292 = v333;
          *(v281 + 336) = v332;
          *(v281 + 352) = v292;
          v293 = v335[0];
          *(v281 + 368) = v334;
          *(v281 + 384) = v293;
          v294 = v331;
          *(v281 + 304) = v330;
          *(v281 + 320) = v294;
          v295 = v316;
          *(v281 + 552) = v315[1];
          *(v281 + 568) = v295;
          *(v281 + 584) = v317;
          *(v281 + 600) = v318;
          v296 = v314[1];
          *(v281 + 488) = v314[0];
          *(v281 + 504) = v296;
          v297 = v315[0];
          *(v281 + 520) = v314[2];
          *(v281 + 536) = v297;
          v298 = v313[1];
          *(v281 + 456) = v313[0];
          *(v281 + 472) = v298;
          *(v281 + 608) = 257;
          *(v281 + 610) = v319;
          *(v281 + 614) = v320;
          *(v281 + 616) = 0;
          v255 = v281 | 0xC000000000000000;
        }

        *v308 = v255;
        return sub_1AAE492C0(v12, type metadata accessor for ChartContentRenderContext.Environment);
      }

LABEL_108:
      v334 = v314[2];
      v335[0] = v315[0];
      *(v335 + 9) = *(v315 + 9);
      v330 = v313[0];
      v331 = v313[1];
      v333 = v314[1];
      v332 = v314[0];
      v447[1] = v313[1];
      v447[0] = v313[0];
      *(v448 + 9) = *(v315 + 9);
      v447[2] = v314[0];
      v447[3] = v314[1];
      v448[0] = v315[0];
      v447[4] = v314[2];
      sub_1AAE5ECA8(&v330, &v319, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
      sub_1AAE08D1C(v447, v31, (v309 & 1) == 0, &v441, v339);
      sub_1AAE492C0(v313, sub_1AACCF364);
      nullsub_1(v339, v254);

      sub_1AAD6E0DC(&v474);
      sub_1AAE5ED98(&v473, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      goto LABEL_109;
    }

    v304 = v12;
    swift_beginAccess();
    memcpy(v327, (v31 + 80), sizeof(v327));
    if (*&v327[112])
    {
      v184 = *(v31 + 216);
      v332 = *(v31 + 200);
      v333 = v184;
      v334 = *(v31 + 232);
      LOBYTE(v335[0]) = *(v31 + 248);
      v185 = *(v31 + 184);
      v330 = *(v31 + 168);
      v331 = v185;

      sub_1AADFA6FC(&v474, v313);
      sub_1AAE5ECA8(&v473, v313, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AAE14D50(&v476, v313);
      sub_1AAD5835C(&v432, v313);
      v323 = v332;
      v324 = v333;
      v325 = v334;
      v326 = v335[0];
      v321 = v330;
      v322 = v331;
LABEL_61:
      v186 = *(&v325 + 1);
      v187 = v323;
      v188 = v324;
      v189 = v326;
      sub_1AAE5ECA8(&v327[88], v313, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v321, v313);
      sub_1AAE0A738(v187, *(&v187 + 1), v188, v186, v189, 4, &v411);
      v312 = v411;
      v305 = v412;
      v190 = v413;
      sub_1AAE0C014(&v321);
      sub_1AAD04750(v321, *(&v321 + 1), v322);

      sub_1AAD0E818(v187, *(&v187 + 1), v188);
      v191 = v305;
      v192 = v312;
      v8 = v311;
      goto LABEL_107;
    }

    v194 = v327[257];

    if (v194 == 2)
    {
      sub_1AADFA6FC(&v474, v313);
      sub_1AAE5ECA8(&v473, v313, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AAE14D50(&v476, v313);
      sub_1AAD5835C(&v432, v313);
    }

    else
    {
      sub_1AADFA6FC(&v474, v313);
      sub_1AAE5ECA8(&v473, v313, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AAE14D50(&v476, v313);
      sub_1AAD5835C(&v432, v313);
      sub_1AACBB21C(v327, v313);
      v239 = sub_1AAF8E7A4();
      if (v239 == sub_1AAF8E7A4())
      {
        sub_1AAE5ECA8(&v327[176], v313, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AACBB254(v327);
        if (*&v327[200])
        {
          v321 = *&v327[176];
          v322 = *&v327[192];
          v323 = *&v327[208];
          v324 = *&v327[224];
          v325 = *&v327[240];
          v326 = v327[256];
          v31 = v312;
          goto LABEL_61;
        }
      }

      else
      {
        sub_1AACBB254(v327);
      }
    }

    v192 = 0uLL;
    v190 = 2;
    v191 = 0uLL;
    v31 = v312;
LABEL_107:
    v247 = v310 + v8[22];
    v248 = *(v247 + 16);
    v449 = *v247;
    v450 = v248;
    v451 = v192;
    v452 = v191;
    v453 = v190;
    v454 = *(v31 + 368);
    v250 = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16);
    v249 = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32);
    v313[0] = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
    v313[1] = v250;
    v314[0] = v249;
    v252 = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64);
    v251 = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80);
    v253 = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48);
    *(v315 + 9) = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89);
    v314[2] = v252;
    v315[0] = v251;
    v314[1] = v253;
    v12 = v304;
    if (BYTE8(v315[1]) == 255)
    {
      goto LABEL_104;
    }

    goto LABEL_108;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAE5E57C(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[7];
  v15[6] = a1[6];
  v15[7] = v2;
  v3 = a1[9];
  v15[8] = a1[8];
  v4 = a1[3];
  v15[2] = a1[2];
  v15[3] = v4;
  v5 = a1[5];
  v15[4] = a1[4];
  v15[5] = v5;
  v6 = a1[1];
  v15[0] = *a1;
  v15[1] = v6;
  v7 = a1[14];
  v8 = a1[16];
  v9 = a1[17];
  v16[6] = a1[15];
  v16[7] = v8;
  v16[8] = v9;
  v10 = a1[10];
  v11 = a1[12];
  v12 = a1[13];
  v16[2] = a1[11];
  v16[3] = v11;
  v16[4] = v12;
  v16[5] = v7;
  v16[0] = v3;
  v16[1] = v10;
  v13 = *a2;
  result = sub_1AACD2B20(v15, v16);
  if (*(v13 + 1264) == 1)
  {
    *(v13 + 1265) = 1;
  }

  return result;
}

uint64_t sub_1AAE5E610(uint64_t a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 40);
  v7 = *(v2 + 16);
  if ((v6 & 0x8000000000000000) == 0)
  {
    MEMORY[0x1AC5992C0](0);
    v8 = a1;
    v9 = v5;
    v10 = v4;
    v11 = v7;
LABEL_3:

    return sub_1AAE86E08(v8, v9, v10, v11);
  }

  v14 = *(v2 + 24);
  v13 = *(v2 + 32);
  v16 = *(v2 + 48);
  v15 = *(v2 + 56);
  v17 = *(v2 + 64);
  MEMORY[0x1AC5992C0](1);
  if (v7 < 0xFCu)
  {
    sub_1AAF906B4();
    if ((v7 & 0x80) != 0)
    {
      MEMORY[0x1AC5992C0](1);
      sub_1AACDC020(a1, v5, v4, v7 & 1);
    }

    else
    {
      MEMORY[0x1AC5992C0](0);
      sub_1AAE86E08(a1, v5, v4, v7);
    }
  }

  else
  {
    sub_1AAF906B4();
  }

  if (v6 <= 0xFBu)
  {
    sub_1AAF906B4();
    if ((v6 & 0x80) != 0)
    {
      MEMORY[0x1AC5992C0](1);
      sub_1AACDC020(a1, v14, v13, v6 & 1);
      if (v17 <= 0xFB)
      {
        goto LABEL_18;
      }
    }

    else
    {
      MEMORY[0x1AC5992C0](0);
      sub_1AAE86E08(a1, v14, v13, v6);
      if (v17 <= 0xFB)
      {
        goto LABEL_18;
      }
    }

    return sub_1AAF906B4();
  }

  sub_1AAF906B4();
  if (v17 > 0xFB)
  {
    return sub_1AAF906B4();
  }

LABEL_18:
  sub_1AAF906B4();
  if ((v17 & 0x80) == 0)
  {
    MEMORY[0x1AC5992C0](0);
    v8 = a1;
    v9 = v16;
    v10 = v15;
    v11 = v17;
    goto LABEL_3;
  }

  MEMORY[0x1AC5992C0](1);

  return sub_1AACDC020(a1, v16, v15, v17 & 1);
}

uint64_t sub_1AAE5E804()
{
  sub_1AAF90694();
  sub_1AAE5E610(v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAE5E848()
{
  sub_1AAF90694();
  sub_1AAE5E610(v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAE5E884(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AAE5E8E0(v7, v9) & 1;
}

uint64_t sub_1AAE5E8E0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 40);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if ((*(a2 + 40) & 0x8000000000000000) != 0)
    {
      return 0;
    }

    v8 = *a2;
    v9 = *(a2 + 16);
    if (!v6)
    {
      if (!*(a2 + 16))
      {
        return v4 == v8;
      }

      return 0;
    }

    if (v6 == 1)
    {
      if (v9 == 1)
      {
        return v4 == v8;
      }

      return 0;
    }

    if (v9 != 2)
    {
      return 0;
    }

    if (*&v4 == *&v8 && v5 == *(a2 + 8))
    {
      return 1;
    }

    return (sub_1AAF904F4() & 1) != 0;
  }

  v10 = *(a2 + 40);
  if ((v10 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 24);
  v11 = *(a1 + 32);
  v14 = *(a1 + 48);
  v13 = *(a1 + 56);
  v15 = *(a1 + 64);
  v17 = *(a2 + 24);
  v16 = *(a2 + 32);
  v19 = *(a2 + 48);
  v18 = *(a2 + 56);
  v20 = *(a2 + 16);
  v21 = *(a2 + 64);
  if (*(a1 + 16) <= 0xFBu)
  {
    if (v20 > 0xFBu)
    {
      return 0;
    }

    v23 = *a2;
    v24 = *(a2 + 8);
    if ((v6 & 0x80) != 0)
    {
      if ((v20 & 0x80) == 0)
      {
        return 0;
      }

      if (v6)
      {
        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v20)
      {
        return 0;
      }

      v29 = v4;
      result = 0;
      if (v29 != v23)
      {
        return result;
      }

      v26 = *(a1 + 8);
      v27 = v24;
    }

    else
    {
      if ((v20 & 0x80) != 0)
      {
        return 0;
      }

      if (*(a1 + 16))
      {
        if (*(a1 + 16) != 1)
        {
          if (v20 != 2)
          {
            return 0;
          }

          if (*&v4 != *&v23 || v5 != *&v24)
          {
            v35 = *(a2 + 56);
            v36 = *(a1 + 56);
            v28 = sub_1AAF904F4();
            v18 = v35;
            v13 = v36;
            if ((v28 & 1) == 0)
            {
              return 0;
            }
          }

          goto LABEL_10;
        }

        v25 = v4;
        result = 0;
        if (v20 != 1)
        {
          return result;
        }
      }

      else
      {
        v25 = v4;
        result = 0;
        if (v20)
        {
          return result;
        }
      }

      v26 = v25;
      v27 = v23;
    }

    if (v26 != v27)
    {
      return result;
    }
  }

  else if (v20 <= 0xFBu)
  {
    return 0;
  }

LABEL_10:
  if (v7 > 0xFBu)
  {
    if (v10 <= 0xFBu)
    {
      return 0;
    }

LABEL_12:
    if (v15 > 0xFB)
    {
      return v21 > 0xFB;
    }

    if (v21 > 0xFB)
    {
      return 0;
    }

    if ((v15 & 0x80) != 0)
    {
      if ((v21 & 0x80) != 0)
      {
        if (v15)
        {
          if ((v21 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v21)
        {
          return 0;
        }

        return v14 == v19 && v13 == v18;
      }

      return 0;
    }

    if ((v21 & 0x80) != 0)
    {
      return 0;
    }

    if (v15)
    {
      if (v15 != 1)
      {
        if (v21 != 2)
        {
          return 0;
        }

        if (*&v14 == *&v19 && *&v13 == *&v18)
        {
          return 1;
        }

        return (sub_1AAF904F4() & 1) != 0;
      }

      if (v21 != 1)
      {
        return 0;
      }
    }

    else if (v21)
    {
      return 0;
    }

    return v14 == v19;
  }

  if (v10 > 0xFBu)
  {
    return 0;
  }

  if ((v7 & 0x80) != 0)
  {
    if ((v10 & 0x80) == 0)
    {
      return 0;
    }

    if (v7)
    {
      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    result = 0;
    if (v12 != v17)
    {
      return result;
    }

    v30 = v11;
    v31 = v16;
LABEL_78:
    if (v30 == v31)
    {
      goto LABEL_12;
    }

    return result;
  }

  if ((v10 & 0x80) != 0)
  {
    return 0;
  }

  if (!v7)
  {
    result = 0;
    if (v10)
    {
      return result;
    }

LABEL_65:
    v30 = v12;
    v31 = v17;
    goto LABEL_78;
  }

  if (v7 != 1)
  {
    if (v10 != 2)
    {
      return 0;
    }

    if (*&v12 != *&v17 || *&v11 != *&v16)
    {
      v32 = v13;
      v33 = v18;
      v34 = sub_1AAF904F4();
      v18 = v33;
      v13 = v32;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_12;
  }

  result = 0;
  if (v10 == 1)
  {
    goto LABEL_65;
  }

  return result;
}

uint64_t sub_1AAE5EC3C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1AAE5EF08(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE5ECA8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AAE5ED48(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1AAE5ED48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAE5ED98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AAE5ED48(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AAE5EEA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SgLine(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1AAE5EF08(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1AAE5EF7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 17);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAE5EFC8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 64) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 65) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = -a2 << 8;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 49) = 0u;
      return result;
    }

    *(a1 + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAE5F044(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40) | (a2 << 63);
  *(result + 16) = *(result + 16);
  *(result + 40) = v2;
  return result;
}

unint64_t sub_1AAE5F070()
{
  result = qword_1ED9B10E0;
  if (!qword_1ED9B10E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B10E0);
  }

  return result;
}

uint64_t LinePlot<A>.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE0800(v2, v4, a2);
  sub_1AACE0800(v7, v4, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t LinePlot.init<A, B, C>(_:x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v51 = a8;
  v54 = a6;
  v55 = a3;
  v49 = a5;
  v57 = a9;
  v58 = a2;
  v47 = a1;
  v56 = a10;
  v42 = a7;
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for PlottableProjection();
  v40 = v12;
  v13 = *(v12 - 8);
  v50 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v40 - v14;
  v45 = type metadata accessor for PlottableProjection();
  v15 = *(v45 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v18 = &v40 - v17;
  v41 = &v40 - v17;
  v48 = *(a4 - 8);
  v19 = v48;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v22;
  v23 = type metadata accessor for VectorizedLinePlotContent();
  v52 = *(v23 - 8);
  v53 = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v44 = &v40 - v25;
  (*(v19 + 16))(v22, a1, a4, v24);
  v26 = v45;
  (*(v15 + 16))(v18, v58, v45);
  v27 = v46;
  v28 = v55;
  (*(v13 + 16))(v46, v55, v12);
  v29 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v30 = (v16 + *(v13 + 80) + v29) & ~*(v13 + 80);
  v31 = swift_allocObject();
  v32 = v49;
  *(v31 + 2) = a4;
  *(v31 + 3) = v32;
  v33 = v41;
  v34 = v42;
  *(v31 + 4) = v54;
  *(v31 + 5) = v34;
  v35 = v56;
  *(v31 + 6) = v51;
  *(v31 + 7) = v35;
  (*(v15 + 32))(&v31[v29], v33, v26);
  v36 = v40;
  (*(v13 + 32))(&v31[v30], v27, v40);
  v37 = v44;
  sub_1AAE5FB0C(v43, sub_1AAE5F9BC, v31, a4, &type metadata for LineMark, v34, &protocol witness table for LineMark, v44);
  (*(v13 + 8))(v28, v36);
  (*(v15 + 8))(v58, v26);
  (*(v48 + 8))(v47, a4);
  v38 = v53;
  swift_getWitnessTable();
  return (*(v52 + 32))(v57, v37, v38);
}

void *sub_1AAE5F640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, void *a7@<X8>, uint64_t a8)
{
  v47 = a2;
  v48 = a3;
  v49 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = a5;
  v44 = a8;
  v13 = type metadata accessor for PlottableProjection();
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v38 - v14;
  v15 = type metadata accessor for PlottableValue();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v41 = &v38 - v16;
  v39 = a6;
  v40 = type metadata accessor for PlottableProjection();
  v17 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v19 = &v38 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38 - v22;
  v24 = type metadata accessor for PlottableValue();
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v38 - v26;
  v28 = *(v20 + 16);
  v28(v23, a1, AssociatedTypeWitness, v25);
  (*(v17 + 16))(v19, v47, v40);
  v29 = v19;
  v30 = v39;
  sub_1AAF30D00(v23, v29, a4, AssociatedTypeWitness, v39, v27);
  (v28)(v23, a1, AssociatedTypeWitness);
  v31 = v42;
  (*(v45 + 16))(v42, v48, v46);
  v32 = v41;
  v33 = v23;
  v34 = v31;
  v35 = v43;
  v36 = v44;
  sub_1AAF30D00(v33, v34, v43, AssociatedTypeWitness, v44, v41);
  LineMark.init<A, B>(x:y:)(v27, v32, a4, v35, v30, v36, v50);
  return memcpy(v49, v50, 0x131uLL);
}

void *sub_1AAE5F9BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[6];
  v6 = v2[7];
  swift_getAssociatedTypeWitness();
  v7 = *(type metadata accessor for PlottableProjection() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for PlottableProjection() - 8);
  return sub_1AAE5F640(a1, v2 + v8, v2 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), v3, v4, v5, a2, v6);
}

uint64_t sub_1AAE5FB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a4 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v20, v17);
  sub_1AAF311A4(v19, a2, a3, a4, a5, a6, a7, a8);
  return (*(v16 + 8))(a1, a4);
}

uint64_t LinePlot.init<A, B, C, D>(_:x:y:series:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v67 = a7;
  v62 = a6;
  v79 = a4;
  v80 = a2;
  v81 = a3;
  v78 = a1;
  v74 = a9;
  v70 = a12;
  v72 = a8;
  v73 = a13;
  v64 = a11;
  v76 = a10;
  swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for PlottableProjection();
  v65 = *(v14 - 8);
  v66 = v14;
  v68 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v55 - v15;
  v77 = type metadata accessor for PlottableProjection();
  v75 = *(v77 - 8);
  v16 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v18 = &v55 - v17;
  v58 = &v55 - v17;
  v19 = type metadata accessor for PlottableProjection();
  v56 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v55 - v22;
  v57 = &v55 - v22;
  v24 = a5;
  v63 = *(a5 - 8);
  v25 = v63;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v28;
  v71 = type metadata accessor for VectorizedLinePlotContent();
  v69 = *(v71 - 8);
  v29 = MEMORY[0x1EEE9AC00](v71);
  v60 = &v55 - v30;
  v31 = *(v25 + 16);
  v55 = a5;
  v31(v28, v78, a5, v29);
  (*(v20 + 16))(v23, v80, v19);
  v32 = v75;
  (*(v75 + 16))(v18, v81, v77);
  v34 = v65;
  v33 = v66;
  v35 = v61;
  (*(v65 + 16))(v61, v79, v66);
  v36 = (*(v20 + 80) + 80) & ~*(v20 + 80);
  v37 = (v21 + *(v32 + 80) + v36) & ~*(v32 + 80);
  v38 = (v16 + *(v34 + 80) + v37) & ~*(v34 + 80);
  v39 = swift_allocObject();
  v40 = v62;
  *(v39 + 2) = v24;
  *(v39 + 3) = v40;
  v41 = v72;
  *(v39 + 4) = v67;
  *(v39 + 5) = v41;
  v42 = v76;
  v43 = v64;
  *(v39 + 6) = v76;
  *(v39 + 7) = v43;
  v44 = v73;
  *(v39 + 8) = v70;
  *(v39 + 9) = v44;
  v45 = &v39[v36];
  v46 = v56;
  (*(v20 + 32))(v45, v57, v56);
  v47 = *(v32 + 32);
  v48 = v77;
  v47(&v39[v37], v58, v77);
  v49 = v33;
  (*(v34 + 32))(&v39[v38], v35, v33);
  v50 = v60;
  v51 = v39;
  v52 = v55;
  sub_1AAE5FB0C(v59, sub_1AAE606DC, v51, v55, &type metadata for LineMark, v42, &protocol witness table for LineMark, v60);
  (*(v34 + 8))(v79, v49);
  (*(v75 + 8))(v81, v48);
  (*(v20 + 8))(v80, v46);
  (*(v63 + 8))(v78, v52);
  v53 = v71;
  swift_getWitnessTable();
  return (*(v69 + 32))(v74, v50, v53);
}

void *sub_1AAE60208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v66 = a3;
  v67 = a4;
  v62 = a2;
  v59 = a1;
  v68 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = a7;
  v63 = a12;
  v16 = type metadata accessor for PlottableProjection();
  v64 = *(v16 - 8);
  v65 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v50 - v17;
  v18 = type metadata accessor for PlottableValue();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v58 = &v50 - v19;
  v54 = a6;
  v55 = a11;
  v20 = type metadata accessor for PlottableProjection();
  v56 = *(v20 - 8);
  v57 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v53 = &v50 - v21;
  v22 = type metadata accessor for PlottableValue();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v52 = &v50 - v23;
  v69 = a5;
  v51 = type metadata accessor for PlottableProjection();
  v24 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v26 = &v50 - v25;
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v50 - v29;
  v50 = a10;
  v31 = type metadata accessor for PlottableValue();
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v50 - v33;
  v35 = *(v27 + 16);
  v36 = v59;
  v35(v30, v59, AssociatedTypeWitness, v32);
  (*(v24 + 16))(v26, v62, v51);
  sub_1AAF30D00(v30, v26, v69, AssociatedTypeWitness, a10, v34);
  v37 = v36;
  (v35)(v30, v36, AssociatedTypeWitness);
  v38 = v53;
  (*(v56 + 16))(v53, v66, v57);
  v39 = v52;
  v40 = v38;
  v41 = v54;
  v42 = v55;
  sub_1AAF30D00(v30, v40, v54, AssociatedTypeWitness, v55, v52);
  (v35)(v30, v37, AssociatedTypeWitness);
  v43 = v60;
  (*(v64 + 16))(v60, v67, v65);
  v44 = v58;
  v45 = v43;
  v46 = v61;
  v47 = AssociatedTypeWitness;
  v48 = v63;
  sub_1AAF30D00(v30, v45, v61, v47, v63, v58);
  LineMark.init<A, B, C>(x:y:series:)(v34, v39, v44, v69, v41, v46, v50, v42, v70, v48);
  return memcpy(v68, v70, 0x131uLL);
}

void *sub_1AAE606DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v17 = v2[3];
  v3 = v2[4];
  v16 = v2[5];
  v4 = v2[6];
  v5 = v2[7];
  v6 = v2[8];
  v7 = v2[9];
  swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for PlottableProjection() - 8);
  v9 = (*(v8 + 80) + 80) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for PlottableProjection() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for PlottableProjection() - 8);
  return sub_1AAE60208(a1, v2 + v9, v2 + v12, v2 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)), v17, v3, v16, a2, v4, v5, v6, v7);
}

double LinePlot<A>.init(x:y:domain:function:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, __int128 a10, char a11, uint64_t a12, uint64_t a13)
{
  *&v19 = a1;
  *(&v19 + 1) = a2;
  LOBYTE(v20) = a3 & 1;
  *(&v20 + 1) = a4;
  *&v21 = a5;
  *(&v21 + 1) = a6;
  LOBYTE(v22) = a7 & 1;
  *(&v22 + 1) = a8;
  v23 = a10;
  LOBYTE(v24) = a11 & 1;
  *(&v24 + 1) = a12;
  *&v25 = a13;
  sub_1AAE60934(&v19);
  v14 = v24;
  a9[4] = v23;
  a9[5] = v14;
  v15 = v26;
  a9[6] = v25;
  a9[7] = v15;
  v16 = v20;
  *a9 = v19;
  a9[1] = v16;
  result = *&v21;
  v18 = v22;
  a9[2] = v21;
  a9[3] = v18;
  return result;
}

uint64_t sub_1AAE60934(uint64_t result)
{
  v1 = *(result + 80) & 1;
  *(result + 48) &= 1uLL;
  *(result + 80) = v1;
  return result;
}

double LinePlot<A>.init(x:y:domain:function:)@<D0>(_OWORD *a1@<X8>, __int128 a2, char a3, uint64_t a4, uint64_t a5)
{
  *&v17 = sub_1AAF8EA44();
  *(&v17 + 1) = v6;
  LOBYTE(v18) = v7 & 1;
  *(&v18 + 1) = v8;
  *&v19 = sub_1AAF8EA44();
  *(&v19 + 1) = v9;
  LOBYTE(v20) = v10 & 1;
  *(&v20 + 1) = v11;
  v21 = a2;
  LOBYTE(v22) = a3 & 1;
  *(&v22 + 1) = a4;
  *&v23 = a5;
  sub_1AAE60934(&v17);
  v12 = v22;
  a1[4] = v21;
  a1[5] = v12;
  v13 = v24;
  a1[6] = v23;
  a1[7] = v13;
  v14 = v18;
  *a1 = v17;
  a1[1] = v14;
  result = *&v19;
  v16 = v20;
  a1[2] = v19;
  a1[3] = v16;
  return result;
}

double LinePlot<A>.init<A, B>(x:y:domain:function:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v44 = a6;
  v45 = a7;
  v42 = a5;
  *(&v43 + 1) = a4;
  *&v43 = a3;
  v38 = a1;
  v13 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  (*(v17 + 16))(&v36[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)], v19);
  v41 = sub_1AAF8EA64();
  v40 = v21;
  v37 = v22;
  v39 = v23;
  (*(v13 + 16))(v15, a2, a10);
  v24 = sub_1AAF8EA64();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v13 + 8))(a2, a10);
  (*(v17 + 8))(v38, a8);
  v48 = v37 & 1;
  v47 = v28 & 1;
  v46 = v42 & 1;
  *&v49 = v41;
  *(&v49 + 1) = v40;
  LOBYTE(v50) = v37 & 1;
  *(&v50 + 1) = v39;
  *&v51 = v24;
  *(&v51 + 1) = v26;
  LOBYTE(v52) = v28 & 1;
  *(&v52 + 1) = v30;
  v53 = v43;
  LOBYTE(v54) = v42 & 1;
  *(&v54 + 1) = v44;
  *&v55 = v45;
  sub_1AAE60934(&v49);
  v31 = v54;
  a9[4] = v53;
  a9[5] = v31;
  v32 = v56;
  a9[6] = v55;
  a9[7] = v32;
  v33 = v50;
  *a9 = v49;
  a9[1] = v33;
  result = *&v51;
  v35 = v52;
  a9[2] = v51;
  a9[3] = v35;
  return result;
}

double LinePlot<A>.init(x:y:t:domain:function:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, double a10@<D0>, double a11@<D1>, __int128 a12, char a13, uint64_t a14, __int128 a15)
{
  *&v21 = a1;
  *(&v21 + 1) = a2;
  LOBYTE(v22) = a3 & 1;
  *(&v22 + 1) = a4;
  *&v23 = a5;
  *(&v23 + 1) = a6;
  LOBYTE(v24) = a7 & 1;
  *(&v24 + 1) = a8;
  v25 = a12;
  LOBYTE(v26) = a13 & 1;
  *(&v26 + 1) = a14;
  *&v27 = a10;
  *(&v27 + 1) = a11;
  v28 = a15;
  sub_1AAE60E1C(&v21);
  v16 = v26;
  a9[4] = v25;
  a9[5] = v16;
  v17 = v28;
  a9[6] = v27;
  a9[7] = v17;
  v18 = v22;
  *a9 = v21;
  a9[1] = v18;
  result = *&v23;
  v20 = v24;
  a9[2] = v23;
  a9[3] = v20;
  return result;
}

uint64_t sub_1AAE60E1C(uint64_t result)
{
  v1 = *(result + 80) & 1 | 0x4000000000000000;
  *(result + 48) &= 1uLL;
  *(result + 80) = v1;
  return result;
}

double LinePlot<A>.init(x:y:t:domain:function:)@<D0>(_OWORD *a1@<X8>, double a2@<D0>, double a3@<D1>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 a8)
{
  *&v25 = sub_1AAF8EA44();
  *(&v25 + 1) = v11;
  LOBYTE(v26) = v12 & 1;
  *(&v26 + 1) = v13;
  *&v27 = sub_1AAF8EA44();
  *(&v27 + 1) = v14;
  LOBYTE(v28) = v15 & 1;
  *(&v28 + 1) = v16;
  *&v29 = sub_1AAF8EA44();
  *(&v29 + 1) = v17;
  LOBYTE(v30) = v18 & 1;
  *(&v30 + 1) = v19;
  *&v31 = a2;
  *(&v31 + 1) = a3;
  v32 = a8;
  sub_1AAE60E1C(&v25);
  v20 = v30;
  a1[4] = v29;
  a1[5] = v20;
  v21 = v32;
  a1[6] = v31;
  a1[7] = v21;
  v22 = v26;
  *a1 = v25;
  a1[1] = v22;
  result = *&v27;
  v24 = v28;
  a1[2] = v27;
  a1[3] = v24;
  return result;
}

double LinePlot<A>.init<A, B, C>(x:y:t:domain:function:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, _OWORD *a8@<X8>, double a9@<D0>, double a10@<D1>, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v54 = a6;
  *(&v63 + 1) = a5;
  *&v63 = a4;
  v62 = a3;
  v56 = a1;
  v61 = a13;
  v18 = *(a7 - 8);
  v60 = a12;
  v59 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v26;
  v27 = *(v26 - 8);
  v29 = MEMORY[0x1EEE9AC00](v28);
  (*(v27 + 16))(&v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
  v59 = sub_1AAF8EA64();
  v58 = v31;
  v53 = v32;
  v57 = v33;
  v34 = v54;
  (*(v22 + 16))(v25, a2, v54);
  v60 = sub_1AAF8EA64();
  v52 = v35;
  v50 = v36;
  v51 = v37;
  v38 = v62;
  (*(v18 + 16))(v20, v62, a7);
  v39 = sub_1AAF8EA64();
  v61 = v40;
  v42 = v41;
  v49 = v43;
  (*(v18 + 8))(v38, a7);
  (*(v22 + 8))(a2, v34);
  (*(v27 + 8))(v56, v55);
  v66 = v53 & 1;
  v65 = v50 & 1;
  v64 = v42 & 1;
  *&v67 = v59;
  *(&v67 + 1) = v58;
  LOBYTE(v68) = v53 & 1;
  *(&v68 + 1) = v57;
  *&v69 = v60;
  *(&v69 + 1) = v52;
  LOBYTE(v70) = v50 & 1;
  *(&v70 + 1) = v51;
  *&v71 = v39;
  *(&v71 + 1) = v61;
  LOBYTE(v72) = v42 & 1;
  *(&v72 + 1) = v49;
  *&v73 = a9;
  *(&v73 + 1) = a10;
  v74 = v63;
  sub_1AAE60E1C(&v67);
  v44 = v72;
  a8[4] = v71;
  a8[5] = v44;
  v45 = v74;
  a8[6] = v73;
  a8[7] = v45;
  v46 = v68;
  *a8 = v67;
  a8[1] = v46;
  result = *&v69;
  v48 = v70;
  a8[2] = v69;
  a8[3] = v48;
  return result;
}

double LinePlot<A>.init(_:)@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *&v9 = 0;
  v8 = a1;
  BYTE8(v9) = 1;
  v10 = 0uLL;
  LOBYTE(v11) = 1;
  sub_1AAE6148C(&v8);
  v3 = v13;
  a2[4] = v12;
  a2[5] = v3;
  v4 = v15;
  a2[6] = v14;
  a2[7] = v4;
  v5 = v9;
  *a2 = v8;
  a2[1] = v5;
  result = *&v10;
  v7 = v11;
  a2[2] = v10;
  a2[3] = v7;
  return result;
}

uint64_t sub_1AAE6148C(uint64_t result)
{
  v1 = *(result + 80) & 1 | 0x8000000000000000;
  *(result + 48) &= 1uLL;
  *(result + 80) = v1;
  return result;
}

double LinePlot<A>.init(_:domain:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _OWORD *a5@<X8>)
{
  *&v11 = a1;
  *(&v11 + 1) = a2;
  *&v12 = a3;
  BYTE8(v12) = a4 & 1;
  v13 = 0uLL;
  LOBYTE(v14) = 1;
  sub_1AAE6148C(&v11);
  v6 = v16;
  a5[4] = v15;
  a5[5] = v6;
  v7 = v18;
  a5[6] = v17;
  a5[7] = v7;
  v8 = v12;
  *a5 = v11;
  a5[1] = v8;
  result = *&v13;
  v10 = v14;
  a5[2] = v13;
  a5[3] = v10;
  return result;
}

double LinePlot<A>.init(_:domain:sampledDomain:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, _OWORD *a8@<X8>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  BYTE8(v15) = a4 & 1;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  LOBYTE(v17) = a7 & 1;
  sub_1AAE6148C(&v14);
  v9 = v19;
  a8[4] = v18;
  a8[5] = v9;
  v10 = v21;
  a8[6] = v20;
  a8[7] = v10;
  v11 = v15;
  *a8 = v14;
  a8[1] = v11;
  result = *&v16;
  v13 = v17;
  a8[2] = v16;
  a8[3] = v13;
  return result;
}

void static FunctionLinePlotContent._renderChartContent(_:_:)(__int128 *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AAE63220();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SgShapeStyle();
  MEMORY[0x1EEE9AC00](v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = a1[5];
  v224 = a1[4];
  v225 = v18;
  v19 = a1[7];
  v226 = a1[6];
  v227 = v19;
  v20 = a1[1];
  v220 = *a1;
  v221 = v20;
  v21 = a1[3];
  v222 = a1[2];
  v223 = v21;
  v22 = *(a2 + 1);
  v23 = *(v22 + 24);
  v24 = *(v22 + 32);
  if (v24 >= v23)
  {
    v25 = *(v22 + 24);
  }

  else
  {
    v25 = *(v22 + 32);
  }

  if (v23 > v24)
  {
    v26 = *(v22 + 24);
  }

  else
  {
    v26 = *(v22 + 32);
  }

  if (v25 > v26)
  {
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v27 = *a2;
  v28 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
  v30 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
  v29 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
  v210 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
  v211 = v30;
  v212[0] = v29;
  *(v212 + 9) = v28;
  v32 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
  v31 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
  v209[0] = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
  v209[1] = v32;
  v209[2] = v31;
  if (BYTE8(v212[1]) == 255)
  {
    goto LABEL_22;
  }

  if (BYTE8(v212[1]))
  {
    goto LABEL_22;
  }

  v33 = *(v212 + 1);
  v34 = *&v212[1];
  v35 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89);
  v36 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80);
  v37 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48);
  v207 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64);
  v208[0] = v36;
  *(v208 + 9) = v35;
  v39 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16);
  v38 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32);
  v206[0] = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
  v206[1] = v39;
  v206[2] = v38;
  v206[3] = v37;
  if (BYTE8(v208[1]) == 255)
  {
    goto LABEL_22;
  }

  if (BYTE8(v208[1]))
  {
    goto LABEL_22;
  }

  v40 = *(v210 + 16);
  if (!v40)
  {
    goto LABEL_22;
  }

  v41 = *(v210 + 32);
  v42 = v210 + 32 + 8 * v40;
  v43 = *(v42 - 8);
  if (v43 >= v41)
  {
    v44 = *(v210 + 32);
  }

  else
  {
    v44 = *(v42 - 8);
  }

  if (v41 > v43)
  {
    v45 = *(v210 + 32);
  }

  else
  {
    v45 = *(v42 - 8);
  }

  if (v44 > v45)
  {
    goto LABEL_79;
  }

  if (LOBYTE(v212[0]) == 255 || LOBYTE(v208[0]) == 255)
  {
LABEL_22:
    *a3 = 0xE000000000000000;
    return;
  }

  v177 = LOBYTE(v208[0]);
  *&v178 = *(&v211 + 1);
  v179 = LOBYTE(v212[0]);
  v173 = v17;
  v174 = &v168 - v16;
  v175 = v22;
  v176 = *(&v207 + 1);
  v46 = *(v208 + 1);
  v47 = *&v208[1];
  v48 = a1[5];
  v205[4] = a1[4];
  v205[5] = v48;
  v49 = a1[7];
  v205[6] = a1[6];
  v205[7] = v49;
  v50 = a1[1];
  v205[0] = *a1;
  v205[1] = v50;
  v51 = a1[3];
  v205[2] = a1[2];
  v205[3] = v51;
  v52 = sub_1AAE632DC(v205);
  v53 = sub_1AAD35738(v205);
  v181 = v13;
  if (v52)
  {
    if (v52 == 1)
    {
      v54 = *(v53 + 96);
      v55 = *(v53 + 104);
      v56 = *(v53 + 112);
      v183 = *(v53 + 120);
      *&v184 = v56;
      sub_1AAE634E8(v209, &v197, sub_1AACCF364);
      sub_1AAE634E8(v206, &v197, sub_1AACCF364);
      v57 = v183;

      *&v184 = sub_1AAF83960(4, 7, 1, v184, v57, v178, v179, v176, v54, v55, v33, v34, v46, v47, v177);
    }

    else
    {
      v71 = *v53;
      v183 = *(v53 + 8);
      *&v184 = v71;
      v182 = *(v53 + 16);
      LODWORD(v180) = *(v53 + 24);
      v72 = *(v53 + 32);
      v73 = *(v53 + 40);
      if (*(v53 + 48))
      {
        *&v72 = v44;
        *&v73 = v45;
      }

      v74 = v178;
      sub_1AAE627F4(v72, v73, 0, v178, v179, v33, v34);
      v76 = v75;
      v78 = v77;
      sub_1AAE627F4(v183, v182, v180, v74, v179, v33, v34);
      v80 = v79;
      v82 = v81;
      sub_1AAE634E8(v209, &v197, sub_1AACCF364);
      sub_1AAE634E8(v206, &v197, sub_1AACCF364);
      v83 = sub_1AAE9DD1C(v178, v179, v176, v177, v76, v78, v33, v34, v46, v47);
      *&v184 = sub_1AAE9EA54(v83, v80, v82);
    }
  }

  else
  {
    v59 = *(v53 + 64);
    v58 = *(v53 + 72);
    v60 = *(v53 + 80);
    v184 = *(v53 + 88);
    v61 = v178;
    v62 = v179;
    sub_1AAE627F4(v59, v58, v60, v178, v179, v33, v34);
    v64 = v63;
    v66 = v65;
    v172 = v8;
    v183 = &v168;
    MEMORY[0x1EEE9AC00](v67);
    *(&v168 - 10) = v61;
    *(&v168 - 72) = v62;
    *(&v168 - 8) = v33;
    *(&v168 - 7) = v34;
    *(&v168 - 3) = v184;
    v68 = v177;
    *(&v168 - 4) = v176;
    *(&v168 - 24) = v68;
    v166 = v46;
    v167 = v47;
    sub_1AAE634E8(v209, &v197, sub_1AACCF364);
    sub_1AAE634E8(v206, &v197, sub_1AACCF364);
    v69.n128_u64[0] = v64;
    v70.n128_u64[0] = v66;
    *&v184 = sub_1AAF81604(4, 7, 1, sub_1AAE6360C, &v168 - 96, v69, v70);
    v13 = v181;
    v8 = v172;
  }

  v180 = a3;
  if ((v27 & 1) == 0)
  {
    sub_1AAF8E934();
    v95 = v184;
    v183 = *(v184 + 16);
    if (!v183)
    {

LABEL_65:
      v123 = v175 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
      swift_beginAccess();
      sub_1AAE634E8(v123, v13, type metadata accessor for ChartContentRenderContext.Environment);
      v124 = v174;
      sub_1AAD0F2A4(v13, v174);
      v218[0] = v185[4];
      v218[1] = v185[5];
      v219 = v186;
      v125 = *(v124 + 72);
      *&v184 = v123;
      if (v125)
      {
        v126 = *(v124 + 80);
        v127 = *(v124 + 64);
        v128 = *(v124 + 56);
        v129 = *(v124 + 60);
        v130 = v125;
        v131 = *(v124 + 48);
LABEL_69:
        *&v189 = v131;
        *(&v189 + 1) = __PAIR64__(v129, v128);
        *&v190 = v127;
        *(&v190 + 1) = v130;
        *&v191 = v126;

        sub_1AAF8E854();

        sub_1AAD12C10(v218);
        v216[0] = v213;
        v216[1] = v214;
        v217 = v215;
        sub_1AAE63550(v216, v185);

        v132 = type metadata accessor for SgPath(0);
        *(v124 + 48) = 0u;
        *(v124 + 64) = 0u;
        *(v124 + 80) = 0;
        v183 = swift_allocBox();
        v134 = v133;
        v135 = *(*(v175 + 16) + 24);
        v136 = v184;
        v137 = v181;
        sub_1AAE634E8(v184, v181, type metadata accessor for ChartContentRenderContext.Environment);
        v138 = v173;
        sub_1AAD0F2A4(v137, v173);
        sub_1AAE635AC(v206, sub_1AACCF364);
        sub_1AAE635AC(v209, sub_1AACCF364);
        v139 = *(v136 + *(v11 + 64));
        *v134 = v135;
        v140 = v215;
        v141 = v214;
        *(v134 + 8) = v213;
        *(v134 + 24) = v141;
        *(v134 + 40) = v140;
        sub_1AAE52164(v138, v134 + *(v132 + 24));
        *(v134 + *(v132 + 28)) = v139;
        sub_1AAD12C10(&v213);
        *a3 = v183 | 0x9000000000000000;
        sub_1AAE635AC(v124, type metadata accessor for SgShapeStyle);
        return;
      }

      if (qword_1ED9B2798 == -1)
      {
LABEL_68:
        v131 = xmmword_1ED9C34C0;
        v128 = DWORD2(xmmword_1ED9C34C0);
        v129 = HIDWORD(xmmword_1ED9C34C0);
        v127 = qword_1ED9C34D0;
        v130 = qword_1ED9C34D8;
        v126 = qword_1ED9C34E0;

        v124 = v174;
        goto LABEL_69;
      }

LABEL_81:
      swift_once();
      goto LABEL_68;
    }

    v179 = v11;
    v11 = 0;
    v197 = 0x3FF0000000000000uLL;
    *&v198 = 0;
    *(&v198 + 1) = 0x3FF0000000000000;
    v182 = v184 + 32;
    v199 = 0uLL;
    while (v11 < *(v95 + 16))
    {
      v96 = *(v182 + 8 * v11);

      sub_1AAF8E934();
      v97 = *(v96 + 16);
      if (v97)
      {
        *&v218[0] = MEMORY[0x1E69E7CC0];
        sub_1AAD41370(0, v97, 0);
        v98 = *&v218[0];
        v99 = *(*&v218[0] + 16);
        v100 = 32;
        do
        {
          v101 = *(v96 + v100);
          *&v218[0] = v98;
          v102 = *(v98 + 24);
          if (v99 >= v102 >> 1)
          {
            v178 = v101;
            sub_1AAD41370((v102 > 1), v99 + 1, 1);
            v101 = v178;
            v98 = *&v218[0];
          }

          *(v98 + 16) = v99 + 1;
          *(v98 + 16 * v99 + 32) = v101;
          v100 += 16;
          ++v99;
          --v97;
        }

        while (v97);

        a3 = v180;
        v13 = v181;
        v95 = v184;
      }

      else
      {
      }

      ++v11;
      sub_1AAF8E904();

      v187[0] = v189;
      v187[1] = v190;
      v188 = v191;
      sub_1AAF8E844();
      sub_1AAD12C10(v187);
      if (v11 == v183)
      {

        v11 = v179;
        goto LABEL_65;
      }
    }

    goto LABEL_74;
  }

  v172 = v8;
  v84 = v184;
  v183 = *(v184 + 16);
  if (v183)
  {
    a3 = 0;
    v182 = v184 + 32;
    v85 = MEMORY[0x1E69E7CC0];
    while (a3 < *(v84 + 16))
    {
      v86 = *(v182 + 8 * a3);
      v87 = *(v86 + 16);
      v88 = *(v85 + 2);
      v11 = v88 + v87;
      if (__OFADD__(v88, v87))
      {
        goto LABEL_76;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v11 > *(v85 + 3) >> 1)
      {
        if (v88 <= v11)
        {
          v90 = v88 + v87;
        }

        else
        {
          v90 = v88;
        }

        v85 = sub_1AAD6945C(isUniquelyReferenced_nonNull_native, v90, 1, v85);
      }

      v84 = v184;
      if (*(v86 + 16))
      {
        v91 = *(v85 + 2);
        if ((*(v85 + 3) >> 1) - v91 < v87)
        {
          goto LABEL_78;
        }

        memcpy(&v85[16 * v91 + 32], (v86 + 32), 16 * v87);

        if (v87)
        {
          v92 = *(v85 + 2);
          v93 = __OFADD__(v92, v87);
          v94 = v92 + v87;
          if (v93)
          {
            goto LABEL_80;
          }

          *(v85 + 2) = v94;
        }
      }

      else
      {

        if (v87)
        {
          goto LABEL_77;
        }
      }

      a3 = (a3 + 1);
      if (v183 == a3)
      {
        goto LABEL_61;
      }
    }

    goto LABEL_75;
  }

  v85 = MEMORY[0x1E69E7CC0];
LABEL_61:

  v201 = v224;
  v202 = v225;
  v203 = v226;
  v204 = v227;
  v197 = v220;
  v198 = v221;
  v199 = v222;
  v200 = v223;
  v103 = sub_1AAE632DC(&v197);
  if (!v103)
  {
    v142 = sub_1AAD35738(&v197);
    v144 = *v142;
    v143 = *(v142 + 8);
    LODWORD(v182) = *(v142 + 16);
    v146 = *(v142 + 24);
    v145 = *(v142 + 32);
    v183 = v143;
    *&v184 = v146;
    v173 = v145;
    v147 = *(v142 + 40);
    LODWORD(v181) = *(v142 + 48);
    v148 = *(v142 + 56);
    KeyPath = *(v142 + 96);
    v171 = v147;
    v195 = v226;
    v196 = v227;
    v189 = v220;
    v190 = v221;
    v193 = v224;
    v194 = v225;
    v191 = v222;
    v192 = v223;
    v149 = sub_1AAD35738(&v189);
    v151 = *v149;
    v150 = *(v149 + 8);
    v152 = *(v149 + 16);
    v153 = *(v149 + 32);
    v154 = *(v149 + 40);
    v155 = *(v149 + 48);
    v156 = *(v149 + 96);
    v168 = *(v149 + 56);
    v169 = v156;
    sub_1AACD7304(v151, v150, v152);

    sub_1AACD7304(v153, v154, v155);

    v157 = *(v85 + 2);
    KeyPath = swift_getKeyPath();
    v158 = swift_allocObject();
    *(v158 + 16) = v85;
    v174 = v144;
    v159 = v183;
    *(v158 + 24) = v144;
    *(v158 + 32) = v159;
    v160 = v182;
    *(v158 + 40) = v182;
    v161 = v178;
    *(v158 + 48) = v184;
    *(v158 + 56) = v161;
    *(v158 + 64) = v179;
    *(v158 + 72) = v33;
    *(v158 + 80) = v34;
    v162 = v173;
    v163 = v171;
    *(v158 + 88) = v173;
    *(v158 + 96) = v163;
    v164 = v181;
    *(v158 + 104) = v181;
    v165 = v176;
    LOBYTE(v161) = v177;
    *(v158 + 112) = v148;
    *(v158 + 120) = v165;
    *(v158 + 128) = v161;
    *(v158 + 136) = v46;
    *(v158 + 144) = v47;
    *&v187[0] = 0;
    *(&v187[0] + 1) = v157;
    sub_1AACD7304(v144, v159, v160);

    sub_1AACD7304(v162, v163, v164);
    sub_1AAD26778(0, &qword_1ED9B29B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    sub_1AAD116F4();

    sub_1AAF8EF84();

    sub_1AAE496D8(v10, 1, v175, v180);
    sub_1AAE635AC(v206, sub_1AACCF364);
    sub_1AAE635AC(v209, sub_1AACCF364);
    sub_1AAD04750(v162, v163, v181);

    v120 = v174;
    v121 = v183;
    v122 = v182;
    goto LABEL_71;
  }

  if (v103 == 1)
  {
    v104 = sub_1AAD35738(&v197);
    v105 = *v104;
    v182 = *(v104 + 8);
    v183 = v105;
    LODWORD(v181) = *(v104 + 16);
    v106 = *(v104 + 32);
    *&v184 = *(v104 + 24);
    v174 = v106;
    v107 = *(v104 + 40);
    LODWORD(v173) = *(v104 + 48);
    v109 = *(v104 + 56);
    v108 = *(v104 + 64);
    v169 = *(v104 + 72);
    v110 = *(v104 + 80);
    v171 = *(v104 + 88);
    v191 = v222;
    v192 = v223;
    v195 = v226;
    v196 = v227;
    v193 = v224;
    v194 = v225;
    v189 = v220;
    v190 = v221;
    v111 = sub_1AAD35738(&v189);
    sub_1AAE634E8(v111, v187, sub_1AAE632E8);

    sub_1AAD04750(v108, v169, v110);

    v112 = *(v85 + 2);
    v171 = swift_getKeyPath();
    v113 = swift_allocObject();
    *(v113 + 16) = v85;
    v115 = v182;
    v114 = v183;
    *(v113 + 24) = v183;
    *(v113 + 32) = v115;
    v116 = v181;
    *(v113 + 40) = v181;
    v117 = v178;
    *(v113 + 48) = v184;
    *(v113 + 56) = v117;
    *(v113 + 64) = v179;
    *(v113 + 72) = v33;
    *(v113 + 80) = v34;
    v118 = v174;
    *(v113 + 88) = v174;
    *(v113 + 96) = v107;
    KeyPath = v107;
    LOBYTE(v108) = v173;
    *(v113 + 104) = v173;
    v119 = v176;
    LOBYTE(v117) = v177;
    *(v113 + 112) = v109;
    *(v113 + 120) = v119;
    *(v113 + 128) = v117;
    *(v113 + 136) = v46;
    *(v113 + 144) = v47;
    *&v187[0] = 0;
    *(&v187[0] + 1) = v112;
    sub_1AACD7304(v114, v115, v116);

    sub_1AACD7304(v118, v107, v108);
    sub_1AAD26778(0, &qword_1ED9B29B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    sub_1AAD116F4();

    sub_1AAF8EF84();

    sub_1AAE496D8(v10, 1, v175, v180);
    sub_1AAE635AC(v206, sub_1AACCF364);
    sub_1AAE635AC(v209, sub_1AACCF364);
    sub_1AAD04750(v118, KeyPath, v108);

    v121 = v182;
    v120 = v183;
    v122 = v181;
LABEL_71:
    sub_1AAD04750(v120, v121, v122);

    (*(v172 + 8))(v10, v7);
    return;
  }

  sub_1AAD35738(&v197);

  sub_1AAE635AC(v206, sub_1AACCF364);
  sub_1AAE635AC(v209, sub_1AACCF364);
  *v180 = 0xE000000000000000;
}

unint64_t *sub_1AAE625F4@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  v19 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v19 < *(a2 + 16))
  {
    v29 = *(a2 + 16 * v19 + 32);
    v26 = sub_1AAF4242C(a7, a8, *&v29, a10, a11);
    v27 = sub_1AAF4242C(a17, a18, *(&v29 + 1), a12, a13);
    a5 &= 1u;
    v31 = a5;
    *&v32 = a3;
    *(&v32 + 1) = a4;
    LOBYTE(v33) = a5;
    *(&v33 + 1) = a6;
    v34 = *&v26;
    LOBYTE(v35) = 0;
    v28 = MEMORY[0x1E69E63B0];
    *(&v35 + 1) = MEMORY[0x1E69E63B0];
    *&v36 = &protocol witness table for Double;
    sub_1AAE4637C(&v32);
    __src[6] = v38;
    __src[7] = v39;
    __src[8] = v40;
    __src[2] = v34;
    __src[3] = v35;
    __src[4] = v36;
    __src[5] = v37;
    __src[0] = v32;
    __src[1] = v33;
    v41 = a15 & 1;
    v42 = a14;
    LOBYTE(v43) = a15 & 1;
    *(&v43 + 1) = a16;
    v44 = *&v27;
    LOBYTE(v45) = 0;
    *(&v45 + 1) = v28;
    *&v46 = &protocol witness table for Double;
    sub_1AAE4637C(&v42);
    __src[15] = v48;
    __src[16] = v49;
    __src[17] = v50;
    __src[11] = v44;
    __src[12] = v45;
    __src[13] = v46;
    __src[14] = v47;
    __src[9] = v42;
    __src[10] = v43;
    memcpy(a9, __src, 0x120uLL);
    *(a9 + 288) = 0;
    *(a9 + 296) = 0;
    *(a9 + 304) = -1;
    sub_1AACD7304(a3, a4, a5);

    sub_1AACD7304(a14, *(&a14 + 1), a15 & 1);
  }

  __break(1u);
  return result;
}

void sub_1AAE627F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6, double a7)
{
  if (a3)
  {
    return;
  }

  v9 = *&a2;
  if (a5)
  {
    if (a5 == 1)
    {
      v12 = *&a1 * *&a4;
      if (a1 < 0)
      {
        v13 = a7 - log(1.0 - v12) * a6;
      }

      else
      {
        v13 = log(v12 + 1.0) * a6 + a7;
      }

      v16 = v9 * *&a4;
      if (a2 < 0)
      {
        v9 = -log(1.0 - v16);
        goto LABEL_15;
      }

      v15 = v16 + 1.0;
    }

    else
    {
      if (*&a4 == 0.0)
      {
        v13 = *&a1 * a6 + a7;
        goto LABEL_15;
      }

      v13 = log(*&a1) * a6 + a7;
      v15 = v9;
    }

    v9 = log(v15);
  }

  else
  {
    v13 = pow(*&a1, *&a4) * a6 + a7;
    v9 = pow(v9, *&a4);
  }

LABEL_15:
  v17 = v9 * a6 + a7;
  if (v17 >= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = v9 * a6 + a7;
  }

  if (v13 > v17)
  {
    v19 = v13;
  }

  else
  {
    v19 = v9 * a6 + a7;
  }

  if (v18 > v19)
  {
    __break(1u);
  }
}

double sub_1AAE62928(double (*a1)(void), double a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, char a11)
{
  v19 = a1();
  v21 = v20;
  v23 = sub_1AAF424D8(a8, a9, v19, a3, a4);
  sub_1AAF424D8(a10, a11, v21, a5, a6);
  return v23;
}

uint64_t VectorizedLinePlotContent.body.getter()
{
  v1 = type metadata accessor for Vectorizer();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - v3;
  sub_1AACE0800(v0, v1, &off_1EE75E640);
  sub_1AACE0800(v4, v1, &off_1EE75E640);
  return (*(v2 + 8))(v4, v1);
}

uint64_t _s6Charts23FunctionLinePlotContentV012_layoutChartE0yyAC_AA01_gE12LayoutInputsVtFZ_0(_OWORD *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (!*(v3 + 16))
  {
    v8 = 0;
    goto LABEL_10;
  }

  v5 = sub_1AACB6398(0);
  if (v6)
  {
    v7 = *(*(v3 + 56) + 72 * v5 + 40);
    if (v7 >> 8 <= 0xFE)
    {
      v8 = (v7 & 0xFF00) != 768;
      if (*(v3 + 16))
      {
        goto LABEL_8;
      }

LABEL_10:
      v12 = 0;
      goto LABEL_11;
    }
  }

  v8 = 0;
  if (!*(v3 + 16))
  {
    goto LABEL_10;
  }

LABEL_8:
  v9 = sub_1AACB6398(1u);
  if ((v10 & 1) == 0)
  {
    goto LABEL_10;
  }

  v11 = *(*(v3 + 56) + 72 * v9 + 40);
  if (v11 >> 8 > 0xFE)
  {
    goto LABEL_10;
  }

  v12 = (v11 & 0xFF00) != 768;
LABEL_11:
  v13 = a1[5];
  v105[4] = a1[4];
  v105[5] = v13;
  v14 = a1[7];
  v105[6] = a1[6];
  v105[7] = v14;
  v15 = a1[1];
  v105[0] = *a1;
  v105[1] = v15;
  v16 = a1[3];
  v105[2] = a1[2];
  v105[3] = v16;
  v17 = sub_1AAE632DC(v105);
  if (!v17)
  {
    v47 = sub_1AAD35738(v105);
    v87 = *(v47 + 8);
    v89 = *v47;
    v85 = *(v47 + 16);
    v81 = *(v47 + 40);
    v82 = *(v47 + 32);
    v95 = v12;
    v80 = *(v47 + 48);
    v90 = *(v47 + 64);
    v48 = *(v47 + 72);
    v49 = *(v47 + 80);
    v79 = *(v47 + 88);
    v93 = *(v47 + 96);
    v50 = a1[3];
    v99 = a1[2];
    v100 = v50;
    v51 = a1[7];
    v103 = a1[6];
    v104 = v51;
    v52 = a1[5];
    v101 = a1[4];
    v102 = v52;
    v53 = a1[1];
    v97 = *a1;
    v98 = v53;
    v54 = sub_1AAD35738(&v97);
    v55 = *(v54 + 32);
    v56 = v8;
    v57 = *(v54 + 40);
    v58 = *(v54 + 48);
    sub_1AACD7304(*v54, *(v54 + 8), *(v54 + 16));

    sub_1AACD7304(v55, v57, v58);

    sub_1AAD04750(v82, v81, v80);

    sub_1AAD04750(v89, v87, v85);

    if (((v56 | v49) & 1) == 0)
    {
      swift_beginAccess();
      if ((~*&v90 & 0x7FF0000000000000) != 0)
      {
        v59 = v90;
        if (*(v4 + 40))
        {
          v60 = v90;
        }

        else
        {
          v60 = *(v4 + 24);
          if (v60 >= v90)
          {
            v60 = v90;
          }

          if (*(v4 + 32) >= v90)
          {
            v59 = *(v4 + 32);
          }
        }

        *(v4 + 24) = v60;
        *(v4 + 32) = v59;
        *(v4 + 40) = 0;
      }

      if ((~*&v48 & 0x7FF0000000000000) != 0)
      {
        v61 = v48;
        if (*(v4 + 40))
        {
          v62 = v48;
        }

        else
        {
          v62 = *(v4 + 24);
          if (v62 >= v48)
          {
            v62 = v48;
          }

          if (*(v4 + 32) >= v48)
          {
            v61 = *(v4 + 32);
          }
        }

        *(v4 + 24) = v62;
        *(v4 + 32) = v61;
        *(v4 + 40) = 0;
      }
    }

    if (!v95)
    {
      if (v49)
      {
        v63 = swift_allocObject();
        *(v63 + 16) = v79;
        *(v63 + 24) = v93;
        v64 = swift_allocObject();
        *(v64 + 16) = v79;
        *(v64 + 24) = v93;
        swift_beginAccess();
        v65 = *(v4 + 240);
        swift_retain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 240) = v65;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v65 = sub_1AAD691C4(0, *(v65 + 2) + 1, 1, v65);
          *(v4 + 240) = v65;
        }

        v68 = *(v65 + 2);
        v67 = *(v65 + 3);
        if (v68 >= v67 >> 1)
        {
          v65 = sub_1AAD691C4((v67 > 1), v68 + 1, 1, v65);
        }

        *(v65 + 2) = v68 + 1;
        v69 = &v65[32 * v68];
        *(v69 + 4) = sub_1AAE52A04;
        *(v69 + 5) = v63;
        *(v69 + 6) = sub_1AAE52A1C;
        *(v69 + 7) = v64;
        *(v4 + 240) = v65;
        swift_endAccess();
      }

      else
      {
        sub_1AAF7F860(0, 0, 0, 1, v79, v90, v48);
        v71 = v70;
        v73 = v72;
        v74 = v70;
        swift_beginAccess();
        if ((*&v74 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v75 = v71;
          if ((*(v4 + 112) & 1) == 0)
          {
            v76 = *(v4 + 96);
            v75 = *(v4 + 104);
            if (v76 >= v71)
            {
              v76 = v71;
            }

            if (v71 > v75)
            {
              v75 = v71;
            }

            v71 = v76;
          }

          *(v4 + 96) = v71;
          *(v4 + 104) = v75;
          *(v4 + 112) = 0;
        }

        if ((*&v73 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v77 = v73;
          if ((*(v4 + 112) & 1) == 0)
          {
            v78 = *(v4 + 96);
            v77 = *(v4 + 104);
            if (v78 >= v73)
            {
              v78 = v73;
            }

            if (v73 > v77)
            {
              v77 = v73;
            }

            v73 = v78;
          }

          *(v4 + 96) = v73;
          *(v4 + 104) = v77;
          *(v4 + 112) = 0;
        }
      }
    }
  }

  if (v17 != 1)
  {
    return sub_1AAD35738(v105);
  }

  v94 = v12;
  v18 = sub_1AAD35738(v105);
  v84 = *(v18 + 8);
  v86 = *v18;
  v83 = *(v18 + 16);
  v19 = *(v18 + 32);
  v20 = *(v18 + 40);
  v21 = *(v18 + 48);
  v22 = *(v18 + 64);
  v88 = v8;
  v23 = *(v18 + 72);
  v24 = *(v18 + 80);
  v25 = *(v18 + 96);
  v26 = *(v18 + 104);
  v91 = *(v18 + 112);
  v92 = *(v18 + 120);
  v27 = a1[7];
  v103 = a1[6];
  v104 = v27;
  v28 = a1[5];
  v101 = a1[4];
  v102 = v28;
  v29 = a1[3];
  v99 = a1[2];
  v100 = v29;
  v30 = a1[1];
  v97 = *a1;
  v98 = v30;
  v31 = sub_1AAD35738(&v97);
  sub_1AAE634E8(v31, v96, sub_1AAE632E8);
  sub_1AAD04750(v22, v23, v24);

  sub_1AAD04750(v19, v20, v21);

  sub_1AAD04750(v86, v84, v83);

  if (!v88)
  {

    v32 = sub_1AAF870B0(0, 0, 0, 1, v91, v92, v25, v26);
    v34 = v33;

    swift_beginAccess();
    if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v35 = v32;
      if ((*(v4 + 40) & 1) == 0)
      {
        v36 = *(v4 + 24);
        v35 = *(v4 + 32);
        if (v36 >= v32)
        {
          v36 = v32;
        }

        if (v32 > v35)
        {
          v35 = v32;
        }

        v32 = v36;
      }

      *(v4 + 24) = v32;
      *(v4 + 32) = v35;
      *(v4 + 40) = 0;
    }

    if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v37 = v34;
      if ((*(v4 + 40) & 1) == 0)
      {
        v38 = *(v4 + 24);
        v37 = *(v4 + 32);
        if (v38 >= v34)
        {
          v38 = v34;
        }

        if (v34 > v37)
        {
          v37 = v34;
        }

        v34 = v38;
      }

      *(v4 + 24) = v34;
      *(v4 + 32) = v37;
      *(v4 + 40) = 0;
    }
  }

  if (v94)
  {
  }

  v39 = sub_1AAF870B4(0, 0, 0, 1, v91, v92, v25, v26);
  v41 = v40;

  result = swift_beginAccess();
  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v43 = v39;
    if ((*(v4 + 112) & 1) == 0)
    {
      v44 = *(v4 + 96);
      v43 = *(v4 + 104);
      if (v44 >= v39)
      {
        v44 = v39;
      }

      if (v39 > v43)
      {
        v43 = v39;
      }

      v39 = v44;
    }

    *(v4 + 96) = v39;
    *(v4 + 104) = v43;
    *(v4 + 112) = 0;
  }

  if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v45 = v41;
    if ((*(v4 + 112) & 1) == 0)
    {
      v46 = *(v4 + 96);
      v45 = *(v4 + 104);
      if (v46 >= v41)
      {
        v46 = v41;
      }

      if (v41 > v45)
      {
        v45 = v41;
      }

      v41 = v46;
    }

    *(v4 + 96) = v41;
    *(v4 + 104) = v45;
    *(v4 + 112) = 0;
  }

  return result;
}