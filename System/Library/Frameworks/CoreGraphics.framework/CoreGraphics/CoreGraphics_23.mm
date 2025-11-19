unint64_t sub_183FA32C8()
{
  result = qword_1EA854608;
  if (!qword_1EA854608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854608);
  }

  return result;
}

uint64_t sub_183FA332C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = (~*v5 & 0x7FF0000000000000) != 0 || (*v5 & 0xFFFFFFFFFFFFFLL) == 0;
  if (!v6 || *(*(v5 + 32) + 16))
  {
    v7 = *(*(v5 + 48) + 16);
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = 2;
  if (a2 < 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (v7 >= a4)
  {
    v8 = *(v5 + 16);
    *(a5 + 32) = *v5;
    *(a5 + 48) = v8;
    *(a5 + 64) = *(v5 + 32);
    *(a5 + 80) = *(v5 + 48);
    *a5 = result;
    *(a5 + 8) = a2;
    *(a5 + 16) = a3;
    *(a5 + 24) = a4;
    return sub_183F70628(v5, v9);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_183FA33C0()
{
  v1 = (~*v0 & 0x7FF0000000000000) != 0 || (*v0 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v1 && !*(v0[4] + 16))
  {
    return 1;
  }

  else
  {
    return *(v0[6] + 16) >> 1;
  }
}

uint64_t sub_183FA3400(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int64_t a8, double a9, double a10, double a11, double a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v112 = a7;
  v122 = a3;
  v27 = a14;
  v135[2] = *MEMORY[0x1E69E9840];
  sub_183F70628(a15, v131);
  sub_183F70628(a15, v131);
  sub_183F70628(a15, v131);
  v28 = a14;
  v29 = sub_183FA5A00();
  v31 = *(a14 + 40);
  v121 = a14 + 40;
  v32 = *(v31 + 16);
  LODWORD(v33) = v32 == a2;
  if (a1)
  {
    v34 = a1 - 1;
    if (__OFSUB__(a1, 1))
    {
      goto LABEL_125;
    }

    if (v34 >= v32)
    {
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    v35 = *(v31 + 32 + 4 * v34);
    if (a1 > 1)
    {
      if (a1 - 2 >= v32)
      {
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
      }

      LODWORD(v33) = 0;
      v36 = *(v31 + 32 + 4 * (a1 - 2));
      if (!a2)
      {
        v37 = 0;
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    LODWORD(v33) = 0;
  }

  else
  {
    v35 = 0;
  }

  v37 = 0;
  v36 = 0;
  if (!a2)
  {
    goto LABEL_14;
  }

LABEL_11:
  v38 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v38 >= v32)
  {
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = *(v31 + 4 * v38 + 32);
LABEL_14:
  v110 = *&a6;
  v113 = a8;
  v125 = a1;
  v39 = a4 * a5;
  if ((a4 * a5) >> 64 != (a4 * a5) >> 63)
  {
    goto LABEL_113;
  }

  a8 = a4;
  if (a4 < 0)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (a4 >> 60)
  {
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  a1 = v36;
  v124 = v37;
  v128 = v35;
  v111 = v32;
  a4 = a16;
  v28 = a17;
  if (8 * a8 >= 1025)
  {
    goto LABEL_114;
  }

  while (1)
  {
    v120 = v28;
    isStackAllocationSafe = MEMORY[0x1EEE9AC00](v29, v30);
    v127 = &v109 - v42;
    if (a8 >= 0x101)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v97 = swift_slowAlloc();
        sub_183F70628(a15, v131);
        sub_183FA7704(v97, a8, v39, v127, a8, v27, a1, v128, a9, a10, a11, a12, v39, v122 & 1, v33, v124, v125, a2, v125, a15, a4, v120);
        MEMORY[0x1865EFCB0](v97, -1, -1);
        v39 = v125;
        a4 = v121;
        goto LABEL_67;
      }
    }

    v123 = v33;
    v43 = MEMORY[0x1EEE9AC00](isStackAllocationSafe, v41);
    v126 = &v109 - v45;
    if ((v39 & 0x8000000000000000) != 0)
    {
      goto LABEL_134;
    }

    if (v39 >> 60)
    {
      goto LABEL_135;
    }

    if ((8 * v39) >= 1025)
    {
      v43 = swift_stdlib_isStackAllocationSafe();
      if ((v43 & 1) == 0)
      {
        break;
      }
    }

    v46 = MEMORY[0x1EEE9AC00](v43, v44);
    v49 = &v109 - v48;
    v129 = 0;
    v130 = 0;
    v50 = v128 - a1;
    if (v128 < a1)
    {
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
      goto LABEL_126;
    }

    v51 = a1;
    v114 = v47;
    v115 = &v109;
    v116 = &v109;
    v117 = a2;
    v119 = &v109;
    v52 = v27 + 48;
    v53 = *(v27 + 48);
    v54 = *v27;
    v55 = *(v27 + 16);
    v56 = v27 + 32;
    v57 = *(v27 + 32);
    v118 = v27;
    v58 = *(v27 + 40);
    v135[0] = v53 + 8 * v51 + 32;
    v135[1] = v50;
    v131[0] = v54;
    v131[1] = v55;
    v132 = v57;
    v133 = v58;
    v134 = v53;
    MEMORY[0x1EEE9AC00](v46, v54);
    *(&v109 - 12) = v49;
    *(&v109 - 11) = v39;
    v99 = &v129;
    v100 = v39;
    LOBYTE(v101) = v122 & 1;
    v102 = v135;
    v103 = v127;
    v104 = v59;
    v105 = &v130;
    v106 = v126;
    v107 = v59;
    v108 = v60;
    swift_retain_n();

    sub_183F99594(v131, sub_183FAB470, a9, a10, a11, a12, (&v109 - 14), a15, a4, v120);

    v61 = v129;
    if ((v129 & 0x8000000000000000) != 0)
    {
      goto LABEL_121;
    }

    v27 = v118;
    a2 = v117;
    a4 = v121;
    if (v123)
    {
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        if (v61)
        {
LABEL_32:
          v63 = sub_183EA76E4(v61, 0);
          memcpy(v63 + 4, v49, 8 * v61);
        }

        else
        {
          v63 = MEMORY[0x1E69E7CC0];
        }

        *v52 = v63;
        v33 = v130;
        if ((v130 & 0x8000000000000000) != 0)
        {
          goto LABEL_122;
        }

        goto LABEL_35;
      }

      if (v61 > *(*v52 + 24) >> 1)
      {
        goto LABEL_32;
      }
    }

    if (v124 < v128)
    {
      goto LABEL_129;
    }

    sub_183F7DC7C(v128, v124, v49, v61);
    v33 = v130;
    if ((v130 & 0x8000000000000000) != 0)
    {
      goto LABEL_122;
    }

    if (!v123)
    {
      v62 = v125;
      sub_183F7DC7C(v125, a2, v127, v130);
      goto LABEL_45;
    }

LABEL_35:
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      if (v33)
      {
LABEL_39:
        v64 = sub_183EA76E4(v33, 0);
        memcpy(v64 + 4, v127, 8 * v33);
      }

      else
      {
        v64 = MEMORY[0x1E69E7CC0];
      }

      *v56 = v64;
      goto LABEL_42;
    }

    if (v33 > *(*v56 + 24) >> 1)
    {
      goto LABEL_39;
    }

    sub_183F7DC7C(v125, a2, v127, v33);
LABEL_42:
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      if (v33)
      {
LABEL_47:
        v65 = sub_183F9BAB8(v33, 0);
        memcpy(v65 + 4, v126, 4 * v33);
      }

      else
      {
        v65 = MEMORY[0x1E69E7CC0];
      }

      *a4 = v65;
      goto LABEL_50;
    }

    if (v33 > *(*a4 + 24) >> 1)
    {
      goto LABEL_47;
    }

    v62 = v125;
LABEL_45:
    sub_183F7DCA8(v62, a2, v126, v33);
LABEL_50:
    v66 = v128 + v61;
    if (__OFADD__(v128, v61))
    {
      goto LABEL_123;
    }

    v28 = v66 - v124;
    if (__OFSUB__(v66, v124))
    {
      goto LABEL_124;
    }

    v39 = v125;
    if (!v28)
    {
      goto LABEL_67;
    }

    a1 = v125 + v33;
    if (__OFADD__(v125, v33))
    {
      goto LABEL_130;
    }

    v67 = *a4;
    a8 = *(*a4 + 16);
    if (a8 < a1)
    {
      goto LABEL_131;
    }

    if (a1 == a8)
    {
      goto LABEL_67;
    }

    if (a1 >= a8)
    {
      goto LABEL_137;
    }

    if (a1 < 0)
    {
      goto LABEL_138;
    }

    if (!a8)
    {
      goto LABEL_139;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = sub_183F9C14C(v67);
    }

    while (a1 < *(v67 + 2))
    {
      v68 = &v67[4 * a1];
      v69 = *(v68 + 8);
      v70 = __OFADD__(v69, v28);
      v71 = v69 + v28;
      if (v70)
      {
        goto LABEL_110;
      }

      if ((v71 & 0x8000000000000000) != 0)
      {
        goto LABEL_111;
      }

      if (HIDWORD(v71))
      {
        goto LABEL_112;
      }

      ++a1;
      *(v68 + 8) = v71;
      if (a8 == a1)
      {
        *a4 = v67;
        goto LABEL_67;
      }
    }

    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    v29 = swift_stdlib_isStackAllocationSafe();
    if ((v29 & 1) == 0)
    {
      v96 = swift_slowAlloc();
      sub_183F70628(a15, v131);
      sub_183FA6180(v96, a8, a8, v39, v27, a1, v128, v39, a9, a10, a11, a12, v122 & 1, v33, v124, v125, a2, v125, a15, a4, v28);
      MEMORY[0x1865EFCB0](v96, -1, -1);
      v39 = v125;
      a4 = v121;
      goto LABEL_67;
    }
  }

  v98 = swift_slowAlloc();
  sub_183F70628(a15, v131);
  sub_183FA8920(v98, a9, a10, a11, a12, v39, v127, a8, v126, a8, v27, a1, v128, v39, v122 & 1, v123, v124, v125, a2, v125, a15, a4, v120);
  MEMORY[0x1865EFCB0](v98, -1, -1);
  v39 = v125;
  a4 = v121;
LABEL_67:
  v72 = *(v27 + 32);
  v73 = *(v72 + 16);
  if (v73)
  {
    if (v112)
    {
      if (a13)
      {
        v74 = *a4;
        v75 = *(*a4 + 16);
        if (v75)
        {
          v76 = *(v27 + 48);
          v77 = (v76 + 32);
          v78 = v76 + 24;
          v79 = *(v74 + 8);
          if (v79)
          {
            v80 = *v77;
            v81 = *(v78 + 8 * v79);
            v82 = NAN;
            if ((*v77 & 0xFFFFFFFFFFFFFLL) == 0)
            {
              v82 = *v77;
            }

            if ((~*v77 & 0x7FF0000000000000) == 0)
            {
              v80 = v82;
            }

            if ((~*&v81 & 0x7FF0000000000000) == 0 && (*(v78 + 8 * v79) & 0xFFFFFFFFFFFFFLL) != 0)
            {
              v81 = NAN;
            }
          }

          else
          {
            v81 = NAN;
            v80 = NAN;
          }

          v84 = v75 - 1;
          if (v84)
          {
            v90 = (v74 + 36);
            do
            {
              v92 = *v90++;
              v91 = v92;
              if (v79 != v92)
              {
                v93 = v77[v79];
                v94 = *(v78 + 8 * v91);
                if ((*&v93 & 0xFFFFFFFFFFFFFLL) != 0)
                {
                  v95 = v80;
                }

                else
                {
                  v95 = v93;
                }

                if ((~*&v93 & 0x7FF0000000000000) != 0)
                {
                  v95 = v93;
                }

                if (v80 > v93)
                {
                  v80 = v95;
                }

                if (v94 >= v81)
                {
                  if ((~*&v94 & 0x7FF0000000000000) != 0)
                  {
                    v81 = *(v78 + 8 * v91);
                  }

                  else if ((*(v78 + 8 * v91) & 0xFFFFFFFFFFFFFLL) == 0)
                  {
                    v81 = *(v78 + 8 * v91);
                  }
                }
              }

              v79 = v91;
              --v84;
            }

            while (v84);
          }

          v113 = *&v81;
        }

        else
        {
          v113 = 0x7FF8000000000000;
          v80 = NAN;
        }
      }

      else
      {
        v80 = *v27;
      }
    }

    else
    {
      v80 = v110;
      if (a13)
      {
        v113 = *(v27 + 8);
      }
    }

    v85 = (v27 + 16);
    if (!v39)
    {
      v85 = (v72 + 32);
    }

    v86 = *v85;
    v87 = (v72 + 8 * v73 + 24);
    if (v111 != a2)
    {
      v87 = (v27 + 24);
    }

    v88 = *v87;
    *v27 = v80;
    *(v27 + 8) = v113;
    *(v27 + 16) = v86;
    *(v27 + 24) = v88;
  }

  else
  {
    v83 = vdupq_n_s64(0x7FF8000000000000uLL);
    *v27 = v83;
    *(v27 + 16) = v83;
  }

  sub_183FA5EA0();
  sub_183F81130(a15);
  sub_183F81130(a15);
  sub_183F81130(a15);
  return sub_183F81130(a15);
}

uint64_t sub_183FA4058@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v4 = *(v1 + 48);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v4;
  if ((~*v1 & 0x7FF0000000000000) == 0 && (*v1 & 0xFFFFFFFFFFFFFLL) != 0 || *(*(v1 + 32) + 16))
  {
    v5 = *(*(v1 + 40) + 16);
    v6 = *(*(v1 + 48) + 16);
  }

  else
  {
    v6 = 2;
    v5 = 2;
  }

  *(a1 + 72) = v5;
  *(a1 + 80) = v6;
  return sub_183F70628(v1, v8);
}

uint64_t sub_183FA40DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a3 < 0)
  {
LABEL_23:
    v14 = 0;
    v15 = a2 + 2 * a3;
    while (a2 != a4)
    {
      v8 = __OFSUB__(a2, 2);
      a2 -= 2;
      if (v8)
      {
        goto LABEL_49;
      }

      v16 = (~*v5 & 0x7FF0000000000000) != 0 || (*v5 & 0xFFFFFFFFFFFFFLL) == 0;
      if (!v16 || *(v5[4] + 16))
      {
        v17 = result & (result >> 63);
        while (1)
        {
          v18 = result - 1;
          if (result < 1)
          {
            result = v17;
            goto LABEL_25;
          }

          v19 = v5[5];
          if (result > *(v19 + 16))
          {
            break;
          }

          v20 = *(v19 + 4 * result-- + 28);
          if (a2 >= v20)
          {
            result = v18 + 1;
            goto LABEL_25;
          }
        }

        __break(1u);
        goto LABEL_47;
      }

      v8 = __OFSUB__(result, 2);
      result -= 2;
      if (v8)
      {
        __break(1u);
        break;
      }

LABEL_25:
      if (--v14 <= a3)
      {
        *a5 = result;
        *(a5 + 8) = v15;
        *(a5 + 16) = 0;
        return result;
      }
    }

LABEL_42:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 1;
    return result;
  }

  if (a3)
  {
    v6 = 0;
    v7 = a2 + 2 * a3;
    while (a2 != a4)
    {
      v8 = __OFADD__(a2, 2);
      a2 += 2;
      if (v8)
      {
        goto LABEL_48;
      }

      v9 = (~*v5 & 0x7FF0000000000000) != 0 || (*v5 & 0xFFFFFFFFFFFFFLL) == 0;
      if (v9 && !*(v5[4] + 16))
      {
        v8 = __OFADD__(result, 2);
        result += 2;
        if (v8)
        {
          __break(1u);
          goto LABEL_23;
        }
      }

      else
      {
        v10 = v5[5];
        v11 = *(v10 + 16);
        if (result < v11)
        {
          v12 = v10 + 32;
          v13 = result;
          while ((result & 0x8000000000000000) == 0)
          {
            if (a2 < *(v12 + 4 * v13))
            {
              result = v13;
              goto LABEL_5;
            }

            if (v11 == ++v13)
            {
              result = v11;
              goto LABEL_5;
            }
          }

LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          return result;
        }
      }

LABEL_5:
      if (++v6 == a3)
      {
        a2 = v7;
        goto LABEL_44;
      }
    }

    goto LABEL_42;
  }

LABEL_44:
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  return result;
}

uint64_t sub_183FA4254(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    if (__OFSUB__(result, 1))
    {
      __break(1u);
      return result;
    }

    v4 = *(a2 + 4 * (result - 1));
  }

  else
  {
    v4 = 0;
  }

  if (a4)
  {
    return a4 + 8 * v4;
  }

  else
  {
    return 0;
  }
}

void Region.init(x:y:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  v5 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v5;
  *(a1 + 48) = v5;
}

uint64_t sub_183FA42A4(uint64_t result, double a2, double a3)
{
  if (result)
  {
    v5 = *(v3 + 24);
    if (v5 < a2)
    {
      if (v5 > a3)
      {
        if (*(v3 + 16) <= a3)
        {
          return 1;
        }

        __break(1u);
        goto LABEL_15;
      }

      return 1;
    }

    return 0;
  }

  v6 = *(v3 + 32);
  v7 = *(v6 + 16);
  v8 = v6 + 32;
  result = sub_183F94060(v6 + 32, v7, a2);
  v9 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result;
  if (v7 < result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_183F94198(v8 + 8 * result, v7 - result, a3);
  v11 = result + v10;
  if (__OFADD__(result, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  result = v9 & ~(v9 >> 63);
  if (v11 < result)
  {
    __break(1u);
    return 0;
  }

  return result;
}

unint64_t sub_183FA4388(unint64_t result, uint64_t a2)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else if (v5 < 1)
  {
    return 0;
  }

  else
  {
    v7[3] = v3;
    v7[4] = v4;
    v6 = (~*v2 & 0x7FF0000000000000) != 0 || (*v2 & 0xFFFFFFFFFFFFFLL) == 0;
    if (v6 && !*(v2[4] + 16))
    {
      return 2;
    }

    else
    {
      sub_183FA5FD4(v2[5] + 32, *(v2[5] + 16), v5, result, a2, v7);
      return v7[0];
    }
  }

  return result;
}

uint64_t *Region.index(before:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = result[1];
  v4 = __OFSUB__(v3, 2);
  v5 = v3 - 2;
  if (v4)
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v6 = *result;
    v7 = v2[5];
    v8 = (~*v2 & 0x7FF0000000000000) != 0 || (*v2 & 0xFFFFFFFFFFFFFLL) == 0;
    if (!v8 || *(v2[4] + 16))
    {
      v9 = v6 & (v6 >> 63);
      while (1)
      {
        v10 = v6 - 1;
        if (v6 < 1)
        {
          goto LABEL_14;
        }

        if (v6 > *(v7 + 16))
        {
          __break(1u);
          goto LABEL_16;
        }

        v11 = *(v7 + 28 + 4 * v6--);
        if (v5 >= v11)
        {
          *a2 = v10 + 1;
          a2[1] = v5;
          return result;
        }
      }
    }

    v9 = v6 - 2;
    if (!__OFSUB__(v6, 2))
    {
LABEL_14:
      *a2 = v9;
      a2[1] = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall Region.distance(from:to:)(CoreGraphics::Region::Index from, CoreGraphics::Region::Index to)
{
  v2 = *(from.spanIndex + 8);
  v3 = *(from.segmentIndex + 8);
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (!v4)
  {
    return v5 / 2;
  }

  __break(1u);
  return from.spanIndex;
}

unint64_t sub_183FA4504()
{
  result = qword_1EA854648;
  if (!qword_1EA854648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854648);
  }

  return result;
}

unint64_t sub_183FA45AC()
{
  result = qword_1EA854650;
  if (!qword_1EA854650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854650);
  }

  return result;
}

unint64_t sub_183FA4604()
{
  result = qword_1EA854658;
  if (!qword_1EA854658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854660);
    sub_183FA4688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854658);
  }

  return result;
}

unint64_t sub_183FA4688()
{
  result = qword_1EA854668;
  if (!qword_1EA854668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854668);
  }

  return result;
}

unint64_t sub_183FA46E0()
{
  result = qword_1EA854670;
  if (!qword_1EA854670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854678);
    sub_183FA4688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854670);
  }

  return result;
}

uint64_t sub_183FA47A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a3 < 0)
  {
LABEL_20:
    v14 = 0;
    v15 = (~*v4 & 0x7FF0000000000000) != 0;
    if ((*v4 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v15 = 1;
    }

    while (1)
    {
      v9 = __OFSUB__(a2, 2);
      a2 -= 2;
      if (v9)
      {
        break;
      }

      if (v15 && !*(v4[4] + 16))
      {
        v7 = result - 2;
        if (__OFSUB__(result, 2))
        {
          goto LABEL_38;
        }
      }

      else
      {
        v7 = result & (result >> 63);
        while (1)
        {
          v16 = result - 1;
          if (result < 1)
          {
            break;
          }

          v17 = v4[5];
          if (result > *(v17 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          v18 = *(v17 + 4 * result-- + 28);
          if (a2 >= v18)
          {
            v7 = v16 + 1;
            break;
          }
        }
      }

      --v14;
      result = v7;
      if (v14 <= a3)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  if (a3)
  {
    v5 = 0;
    v6 = (~*v4 & 0x7FF0000000000000) != 0;
    if ((*v4 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v6 = 1;
    }

    v7 = result;
    while (1)
    {
      v9 = __OFADD__(a2, 2);
      a2 += 2;
      if (v9)
      {
        break;
      }

      if (v6 && !*(v4[4] + 16))
      {
        v9 = __OFADD__(v7, 2);
        v7 += 2;
        if (v9)
        {
          __break(1u);
          goto LABEL_20;
        }
      }

      else
      {
        v10 = v4[5];
        v11 = *(v10 + 16);
        if (v7 < v11)
        {
          v12 = v10 + 32;
          v13 = v7;
          while ((v7 & 0x8000000000000000) == 0)
          {
            if (a2 < *(v12 + 4 * v13))
            {
              v7 = v13;
              goto LABEL_7;
            }

            if (v11 == ++v13)
            {
              v7 = v11;
              goto LABEL_7;
            }
          }

LABEL_35:
          __break(1u);
          break;
        }
      }

LABEL_7:
      if (v5++ == a3 - 1)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v7 = result;
LABEL_33:
  *a4 = v7;
  a4[1] = a2;
  return result;
}

unint64_t sub_183FA48F8()
{
  result = qword_1EA853EC8;
  if (!qword_1EA853EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA853EC8);
  }

  return result;
}

unint64_t sub_183FA4950()
{
  result = qword_1EA854680;
  if (!qword_1EA854680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854680);
  }

  return result;
}

uint64_t sub_183FA4B20(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = *(a2 + 8);
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (!v4)
  {
    return v5 / 2;
  }

  __break(1u);
  return result;
}

uint64_t sub_183FA4B40(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = *(a2 + 24);
  if (v2 >= *(a2 + 8))
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_183FA4B60(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 < *(a2 + 8) || *(a2 + 24) < v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_183FA4B80(uint64_t result, uint64_t a2)
{
  if (*(result + 8) < *(a2 + 8) || *(a2 + 24) < *(result + 24))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_183FA4C14()
{
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v4[2] = *(v0 + 32);
  v5 = *(v0 + 48);
  v2 = sub_183FA9564(v4);
  sub_183F81130(v4);
  return v2;
}

uint64_t sub_183FA4CBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_183FA4D04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_183FA4D98@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < *(v2 + 8))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *sub_183FA4DC4(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if ((v2 & 0x8000000000000000) == 0 && v2 < *(v1 + 8))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_183FA4DFC(uint64_t (*result)(), uint64_t *a2))()
{
  v3 = *a2;
  v4 = *v2;
  if (!*a2)
  {
    v5 = 0;
    goto LABEL_5;
  }

  if (!__OFSUB__(v3, 1))
  {
    v5 = *(v4 + 4 * (v3 - 1));
LABEL_5:
    v6 = *(v4 + 4 * v3);
    *result = v5;
    *(result + 1) = v6;
    return CGBitmapPixelInfoGetBitsPerComponent;
  }

  __break(1u);
  return result;
}

int64x2_t *sub_183FA4E4C@<X0>(int64x2_t *result@<X0>, int64x2_t *a2@<X8>)
{
  v3 = *v2;
  if (v2->i64[1] < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *result;
  if (result->i64[0] < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((vmovn_s64(vcgtq_s64(v4, v3)).i32[1] & 1) == 0)
  {
    *a2 = v4;
    a2[1] = v3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_183FA4E88(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v2;
  }
}

void *sub_183FA4EAC@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0 && *(v3 + 8) >= v4)
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_183FA4ED8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_183F77F0C(*a1, a2, *a3, *v4, v4[1]);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t *sub_183FA4F14(uint64_t *result, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(v2 + 8);
  if (v4 >= *a2)
  {
    v5 = *result;
    if (((v3 | *result) & 0x8000000000000000) == 0 && v4 >= v5)
    {
      return (v3 - v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_183FA4F44@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || v3 >= *(v2 + 8))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + 1;
  }

  return result;
}

uint64_t *sub_183FA4F68(uint64_t *result)
{
  v2 = *result;
  if (*result < 0 || v2 >= *(v1 + 8))
  {
    __break(1u);
  }

  else
  {
    *result = v2 + 1;
  }

  return result;
}

__n128 sub_183FA4F8C@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

void sub_183FA4F9C()
{
  v1 = *(v0 + 8);
  if (v1 < 0)
  {
    __break(1u);
  }

  else if (v1)
  {
    v2 = *v0;
    v3 = sub_183F9BC78(*(v0 + 8), 0);
    if (sub_183FA9EC0(v4, v3 + 4, v1, v2, v1) != v1)
    {
      __break(1u);
    }
  }
}

uint64_t (*sub_183FA5044(uint64_t (*result)(), void *a2))()
{
  v3 = v2[2];
  v4 = __OFADD__(*a2, v3);
  v5 = *a2 + v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v5))
  {
    *result = *(*v2 + 8 * *a2);
    *(result + 2) = v5;
    return CGBitmapPixelInfoGetBitsPerComponent;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t *sub_183FA50A0@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  if (*v2)
  {
    v4 = *v2 + 8 * *result;
  }

  else
  {
    v4 = 0;
  }

  v5 = result[1] - v3;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v3;
  return result;
}

void *sub_183FA50C4@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3 - *result;
  if (a2 < 1)
  {
    if (v4 <= 0 && v4 > a2)
    {
      goto LABEL_4;
    }

LABEL_10:
    v6 = 0;
    v5 = *result + a2;
    goto LABEL_11;
  }

  if (v4 < 0 || v4 >= a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = 0;
  v6 = 1;
LABEL_11:
  *a4 = v5;
  *(a4 + 8) = v6;
  return result;
}

__n128 sub_183FA5130@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = 0;
  return result;
}

void *sub_183FA5144()
{
  v1 = v0[1];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v0[2];
  v3 = *v0;
  v4 = sub_183F9BC64(v0[1], 0);
  if (sub_183F780D8(v6, (v4 + 4), v1, v3, v1, v2) != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

void *sub_183FA51D0@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *sub_183FA51FC(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*v1 + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*sub_183FA5238(void *a1, unint64_t *a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  sub_183FAAC50(*a2, *v2, v2[1], v2[2], v5);
  return sub_183FA52BC;
}

uint64_t *sub_183FA52C4@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v7 = v2 + 1;
    v6 = v2[1];
    v5 = v7[1];
    *a2 = v3;
    a2[1] = v4;
    a2[2] = result;
    a2[3] = v6;
    a2[4] = v5;
  }

  return result;
}

void sub_183FA5330(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *sub_183FA5354@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_183FA5380@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_183F8087C(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *sub_183FA53BC(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

void *sub_183FA53E4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_183FA5408(void *result)
{
  if (*result >= *(*v1 + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *sub_183FA542C()
{
  v1 = sub_183FA9640(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

unint64_t sub_183FA5498()
{
  result = qword_1ED4DFB88;
  if (!qword_1ED4DFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4DFB88);
  }

  return result;
}

unint64_t sub_183FA5534()
{
  result = qword_1EA8546C0;
  if (!qword_1EA8546C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8546C0);
  }

  return result;
}

unint64_t sub_183FA558C()
{
  result = qword_1EA8546C8;
  if (!qword_1EA8546C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8546B8);
    sub_183FA5610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8546C8);
  }

  return result;
}

unint64_t sub_183FA5610()
{
  result = qword_1EA8546D0;
  if (!qword_1EA8546D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8546D0);
  }

  return result;
}

unint64_t sub_183FA566C()
{
  result = qword_1EA8546D8;
  if (!qword_1EA8546D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8546B8);
    sub_183FA56F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8546D8);
  }

  return result;
}

unint64_t sub_183FA56F0()
{
  result = qword_1EA8546E0;
  if (!qword_1EA8546E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8546E0);
  }

  return result;
}

void sub_183FA5744()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = *v0 & 0x7FF0000000000000;
  v4 = v3 != 0x7FF0000000000000 || (*v0 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v4 && !*(v0[4] + 16))
  {
    return;
  }

  v5 = *(v2 + 16);
  if (!v5)
  {
    return;
  }

  v6 = (v1 + 32);
  v7 = v1 + 24;
  v8 = *(v2 + 32);
  if (!v8)
  {
    v10 = NAN;
    v9 = NAN;
    v12 = v5 - 1;
    if (!v12)
    {
      return;
    }

    goto LABEL_20;
  }

  v9 = *v6;
  v10 = *(v7 + 8 * v8);
  v11 = NAN;
  if ((*v6 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v11 = *v6;
  }

  if ((~*v6 & 0x7FF0000000000000) == 0)
  {
    v9 = v11;
  }

  if ((~*&v10 & 0x7FF0000000000000) == 0 && (*(v7 + 8 * v8) & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v10 = NAN;
  }

  v12 = v5 - 1;
  if (v12)
  {
LABEL_20:
    v13 = (v2 + 36);
    do
    {
      v15 = *v13++;
      v14 = v15;
      if (v8 != v15)
      {
        v16 = v6[v8];
        v17 = *(v7 + 8 * v14);
        if ((*&v16 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v18 = v9;
        }

        else
        {
          v18 = v16;
        }

        if ((~*&v16 & 0x7FF0000000000000) != 0)
        {
          v18 = v16;
        }

        if (v9 > v16)
        {
          v9 = v18;
        }

        if (v17 >= v10)
        {
          if ((~*&v17 & 0x7FF0000000000000) != 0)
          {
            v10 = *(v7 + 8 * v14);
          }

          else if ((*(v7 + 8 * v14) & 0xFFFFFFFFFFFFFLL) == 0)
          {
            v10 = *(v7 + 8 * v14);
          }
        }
      }

      v8 = v14;
      --v12;
    }

    while (v12);
  }
}

void sub_183FA58E8(unsigned int *a1@<X3>, uint64_t a2@<X4>, double *a3@<X5>, double *a4@<X8>)
{
  if (a2)
  {
    if (a2 >= 1)
    {
      v4 = *a1;
      if (v4)
      {
        v5 = *a3;
        v6 = a3[v4 - 1];
        v7 = NAN;
        if ((*a3 & 0xFFFFFFFFFFFFFLL) == 0)
        {
          v7 = *a3;
        }

        if ((~*a3 & 0x7FF0000000000000) == 0)
        {
          v5 = v7;
        }

        if ((~*&v6 & 0x7FF0000000000000) == 0 && (*&a3[v4 - 1] & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v6 = NAN;
        }

        v8 = a2 - 1;
        if (a2 == 1)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v6 = NAN;
        v5 = NAN;
        v8 = a2 - 1;
        if (a2 == 1)
        {
LABEL_12:
          *a4 = v5;
          a4[1] = v6;
          return;
        }
      }

      v9 = a1 + 1;
      do
      {
        v11 = *v9++;
        v10 = v11;
        if (v4 != v11)
        {
          v12 = &a3[v4];
          if (!a3)
          {
            v12 = 0;
          }

          v13 = v12[~v4 + v10];
          if ((*v12 & 0xFFFFFFFFFFFFFLL) != 0)
          {
            v14 = v5;
          }

          else
          {
            v14 = *v12;
          }

          if ((~*v12 & 0x7FF0000000000000) != 0)
          {
            v14 = *v12;
          }

          if (v5 > *v12)
          {
            v5 = v14;
          }

          if (v13 >= v6)
          {
            v15 = v12[~v4 + v10];
            if ((~*&v13 & 0x7FF0000000000000) != 0)
            {
              v6 = v13;
            }

            else if ((*&v15 & 0xFFFFFFFFFFFFFLL) == 0)
            {
              v6 = v13;
            }
          }
        }

        v4 = v10;
        --v8;
      }

      while (v8);
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    *a4 = NAN;
    a4[1] = NAN;
  }
}

char *sub_183FA5A00()
{
  v7 = *MEMORY[0x1E69E9840];
  if (((~*v0 & 0x7FF0000000000000) != 0 || (*v0 & 0xFFFFFFFFFFFFFLL) == 0) && !*(v0[4] + 16))
  {
    v2 = v0[3];
    v4 = *v0;
    v5 = *(v0 + 1);
    v6 = v2;
    sub_183FA5D1C(&v5 + 8, 2);
    sub_183FA5D1C(&v4, 2);
    return sub_183FA5ACC(2, 2u);
  }

  return result;
}

char *sub_183FA5ACC(char *result, unsigned int a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = &result[v4];
  if (__OFADD__(v4, result))
  {
    goto LABEL_53;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if (result)
  {
    v8 = *(v3 + 24) >> 1;
    if (v8 >= v5)
    {
      goto LABEL_11;
    }

    if (v4 <= v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = v4;
    }
  }

  else if (v4 <= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v4;
  }

  result = sub_183F7FF54(result, v9, 1);
  v3 = *v2;
  v8 = *(*v2 + 24) >> 1;
LABEL_11:
  v10 = *(v3 + 16);
  v11 = v8 - v10;
  if (v8 == v10)
  {
    if (v7 > 0)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v12 = 0;
    goto LABEL_34;
  }

  if (v11 < 1)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v12 = v7;
  if (v7)
  {
    v13 = (v3 + 4 * v10);
    v14 = &v13[2];
    v15 = v7 & ~(v7 >> 63);
    v16 = v8 + ~v10;
    if (v15 < v16)
    {
      v16 = v7 & ~(v7 >> 63);
    }

    if (v16 >= v7 - 1)
    {
      v16 = v7 - 1;
    }

    if (v16 > 7)
    {
      v19 = v16 + 1;
      v20 = v19 & 7;
      if ((v19 & 7) == 0)
      {
        v20 = 8;
      }

      v17 = v19 - v20;
      v18 = v17 + 1;
      v14 += v17;
      v21 = vdupq_n_s32(a2);
      v22 = v13 + 3;
      v23 = v17;
      do
      {
        v22[-1] = v21;
        *v22 = v21;
        v22 += 2;
        v23 -= 8;
      }

      while (v23);
    }

    else
    {
      v17 = 0;
      v18 = 1;
    }

    while (v17 != v15)
    {
      v17 = v18;
      *v14 = a2;
      if (v11 == v18)
      {
        v12 = v11;
        if (v11 < v7)
        {
          goto LABEL_54;
        }

        goto LABEL_31;
      }

      ++v14;
      ++v18;
      if (v7 + 1 == v17 + 1)
      {
        v12 = v7;
        goto LABEL_31;
      }
    }

    goto LABEL_52;
  }

LABEL_31:
  if (v12 <= 0)
  {
LABEL_34:
    if (v12 != v11 || v12 == v7)
    {
LABEL_49:
      *v2 = v3;
      return result;
    }

    if (v11 >= v7)
    {
      goto LABEL_55;
    }

    v25 = v11 + 1;
    while (1)
    {
      v26 = *(v3 + 24);
      if (v10 + 1 > (v26 >> 1))
      {
        result = sub_183F7FF54((v26 > 1), v10 + 1, 1);
      }

      v3 = *v2;
      v27 = *(*v2 + 24) >> 1;
      if (v10 < v27)
      {
        break;
      }

LABEL_38:
      *(v3 + 16) = v10;
    }

    v28 = v25 + v27 - v10;
    v29 = v10 + 8;
    v30 = v25;
    while (1)
    {
      *(v3 + 4 * v29) = a2;
      if (v7 == v30)
      {
        *(v3 + 16) = v29 - 7;
        goto LABEL_49;
      }

      if (v25 < 0 || v30 >= v7)
      {
        break;
      }

      ++v30;
      if (++v29 - v27 == 8)
      {
        v10 = v27;
        v25 = v28;
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  v24 = __OFADD__(v10, v12);
  v10 += v12;
  if (!v24)
  {
    *(v3 + 16) = v10;
    goto LABEL_34;
  }

LABEL_56:
  __break(1u);
  return result;
}

char *sub_183FA5D1C(char *result, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = v4 + a2;
  if (__OFADD__(v4, a2))
  {
    __break(1u);
    goto LABEL_34;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    v9 = *(v3 + 24) >> 1;
    if (v9 >= v5)
    {
      goto LABEL_11;
    }

    if (v4 <= v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v4;
    }
  }

  else if (v4 <= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v4;
  }

  sub_183F7FF74(isUniquelyReferenced_nonNull_native, v10, 1);
  v3 = *v2;
  v9 = *(*v2 + 24) >> 1;
LABEL_11:
  v11 = *(v3 + 16);
  v12 = v9 - v11;
  result = sub_183EA81DC((v3 + 8 * v11 + 32), v9 - v11, v7, a2);
  if (v14 < a2)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v14 >= 1)
  {
    v15 = *(v3 + 16);
    v16 = __OFADD__(v15, v14);
    v17 = v15 + v14;
    if (!v16)
    {
      *(v3 + 16) = v17;
      goto LABEL_15;
    }

LABEL_35:
    __break(1u);
    return result;
  }

LABEL_15:
  if (v14 == v12 && result != 0 && result != v13)
  {
    v20 = *(v3 + 16);
    v22 = *result;
    result += 8;
    v21 = v22;
    while (1)
    {
      v23 = *(v3 + 24);
      if (v20 + 1 > (v23 >> 1))
      {
        v27 = result;
        v28 = v13;
        sub_183F7FF74((v23 > 1), v20 + 1, 1);
        v13 = v28;
        result = v27;
      }

      v3 = *v2;
      v24 = *(*v2 + 24) >> 1;
      if (v20 < v24)
      {
        break;
      }

LABEL_23:
      *(v3 + 16) = v20;
    }

    v25 = v20 + 4;
    while (1)
    {
      *(v3 + 8 * v25) = v21;
      if (result == v13)
      {
        break;
      }

      v26 = *result;
      result += 8;
      v21 = v26;
      if (++v25 - v24 == 4)
      {
        v20 = v24;
        goto LABEL_23;
      }
    }

    *(v3 + 16) = v25 - 3;
  }

  *v2 = v3;
  return result;
}

void sub_183FA5EA0()
{
  v2 = v0 + 5;
  v1 = v0[5];
  if (*(v1 + 16) == 2 && *(v1 + 32) == 2 && *(v1 + 36) == 2)
  {
    v3 = v0 + 6;
    if (*(v0[6] + 16) == 2)
    {
      v4 = v0 + 4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6 = *v4;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_183F80A50(0, *(v6 + 16));
      }

      else
      {
        v7 = sub_183EA76E4(0, *(v6 + 24) >> 1);

        *v4 = v7;
      }

      v8 = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      if (v8)
      {
        sub_183F80BB4(0, *(v9 + 16));
      }

      else
      {
        v10 = sub_183F9BAB8(0, *(v9 + 24) >> 1);

        *v2 = v10;
      }

      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      if (v11)
      {
        sub_183F80A50(0, *(v12 + 16));
      }

      else
      {
        v13 = sub_183EA76E4(0, *(v12 + 24) >> 1);

        *v3 = v13;
      }
    }
  }
}

uint64_t sub_183FA5FD4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (a3 <= 32)
  {
    goto LABEL_10;
  }

  if (__OFSUB__(a5, 1))
  {
    goto LABEL_32;
  }

  if (!a4)
  {
    v6 = 0;
    v7 = a5;
    goto LABEL_6;
  }

  if (!__OFSUB__(a4, 1))
  {
    v6 = *(result + 4 * (a4 - 1));
    v7 = a5 - a4;
    if (!__OFSUB__(a5, a4))
    {
LABEL_6:
      v8 = __OFSUB__(v7, 1);
      v9 = v7 - 1;
      if (v8)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v10 = *(result + 4 * (a5 - 1)) - v6;
      v11 = (v9 + (v9 >> 63)) & 0xFFFFFFFFFFFFFFFELL;
      v8 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v8)
      {
LABEL_27:
        *a6 = v12;
        return result;
      }

      __break(1u);
LABEL_10:
      if ((a2 & 0x8000000000000000) == 0)
      {
        if ((a4 & 0x8000000000000000) == 0)
        {
          if (a2 >= a5)
          {
            if (a4 == a5)
            {
              *a6 = 0;
              return result;
            }

            if (a4 < a5)
            {
              v12 = 0;
              if (a4 <= a2)
              {
                v13 = a2;
              }

              else
              {
                v13 = a4;
              }

              while (1)
              {
                if (a4)
                {
                  if (__OFSUB__(a4, 1))
                  {
                    goto LABEL_31;
                  }

                  v14 = *(result + 4 * (a4 - 1));
                  if (v13 == a4)
                  {
                    goto LABEL_30;
                  }
                }

                else
                {
                  v14 = 0;
                  if (!v13)
                  {
                    goto LABEL_30;
                  }
                }

                v15 = *(result + 4 * a4) - v14;
                if (v15 > v12)
                {
                  v12 = v15;
                }

                if (a5 == ++a4)
                {
                  goto LABEL_27;
                }
              }
            }

            goto LABEL_38;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_183FA6180(char *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22 = v21;
  v99 = a6;
  v101 = a1;
  v33 = a19;
  v110[2] = *MEMORY[0x1E69E9840];
  sub_183F70628(a19, v106);
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_74;
  }

  if (a3 >> 61)
  {
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
  }

  v97 = a8;
  v98 = a2;
  v95 = a21;
  v96 = a20;
  v83 = a18;
  v90 = a17;
  v93 = a16;
  v92 = a14;
  v94 = a13;
  v35 = v106;
  isUniquelyReferenced_nonNull_native = a19;
  if ((4 * a3) >= 1025)
  {
    goto LABEL_61;
  }

  sub_183F70628(a19, v106);
  v37 = sub_183F70628(a19, v106);
  while (1)
  {
    v91 = a3;
    isStackAllocationSafe = MEMORY[0x1EEE9AC00](v37, v38);
    v100 = &v82 - v41;
    if ((a4 & 0x8000000000000000) != 0)
    {
      goto LABEL_76;
    }

    if (a4 >> 60)
    {
      goto LABEL_77;
    }

    if ((8 * a4) >= 1025)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        break;
      }
    }

    v102 = v33;
    v42 = MEMORY[0x1EEE9AC00](isStackAllocationSafe, v40);
    v45 = &v82 - v44;
    v104 = 0;
    v105 = 0;
    if (a7 < v99)
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
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
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v84 = v43;
    v88 = a15;
    v85 = &v82;
    v86 = v22;
    v89 = &v82;
    v47 = a5 + 48;
    v46 = *(a5 + 48);
    v48 = *(a5 + 32);
    v87 = a5 + 32;
    v49 = *a5;
    v50 = *(a5 + 16);
    v51 = *(a5 + 40);
    a5 += 40;
    v110[0] = v46 + 8 * v99 + 32;
    v110[1] = a7 - v99;
    v106[0] = v49;
    v106[1] = v50;
    v107 = v48;
    v108 = v51;
    v109 = v46;
    MEMORY[0x1EEE9AC00](v42, v49);
    *(&v82 - 12) = v45;
    *(&v82 - 11) = a4;
    v72 = &v104;
    v73 = v97;
    LOBYTE(v74) = v94 & 1;
    v75 = v110;
    v76 = v101;
    v77 = v98;
    v78 = &v105;
    v79 = v100;
    v80 = v91;
    v53 = v52;
    v81 = v52;
    v54 = v102;
    sub_183F70628(v102, v103);
    swift_retain_n();

    sub_183F99594(v106, sub_183FAB470, a9, a10, a11, a12, (&v82 - 14), v54, v96, v95);

    a4 = v104;
    if ((v104 & 0x8000000000000000) != 0)
    {
      goto LABEL_67;
    }

    v55 = v53;
    a3 = v88;
    a15 = v93;
    v56 = v92;
    if (v92)
    {
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        if (a4)
        {
LABEL_18:
          v59 = sub_183EA76E4(a4, 0);
          memcpy(v59 + 4, v45, 8 * a4);
        }

        else
        {
          v59 = MEMORY[0x1E69E7CC0];
        }

        v57 = v90;
        *v47 = v59;

        a7 = v105;
        v58 = v87;
        if ((v105 & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

        goto LABEL_21;
      }

      if (a4 > *(*v47 + 24) >> 1)
      {
        goto LABEL_18;
      }
    }

    if (a3 < v55)
    {
      goto LABEL_71;
    }

    sub_183F7DC7C(v55, a3, v45, a4);
    a7 = v105;
    v57 = v90;
    v58 = v87;
    if ((v105 & 0x8000000000000000) != 0)
    {
      goto LABEL_68;
    }

    if ((v56 & 1) == 0)
    {
      sub_183F7DC7C(a15, v90, v101, v105);
LABEL_31:
      sub_183F7DCA8(a15, v57, v100, a7);
      goto LABEL_36;
    }

LABEL_21:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (a7 <= *(*v58 + 24) >> 1)
      {
        sub_183F7DC7C(a15, v57, v101, a7);
        goto LABEL_29;
      }
    }

    else if (!a7)
    {
      goto LABEL_27;
    }

    v60 = sub_183EA76E4(a7, 0);
    sub_183EA81DC(v60 + 4, a7, v101, a7);
    if (v61 != a7)
    {
      __break(1u);
LABEL_27:
      v60 = MEMORY[0x1E69E7CC0];
    }

    *v58 = v60;

LABEL_29:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (a7 <= *(*a5 + 24) >> 1)
      {
        goto LABEL_31;
      }
    }

    else if (!a7)
    {
      v62 = MEMORY[0x1E69E7CC0];
      goto LABEL_35;
    }

    v62 = sub_183F9BAB8(a7, 0);
    memcpy(v62 + 4, v100, 4 * a7);
LABEL_35:
    *a5 = v62;

LABEL_36:
    v63 = v55 + a4;
    if (__OFADD__(v55, a4))
    {
      goto LABEL_69;
    }

    v64 = v63 - a3;
    if (__OFSUB__(v63, a3))
    {
      goto LABEL_70;
    }

    if (!v64)
    {
      goto LABEL_42;
    }

    v65 = v83 + a7;
    if (__OFADD__(v83, a7))
    {
      goto LABEL_72;
    }

    v66 = *a5;
    v67 = *(*a5 + 16);
    if (v67 < v65)
    {
      goto LABEL_73;
    }

    if (v67 == v65)
    {
LABEL_42:
      v33 = v102;
      sub_183F81130(v102);
      goto LABEL_43;
    }

    v22 = v67 - v65;
    if (v67 <= v65)
    {
      goto LABEL_78;
    }

    if (v65 < 0)
    {
      goto LABEL_79;
    }

    if (!v67)
    {
      goto LABEL_80;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v66;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_183F9C14C(v66);
      v66 = isUniquelyReferenced_nonNull_native;
    }

    *a5 = v66;
    v33 = a7 + v83 + 8;
    while ((v33 - 8) < *(v66 + 16))
    {
      v69 = *(v66 + 4 * v33);
      a3 = v69 + v64;
      if (__OFADD__(v69, v64))
      {
        goto LABEL_58;
      }

      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      if (HIDWORD(a3))
      {
        goto LABEL_60;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v66;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_183F9C14C(v66);
        v66 = isUniquelyReferenced_nonNull_native;
        *a5 = isUniquelyReferenced_nonNull_native;
      }

      *(v66 + 4 * v33) = a3;
      v66 = *a5;
      ++v33;
      if (!--v22)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    sub_183F70628(isUniquelyReferenced_nonNull_native, v35);
    sub_183F70628(v33, v106);
    v37 = swift_stdlib_isStackAllocationSafe();
    if ((v37 & 1) == 0)
    {
      v70 = swift_slowAlloc();
      sub_183F70628(v33, v106);
      sub_183FA7704(v70, a3, a4, v101, v98, a5, v99, a7, a9, a10, a11, a12, v97, v94 & 1, v92 & 1, a15, v93, v90, v83, v33, v96, v95);
      MEMORY[0x1865EFCB0](v70, -1, -1);
      goto LABEL_43;
    }
  }

  v71 = swift_slowAlloc();
  sub_183F70628(v33, v106);
  sub_183FA8920(v71, a9, a10, a11, a12, a4, v101, v98, v100, v91, a5, v99, a7, v97, v94 & 1, v92 & 1, a15, v93, v90, v83, v33, v96, v95);
  MEMORY[0x1865EFCB0](v71, -1, -1);
  if (v22)
  {
    swift_willThrow();
  }

LABEL_43:
  sub_183F81130(v33);
  sub_183F81130(v33);
  sub_183F81130(v33);
  return sub_183F81130(v33);
}

uint64_t sub_183FA6EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t i@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(_OWORD *, uint64_t, uint64_t *)@<X7>, unint64_t a9@<X8>, __n128 a10@<Q0>, uint64_t a11, uint64_t a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v97 = a1;
  v105[2] = *MEMORY[0x1E69E9840];
  v98 = a3;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_72;
  }

  if (v98 >> 61)
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
LABEL_78:
    __break(1u);
  }

  v22 = v21;
  v93 = a2;
  v94 = a8;
  v82 = a18;
  v89 = a17;
  v95 = a14;
  v90 = a13;
  v91 = a12;
  v92 = a11;
  if ((4 * v98) >= 1025)
  {
    goto LABEL_59;
  }

  while (1)
  {
    isStackAllocationSafe = MEMORY[0x1EEE9AC00](a1, a10);
    v96 = &v81 - v32;
    if ((i & 0x8000000000000000) != 0)
    {
      goto LABEL_74;
    }

    if (i >> 60)
    {
      goto LABEL_75;
    }

    if ((8 * i) >= 1025)
    {
      v88 = v30;
      v67 = v29;
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      v68 = v67;
      if ((isStackAllocationSafe & 1) == 0)
      {
        break;
      }
    }

    v87 = a16;
    v33 = MEMORY[0x1EEE9AC00](isStackAllocationSafe, v31);
    v38 = &v81 - v37;
    v103 = 0;
    v104 = 0;
    if (v35 < v34)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v86 = a15;
    v83 = v36;
    v84 = &v81;
    v85 = v22;
    v88 = &v81;
    v39 = a5 + 48;
    v40 = *(a5 + 48);
    v42 = a5 + 32;
    v41 = *(a5 + 32);
    v43 = *a5;
    v44 = *(a5 + 16);
    v45 = *(a5 + 40);
    a5 += 40;
    v105[0] = v40 + 8 * v34 + 32;
    v105[1] = v35 - v34;
    v99[0] = v43;
    v99[1] = v44;
    v100 = v41;
    v101 = v45;
    v102 = v40;
    MEMORY[0x1EEE9AC00](v33, v43);
    *(&v81 - 12) = v38;
    *(&v81 - 11) = i;
    v71 = &v103;
    v72 = v91;
    LOBYTE(v73) = v90 & 1;
    v74 = v105;
    v75 = v97;
    v76 = v93;
    v77 = &v104;
    v78 = v96;
    v79 = v98;
    v47 = v46;
    v80 = v46;
    swift_retain_n();

    v94(v99, a21, &v81 - 14);

    v48 = v103;
    if ((v103 & 0x8000000000000000) != 0)
    {
      goto LABEL_65;
    }

    v49 = v86;
    a15 = v89;
    if (v95)
    {
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        if (v48)
        {
LABEL_17:
          v50 = sub_183EA76E4(v48, 0);
          memcpy(v50 + 4, v38, 8 * v48);
        }

        else
        {
          v50 = MEMORY[0x1E69E7CC0];
        }

        a16 = v87;
        *v39 = v50;

        v22 = v104;
        if ((v104 & 0x8000000000000000) != 0)
        {
          goto LABEL_66;
        }

        goto LABEL_20;
      }

      if (v48 > *(*v39 + 24) >> 1)
      {
        goto LABEL_17;
      }
    }

    if (v49 < v47)
    {
      goto LABEL_69;
    }

    sub_183F7DC7C(v47, v49, v38, v48);
    v22 = v104;
    a16 = v87;
    if ((v104 & 0x8000000000000000) != 0)
    {
      goto LABEL_66;
    }

    if ((v95 & 1) == 0)
    {
      sub_183F7DC7C(v87, a15, v97, v104);
      goto LABEL_30;
    }

LABEL_20:
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      if (!v22)
      {
        goto LABEL_26;
      }

LABEL_24:
      v51 = sub_183EA76E4(v22, 0);
      sub_183EA81DC(v51 + 4, v22, v97, v22);
      if (v52 != v22)
      {
        __break(1u);
LABEL_26:
        v51 = MEMORY[0x1E69E7CC0];
      }

      *v42 = v51;

      goto LABEL_28;
    }

    if (v22 > *(*v42 + 24) >> 1)
    {
      goto LABEL_24;
    }

    sub_183F7DC7C(a16, a15, v97, v22);
LABEL_28:
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      if (v22)
      {
LABEL_32:
        v54 = sub_183F9BAB8(v22, 0);
        memcpy(v54 + 4, v96, 4 * v22);
      }

      else
      {
        v54 = MEMORY[0x1E69E7CC0];
      }

      *a5 = v54;

      goto LABEL_35;
    }

    if (v22 > *(*a5 + 24) >> 1)
    {
      goto LABEL_32;
    }

LABEL_30:
    result = sub_183F7DCA8(a16, a15, v96, v22);
LABEL_35:
    v55 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_67;
    }

    a19 = v55 - v49;
    if (__OFSUB__(v55, v49))
    {
      goto LABEL_68;
    }

    if (!a19)
    {
      return result;
    }

    v56 = v82 + v22;
    if (__OFADD__(v82, v22))
    {
      goto LABEL_70;
    }

    v57 = *a5;
    v58 = *(*a5 + 16);
    if (v58 < v56)
    {
      goto LABEL_71;
    }

    if (v58 == v56)
    {
      return result;
    }

    v59 = v58 - v56;
    if (v58 <= v56)
    {
      goto LABEL_76;
    }

    if (v56 < 0)
    {
      goto LABEL_77;
    }

    if (!v58)
    {
      goto LABEL_78;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = sub_183F9C14C(v57);
    }

    *a5 = v57;
    for (i = v22 + v82 + 8; ; ++i)
    {
      a9 = i - 8;
      if (i - 8 >= *(v57 + 2))
      {
        break;
      }

      a9 = *&v57[4 * i];
      v61 = a9 + a19;
      if (__OFADD__(a9, a19))
      {
        goto LABEL_56;
      }

      if ((v61 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      a9 = HIDWORD(v61);
      if (HIDWORD(v61))
      {
        goto LABEL_58;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v57;
      if ((result & 1) == 0)
      {
        result = sub_183F9C14C(v57);
        v57 = result;
        *a5 = result;
      }

      *&v57[4 * i] = v61;
      v57 = *a5;
      if (!--v59)
      {
        return result;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v62 = a9;
    v63 = a7;
    v81 = a6;
    a1 = swift_stdlib_isStackAllocationSafe();
    if ((a1 & 1) == 0)
    {
      v64 = v62;
      v88 = v63;
      v65 = swift_slowAlloc();
      sub_183FA7F34(v65, v98, i, v97, v93, a5, v81, v88, v64, v66, v94, v92, v91, v90 & 1, v95 & 1, a15, a16, v89, v82, a19, a20);
      return MEMORY[0x1865EFCB0](v65, -1, -1);
    }
  }

  v69 = v88;
  v81 = v68;
  v70 = swift_slowAlloc();
  sub_183FA907C(v70, i, v97, v93, v96, v98, a5, v81, v69, v94, v92, v91, v90 & 1, v95 & 1, a15, a16, v89, v82, a19);
  result = MEMORY[0x1865EFCB0](v70, -1, -1);
  if (v22)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_183FA7704(char *a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v92 = a4;
  v90 = a2;
  v91 = a1;
  v100[2] = *MEMORY[0x1E69E9840];
  if ((a3 & 0x8000000000000000) != 0)
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
  }

  v23 = a3;
  if (a3 >> 60)
  {
    goto LABEL_70;
  }

  v24 = v22;
  v89 = a5;
  v88 = a22;
  v87 = a21;
  v32 = a20;
  v78[0] = a19;
  v83 = a17;
  v84 = a16;
  v82 = a15;
  v85 = a14;
  v86 = a13;
  if ((8 * a3) >= 1025)
  {
    goto LABEL_59;
  }

  sub_183F70628(a20, v96);
  isStackAllocationSafe = sub_183F70628(a20, v96);
  while (1)
  {
    v80 = a18;
    v36 = MEMORY[0x1EEE9AC00](isStackAllocationSafe, v35);
    v39 = v78 - v38;
    v94 = 0;
    v95 = 0;
    v40 = a8 - a7;
    if (a8 < a7)
    {
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
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v78[1] = v37;
    v78[2] = v24;
    v81 = v78;
    v42 = a6 + 48;
    v41 = *(a6 + 48);
    v43 = *(a6 + 32);
    v79 = a6 + 32;
    v44 = *a6;
    v45 = *(a6 + 16);
    v46 = *(a6 + 40);
    a6 += 40;
    v100[0] = v41 + 8 * a7 + 32;
    v100[1] = v40;
    v96[0] = v44;
    v96[1] = v45;
    v97 = v43;
    v98 = v46;
    v99 = v41;
    MEMORY[0x1EEE9AC00](v36, v44);
    v78[-12] = v39;
    v78[-11] = v23;
    v68 = &v94;
    v69 = v86;
    v70 = v85 & 1;
    v71 = v100;
    v72 = v92;
    v73 = v89;
    v74 = &v95;
    v75 = v91;
    v76 = v90;
    v48 = v47;
    v77 = v47;
    sub_183F70628(v32, v93);
    swift_retain_n();

    v90 = v32;
    sub_183F99594(v96, sub_183FAB470, a9, a10, a11, a12, &v78[-14], v32, v87, v88);

    v49 = v94;
    if ((v94 & 0x8000000000000000) != 0)
    {
      goto LABEL_62;
    }

    v50 = v48;
    a8 = v84;
    v23 = v83;
    v51 = v82;
    if (v82)
    {
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        if (v49)
        {
LABEL_15:
          v53 = sub_183EA76E4(v49, 0);
          memcpy(v53 + 4, v39, 8 * v49);
        }

        else
        {
          v53 = MEMORY[0x1E69E7CC0];
        }

        a18 = v80;
        *v42 = v53;

        a7 = v95;
        v52 = v79;
        if ((v95 & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }

        goto LABEL_18;
      }

      if (v49 > *(*v42 + 24) >> 1)
      {
        goto LABEL_15;
      }
    }

    if (a8 < v50)
    {
      goto LABEL_66;
    }

    sub_183F7DC7C(v50, a8, v39, v49);
    a7 = v95;
    a18 = v80;
    v52 = v79;
    if ((v95 & 0x8000000000000000) != 0)
    {
      goto LABEL_63;
    }

    if ((v51 & 1) == 0)
    {
      sub_183F7DC7C(v23, v80, v92, v95);
LABEL_28:
      sub_183F7DCA8(v23, a18, v91, a7);
      goto LABEL_34;
    }

LABEL_18:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (a7 <= *(*v52 + 24) >> 1)
      {
        sub_183F7DC7C(v23, a18, v92, a7);
        goto LABEL_26;
      }
    }

    else if (!a7)
    {
      goto LABEL_24;
    }

    v54 = sub_183EA76E4(a7, 0);
    sub_183EA81DC(v54 + 4, a7, v92, a7);
    if (v55 != a7)
    {
      __break(1u);
LABEL_24:
      v54 = MEMORY[0x1E69E7CC0];
    }

    *v52 = v54;

LABEL_26:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (a7 <= *(*a6 + 24) >> 1)
      {
        goto LABEL_28;
      }
    }

    else if (!a7)
    {
      goto LABEL_32;
    }

    v56 = sub_183F9BAB8(a7, 0);
    sub_183F9C174(v56 + 4, a7, v91, a7);
    if (v57 != a7)
    {
      __break(1u);
LABEL_32:
      v56 = MEMORY[0x1E69E7CC0];
    }

    *a6 = v56;

LABEL_34:
    v58 = v50 + v49;
    if (__OFADD__(v50, v49))
    {
      goto LABEL_64;
    }

    v59 = v58 - a8;
    if (__OFSUB__(v58, a8))
    {
      goto LABEL_65;
    }

    if (!v59)
    {
      break;
    }

    v60 = v78[0] + a7;
    if (__OFADD__(v78[0], a7))
    {
      goto LABEL_67;
    }

    v61 = *a6;
    v62 = *(*a6 + 16);
    if (v62 < v60)
    {
      goto LABEL_68;
    }

    if (v62 == v60)
    {
      break;
    }

    v24 = v62 - v60;
    if (v62 <= v60)
    {
      goto LABEL_71;
    }

    if (v60 < 0)
    {
      goto LABEL_72;
    }

    if (!v62)
    {
      goto LABEL_73;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a6 = v61;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v61 = sub_183F9C14C(v61);
    }

    *a6 = v61;
    v32 = a7 + v78[0] + 8;
    while ((v32 - 8) < *(v61 + 2))
    {
      v65 = *&v61[4 * v32];
      a7 = v65 + v59;
      if (__OFADD__(v65, v59))
      {
        goto LABEL_56;
      }

      if ((a7 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      if (HIDWORD(a7))
      {
        goto LABEL_58;
      }

      v66 = swift_isUniquelyReferenced_nonNull_native();
      *a6 = v61;
      if ((v66 & 1) == 0)
      {
        v61 = sub_183F9C14C(v61);
        *a6 = v61;
      }

      *&v61[4 * v32] = a7;
      v61 = *a6;
      ++v32;
      if (!--v24)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    sub_183F70628(v32, v96);
    sub_183F70628(v32, v96);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v67 = swift_slowAlloc();
      sub_183F70628(v32, v96);
      sub_183FA8920(v67, a9, a10, a11, a12, v23, v92, v89, v91, v90, a6, a7, a8, v86, v85 & 1, v82 & 1, v84, v83, a18, v78[0], v32, v87, v88);
      MEMORY[0x1865EFCB0](v67, -1, -1);
      goto LABEL_41;
    }
  }

LABEL_40:
  v32 = v90;
  sub_183F81130(v90);
LABEL_41:
  sub_183F81130(v32);
  sub_183F81130(v32);
  return sub_183F81130(v32);
}

uint64_t sub_183FA7F34@<X0>(uint64_t isStackAllocationSafe@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>, void (*a11)(_OWORD *, uint64_t, uint64_t *), uint64_t a12, uint64_t a13, char a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v94 = isStackAllocationSafe;
  v95 = a4;
  v102[2] = *MEMORY[0x1E69E9840];
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
  }

  v22 = a3;
  if (a3 >> 60)
  {
    goto LABEL_68;
  }

  v23 = v21;
  v92 = a5;
  v83 = a19;
  v88 = a18;
  v87 = a17;
  v93 = a15;
  v27 = a14;
  v28 = a13;
  v90 = a12;
  v91 = a11;
  v89 = a16;
  if ((8 * a3) >= 1025)
  {
    goto LABEL_57;
  }

  do
  {
    v29 = MEMORY[0x1EEE9AC00](isStackAllocationSafe, a10);
    v33 = &v82 - v32;
    v100 = 0;
    v101 = 0;
    if (v30 < a7)
    {
      __break(1u);
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
      goto LABEL_67;
    }

    v84 = v31;
    v85 = v23;
    v86 = &v82;
    v35 = a6 + 48;
    v34 = *(a6 + 48);
    v23 = a6 + 32;
    v36 = *(a6 + 32);
    v37 = *a6;
    v38 = *(a6 + 16);
    v39 = *(a6 + 40);
    a6 += 40;
    v102[0] = v34 + 8 * a7 + 32;
    v102[1] = v30 - a7;
    v96[0] = v37;
    v96[1] = v38;
    v97 = v36;
    v98 = v39;
    v99 = v34;
    MEMORY[0x1EEE9AC00](v29, v37);
    *(&v82 - 12) = v33;
    *(&v82 - 11) = v22;
    v72 = &v100;
    v73 = v40;
    LOBYTE(v74) = v41 & 1;
    v75 = v102;
    v76 = v95;
    v77 = v92;
    v78 = &v101;
    v79 = v94;
    v80 = v42;
    v22 = v43;
    v81 = v43;
    swift_retain_n();

    v91(v96, a21, &v82 - 14);

    v44 = v100;
    if ((v100 & 0x8000000000000000) != 0)
    {
      goto LABEL_60;
    }

    v45 = v89;
    if (v93)
    {
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        if (v44)
        {
LABEL_14:
          v48 = sub_183EA76E4(v44, 0);
          memcpy(v48 + 4, v33, 8 * v44);
        }

        else
        {
          v48 = MEMORY[0x1E69E7CC0];
        }

        v46 = v88;
        v47 = v87;
        *v35 = v48;

        a2 = v101;
        if ((v101 & 0x8000000000000000) != 0)
        {
          goto LABEL_61;
        }

        goto LABEL_17;
      }

      if (v44 > *(*v35 + 24) >> 1)
      {
        goto LABEL_14;
      }
    }

    if (v45 < v22)
    {
      goto LABEL_64;
    }

    sub_183F7DC7C(v22, v45, v33, v44);
    a2 = v101;
    v46 = v88;
    v47 = v87;
    if ((v101 & 0x8000000000000000) != 0)
    {
      goto LABEL_61;
    }

    if ((v93 & 1) == 0)
    {
      sub_183F7DC7C(v87, v88, v95, v101);
LABEL_27:
      result = sub_183F7DCA8(v47, v46, v94, a2);
      goto LABEL_33;
    }

LABEL_17:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (a2 <= *(*v23 + 24) >> 1)
      {
        sub_183F7DC7C(v47, v46, v95, a2);
        goto LABEL_25;
      }
    }

    else if (!a2)
    {
      goto LABEL_23;
    }

    v49 = sub_183EA76E4(a2, 0);
    sub_183EA81DC(v49 + 4, a2, v95, a2);
    if (v50 != a2)
    {
      __break(1u);
LABEL_23:
      v49 = MEMORY[0x1E69E7CC0];
    }

    *v23 = v49;

LABEL_25:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (a2 <= *(*a6 + 24) >> 1)
      {
        goto LABEL_27;
      }
    }

    else if (!a2)
    {
      goto LABEL_31;
    }

    v52 = sub_183F9BAB8(a2, 0);
    sub_183F9C174(v52 + 4, a2, v94, a2);
    if (v53 != a2)
    {
      __break(1u);
LABEL_31:
      v52 = MEMORY[0x1E69E7CC0];
    }

    *a6 = v52;

LABEL_33:
    v54 = v22 + v44;
    if (__OFADD__(v22, v44))
    {
      goto LABEL_62;
    }

    a7 = v54 - v45;
    if (__OFSUB__(v54, v45))
    {
      goto LABEL_63;
    }

    if (!a7)
    {
      return result;
    }

    v55 = v83 + a2;
    if (__OFADD__(v83, a2))
    {
      goto LABEL_65;
    }

    v56 = *a6;
    v57 = *(*a6 + 16);
    if (v57 < v55)
    {
      goto LABEL_66;
    }

    if (v57 == v55)
    {
      return result;
    }

    v58 = v57 - v55;
    if (v57 <= v55)
    {
      goto LABEL_69;
    }

    if (v55 < 0)
    {
      goto LABEL_70;
    }

    if (!v57)
    {
      goto LABEL_71;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a6 = v56;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v56 = sub_183F9C14C(v56);
    }

    *a6 = v56;
    for (i = a2 + v83 + 8; ; ++i)
    {
      a9 = i - 8;
      if ((i - 8) >= *(v56 + 2))
      {
        break;
      }

      a9 = *&v56[4 * i];
      v61 = a9 + a7;
      if (__OFADD__(a9, a7))
      {
        goto LABEL_54;
      }

      if ((v61 & 0x8000000000000000) != 0)
      {
        goto LABEL_55;
      }

      a9 = HIDWORD(v61);
      if (HIDWORD(v61))
      {
        goto LABEL_56;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      *a6 = v56;
      if ((result & 1) == 0)
      {
        result = sub_183F9C14C(v56);
        v56 = result;
        *a6 = result;
      }

      *&v56[4 * i] = v61;
      v56 = *a6;
      if (!--v58)
      {
        return result;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v86 = a9;
    v62 = a8;
    v63 = v28;
    v64 = v27;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    v65 = v64;
    v66 = v89;
  }

  while ((isStackAllocationSafe & 1) != 0);
  v85 = v62;
  v67 = v63;
  v68 = v65;
  v69 = swift_slowAlloc();
  v70 = v66;
  v71 = v69;
  sub_183FA907C(v69, v22, v95, v92, v94, a2, a6, a7, v85, v91, v90, v67, v68 & 1, v93 & 1, v70, v87, v88, v83, a20);
  return MEMORY[0x1865EFCB0](v71, -1, -1);
}

uint64_t sub_183FA8920(uint64_t result, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v77 = result;
  v85 = 0;
  v84 = 0;
  if (a13 < a12)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v75 = &v70;
  v74 = a23;
  v28 = a11 + 48;
  v27 = *(a11 + 48);
  v29 = a11 + 32;
  v30 = *(a11 + 32);
  v31 = *a11;
  v32 = *(a11 + 16);
  v33 = (a11 + 40);
  v34 = *(a11 + 40);
  v83[0] = v27 + 8 * a12 + 32;
  v83[1] = a13 - a12;
  v79[0] = v31;
  v79[1] = v32;
  v80 = v30;
  v81 = v34;
  v82 = v27;
  MEMORY[0x1EEE9AC00](result, v31);
  v61[2] = v77;
  v61[3] = v35;
  v61[4] = &v84;
  v61[5] = v36;
  v62 = v37 & 1;
  v63 = v83;
  v64 = v38;
  v72 = v38;
  v65 = v39;
  v66 = &v85;
  v71 = v40;
  v67 = v40;
  v68 = v41;
  v76 = v42;
  v69 = v42;

  sub_183F70628(a21, v78);

  v73 = a21;
  sub_183F99594(v79, sub_183FAB470, a2, a3, a4, a5, v61, a21, a22, v74);

  v43 = v84;
  if ((v84 & 0x8000000000000000) != 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (a16)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v43 <= *(*v28 + 24) >> 1)
      {
        goto LABEL_6;
      }
    }

    else if (!v43)
    {
      goto LABEL_13;
    }

    v45 = sub_183EA76E4(v43, 0);
    sub_183EA81DC(v45 + 4, v43, v77, v43);
    if (v46 == v43)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    v45 = MEMORY[0x1E69E7CC0];
LABEL_14:
    *v28 = v45;

    v44 = v85;
    if ((v85 & 0x8000000000000000) != 0)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    goto LABEL_15;
  }

LABEL_6:
  result = v76;
  if (a17 < v76)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  result = sub_183F7DC7C(v76, a17, v77, v43);
  v44 = v85;
  if ((v85 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

  if ((a16 & 1) == 0)
  {
    sub_183F7DC7C(a18, a19, v72, v85);
LABEL_25:
    result = sub_183F7DCA8(a18, a19, v71, v44);
    goto LABEL_31;
  }

LABEL_15:
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v44 <= *(*v29 + 24) >> 1)
    {
      sub_183F7DC7C(a18, a19, v72, v44);
      goto LABEL_23;
    }
  }

  else if (!v44)
  {
LABEL_21:
    v47 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v47 = sub_183EA76E4(v44, 0);
  sub_183EA81DC(v47 + 4, v44, v72, v44);
  if (v48 != v44)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  *v29 = v47;

LABEL_23:
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v44 <= *(*v33 + 24) >> 1)
    {
      goto LABEL_25;
    }
  }

  else if (!v44)
  {
LABEL_29:
    v49 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v49 = sub_183F9BAB8(v44, 0);
  sub_183F9C174(v49 + 4, v44, v71, v44);
  if (v50 != v44)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_30:
  *v33 = v49;

LABEL_31:
  v51 = v76 + v43;
  if (__OFADD__(v76, v43))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v52 = v51 - a17;
  if (__OFSUB__(v51, a17))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (!v52)
  {
LABEL_37:
    v56 = v73;
    sub_183F81130(v73);
    return sub_183F81130(v56);
  }

  v53 = a20 + v44;
  if (__OFADD__(a20, v44))
  {
    goto LABEL_61;
  }

  v54 = *v33;
  v55 = *(*v33 + 16);
  if (v55 < v53)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v55 == v53)
  {
    goto LABEL_37;
  }

  v57 = v55 - v53;
  if (v55 <= v53)
  {
    goto LABEL_63;
  }

  if (v53 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v55)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    *v33 = v54;
    if ((result & 1) == 0)
    {
      result = sub_183F9C14C(v54);
      v54 = result;
    }

    *v33 = v54;
    v58 = v44 + a20 + 8;
    while ((v58 - 8) < *(v54 + 16))
    {
      v59 = *(v54 + 4 * v58);
      v60 = v59 + v52;
      if (__OFADD__(v59, v52))
      {
        goto LABEL_52;
      }

      if ((v60 & 0x8000000000000000) != 0)
      {
        goto LABEL_53;
      }

      if (HIDWORD(v60))
      {
        goto LABEL_54;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      *v33 = v54;
      if ((result & 1) == 0)
      {
        result = sub_183F9C14C(v54);
        v54 = result;
        *v33 = result;
      }

      *(v54 + 4 * v58) = v60;
      v54 = *v33;
      ++v58;
      if (!--v57)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_183FA907C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(_OWORD *, uint64_t, void *), uint64_t a11, uint64_t a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v76 = 0;
  v75 = 0;
  if (a9 < a8)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v67 = v19;
  v68 = &v64;
  v20 = a7 + 48;
  v21 = *(a7 + 48);
  v22 = a7 + 32;
  v23 = *(a7 + 32);
  v24 = *a7;
  v25 = *(a7 + 16);
  v26 = (a7 + 40);
  v27 = *(a7 + 40);
  v74[0] = v21 + 8 * a8 + 32;
  v74[1] = a9 - a8;
  v70[0] = v24;
  v70[1] = v25;
  v71 = v23;
  v72 = v27;
  v73 = v21;
  v28 = MEMORY[0x1EEE9AC00](result, v24);
  v65 = v29;
  v66 = v28;
  v55[2] = v28;
  v55[3] = v30;
  v55[4] = &v75;
  v55[5] = v31;
  v56 = v32 & 1;
  v57 = v74;
  v58 = v29;
  v59 = v33;
  v60 = &v76;
  v64 = v34;
  v61 = v34;
  v62 = v35;
  v69 = v36;
  v63 = v36;
  swift_retain_n();

  a10(v70, a19, v55);

  v37 = v75;
  if ((v75 & 0x8000000000000000) != 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v68 = a17;
  if (a14)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v37 <= *(*v20 + 24) >> 1)
      {
        goto LABEL_6;
      }
    }

    else if (!v37)
    {
      goto LABEL_13;
    }

    v40 = sub_183EA76E4(v37, 0);
    sub_183EA81DC(v40 + 4, v37, v66, v37);
    if (v41 == v37)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    v40 = MEMORY[0x1E69E7CC0];
LABEL_14:
    *v20 = v40;

    v38 = v76;
    if ((v76 & 0x8000000000000000) != 0)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    goto LABEL_15;
  }

LABEL_6:
  result = v69;
  if (a15 < v69)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  result = sub_183F7DC7C(v69, a15, v66, v37);
  v38 = v76;
  if ((v76 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

  if ((a14 & 1) == 0)
  {
    v39 = v68;
    sub_183F7DC7C(a16, v68, v65, v76);
LABEL_25:
    result = sub_183F7DCA8(a16, v39, v64, v38);
    goto LABEL_31;
  }

LABEL_15:
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v38 <= *(*v22 + 24) >> 1)
    {
      v39 = v68;
      sub_183F7DC7C(a16, v68, v65, v38);
      goto LABEL_23;
    }
  }

  else if (!v38)
  {
LABEL_21:
    v42 = MEMORY[0x1E69E7CC0];
    v39 = v68;
    goto LABEL_22;
  }

  v42 = sub_183EA76E4(v38, 0);
  sub_183EA81DC(v42 + 4, v38, v65, v38);
  v39 = v68;
  if (v43 != v38)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  *v22 = v42;

LABEL_23:
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v38 <= *(*v26 + 24) >> 1)
    {
      goto LABEL_25;
    }
  }

  else if (!v38)
  {
LABEL_29:
    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v44 = sub_183F9BAB8(v38, 0);
  sub_183F9C174(v44 + 4, v38, v64, v38);
  if (v45 != v38)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_30:
  *v26 = v44;

LABEL_31:
  v46 = v69 + v37;
  if (__OFADD__(v69, v37))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v47 = v46 - a15;
  if (__OFSUB__(v46, a15))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (!v47)
  {
    return result;
  }

  v48 = a18 + v38;
  if (__OFADD__(a18, v38))
  {
    goto LABEL_61;
  }

  v49 = *v26;
  v50 = *(*v26 + 16);
  if (v50 < v48)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v50 != v48)
  {
    v51 = v50 - v48;
    if (v50 <= v48)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v48 < 0)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (!v50)
    {
LABEL_65:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    *v26 = v49;
    if ((result & 1) == 0)
    {
      result = sub_183F9C14C(v49);
      v49 = result;
    }

    *v26 = v49;
    for (i = v38 + a18 + 8; (i - 8) < *(v49 + 16); ++i)
    {
      v53 = *(v49 + 4 * i);
      v54 = v53 + v47;
      if (__OFADD__(v53, v47))
      {
        goto LABEL_52;
      }

      if ((v54 & 0x8000000000000000) != 0)
      {
        goto LABEL_53;
      }

      if (HIDWORD(v54))
      {
        goto LABEL_54;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      *v26 = v49;
      if ((result & 1) == 0)
      {
        result = sub_183F9C14C(v49);
        v49 = result;
        *v26 = result;
      }

      *(v49 + 4 * i) = v54;
      v49 = *v26;
      if (!--v51)
      {
        return result;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  return result;
}

int64_t sub_183FA94C4(CGPDFArray *a1)
{
  Count = CGPDFArrayGetCount(a1);
  result = CGPDFArrayGetCount(a1);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = CGPDFArrayGetCount(a1);
    if ((Count & 0x8000000000000000) == 0 && result >= Count)
    {
      if (Count)
      {
        v4 = sub_183F9BB3C(Count, 0);
        if (sub_183FA9AF4(&v5, (v4 + 4), Count, a1) == Count)
        {
          return v4;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_183FA9564(void *a1)
{
  v2 = (~*a1 & 0x7FF0000000000000) != 0 || (*a1 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v2 && !*(a1[4] + 16))
  {
    v5 = 1;
  }

  else
  {
    v3 = *(a1[6] + 16);
    if (v3 <= 1)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v5 = v3 >> 1;
  }

  v6 = sub_183F9BBE0(v5, 0);
  v7 = sub_183FA9BD0(v9, (v6 + 4), v5);
  sub_183F70628(a1, &v8);
  result = sub_183F814B4(v9, &qword_1EA8546A0);
  if (v7 == v5)
  {
    return v6;
  }

  __break(1u);
  return result;
}

void *sub_183FA9640(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = sub_183F9BD08(a1[2], 0);
  v8 = sub_183FA9F90(&v10, v7 + 4, v3, a1, a2, a3);

  if (v8 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t sub_183FA970C(uint64_t result, double *a2, uint64_t a3)
{
  v5 = *v3;
  v4 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  v8 = *(v3 + 32);
  v9 = *(v3 + 5);
  v10 = *(v3 + 48);
  LOBYTE(v11) = *(v3 + 49);
  v12 = *(v3 + 50);
  if (!a2)
  {
    goto LABEL_42;
  }

  if (!a3)
  {
    v13 = 0;
    v14 = 0;
LABEL_46:
    *result = v5;
    *(result + 8) = v4;
    *(result + 16) = v7;
    *(result + 24) = v6;
    goto LABEL_47;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 1;
  v19 = *(v3 + 49);
  while (1)
  {
    if (v17 != v4)
    {
      v9 = *(*&v5 + 8 * v17);
      if (v16 == v6)
      {
        v13 = v17 + 1;
        v20 = 1;
        v16 = v6;
      }

      else
      {
        v21 = *(v7 + 8 * v16);
        if (v9 >= v21)
        {
          if (v21 < v9)
          {
            v14 = v16 + 1;
            v20 = 2;
            v9 = *(v7 + 8 * v16++);
            goto LABEL_16;
          }

          v13 = v17 + 1;
          v14 = v16 + 1;
          v20 = 3;
          ++v16;
        }

        else
        {
          v13 = v17 + 1;
          v20 = 1;
        }
      }

      v17 = v13;
      goto LABEL_16;
    }

    if (v16 == v6)
    {
      goto LABEL_44;
    }

    v9 = *(v7 + 8 * v16);
    v14 = v16 + 1;
    v20 = 2;
    ++v16;
    v17 = v4;
LABEL_16:
    v22 = v20 ^ v10;
    if (v10 > 7 || v22 >= 9)
    {
      break;
    }

    v23 = v8 >> v22;
    v11 = (v8 >> v22) & 1;
    if (((v19 ^ (v8 >> v22)) & 1) == 0)
    {
      goto LABEL_22;
    }

    v10 = v22;
    v19 = v8 >> v22;
LABEL_38:
    *a2 = v9;
    if (v18 == a3)
    {
      v12 = 1;
      goto LABEL_46;
    }

    ++a2;
    v12 = 1;
    v15 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
LABEL_42:
      a3 = 0;
      *result = v5;
      *(result + 8) = v4;
      *(result + 16) = v7;
      *(result + 24) = v6;
      *(result + 32) = 0;
      *(result + 40) = 0;
      goto LABEL_48;
    }
  }

  LOBYTE(v11) = 0;
  v23 = 0;
  if (v19)
  {
    v10 = v22;
    v19 = 0;
    goto LABEL_38;
  }

LABEL_22:
  v24 = v11;
  while (2)
  {
    v25 = v23;
    if (v17 != v4)
    {
      v9 = *(*&v5 + 8 * v17);
      if (v16 == v6)
      {
        v13 = v17 + 1;
        v26 = 1;
        v16 = v6;
      }

      else
      {
        v27 = *(v7 + 8 * v16);
        if (v9 >= v27)
        {
          if (v27 < v9)
          {
            v14 = v16 + 1;
            v26 = 2;
            v9 = *(v7 + 8 * v16++);
            goto LABEL_35;
          }

          v13 = v17 + 1;
          v14 = v16 + 1;
          v26 = 3;
          ++v16;
        }

        else
        {
          v13 = v17 + 1;
          v26 = 1;
        }
      }

      v17 = v13;
      goto LABEL_35;
    }

    if (v16 != v6)
    {
      v9 = *(v7 + 8 * v16);
      v14 = v16 + 1;
      v26 = 2;
      ++v16;
      v17 = v4;
LABEL_35:
      v10 = v26 ^ v22;
      if (v22 > 7 || v10 >= 9)
      {
        v24 = 0;
        v23 = 0;
        LOBYTE(v11) = 0;
        v19 = 0;
        v22 = v10;
        if (v25)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v23 = v8 >> v10;
        v24 = (v8 >> v10) & 1;
        v22 = v10;
        LOBYTE(v11) = v24;
        v19 = v8 >> v10;
        if ((v25 ^ (v8 >> v10)))
        {
          goto LABEL_38;
        }
      }

      continue;
    }

    break;
  }

  v12 = 0;
  LOBYTE(v10) = v22;
  LOBYTE(v11) = v24;
LABEL_44:
  *result = v5;
  *(result + 8) = v4;
  *(result + 16) = v7;
  *(result + 24) = v6;
  a3 = v15;
LABEL_47:
  *(result + 32) = v13;
  *(result + 40) = v14;
LABEL_48:
  *(result + 48) = v8;
  *(result + 56) = v9;
  *(result + 64) = v10;
  *(result + 65) = v11;
  *(result + 66) = v12;
  return a3;
}

uint64_t sub_183FA99A4(uint64_t result, void *a2, uint64_t a3)
{
  v4 = v3[6];
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
LABEL_6:
    v7 = *(v3 + 1);
    *result = *v3;
    *(result + 16) = v7;
    v8 = *(v3 + 3);
    *(result + 32) = *(v3 + 2);
    *(result + 48) = v8;
    *(result + 64) = v4;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_48;
  }

  v5 = v3[7];
  v6 = v5 - v4;
  if (v5 == v4)
  {
LABEL_5:
    a3 = 0;
    goto LABEL_6;
  }

  v10 = v3[4];
  v9 = v3[5];
  v12 = v3[2];
  v11 = v3[3];
  v13 = *v3;
  v14 = v10 - v4;
  v15 = __OFSUB__(v10, v4);
  v16 = v14 & 1;
  if (v14 < 0)
  {
    v16 = -v16;
  }

  v17 = 1;
  v18 = 1 - v16;
  v19 = v10 + v18;
  v20 = __OFADD__(v10, v18);
  v21 = v9 - v4;
  v22 = __OFSUB__(v9, v4);
  if (v21 >= 0)
  {
    v23 = v21 & 1;
  }

  else
  {
    v23 = -(v21 & 1);
  }

  v24 = 1 - v23;
  v25 = __OFADD__(v19, v24);
  while (1)
  {
    v26 = v4;
    if (v4 < v10)
    {
      goto LABEL_25;
    }

    if (v15)
    {
      goto LABEL_44;
    }

    if (v20)
    {
      goto LABEL_45;
    }

    v27 = v12;
    if (v4 >= v19)
    {
      if (v22)
      {
        goto LABEL_46;
      }

      if (v25)
      {
        goto LABEL_47;
      }

      v27 = v11;
      if (v4 >= v19 + v24)
      {
        v28 = v9 + v4;
        if (__OFADD__(v9, v4))
        {
          goto LABEL_49;
        }

        v29 = __OFSUB__(v28, v18);
        v30 = v28 - v18;
        if (v29)
        {
          goto LABEL_50;
        }

        v29 = __OFSUB__(v30, v24);
        v31 = v30 - v24;
        if (v29)
        {
          goto LABEL_51;
        }

        v29 = __OFSUB__(v31, v10);
        v26 = v31 - v10;
        if (v29)
        {
          __break(1u);
LABEL_42:
          v4 = v5;
          a3 = v6;
          goto LABEL_6;
        }

LABEL_25:
        v27 = *(v13 + 8 * v26);
      }
    }

    ++v4;
    *a2 = v27;
    if (a3 == v17)
    {
      goto LABEL_6;
    }

    if (__OFADD__(v17, 1))
    {
      break;
    }

    ++a2;
    ++v17;
    if (v5 == v4)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

void *sub_183FA9AF4(void *result, uint64_t a2, uint64_t a3, CGPDFArrayRef array)
{
  v5 = result;
  if (!a2)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_13;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_13:
    *v5 = array;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    v8 = 1;
    while (1)
    {
      if (v8 - 1 == CGPDFArrayGetCount(array))
      {
        v6 = v8 - 1;
        goto LABEL_13;
      }

      CGPDFArrayRef.subscript.getter(v8 - 1, array, &v12);
      result = CGPDFArrayGetCount(array);
      if (v8 - 1 >= result)
      {
        break;
      }

      v9 = v13;
      v15 = v12;
      v16 = v13;
      v10 = v14;
      v17 = v14;
      *v7 = v12;
      *(v7 + 16) = v9;
      *(v7 + 32) = v10;
      if (v6 == v8)
      {
        goto LABEL_13;
      }

      v7 += 40;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_183FA9BD0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v6 = 0;
    v24 = *(v3 + 1);
    *result = *v3;
    *(result + 16) = v24;
    *(result + 32) = *(v3 + 2);
    v25 = v3[6];
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 48) = v25;
    return v6;
  }

  if (!a3)
  {
    v4 = 0;
    v5 = 0;
LABEL_32:
    v26 = *(v3 + 1);
    *result = *v3;
    *(result + 16) = v26;
    *(result + 32) = *(v3 + 2);
    *(result + 48) = v3[6];
    *(result + 56) = v5;
    *(result + 64) = v4;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_44;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 1);
  v11 = v3[5];
  v10 = v3[6];
  v12 = (~*v3 & 0x7FF0000000000000) != 0;
  if ((*v3 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v12 = 1;
  }

  v13 = v3[4];
  v14 = v10 + 32;
  while (1)
  {
    if (v12 && !*(v13 + 16))
    {
      if (v4 == 2)
      {
LABEL_33:
        v27 = *(v3 + 1);
        *result = *v3;
        *(result + 16) = v27;
        *(result + 32) = *(v3 + 2);
        *(result + 48) = v3[6];
        *(result + 56) = v5;
        *(result + 64) = v4;
        return v6;
      }

      if (v4 | v5)
      {
        goto LABEL_43;
      }

      v18 = 1;
      v19 = v7;
      v20 = v8;
      v21 = v9;
      if (v6 == 0x3FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v16 = *(v10 + 16);
      if (v4 == v16)
      {
        goto LABEL_33;
      }

      if (v4 >= v16)
      {
        goto LABEL_37;
      }

      if ((v4 | 1uLL) >= v16)
      {
        goto LABEL_38;
      }

      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }

      v17 = *(v13 + 16);
      if (v5 >= v17)
      {
        goto LABEL_40;
      }

      if (v5 + 1 >= v17)
      {
        goto LABEL_41;
      }

      v18 = 0;
      v19 = *(v14 + 8 * v4);
      v20 = *(v14 + 8 * (v4 | 1));
      v21 = *(v13 + 32 + 8 * v5);
      if (v6 == 0x3FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_36;
      }
    }

    v4 += 2;
    if ((v12 & v18) != 1)
    {
      break;
    }

    v15 = __OFADD__(v5, 2);
    v5 += 2;
    if (v15)
    {
      goto LABEL_42;
    }

LABEL_8:
    ++v6;
    *a2 = v19;
    *(a2 + 8) = v20;
    *(a2 + 16) = v21;
    a2 += 32;
    if (v6 == a3)
    {
      goto LABEL_32;
    }
  }

  v22 = *(v11 + 16);
  if (v5 >= v22)
  {
    goto LABEL_8;
  }

  v23 = v5;
  while ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 < *(v11 + 32 + 4 * v23))
    {
      v5 = v23;
      goto LABEL_8;
    }

    if (v22 == ++v23)
    {
      v5 = *(v11 + 16);
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_183FA9DC8(uint64_t result, void *a2, uint64_t a3, void *a4, unsigned __int8 a5)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_27;
  }

  if (!a3)
  {
LABEL_27:
    *result = a4;
    *(result + 8) = a5 & 1;
    *(result + 16) = a3;
    return a3;
  }

  if (a3 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v5 = a4[3];
  v6 = v5 - 1;
  if (!__OFSUB__(v5, 1))
  {
    if (v5 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = a4[3];
    }

    if (v5 != 1)
    {
      v8 = 0;
      v9 = a4 + 5;
      v10 = v7 - 1;
      v11 = v5 & ~(v5 >> 63);
      while (v11 != v8)
      {
        v12 = a4[4];
        v13 = a4[2];
        if (v8 + v12 >= v13)
        {
          v14 = a4[2];
        }

        else
        {
          v14 = 0;
        }

        if (v10 == v8)
        {
          goto LABEL_29;
        }

        if ((v6 & ~(v6 >> 63)) == v8)
        {
          goto LABEL_30;
        }

        v15 = v9[v8 + v12 - v14];
        if (v8 + v12 + 1 < v13)
        {
          v13 = 0;
        }

        if ((v8 ^ a5))
        {
          v16 = v9[v8 + 1 + v12 - v13];
        }

        else
        {
          v16 = v9[v8 + v12 - v14];
        }

        if (((v8 ^ a5) & 1) == 0)
        {
          v15 = v9[v8 + 1 + v12 - v13];
        }

        *a2 = v15;
        a2[1] = v16;
        if (a3 - 1 == v8)
        {
          goto LABEL_27;
        }

        a2 += 2;
        if (v6 == ++v8)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_25:
    a3 = v6;
    goto LABEL_27;
  }

LABEL_32:
  __break(1u);
  return result;
}

void *sub_183FA9EC0(void *result, void *a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  if (!a2)
  {
    goto LABEL_8;
  }

  if (!a3)
  {
    v6 = 0;
    goto LABEL_19;
  }

  if (a3 < 0)
  {
    goto LABEL_22;
  }

  if (!a5)
  {
LABEL_8:
    v6 = 0;
    a3 = 0;
    goto LABEL_19;
  }

  if (a5 >= 1)
  {
    v5 = *a4;
    *a2 = 0;
    a2[1] = v5;
    if (a3 == 1)
    {
      v6 = 1;
LABEL_19:
      *result = a4;
      result[1] = a5;
      result[2] = v6;
      return a3;
    }

    if (a5 == 1)
    {
      v6 = 1;
      a3 = 1;
      goto LABEL_19;
    }

    v7 = 0;
    v8 = a4;
    while (v7 + 1 < a5)
    {
      *&v9 = *v8;
      *(&v9 + 1) = HIDWORD(*v8);
      *&a2[2 * v7 + 2] = v9;
      if (a3 - 2 == v7)
      {
        v6 = a3;
        goto LABEL_19;
      }

      if (__OFADD__(v7 + 2, 1))
      {
        goto LABEL_21;
      }

      ++v7;
      v8 = (v8 + 4);
      if (a5 - 1 == v7)
      {
        v6 = a5;
        a3 = a5;
        goto LABEL_19;
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_183FA9F90(uint64_t result, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
    v10 = 0;
    goto LABEL_27;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_27:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v10;
    return v10;
  }

  if (a3 < 0)
  {
    goto LABEL_33;
  }

  if (!a4[2])
  {
    v10 = 0;
    goto LABEL_27;
  }

  v23 = a4[2];
  if (*(a5 + 16))
  {
    v11 = *(a5 + 32);
    if (v23 == 1)
    {
      v12 = 0x7FF8000000000000;
    }

    else
    {
      v12 = a4[5];
    }

    if (*(a6 + 16) >= v11)
    {
      *a2 = a4[4];
      a2[1] = v12;
      a2[2] = a6;
      a2[3] = a6 + 32;
      a2[4] = 0;
      a2[5] = (2 * v11) | 1;
      v24 = a3 - 1;
      if (a3 == 1)
      {
LABEL_25:
      }

      else
      {
        v13 = 0;
        v14 = a2 + 11;
        v15 = a4 + 6;
        v16 = (a5 + 36);
        while (1)
        {

          if (v23 - 1 == v13)
          {
            break;
          }

          v17 = *(a5 + 16);
          if (v13 + 1 > v17)
          {
            goto LABEL_30;
          }

          if (v13 + 1 >= v17)
          {
            goto LABEL_28;
          }

          v18 = a4[2];
          if (v13 + 1 >= v18)
          {
            goto LABEL_31;
          }

          v19 = *(v16 - 1);
          v20 = *v16;
          if (v13 + 2 == v18)
          {
            v21 = 0x7FF8000000000000;
          }

          else
          {
            if (v13 + 2 >= v18)
            {
              goto LABEL_32;
            }

            v21 = *v15;
          }

          v22 = *(a6 + 16);
          if (v22 < v19 || v22 < v20)
          {
            goto LABEL_29;
          }

          *(v14 - 5) = *(v15 - 1);
          *(v14 - 4) = v21;
          *(v14 - 3) = a6;
          *(v14 - 2) = a6 + 32;
          ++v13;
          *(v14 - 1) = v19;
          *v14 = (2 * v20) | 1;
          v14 += 6;
          ++v15;
          ++v16;
          if (v24 == v13)
          {
            goto LABEL_25;
          }
        }

        v10 = v23;
      }

      goto LABEL_27;
    }
  }

  else
  {
LABEL_28:
    __break(1u);
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_183FAA154(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = v3[1];
  v51 = *v3;
  v52 = v5;
  v6 = v3[3];
  v53 = v3[2];
  v7 = *(v3 + 12);
  v8 = *(v3 + 13);
  v54 = v6;
  v55 = v3[4];
  v9 = v51;
  v10 = v52;
  v11 = v53;
  v48 = v51;
  v49 = v52;
  v50 = v53;

  v12 = sub_183F807CC(v51, *(&v51 + 1));
  v14 = sub_183F7DDD8(v12, v13);
  v16 = v15;
  v28 = v18;
  v29 = v17;
  sub_183F814B4(&v51, &qword_1EA854280);
  v56 = v16 & 1;
  v35 = v9;
  v36 = v10;
  *&v37 = v11;
  *(&v37 + 1) = v14;
  LOBYTE(v38) = v16 & 1;
  *(&v38 + 1) = v29;
  *&v39 = v28;
  *(&v39 + 1) = *(&v53 + 1);
  v40 = v54;
  v41 = v55;
  v42 = v4[5];
  *&v43 = v7;
  *(&v43 + 1) = v8;
  if (!a2)
  {
LABEL_10:
    result = 0;
    goto LABEL_12;
  }

  result = a3;
  if (!a3)
  {
LABEL_12:
    v21 = a1;
LABEL_13:
    v22 = v42;
    v21[6] = v41;
    v21[7] = v22;
    v21[8] = v43;
    v23 = v38;
    v21[2] = v37;
    v21[3] = v23;
    v24 = v40;
    v21[4] = v39;
    v21[5] = v24;
    v25 = v36;
    *v21 = v35;
    v21[1] = v25;
    return result;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    while (1)
    {
      sub_183F80564(&v44);
      if (v47)
      {
        result = v20;
        goto LABEL_12;
      }

      v32 = v44;
      v33 = v45;
      v34 = v46;
      v7(&v31, &v32);
      *(a2 + 8 * v20) = v31;
      if (a3 - 1 == v20)
      {
        break;
      }

      if (__OFADD__(++v20, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v21 = a1;
    result = a3;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_183FAA358(uint64_t result, void *a2, uint64_t a3)
{
  v4 = *&v3;
  v5 = *&result;
  v6 = v3[1];
  v45 = *v3;
  v46 = v6;
  v8 = *(v3 + 4);
  v7 = *(v3 + 5);
  v33 = *(v3 + 6);
  v34 = *(v3 + 7);
  v47[0] = v45;
  v47[1] = v6;
  v9 = v6;
  v10 = v45;
  v11 = *(&v45 + 1) == 0;
  v29 = a3;
  v35 = v8;
  v36 = v7;
  if (!*(&v45 + 1))
  {
    v13 = 0;
    v12 = 0.0;
    goto LABEL_10;
  }

  v30 = a2;
  sub_183FAAD6C(v47, v37);

  v41 = *v10;
  (v9)(&v42, &v41);
  v41 = v42;
  v8(v37, &v41);
  v12 = v37[0];
  if (*(&v10 + 1) == 1)
  {
LABEL_6:
    sub_183F814B4(v47, &qword_1EA8546E8);
    *&result = COERCE_DOUBLE();
    v13 = *(&v10 + 1);
    a3 = v29;
    a2 = v30;
    if ((*(&v10 + 1) & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v13 = 1;
  while (1)
  {
    v41 = *(v10 + 8 * v13);
    (v9)(&v42, &v41);
    v41 = v42;
    v35(v37, &v41);
    if (v37[0] != v12)
    {
      break;
    }

    if (*(&v10 + 1) == ++v13)
    {
      goto LABEL_6;
    }
  }

  sub_183F814B4(v47, &qword_1EA8546E8);
  *&result = COERCE_DOUBLE();
  a3 = v29;
  a2 = v30;
  if (v13 < 0)
  {
    goto LABEL_40;
  }

LABEL_10:
  v15 = *(v3 + 8);
  v14 = *(v3 + 9);
  v44 = *(&v10 + 1) == 0;
  if (!a2)
  {
LABEL_32:
    a3 = 0;
    v21 = *(*&v4 + 16);
    v22 = v44;
    **&v5 = **&v4;
    *(*&v5 + 16) = v21;
    *(*&v5 + 32) = v35;
    *(*&v5 + 40) = v36;
    *(*&v5 + 48) = v12;
    *(*&v5 + 56) = v22;
    *(*&v5 + 64) = 0;
LABEL_36:
    *(*&v5 + 72) = v13;
    *(*&v5 + 80) = v33;
    *(*&v5 + 88) = v34;
    *(*&v5 + 96) = v15;
    *(*&v5 + 104) = v14;
    return a3;
  }

  if (!a3)
  {
    v4 = 0.0;
LABEL_35:
    v24 = v44;
    v25 = v46;
    **&v5 = v45;
    *(*&v5 + 16) = v25;
    *(*&v5 + 32) = v35;
    *(*&v5 + 40) = v36;
    *(*&v5 + 48) = v12;
    *(*&v5 + 56) = v24;
    *(*&v5 + 57) = *v43;
    *(*&v5 + 60) = *&v43[3];
    *(*&v5 + 64) = v4;
    goto LABEL_36;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v26 = v5;
    v4 = 0.0;
    v16 = 0;
    v17 = 1;
    v32 = v14;
LABEL_14:
    v27 = v17;
    v28 = v16;
    v18 = v13 == *(&v10 + 1);
    v31 = a2;
    if (*&v4 != *(&v10 + 1))
    {
      v5 = v4;
      v19 = v12;
      goto LABEL_17;
    }

LABEL_16:
    v5 = v4;
    v19 = v12;
    if (v13 != *(&v10 + 1))
    {
LABEL_17:
      while (!v11)
      {
        v4 = *&v13;
        v11 = v18;

        v12 = 0.0;
        if (!v11)
        {
          v40 = *(v10 + 8 * v13);
          (v9)(&v41, &v40);
          v40 = v41;
          *&result = COERCE_DOUBLE((v35)(v37, &v40));
          v12 = v37[0];
          v13 = *(&v10 + 1);
          if (*&v4 + 1 != *(&v10 + 1))
          {
            v13 = *&v4 + 1;
            while (1)
            {
              v40 = *(v10 + 8 * v13);
              (v9)(&v41, &v40);
              v40 = v41;
              *&result = COERCE_DOUBLE((v35)(v37, &v40));
              if (v37[0] != v12)
              {
                break;
              }

              if (*(&v10 + 1) == ++v13)
              {
                v13 = *(&v10 + 1);
                break;
              }
            }
          }

          if (v13 < *&v4)
          {
            __break(1u);
            goto LABEL_40;
          }
        }

        v37[0] = v19;
        v37[1] = v5;
        v37[2] = v4;
        v38 = v10;
        v39 = v9;
        v33(&v41, v37);
        sub_183F814B4(v47, &qword_1EA8546E8);
        v20 = v41;
        v42 = v41;
        *&result = COERCE_DOUBLE(v15(&v42));
        if (result)
        {
          a3 = v29;
          *v31 = v20;
          if (v27 == v29)
          {
            v44 = v11;
            v5 = v26;
            v14 = v32;
            goto LABEL_35;
          }

          a2 = v31 + 1;
          v16 = v27;
          v17 = v27 + 1;
          if (!__OFADD__(v27, 1))
          {
            goto LABEL_14;
          }

          __break(1u);
          goto LABEL_32;
        }

        v18 = v13 == *(&v10 + 1);
        v5 = v4;
        v19 = v12;
        if (*&v4 == *(&v10 + 1))
        {
          goto LABEL_16;
        }
      }

      goto LABEL_42;
    }

    v44 = v11;
    v23 = v46;
    **&v26 = v45;
    *(*&v26 + 16) = v23;
    *(*&v26 + 32) = v35;
    *(*&v26 + 40) = v36;
    *(*&v26 + 48) = v12;
    *(*&v26 + 56) = v11;
    *(*&v26 + 57) = *v43;
    *(*&v26 + 60) = *&v43[3];
    *(*&v26 + 64) = *(&v10 + 1);
    *(*&v26 + 72) = *(&v10 + 1);
    *(*&v26 + 80) = v33;
    *(*&v26 + 88) = v34;
    a3 = v28;
    *(*&v26 + 96) = v15;
    *(*&v26 + 104) = v32;
    return a3;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_183FAA7A0(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = 0;
  v15 = 0;
  v58 = *(result + 16);
  v59 = *result;
  v60 = *(result + 24);
  v68 = *(result + 32);
  v69 = *(result + 8);
  v61 = *(result + 40);
  v16 = *(result + 56);
  v17 = *(result + 60);
  v18 = *(result + 64);
  v19 = *(result + 68);
  v56 = *(result + 88);
  v57 = *(result + 72);
  v20 = *(result + 104);
  v21 = *(result + 112);
  v22 = *(result + 120);
  v23 = *(result + 128);
  v67 = *(result + 136);
  while (1)
  {
LABEL_2:
    if (v15 == v69)
    {
      if (v14 == v68)
      {
        return result;
      }

      v24 = v14 + v61;
      if (__OFADD__(v14, v61))
      {
        goto LABEL_111;
      }

      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      v25 = HIDWORD(v24);
      if (HIDWORD(v24))
      {
        goto LABEL_113;
      }

      v26 = *(v60 + 8 * v14++);
      v70[0] = 1;
      v15 = v69;
      goto LABEL_8;
    }

    v26 = *(v59 + 8 * v15);
    v25 = v15 + v58;
    v27 = __OFADD__(v15, v58);
    if (v14 == v68)
    {
      if (v27)
      {
        goto LABEL_114;
      }

      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_116;
      }

      v24 = HIDWORD(v25);
      if (HIDWORD(v25))
      {
        goto LABEL_119;
      }

      ++v15;
      v70[0] = 0;
      v71 = 1;
      v14 = v68;
    }

    else
    {
      if (v27)
      {
        goto LABEL_115;
      }

      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_117;
      }

      if (HIDWORD(v25))
      {
        goto LABEL_118;
      }

      v24 = v14 + v61;
      if (__OFADD__(v14, v61))
      {
        goto LABEL_120;
      }

      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_121;
      }

      if (HIDWORD(v24))
      {
        goto LABEL_122;
      }

      v28 = *(v60 + 8 * v14);
      if (v26 >= v28)
      {
        if (v28 >= v26)
        {
          ++v15;
          ++v14;
          v70[0] = 0;
LABEL_8:
          v71 = 0;
          goto LABEL_27;
        }

        LODWORD(v25) = 0;
        ++v14;
        v70[0] = 1;
        v71 = 0;
        v26 = v28;
      }

      else
      {
        LODWORD(v24) = 0;
        ++v15;
        v70[0] = 0;
        v71 = 1;
      }
    }

LABEL_27:
    if ((v70[0] & 1) == 0)
    {
      v16 = v25;
    }

    v17 &= v70[0];
    if ((v71 & 1) == 0)
    {
      v18 = v24;
    }

    v19 &= v71;
    v29 = v67 ? v17 : v19;
    if (v29)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      if (v22 > v26 || v26 >= v23)
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (v67)
      {
        v47 = v16;
      }

      else
      {
        v47 = v18;
      }

      if (v47)
      {
        v48 = *(v57 - 4 + 4 * v47);
      }

      else
      {
        v48 = 0;
      }

      v49 = *(v57 + 4 * v47);
      v31 = v56 + 8 * v48;
      if (!v56)
      {
        v31 = 0;
      }

      v30 = v49 - v48;
      if (v22 > v26 || v26 >= v23)
      {
LABEL_75:
        v35 = v30 + 1;
        v46 = v30;
        v32 = v30 + 1;
        goto LABEL_76;
      }

      if (v30 > 1)
      {
        v32 = 0;
        for (i = v30; i > 1; i -= i >> 1)
        {
          if (*(v31 + 8 * (v32 + (i >> 1))) < v20)
          {
            v32 += i >> 1;
          }
        }

        if (v32 >= v30)
        {
          goto LABEL_40;
        }

LABEL_96:
        if (*(v31 + 8 * v32) < v20)
        {
          ++v32;
        }

        goto LABEL_40;
      }

      v32 = 0;
      if (v30 == 1)
      {
        goto LABEL_96;
      }
    }

LABEL_40:
    v34 = v30 - v32;
    v35 = v32;
    if (v30 - v32 >= 2)
    {
      v35 = v32;
      do
      {
        v36 = v34 >> 1;
        v34 -= v34 >> 1;
        v37 = v35 + v36;
        if (*(v31 + 8 * v37) <= v21)
        {
          v35 = v37;
        }
      }

      while (v34 > 1);
    }

    if (v35 < v30 && *(v31 + 8 * v35) <= v21)
    {
      ++v35;
    }

    v38 = v30 + v32;
    if (__OFADD__(v30, v32))
    {
      goto LABEL_106;
    }

    v39 = __OFSUB__(v38, v35);
    v40 = v38 - v35;
    if (v39)
    {
      goto LABEL_107;
    }

    v41 = v32 & 1;
    if (v32 < 0)
    {
      v41 = -v41;
    }

    v42 = 1 - v41;
    v39 = __OFADD__(v40, v42);
    v43 = v40 + v42;
    if (v39)
    {
      goto LABEL_108;
    }

    v44 = v35 & 1;
    if (v35 < 0)
    {
      v44 = -v44;
    }

    v45 = 1 - v44;
    v39 = __OFADD__(v43, v45);
    v46 = v43 + v45;
    if (v39)
    {
      goto LABEL_110;
    }

LABEL_76:
    v72 = v31;
    v73 = v30;
    v74 = v20;
    v75 = v21;
    v76 = v32;
    v77 = v35;
    v78 = 0;
    v79 = v46;
    if (a5 < *a4)
    {
      break;
    }

    if (a2)
    {
      v51 = (a2 + 8 * *a4);
    }

    else
    {
      v51 = 0;
    }

    result = sub_183FA99A4(v70, v51, a5 - *a4);
    if (a6)
    {
      if (result < 0)
      {
        goto LABEL_109;
      }

      if (*(a7 + 8) != result)
      {
        goto LABEL_88;
      }

      if (result)
      {
        v52 = *a7;
        v53 = result;
        v54 = v51;
        while (*v52 == *v54)
        {
          ++v54;
          ++v52;
          if (!--v53)
          {
            goto LABEL_2;
          }
        }

LABEL_88:
        *a7 = v51;
        *(a7 + 8) = result;
        goto LABEL_89;
      }
    }

    else
    {
LABEL_89:
      if (__OFADD__(*a4, result))
      {
        goto LABEL_101;
      }

      *a4 += result;
      *(a8 + 8 * *a10) = v26;
      v55 = a13 + *a4;
      if (__OFADD__(a13, *a4))
      {
        goto LABEL_102;
      }

      if ((v55 & 0x8000000000000000) != 0)
      {
        goto LABEL_103;
      }

      if (HIDWORD(v55))
      {
        goto LABEL_104;
      }

      *(a11 + 4 * *a10) = v55;
      if (__OFADD__(*a10, 1))
      {
        goto LABEL_105;
      }

      ++*a10;
    }
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
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
  return result;
}

unint64_t sub_183FAAC50@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_18;
  }

  if (result)
  {
    v6 = result - 1;
    if (__OFSUB__(result, 1))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v7 = *(a3 + 16);
    if (v6 >= v7)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    v8 = *(a3 + 4 * v6 + 32);
    if (v7 > result)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  v8 = 0;
  if (!*(a3 + 16))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_8:
  v9 = *(a2 + 16);
  if (v9 <= result)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = *(a3 + 4 * result + 32);
  if (v5 == v9)
  {
    v11 = 0x7FF8000000000000;
LABEL_13:
    v12 = *(a4 + 16);
    if (v12 >= v8 && v12 >= v10)
    {
      *a5 = *(a2 + 32 + 8 * result);
      a5[1] = v11;
      a5[2] = a4;
      a5[3] = a4 + 32;
      a5[4] = v8;
      a5[5] = (2 * v10) | 1;
      return result;
    }

    goto LABEL_21;
  }

  if (v5 < v9)
  {
    v11 = *(a2 + 32 + 8 * v5);
    goto LABEL_13;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_183FAAD6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8546E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_183FAAFA0()
{
  result = qword_1EA854700;
  if (!qword_1EA854700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854700);
  }

  return result;
}

unint64_t sub_183FAAFF4()
{
  result = qword_1EA854708;
  if (!qword_1EA854708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854708);
  }

  return result;
}

unint64_t sub_183FAB048()
{
  result = qword_1EA854710;
  if (!qword_1EA854710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854710);
  }

  return result;
}

unint64_t sub_183FAB0A0()
{
  result = qword_1EA854718;
  if (!qword_1EA854718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854718);
  }

  return result;
}

unint64_t sub_183FAB14C()
{
  result = qword_1EA854730;
  if (!qword_1EA854730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854730);
  }

  return result;
}

unint64_t sub_183FAB1E8()
{
  result = qword_1EA854748;
  if (!qword_1EA854748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854748);
  }

  return result;
}

unint64_t sub_183FAB240()
{
  result = qword_1EA854750;
  if (!qword_1EA854750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854740);
    sub_183FAB2C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854750);
  }

  return result;
}

unint64_t sub_183FAB2C4()
{
  result = qword_1EA854758;
  if (!qword_1EA854758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854758);
  }

  return result;
}

unint64_t sub_183FAB320()
{
  result = qword_1EA854760;
  if (!qword_1EA854760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854740);
    sub_183FAB3A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854760);
  }

  return result;
}

unint64_t sub_183FAB3A4()
{
  result = qword_1EA854768;
  if (!qword_1EA854768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854768);
  }

  return result;
}

double sub_183FAB4FC(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_183FAB590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v4 = v3;
  v30 = a2;
  v6 = *(a1 + 24);
  v29 = *(v6 - 8);
  v8 = *(MEMORY[0x1EEE9AC00](a1, a3) + 40);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v13 = &v25 - v12;
  v14 = *(a1 + 16);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v11, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v25 - v21;
  (*(v15 + 16))(v18, v4, v14);
  sub_18438FD38();
  (*(v9 + 16))(v13, v4 + *(a1 + 52), AssociatedTypeWitness);
  v23 = v27;
  (*(v29 + 16))(v27, v4 + *(a1 + 56), v6);
  return sub_183FAB844(v22, v13, v23, v6, v30);
}

uint64_t sub_183FAB844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v11 = type metadata accessor for AccumulateSequence.Iterator();
  v12 = *(v11 + 52);
  v13 = swift_getAssociatedTypeWitness();
  (*(*(v13 - 8) + 32))(a5 + v12, a2, v13);
  return (*(*(a4 - 8) + 32))(a5 + *(v11 + 56), a3, a4);
}

uint64_t sub_183FAB99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v36 = *(a1 + 24);
  v37 = a2;
  v5 = *(v36 - 8);
  v34 = v3;
  v35 = v5;
  MEMORY[0x1EEE9AC00](a1, a3);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = sub_18438FF18();
  v8 = *(v32 - 8);
  v10 = MEMORY[0x1EEE9AC00](v32, v9);
  v12 = &v32 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10, v14);
  v16 = &v32 - v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = v34;
  sub_18438FF58();
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v12, v32);
    v18 = 1;
    v20 = v36;
    v19 = v37;
    v21 = v35;
  }

  else
  {
    (*(v13 + 32))(v16, v12, AssociatedTypeWitness);
    v22 = *(a1 + 56);
    v23 = *(*(a1 + 40) + 32);
    v24 = v17;
    v25 = v17 + *(a1 + 52);
    v26 = v33;
    v27 = v36;
    v23(v16, v25, v36);
    (*(v13 + 8))(v16, AssociatedTypeWitness);
    v28 = v35;
    (*(v35 + 40))(v24 + v22, v26, v27);
    v29 = v24 + v22;
    v30 = v37;
    (*(v28 + 16))(v37, v29, v27);
    v18 = 0;
    v20 = v27;
    v19 = v30;
    v21 = v28;
  }

  return (*(v21 + 56))(v19, v18, 1, v20);
}

uint64_t sub_183FABCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  sub_183FAB590(a1, a2, a3);
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t sub_183FABD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v37 = &v35 - v8;
  v41 = *(a1 + 24);
  v36 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v44 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v35 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v35 - v22;
  sub_18438FE08();
  v24 = *(v12 + 16);
  v39 = v20;
  v24(v20, v23, v11);
  v25 = v3;
  sub_18438FE48();
  v43 = a2;
  swift_getAssociatedConformanceWitness();
  v26 = sub_18438FCC8();
  v27 = *(v12 + 8);
  v27(v16, v11);
  if (v26)
  {
    v27(v23, v11);
    v28 = v25 + *(a1 + 56);
    v29 = v41;
    (*(v36 + 16))(v44, v28, v41);
  }

  else
  {
    v36 = *(a1 + 56);
    v30 = v25;
    v31 = sub_18438FEE8();
    v32 = v37;
    v33 = v38;
    (*(v38 + 16))(v37);
    v31(v45, 0);
    v29 = v41;
    (*(*(a1 + 40) + 32))(v32, v30 + *(a1 + 52), v41, *(a1 + 40));
    (*(v33 + 8))(v32, AssociatedTypeWitness);
    v27(v23, v11);
  }

  return sub_183FAC13C(v39, v44, v29, v42);
}

uint64_t sub_183FAC13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  v9 = _s5IndexVMa_0();
  return (*(*(a3 - 8) + 32))(a4 + *(v9 + 52), a2, a3);
}

uint64_t sub_183FAC230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v6 = *(a1 + 24);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a3);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8, v11);
  v13 = &v15 - v12;
  sub_18438FE48();
  (*(v7 + 16))(v9, v3 + *(a1 + 56), v6);
  return sub_183FAC13C(v13, v9, v6, a2);
}

uint64_t sub_183FAC394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a4;
  v8 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v49 = AssociatedTypeWitness;
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v47 = &v43 - v12;
  v53 = *(a2 + 24);
  v46 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v54 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v43 - v23;
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v43 - v26;
  v50 = a1;
  v28 = a3;
  sub_18438FE18();
  v29 = *(v16 + 16);
  v51 = v24;
  v29(v24, v27, v15);
  v30 = v4;
  sub_18438FE48();
  swift_getAssociatedConformanceWitness();
  v31 = sub_18438FCC8();
  v32 = *(v16 + 8);
  v32(v20, v15);
  if (v31)
  {
    v32(v27, v15);
    v33 = v30 + *(a2 + 56);
    v34 = v53;
    (*(v46 + 16))(v54, v33, v53);
  }

  else
  {
    v35 = *(a2 + 40);
    v45 = a2;
    v55[0] = v8;
    v55[1] = v53;
    v55[2] = v28;
    v55[3] = v35;
    v43 = *(_s5IndexVMa_0() + 52);
    v36 = v30;
    v37 = sub_18438FEE8();
    v46 = v28;
    v38 = v48;
    v39 = v49;
    v40 = *(v48 + 16);
    v44 = v32;
    v41 = v47;
    v40(v47);
    v37(v55, 0);
    v34 = v53;
    (*(v35 + 32))(v41, v36 + *(v45 + 52), v53, v35);
    (*(v38 + 8))(v41, v39);
    v44(v27, v15);
  }

  return sub_183FAC13C(v51, v54, v34, v52);
}

uint64_t sub_183FAC7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 24);
  v6 = _s5IndexVMa_0();
  return (*(*(v5 - 8) + 16))(a3, a1 + *(v6 + 52), v5);
}

uint64_t sub_183FAC84C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_18438FCC8() & 1;
}

uint64_t sub_183FAC8E4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_18438FC68() & 1;
}

void (*sub_183FAC9AC(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_183FACA3C(v6, a2, a3);
  return sub_183F840C4;
}

void (*sub_183FACA3C(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 24);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  sub_183FAC7C4(a2, a3, v9);
  return sub_183F84210;
}

uint64_t sub_183FACB14@<X0>(uint64_t a1@<X8>)
{
  _s5IndexVMa_0();
  v2 = sub_18438FF18();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t sub_183FACBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(a2 + 40);
  v13 = *(a2 + 16);
  v14 = v5;
  v15 = v6;
  v7 = _s5IndexVMa_0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - v10;
  (*(v8 + 32))(&v13 - v10, a1, v7);
  sub_183FAC394(v11, a2, v5, a1);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_183FACD38()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_183FACE0C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(a3 + 24);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v9 - 8);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  v17 = *(v14 + 80);
  if (*(v14 + 84) <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = *(v14 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v7 + 64) + v15;
  if (a2 > v18)
  {
    v20 = ((v16 + v17 + (v19 & ~v15)) & ~v17) + *(*(v9 - 8) + 64);
    v21 = 8 * v20;
    if (v20 <= 3)
    {
      v23 = ((a2 - v18 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v23))
      {
        v22 = *(a1 + v20);
        if (!v22)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v23 > 0xFF)
      {
        v22 = *(a1 + v20);
        if (!*(a1 + v20))
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v23 < 2)
      {
LABEL_30:
        if (v18)
        {
          goto LABEL_31;
        }

        return 0;
      }
    }

    v22 = *(a1 + v20);
    if (!*(a1 + v20))
    {
      goto LABEL_30;
    }

LABEL_17:
    v24 = (v22 - 1) << v21;
    if (v20 > 3)
    {
      v24 = 0;
    }

    if (v20)
    {
      if (v20 <= 3)
      {
        v25 = ((v16 + v17 + (v19 & ~v15)) & ~v17) + *(*(v9 - 8) + 64);
      }

      else
      {
        v25 = 4;
      }

      if (v25 > 2)
      {
        if (v25 == 3)
        {
          v26 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v26 = *a1;
        }
      }

      else if (v25 == 1)
      {
        v26 = *a1;
      }

      else
      {
        v26 = *a1;
      }
    }

    else
    {
      v26 = 0;
    }

    return v18 + (v26 | v24) + 1;
  }

LABEL_31:
  if (v8 == v18)
  {
    v27 = *(v7 + 48);
    v28 = a1;
    v29 = v8;
    v30 = AssociatedTypeWitness;
LABEL_39:

    return v27(v28, v29, v30);
  }

  v32 = (a1 + v19) & ~v15;
  if (v12 != v18)
  {
    v27 = *(v14 + 48);
    v28 = ((v32 + v16 + v17) & ~v17);
    v29 = *(v14 + 84);
    v30 = v9;
    goto LABEL_39;
  }

  v33 = *(v11 + 48);

  return v33(v32);
}

void sub_183FAD148(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v38 = v9;
  v10 = *(v9 + 84);
  v11 = *(a4 + 24);
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v11 - 8);
  v17 = *(v16 + 84);
  v18 = *(v9 + 64);
  v19 = *(v12 + 80);
  v20 = *(v12 + 64);
  v21 = *(v16 + 80);
  if (v17 <= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = *(v16 + 84);
  }

  v23 = v18 + v19;
  v24 = ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21) + *(*(v11 - 8) + 64);
  if (a3 <= v22)
  {
    v25 = 0;
  }

  else if (v24 <= 3)
  {
    v28 = ((a3 - v22 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
    if (HIWORD(v28))
    {
      v25 = 4;
    }

    else
    {
      if (v28 < 0x100)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (v28 >= 2)
      {
        v25 = v29;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else
  {
    v25 = 1;
  }

  if (v22 < a2)
  {
    v26 = ~v22 + a2;
    if (v24 < 4)
    {
      v27 = (v26 >> (8 * v24)) + 1;
      if (v24)
      {
        v30 = v26 & ~(-1 << (8 * v24));
        bzero(a1, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *a1 = v30;
            if (v25 > 1)
            {
LABEL_52:
              if (v25 == 2)
              {
                *&a1[v24] = v27;
              }

              else
              {
                *&a1[v24] = v27;
              }

              return;
            }
          }

          else
          {
            *a1 = v26;
            if (v25 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v30;
        a1[2] = BYTE2(v30);
      }

      if (v25 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v24);
      *a1 = v26;
      v27 = 1;
      if (v25 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v25)
    {
      a1[v24] = v27;
    }

    return;
  }

  if (v25 <= 1)
  {
    if (v25)
    {
      a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v25 == 2)
  {
    *&a1[v24] = 0;
    goto LABEL_33;
  }

  *&a1[v24] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v10 == v22)
  {
    v31 = *(v38 + 56);
    v32 = a1;
    v33 = a2;
    v34 = v10;
    v35 = AssociatedTypeWitness;
LABEL_44:

    v31(v32, v33, v34, v35);
    return;
  }

  v36 = &a1[v23] & ~v19;
  if (v14 != v22)
  {
    v31 = *(v16 + 56);
    v32 = ((v36 + v20 + v21) & ~v21);
    v33 = a2;
    v34 = v17;
    v35 = v11;
    goto LABEL_44;
  }

  v37 = *(v13 + 56);

  v37(v36, a2);
}

uint64_t sub_183FAD504()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_183FAD5C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v5 - 8);
  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  v16 = *(v13 + 80);
  if (*(v13 + 84) <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v7 + 64) + v14;
  if (a2 > v17)
  {
    v19 = ((v15 + v16 + (v18 & ~v14)) & ~v16) + *(*(v5 - 8) + 64);
    v20 = 8 * v19;
    if (v19 <= 3)
    {
      v22 = ((a2 - v17 + ~(-1 << v20)) >> v20) + 1;
      if (HIWORD(v22))
      {
        v21 = *(a1 + v19);
        if (!v21)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v22 > 0xFF)
      {
        v21 = *(a1 + v19);
        if (!*(a1 + v19))
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v22 < 2)
      {
LABEL_30:
        if (v17)
        {
          goto LABEL_31;
        }

        return 0;
      }
    }

    v21 = *(a1 + v19);
    if (!*(a1 + v19))
    {
      goto LABEL_30;
    }

LABEL_17:
    v23 = (v21 - 1) << v20;
    if (v19 > 3)
    {
      v23 = 0;
    }

    if (v19)
    {
      if (v19 <= 3)
      {
        v24 = ((v15 + v16 + (v18 & ~v14)) & ~v16) + *(*(v5 - 8) + 64);
      }

      else
      {
        v24 = 4;
      }

      if (v24 > 2)
      {
        if (v24 == 3)
        {
          v25 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v25 = *a1;
        }
      }

      else if (v24 == 1)
      {
        v25 = *a1;
      }

      else
      {
        v25 = *a1;
      }
    }

    else
    {
      v25 = 0;
    }

    return v17 + (v25 | v23) + 1;
  }

LABEL_31:
  if (v8 == v17)
  {
    v26 = *(v7 + 48);
    v27 = a1;
    v28 = v8;
    v29 = v6;
LABEL_39:

    return v26(v27, v28, v29);
  }

  v31 = (a1 + v18) & ~v14;
  if (v11 != v17)
  {
    v26 = *(v13 + 48);
    v27 = ((v31 + v15 + v16) & ~v16);
    v28 = *(v13 + 84);
    v29 = v5;
    goto LABEL_39;
  }

  v32 = *(v10 + 48);

  return v32(v31);
}

void sub_183FAD8D8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(v8 - 8);
  v37 = v9;
  v10 = *(v9 + 84);
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = *(v7 - 8);
  v16 = *(v15 + 84);
  v17 = *(v9 + 64);
  v18 = *(v11 + 80);
  v19 = *(v11 + 64);
  v20 = *(v15 + 80);
  if (v16 <= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = *(v15 + 84);
  }

  v22 = v17 + v18;
  v23 = ((v19 + v20 + ((v17 + v18) & ~v18)) & ~v20) + *(*(v7 - 8) + 64);
  if (a3 <= v21)
  {
    v24 = 0;
  }

  else if (v23 <= 3)
  {
    v27 = ((a3 - v21 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v27))
    {
      v24 = 4;
    }

    else
    {
      if (v27 < 0x100)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      if (v27 >= 2)
      {
        v24 = v28;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 1;
  }

  if (v21 < a2)
  {
    v25 = ~v21 + a2;
    if (v23 < 4)
    {
      v26 = (v25 >> (8 * v23)) + 1;
      if (v23)
      {
        v29 = v25 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v29;
            if (v24 > 1)
            {
LABEL_52:
              if (v24 == 2)
              {
                *&a1[v23] = v26;
              }

              else
              {
                *&a1[v23] = v26;
              }

              return;
            }
          }

          else
          {
            *a1 = v25;
            if (v24 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v29;
        a1[2] = BYTE2(v29);
      }

      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v25;
      v26 = 1;
      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v24)
    {
      a1[v23] = v26;
    }

    return;
  }

  if (v24 <= 1)
  {
    if (v24)
    {
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v24 == 2)
  {
    *&a1[v23] = 0;
    goto LABEL_33;
  }

  *&a1[v23] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v10 == v21)
  {
    v30 = *(v37 + 56);
    v31 = a1;
    v32 = a2;
    v33 = v10;
    v34 = v8;
LABEL_44:

    v30(v31, v32, v33, v34);
    return;
  }

  v35 = &a1[v22] & ~v18;
  if (v13 != v21)
  {
    v30 = *(v15 + 56);
    v31 = ((v35 + v19 + v20) & ~v20);
    v32 = a2;
    v33 = v16;
    v34 = v7;
    goto LABEL_44;
  }

  v36 = *(v12 + 56);

  v36(v35, a2);
}

uint64_t sub_183FADC84()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_183FADD24(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_183FADF7C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 24) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

unint64_t sub_183FAE278()
{
  result = qword_1EA8547F8;
  if (!qword_1EA8547F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8547F8);
  }

  return result;
}

uint64_t sub_183FAE2EC(int a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 != 6)
      {
        if (a1 == 7)
        {
          return 0x6C6E4F6168706C61;
        }

LABEL_18:
        sub_184390098();

        v2 = sub_1843901B8();
        MEMORY[0x1865EC630](v2);

        MEMORY[0x1865EC630](41, 0xE100000000000000);
        return 0x7761722874696E69;
      }
    }

    else if (a1 == 4)
    {
      return 0x7473726966;
    }

    return 0x70696B53656E6F6ELL;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 1701736302;
    }

    if (a1 == 1)
    {
      return 0xD000000000000011;
    }

    goto LABEL_18;
  }

  if (a1 == 2)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 1953718636;
  }
}

Swift::Bool __swiftcall CGAffineTransformEqualToTransform(_:_:)(CGAffineTransform *a1, CGAffineTransform *a2)
{
  result = sub_184390118();
  __break(1u);
  return result;
}

CGColorRef_optional __swiftcall CGColorGetConstantColor(_:)(CFStringRef_optional a1)
{
  result.value = sub_184390118();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall CGColorEqualToColor(_:_:)(CGColorRef_optional a1, CGColorRef_optional a2)
{
  result = sub_184390118();
  __break(1u);
  return result;
}

Swift::Int __swiftcall CGColorSpaceGetColorTableCount(_:)(CGColorSpaceRef_optional a1)
{
  result = sub_184390118();
  __break(1u);
  return result;
}

CGPoint __swiftcall CGContextGetTextPosition(_:)(CGContextRef_optional a1)
{
  sub_184390118();
  __break(1u);
  result.y = v2;
  result.x = v1;
  return result;
}

Swift::Bool __swiftcall CGPathEqualToPath(_:_:)(CGPathRef_optional a1, CGPathRef_optional a2)
{
  result = sub_184390118();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for Region.Operation()
{
  result = qword_1ED4E01C8;
  if (!qword_1ED4E01C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_183FAF55C(__n128 a1)
{
  sub_183FAF5D0(319, a1);
  if (v1 <= 0x3F)
  {
    sub_183FAF6CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_183FAF5D0(uint64_t a1, __n128 a2)
{
  if (!qword_1ED4DFF28[0])
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, qword_1ED4DFF28);
    }
  }
}

void sub_183FAF6CC()
{
  if (!qword_1ED4DFF20)
  {
    sub_184390218();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED4DFF20);
    }
  }
}

uint64_t sub_183FAF738@<X0>(double *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v6 = sub_184390218();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for Region.Operation();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *a1;
  sub_183FAFA78(a2, v18);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v21 = *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854808) + 48));
    result = (*(v7 + 32))(v14, v18, v6);
    if (v21 > 0.0)
    {
      v22 = v19 * v21;
      v29 = v22;
      (*(v7 + 16))(v11, v14, v6);
      v23 = (*(v7 + 88))(v11, v6);
      if (v23 == *MEMORY[0x1E69E7038])
      {
        v24 = round(v22);
      }

      else if (v23 == *MEMORY[0x1E69E7030])
      {
        v24 = rint(v22);
      }

      else if (v23 == *MEMORY[0x1E69E7040])
      {
        v24 = ceil(v22);
      }

      else if (v23 == *MEMORY[0x1E69E7048])
      {
        v24 = floor(v22);
      }

      else
      {
        if (v23 != *MEMORY[0x1E69E7020])
        {
          if (v23 == *MEMORY[0x1E69E7028])
          {
            result = (*(v7 + 8))(v14, v6);
            if ((*&v22 & 0x8000000000000000) != 0)
            {
              v26 = floor(v22);
            }

            else
            {
              v26 = ceil(v22);
            }
          }

          else
          {
            sub_18438FDE8();
            v27 = *(v7 + 8);
            v27(v14, v6);
            result = (v27)(v11, v6);
            v26 = v29;
          }

          v25 = v26 / v21;
          goto LABEL_16;
        }

        v24 = trunc(v22);
      }

      result = (*(v7 + 8))(v14, v6);
      v25 = v24 / v21;
LABEL_16:
      *a3 = v25;
      return result;
    }

    __break(1u);
  }

  else if (*v18 >= 0.0)
  {
    v25 = v18[2] + v19 * *v18;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_183FAFA78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Region.Operation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_183FAFADC@<X0>(double *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v6 = sub_184390218();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v29 - v13;
  v15 = type metadata accessor for Region.Operation();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *a1;
  sub_183FAFA78(a2, v18);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v21 = *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854808) + 48));
    result = (*(v7 + 32))(v14, v18, v6);
    if (v21 > 0.0)
    {
      v22 = v19 * v21;
      v30 = v22;
      (*(v7 + 16))(v11, v14, v6);
      v23 = (*(v7 + 88))(v11, v6);
      if (v23 == *MEMORY[0x1E69E7038])
      {
        v24 = round(v22);
      }

      else if (v23 == *MEMORY[0x1E69E7030])
      {
        v24 = rint(v22);
      }

      else if (v23 == *MEMORY[0x1E69E7040])
      {
        v24 = ceil(v22);
      }

      else if (v23 == *MEMORY[0x1E69E7048])
      {
        v24 = floor(v22);
      }

      else
      {
        if (v23 != *MEMORY[0x1E69E7020])
        {
          if (v23 == *MEMORY[0x1E69E7028])
          {
            result = (*(v7 + 8))(v14, v6);
            if ((*&v22 & 0x8000000000000000) != 0)
            {
              v27 = floor(v22);
            }

            else
            {
              v27 = ceil(v22);
            }
          }

          else
          {
            sub_18438FDE8();
            v28 = *(v7 + 8);
            v28(v14, v6);
            result = (v28)(v11, v6);
            v27 = v30;
          }

          v26 = v27 / v21;
          goto LABEL_16;
        }

        v24 = trunc(v22);
      }

      result = (*(v7 + 8))(v14, v6);
      v26 = v24 / v21;
LABEL_16:
      *a3 = v26;
      return result;
    }

    __break(1u);
  }

  else
  {
    v25 = v18[1];
    if (v25 >= 0.0)
    {
      v26 = v18[3] + v19 * v25;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_183FAFE28(uint64_t a1)
{
  v2 = sub_183F73434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_183FAFE64(uint64_t a1)
{
  v2 = sub_183F73434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_183FAFEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_184390248() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_184390248();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_183FAFF68(uint64_t a1)
{
  v2 = sub_183F73B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_183FAFFA4(uint64_t a1)
{
  v2 = sub_183F73B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_183FAFFE0()
{
  result = qword_1EA854828;
  if (!qword_1EA854828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854828);
  }

  return result;
}

unint64_t sub_183FB0068()
{
  result = qword_1EA854830;
  if (!qword_1EA854830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854830);
  }

  return result;
}

unint64_t sub_183FB00C0()
{
  result = qword_1EA854838;
  if (!qword_1EA854838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854838);
  }

  return result;
}

unint64_t sub_183FB0118()
{
  result = qword_1EA853EE0;
  if (!qword_1EA853EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA853EE0);
  }

  return result;
}

unint64_t sub_183FB0170()
{
  result = qword_1EA853EE8;
  if (!qword_1EA853EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA853EE8);
  }

  return result;
}

unint64_t sub_183FB01C8()
{
  result = qword_1EA853F28;
  if (!qword_1EA853F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA853F28);
  }

  return result;
}

unint64_t sub_183FB0220()
{
  result = qword_1EA853F20;
  if (!qword_1EA853F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA853F20);
  }

  return result;
}

uint64_t sub_183FB0294()
{
  sub_184390098();

  v0 = sub_18438FDD8();
  MEMORY[0x1865EC630](v0);

  MEMORY[0x1865EC630](0x203C2E2E20, 0xE500000000000000);
  v1 = sub_18438FDD8();
  MEMORY[0x1865EC630](v1);

  MEMORY[0x1865EC630](0x203A79202CLL, 0xE500000000000000);
  v2 = sub_18438FDD8();
  MEMORY[0x1865EC630](v2);

  MEMORY[0x1865EC630](0x203C2E2E20, 0xE500000000000000);
  v3 = sub_18438FDD8();
  MEMORY[0x1865EC630](v3);

  MEMORY[0x1865EC630](41, 0xE100000000000000);
  return 540702760;
}

uint64_t sub_183FB03E0()
{
  v1 = sub_184390378();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v13 - v8;
  v10 = v0[1];
  v14 = *v0;
  v15 = v10;
  v13[1] = MEMORY[0x1E69E7CC0];
  v11 = sub_184390368();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854860);
  sub_183FB0B00();
  return sub_184390388();
}

uint64_t Region.debugDescription.getter()
{
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  *&v8 = *(v0 + 6);
  *(&v8 + 1) = sub_183FB06AC;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854840);
  sub_183FB0710();
  v1 = sub_18438FC58();
  v3 = v2;
  v9[2] = v7;
  v9[3] = v8;
  v10 = 0;
  v9[0] = v5;
  v9[1] = v6;
  sub_183FB0794(v9);
  MEMORY[0x1865EC630](v1, v3);

  MEMORY[0x1865EC630](10589, 0xE200000000000000);
  return 0x5B286E6F69676552;
}

uint64_t sub_183FB06AC@<X0>(void *a1@<X8>)
{
  result = sub_1843900F8();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

unint64_t sub_183FB0710()
{
  result = qword_1EA854848;
  if (!qword_1EA854848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854840);
    sub_183FA4688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854848);
  }

  return result;
}

uint64_t sub_183FB0794(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Region.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v2 = sub_184390378();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v21 - v9;
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  v15 = v1[4];
  v14 = v1[5];
  v16 = v1[6];
  v22 = *v1;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v15;
  v27 = v14;
  v28 = v16;
  v21[2] = v22;
  v21[3] = v11;
  v21[4] = v12;
  v21[5] = v13;
  v21[6] = v15;
  v21[7] = v14;
  v21[8] = v16;
  v21[9] = sub_183FB0A58;
  v21[10] = 0;
  v17 = *MEMORY[0x1E69E75A0];
  v18 = sub_184390368();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v10, v17, v18);
  (*(v19 + 56))(v10, 0, 1, v18);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E75D8], v2);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854850);
  sub_183FB0A64();
  return sub_184390388();
}

__n128 sub_183FB0A58@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

unint64_t sub_183FB0A64()
{
  result = qword_1EA854858;
  if (!qword_1EA854858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854850);
    sub_183FA45AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854858);
  }

  return result;
}

unint64_t sub_183FB0B00()
{
  result = qword_1EA854868;
  if (!qword_1EA854868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854868);
  }

  return result;
}

double Region.init(dataRepresentation:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v39, 0, 14);
      sub_183FB0E98(v39, v39, v40);
      v18 = a1;
      v19 = a2;
      goto LABEL_37;
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = __OFSUB__(v5, v6);
    LOBYTE(v5) = v5 - v6;
    if (!v7)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = HIWORD(a2);
    goto LABEL_9;
  }

  LOBYTE(v5) = BYTE4(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_9:
  if ((v5 & 0x1F) != 0)
  {
    sub_183FB0E44(a1, a2);
LABEL_39:
    *(a3 + 48) = 0;
    *&v35 = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return *&v35;
  }

  if (v4 != 2)
  {
    if (v4 != 1)
    {
      v39[0] = a1;
      LOWORD(v39[1]) = a2;
      BYTE2(v39[1]) = BYTE2(a2);
      BYTE3(v39[1]) = BYTE3(a2);
      BYTE4(v39[1]) = BYTE4(a2);
      BYTE5(v39[1]) = BYTE5(a2);
      sub_183FB0E98(v39, v39 + BYTE6(a2), v40);
      v18 = a1;
      v19 = a2;
      goto LABEL_37;
    }

    v8 = a1;
    v9 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v12 = sub_18438FB68();
      if (!v12)
      {
LABEL_17:
        v14 = sub_18438FB78();
        if (v14 >= v9)
        {
          v15 = v9;
        }

        else
        {
          v15 = v14;
        }

        v16 = v15 + v12;
        if (v12)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        sub_183FB0E98(v12, v17, v40);
        v18 = a1;
        v19 = a2;
        goto LABEL_37;
      }

      v13 = sub_18438FB88();
      if (!__OFSUB__(v8, v13))
      {
        v12 += v8 - v13;
        goto LABEL_17;
      }

LABEL_45:
      __break(1u);
    }

    goto LABEL_42;
  }

  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v26 = sub_18438FB68();
  if (v26)
  {
    v27 = sub_18438FB88();
    if (__OFSUB__(v22, v27))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v26 += v22 - v27;
  }

  v7 = __OFSUB__(v23, v22);
  v28 = v23 - v22;
  if (v7)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v29 = sub_18438FB78();
  if (v29 >= v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = v29;
  }

  v31 = v30 + v26;
  if (v26)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  sub_183FB0E98(v26, v32, v40);
  v18 = a1;
  v19 = a2;
LABEL_37:
  sub_183FB0E44(v18, v19);
  v35 = v41;
  if (!v41)
  {
    goto LABEL_39;
  }

  v36 = v40[1];
  v37 = v42;
  *a3 = v40[0];
  *(a3 + 16) = v36;
  *(a3 + 32) = v35;
  *(a3 + 48) = v37;
  return *&v35;
}

uint64_t sub_183FB0E44(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_183FB0E98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = vdupq_n_s64(0x7FF8000000000000uLL);
  v5 = MEMORY[0x1E69E7CC0];
  v18 = v4;
  v19 = v4;
  v20.i64[0] = MEMORY[0x1E69E7CC0];
  v20.i64[1] = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  v6 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
  if (result && (v7 = result, v8 = a2 - result, a2 - result >= 1))
  {
    v9 = 0;
    do
    {
      if (__OFADD__(v9, 32))
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9 + 32;
      }

      v11 = (v7 + v9);
      v12 = v11[1];
      v13 = v11[2];
      v14 = v11[3];
      if (*v11 >= v12 || v13 >= v14)
      {

        *(a3 + 48) = 0;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *a3 = 0u;
        return result;
      }

      *v17 = *v11;
      *&v17[1] = v12;
      *&v17[2] = v13;
      *&v17[3] = v14;
      v17[4] = v5;
      v17[5] = v5;
      v17[6] = v5;
      if ((Region.isSuperset(of:)(v17) & 1) == 0)
      {
        Region.formUnion(_:)(v17);
      }

      v9 = v10;
    }

    while (v10 < v8);
    v4 = v18;
    v16 = v19;
    v6 = v20;
    v5 = v21;
  }

  else
  {
    v16 = v4;
  }

  *a3 = v4;
  *(a3 + 16) = v16;
  *(a3 + 32) = v6;
  *(a3 + 48) = v5;
  return result;
}

uint64_t Region.dataRepresentation.getter()
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v14 = xmmword_18439AA70;
  v4 = *v0;
  v5 = (~*v0 & 0x7FF0000000000000) != 0;
  v12 = 0;
  v13 = 0;
  v6 = (v4 & 0xFFFFFFFFFFFFFLL) == 0 || v5;

  v7 = 0;
  while (1)
  {
    if (v6 && !*(v1 + 16))
    {
      if (v7 == 2)
      {
        goto LABEL_24;
      }
    }

    else if (v7 == *(v3 + 16))
    {
      goto LABEL_24;
    }

    Region.subscript.getter(&v12);
    v7 = v13 + 2;
    if (__OFADD__(v13, 2))
    {
      goto LABEL_26;
    }

    v8 = v12;
    if (!v6 || *(v1 + 16))
    {
      v9 = *(v2 + 16);
      if (v12 >= v9)
      {
        goto LABEL_6;
      }

      v10 = v12;
      while ((v12 & 0x8000000000000000) == 0)
      {
        if (v7 < *(v2 + 32 + 4 * v10))
        {
          v8 = v10;
          goto LABEL_6;
        }

        if (v9 == ++v10)
        {
          v8 = *(v2 + 16);
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
    }

    v8 = v12 + 2;
    if (__OFADD__(v12, 2))
    {
      break;
    }

LABEL_6:
    v12 = v8;
    v13 += 2;
    sub_18438FBA8();
  }

  __break(1u);
LABEL_24:

  return v14;
}

void CGRect.__divided(slice:remainder:atDistance:from:)(CGRect *a1, CGRect *a2, CGRectEdge a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v9.origin.x = a5;
  v9.origin.y = a6;
  v9.size.width = a7;
  v9.size.height = a8;
  CGRectDivide(v9, a1, a2, a4, a3);
}

unint64_t sub_183FB11D0()
{
  result = qword_1EA854870;
  if (!qword_1EA854870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854870);
  }

  return result;
}

uint64_t sub_183FB1244(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 12;
  if (v1 <= 1)
  {
    if (!v1)
    {
      return 0x666544726564726FLL;
    }

    if (v1 == 1)
    {
      return 0x4C3631726564726FLL;
    }

    goto LABEL_14;
  }

  if (v1 == 2)
  {
    return 0x4C3233726564726FLL;
  }

  if (v1 != 3)
  {
    if (v1 == 4)
    {
      return 0x423233726564726FLL;
    }

LABEL_14:
    sub_184390098();

    v4 = sub_1843901B8();
    MEMORY[0x1865EC630](v4);

    MEMORY[0x1865EC630](41, 0xE100000000000000);
    return 0x7761722874696E69;
  }

  return 0x423631726564726FLL;
}

unint64_t ilogb(_:)(double a1)
{
  v1 = (*&a1 >> 52) & 0x7FFLL;
  if (v1 == 2047)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = *&a1 & 0xFFFFFFFFFFFFFLL;
  if (!(v1 | *&a1 & 0xFFFFFFFFFFFFFLL))
  {
    return 0x8000000000000000;
  }

  if (v1)
  {
    return v1 - 1023;
  }

  if (v3)
  {
    return -1011 - __clz(v3);
  }

  __break(1u);
  return result;
}

uint64_t lgamma(_:)(double a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = 0;
  lgamma_r(a1, &v2);
  return v2;
}

uint64_t remquo(_:_:)(long double a1, long double a2)
{
  v4 = *MEMORY[0x1E69E9840];
  __z = 0;
  remquo(a1, a2, &__z);
  return __z;
}

double nan(_:)()
{
  v0 = sub_18438FD08();
  v1 = nan((v0 + 32));

  return v1;
}

uint64_t sub_183FB18E8(uint64_t result, uint64_t (*a2)(void))
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    return a2();
  }

  __break(1u);
  return result;
}

BOOL CGFloat.isNearlyEqual(to:tolerance:)(double a1, double a2, double a3)
{
  if (a3 == a1)
  {
    return 1;
  }

  if (COERCE__INT64(fabs(a3 - a1)) >= 0x7FF0000000000000)
  {
    return 0;
  }

  v4 = vabdd_f64(a3, a1);
  v5 = fabs(a3);
  v6 = fabs(a1);
  if (v5 > v6)
  {
    v6 = v5;
  }

  if (v6 <= 1.0)
  {
    v6 = 1.0;
  }

  return v4 <= v6 * a2;
}

BOOL CGFloatNearlyEqualToFloat(_:_:)(double a1, double a2)
{
  if (qword_1EA853EA8 == -1)
  {
    if (a1 == a2)
    {
      return 1;
    }
  }

  else
  {
    v3 = a2;
    v4 = a1;
    swift_once();
    a1 = v4;
    a2 = v3;
    if (v4 == v3)
    {
      return 1;
    }
  }

  if (COERCE__INT64(fabs(a1 - a2)) >= 0x7FF0000000000000)
  {
    return 0;
  }

  v5 = vabdd_f64(a1, a2);
  v6 = fabs(a1);
  v7 = fabs(a2);
  if (v6 <= v7)
  {
    v6 = v7;
  }

  if (v6 <= 1.0)
  {
    v6 = 1.0;
  }

  return v5 <= v6 * *&qword_1EA853EB0;
}

BOOL CGFloatNearlyEqualToFloatWithTolerance(_:_:_:)(double a1, double a2, double a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (COERCE__INT64(fabs(a1 - a2)) >= 0x7FF0000000000000)
  {
    return 0;
  }

  v4 = vabdd_f64(a1, a2);
  v5 = fabs(a1);
  v6 = fabs(a2);
  if (v5 <= v6)
  {
    v5 = v6;
  }

  if (v5 <= 1.0)
  {
    v5 = 1.0;
  }

  return v4 <= v5 * a3;
}