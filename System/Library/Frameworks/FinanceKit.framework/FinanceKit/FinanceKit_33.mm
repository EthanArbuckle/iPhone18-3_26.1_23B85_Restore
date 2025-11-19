uint64_t sub_1B74AEF88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995DA0);
  v1 = sub_1B77FFFA8();
  v0[9] = v1;
  v0[5] = v1;
  swift_beginAccess();
  v2 = swift_task_alloc();
  v0[10] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995EE0);
  *v2 = v0;
  v2[1] = sub_1B74AF074;

  return MEMORY[0x1EEDEE848](v0 + 14, v3);
}

uint64_t sub_1B74AF074()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1B74AF31C;
  }

  else
  {
    *(v2 + 113) = *(v2 + 112);
    v3 = sub_1B74AF190;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B74AF1AC()
{
  if (*(v0 + 113))
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    *(v0 + 96) = Strong;
    if (Strong)
    {
      v4 = swift_task_alloc();
      *(v0 + 104) = v4;
      *v4 = v0;
      v4[1] = sub_1B74AF3A8;

      return sub_1B74AE96C();
    }

    else
    {
      v5 = swift_task_alloc();
      *(v0 + 80) = v5;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995EE0);
      *v5 = v0;
      v5[1] = sub_1B74AF074;

      return MEMORY[0x1EEDEE848](v0 + 112, v6);
    }
  }
}

uint64_t sub_1B74AF31C()
{
  *(v0 + 48) = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1B74AF3A8()
{
  v1 = *v0;
  v5 = *v0;

  v2 = swift_task_alloc();
  *(v1 + 80) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995EE0);
  *v2 = v5;
  v2[1] = sub_1B74AF074;

  return MEMORY[0x1EEDEE848](v1 + 112, v3);
}

uint64_t sub_1B74AF514(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B77E4D30(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B74AF580(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B74AF580(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B7802038();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B7800C78();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B74AF82C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1B74AF678(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B74AF678(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v21 = *a4;
    v4 = *a4 + 88 * a3 - 88;
    v5 = result - a3;
LABEL_5:
    v19 = v4;
    v20 = a3;
    v18 = v5;
    while (1)
    {
      v6 = *(v4 + 120);
      v7 = *(v4 + 128);
      v8 = *(v4 + 32);
      v9 = *(v4 + 40);
      v10 = *(v4 + 104) == *(v4 + 16) && *(v4 + 112) == *(v4 + 24);
      if (v10 || (v28 = v5, result = sub_1B78020F8(), v5 = v28, (result & 1) != 0))
      {
        v11 = v6 == v8 && v7 == v9;
        if (v11 || (v12 = v5, result = sub_1B78020F8(), v13 = v12, (result & 1) == 0))
        {
LABEL_4:
          a3 = v20 + 1;
          v4 = v19 + 88;
          v5 = v18 - 1;
          if (v20 + 1 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else
      {
        result = sub_1B78020F8();
        v13 = v28;
        if ((result & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v21)
      {
        break;
      }

      v24 = *(v4 + 120);
      v25 = *(v4 + 136);
      v26 = *(v4 + 152);
      v27 = *(v4 + 168);
      v22 = *(v4 + 88);
      v23 = *(v4 + 104);
      v14 = *(v4 + 48);
      *(v4 + 120) = *(v4 + 32);
      *(v4 + 136) = v14;
      *(v4 + 152) = *(v4 + 64);
      *(v4 + 168) = *(v4 + 80);
      v15 = *(v4 + 16);
      *(v4 + 88) = *v4;
      *(v4 + 104) = v15;
      *(v4 + 32) = v24;
      *(v4 + 48) = v25;
      *(v4 + 64) = v26;
      *(v4 + 80) = v27;
      *v4 = v22;
      *(v4 + 16) = v23;
      v4 -= 88;
      v16 = __CFADD__(v13, 1);
      v5 = v13 + 1;
      if (v16)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B74AF82C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v106 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_120:
    v7 = *v106;
    if (!*v106)
    {
      goto LABEL_158;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_152:
      result = sub_1B77E4CA4(v8);
      v8 = result;
    }

    v98 = *(v8 + 2);
    if (v98 >= 2)
    {
      while (*a3)
      {
        v99 = v8;
        v8 = (v98 - 1);
        v100 = *&v99[16 * v98];
        v101 = *&v99[16 * v98 + 24];
        sub_1B74B006C((*a3 + 88 * v100), (*a3 + 88 * *&v99[16 * v98 + 16]), (*a3 + 88 * v101), v7);
        if (v5)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_145;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = sub_1B77E4CA4(v99);
        }

        if (v98 - 2 >= *(v99 + 2))
        {
          goto LABEL_146;
        }

        v102 = &v99[16 * v98];
        *v102 = v100;
        *(v102 + 1) = v101;
        result = sub_1B77E4C18(v8);
        v8 = v99;
        v98 = *(v99 + 2);
        if (v98 <= 1)
        {
        }
      }

      goto LABEL_156;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    v108 = v8;
    if (v7 < v6)
    {
      v111 = v6;
      v113 = v5;
      v10 = v9;
      v11 = *a3;
      v12 = (*a3 + 88 * v7);
      v14 = v12[2];
      v13 = v12[3];
      v15 = v12[4];
      v16 = v12[5];
      v104 = v10;
      v17 = (*a3 + 88 * v10);
      v18 = v17[4];
      v19 = v17[5];
      v20 = v14 == v17[2] && v13 == v17[3];
      if (v20 || (result = sub_1B78020F8(), (result)) && (v15 == v18 ? (v21 = v16 == v19) : (v21 = 0), v21))
      {
        v116 = 0;
      }

      else
      {
        result = sub_1B78020F8();
        v116 = result;
      }

      v5 = v113;
      v8 = v108;
      v9 = v104;
      v7 = v104 + 2;
      if (v104 + 2 < v111)
      {
        v22 = (v104 + 2);
        v23 = (v11 + 88 * v104 + 112);
        v24 = v23;
        while (1)
        {
          v114 = v5;
          v118 = v24 + 11;
          v25 = v23[12];
          v26 = v23[13];
          v28 = v23[1];
          v27 = v23[2];
          v29 = v23[10] == *(v23 - 1) && v24[11] == *v23;
          if (v29 || (result = sub_1B78020F8(), (result)) && (v25 == v28 ? (v30 = v26 == v27) : (v30 = 0), v30))
          {
            v5 = v114;
            v8 = v108;
            if (v116)
            {
              v7 = v22;
              v9 = v104;
              if (v7 < v104)
              {
                goto LABEL_149;
              }

              goto LABEL_35;
            }
          }

          else
          {
            result = sub_1B78020F8();
            v5 = v114;
            v8 = v108;
            if ((v116 ^ result))
            {
              v7 = v22;
LABEL_32:
              v9 = v104;
              break;
            }
          }

          v24 = v118;
          v23 = v118;
          ++v22;
          v7 = v111;
          if (v111 == v22)
          {
            goto LABEL_32;
          }
        }
      }

      if (v116)
      {
        if (v7 < v9)
        {
          goto LABEL_149;
        }

LABEL_35:
        if (v9 < v7)
        {
          v31 = v9;
          v32 = 88 * v7 - 88;
          v33 = 88 * v31;
          v34 = v7;
          do
          {
            if (v31 != --v7)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_155;
              }

              v36 = v35 + v32;
              v124 = *(v35 + v33 + 32);
              v126 = *(v35 + v33 + 48);
              v128 = *(v35 + v33 + 64);
              v130 = *(v35 + v33 + 80);
              v120 = *(v35 + v33);
              v122 = *(v35 + v33 + 16);
              result = memmove((v35 + v33), (v35 + v32), 0x58uLL);
              *(v36 + 32) = v124;
              *(v36 + 48) = v126;
              *(v36 + 64) = v128;
              *(v36 + 80) = v130;
              *v36 = v120;
              *(v36 + 16) = v122;
            }

            ++v31;
            v32 -= 88;
            v33 += 88;
          }

          while (v31 < v7);
          v8 = v108;
          v7 = v34;
          v9 = v104;
        }
      }
    }

    v37 = a3[1];
    if (v7 < v37)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_148;
      }

      if (v7 - v9 < a4)
      {
        v38 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_150;
        }

        if (v38 >= v37)
        {
          v38 = a3[1];
        }

        if (v38 < v9)
        {
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (v7 != v38)
        {
          break;
        }
      }
    }

LABEL_67:
    if (v7 < v9)
    {
      goto LABEL_147;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B723E420(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v52 = *(v8 + 2);
    v51 = *(v8 + 3);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      result = sub_1B723E420((v51 > 1), v52 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v53;
    v54 = &v8[16 * v52];
    *(v54 + 4) = v9;
    *(v54 + 5) = v7;
    v55 = *v106;
    if (!*v106)
    {
      goto LABEL_157;
    }

    if (v52)
    {
      while (1)
      {
        v56 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v57 = *(v8 + 4);
          v58 = *(v8 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_87:
          if (v60)
          {
            goto LABEL_136;
          }

          v73 = &v8[16 * v53];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_139;
          }

          v79 = &v8[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_142;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_143;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v53 - 2;
            }

            goto LABEL_108;
          }

          goto LABEL_101;
        }

        v83 = &v8[16 * v53];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_101:
        if (v78)
        {
          goto LABEL_138;
        }

        v86 = &v8[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_141;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_108:
        v94 = v56 - 1;
        if (v56 - 1 >= v53)
        {
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
          goto LABEL_151;
        }

        if (!*a3)
        {
          goto LABEL_154;
        }

        v95 = *&v8[16 * v94 + 32];
        v96 = *&v8[16 * v56 + 40];
        sub_1B74B006C((*a3 + 88 * v95), (*a3 + 88 * *&v8[16 * v56 + 32]), (*a3 + 88 * v96), v55);
        if (v5)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_132;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B77E4CA4(v8);
        }

        if (v94 >= *(v8 + 2))
        {
          goto LABEL_133;
        }

        v97 = &v8[16 * v94];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        result = sub_1B77E4C18(v56);
        v53 = *(v8 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v8[16 * v53 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_134;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_135;
      }

      v68 = &v8[16 * v53];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_137;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_140;
      }

      if (v72 >= v64)
      {
        v90 = &v8[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_144;
        }

        if (v59 < v93)
        {
          v56 = v53 - 2;
        }

        goto LABEL_108;
      }

      goto LABEL_87;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_120;
    }
  }

  v117 = *a3;
  v39 = *a3 + 88 * v7 - 88;
  v105 = v9;
  v40 = v9 - v7;
  v107 = v38;
LABEL_52:
  v110 = v39;
  v112 = v7;
  v109 = v40;
  v41 = v40;
  v42 = v39;
  while (1)
  {
    v119 = v41;
    v43 = *(v42 + 120);
    v44 = *(v42 + 128);
    v45 = *(v42 + 32);
    v46 = *(v42 + 40);
    v47 = *(v42 + 104) == *(v42 + 16) && *(v42 + 112) == *(v42 + 24);
    if (v47 || (sub_1B78020F8()) && (v43 == v45 ? (v48 = v44 == v46) : (v48 = 0), v48) || (result = sub_1B78020F8(), (result & 1) == 0))
    {
LABEL_51:
      ++v7;
      v39 = v110 + 88;
      v40 = v109 - 1;
      if (v112 + 1 != v107)
      {
        goto LABEL_52;
      }

      v7 = v107;
      v8 = v108;
      v9 = v105;
      goto LABEL_67;
    }

    if (!v117)
    {
      break;
    }

    v125 = *(v42 + 120);
    v127 = *(v42 + 136);
    v129 = *(v42 + 152);
    v131 = *(v42 + 168);
    v121 = *(v42 + 88);
    v123 = *(v42 + 104);
    v49 = *(v42 + 48);
    *(v42 + 120) = *(v42 + 32);
    *(v42 + 136) = v49;
    *(v42 + 152) = *(v42 + 64);
    *(v42 + 168) = *(v42 + 80);
    v50 = *(v42 + 16);
    *(v42 + 88) = *v42;
    *(v42 + 104) = v50;
    *(v42 + 32) = v125;
    *(v42 + 48) = v127;
    *(v42 + 64) = v129;
    *(v42 + 80) = v131;
    *v42 = v121;
    *(v42 + 16) = v123;
    v42 -= 88;
    v41 = v119 + 1;
    if (v119 == -1)
    {
      goto LABEL_51;
    }
  }

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
  return result;
}

uint64_t sub_1B74B006C(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 88;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 88;
  if (v9 < v11)
  {
    v12 = 88 * v9;
    if (__dst != __src || &__src[v12] <= __dst)
    {
      memmove(__dst, __src, v12);
    }

    v13 = &v4[v12];
    if (v8 < 88 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_52;
    }

    v39 = v5;
    while (1)
    {
      __dsta = v7;
      v14 = *(v6 + 2);
      v15 = *(v6 + 3);
      v16 = *(v6 + 4);
      v17 = *(v6 + 5);
      v43 = v6;
      v18 = *(v4 + 2);
      v19 = *(v4 + 3);
      __srca = v4;
      v20 = *(v4 + 4);
      v21 = *(v4 + 5);
      v22 = v14 == v18 && v15 == v19;
      if (v22 || (sub_1B78020F8()) && v16 == v20 && v17 == v21)
      {
        break;
      }

      if ((sub_1B78020F8() & 1) == 0)
      {
        break;
      }

      v24 = v43;
      v6 = v43 + 88;
      v25 = __dsta;
      v4 = __srca;
      if (__dsta != v43)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 = v25 + 88;
      if (v4 >= v13 || v6 >= v39)
      {
        v6 = v7;
        goto LABEL_52;
      }
    }

    v24 = __srca;
    v4 = __srca + 88;
    v25 = __dsta;
    v6 = v43;
    if (__dsta == __srca)
    {
      goto LABEL_22;
    }

LABEL_21:
    memmove(v25, v24, 0x58uLL);
    goto LABEL_22;
  }

  v26 = 88 * v11;
  if (__dst != a2 || &a2[v26] <= __dst)
  {
    memmove(__dst, a2, 88 * v11);
  }

  v13 = &v4[v26];
  if (v10 >= 88 && v6 > v7)
  {
    __srcb = v4;
    __dstb = v7;
    do
    {
      v44 = v6;
      v27 = v5 - 88;
      while (1)
      {
        v40 = v27;
        v28 = *(v13 - 7);
        v29 = *(v13 - 6);
        v30 = *(v6 - 7);
        v31 = *(v6 - 6);
        v32 = *(v13 - 9) == *(v6 - 9) && *(v13 - 8) == *(v6 - 8);
        if (!v32 && (sub_1B78020F8() & 1) == 0 || (v28 == v30 ? (v33 = v29 == v31) : (v33 = 0), !v33))
        {
          if (sub_1B78020F8())
          {
            break;
          }
        }

        v34 = (v13 - 88);
        if (v40 + 88 != v13)
        {
          memmove(v40, v13 - 88, 0x58uLL);
        }

        v27 = v40 - 88;
        v13 -= 88;
        v4 = __srcb;
        if (v34 <= __srcb)
        {
          v13 = v34;
          goto LABEL_52;
        }
      }

      v5 = v40;
      if (v40 + 88 != v6)
      {
        memmove(v40, v6 - 88, 0x58uLL);
      }

      v4 = __srcb;
      if (v13 <= __srcb)
      {
        break;
      }

      v6 -= 88;
    }

    while (v44 - 88 > __dstb);
    v6 = v44 - 88;
  }

LABEL_52:
  v35 = 88 * ((v13 - v4) / 88);
  if (v6 != v4 || v6 >= &v4[v35])
  {
    memmove(v6, v4, v35);
  }

  return 1;
}

BOOL _s10FinanceKit31ExtractedOrderFoundInMailBannerV16UniqueIdentifierO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v42[0] = *a1;
  v42[1] = v2;
  v42[2] = v5;
  v42[3] = v4;
  v43 = v6;
  v44 = v8;
  v45 = v7;
  v46 = v9;
  v47 = v10;
  v48 = v11;
  if (v6)
  {
    if (v6 == 1)
    {
      if (v11 == 1)
      {
        if (v3 == v8 && v2 == v7)
        {
          sub_1B7263158(v3, v2, v9, v10, 1);
          v12 = v3;
          v13 = v2;
          v14 = v5;
          v15 = v4;
          v16 = 1;
LABEL_21:
          sub_1B7263158(v12, v13, v14, v15, v16);
          sub_1B7205418(v42, &qword_1EB991BA8);
          return 1;
        }

        v29 = v9;
        v30 = v10;
        v31 = sub_1B78020F8();
        sub_1B7263158(v8, v7, v29, v30, 1);
        v32 = v3;
        v33 = v2;
        v34 = v5;
        v35 = v4;
        v36 = 1;
        goto LABEL_28;
      }
    }

    else if (v11 == 2)
    {
      if (v3 == v8 && v2 == v7 || (v20 = v9, v21 = v10, v22 = sub_1B78020F8(), v9 = v20, v10 = v21, (v22 & 1) != 0))
      {
        if (v5 == v9 && v4 == v10)
        {
          sub_1B7263158(v8, v7, v5, v4, 2);
          v12 = v3;
          v13 = v2;
          v14 = v5;
          v15 = v4;
          v16 = 2;
          goto LABEL_21;
        }

        v37 = v9;
        v38 = v10;
        v31 = sub_1B78020F8();
        sub_1B7263158(v8, v7, v37, v38, 2);
        v32 = v3;
        v33 = v2;
        v34 = v5;
        v35 = v4;
        v36 = 2;
LABEL_28:
        sub_1B7263158(v32, v33, v34, v35, v36);
        sub_1B7205418(v42, &qword_1EB991BA8);
        return v31 & 1;
      }

      sub_1B7263158(v8, v7, v20, v21, 2);
      v24 = v3;
      v25 = v2;
      v26 = v5;
      v27 = v4;
      v28 = 2;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v11)
  {
LABEL_22:
    sub_1B7263158(v8, v7, v9, v10, v11);
    v24 = v3;
    v25 = v2;
    v26 = v5;
    v27 = v4;
    v28 = v6;
LABEL_23:
    sub_1B7263158(v24, v25, v26, v27, v28);
    sub_1B7205418(v42, &qword_1EB991BA8);
    return 0;
  }

  if (v3 != v8 || v2 != v7)
  {
    v17 = v9;
    v18 = v10;
    v19 = sub_1B78020F8();
    v9 = v17;
    v10 = v18;
    if ((v19 & 1) == 0)
    {
      sub_1B7263158(v8, v7, v17, v18, 0);
      v24 = v3;
      v25 = v2;
      v26 = v5;
      v27 = v4;
      v28 = 0;
      goto LABEL_23;
    }
  }

  if (v5 == v9 && v4 == v10)
  {
    sub_1B7263158(v8, v7, v5, v4, 0);
    v12 = v3;
    v13 = v2;
    v14 = v5;
    v15 = v4;
    v16 = 0;
    goto LABEL_21;
  }

  v39 = v9;
  v40 = v10;
  v41 = sub_1B78020F8();
  sub_1B7263158(v8, v7, v39, v40, 0);
  sub_1B7263158(v3, v2, v5, v4, 0);
  sub_1B7205418(v42, &qword_1EB991BA8);
  return (v41 & 1) != 0;
}

unint64_t sub_1B74B07A8()
{
  result = qword_1EB995C40;
  if (!qword_1EB995C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995C40);
  }

  return result;
}

unint64_t sub_1B74B07FC()
{
  result = qword_1EB995C48;
  if (!qword_1EB995C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995C48);
  }

  return result;
}

unint64_t sub_1B74B0850()
{
  result = qword_1EB995C50;
  if (!qword_1EB995C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995C50);
  }

  return result;
}

unint64_t sub_1B74B08A4()
{
  result = qword_1EB995C58;
  if (!qword_1EB995C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995C58);
  }

  return result;
}

unint64_t sub_1B74B08F8()
{
  result = qword_1EDAF6A10;
  if (!qword_1EDAF6A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF6A10);
  }

  return result;
}

uint64_t sub_1B74B094C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CascadeExtractedOrder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B74B09B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CascadeExtractedOrder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL _s10FinanceKit31ExtractedOrderFoundInMailBannerV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v20 = *(a1 + 56);
  v21 = *(a1 + 48);
  v18 = *(a1 + 72);
  v19 = *(a1 + 64);
  v17 = *(a1 + 80);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v15 = *(a2 + 56);
  v16 = *(a2 + 48);
  v10 = *(a2 + 72);
  v14 = *(a2 + 64);
  v11 = *(a2 + 80);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (sub_1B78020F8()) && (v2 == v6 && v4 == v7 || (sub_1B78020F8()) && (v3 == v8 && v5 == v9 || (sub_1B78020F8()))
  {
    v27 = v21;
    v28 = v20;
    v29 = v19;
    v30 = v18;
    v31 = v17;
    v22 = v16;
    v23 = v15;
    v24 = v14;
    v25 = v10;
    v26 = v11;
    sub_1B7263158(v21, v20, v19, v18, v17);
    sub_1B7263158(v16, v15, v14, v10, v11);
    v12 = _s10FinanceKit31ExtractedOrderFoundInMailBannerV16UniqueIdentifierO2eeoiySbAE_AEtFZ_0(&v27, &v22);
    sub_1B726321C(v22, v23, v24, v25, v26);
    sub_1B726321C(v27, v28, v29, v30, v31);
  }

  else
  {
    return 0;
  }

  return v12;
}

uint64_t _s10FinanceKit39ExtractedOrderFoundInMailBannerProviderC0H5ErrorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v36[0] = v4;
  v36[1] = v3;
  v36[2] = v6;
  v36[3] = v5;
  v37 = v7;
  v38 = v8;
  v39 = v9;
  v40 = v10;
  v41 = v11;
  v42 = v12;
  if (!v7)
  {
    if (!v12)
    {
      if (v4 != v8 || v3 != v9)
      {
        v26 = v8;
        v27 = v9;
        v28 = v10;
        v29 = v11;
        v30 = sub_1B78020F8();
        sub_1B74B2BAC(v26, v27, v28, v29, 0);
        sub_1B74B2BAC(v4, v3, v6, v5, 0);
        sub_1B7205418(v36, &qword_1EB995EF8);
        return v30 & 1;
      }

      sub_1B74B2BAC(v4, v3, v10, v11, 0);
      sub_1B74B2BAC(v4, v3, v6, v5, 0);
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if (v7 != 1)
  {
    if (!(v6 | v3 | v4 | v5))
    {
      if (v12 == 2 && !(v10 | v9 | v8 | v11))
      {
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    v19 = v6 | v3 | v5;
    if (v4 != 1 || v19)
    {
      if (v4 != 2 || v19)
      {
        if (v4 != 3 || v19)
        {
          if (v4 != 4 || v19)
          {
            if (v12 != 2 || v8 != 5)
            {
              goto LABEL_46;
            }
          }

          else if (v12 != 2 || v8 != 4)
          {
            goto LABEL_46;
          }
        }

        else if (v12 != 2 || v8 != 3)
        {
          goto LABEL_46;
        }
      }

      else if (v12 != 2 || v8 != 2)
      {
        goto LABEL_46;
      }
    }

    else if (v12 != 2 || v8 != 1)
    {
      goto LABEL_46;
    }

    if (!(v10 | v9 | v11))
    {
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if (v12 != 1)
  {
LABEL_46:
    sub_1B74B2BAC(v8, v9, v10, v11, v12);
    v31 = v4;
    v32 = v3;
    v33 = v6;
    v34 = v5;
    v35 = v7;
    goto LABEL_47;
  }

  if (v4 != v8 || v3 != v9)
  {
    v13 = v8;
    v14 = v9;
    v15 = v10;
    v16 = v11;
    v17 = sub_1B78020F8();
    v9 = v14;
    v10 = v15;
    v11 = v16;
    v18 = v17;
    v8 = v13;
    if ((v18 & 1) == 0)
    {
      sub_1B74B2BAC(v13, v14, v15, v16, 1);
      v31 = v4;
      v32 = v3;
      v33 = v6;
      v34 = v5;
      v35 = 1;
LABEL_47:
      sub_1B74B2BAC(v31, v32, v33, v34, v35);
      sub_1B7205418(v36, &qword_1EB995EF8);
      return 0;
    }
  }

  if (v6 == v10 && v5 == v11)
  {
    sub_1B74B2BAC(v8, v9, v6, v5, 1);
    sub_1B74B2BAC(v4, v3, v6, v5, 1);
LABEL_45:
    sub_1B7205418(v36, &qword_1EB995EF8);
    return 1;
  }

  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = sub_1B78020F8();
  sub_1B74B2BAC(v20, v21, v22, v23, 1);
  sub_1B74B2BAC(v4, v3, v6, v5, 1);
  sub_1B7205418(v36, &qword_1EB995EF8);
  result = 1;
  if ((v24 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B74B0F30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4F63697373616C63 && a2 == 0xEC00000072656472;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574636172747865 && a2 == 0xEE00726564724F64 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4F65646163736163 && a2 == 0xEC00000072656472)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1B74B105C()
{
  result = qword_1EB995C98;
  if (!qword_1EB995C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995C98);
  }

  return result;
}

unint64_t sub_1B74B10B0()
{
  result = qword_1EB995CA0;
  if (!qword_1EB995CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995CA0);
  }

  return result;
}

unint64_t sub_1B74B1104()
{
  result = qword_1EB995CB0;
  if (!qword_1EB995CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995CB0);
  }

  return result;
}

unint64_t sub_1B74B1158()
{
  result = qword_1EB995D00;
  if (!qword_1EB995D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995D00);
  }

  return result;
}

unint64_t sub_1B74B11AC()
{
  result = qword_1EB995D08;
  if (!qword_1EB995D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995D08);
  }

  return result;
}

unint64_t sub_1B74B1200()
{
  result = qword_1EB995D10;
  if (!qword_1EB995D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995D10);
  }

  return result;
}

unint64_t sub_1B74B1254()
{
  result = qword_1EB995D18;
  if (!qword_1EB995D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995D18);
  }

  return result;
}

unint64_t sub_1B74B12A8()
{
  result = qword_1EB995D20;
  if (!qword_1EB995D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995D20);
  }

  return result;
}

unint64_t sub_1B74B12FC()
{
  result = qword_1EB995D28;
  if (!qword_1EB995D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995D28);
  }

  return result;
}

unint64_t sub_1B74B1350()
{
  result = qword_1EB995D30;
  if (!qword_1EB995D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995D30);
  }

  return result;
}

unint64_t sub_1B74B13A4()
{
  result = qword_1EB995D38;
  if (!qword_1EB995D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995D38);
  }

  return result;
}

unint64_t sub_1B74B13F8()
{
  result = qword_1EB995D40;
  if (!qword_1EB995D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995D40);
  }

  return result;
}

uint64_t sub_1B74B144C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    return sub_1B74B1458(a1, a2, a3, a4, a5);
  }

  else
  {
  }
}

uint64_t sub_1B74B1458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

unint64_t sub_1B74B14BC()
{
  result = qword_1EDAF6498;
  if (!qword_1EDAF6498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB995D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF6498);
  }

  return result;
}

unint64_t sub_1B74B1524()
{
  result = qword_1EB995DA8;
  if (!qword_1EB995DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995DA8);
  }

  return result;
}

unint64_t sub_1B74B1578()
{
  result = qword_1EDAF9660[0];
  if (!qword_1EDAF9660[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDAF9660);
  }

  return result;
}

unint64_t sub_1B74B15D0()
{
  result = qword_1EB995DB0;
  if (!qword_1EB995DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995DB0);
  }

  return result;
}

unint64_t sub_1B74B1628()
{
  result = qword_1EB995DB8;
  if (!qword_1EB995DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995DB8);
  }

  return result;
}

uint64_t sub_1B74B1688(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1B74B16D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit39ExtractedOrderFoundInMailBannerProviderC0H5ErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1B74B17A0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_1B74B18B0()
{
  result = qword_1EB995DC0;
  if (!qword_1EB995DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995DC0);
  }

  return result;
}

unint64_t sub_1B74B1908()
{
  result = qword_1EB995DC8;
  if (!qword_1EB995DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995DC8);
  }

  return result;
}

unint64_t sub_1B74B1960()
{
  result = qword_1EB995DD0;
  if (!qword_1EB995DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995DD0);
  }

  return result;
}

unint64_t sub_1B74B19B8()
{
  result = qword_1EB995DD8;
  if (!qword_1EB995DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995DD8);
  }

  return result;
}

unint64_t sub_1B74B1A10()
{
  result = qword_1EB995DE0;
  if (!qword_1EB995DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995DE0);
  }

  return result;
}

unint64_t sub_1B74B1A68()
{
  result = qword_1EB995DE8;
  if (!qword_1EB995DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995DE8);
  }

  return result;
}

unint64_t sub_1B74B1AC0()
{
  result = qword_1EB995DF0;
  if (!qword_1EB995DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995DF0);
  }

  return result;
}

unint64_t sub_1B74B1B18()
{
  result = qword_1EB995DF8;
  if (!qword_1EB995DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995DF8);
  }

  return result;
}

unint64_t sub_1B74B1B70()
{
  result = qword_1EB995E00;
  if (!qword_1EB995E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995E00);
  }

  return result;
}

unint64_t sub_1B74B1BC8()
{
  result = qword_1EB995E08;
  if (!qword_1EB995E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995E08);
  }

  return result;
}

unint64_t sub_1B74B1C20()
{
  result = qword_1EB995E10;
  if (!qword_1EB995E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995E10);
  }

  return result;
}

unint64_t sub_1B74B1C78()
{
  result = qword_1EB995E18;
  if (!qword_1EB995E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995E18);
  }

  return result;
}

unint64_t sub_1B74B1CD0()
{
  result = qword_1EB995E20;
  if (!qword_1EB995E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995E20);
  }

  return result;
}

unint64_t sub_1B74B1D28()
{
  result = qword_1EB995E28;
  if (!qword_1EB995E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995E28);
  }

  return result;
}

unint64_t sub_1B74B1D80()
{
  result = qword_1EB995E30;
  if (!qword_1EB995E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995E30);
  }

  return result;
}

unint64_t sub_1B74B1DD8()
{
  result = qword_1EB995E38;
  if (!qword_1EB995E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995E38);
  }

  return result;
}

unint64_t sub_1B74B1E30()
{
  result = qword_1EB995E40;
  if (!qword_1EB995E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995E40);
  }

  return result;
}

unint64_t sub_1B74B1E88()
{
  result = qword_1EB995E48;
  if (!qword_1EB995E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995E48);
  }

  return result;
}

unint64_t sub_1B74B1EE0()
{
  result = qword_1EB995E50;
  if (!qword_1EB995E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995E50);
  }

  return result;
}

unint64_t sub_1B74B1F38()
{
  result = qword_1EB995E58;
  if (!qword_1EB995E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995E58);
  }

  return result;
}

unint64_t sub_1B74B1F90()
{
  result = qword_1EB995E60;
  if (!qword_1EB995E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995E60);
  }

  return result;
}

unint64_t sub_1B74B1FE8()
{
  result = qword_1EB995E68;
  if (!qword_1EB995E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995E68);
  }

  return result;
}

unint64_t sub_1B74B2040()
{
  result = qword_1EB995E70;
  if (!qword_1EB995E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995E70);
  }

  return result;
}

unint64_t sub_1B74B2098()
{
  result = qword_1EB995E78;
  if (!qword_1EB995E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995E78);
  }

  return result;
}

unint64_t sub_1B74B20F0()
{
  result = qword_1EB995E80;
  if (!qword_1EB995E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995E80);
  }

  return result;
}

unint64_t sub_1B74B2148()
{
  result = qword_1EB995E88;
  if (!qword_1EB995E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995E88);
  }

  return result;
}

unint64_t sub_1B74B21A0()
{
  result = qword_1EB995E90;
  if (!qword_1EB995E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995E90);
  }

  return result;
}

unint64_t sub_1B74B21F8()
{
  result = qword_1EB995E98;
  if (!qword_1EB995E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995E98);
  }

  return result;
}

unint64_t sub_1B74B2250()
{
  result = qword_1EB995EA0;
  if (!qword_1EB995EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995EA0);
  }

  return result;
}

unint64_t sub_1B74B22A8()
{
  result = qword_1EB995EA8;
  if (!qword_1EB995EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995EA8);
  }

  return result;
}

unint64_t sub_1B74B2300()
{
  result = qword_1EB995EB0;
  if (!qword_1EB995EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995EB0);
  }

  return result;
}

unint64_t sub_1B74B2358()
{
  result = qword_1EB995EB8;
  if (!qword_1EB995EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995EB8);
  }

  return result;
}

unint64_t sub_1B74B23B0()
{
  result = qword_1EB995EC0;
  if (!qword_1EB995EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995EC0);
  }

  return result;
}

unint64_t sub_1B74B2408()
{
  result = qword_1EB995EC8;
  if (!qword_1EB995EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995EC8);
  }

  return result;
}

unint64_t sub_1B74B2460()
{
  result = qword_1EB995ED0;
  if (!qword_1EB995ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995ED0);
  }

  return result;
}

unint64_t sub_1B74B24B8()
{
  result = qword_1EB995ED8;
  if (!qword_1EB995ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995ED8);
  }

  return result;
}

uint64_t sub_1B74B250C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496567617373656DLL && a2 == 0xE900000000000044;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D754E726564726FLL && a2 == 0xEB00000000726562 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7873F00 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B74B267C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4465727574616566 && a2 == 0xEF64656C62617369;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7881370 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7881390 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B78813B0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B78813D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEF64656B636F6C42 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B78813F0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B7881410 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B74B291C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995DA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B74B298C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995DA0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7201BB0;

  return sub_1B74AEF68(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1B74B2AB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B74B2B18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995EE8);

  return sub_1B74AE3D0();
}

uint64_t sub_1B74B2BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

unint64_t ImageProcessingImplementation.renderThumbnail(with:size:scale:options:)(size_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  v8 = *(a2 + 10);
  v9 = a2[2];
  v10 = *(a2 + 24);
  v14 = *a2;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  result = sub_1B774ED80(a1, &v14, a3, a4, a5);
  if (!v5)
  {
    v12 = result;
    v13 = CGImageRef.pngData.getter();

    return v13;
  }

  return result;
}

unint64_t sub_1B74B2CE8(size_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  v8 = *(a2 + 10);
  v9 = a2[2];
  v10 = *(a2 + 24);
  v14 = *a2;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  result = sub_1B774ED80(a1, &v14, a3, a4, a5);
  if (!v5)
  {
    v12 = result;
    v13 = CGImageRef.pngData.getter();

    return v13;
  }

  return result;
}

uint64_t _s10FinanceKit29ImageProcessingImplementationC15backgroundColor03forC8WithDataSo10CGColorRefaSg10Foundation0J0V_tF_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B72CE100(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7808C50;
  v5 = *MEMORY[0x1E695F828];
  *(inited + 32) = *MEMORY[0x1E695F828];
  v6 = sub_1B7449284();
  v7 = v5;
  *(inited + 40) = sub_1B7801538();
  v8 = *MEMORY[0x1E695F7F0];
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  v9 = v8;
  v10 = sub_1B7801528();
  *(inited + 104) = v6;
  *(inited + 80) = v10;
  v11 = sub_1B7202E74(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F588);
  swift_arrayDestroy();
  v12 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
  v13 = static ColorExtractor.backgroundColor(forImage:contextOptions:alwaysEstimateDominantColor:)(v12, v11, 0);

  return v13;
}

void static ManagedOrderImageData.getOrCreate(data:width:height:in:extractBackgroundColorWith:)(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v64 = a5;
  v54 = a4;
  v52 = a3;
  v9 = sub_1B7800478();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1B78006D8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v51[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B78006C8();
  sub_1B720ABEC(a1, a2);
  sub_1B72B82D4(a1, a2);
  v53 = a1;
  v56 = a2;
  sub_1B720A388(a1, a2);
  sub_1B78006B8();
  v62 = v9;
  v63 = sub_1B74B3AE0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  (*(v10 + 16))(boxed_opaque_existential_1, v12, v9);
  __swift_project_boxed_opaque_existential_1(v61, v62);
  sub_1B77FEDA8();
  (*(v10 + 8))(v12, v9);
  v18 = v58;
  __swift_destroy_boxed_opaque_existential_1(v61);
  (*(v14 + 8))(v16, v13);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v60.receiver = ObjCClassFromMetadata;
  v60.super_class = &OBJC_METACLASS____TtC10FinanceKit21ManagedOrderImageData;
  v20 = objc_msgSendSuper2(&v60, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B7807CD0;
  v22 = sub_1B77FF598();
  *(v21 + 56) = sub_1B7205540(0, &qword_1EDAF93D0);
  *(v21 + 64) = sub_1B720D718();
  *(v21 + 32) = v22;
  v23 = v64;
  v24 = sub_1B78010E8();
  [v20 setPredicate_];

  v25 = sub_1B7801498();
  if (v6)
  {

    sub_1B720A388(v18, *(&v18 + 1));
    return;
  }

  v26 = v54;
  v57 = *(&v18 + 1);
  v27 = v55;
  v28 = v56;
  v29 = v53;
  if (v25 >> 62)
  {
    v34 = v25;
    v35 = sub_1B7801958();
    v25 = v34;
    v23 = v64;
    if (v35)
    {
      goto LABEL_5;
    }
  }

  else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v25 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1B8CA5DC0](0);
      v30 = v29;
      goto LABEL_8;
    }

    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v30 = v29;
      v31 = *(v25 + 32);
LABEL_8:
      v32 = v27;

      v33 = v31;
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_31;
  }

  v33 = [objc_allocWithZone(ObjCClassFromMetadata) initWithContext_];
  v30 = v29;
  v36 = v28;
  v37 = sub_1B77FF598();
  [v33 setData_];

  v38 = sub_1B77FF598();
  [v33 setDataHash_];

  v39 = v36 >> 62;
  if ((v36 >> 62) <= 1)
  {
    v32 = v27;
    v40 = v26;
    if (!v39)
    {
      v41 = BYTE6(v56);
LABEL_22:
      v44 = v52;
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v32 = v27;
  v40 = v26;
  if (v39 != 2)
  {
LABEL_21:
    v41 = 0;
    goto LABEL_22;
  }

  v43 = *(v30 + 16);
  v42 = *(v30 + 24);
  v41 = v42 - v43;
  v44 = v52;
  if (__OFSUB__(v42, v43))
  {
LABEL_32:
    __break(1u);
    return;
  }

  if (v41 < 0xFFFFFFFF80000000)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v41 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_18:
    v41 = (HIDWORD(v30) - v30);
    v44 = v52;
    if (!__OFSUB__(HIDWORD(v30), v30))
    {
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_23:
  [v33 setDataLength_];
  [v33 setWidth_];
  [v33 setHeight_];
LABEL_24:
  v45 = [v33 storedBackgroundColorValue];

  if (v45)
  {

    sub_1B720A388(v18, *(&v18 + 1));
  }

  else
  {
    sub_1B748402C(v32, &v58);
    if (v59)
    {
      sub_1B71E4C44(&v58, v61);
      v46 = v62;
      v47 = v63;
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v48 = (*(v47 + 8))(v30, v56, v46, v47);
      v49 = objc_allocWithZone(type metadata accessor for StorableColor());
      v50 = StorableColor.init(color:)(v48);
      [v33 setStoredBackgroundColorValue_];
      sub_1B720A388(v18, *(&v18 + 1));

      __swift_destroy_boxed_opaque_existential_1(v61);
    }

    else
    {
      sub_1B720A388(v18, *(&v18 + 1));

      sub_1B74B3B38(&v58);
    }
  }
}

Swift::Void __swiftcall ManagedOrderImageData.willSave()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_willSave);
  if (([v0 isDeleted] & 1) == 0)
  {
    v1 = sub_1B7800838();
    v2 = [v0 objectIDsForRelationshipNamed_];

    sub_1B7205540(0, &qword_1EB98F930);
    v3 = sub_1B7800C38();

    if (!(v3 >> 62))
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v4)
      {
        return;
      }

      goto LABEL_4;
    }

    v6 = sub_1B7801958();

    if (!v6)
    {
LABEL_4:
      v5 = [v0 managedObjectContext];
      [v5 deleteObject_];
    }
  }
}

uint64_t static ManagedOrderImageData.hash(imageData:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B7800478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B78006D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B78006C8();
  sub_1B720ABEC(a1, a2);
  sub_1B72B82D4(a1, a2);
  sub_1B720A388(a1, a2);
  sub_1B78006B8();
  v17 = v4;
  v18 = sub_1B74B3AE0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(v5 + 16))(boxed_opaque_existential_1, v7, v4);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_1B77FEDA8();
  (*(v5 + 8))(v7, v4);
  v13 = v15;
  __swift_destroy_boxed_opaque_existential_1(v16);
  (*(v9 + 8))(v11, v8);
  return v13;
}

id ManagedOrderImageData.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderImageData.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderImageData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B74B3AE0()
{
  result = qword_1EB98F940;
  if (!qword_1EB98F940)
  {
    sub_1B7800478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F940);
  }

  return result;
}

uint64_t sub_1B74B3B38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BackgroundRefreshAlertXPCService.__allocating_init()()
{
  refreshed = type metadata accessor for BackgroundRefreshAlertXPCService.ContinuationState();
  MEMORY[0x1EEE9AC00](refreshed - 8);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = swift_allocObject();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F00);
  (*(*(v4 - 8) + 56))(v2, 1, 2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F08);
  v5 = swift_allocObject();
  *(v5 + ((*(*v5 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1B74B3EFC(v2, v5 + *(*v5 + *MEMORY[0x1E69E6B68] + 16));
  *(v3 + 16) = v5;
  return v3;
}

uint64_t BackgroundRefreshAlertXPCService.init()()
{
  refreshed = type metadata accessor for BackgroundRefreshAlertXPCService.ContinuationState();
  MEMORY[0x1EEE9AC00](refreshed - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F00);
  (*(*(v4 - 8) + 56))(v3, 1, 2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F08);
  v5 = swift_allocObject();
  *(v5 + ((*(*v5 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1B74B3EFC(v3, v5 + *(*v5 + *MEMORY[0x1E69E6B68] + 16));
  *(v0 + 16) = v5;
  return v0;
}

uint64_t type metadata accessor for BackgroundRefreshAlertXPCService.ContinuationState()
{
  result = qword_1EB995F10;
  if (!qword_1EB995F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B74B3EFC(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for BackgroundRefreshAlertXPCService.ContinuationState();
  (*(*(refreshed - 8) + 32))(a2, a1, refreshed);
  return a2;
}

void BackgroundRefreshAlertXPCService.listenForResponse(continuation:)()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B74B40B8(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1B74B3FF8(uint64_t a1, uint64_t a2)
{
  sub_1B74B44D8(a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F00);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 2, v4);
}

uint64_t sub_1B74B40D4(uint64_t a1, void *a2, char a3)
{
  refreshed = type metadata accessor for BackgroundRefreshAlertXPCService.ContinuationState();
  MEMORY[0x1EEE9AC00](refreshed - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F00);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15[-v11];
  sub_1B74B3EFC(a1, v8);
  if ((*(v10 + 48))(v8, 2, v9))
  {
    sub_1B74B44D8(v8);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    if (a3)
    {
      v16 = a2;
      v13 = a2;
      sub_1B7800CF8();
    }

    else
    {
      v15[7] = a2;
      sub_1B7800D08();
    }

    (*(v10 + 8))(v12, v9);
  }

  return (*(v10 + 56))(a1, 2, 2, v9);
}

void BackgroundRefreshAlertXPCService.updated(_:)(uint64_t a1)
{
  refreshed = type metadata accessor for BackgroundRefreshAlertXPCService.ContinuationState();
  MEMORY[0x1EEE9AC00](refreshed - 8);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-v8];
  v10 = *(a1 + OBJC_IVAR___XPCBackgroundRefreshAlertResult_value);
  v11 = *(v1 + 16);
  v12 = *(*v11 + *MEMORY[0x1E69E6B68] + 16);
  v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v11 + v13));
  sub_1B74B3EFC(v11 + v12, v5);
  if ((*(v7 + 48))(v5, 2, v6))
  {
    sub_1B74B44D8(v5);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v14[15] = v10;
    sub_1B7800D08();
    (*(v7 + 8))(v9, v6);
  }

  (*(v7 + 56))(v11 + v12, 2, 2, v6);
  os_unfair_lock_unlock((v11 + v13));
}

uint64_t sub_1B74B44D8(uint64_t a1)
{
  refreshed = type metadata accessor for BackgroundRefreshAlertXPCService.ContinuationState();
  (*(*(refreshed - 8) + 8))(a1, refreshed);
  return a1;
}

Swift::Void __swiftcall BackgroundRefreshAlertXPCService.failed(with:)(NSError *with)
{
  v2 = *(v1 + 16);
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_1B74B46D8(v2 + v3);
  os_unfair_lock_unlock((v2 + v4));
}

void sub_1B74B47C8()
{
  refreshed = type metadata accessor for BackgroundRefreshAlertXPCService.ContinuationState();
  MEMORY[0x1EEE9AC00](refreshed - 8);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F00);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-v6];
  v8 = *(v0 + 16);
  v9 = *(*v8 + *MEMORY[0x1E69E6B68] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_1B74B3EFC(v8 + v9, v3);
  if ((*(v5 + 48))(v3, 2, v4))
  {
    sub_1B74B44D8(v3);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v11[15] = 2;
    sub_1B7800D08();
    (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 56))(v8 + v9, 2, 2, v4);
  os_unfair_lock_unlock((v8 + v10));
}

void BackgroundRefreshAlertXPCService.invalidated(with:)()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B74B4DF4(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t BackgroundRefreshAlertXPCService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1B74B4AC8()
{
  v1 = *(*v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B74B40D4(v1 + v2, 2, 0);

  os_unfair_lock_unlock((v1 + v3));
}

void sub_1B74B4B70()
{
  v1 = *(*v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B74B4DF4(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void sub_1B74B4C14()
{
  v1 = *(*v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B74B4E10(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1B74B4D28()
{
  sub_1B74B4D80();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1B74B4D80()
{
  if (!qword_1EB995F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110);
    v0 = sub_1B7800D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB995F20);
    }
  }
}

double ManagedOrderLineItem.amount.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 priceAmount];
  if (v4)
  {
    v5 = v4;
    v6 = [v2 priceCurrency];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B7800868();
      v10 = v9;

      [v5 decimalValue];
      result = *&v12;
      *a1 = v12;
      *(a1 + 16) = v13;
      *(a1 + 24) = v8;
      *(a1 + 32) = v10;
      return result;
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id ManagedOrderLineItem.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderLineItem.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderLineItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ManagedOrderLineItem.rawOrderLineItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 image];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7800868();
    v38 = v7;
    v39 = v6;
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  v37 = [v2 quantity];
  v8 = [v2 subtitle];
  if (v8)
  {
    v35 = *&v8[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key + 8];
    v36 = *&v8[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
    v9 = v8;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v10 = [v2 title];
  v11 = *&v10[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key + 8];
  v34 = *&v10[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];

  v12 = [v2 priceAmount];
  if (v12)
  {
    v13 = v12;
    v14 = [v2 priceCurrency];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1B7800868();
      v32 = v17;
      v33 = v16;

      [v13 decimalValue];
      v18 = v40;
      v19 = v41;
      v20 = v42;

      goto LABEL_12;
    }
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v32 = 0;
  v33 = 0;
LABEL_12:
  v21 = [v2 sku];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1B7800868();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = [v2 gtin];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1B7800868();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  *a1 = v39;
  a1[1] = v38;
  a1[2] = v37;
  a1[3] = v36;
  a1[4] = v35;
  a1[5] = v34;
  a1[6] = v11;

  a1[7] = v18;
  a1[8] = v19;
  a1[9] = v20;
  a1[10] = v33;
  a1[11] = v32;
  a1[12] = v23;
  a1[13] = v25;
  a1[14] = v28;
  a1[15] = v30;
  return result;
}

id static ManagedOrderLineItem.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit20ManagedOrderLineItem;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedOrderLineItem.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

id ManagedOrderLineItem.__allocating_init(_:bundle:context:)(__int128 *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1[4];
  v7 = a1[6];
  v8 = a1[7];
  v56 = a1[5];
  v57 = v7;
  v58 = v8;
  v9 = a1[1];
  v51 = *a1;
  v52 = v9;
  v10 = a1[3];
  v53 = a1[2];
  v54 = v10;
  v55 = v6;
  v11 = [objc_allocWithZone(v3) initWithContext_];
  v12 = v11;
  if (*(&v51 + 1))
  {

    v13 = sub_1B7800838();
  }

  else
  {
    v13 = 0;
  }

  [v11 setImage_];

  v14 = [v11 setQuantity_];
  if (v53)
  {
    MEMORY[0x1EEE9AC00](v14);
    v37 = v15;
    v38 = v53;
    v39 = 0x726564726FLL;
    v40 = 0xE500000000000000;

    v16 = sub_1B723940C(sub_1B726357C, v36);
  }

  else
  {
    v16 = 0;
  }

  [v11 setSubtitle_];

  v44 = a2;
  MEMORY[0x1EEE9AC00](v17);
  v37 = v18;
  v38 = v19;
  v39 = 0x726564726FLL;
  v40 = 0xE500000000000000;
  v20 = sub_1B723940C(sub_1B7262E4C, v36);
  [v11 setTitle_];

  v21 = *(&v56 + 1);
  if (*(&v56 + 1))
  {
    v22 = *(&v55 + 1);
    v43 = v56;
    v24 = *(&v54 + 1);
    v23 = v55;
    v25 = HIDWORD(*(&v54 + 1));
    v26 = HIWORD(*(&v54 + 1));
    v27 = v4;
    v28 = v55 >> 16;
    v29 = DWORD1(v55);
    v41 = WORD3(v55);
    v42 = *(&v55 + 1) >> 16;
    v30 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    LODWORD(v46) = v24;
    WORD2(v46) = v25;
    HIWORD(v46) = v26;
    LOWORD(v47) = v23;
    WORD1(v47) = v28;
    v4 = v27;
    WORD2(v47) = v29;
    HIWORD(v47) = v41;
    LOWORD(v48) = v22;
    WORD1(v48) = v42;
    v31 = [v30 initWithDecimal_];
    [v11 setPriceAmount_];

    v46 = v24;
    v47 = v23;
    v48 = v22;
    v49 = v43;
    v50 = v21;
    sub_1B7215720(&v46, v45);
    v32 = sub_1B7800838();
  }

  else
  {
    [v11 setPriceAmount_];
    v32 = 0;
  }

  [v11 setPriceCurrency_];

  if (*(&v57 + 1))
  {

    v33 = sub_1B7800838();
  }

  else
  {
    v33 = 0;
  }

  [v11 setSku_];

  if (*(&v58 + 1))
  {

    v34 = sub_1B7800838();
    sub_1B732624C(&v51);
  }

  else
  {
    sub_1B732624C(&v51);
    v34 = 0;
  }

  [v11 setGtin_];

  return v11;
}

uint64_t BackgroundRefreshDistributionType.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t BackgroundRefreshDistributor.__allocating_init(now:calendar:userDefaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  BackgroundRefreshDistributor.init(now:calendar:userDefaults:)(a1, a2, a3, a4);
  return v8;
}

uint64_t BackgroundRefreshDistributor.init(now:calendar:userDefaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1B77FFC88();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 16);
  v13(v4 + OBJC_IVAR____TtC10FinanceKit28BackgroundRefreshDistributor_calendar, a3, v9);
  v14 = (v4 + OBJC_IVAR____TtC10FinanceKit28BackgroundRefreshDistributor_now);
  *v14 = a1;
  v14[1] = a2;
  sub_1B719B06C(a4, v25);
  v13(v12, a3, v9);
  sub_1B7201D1C(v25, &v22);
  v15 = type metadata accessor for UserSleepScheduleProvider();
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + OBJC_IVAR____TtC10FinanceKit25UserSleepScheduleProvider_calendar, v12, v9);
  v17 = v16 + OBJC_IVAR____TtC10FinanceKit25UserSleepScheduleProvider_userDefaults;
  v18 = v23;
  *v17 = v22;
  *(v17 + 16) = v18;
  *(v17 + 32) = v24;
  *(&v23 + 1) = v15;
  v24 = &protocol witness table for UserSleepScheduleProvider;
  *&v22 = v16;
  __swift_destroy_boxed_opaque_existential_1(a4);
  (*(v10 + 8))(a3, v9);
  sub_1B71E4C44(&v22, v4 + 16);
  v19 = v4 + OBJC_IVAR____TtC10FinanceKit28BackgroundRefreshDistributor_userDefaults;
  v20 = v25[1];
  *v19 = v25[0];
  *(v19 + 16) = v20;
  *(v19 + 32) = v26;
  return v4;
}

uint64_t BackgroundRefreshDistributor.nextBackgroundRefreshDate(for:with:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v252 = a3;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v251);
  v258 = &v228 - v5;
  v236 = sub_1B77FED28();
  v235 = *(v236 - 8);
  v6 = MEMORY[0x1EEE9AC00](v236);
  v230 = &v228 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v228 = &v228 - v8;
  v234 = sub_1B77FFA18();
  v233 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v232 = &v228 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_1B77FFC68();
  v248 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249);
  v245 = &v228 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_1B77FF988();
  v11 = *(v273 - 8);
  v12 = MEMORY[0x1EEE9AC00](v273);
  v14 = &v228 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v229 = &v228 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v240 = &v228 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v238 = &v228 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v231 = &v228 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v239 = &v228 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v237 = &v228 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v270 = &v228 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v228 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v264 = &v228 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v256 = &v228 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v268 = &v228 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v257 = &v228 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v259 = &v228 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v228 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v244 = &v228 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v47 = MEMORY[0x1EEE9AC00](v46 - 8);
  v49 = &v228 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = (&v228 - v51);
  v53 = MEMORY[0x1EEE9AC00](v50);
  v260 = &v228 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v265 = &v228 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v255 = &v228 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v246 = &v228 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v253 = &v228 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v247 = &v228 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v271 = &v228 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v243 = &v228 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v269 = (&v228 - v70);
  MEMORY[0x1EEE9AC00](v69);
  v272 = &v228 - v71;
  if (qword_1EDAF7308 != -1)
  {
    swift_once();
  }

  v266 = v31;
  v241 = type metadata accessor for BankConnectUserIdentifierProvider();
  v72 = swift_allocObject();
  v72[5] = &type metadata for UncheckedSendableUserDefaults;
  v72[6] = &protocol witness table for UncheckedSendableUserDefaults;
  v73 = swift_allocObject();
  v72[2] = v73;
  sub_1B7201D1C(qword_1EDAF7310, v73 + 16);
  v72[13] = 0xD000000000000019;
  v72[14] = 0x80000001B7877D30;
  v72[15] = 0xD000000000000022;
  v72[16] = 0x80000001B7877D50;
  v72[17] = 0xD000000000000022;
  v72[18] = 0x80000001B7877D80;
  v72[7] = 0xD000000000000014;
  v72[8] = 0x80000001B7876080;
  v72[9] = 0xD000000000000021;
  v72[10] = 0x80000001B7881650;
  v72[11] = &type metadata for DeviceInfo;
  v72[12] = &protocol witness table for DeviceInfo;
  v262 = v72;
  v254 = [a1 numberOfRemainingBackgroundRefreshes];
  if (a2 >> 62)
  {
    v74 = sub_1B7801958();
  }

  else
  {
    v74 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v75 = MEMORY[0x1E69E7CC0];
  v267 = a1;
  v242 = v49;
  v250 = v52;
  if (v74)
  {
    v274[0] = MEMORY[0x1E69E7CC0];
    sub_1B71FE348(0, v74 & ~(v74 >> 63), 0);
    if (v74 < 0)
    {
      __break(1u);
      goto LABEL_103;
    }

    v75 = v274[0];
    if ((a2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v74; ++i)
      {
        MEMORY[0x1B8CA5DC0](i, a2);
        v77 = [swift_unknownObjectRetain() authorizedAt];
        sub_1B77FF928();
        swift_unknownObjectRelease_n();

        v274[0] = v75;
        v79 = *(v75 + 16);
        v78 = *(v75 + 24);
        if (v79 >= v78 >> 1)
        {
          sub_1B71FE348(v78 > 1, v79 + 1, 1);
          v75 = v274[0];
        }

        *(v75 + 16) = v79 + 1;
        (*(v11 + 32))(v75 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v79, v44, v273);
      }
    }

    else
    {
      v80 = (a2 + 32);
      do
      {
        v81 = *v80;
        v82 = [v81 authorizedAt];
        sub_1B77FF928();

        v274[0] = v75;
        v84 = *(v75 + 16);
        v83 = *(v75 + 24);
        if (v84 >= v83 >> 1)
        {
          sub_1B71FE348(v83 > 1, v84 + 1, 1);
          v75 = v274[0];
        }

        *(v75 + 16) = v84 + 1;
        (*(v11 + 32))(v75 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v84, v14, v273);
        ++v80;
        --v74;
      }

      while (v74);
    }

    a1 = v267;
  }

  v85 = v272;
  sub_1B75286C8(v75, v272);

  v86 = v269;
  sub_1B7280900(v85, v269);
  v87 = *(v11 + 48);
  a2 = v273;
  v88 = (v87)(v86, 1, v273);
  v52 = v263;
  v261 = v11 + 48;
  if (v88 == 1)
  {
    sub_1B7205418(v86, &qword_1EB98EBD0);
  }

  else
  {
    v89 = v244;
    (*(v11 + 32))(v244, v86, a2);
    v90 = a2;
    v91 = v248;
    v92 = v245;
    v93 = v249;
    (*(v248 + 104))(v245, *MEMORY[0x1E6969A58], v249);
    v94 = v243;
    sub_1B77FFC18();
    v95 = v91;
    a2 = v90;
    a1 = v267;
    v96 = v92;
    v85 = v272;
    (*(v95 + 8))(v96, v93);
    (*(v11 + 8))(v89, a2);
    sub_1B7205418(v85, &qword_1EB98EBD0);
    sub_1B7205340(v94, v85);
  }

  v97 = v264;
  v98 = [a1 lastBackgroundRefreshDate];
  v269 = v87;
  if (v98)
  {
    v99 = v259;
    v100 = v98;
    sub_1B77FF928();

    v101 = v257;
    (*(v52 + OBJC_IVAR____TtC10FinanceKit28BackgroundRefreshDistributor_now))();
    LOBYTE(v100) = sub_1B77FFC28();
    v102 = *(v11 + 8);
    v102(v101, a2);
    v103 = v253;
    v104 = v271;
    if (v100)
    {
      v105 = v247;
      (*(v11 + 32))(v247, v99, a2);
      v106 = 0;
      v87 = v269;
      v97 = v264;
    }

    else
    {
      v102(v99, a2);
      v106 = 1;
      v87 = v269;
      v97 = v264;
      v105 = v247;
    }

    v259 = *(v11 + 56);
    (v259)(v105, v106, 1, a2);
    sub_1B7205340(v105, v104);
    v85 = v272;
  }

  else
  {
    v104 = v271;
    v259 = *(v11 + 56);
    (v259)(v271, 1, 1, a2);
    v103 = v253;
  }

  sub_1B7280900(v104, v103);
  if ((v87)(v103, 1, a2) != 1)
  {
    v110 = *(v11 + 32);
    v111 = (v11 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v112 = v256;
    v110(v256, v103, a2);
    goto LABEL_35;
  }

  sub_1B7205418(v103, &qword_1EB98EBD0);
  v107 = v85;
  v108 = v246;
  sub_1B7280900(v107, v246);
  if ((v87)(v108, 1, a2) == 1)
  {
    v109 = sub_1B7205418(v108, &qword_1EB98EBD0);
  }

  else
  {
    v113 = *(v11 + 32);
    v114 = v113(v97, v108, a2);
    v115 = v257;
    (*(v52 + OBJC_IVAR____TtC10FinanceKit28BackgroundRefreshDistributor_now))(v114);
    v116 = sub_1B77FF8C8();
    v117 = *(v11 + 8);
    v117(v115, a2);
    if (v116)
    {
      v111 = (v11 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v112 = v256;
      v113(v256, v264, a2);
      v110 = v113;
      goto LABEL_35;
    }

    v109 = (v117)(v264, a2);
  }

  v112 = v256;
  (*(v52 + OBJC_IVAR____TtC10FinanceKit28BackgroundRefreshDistributor_now))(v109);
  v110 = *(v11 + 32);
  v111 = (v11 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
LABEL_35:
  v118 = v268;
  v264 = v110;
  v256 = v111;
  v110(v268, v112, a2);
  v119 = v52[5];
  v120 = v52[6];
  __swift_project_boxed_opaque_existential_1(v52 + 2, v119);
  v121 = v266;
  (*(v120 + 8))(v118, v119, v120);
  v122 = v52[5];
  v123 = v52[6];
  __swift_project_boxed_opaque_existential_1(v52 + 2, v122);
  v124 = *(v123 + 16);
  v125 = v270;
  v126 = v123;
  v127 = v121;
  v124(v118, v122, v126);
  v128 = sub_1B77FF8C8();
  v129 = v271;
  v130 = v255;
  sub_1B7280900(v271, v255);
  v131 = (v269)(v130, 1, a2);
  sub_1B7205418(v130, &qword_1EB98EBD0);
  v132 = v254;
  if (!v254)
  {
    v274[3] = v241;
    v274[4] = &protocol witness table for BankConnectUserIdentifierProvider;
    v274[0] = v262;

    v133 = v260;
    sub_1B74B7BF0(v267, v127, v125, v129, v128 & 1, v274, v260);
    __swift_destroy_boxed_opaque_existential_1(v274);
    v137 = v251;
    a1 = v259;
    goto LABEL_90;
  }

  v133 = v260;
  if ((v128 & 1) == 0)
  {
    v138 = [v267 maximumNumberOfBackgroundRefreshes];

    if ((sub_1B77FF8C8() & 1) == 0)
    {
      if (qword_1EDAF65A8 != -1)
      {
        swift_once();
      }

      v171 = sub_1B78000B8();
      __swift_project_value_buffer(v171, qword_1EDAF65B0);
      v172 = *(v11 + 16);
      v173 = v238;
      v172(v238, v270, a2);
      v174 = v240;
      v172(v240, v127, a2);
      v175 = sub_1B7800098();
      v176 = sub_1B78011D8();
      if (os_log_type_enabled(v175, v176))
      {
        v177 = swift_slowAlloc();
        v267 = swift_slowAlloc();
        v274[0] = v267;
        *v177 = 136315394;
        sub_1B71A6F54(&qword_1EB991200);
        LODWORD(v255) = v176;
        v178 = sub_1B7802068();
        v180 = v179;
        v181 = *(v11 + 8);
        v181(v173, v273);
        v182 = sub_1B71A3EF8(v178, v180, v274);
        a2 = v273;

        *(v177 + 4) = v182;
        *(v177 + 12) = 2080;
        v183 = sub_1B7802068();
        v185 = v184;
        v181(v174, a2);
        v186 = sub_1B71A3EF8(v183, v185, v274);

        *(v177 + 14) = v186;
        _os_log_impl(&dword_1B7198000, v175, v255, "Cannot distribute background refreshes: %s <= %s", v177, 0x16u);
        v187 = v267;
        swift_arrayDestroy();
        MEMORY[0x1B8CA7A40](v187, -1, -1);
        MEMORY[0x1B8CA7A40](v177, -1, -1);
      }

      else
      {

        v189 = *(v11 + 8);
        v189(v174, a2);
        v189(v173, a2);
      }

      v52 = v263;
      v133 = v260;
      a1 = v259;
      goto LABEL_69;
    }

    if (v132 <= 0)
    {
      if (qword_1EDAF65A8 != -1)
      {
        swift_once();
      }

      v196 = sub_1B78000B8();
      __swift_project_value_buffer(v196, qword_1EDAF65B0);
      v191 = sub_1B7800098();
      v192 = sub_1B78011D8();
      v197 = os_log_type_enabled(v191, v192);
      v52 = v263;
      a1 = v259;
      if (!v197)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    v139 = v229;
    (*(v11 + 16))(v229, v127, a2);
    v140 = v232;
    BankConnectUserIdentifierProvider.userIdentifier()(v232);
    v141 = sub_1B77FF9F8();
    (*(v233 + 8))(v140, v234);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000);
    v142 = v248;
    a1 = ((*(v248 + 80) + 32) & ~*(v248 + 80));
    v143 = swift_allocObject();
    *(v143 + 16) = xmmword_1B7807CD0;
    v52 = v249;
    (*(v142 + 104))(&a1[v143], *MEMORY[0x1E6969A48], v249);
    sub_1B7545E58(v143);
    swift_setDeallocating();
    v144 = *(v142 + 8);
    a2 = v142 + 8;
    v144(&a1[v143], v52);
    swift_deallocClassInstance();
    v133 = v230;
    sub_1B77FFB68();

    v145 = sub_1B77FEC08();
    v147 = v146;
    (*(v235 + 8))(v133, v236);
    if (v147)
    {
      v148 = 1;
    }

    else
    {
      v148 = v145;
    }

    result = v141 + v148;
    if (!__OFADD__(v141, v148))
    {
      a2 = v273;
      v52 = v263;
      v133 = v260;
      a1 = v259;
      if ((result & 0x8000000000000000) == 0 || (v150 = __OFSUB__(0, result), result = -result, !v150))
      {
        srand48(result);
        if (v138 < 1)
        {
          v152 = 3601;
        }

        else
        {
          v151 = 3600 * (0x11u / v138);
          if (v151 <= 0xE10)
          {
            v151 = 3600;
          }

          v152 = v151 | 1;
        }

        sub_1B74B90AC(v152);
        sub_1B77FF828();

        (*(v11 + 8))(v139, a2);
        goto LABEL_88;
      }

      goto LABEL_107;
    }

    __break(1u);
LABEL_105:
    swift_once();
LABEL_66:
    v190 = sub_1B78000B8();
    __swift_project_value_buffer(v190, qword_1EDAF65B0);
    v191 = sub_1B7800098();
    v192 = sub_1B78011D8();
    if (!os_log_type_enabled(v191, v192))
    {
LABEL_68:

LABEL_69:
      v194 = v133;
      v195 = 1;
LABEL_89:
      (a1)(v194, v195, 1, a2);
      v137 = v251;
LABEL_90:
      v211 = v133;
      v212 = v265;
      v213 = sub_1B7205340(v211, v265);
      v214 = *(v52 + OBJC_IVAR____TtC10FinanceKit28BackgroundRefreshDistributor_now);
      v215 = v250;
      v214(v213);
      (a1)(v215, 0, 1, a2);
      v216 = *(v137 + 48);
      v217 = v258;
      sub_1B7280900(v212, v258);
      sub_1B7280900(v215, v217 + v216);
      v218 = v269;
      if ((v269)(v217, 1, a2) == 1)
      {
        sub_1B7205418(v215, &qword_1EB98EBD0);
        if (v218(v217 + v216, 1, a2) == 1)
        {
          sub_1B7205418(v217, &qword_1EB98EBD0);
          v219 = v266;
LABEL_99:
          v226 = v252;
          sub_1B77FF7E8();

          sub_1B7205418(v265, &qword_1EB98EBD0);
          v227 = *(v11 + 8);
          v227(v270, a2);
          v227(v219, a2);
          v227(v268, a2);
          sub_1B7205418(v271, &qword_1EB98EBD0);
          sub_1B7205418(v272, &qword_1EB98EBD0);
          return (a1)(v226, 0, 1, a2);
        }
      }

      else
      {
        v220 = v242;
        sub_1B7280900(v217, v242);
        if (v218(v217 + v216, 1, a2) != 1)
        {
          v224 = v257;
          (v264)(v257, v217 + v216, a2);
          sub_1B71A6F54(&qword_1EB98FAC0);
          v225 = sub_1B7800828();
          v221 = *(v11 + 8);
          v221(v224, a2);
          sub_1B7205418(v215, &qword_1EB98EBD0);
          v221(v220, a2);
          v219 = v266;
          sub_1B7205418(v258, &qword_1EB98EBD0);
          a1 = v259;
          if (v225)
          {
            goto LABEL_99;
          }

          v223 = v271;
          v222 = v272;
LABEL_97:
          v221(v270, a2);
          v221(v219, a2);
          v221(v268, a2);
          sub_1B7205418(v223, &qword_1EB98EBD0);
          sub_1B7205418(v222, &qword_1EB98EBD0);
          return sub_1B7205340(v265, v252);
        }

        sub_1B7205418(v215, &qword_1EB98EBD0);
        (*(v11 + 8))(v220, a2);
      }

      sub_1B7205418(v217, &qword_1EB98FCE0);
      v221 = *(v11 + 8);
      v223 = v271;
      v222 = v272;
      v219 = v266;
      goto LABEL_97;
    }

LABEL_67:
    v193 = swift_slowAlloc();
    *v193 = 0;
    _os_log_impl(&dword_1B7198000, v191, v192, "The number of background refreshes must be positive", v193, 2u);
    MEMORY[0x1B8CA7A40](v193, -1, -1);
    goto LABEL_68;
  }

  v134 = [v267 maximumNumberOfBackgroundRefreshes];

  v135 = sub_1B77FF8C8();
  v52 = v263;
  a1 = v259;
  if ((v135 & 1) == 0)
  {
    if (qword_1EDAF65A8 == -1)
    {
LABEL_55:
      v153 = sub_1B78000B8();
      __swift_project_value_buffer(v153, qword_1EDAF65B0);
      v154 = *(v11 + 16);
      v155 = v237;
      v154(v237, v270, a2);
      v156 = v239;
      v154(v239, v268, a2);
      v157 = sub_1B7800098();
      v158 = sub_1B78011D8();
      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        v267 = swift_slowAlloc();
        v274[0] = v267;
        *v159 = 136315394;
        sub_1B71A6F54(&qword_1EB991200);
        LODWORD(v255) = v158;
        v160 = sub_1B7802068();
        v162 = v161;
        v163 = v155;
        v164 = *(v11 + 8);
        v164(v163, v273);
        v165 = sub_1B71A3EF8(v160, v162, v274);
        a2 = v273;

        *(v159 + 4) = v165;
        *(v159 + 12) = 2080;
        v166 = sub_1B7802068();
        v168 = v167;
        v164(v156, a2);
        v52 = v263;
        v169 = sub_1B71A3EF8(v166, v168, v274);
        a1 = v259;

        *(v159 + 14) = v169;
        _os_log_impl(&dword_1B7198000, v157, v255, "Cannot distribute background refreshes: %s <= %s", v159, 0x16u);
        v170 = v267;
        swift_arrayDestroy();
        MEMORY[0x1B8CA7A40](v170, -1, -1);
        MEMORY[0x1B8CA7A40](v159, -1, -1);
      }

      else
      {

        v188 = *(v11 + 8);
        v188(v156, a2);
        v188(v155, a2);
      }

      v133 = v260;
      goto LABEL_69;
    }

LABEL_103:
    swift_once();
    goto LABEL_55;
  }

  if (v132 <= 0)
  {
    if (qword_1EDAF65A8 == -1)
    {
      goto LABEL_66;
    }

    goto LABEL_105;
  }

  if (v131 == 1)
  {
    v136 = v231;
    (*(v11 + 16))(v231, v268, a2);

    (v264)(v133, v136, a2);
LABEL_88:
    v194 = v133;
    v195 = 0;
    goto LABEL_89;
  }

  sub_1B77FF908();
  sub_1B77FF908();
  sub_1B77FF828();
  v198 = v232;
  BankConnectUserIdentifierProvider.userIdentifier()(v232);
  v267 = sub_1B77FF9F8();
  (*(v233 + 8))(v198, v234);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000);
  v199 = v248;
  v200 = (*(v248 + 80) + 32) & ~*(v248 + 80);
  v201 = swift_allocObject();
  *(v201 + 16) = xmmword_1B7807CD0;
  v202 = v249;
  (*(v199 + 104))(v201 + v200, *MEMORY[0x1E6969A48], v249);
  sub_1B7545E58(v201);
  swift_setDeallocating();
  (*(v199 + 8))(v201 + v200, v202);
  swift_deallocClassInstance();
  v203 = v228;
  sub_1B77FFB68();

  v204 = sub_1B77FEC08();
  v206 = v205;
  (*(v235 + 8))(v203, v236);
  if (v206)
  {
    v207 = 1;
  }

  else
  {
    v207 = v204;
  }

  result = &v267[v207];
  if (__OFADD__(v267, v207))
  {
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  a2 = v273;
  v52 = v263;
  v133 = v260;
  a1 = v259;
  if ((result & 0x8000000000000000) == 0 || (v150 = __OFSUB__(0, result), result = -result, !v150))
  {
    srand48(result);
    if (v134 < 1)
    {
      v209 = 3601;
    }

    else
    {
      v208 = 3600 * (0x11u / v134);
      if (v208 <= 0xE10)
      {
        v208 = 3600;
      }

      v209 = v208 | 1;
    }

    sub_1B74B90AC(v209);
    v210 = v231;
    sub_1B77FF828();

    (*(v11 + 8))(v210, a2);
    goto LABEL_88;
  }

LABEL_108:
  __break(1u);
  return result;
}

void sub_1B74B7B90(id *a1)
{
  v1 = [*a1 authorizedAt];
  sub_1B77FF928();
}

uint64_t sub_1B74B7BF0@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X5>, char *a7@<X8>)
{
  v179 = a6;
  v186 = a5;
  v168 = a3;
  v177 = a2;
  v10 = sub_1B77FED28();
  v183 = *(v10 - 8);
  v184 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v169 = &v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v170 = &v163 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v166 = &v163 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v164 = &v163 - v17;
  v18 = sub_1B77FFA18();
  v181 = *(v18 - 8);
  v182 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v180 = &v163 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B77FF988();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v171 = &v163 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v172 = &v163 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v165 = &v163 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v163 = &v163 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v175 = &v163 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v163 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v163 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v189 = &v163 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v40 = MEMORY[0x1EEE9AC00](v39 - 8);
  v176 = &v163 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v163 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v163 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = &v163 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v190 = &v163 - v51;
  v178 = a1;
  v52 = [a1 backgroundRefreshRetryAfterDate];
  if (v52)
  {
    v53 = v52;
    sub_1B77FF928();

    v54 = v21[7];
    v55 = v50;
    v56 = 0;
  }

  else
  {
    v54 = v21[7];
    v55 = v50;
    v56 = 1;
  }

  v185 = v54;
  v54(v55, v56, 1, v20);
  v57 = v20;
  sub_1B7205340(v50, v190);
  sub_1B7280900(a4, v47);
  v58 = v21[6];
  v59 = v58(v47, 1, v57);
  v188 = v21;
  if (v59 == 1)
  {
    v60 = sub_1B7205418(v47, &qword_1EB98EBD0);
    (*(v187 + OBJC_IVAR____TtC10FinanceKit28BackgroundRefreshDistributor_now))(v60);
    v61 = v21[4];
    v61(v189, v37, v57);
  }

  else
  {
    v173 = a7;
    v62 = v21[4];
    v174 = v57;
    v167 = v62;
    v62(v34, v47, v57);
    v63 = *(v187 + OBJC_IVAR____TtC10FinanceKit28BackgroundRefreshDistributor_userDefaults + 24);
    v64 = *(v187 + OBJC_IVAR____TtC10FinanceKit28BackgroundRefreshDistributor_userDefaults + 32);
    __swift_project_boxed_opaque_existential_1((v187 + OBJC_IVAR____TtC10FinanceKit28BackgroundRefreshDistributor_userDefaults), v63);
    (*(v64 + 16))(v191, 0xD000000000000019, 0x80000001B7881630, v63, v64);
    if (v191[3])
    {
      swift_dynamicCast();
    }

    else
    {
      sub_1B7205418(v191, &qword_1EB98FCB0);
    }

    a7 = v173;
    v57 = v174;
    v61 = v167;
    sub_1B77FF828();
    (v188[1])(v34, v57);
    v61(v189, v37, v57);
  }

  v65 = v190;
  if (v186)
  {
    sub_1B7280900(v190, v44);
    if (v58(v44, 1, v57) == 1)
    {
      sub_1B7205418(v65, &qword_1EB98EBD0);
      sub_1B7205418(v44, &qword_1EB98EBD0);
      v61(a7, v189, v57);
LABEL_76:
      v135 = v185;
      return v135(a7, 0, 1, v57);
    }

    v87 = v175;
    v61(v175, v44, v57);
    v88 = sub_1B77FF8D8();
    v174 = v57;
    if (v88)
    {
      v167 = v61;
      v89 = [v178 maximumNumberOfBackgroundRefreshes];
      v90 = v179[3];
      v91 = v179[4];
      __swift_project_boxed_opaque_existential_1(v179, v90);
      v92 = v180;
      (*(v91 + 8))(v90, v91);
      v93 = sub_1B77FF9F8();
      (*(v181 + 8))(v92, v182);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000);
      v94 = sub_1B77FFC68();
      v95 = *(v94 - 8);
      v96 = (*(v95 + 80) + 32) & ~*(v95 + 80);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_1B7807CD0;
      (*(v95 + 104))(v97 + v96, *MEMORY[0x1E6969A48], v94);
      sub_1B7545E58(v97);
      swift_setDeallocating();
      (*(v95 + 8))(v97 + v96, v94);
      v98 = v175;
      swift_deallocClassInstance();
      v99 = v164;
      sub_1B77FFB68();

      v100 = sub_1B77FEC08();
      LOBYTE(v94) = v101;
      (*(v183 + 8))(v99, v184);
      if (v94)
      {
        v102 = 1;
      }

      else
      {
        v102 = v100;
      }

      result = v93 + v102;
      if (!__OFADD__(v93, v102))
      {
        v57 = v174;
        v103 = v188;
        if ((result & 0x8000000000000000) == 0 || (v84 = __OFSUB__(0, result), result = -result, !v84))
        {
          srand48(result);
          if (v89 < 1)
          {
            v105 = 3601;
          }

          else
          {
            v104 = 3600 * (0x11u / v89);
            if (v104 <= 0xE10)
            {
              v104 = 3600;
            }

            v105 = v104 | 1;
          }

          sub_1B74B90AC(v105);
          v157 = v163;
          sub_1B77FF828();
          sub_1B71A6F54(&qword_1EB98EBD8);
          v158 = v189;
          v159 = sub_1B78007F8();
          v160 = v103[1];
          v160(v98, v57);
          sub_1B7205418(v190, &qword_1EB98EBD0);
          if (v159)
          {
            v161 = v157;
          }

          else
          {
            v161 = v158;
          }

          if (v159)
          {
            v162 = v158;
          }

          else
          {
            v162 = v157;
          }

          v160(v161, v57);
          v167(a7, v162, v57);
          goto LABEL_76;
        }

        goto LABEL_84;
      }

      goto LABEL_80;
    }

    sub_1B71A6F54(&qword_1EB98EBD8);
    v112 = v177;
    v113 = sub_1B78007F8();
    v114 = v165;
    if (v113)
    {
      v115 = v165;
      v116 = v112;
    }

    else
    {
      v115 = v165;
      v116 = v87;
    }

    (v188[2])(v115, v116, v57);
    v140 = [v178 maximumNumberOfBackgroundRefreshes];
    v141 = v179[3];
    v142 = v179[4];
    __swift_project_boxed_opaque_existential_1(v179, v141);
    v143 = v180;
    (*(v142 + 8))(v141, v142);
    v144 = sub_1B77FF9F8();
    (*(v181 + 8))(v143, v182);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000);
    v145 = sub_1B77FFC68();
    v146 = *(v145 - 8);
    v147 = (*(v146 + 80) + 32) & ~*(v146 + 80);
    v148 = swift_allocObject();
    *(v148 + 16) = xmmword_1B7807CD0;
    (*(v146 + 104))(v148 + v147, *MEMORY[0x1E6969A48], v145);
    sub_1B7545E58(v148);
    swift_setDeallocating();
    (*(v146 + 8))(v148 + v147, v145);
    swift_deallocClassInstance();
    v149 = v166;
    sub_1B77FFB68();

    v150 = sub_1B77FEC08();
    LOBYTE(v145) = v151;
    (*(v183 + 8))(v149, v184);
    if (v145)
    {
      v152 = 1;
    }

    else
    {
      v152 = v150;
    }

    result = v144 + v152;
    if (__OFADD__(v144, v152))
    {
      goto LABEL_81;
    }

    v57 = v174;
    v153 = v188;
    v132 = v190;
    v154 = v175;
    if (result < 0)
    {
      v84 = __OFSUB__(0, result);
      result = -result;
      if (v84)
      {
        goto LABEL_85;
      }
    }

    srand48(result);
    if (v140 < 1)
    {
      v156 = 3601;
    }

    else
    {
      v155 = 3600 * (0x11u / v140);
      if (v155 <= 0xE10)
      {
        v155 = 3600;
      }

      v156 = v155 | 1;
    }

    sub_1B74B90AC(v156);
    sub_1B77FF828();
    v137 = v153[1];
    v137(v114, v57);
    v139 = v154;
LABEL_75:
    v137(v139, v57);
    v137(v189, v57);
    sub_1B7205418(v132, &qword_1EB98EBD0);
    goto LABEL_76;
  }

  v66 = v176;
  sub_1B7280900(v190, v176);
  if (v58(v66, 1, v57) == 1)
  {
    v67 = v57;
    sub_1B7205418(v66, &qword_1EB98EBD0);
    v68 = [v178 maximumNumberOfBackgroundRefreshes];
    v69 = v179[3];
    v70 = v179[4];
    __swift_project_boxed_opaque_existential_1(v179, v69);
    v71 = v180;
    (*(v70 + 8))(v69, v70);
    v72 = sub_1B77FF9F8();
    (*(v181 + 8))(v71, v182);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000);
    v73 = sub_1B77FFC68();
    v74 = *(v73 - 8);
    v75 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1B7807CD0;
    (*(v74 + 104))(v76 + v75, *MEMORY[0x1E6969A48], v73);
    sub_1B7545E58(v76);
    swift_setDeallocating();
    (*(v74 + 8))(v76 + v75, v73);
    swift_deallocClassInstance();
    v77 = v169;
    sub_1B77FFB68();

    v78 = sub_1B77FEC08();
    LOBYTE(v73) = v79;
    (*(v183 + 8))(v77, v184);
    if (v73)
    {
      v80 = 1;
    }

    else
    {
      v80 = v78;
    }

    result = v72 + v80;
    if (!__OFADD__(v72, v80))
    {
      v57 = v67;
      v82 = v188;
      v83 = v190;
      if ((result & 0x8000000000000000) == 0 || (v84 = __OFSUB__(0, result), result = -result, !v84))
      {
        srand48(result);
        if (v68 < 1)
        {
          v86 = 3601;
        }

        else
        {
          v85 = 3600 * (0x11u / v68);
          if (v85 <= 0xE10)
          {
            v85 = 3600;
          }

          v86 = v85 | 1;
        }

        v135 = v185;
        sub_1B74B90AC(v86);
        sub_1B77FF828();
        (v82[1])(v189, v67);
        sub_1B7205418(v83, &qword_1EB98EBD0);
        return v135(a7, 0, 1, v57);
      }

      goto LABEL_82;
    }

    __break(1u);
  }

  else
  {
    v173 = a7;
    v106 = v172;
    v61(v172, v66, v57);
    sub_1B71A6F54(&qword_1EB98EBD8);
    v107 = v177;
    v108 = sub_1B78007F8();
    v109 = v171;
    if (v108)
    {
      v110 = v171;
      v111 = v107;
    }

    else
    {
      v110 = v171;
      v111 = v106;
    }

    v117 = v57;
    (v188[2])(v110, v111, v57);
    v118 = [v178 maximumNumberOfBackgroundRefreshes];
    v119 = v179[3];
    v120 = v179[4];
    __swift_project_boxed_opaque_existential_1(v179, v119);
    v121 = v180;
    (*(v120 + 8))(v119, v120);
    v122 = sub_1B77FF9F8();
    (*(v181 + 8))(v121, v182);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000);
    v123 = sub_1B77FFC68();
    v124 = *(v123 - 8);
    v125 = (*(v124 + 80) + 32) & ~*(v124 + 80);
    v126 = swift_allocObject();
    *(v126 + 16) = xmmword_1B7807CD0;
    (*(v124 + 104))(v126 + v125, *MEMORY[0x1E6969A48], v123);
    sub_1B7545E58(v126);
    swift_setDeallocating();
    (*(v124 + 8))(v126 + v125, v123);
    swift_deallocClassInstance();
    v127 = v170;
    sub_1B77FFB68();

    v128 = sub_1B77FEC08();
    LOBYTE(v123) = v129;
    (*(v183 + 8))(v127, v184);
    if (v123)
    {
      v130 = 1;
    }

    else
    {
      v130 = v128;
    }

    result = v122 + v130;
    if (!__OFADD__(v122, v130))
    {
      v57 = v117;
      v131 = v188;
      v132 = v190;
      if (result < 0)
      {
        v84 = __OFSUB__(0, result);
        result = -result;
        if (v84)
        {
          goto LABEL_83;
        }
      }

      srand48(result);
      if (v118 < 1)
      {
        v134 = 3601;
      }

      else
      {
        v133 = 3600 * (0x11u / v118);
        if (v133 <= 0xE10)
        {
          v133 = 3600;
        }

        v134 = v133 | 1;
      }

      sub_1B74B90AC(v134);
      v136 = v173;
      sub_1B77FF828();
      v137 = v131[1];
      v138 = v109;
      a7 = v136;
      v137(v138, v117);
      v139 = v172;
      goto LABEL_75;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

uint64_t BackgroundRefreshDistributor.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = OBJC_IVAR____TtC10FinanceKit28BackgroundRefreshDistributor_calendar;
  v2 = sub_1B77FFC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B7444924(v0 + OBJC_IVAR____TtC10FinanceKit28BackgroundRefreshDistributor_userDefaults);
  return v0;
}

uint64_t BackgroundRefreshDistributor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = OBJC_IVAR____TtC10FinanceKit28BackgroundRefreshDistributor_calendar;
  v2 = sub_1B77FFC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B7444924(v0 + OBJC_IVAR____TtC10FinanceKit28BackgroundRefreshDistributor_userDefaults);

  return swift_deallocClassInstance();
}

void sub_1B74B90AC(unint64_t a1)
{
  if (!a1)
  {
LABEL_18:
    __break(1u);
    return;
  }

  sub_1B720AE98();
  if (v2 * a1 < a1)
  {
    v3 = -a1 % a1;
    if (v3 > v2 * a1)
    {
      while (1)
      {
        v4 = drand48() * 1.84467441e19;
        if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v4 <= -1.0)
        {
          goto LABEL_13;
        }

        if (v4 >= 1.84467441e19)
        {
          goto LABEL_14;
        }

        v5 = drand48() * 65536.0;
        if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_15;
        }

        if (v5 <= -1.0)
        {
          goto LABEL_16;
        }

        if (v5 >= 1.84467441e19)
        {
          goto LABEL_17;
        }

        if (v3 <= (v5 ^ v4) * a1)
        {
          return;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }
  }
}

unint64_t sub_1B74B91B4()
{
  result = qword_1EB995F28;
  if (!qword_1EB995F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995F28);
  }

  return result;
}

unint64_t sub_1B74B920C()
{
  result = qword_1EB995F30;
  if (!qword_1EB995F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB995F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995F30);
  }

  return result;
}

uint64_t type metadata accessor for BackgroundRefreshDistributor()
{
  result = qword_1EDAF7548;
  if (!qword_1EDAF7548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B74B92E8()
{
  result = sub_1B77FFC88();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B74B93C0(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7205588(a1, &v15 - v9, &unk_1EB994C70);
  v11 = *a2;
  v12 = sub_1B77FF4F8();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF3F8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

void sub_1B74B94FC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 merchantIdentifier];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1B74B9554(id *a1)
{
  v1 = [*a1 url];
  sub_1B77FF478();
}

id ManagedOrderMerchant.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderMerchant.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderMerchant.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedOrderMerchant.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit20ManagedOrderMerchant;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedOrderMerchant.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

void *ManagedOrderMerchant.__allocating_init(_:bundle:context:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B74B9D60(a1, a2, a3);

  return v4;
}

uint64_t ManagedOrderMerchant.contactInfoCount.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v44 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v44 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v44 - v11;
  v13 = [v0 contactURL];
  if (v13)
  {
    v14 = v13;
    sub_1B77FF478();

    v15 = sub_1B77FF4F8();
    (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  }

  else
  {
    v15 = sub_1B77FF4F8();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  }

  sub_1B726A728(v10, v12);
  sub_1B77FF4F8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v12, 1, v15) == 1)
  {
    sub_1B7205418(v12, &unk_1EB994C70);
    v50 = 0u;
    v51 = 0u;
  }

  else
  {
    *(&v51 + 1) = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v50);
    (*(v16 + 32))(boxed_opaque_existential_1, v12, v15);
  }

  v19 = [v0 businessChatURL];
  if (v19)
  {
    v20 = v19;
    sub_1B77FF478();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v16 + 56))(v4, v21, 1, v15);
  sub_1B726A728(v4, v7);
  if (v17(v7, 1, v15) == 1)
  {
    sub_1B7205418(v7, &unk_1EB994C70);
    v52 = 0u;
    v53 = 0u;
  }

  else
  {
    *(&v53 + 1) = v15;
    v22 = __swift_allocate_boxed_opaque_existential_1(&v52);
    (*(v16 + 32))(v22, v7, v15);
  }

  v23 = [v0 phoneNumber];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1B7800868();
    v27 = v26;

    v28 = MEMORY[0x1E69E6158];
  }

  else
  {
    v25 = 0;
    v27 = 0;
    v28 = 0;
    v56 = 0;
  }

  v54 = v25;
  v55 = v27;
  v57 = v28;
  v29 = [v0 emailAddress];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1B7800868();
    v33 = v32;

    v34 = MEMORY[0x1E69E6158];
  }

  else
  {
    v31 = 0;
    v33 = 0;
    v34 = 0;
    v60 = 0;
  }

  v58 = v31;
  v59 = v33;
  v35 = 32;
  v61 = v34;
  v36 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1B7205588(&v49[v35], &v46, &qword_1EB98FCB0);
    if (*(&v47 + 1))
    {
      v44 = v46;
      v45 = v47;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B71FE38C(0, *(v36 + 16) + 1, 1);
        v36 = v48;
      }

      v39 = *(v36 + 16);
      v38 = *(v36 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1B71FE38C((v38 > 1), v39 + 1, 1);
        v36 = v48;
      }

      *(v36 + 16) = v39 + 1;
      v40 = v36 + 32 * v39;
      v41 = v45;
      *(v40 + 32) = v44;
      *(v40 + 48) = v41;
    }

    else
    {
      sub_1B7205418(&v46, &qword_1EB98FCB0);
    }

    v35 += 32;
  }

  while (v35 != 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCB0);
  swift_arrayDestroy();
  v42 = *(v36 + 16);

  return v42;
}

void *sub_1B74B9D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - v9;
  v11 = [objc_allocWithZone(v3) initWithContext_];
  v12 = v11;
  v13 = *(a1 + 80);
  v45[4] = *(a1 + 64);
  v45[5] = v13;
  v46 = *(a1 + 96);
  v14 = *(a1 + 16);
  v45[0] = *a1;
  v45[1] = v14;
  v15 = *(a1 + 48);
  v45[2] = *(a1 + 32);
  v45[3] = v15;
  if (*&v45[0] == 1)
  {
    v16 = v11;
    v17 = 0;
  }

  else
  {
    v18 = *(a1 + 80);
    v43[4] = *(a1 + 64);
    v43[5] = v18;
    v44 = *(a1 + 96);
    v19 = *(a1 + 16);
    v43[0] = *a1;
    v43[1] = v19;
    v20 = *(a1 + 48);
    v43[2] = *(a1 + 32);
    v43[3] = v20;
    sub_1B74BA2BC();
    v21 = v12;
    sub_1B7205588(v45, &v42, &qword_1EB995F40);
    v17 = CNMutablePostalAddress.init(rawAddress:)(v43);
  }

  [v12 setAddress_];

  v22 = type metadata accessor for RawMerchant();
  sub_1B7205588(a1 + v22[5], v10, &unk_1EB994C70);
  v23 = sub_1B77FF4F8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  v26 = 0;
  if (v25(v10, 1, v23) != 1)
  {
    v26 = sub_1B77FF3F8();
    (*(v24 + 8))(v10, v23);
  }

  [v12 setBusinessChatURL_];

  v27 = v40;
  sub_1B7205588(a1 + v22[6], v40, &unk_1EB994C70);
  if (v25(v27, 1, v23) == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = sub_1B77FF3F8();
    (*(v24 + 8))(v27, v23);
  }

  [v12 setContactURL_];

  MEMORY[0x1EEE9AC00](v29);
  *(&v39 - 4) = v31;
  *(&v39 - 3) = v30;
  *(&v39 - 2) = 0x726564726FLL;
  *(&v39 - 1) = 0xE500000000000000;
  v32 = sub_1B723940C(sub_1B7262E4C, (&v39 - 6));
  [v12 setDisplayName_];

  if (*(a1 + v22[8] + 8))
  {
    v33 = sub_1B7800838();
  }

  else
  {
    v33 = 0;
  }

  [v12 setEmailAddress_];

  if (*(a1 + v22[9] + 8))
  {
    v34 = sub_1B7800838();
  }

  else
  {
    v34 = 0;
  }

  [v12 setLogoName_];

  v35 = sub_1B7800838();
  [v12 setMerchantIdentifier_];

  if (*(a1 + v22[11] + 8))
  {
    v36 = sub_1B7800838();
  }

  else
  {
    v36 = 0;
  }

  [v12 setPhoneNumber_];

  v37 = sub_1B77FF3F8();
  [v12 setUrl_];

  sub_1B74BA260(a1);
  return v12;
}

uint64_t sub_1B74BA260(uint64_t a1)
{
  v2 = type metadata accessor for RawMerchant();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B74BA2BC()
{
  result = qword_1EB990D70;
  if (!qword_1EB990D70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB990D70);
  }

  return result;
}

uint64_t MapsInsightsService.mapsInsights(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B74BA328, 0, 0);
}

uint64_t sub_1B74BA328()
{
  v1 = v0[3];
  v2 = *(v0[4] + 16);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v0[2] = v2;

  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v0 + 2;
  v4[3] = &unk_1B7834210;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1B74BA44C;

  return (sub_1B72B98D8)(&unk_1B7834220, v4);
}

uint64_t sub_1B74BA44C()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B74BA5A8, 0, 0);
}

uint64_t sub_1B74BA5A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B74BA614(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[21] = a1;
  v3[22] = a3;
  v3[23] = *(type metadata accessor for MapsTransactionInsightInput(0) - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F90);
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[28] = v6;
  v3[29] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B74BA74C, 0, 0);
}

uint64_t sub_1B74BA74C()
{
  v1 = v0 + 160;
  v2 = *(v0 + 176);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 184);
    sub_1B7801B98();
    v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      v8 = *(v0 + 192);
      v7 = *(v0 + 200);
      sub_1B74BD104(v5, v7, type metadata accessor for MapsTransactionInsightInput);
      sub_1B74BD104(v7, v8, type metadata accessor for MapsTransactionInsightInput);
      v9 = type metadata accessor for MapsTransactionInsightInput.XPC(0);
      v10 = objc_allocWithZone(v9);
      sub_1B74BD104(v8, v10 + OBJC_IVAR___XPCMapsTransactionInsightInput_value, type metadata accessor for MapsTransactionInsightInput);
      *(v0 + 144) = v10;
      *(v0 + 152) = v9;
      objc_msgSendSuper2((v0 + 144), sel_init);
      sub_1B74BD16C(v8);
      sub_1B74BD16C(v7);
      sub_1B7801B68();
      sub_1B7801BA8();
      sub_1B7801BB8();
      sub_1B7801B78();
      v5 += v6;
      --v3;
    }

    while (v3);
    v1 = v0 + 160;
  }

  v11 = *(v0 + 224);
  v17 = *(v0 + 232);
  v12 = *(v0 + 208);
  v13 = *(v0 + 216);
  type metadata accessor for MapsTransactionInsightInput.XPC(0);
  v14 = sub_1B7800C18();
  *(v0 + 240) = v14;

  *(v0 + 16) = v0;
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_1B74BAA34;
  swift_continuation_init();
  *(v0 + 136) = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F98);
  sub_1B7800CE8();
  (*(v13 + 32))(boxed_opaque_existential_1, v11, v12);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1B74BAC7C;
  *(v0 + 104) = &block_descriptor_35_0;
  [v17 mapsInsightsFor:v14 completionHandler:v0 + 80];
  (*(v13 + 8))(boxed_opaque_existential_1, v12);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B74BAA34()
{

  return MEMORY[0x1EEE6DFA0](sub_1B74BAB14, 0, 0);
}

uint64_t sub_1B74BAB14()
{
  v1 = v0[30];
  v2 = v0[21];
  v3 = sub_1B7452764(v0[20]);

  *v2 = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B74BABCC(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B723838C;

  return sub_1B74BA614(a1, a2, v6);
}

uint64_t sub_1B74BAC7C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  type metadata accessor for MapsTransactionInsightResult.XPC(0);
  sub_1B7800728();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F90);
  return sub_1B7800D08();
}

uint64_t MapsInsightsService.fetchHeroImageDetails(muid:resultProviderID:entity:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = v4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 88) = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1B74BAD28, 0, 0);
}

uint64_t sub_1B74BAD28()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = *(v0 + 32);
  v4 = *(*(v0 + 48) + 16);
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 28) = BYTE4(v2) & 1;
  *(v5 + 29) = v1;
  *(v0 + 16) = v4;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v6[2] = v0 + 16;
  v6[3] = &unk_1B7834238;
  v6[4] = v5;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1B74BAE68;
  v8 = *(v0 + 24);

  return sub_1B72B9ADC(v8, &unk_1B7834248);
}

uint64_t sub_1B74BAE68()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B74BAFAC, 0, 0);
}

uint64_t sub_1B74BAFAC()
{
  v1 = v0[10];
  v2 = v0[3];

  v3 = type metadata accessor for MapsHeroImageResult(0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1B74BB06C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 240) = a5;
  *(v5 + 176) = a3;
  *(v5 + 184) = a4;
  *(v5 + 168) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F78);
  *(v5 + 192) = v7;
  *(v5 + 200) = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a2;
  *(v5 + 208) = v8;
  *(v5 + 216) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1B74BB148, 0, 0);
}

uint64_t sub_1B74BB148()
{
  if ((*(v0 + 184) & 0x100000000) != 0)
  {
    v1 = 0;
  }

  else
  {
    v1 = sub_1B7802298();
  }

  *(v0 + 224) = v1;
  v2 = *(v0 + 208);
  v13 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 240);
  v11 = v1;
  v12 = *(v0 + 176);
  v6 = type metadata accessor for MapsHeroImageResult.Entity.XPC();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR___XPCMapsHeroImageResultEntity_value] = v5 & 1;
  *(v0 + 144) = v7;
  *(v0 + 152) = v6;
  v8 = objc_msgSendSuper2((v0 + 144), sel_init);
  *(v0 + 232) = v8;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_1B74BB36C;
  swift_continuation_init();
  *(v0 + 136) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F80);
  sub_1B7800CE8();
  (*(v4 + 32))(boxed_opaque_existential_1, v2, v3);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1B74BB590;
  *(v0 + 104) = &block_descriptor_30;
  [v13 fetchHeroImageDetailsWithMuid:v12 resultProviderID:v11 entity:v8 completionHandler:v0 + 80];
  (*(v4 + 8))(boxed_opaque_existential_1, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B74BB36C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B74BB44C, 0, 0);
}

uint64_t sub_1B74BB44C()
{
  v1 = v0[20];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[21];
  if (v1)
  {
    sub_1B74BD104(v1 + OBJC_IVAR___XPCMapsHeroImageResult_value, v0[21], type metadata accessor for MapsHeroImageResult);

    v5 = type metadata accessor for MapsHeroImageResult(0);
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  }

  else
  {

    v6 = type metadata accessor for MapsHeroImageResult(0);
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B74BB590(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F78);
  return sub_1B7800D08();
}

uint64_t MapsInsightsService.encodedStylingInfo(for:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  *(v2 + 40) = v1;
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  *(v2 + 96) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1B74BB620, 0, 0);
}

uint64_t sub_1B74BB620()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(*(v0 + 40) + 16);
  v5 = swift_allocObject();
  *(v0 + 64) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  *(v5 + 32) = v1;
  *(v0 + 32) = v4;

  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  v6[2] = v0 + 32;
  v6[3] = &unk_1B7834260;
  v6[4] = v5;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_1B74BB75C;

  return sub_1B72B9D08(v0 + 16, &unk_1B7834270);
}

uint64_t sub_1B74BB75C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B74BB898;
  }

  else
  {

    v2 = sub_1B74BB880;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B74BB898()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(0, 0xF000000000000000);
}

uint64_t sub_1B74BB914(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 240) = a5;
  *(v5 + 184) = a3;
  *(v5 + 192) = a4;
  *(v5 + 176) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F70);
  *(v5 + 200) = v7;
  *(v5 + 208) = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a2;
  *(v5 + 216) = v8;
  *(v5 + 224) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1B74BB9F0, 0, 0);
}

uint64_t sub_1B74BB9F0()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[27];
  v17 = v0[28];
  v7 = v0 + 25;
  v5 = v0[25];
  v6 = v7[1];
  v8 = *(v1 + 240);
  v10 = v1[23];
  v9 = v1[24];
  v11 = type metadata accessor for MapsStyleAttributesInput.XPC();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR___XPCMapsStyleAttributesInput_value];
  *v13 = v10;
  *(v13 + 1) = v9;
  v13[16] = v8 & 1;
  v1[20] = v12;
  v1[21] = v11;

  v14 = objc_msgSendSuper2(v1 + 10, sel_init);
  v1[29] = v14;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1B74BBC08;
  swift_continuation_init();
  v1[17] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993940);
  sub_1B7800CE8();
  (*(v6 + 32))(boxed_opaque_existential_1, v4, v5);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1B74BBD64;
  v1[13] = &block_descriptor_11;
  [v17 encodedStylingInfoFor:v14 completionHandler:?];
  (*(v6 + 8))(boxed_opaque_existential_1, v5);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1B74BBC08()
{

  return MEMORY[0x1EEE6DFA0](sub_1B74BBCE8, 0, 0);
}

uint64_t sub_1B74BBCE8()
{
  v1 = *(v0 + 232);
  **(v0 + 176) = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B74BBD64(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    sub_1B77FF5B8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F70);
  return sub_1B7800D08();
}

uint64_t sub_1B74BBDF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B721E658;

  return MapsInsightsService.mapsInsights(for:)(a1);
}

uint64_t sub_1B74BBE88(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7201BB0;

  return MapsInsightsService.fetchHeroImageDetails(muid:resultProviderID:entity:)(a1, a2, a3 | ((HIDWORD(a3) & 1) << 32), a4);
}

uint64_t sub_1B74BBF54(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B726AE04;

  return MapsInsightsService.encodedStylingInfo(for:)(a1);
}

uint64_t sub_1B74BBFEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = *a2;
  v4[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B74BC014, 0, 0);
}

uint64_t sub_1B74BC014()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = v0 + 24;
  *(v1 + 24) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F88);
  *v3 = v0;
  v3[1] = sub_1B74BC120;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x2865747563657865, 0xEB00000000293A5FLL, sub_1B74BD0F4, v1, v4);
}

uint64_t sub_1B74BC120()
{
  v2 = *v1;
  v2[9] = v0;

  if (!v0)
  {
    v3 = v2[4];

    *v3 = v2[2];
    v4 = v2[1];

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7293DC8, 0, 0);
}

uint64_t sub_1B74BC26C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B723838C;

  return sub_1B74BBFEC(a1, v4, v5, v6);
}

uint64_t sub_1B74BC334(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24) | (*(v2 + 28) << 32);
  v8 = *(v2 + 29);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B723838C;

  return sub_1B74BB06C(a1, a2, v6, v7, v8);
}

uint64_t sub_1B74BC40C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = *a2;
  v4[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B74BC434, 0, 0);
}

uint64_t sub_1B74BC434()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = v0 + 16;
  *(v1 + 24) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F7F8);
  *v3 = v0;
  v3[1] = sub_1B74BC540;
  v5 = *(v0 + 24);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0x2865747563657865, 0xEB00000000293A5FLL, sub_1B74BD0E4, v1, v4);
}

uint64_t sub_1B74BC540()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B74BD1D8, 0, 0);
}

uint64_t sub_1B74BC67C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B723838C;

  return sub_1B74BC40C(a1, v4, v5, v6);
}

uint64_t sub_1B74BC744(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B723838C;

  return sub_1B74BB914(a1, a2, v6, v7, v8);
}

uint64_t sub_1B74BC808(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = *a2;
  v4[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B74BC830, 0, 0);
}

uint64_t sub_1B74BC830()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = v0 + 16;
  *(v1 + 24) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993940);
  *v3 = v0;
  v3[1] = sub_1B7334BA8;
  v5 = *(v0 + 24);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0x2865747563657865, 0xEB00000000293A5FLL, sub_1B74BD0CC, v1, v4);
}

uint64_t sub_1B74BC93C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7201BB0;

  return sub_1B74BC808(a1, v4, v5, v6);
}

uint64_t dispatch thunk of MapsTransactionInsightsProviding.mapsInsights(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B721FDB8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MapsTransactionInsightsProviding.fetchHeroImageDetails(muid:resultProviderID:entity:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B7201BB0;

  return v15(a1, a2, a3 | ((HIDWORD(a3) & 1) << 32), a4, a5, a6);
}

uint64_t dispatch thunk of MapsTransactionInsightsProviding.encodedStylingInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B726AE04;

  return v9(a1, a2, a3);
}

void sub_1B74BCDA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7808C50;
  v1 = type metadata accessor for MapsTransactionInsightInput.XPC(0);
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F48);
  *(v0 + 32) = v1;
  v2 = sub_1B7205540(0, &qword_1EDAF93B8);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F50);
  *(v0 + 64) = v2;
  v3 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v4 = sub_1B7800C18();

  [v3 initWithArray_];

  sub_1B7800F88();
  __break(1u);
  __break(1u);
}

uint64_t sub_1B74BD104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B74BD16C(uint64_t a1)
{
  v2 = type metadata accessor for MapsTransactionInsightInput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BankConnectCloudConsent.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BankConnectCloudConsent.id.setter(uint64_t a1)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t BankConnectCloudConsent.consentID.getter()
{
  v1 = *(v0 + *(type metadata accessor for BankConnectCloudConsent() + 20));

  return v1;
}

uint64_t type metadata accessor for BankConnectCloudConsent()
{
  result = qword_1EB995FA0;
  if (!qword_1EB995FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BankConnectCloudConsent.consentID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BankConnectCloudConsent() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BankConnectCloudConsent.authorizedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BankConnectCloudConsent() + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BankConnectCloudConsent.authorizedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BankConnectCloudConsent() + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BankConnectCloudConsent.authorizedUntil.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BankConnectCloudConsent() + 28);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BankConnectCloudConsent.authorizedUntil.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BankConnectCloudConsent() + 28);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BankConnectCloudConsent.refreshSequenceNumber.setter(uint64_t a1)
{
  result = type metadata accessor for BankConnectCloudConsent();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t BankConnectCloudConsent.consentToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for BankConnectCloudConsent() + 36));

  return v1;
}

uint64_t BankConnectCloudConsent.consentToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BankConnectCloudConsent() + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BankConnectCloudConsent.consentStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BankConnectCloudConsent();
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t BankConnectCloudConsent.consentStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for BankConnectCloudConsent();
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t BankConnectCloudConsent.backgroundRefreshLastConfirmedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BankConnectCloudConsent() + 44);

  return sub_1B7280900(v3, a1);
}

uint64_t BankConnectCloudConsent.backgroundRefreshLastConfirmedAt.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for BankConnectCloudConsent() + 44);

  return sub_1B72DFF88(a1, v3);
}

uint64_t BankConnectCloudConsent.institutionID.getter()
{
  v1 = *(v0 + *(type metadata accessor for BankConnectCloudConsent() + 48));

  return v1;
}

uint64_t BankConnectCloudConsent.institutionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BankConnectCloudConsent() + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BankConnectCloudConsent.ckSchemaVersion.setter(__int16 a1)
{
  result = type metadata accessor for BankConnectCloudConsent();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t BankConnectCloudConsent.init(id:consentID:authorizedAt:authorizedUntil:refreshSequenceNumber:consentToken:consentStatus:backgroundRefreshLastConfirmedAt:institutionID:ckSchemaVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14)
{
  v30 = *a10;
  v20 = type metadata accessor for BankConnectCloudConsent();
  v21 = v20[11];
  v22 = sub_1B77FF988();
  v23 = *(v22 - 8);
  (*(v23 + 56))(a9 + v21, 1, 1, v22);
  v24 = sub_1B77FFA18();
  (*(*(v24 - 8) + 32))(a9, a1, v24);
  v25 = (a9 + v20[5]);
  *v25 = a2;
  v25[1] = a3;
  v26 = *(v23 + 32);
  v26(a9 + v20[6], a4, v22);
  v26(a9 + v20[7], a5, v22);
  *(a9 + v20[8]) = a6;
  v27 = (a9 + v20[9]);
  *v27 = a7;
  v27[1] = a8;
  *(a9 + v20[10]) = v30;
  result = sub_1B72DFF88(a11, a9 + v21);
  v29 = (a9 + v20[12]);
  *v29 = a12;
  v29[1] = a13;
  *(a9 + v20[13]) = a14;
  return result;
}

BOOL _s10FinanceKit23BankConnectCloudConsentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for BankConnectCloudConsent();
  v15 = v14[5];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B77FF918() & 1) == 0 || (sub_1B77FF918() & 1) == 0 || *(a1 + v14[8]) != *(a2 + v14[8]))
  {
    return 0;
  }

  v20 = v14[9];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v14[10]) != *(a2 + v14[10]))
  {
    return 0;
  }

  v24 = v14[11];
  v25 = *(v11 + 48);
  sub_1B7280900(a1 + v24, v13);
  v35 = v25;
  sub_1B7280900(a2 + v24, &v13[v25]);
  v26 = *(v5 + 48);
  if (v26(v13, 1, v4) != 1)
  {
    sub_1B7280900(v13, v10);
    if (v26(&v13[v35], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v35], v4);
      sub_1B74BE1F0(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
      v28 = sub_1B7800828();
      v29 = *(v5 + 8);
      v29(v7, v4);
      v29(v10, v4);
      sub_1B7205418(v13, &qword_1EB98EBD0);
      if ((v28 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_23;
    }

    (*(v5 + 8))(v10, v4);
LABEL_19:
    sub_1B7205418(v13, &qword_1EB98FCE0);
    return 0;
  }

  if (v26(&v13[v35], 1, v4) != 1)
  {
    goto LABEL_19;
  }

  sub_1B7205418(v13, &qword_1EB98EBD0);
LABEL_23:
  v30 = v14[12];
  v31 = *(a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  if (v31 == *v33 && v32 == v33[1] || (sub_1B78020F8() & 1) != 0)
  {
    return *(a1 + v14[13]) == *(a2 + v14[13]);
  }

  return 0;
}

void sub_1B74BE120()
{
  sub_1B77FFA18();
  if (v0 <= 0x3F)
  {
    sub_1B77FF988();
    if (v1 <= 0x3F)
    {
      sub_1B72F2B80();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B74BE1F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ManagedFoundInTransactionInsightImporter.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

uint64_t ManagedFoundInTransactionInsightImporter.init()()
{
  result = v0;
  *(v0 + 16) = 1;
  return result;
}

void ManagedFoundInTransactionInsightImporter.insertOrUpdateInsight(with:on:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ManagedInternalTransaction.createOrMergeInsightsIfNeeded(in:)(a3);
  if (!v3)
  {
    v7 = v6;
    v8 = [v6 foundInInsightObject];
    if (!v8)
    {
      type metadata accessor for ManagedFoundInTransactionInsight();
      v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      [v7 setFoundInInsightObject_];
    }

    sub_1B74BE33C(v8, a1, a3);
  }
}

void sub_1B74BE33C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FoundInMailItem();
  v25 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v24 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v23 - v10);
  v12 = ManagedFoundInTransactionInsight.mailItems.getter();
  v13 = sub_1B723B6F0(v12);

  v27 = v13;
  v14 = *(a2 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v23[0] = a1;
    v23[1] = v13;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1B7801B98();
    v16 = type metadata accessor for ManagedFoundInMailItem();
    v17 = a2 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v25 = *(v25 + 72);
    do
    {
      sub_1B7437084(v17, v11);
      sub_1B73781D4();
      v20 = static ManagedFoundInMailItem.mailItem(withMessageID:in:)(*v11, v11[1]);
      if (v3)
      {

        sub_1B74370E8(v11);

        return;
      }

      if (v20)
      {
        ManagedFoundInMailItem.update(with:context:)(v11, a3);
      }

      else
      {
        v18 = v24;
        sub_1B7437084(v11, v24);
        v19 = [objc_allocWithZone(v16) initWithContext_];
        ManagedFoundInMailItem.update(with:context:)(v18, a3);

        sub_1B74370E8(v18);
        ManagedFoundInMailItem.orderDetails.getter();
      }

      sub_1B74370E8(v11);
      sub_1B7801B68();
      sub_1B7801BA8();
      sub_1B7801BB8();
      sub_1B7801B78();
      v17 += v25;
      --v14;
    }

    while (v14);
    v15 = v26;
    a1 = v23[0];
  }

  sub_1B7262EDC(v15);

  v21 = sub_1B7519D0C(v27);

  sub_1B723B6F0(v21);

  type metadata accessor for ManagedFoundInMailItem();
  sub_1B74BE6A0();
  v22 = sub_1B7800F78();

  [a1 setMailItemObjects_];
}

unint64_t sub_1B74BE6A0()
{
  result = qword_1EB98FFC8;
  if (!qword_1EB98FFC8)
  {
    type metadata accessor for ManagedFoundInMailItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98FFC8);
  }

  return result;
}

uint64_t sub_1B74BE6F8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *(type metadata accessor for MapsTransactionInsightInput(0) - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B74BE7C0, 0, 0);
}

size_t sub_1B74BE7C0()
{
  v1 = v0[8];
  if (v1 >> 62)
  {
    v2 = sub_1B7801958();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v25 = MEMORY[0x1E69E7CC0];
    result = sub_1B71FE3AC(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v3 = v25;
    v5 = v0[10];
    if ((v1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        v7 = v0[12];
        v8 = MEMORY[0x1B8CA5DC0](i, v0[8]);
        v9 = OBJC_IVAR___XPCMapsTransactionInsightInput_value;
        swift_beginAccess();
        sub_1B74BD104(v8 + v9, v7, type metadata accessor for MapsTransactionInsightInput);
        swift_unknownObjectRelease();
        v11 = *(v25 + 16);
        v10 = *(v25 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B71FE3AC(v10 > 1, v11 + 1, 1);
        }

        v12 = v0[12];
        *(v25 + 16) = v11 + 1;
        sub_1B74C0250(v12, v25 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11);
      }
    }

    else
    {
      v13 = (v0[8] + 32);
      do
      {
        v14 = v0[11];
        v15 = *v13;
        v16 = OBJC_IVAR___XPCMapsTransactionInsightInput_value;
        swift_beginAccess();
        sub_1B74BD104(v15 + v16, v14, type metadata accessor for MapsTransactionInsightInput);
        v18 = *(v25 + 16);
        v17 = *(v25 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1B71FE3AC(v17 > 1, v18 + 1, 1);
        }

        v19 = v0[11];
        *(v25 + 16) = v18 + 1;
        sub_1B74C0250(v19, v25 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18);
        ++v13;
        --v2;
      }

      while (v2);
    }
  }

  v0[13] = v3;
  v20 = v0[9];
  v21 = v20[5];
  v22 = v20[6];
  __swift_project_boxed_opaque_existential_1(v20 + 2, v21);
  v24 = (*(v22 + 8) + **(v22 + 8));
  v23 = swift_task_alloc();
  v0[14] = v23;
  *v23 = v0;
  v23[1] = sub_1B74BEAF4;

  return v24(v3, v21, v22);
}

uint64_t sub_1B74BEAF4(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B74BEC14, 0, 0);
}

uint64_t sub_1B74BEC14()
{
  v1 = sub_1B7452DDC(*(v0 + 120));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B74BEE30(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  type metadata accessor for MapsTransactionInsightInput.XPC(0);
  v4 = sub_1B7800C38();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_1B74BEF08;

  return sub_1B74BE6F8(v4);
}

uint64_t sub_1B74BEF08()
{
  v1 = *(*v0 + 24);
  v5 = *v0;

  type metadata accessor for MapsTransactionInsightResult.XPC(0);
  v2 = sub_1B7800708();

  (v1)[2](v1, v2);

  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1B74BF0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for MapsHeroImageResult(0);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F7F8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B74BF1AC, 0, 0);
}

uint64_t sub_1B74BF1AC()
{
  v1 = *(v0 + 80);
  sub_1B719B06C(*(v0 + 96) + 16, v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  if (v1)
  {
    sub_1B78022A8();
  }

  *(v0 + 144) = *(*(v0 + 88) + OBJC_IVAR___XPCMapsHeroImageResultEntity_value);
  v8 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1B74BF358;
  v5 = *(v0 + 128);
  v6 = *(v0 + 72);

  return v8(v5, v6, 0x100000000, v0 + 144, v2, v3);
}

uint64_t sub_1B74BF358()
{

  return MEMORY[0x1EEE6DFA0](sub_1B74BF454, 0, 0);
}

uint64_t sub_1B74BF454()
{
  v1 = *(v0 + 128);
  if ((*(*(v0 + 112) + 48))(v1, 1, *(v0 + 104)) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    sub_1B74C0090(v1);
    v2 = 0;
  }

  else
  {
    v3 = *(v0 + 120);
    sub_1B74BD104(v1, v3, type metadata accessor for MapsHeroImageResult);
    v4 = type metadata accessor for MapsHeroImageResult.XPC(0);
    v5 = objc_allocWithZone(v4);
    sub_1B74BD104(v3, v5 + OBJC_IVAR___XPCMapsHeroImageResult_value, type metadata accessor for MapsHeroImageResult);
    *(v0 + 56) = v5;
    *(v0 + 64) = v4;
    v2 = objc_msgSendSuper2((v0 + 56), sel_init);
    sub_1B74C00F8(v3);
    sub_1B74C00F8(v1);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  v6 = *(v0 + 8);

  return v6(v2);
}

uint64_t sub_1B74BF73C(uint64_t a1, void *a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a2;
  v5[5] = _Block_copy(aBlock);
  v9 = a2;
  v10 = a3;

  v11 = swift_task_alloc();
  v5[6] = v11;
  *v11 = v5;
  v11[1] = sub_1B74BF820;

  return sub_1B74BF0B0(a1, a2, v10);
}

uint64_t sub_1B74BF820(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1B74BFB34(void *a1, void *aBlock, uint64_t a3)
{
  v3[8] = a1;
  v3[9] = a3;
  v3[10] = _Block_copy(aBlock);
  v5 = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B74BFBC4, 0, 0);
}

uint64_t sub_1B74BFBC4()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = *(v2 + OBJC_IVAR___XPCMapsStyleAttributesInput_value + 8);
  v6 = *(v2 + OBJC_IVAR___XPCMapsStyleAttributesInput_value + 16);
  *(v0 + 40) = *(v2 + OBJC_IVAR___XPCMapsStyleAttributesInput_value);
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;
  v7 = *(v4 + 24);

  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_1B74BFD28;

  return v10(v0 + 40, v3, v4);
}

uint64_t sub_1B74BFD28(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = a2;
  v3[12] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B74BFE48, 0, 0);
}

uint64_t sub_1B74BFE48()
{
  v1 = v0[12];
  v2 = v0[8];

  if (v1 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = v0[12];
    v5 = v0[3];
    v3 = sub_1B77FF598();
    sub_1B72380B8(v5, v4);
  }

  v6 = v0[10];
  (v6)[2](v6, v3);

  _Block_release(v6);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1B74BFF14()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B723838C;

  return sub_1B74BFB34(v2, v3, v4);
}

uint64_t sub_1B74BFFC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B723838C;

  return sub_1B74BF73C(v2, v3, v4, v5, v6);
}

uint64_t sub_1B74C0090(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F7F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B74C00F8(uint64_t a1)
{
  v2 = type metadata accessor for MapsHeroImageResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B74C019C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B7201BB0;

  return sub_1B74BEE30(v2, v3, v4);
}

uint64_t sub_1B74C0250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsTransactionInsightInput(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ManagedOrderPayment.transactions.getter()
{
  v1 = sub_1B77FF338();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 transactionObjects];
  v13 = MEMORY[0x1E69E7CC0];
  sub_1B78014D8();
  sub_1B7440FE4();
  sub_1B78017B8();
  while (v12)
  {
    sub_1B72051F0(v11, &v9);
    type metadata accessor for ManagedOrderPaymentTransaction();
    if ((swift_dynamicCast() & 1) != 0 && v10)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
    }

    sub_1B78017B8();
  }

  (*(v2 + 8))(v4, v1);

  v11[0] = sub_1B725F29C(v6);
  sub_1B74C2530(v11, sub_1B77E6DD4, type metadata accessor for ManagedOrderPaymentTransaction);

  return v11[0];
}

FinanceKit::ManagedOrderPaymentStatus_optional __swiftcall ManagedOrderPaymentStatus.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 6u)
  {
    v2 = 6;
  }

  *v1 = v2;
  return rawValue;
}

void ManagedOrderPayment.status.getter(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B7800838();
  [v2 willAccessValueForKey_];

  v5 = [v2 primitiveStatusValue];
  v6 = sub_1B7800838();
  [v2 didAccessValueForKey_];

  if (!v5)
  {
    v8 = 6;
    goto LABEL_5;
  }

  v7 = [v5 shortValue];
  if (v7 <= 5)
  {
    v8 = v7;

LABEL_5:
    *a1 = v8;
    return;
  }

  __break(1u);
}

void ManagedOrderPayment.status.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  v3 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  [v1 setPrimitiveStatusValue_];
  v4 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

void (*ManagedOrderPayment.status.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC10FinanceKit19ManagedOrderPayment_statusValueKey];
  v5 = *&v1[OBJC_IVAR____TtC10FinanceKit19ManagedOrderPayment_statusValueKey + 8];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v6 = sub_1B7800838();
  [v2 willAccessValueForKey_];

  v7 = [v2 primitiveStatusValue];
  v8 = sub_1B7800838();
  [v2 didAccessValueForKey_];

  if (!v7)
  {
    v10 = 6;
    goto LABEL_5;
  }

  result = [v7 shortValue];
  if (result <= 5)
  {
    v10 = result;

LABEL_5:
    *(a1 + 24) = v10;
    return sub_1B74C0824;
  }

  __break(1u);
  return result;
}

void sub_1B74C0824(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  v4 = *a1;
  v5 = sub_1B7800838();
  [v4 willChangeValueForKey_];

  [v4 setPrimitiveStatusValue_];
  v6 = sub_1B7800838();
  [v4 didChangeValueForKey_];
}

void sub_1B74C0920(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 totalCurrencyCode];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1B74C0978(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 paymentMethods];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800C38();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_1B74C09E0(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = sub_1B7800C18();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setPaymentMethods_];
}

id ManagedOrderPayment.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderPayment.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderPayment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ManagedOrderPayment.summaryItems.getter()
{
  v1 = sub_1B77FF338();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 summaryItemObjects];
  v13 = MEMORY[0x1E69E7CC0];
  sub_1B78014D8();
  sub_1B7440FE4();
  sub_1B78017B8();
  while (v12)
  {
    sub_1B72051F0(v11, &v9);
    type metadata accessor for ManagedOrderPaymentSummaryItem();
    if ((swift_dynamicCast() & 1) != 0 && v10)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
    }

    sub_1B78017B8();
  }

  (*(v2 + 8))(v4, v1);

  v11[0] = sub_1B725F344(v6);
  sub_1B74C2530(v11, sub_1B77E6DD4, type metadata accessor for ManagedOrderPaymentSummaryItem);

  return v11[0];
}

void (*ManagedOrderPayment.summaryItems.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ManagedOrderPayment.summaryItems.getter();
  return sub_1B74C0E90;
}

void ManagedOrderPayment.total.getter(uint64_t a1@<X8>)
{
  v3 = [v1 totalAmount];
  [v3 decimalValue];

  v4 = [v1 totalCurrencyCode];
  v5 = sub_1B7800868();
  v7 = v6;

  CurrencyAmount.init(_:currencyCode:)(v8, v9, v10, v5, v7, a1);
}

double sub_1B74C0F80@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 totalAmount];
  [v4 decimalValue];
  v5 = v14;
  v6 = v13;

  v7 = [v3 totalCurrencyCode];
  v8 = sub_1B7800868();
  v10 = v9;

  CurrencyAmount.init(_:currencyCode:)(v6, *(&v6 + 1), v5, v8, v10, &v13);
  result = *&v13;
  v12 = v14;
  *a2 = v13;
  *(a2 + 16) = v12;
  *(a2 + 32) = v15;
  return result;
}

void sub_1B74C1058(__int128 *a1, void **a2)
{
  v5 = *a1;
  LODWORD(v6) = *(a1 + 4);
  v2 = *a2;
  v3 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
  [v2 setTotalAmount_];

  v4 = sub_1B7800838();
  [v2 setTotalCurrencyCode_];
}

void ManagedOrderPayment.total.setter(__int128 *a1)
{
  v4 = *a1;
  LODWORD(v5) = *(a1 + 4);
  v2 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
  [v1 setTotalAmount_];

  v3 = sub_1B7800838();

  [v1 setTotalCurrencyCode_];
}

void (*ManagedOrderPayment.total.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xA8uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 160) = v2;
  v6 = [v2 totalAmount];
  [v6 decimalValue];

  v7 = [v2 totalCurrencyCode];
  v8 = sub_1B7800868();
  v10 = v9;

  CurrencyAmount.init(_:currencyCode:)(v12, v13, v14, v8, v10, v5);
  return sub_1B74C12B4;
}

void sub_1B74C12B4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 160);
  if (a2)
  {
    v4 = v2[1];
    v2[5] = *v2;
    v2[6] = v4;
    *(v2 + 14) = *(v2 + 4);
    v5 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    sub_1B7215720((v2 + 5), v2 + 120);
    *(v2 + 30) = *(v2 + 20);
    *(v2 + 124) = *(v2 + 84);
    v6 = [v5 initWithDecimal_];
    [v3 setTotalAmount_];

    v7 = sub_1B7800838();
    sub_1B721722C((v2 + 5));
    [v3 setTotalCurrencyCode_];

    v8 = v2[1];
    *(v2 + 40) = *v2;
    *(v2 + 56) = v8;
    *(v2 + 9) = *(v2 + 4);
    sub_1B721722C(v2 + 40);
  }

  else
  {
    v12 = *v2;
    v13 = *(v2 + 4);
    v9 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    *(v2 + 40) = v12;
    *(v2 + 14) = v13;
    v10 = [v9 initWithDecimal_];
    [v3 setTotalAmount_];

    v11 = sub_1B7800838();

    [v3 setTotalCurrencyCode_];
  }

  free(v2);
}

uint64_t ManagedOrderPayment.applePayTransactionIdentifiers.getter()
{
  v1 = sub_1B77FF338();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 applePayTransactionIdentifierObjects];
  v6 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  sub_1B78014D8();
  sub_1B7440FE4();
  sub_1B78017B8();
  while (v11)
  {
    sub_1B72051F0(&v10, v8);
    type metadata accessor for ManagedOrderApplePayTransactionIdentifier();
    if ((swift_dynamicCast() & 1) != 0 && v9)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
      v6 = v12;
    }

    sub_1B78017B8();
  }

  (*(v2 + 8))(v4, v1);
  return v6;
}

void (*ManagedOrderPayment.applePayTransactionIdentifiers.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ManagedOrderPayment.applePayTransactionIdentifiers.getter();
  return sub_1B74C1698;
}

void sub_1B74C16B8(void *a1, void **a2, uint64_t a3, uint64_t a4, void (*a5)(void), SEL *a6)
{
  v7 = *a2;
  a5(*a1);
  v8 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v9 = sub_1B7800C18();

  v10 = [v8 initWithArray_];

  [v7 *a6];
}

void sub_1B74C1794(uint64_t a1, void (*a2)(void), SEL *a3)
{
  a2();

  v5 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v6 = sub_1B7800C18();

  v7 = [v5 initWithArray_];

  [v3 *a3];
}

void (*ManagedOrderPayment.transactions.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ManagedOrderPayment.transactions.getter();
  return sub_1B74C189C;
}

void sub_1B74C18BC(uint64_t *a1, char a2, void (*a3)(uint64_t), SEL *a4)
{
  v6 = a1[1];
  v7 = *a1;
  if (a2)
  {

    a3(v8);

    v9 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
    v10 = sub_1B7800C18();

    v13 = [v9 initWithArray_];

    [v6 *a4];
  }

  else
  {
    a3(v7);

    v11 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
    v12 = sub_1B7800C18();

    v13 = [v11 initWithArray_];

    [v6 *a4];
  }
}

uint64_t ManagedOrderPayment.__allocating_init(_:bundle:context:)(_OWORD *a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for RawOrderPaymentTransaction();
  v98 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v91 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FB8);
  v9 = MEMORY[0x1EEE9AC00](v90);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v86 - v12;
  v97 = sub_1B77FF4F8();
  v13 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v116 = a1[2];
  v117 = v15;
  v118 = a1[4];
  v16 = a1[1];
  *v115 = *a1;
  *&v115[16] = v16;
  v17 = [objc_allocWithZone(v3) initWithContext_];
  v18 = v17;
  v19 = 0;
  v20 = v115[0];
  if (v115[0] != 6)
  {
    v21 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v22 = v18;
    v17 = [v21 initWithShort_];
    v19 = v17;
  }

  v23 = v17;
  v24 = sub_1B7800838();
  [v18 willChangeValueForKey_];

  [v18 setPrimitiveStatusValue_];
  v25 = sub_1B7800838();
  [v18 didChangeValueForKey_];

  v26 = sub_1B7800C18();
  [v18 setPaymentMethods_];

  LODWORD(v26) = *&v115[8];
  v27 = objc_allocWithZone(MEMORY[0x1E696AB90]);
  *v111 = v26;
  *&v111[4] = *&v115[12];
  v28 = [v27 initWithDecimal_];
  [v18 setTotalAmount_];

  v29 = sub_1B7800838();
  [v18 setTotalCurrencyCode_];

  v30 = *(v117 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  v103 = a3;
  v86 = v18;
  v89 = v11;
  if (v30)
  {
    v114 = MEMORY[0x1E69E7CC0];
    v99 = v117;

    v32 = sub_1B7801B98();
    v33 = v99;
    v87 = *(v99 + 16);
    if (v87)
    {
      v18 = 0;
      v34 = (v99 + 32);
      v94 = (v13 + 16);
      v95 = (v13 + 8);
      v92 = (v30 - 1);
      v93 = a2;
      while (v18 < *(v33 + 16))
      {
        v35 = *v34;
        v36 = v34[1];
        v37 = v34[2];
        v110 = *(v34 + 6);
        v109[1] = v36;
        v109[2] = v37;
        v109[0] = v35;
        v38 = v34[1];
        v105 = *v34;
        v106 = v38;
        v107 = v34[2];
        v108 = *(v34 + 6);
        v102 = v18;
        *v111 = v18;
        *&v111[8] = v105;
        *v112 = v38;
        *&v112[16] = v107;
        v113 = v108;
        v39 = objc_allocWithZone(type metadata accessor for ManagedOrderPaymentSummaryItem());
        sub_1B73262A0(v109, v104);
        sub_1B74C26D0(v111, v104);

        v101 = a3;
        v40 = [v39 initWithContext_];
        *&v100 = &v86;
        MEMORY[0x1EEE9AC00](v40);
        *(&v86 - 4) = v41;
        *(&v86 - 3) = v42;
        *(&v86 - 2) = 0x726564726FLL;
        *(&v86 - 1) = 0xE500000000000000;
        v44 = *(v43 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
        v46 = v96;
        v45 = v97;
        v47 = (*v94)(v96, v43 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v97);
        MEMORY[0x1EEE9AC00](v47);
        *(&v86 - 4) = v46;
        *(&v86 - 3) = sub_1B7262E4C;
        *(&v86 - 2) = (&v86 - 6);
        v48 = v40;
        os_unfair_lock_lock((v44 + 24));
        sub_1B723C5C4((v44 + 16), v104);
        os_unfair_lock_unlock((v44 + 24));
        v49 = *v104;
        (*v95)(v46, v45);
        [v48 setLabel_];

        LODWORD(v49) = *v112;
        v100 = *&v112[4];
        v50 = objc_allocWithZone(MEMORY[0x1E696AB90]);
        *v104 = v49;
        *&v104[4] = v100;
        v51 = [v50 initWithDecimal_];
        [v48 setValueAmount_];

        v52 = sub_1B7800838();
        [v48 setValueCurrencyCode_];
        a2 = v93;

        a3 = &unk_1B78344D8;
        v32 = sub_1B7205418(v111, &qword_1EB995FC0);
        v18 = v102;
        if (v102 == 0x8000)
        {
          goto LABEL_27;
        }

        [v48 setPositionIndex_];
        sub_1B7205418(v111, &qword_1EB995FC0);
        sub_1B7801B68();
        sub_1B7801BA8();
        sub_1B7801BB8();
        v32 = sub_1B7801B78();
        if (v92 == v18)
        {
          goto LABEL_11;
        }

        ++v18;
        v34 = (v34 + 56);
        a3 = v103;
        v33 = v99;
        if (v87 == v18)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    v53 = a2;

    v31 = v114;
    a3 = v103;
    v18 = v86;
  }

  else
  {
    v53 = a2;
  }

  sub_1B72407E4(v31);

  v54 = 0x1E695D000uLL;
  v55 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v56 = sub_1B7800C18();

  v57 = [v55 initWithArray_];

  [v18 setSummaryItemObjects_];
  v58 = v118;
  v59 = *(v118 + 16);
  v60 = MEMORY[0x1E69E7CC0];
  if (v59)
  {
    *v111 = MEMORY[0x1E69E7CC0];
    sub_1B7801B98();
    v61 = type metadata accessor for ManagedOrderApplePayTransactionIdentifier();
    v62 = v58 + 40;
    do
    {
      v63 = objc_allocWithZone(v61);
      v64 = a3;

      v65 = [v63 initWithContext_];
      v66 = sub_1B7800838();

      [v65 setValue_];

      a3 = v103;
      sub_1B7801B68();
      sub_1B7801BA8();
      sub_1B7801BB8();
      sub_1B7801B78();
      v62 += 16;
      --v59;
    }

    while (v59);
    v60 = *v111;
    v18 = v86;
    v54 = 0x1E695D000uLL;
  }

  sub_1B72407FC(v60);

  v67 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v68 = sub_1B7800C18();

  v69 = [v67 initWithArray_];

  [v18 setApplePayTransactionIdentifierObjects_];
  v70 = *(&v118 + 1);

  sub_1B74C2740(v115);
  v71 = *(v70 + 16);
  if (v71)
  {
    *v111 = MEMORY[0x1E69E7CC0];
    sub_1B7801B98();
    v72 = *(v70 + 16);
    v101 = (v70 + ((*(v98 + 80) + 32) & ~*(v98 + 80)));
    v102 = v72;
    v32 = type metadata accessor for ManagedOrderPaymentTransaction();
    *&v100 = v32;
    a3 = 0;
    while (v102 != a3)
    {
      if (a3 >= *(v70 + 16))
      {
        goto LABEL_29;
      }

      v73 = v70;
      v74 = v90;
      v75 = *(v90 + 48);
      v76 = v88;
      sub_1B74C2794(v101 + *(v98 + 72) * a3, &v88[v75]);
      v77 = v89;
      *v89 = a3;
      v78 = *(v74 + 48);
      sub_1B74C27F8(&v76[v75], v77 + v78);
      v79 = v91;
      sub_1B74C2794(v77 + v78, v91);

      v18 = v103;
      v80 = sub_1B7564574(v79, v53, v18);

      if (a3 == 0x8000)
      {
        goto LABEL_30;
      }

      [v80 setPositionIndex_];
      sub_1B7205418(v77, &qword_1EB995FB8);
      sub_1B7801B68();
      v18 = *(*v111 + 16);
      sub_1B7801BA8();
      sub_1B7801BB8();
      v32 = sub_1B7801B78();
      ++a3;
      v70 = v73;
      if (v71 == a3)
      {

        v81 = *v111;
        a3 = v103;
        v18 = v86;
        v54 = 0x1E695D000;
        goto LABEL_25;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    os_unfair_lock_unlock(v32);
    result = (*v95)(a3, v18);
    __break(1u);
    return result;
  }

  v81 = MEMORY[0x1E69E7CC0];
LABEL_25:
  sub_1B7240814(v81);

  v82 = objc_allocWithZone(*(v54 + 4056));
  v83 = sub_1B7800C18();

  v84 = [v82 initWithArray_];

  [v18 setTransactionObjects_];

  return v18;
}

uint64_t sub_1B74C2530(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = a2(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_1B74C25C4(v10, a3);
  return sub_1B7801B78();
}

void sub_1B74C25C4(uint64_t *a1, void (*a2)(void))
{
  v4 = a1[1];
  v5 = sub_1B7802038();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v8 = sub_1B7800C78();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      sub_1B72B0A5C(v10, v11, a1, v6);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1B72AFCB8(0, v4, 1, a1);
  }
}

uint64_t sub_1B74C26D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B74C2794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawOrderPaymentTransaction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B74C27F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawOrderPaymentTransaction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B74C2860()
{
  result = qword_1EB995FC8;
  if (!qword_1EB995FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995FC8);
  }

  return result;
}

id ManagedOrderPaymentSummaryItem.__allocating_init(_:bundle:context:)(__int128 *a1, uint64_t a2, void *a3)
{
  v5 = a1[1];
  v19 = *a1;
  *v20 = v5;
  *&v20[16] = a1[2];
  v21 = *(a1 + 6);
  v14 = v19;
  v15 = 0x726564726FLL;
  v16 = 0xE500000000000000;
  v6 = [objc_allocWithZone(v3) initWithContext_];
  v7 = sub_1B723940C(sub_1B7262E4C, v13);
  [v6 setLabel_];

  LODWORD(v7) = *v20;
  v12 = *&v20[4];
  v8 = objc_allocWithZone(MEMORY[0x1E696AB90]);
  v17 = v7;
  v18 = v12;
  v9 = [v8 initWithDecimal_];
  [v6 setValueAmount_];

  v10 = sub_1B7800838();
  [v6 setValueCurrencyCode_];

  sub_1B73262FC(&v19);
  return v6;
}

void sub_1B74C2A90(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 valueCurrencyCode];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id ManagedOrderPaymentSummaryItem.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderPaymentSummaryItem.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderPaymentSummaryItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ManagedOrderPaymentSummaryItem.value.getter(uint64_t a1@<X8>)
{
  v3 = [v1 valueAmount];
  [v3 decimalValue];

  v4 = [v1 valueCurrencyCode];
  v5 = sub_1B7800868();
  v7 = v6;

  CurrencyAmount.init(_:currencyCode:)(v8, v9, v10, v5, v7, a1);
}

double sub_1B74C2D08@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 valueAmount];
  [v4 decimalValue];
  v5 = v14;
  v6 = v13;

  v7 = [v3 valueCurrencyCode];
  v8 = sub_1B7800868();
  v10 = v9;

  CurrencyAmount.init(_:currencyCode:)(v6, *(&v6 + 1), v5, v8, v10, &v13);
  result = *&v13;
  v12 = v14;
  *a2 = v13;
  *(a2 + 16) = v12;
  *(a2 + 32) = v15;
  return result;
}

void sub_1B74C2DE0(__int128 *a1, void **a2)
{
  v5 = *a1;
  LODWORD(v6) = *(a1 + 4);
  v2 = *a2;
  v3 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
  [v2 setValueAmount_];

  v4 = sub_1B7800838();
  [v2 setValueCurrencyCode_];
}

void ManagedOrderPaymentSummaryItem.value.setter(__int128 *a1)
{
  v4 = *a1;
  LODWORD(v5) = *(a1 + 4);
  v2 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
  [v1 setValueAmount_];

  v3 = sub_1B7800838();

  [v1 setValueCurrencyCode_];
}

void (*ManagedOrderPaymentSummaryItem.value.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xA8uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 160) = v2;
  v6 = [v2 valueAmount];
  [v6 decimalValue];

  v7 = [v2 valueCurrencyCode];
  v8 = sub_1B7800868();
  v10 = v9;

  CurrencyAmount.init(_:currencyCode:)(v12, v13, v14, v8, v10, v5);
  return sub_1B74C303C;
}

void sub_1B74C303C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 160);
  if (a2)
  {
    v4 = v2[1];
    v2[5] = *v2;
    v2[6] = v4;
    *(v2 + 14) = *(v2 + 4);
    v5 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    sub_1B7215720((v2 + 5), v2 + 120);
    *(v2 + 30) = *(v2 + 20);
    *(v2 + 124) = *(v2 + 84);
    v6 = [v5 initWithDecimal_];
    [v3 setValueAmount_];

    v7 = sub_1B7800838();
    sub_1B721722C((v2 + 5));
    [v3 setValueCurrencyCode_];

    v8 = v2[1];
    *(v2 + 40) = *v2;
    *(v2 + 56) = v8;
    *(v2 + 9) = *(v2 + 4);
    sub_1B721722C(v2 + 40);
  }

  else
  {
    v12 = *v2;
    v13 = *(v2 + 4);
    v9 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    *(v2 + 40) = v12;
    *(v2 + 14) = v13;
    v10 = [v9 initWithDecimal_];
    [v3 setValueAmount_];

    v11 = sub_1B7800838();

    [v3 setValueCurrencyCode_];
  }

  free(v2);
}

FinanceKit::TransactionSource_optional __swiftcall TransactionSource.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 3u)
  {
    v2 = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t TransactionSource.debugDescription.getter()
{
  v1 = 0x6E6F43206B6E6142;
  if (*v0 != 1)
  {
    v1 = 0x74694B73736150;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

unint64_t sub_1B74C3370()
{
  result = qword_1EB995FD0;
  if (!qword_1EB995FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995FD0);
  }

  return result;
}

unint64_t sub_1B74C33C8()
{
  result = qword_1EB995FD8;
  if (!qword_1EB995FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB995FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995FD8);
  }

  return result;
}

uint64_t sub_1B74C342C()
{
  v1 = 0x6E6F43206B6E6142;
  if (*v0 != 1)
  {
    v1 = 0x74694B73736150;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

unint64_t sub_1B74C34A0()
{
  result = qword_1EB995FE8;
  if (!qword_1EB995FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995FE8);
  }

  return result;
}

id ManagedOrderPickupFulfillment.status.getter()
{
  result = [v0 statusValue];
  if (result > 5)
  {
    sub_1B7801A78();

    [v0 statusValue];
    v2 = sub_1B7802068();
    MEMORY[0x1B8CA4D30](v2);

    result = sub_1B7801C88();
    __break(1u);
  }

  return result;
}

uint64_t ManagedOrderPickupFulfillment.pickupWindow.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for Duration();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B77FF988();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  v18 = [v2 pickupDate];
  if (v18)
  {
    v31 = v10;
    v32 = a1;
    v19 = v18;
    sub_1B77FF928();

    v20 = *(v12 + 32);
    v20(v17, v15, v11);
    v21 = [v2 pickupWindowDurationValue];
    if (v21)
    {
      v22 = v21;
      sub_1B7800868();

      Duration.init(from:)(v6);
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        v23 = v6;
        v24 = v31;
        sub_1B719AAB4(v23, v31, type metadata accessor for Duration);
        v25 = v32;
        v20(v32, v17, v11);
        v26 = type metadata accessor for TimeWindow(0);
        sub_1B719AAB4(v24, &v25[*(v26 + 20)], type metadata accessor for Duration);
        v27 = type metadata accessor for Order.FulfillmentWindow(0);
LABEL_10:
        swift_storeEnumTagMultiPayload();
        return (*(*(v27 - 8) + 56))(v25, 0, 1, v27);
      }
    }

    else
    {
      (*(v8 + 56))(v6, 1, 1, v7);
    }

    sub_1B7205418(v6, &qword_1EB995FF0);
    v25 = v32;
    v20(v32, v17, v11);
    v27 = type metadata accessor for Order.FulfillmentWindow(0);
    goto LABEL_10;
  }

  v28 = type metadata accessor for Order.FulfillmentWindow(0);
  v29 = *(*(v28 - 8) + 56);

  return v29(a1, 1, 1, v28);
}

char *ManagedOrderPickupFulfillment.lineItems.getter()
{
  v1 = [v0 lineItemObjects];
  type metadata accessor for ManagedOrderLineItem();
  sub_1B7308800();
  v2 = sub_1B7800FA8();

  v4 = sub_1B7519CE0(v2);
  sub_1B74D29C8(&v4);

  return v4;
}

id ManagedOrderPickupFulfillment.__allocating_init(_:bundle:context:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B74C5ED8(a1, a2, a3);

  return v4;
}

uint64_t ManagedOrderPickupFulfillment.rawOrderPickupFulfillment.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v105 = (&v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v109 = &v102 - v7;
  v8 = type metadata accessor for Duration();
  v122 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v104 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v111 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v106 = &v102 - v13;
  v14 = [v1 fulfillmentIdentifier];
  *&v117 = sub_1B7800868();
  *&v116 = v15;

  v124 = v2;
  LODWORD(v115) = ManagedOrderPickupFulfillment.status.getter();
  v16 = [v2 displayName];
  v17 = *&v16[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key + 8];
  *&v114 = *&v16[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];

  *(a1 + 32) = 1;
  v18 = a1 + 32;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 256;
  v19 = type metadata accessor for RawOrderPickupFulfillment();
  v20 = v19[12];
  v21 = sub_1B77FF988();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v24 = v22 + 56;
  v118 = v20;
  v23(a1 + v20, 1, 1, v21);
  v25 = *(v122 + 56);
  v103 = v19[13];
  v110 = v8;
  v119 = v122 + 56;
  v121 = v25;
  v25(a1 + v103, 1, 1, v8);
  v107 = v19[14];
  v108 = v21;
  v123 = v23;
  v120 = v24;
  v23(a1 + v107, 1, 1, v21);
  v26 = v19[15];
  v27 = a1;
  v28 = (a1 + v26);
  v29 = v116;
  *v28 = v117;
  v28[1] = v29;
  *(a1 + 8) = v115;
  *(a1 + 240) = v114;
  *(a1 + 248) = v17;
  v30 = v124;
  v31 = [v124 statusDescription];
  if (v31)
  {
    v33 = *&v31[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
    v32 = *&v31[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key + 8];
    v34 = v31;
  }

  else
  {
    v33 = 0;
    v32 = 0;
  }

  *(v27 + 16) = v33;
  *(v27 + 24) = v32;
  v35 = [v30 address];
  if (v35)
  {
    RawAddress.init(_:)(v35, &v125);
    v116 = v127;
    v117 = v125;
    v112 = v126;
    v113 = v130;
    v114 = v129;
    v115 = v128;
    v36 = v131;
  }

  else
  {
    v36 = 0;
    v116 = 0u;
    v117 = xmmword_1B78347C0;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
  }

  v37 = *(v18 + 80);
  v134[4] = *(v18 + 64);
  v134[5] = v37;
  v135 = *(v18 + 96);
  v38 = *(v18 + 16);
  v134[0] = *v18;
  v134[1] = v38;
  v39 = *(v18 + 48);
  v134[2] = *(v18 + 32);
  v134[3] = v39;
  sub_1B7205418(v134, &qword_1EB995F40);
  v40 = v112;
  *(v27 + 32) = v117;
  *(v27 + 48) = v40;
  v41 = v115;
  *(v27 + 64) = v116;
  *(v27 + 80) = v41;
  v42 = v113;
  *(v27 + 96) = v114;
  *(v27 + 112) = v42;
  *(v27 + 128) = v36;
  v43 = [v30 location];
  v44 = v43;
  if (v43)
  {
    v45 = v43;
    [v45 coordinate];
    v117 = v46;
    [v45 coordinate];
    v116 = v47;
    [v45 altitude];
    v49 = v48;

    *&v50 = v117;
    *(&v50 + 1) = v116;
  }

  else
  {
    v50 = 0uLL;
    v49 = 0;
  }

  *(v27 + 192) = v50;
  *(v27 + 208) = v49;
  *(v27 + 216) = 0;
  *(v27 + 217) = v44 == 0;
  v51 = [v30 notes];
  if (v51)
  {
    v53 = *&v51[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
    v52 = *&v51[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key + 8];
    v54 = v51;
  }

  else
  {
    v53 = 0;
    v52 = 0;
  }

  *(v27 + 224) = v53;
  *(v27 + 232) = v52;
  v55 = [v30 barcode];
  if (v55)
  {
    ManagedOrderBarcode.rawOrderBarcode.getter(&v125);

    v56 = *(&v125 + 1);
    v55 = v125;
    v57 = v126;
    v58 = *(&v126 + 1);
    v60 = *(&v127 + 1);
    v59 = v127;
    v61 = v128;
  }

  else
  {
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
  }

  sub_1B74C69A8(*(v27 + 136), *(v27 + 144), *(v27 + 152), *(v27 + 160), *(v27 + 168));
  *(v27 + 136) = v55;
  *(v27 + 144) = v56;
  *(v27 + 152) = v57;
  *(v27 + 160) = v58;
  *(v27 + 168) = v59;
  *(v27 + 176) = v60;
  *(v27 + 184) = v61;
  v62 = v124;
  v63 = [v124 lineItemObjects];
  type metadata accessor for ManagedOrderLineItem();
  sub_1B7308800();
  v64 = sub_1B7800FA8();

  *&v125 = sub_1B7519CE0(v64);
  sub_1B74D29C8(&v125);
  *&v117 = v27;

  v65 = v125;
  v66 = v121;
  *&v116 = 0;
  if ((v125 & 0x8000000000000000) != 0 || (v125 & 0x4000000000000000) != 0)
  {
    v67 = sub_1B7801958();
    if (v67)
    {
      goto LABEL_19;
    }

LABEL_30:

    v69 = MEMORY[0x1E69E7CC0];
    v81 = v117;
    v82 = v123;
    goto LABEL_31;
  }

  v67 = *(v125 + 16);
  if (!v67)
  {
    goto LABEL_30;
  }

LABEL_19:
  v133 = MEMORY[0x1E69E7CC0];
  sub_1B71FE27C(0, v67 & ~(v67 >> 63), 0);
  if (v67 < 0)
  {
    __break(1u);

    __break(1u);
    goto LABEL_45;
  }

  v68 = 0;
  v69 = v133;
  if ((v65 & 0xC000000000000001) == 0)
  {
    goto LABEL_22;
  }

LABEL_21:
  for (i = MEMORY[0x1B8CA5DC0](v68, v65); ; i = *(v65 + 8 * v68 + 32))
  {
    v71 = i;
    ManagedOrderLineItem.rawOrderLineItem.getter(&v125);

    v133 = v69;
    v73 = *(v69 + 16);
    v72 = *(v69 + 24);
    if (v73 >= v72 >> 1)
    {
      sub_1B71FE27C((v72 > 1), v73 + 1, 1);
      v69 = v133;
    }

    *(v69 + 16) = v73 + 1;
    v74 = (v69 + (v73 << 7));
    v75 = v125;
    v76 = v126;
    v77 = v128;
    v74[4] = v127;
    v74[5] = v77;
    v74[2] = v75;
    v74[3] = v76;
    v78 = v129;
    v79 = v130;
    v80 = v132;
    v74[8] = v131;
    v74[9] = v80;
    v74[6] = v78;
    v74[7] = v79;
    if (v67 - 1 == v68)
    {
      break;
    }

    ++v68;
    if ((v65 & 0xC000000000000001) != 0)
    {
      goto LABEL_21;
    }

LABEL_22:
    ;
  }

  v81 = v117;
  v82 = v123;
  v62 = v124;
  v66 = v121;
LABEL_31:
  *v81 = v69;
  v83 = [v62 pickupDate];
  v84 = v106;
  if (v83)
  {
    v85 = v83;
    sub_1B77FF928();

    v86 = 0;
  }

  else
  {
    v86 = 1;
  }

  v88 = v108;
  v87 = v109;
  v82(v84, v86, 1, v108);
  sub_1B72DFF88(v84, v81 + v118);
  v89 = [v62 pickupWindowDurationValue];
  if (!v89)
  {
    v66(v87, 1, 1, v110);
    goto LABEL_39;
  }

  v90 = v89;
  sub_1B7800868();

  v82 = v123;
  Duration.init(from:)(v87);
  v91 = v110;
  if ((*(v122 + 48))(v87, 1, v110) == 1)
  {
LABEL_39:
    sub_1B7205418(v87, &qword_1EB995FF0);
    goto LABEL_40;
  }

  v92 = v104;
  sub_1B719AAB4(v87, v104, type metadata accessor for Duration);
  v93 = v105;
  sub_1B71B43D0(v92, v105, type metadata accessor for Duration);
  v66(v93, 0, 1, v91);
  v94 = v116;
  sub_1B76C111C(v93, v81 + v118);
  sub_1B7205418(v93, &qword_1EB995FF0);
  if (v94)
  {
LABEL_45:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v95 = v103;
  sub_1B7205418(v81 + v103, &qword_1EB995FF0);
  sub_1B719AAB4(v92, v81 + v95, type metadata accessor for Duration);
  v66(v81 + v95, 0, 1, v91);
  v82 = v123;
LABEL_40:
  v96 = [v62 pickedUpDate];
  if (v96)
  {
    v97 = v111;
    v98 = v96;
    sub_1B77FF928();

    v99 = 0;
  }

  else
  {
    v99 = 1;
    v97 = v111;
  }

  v100 = v107;
  v82(v97, v99, 1, v88);
  return sub_1B72DFF88(v97, v81 + v100);
}

void sub_1B74C44EC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 pickupWindowDurationValue];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800868();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B74C4554(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1B7800838();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setPickupWindowDurationValue_];
}

void sub_1B74C45C4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7205588(a1, &v15 - v9, &qword_1EB98EBD0);
  v11 = *a2;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF8B8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

void sub_1B74C4700(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 fulfillmentIdentifier];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id ManagedOrderPickupFulfillment.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderPickupFulfillment.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderPickupFulfillment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedOrderPickupFulfillment.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit29ManagedOrderPickupFulfillment;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedOrderPickupFulfillment.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

id (*ManagedOrderPickupFulfillment.status.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ManagedOrderPickupFulfillment.status.getter();
  return sub_1B74C4A2C;
}

uint64_t sub_1B74C4A44@<X0>(id *a1@<X0>, char **a2@<X8>)
{
  v3 = [*a1 lineItemObjects];
  type metadata accessor for ManagedOrderLineItem();
  sub_1B7308800();
  v4 = sub_1B7800FA8();

  v6 = sub_1B7519CE0(v4);
  sub_1B74D29C8(&v6);

  *a2 = v6;
  return result;
}

void sub_1B74C4AF8(uint64_t a1, void **a2)
{
  v2 = *a2;

  sub_1B723B95C(v3);

  type metadata accessor for ManagedOrderLineItem();
  sub_1B7308800();
  v4 = sub_1B7800F78();

  [v2 setLineItemObjects_];
}

void ManagedOrderPickupFulfillment.lineItems.setter(unint64_t a1)
{
  sub_1B723B95C(a1);

  type metadata accessor for ManagedOrderLineItem();
  sub_1B7308800();
  v2 = sub_1B7800F78();

  [v1 setLineItemObjects_];
}

void (*ManagedOrderPickupFulfillment.lineItems.modify(char **a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 lineItemObjects];
  a1[2] = type metadata accessor for ManagedOrderLineItem();
  a1[3] = sub_1B7308800();
  v4 = sub_1B7800FA8();

  v6 = sub_1B7519CE0(v4);
  sub_1B74D29C8(&v6);

  *a1 = v6;
  return sub_1B74C4D08;
}

void sub_1B74C4D08(unint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    sub_1B723B95C(v4);

    v5 = sub_1B7800F78();

    [v2 setLineItemObjects_];
  }

  else
  {
    sub_1B723B95C(v3);

    v5 = sub_1B7800F78();

    [v2 setLineItemObjects_];
  }
}

uint64_t ManagedOrderPickupFulfillment.pickupWindowDuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 pickupWindowDurationValue];
  if (v3)
  {
    v4 = v3;
    sub_1B7800868();

    return Duration.init(from:)(a1);
  }

  else
  {
    v6 = type metadata accessor for Duration();
    v7 = *(*(v6 - 8) + 56);

    return v7(a1, 1, 1, v6);
  }
}

uint64_t sub_1B74C4EBC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 pickupWindowDurationValue];
  if (v3)
  {
    v4 = v3;
    sub_1B7800868();

    return Duration.init(from:)(a2);
  }

  else
  {
    v6 = type metadata accessor for Duration();
    v7 = *(*(v6 - 8) + 56);

    return v7(a2, 1, 1, v6);
  }
}

uint64_t ManagedOrderPickupFulfillment.pickupWindowDuration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1B7205588(a1, &v10 - v5, &qword_1EB995FF0);
  v7 = type metadata accessor for Duration();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B7205418(v6, &qword_1EB995FF0);
    v8 = 0;
  }

  else
  {
    Duration.description.getter();
    sub_1B74C6A7C(v6, type metadata accessor for Duration);
    v8 = sub_1B7800838();
  }

  [v2 setPickupWindowDurationValue_];

  return sub_1B7205418(a1, &qword_1EB995FF0);
}

void (*ManagedOrderPickupFulfillment.pickupWindowDuration.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  v9 = [v1 pickupWindowDurationValue];
  if (v9)
  {
    v10 = v9;
    sub_1B7800868();

    Duration.init(from:)(v8);
  }

  else
  {
    v11 = type metadata accessor for Duration();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  return sub_1B74C5290;
}

void sub_1B74C5290(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    v5 = *(v2 + 8);
    v4 = *(v2 + 16);
    sub_1B7205588(v3, v4, &qword_1EB995FF0);
    sub_1B7205588(v4, v5, &qword_1EB995FF0);
    v6 = type metadata accessor for Duration();
    v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
    v8 = *(v2 + 8);
    if (v7 == 1)
    {
      sub_1B7205418(*(v2 + 8), &qword_1EB995FF0);
      v9 = 0;
    }

    else
    {
      Duration.description.getter();
      sub_1B74C6A7C(v8, type metadata accessor for Duration);
      v9 = sub_1B7800838();
    }

    v16 = *(v2 + 24);
    v15 = *(v2 + 32);
    v18 = *(v2 + 8);
    v17 = *(v2 + 16);
    [*v2 setPickupWindowDurationValue_];

    sub_1B7205418(v17, &qword_1EB995FF0);
  }

  else
  {
    v10 = *(v2 + 24);
    sub_1B7205588(v3, v10, &qword_1EB995FF0);
    v11 = type metadata accessor for Duration();
    v12 = (*(*(v11 - 8) + 48))(v10, 1, v11);
    v13 = *(v2 + 24);
    if (v12 == 1)
    {
      sub_1B7205418(*(v2 + 24), &qword_1EB995FF0);
      v14 = 0;
    }

    else
    {
      Duration.description.getter();
      sub_1B74C6A7C(v13, type metadata accessor for Duration);
      v14 = sub_1B7800838();
    }

    v16 = *(v2 + 24);
    v15 = *(v2 + 32);
    v18 = *(v2 + 8);
    v17 = *(v2 + 16);
    [*v2 setPickupWindowDurationValue_];
  }

  sub_1B7205418(v15, &qword_1EB995FF0);
  free(v15);
  free(v16);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t sub_1B74C5514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  sub_1B7205588(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t ManagedOrderPickupFulfillment.pickupWindow.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v42 - v6;
  v43 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Order.FulfillmentWindow(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v44 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v42 - v21;
  sub_1B7205588(a1, v19, &qword_1EB990828);
  v23 = *(v9 + 48);
  if (v23(v19, 1, v8) == 1)
  {
    sub_1B7205418(v19, &qword_1EB990828);
    v24 = sub_1B77FF988();
    (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
    v25 = 0;
  }

  else
  {
    v42 = a1;
    sub_1B71B43D0(v19, v13, type metadata accessor for Order.FulfillmentWindow);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v13;
      v27 = v45;
      sub_1B719AAB4(v26, v45, type metadata accessor for TimeWindow);
      v28 = sub_1B77FF988();
      (*(*(v28 - 8) + 16))(v22, v27, v28);
      sub_1B74C6A7C(v27, type metadata accessor for TimeWindow);
    }

    else
    {
      v28 = sub_1B77FF988();
      (*(*(v28 - 8) + 32))(v22, v13, v28);
    }

    sub_1B74C6A7C(v19, type metadata accessor for Order.FulfillmentWindow);
    sub_1B77FF988();
    v29 = *(v28 - 8);
    (*(v29 + 56))(v22, 0, 1, v28);
    v25 = sub_1B77FF8B8();
    (*(v29 + 8))(v22, v28);
    a1 = v42;
  }

  v30 = v47;
  [v47 setPickupDate_];

  sub_1B7205588(a1, v17, &qword_1EB990828);
  if (v23(v17, 1, v8) == 1)
  {
    sub_1B7205418(v17, &qword_1EB990828);
    v31 = type metadata accessor for Duration();
    v32 = v46;
    (*(*(v31 - 8) + 56))(v46, 1, 1, v31);
  }

  else
  {
    v33 = v44;
    sub_1B71B43D0(v17, v44, type metadata accessor for Order.FulfillmentWindow);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v32 = v46;
    if (EnumCaseMultiPayload == 1)
    {
      v35 = v33;
      v36 = v45;
      sub_1B719AAB4(v35, v45, type metadata accessor for TimeWindow);
      sub_1B71B43D0(v36 + *(v43 + 20), v32, type metadata accessor for Duration);
      sub_1B74C6A7C(v36, type metadata accessor for TimeWindow);
      v37 = type metadata accessor for Duration();
      (*(*(v37 - 8) + 56))(v32, 0, 1, v37);
    }

    else
    {
      v38 = type metadata accessor for Duration();
      (*(*(v38 - 8) + 56))(v32, 1, 1, v38);
      sub_1B74C6A7C(v33, type metadata accessor for Order.FulfillmentWindow);
    }

    sub_1B74C6A7C(v17, type metadata accessor for Order.FulfillmentWindow);
  }

  sub_1B7205588(v32, v5, &qword_1EB995FF0);
  v39 = type metadata accessor for Duration();
  if ((*(*(v39 - 8) + 48))(v5, 1, v39) == 1)
  {
    sub_1B7205418(v5, &qword_1EB995FF0);
    v40 = 0;
  }

  else
  {
    Duration.description.getter();
    sub_1B74C6A7C(v5, type metadata accessor for Duration);
    v40 = sub_1B7800838();
  }

  [v30 setPickupWindowDurationValue_];

  sub_1B7205418(a1, &qword_1EB990828);
  return sub_1B7205418(v32, &qword_1EB995FF0);
}

void (*ManagedOrderPickupFulfillment.pickupWindow.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  ManagedOrderPickupFulfillment.pickupWindow.getter(v4);
  return sub_1B74C5E3C;
}

void sub_1B74C5E3C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1B7205588(*(a1 + 16), v2, &qword_1EB990828);
    ManagedOrderPickupFulfillment.pickupWindow.setter(v2);
    sub_1B7205418(v3, &qword_1EB990828);
  }

  else
  {
    ManagedOrderPickupFulfillment.pickupWindow.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

id sub_1B74C5ED8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v87 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v83 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v89 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v83 - v14;
  v15 = sub_1B77FF988();
  v91 = *(v15 - 8);
  v92 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v3);
  v97 = a3;
  v18 = [v17 initWithContext_];
  v19 = v18;
  v20 = *a1;
  v21 = *(*a1 + 16);
  v90 = v18;
  if (!v21)
  {
    v38 = v18;
    v37 = MEMORY[0x1E69E7CC0];
LABEL_11:
    sub_1B723B95C(v37);

    type metadata accessor for ManagedOrderLineItem();
    sub_1B7308800();
    v39 = sub_1B7800F78();

    [v19 setLineItemObjects_];

    v40 = [v19 setStatusValue_];
    v41 = *(a1 + 24);
    if (v41)
    {
      MEMORY[0x1EEE9AC00](v40);
      *(&v83 - 4) = v42;
      *(&v83 - 3) = v41;
      *(&v83 - 2) = 0x726564726FLL;
      *(&v83 - 1) = 0xE500000000000000;

      v43 = sub_1B723940C(sub_1B726357C, (&v83 - 6));
    }

    else
    {
      v43 = 0;
    }

    [v19 setStatusDescription_];

    v44 = *(a1 + 32);
    v96 = 0;
    if (v44 == 1)
    {
      v45 = 0;
    }

    else
    {
      v110[0] = v44;
      *&v110[5] = *(a1 + 72);
      *&v110[7] = *(a1 + 88);
      *&v110[9] = *(a1 + 104);
      *&v110[11] = *(a1 + 120);
      *&v110[1] = *(a1 + 40);
      *&v110[3] = *(a1 + 56);
      sub_1B74BA2BC();
      v98[4] = *&v110[8];
      v98[5] = *&v110[10];
      v99 = v110[12];
      v98[0] = *v110;
      v98[1] = *&v110[2];
      v98[2] = *&v110[4];
      v98[3] = *&v110[6];
      sub_1B74C6B2C(v110, v109);
      v45 = CNMutablePostalAddress.init(rawAddress:)(v98);
    }

    [v19 setAddress_];

    v46 = *(a1 + 168);
    if (v46)
    {
      v48 = *(a1 + 176);
      v94 = *(a1 + 184);
      v47 = v94;
      v49 = a2;
      v51 = *(a1 + 152);
      v50 = *(a1 + 160);
      v53 = *(a1 + 136);
      v52 = *(a1 + 144);
      v95 = type metadata accessor for ManagedOrderBarcode();
      v110[0] = v53;
      v110[1] = v52;
      LOBYTE(v110[2]) = v51;
      v110[3] = v50;
      v110[4] = v46;
      v110[5] = v48;
      v110[6] = v47;

      v54 = v97;
      sub_1B74C6ADC(v53, v52, v51, v50, v46);
      v19 = v90;
      v46 = ManagedOrderBarcode.__allocating_init(_:bundle:context:)(v110, v49, v54);
    }

    v55 = v88;
    [v19 setBarcode_];

    if (*(a1 + 217))
    {
      v56 = 0;
    }

    else
    {
      v57 = *(a1 + 200);
      v58 = *(a1 + 192);
      if (*(a1 + 216))
      {
        v59 = 0.0;
      }

      else
      {
        v59 = *(a1 + 208);
      }

      v60 = objc_allocWithZone(MEMORY[0x1E6985C40]);
      v61 = v85;
      sub_1B77FF978();
      v62 = sub_1B77FF8B8();
      (*(v91 + 8))(v61, v92);
      v56 = [v60 initWithCoordinate:v62 altitude:v58 horizontalAccuracy:v57 verticalAccuracy:v59 timestamp:{0.0, 1.0}];
    }

    [v19 setLocation_];

    v64 = *(a1 + 232);
    if (v64)
    {
      MEMORY[0x1EEE9AC00](v63);
      *(&v83 - 4) = v65;
      *(&v83 - 3) = v64;
      *(&v83 - 2) = 0x726564726FLL;
      *(&v83 - 1) = 0xE500000000000000;

      v66 = sub_1B723940C(sub_1B726357C, (&v83 - 6));
    }

    else
    {
      v66 = 0;
    }

    v67 = v90;
    [v90 setNotes_];

    MEMORY[0x1EEE9AC00](v68);
    *(&v83 - 4) = v69;
    *(&v83 - 3) = v70;
    *(&v83 - 2) = 0x726564726FLL;
    *(&v83 - 1) = 0xE500000000000000;
    v71 = sub_1B723940C(sub_1B7262E4C, (&v83 - 6));
    [v67 setDisplayName_];

    v72 = type metadata accessor for RawOrderPickupFulfillment();
    v73 = v86;
    sub_1B7205588(a1 + v72[12], v86, &qword_1EB98EBD0);
    v74 = *(v91 + 48);
    v75 = 0;
    if (v74(v73, 1, v92) != 1)
    {
      v75 = sub_1B77FF8B8();
      (*(v91 + 8))(v73, v92);
    }

    [v67 setPickupDate_];

    sub_1B7205588(a1 + v72[13], v55, &qword_1EB995FF0);
    v76 = v87;
    sub_1B7205588(v55, v87, &qword_1EB995FF0);
    v77 = type metadata accessor for Duration();
    if ((*(*(v77 - 8) + 48))(v76, 1, v77) == 1)
    {
      sub_1B7205418(v76, &qword_1EB995FF0);
      v78 = 0;
    }

    else
    {
      Duration.description.getter();
      sub_1B74C6A7C(v76, type metadata accessor for Duration);
      v78 = sub_1B7800838();
    }

    v79 = v89;
    [v67 setPickupWindowDurationValue_];

    sub_1B7205418(v55, &qword_1EB995FF0);
    sub_1B7205588(a1 + v72[14], v79, &qword_1EB98EBD0);
    v80 = v92;
    if (v74(v79, 1, v92) == 1)
    {
      v81 = 0;
    }

    else
    {
      v81 = sub_1B77FF8B8();
      (*(v91 + 8))(v79, v80);
    }

    [v67 setPickedUpDate_];

    v82 = sub_1B7800838();
    [v67 setFulfillmentIdentifier_];

    sub_1B74C6A7C(a1, type metadata accessor for RawOrderPickupFulfillment);
    return v67;
  }

  v84 = a1;
  v111 = MEMORY[0x1E69E7CC0];
  v22 = v18;
  sub_1B7801B98();
  v23 = *(v20 + 16);
  result = type metadata accessor for ManagedOrderLineItem();
  v96 = result;
  v94 = v23;
  if (!v23)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    v37 = v111;
    a1 = v84;
    v19 = v90;
    a2 = v20;
    goto LABEL_11;
  }

  v25 = 0;
  v26 = (v20 + 32);
  v95 = v21 - 1;
  v93 = v20;
  while (v25 < *(v20 + 16))
  {
    v27 = *v26;
    v28 = v26[1];
    v29 = v26[3];
    v109[2] = v26[2];
    v109[3] = v29;
    v109[0] = v27;
    v109[1] = v28;
    v30 = v26[4];
    v31 = v26[5];
    v32 = v26[7];
    v109[6] = v26[6];
    v109[7] = v32;
    v109[4] = v30;
    v109[5] = v31;
    v33 = v26[5];
    v105 = v26[4];
    v106 = v33;
    v34 = v26[7];
    v107 = v26[6];
    v108 = v34;
    v35 = v26[1];
    v101 = *v26;
    v102 = v35;
    v36 = v26[3];
    v103 = v26[2];
    v104 = v36;
    v110[0] = v25;
    *&v110[9] = v105;
    *&v110[11] = v33;
    *&v110[13] = v107;
    *&v110[15] = v34;
    *&v110[1] = v101;
    *&v110[3] = v35;
    *&v110[5] = v103;
    *&v110[7] = v36;
    v100[4] = v105;
    v100[5] = v33;
    v100[6] = v107;
    v100[7] = v34;
    v100[0] = v101;
    v100[1] = v35;
    v100[2] = v103;
    v100[3] = v36;
    sub_1B73261F0(v109, v98);
    sub_1B7205588(v110, v98, &qword_1EB995FF8);

    v20 = a2;
    result = ManagedOrderLineItem.__allocating_init(_:bundle:context:)(v100, a2, v97);
    if (v25 == 0x8000)
    {
      goto LABEL_38;
    }

    [result setPositionIndex_];
    sub_1B7205418(v110, &qword_1EB995FF8);
    sub_1B7801B68();
    sub_1B7801BA8();
    sub_1B7801BB8();
    result = sub_1B7801B78();
    if (v95 == v25)
    {
      goto LABEL_9;
    }

    ++v25;
    v26 += 8;
    v20 = v93;
    if (v94 == v25)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B74C69A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1B74C6A7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B74C6ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t BankConnectService.revokeConnectionAuthorization(forConsentID:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = type metadata accessor for BankConnectService.Message();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B74C6C20, 0, 0);
}

uint64_t sub_1B74C6C20()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[10];
  v0[15] = *(v0[12] + 16);
  *v1 = v3;
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B74C6CAC, 0, 0);
}

uint64_t sub_1B74C6CAC()
{
  v1 = v0[15];
  v0[2] = v0;
  v0[3] = sub_1B74C6D50;
  v2 = swift_continuation_init();
  sub_1B7236A04(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B74C6D50()
{
  v1 = *(*v0 + 48);
  *(*v0 + 128) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B74C7214;
  }

  else
  {
    v2 = sub_1B74C7210;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t BankConnectService.revokeConsents(forInstitutionID:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = type metadata accessor for BankConnectService.Message();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B74C6F04, 0, 0);
}

uint64_t sub_1B74C6F04()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[10];
  v0[15] = *(v0[12] + 16);
  *v1 = v3;
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B726B820, 0, 0);
}

uint64_t sub_1B74C6F90(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B723838C;

  return BankConnectService.revokeConnectionAuthorization(forConsentID:)(a1, a2);
}

uint64_t dispatch thunk of BankConnectConnectionAuthorizationRevoking.revokeConnectionAuthorization(forConsentID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7201BB0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1B74C7168(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7201BB0;

  return BankConnectService.revokeConsents(forInstitutionID:)(a1, a2);
}

uint64_t sub_1B74C7254@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10FinanceKit24ManagedOrderPickupStatusO8rawValueACSgs5Int16V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t _s10FinanceKit24ManagedOrderPickupStatusO8rawValueACSgs5Int16V_tcfC_0(uint64_t result)
{
  if (result >= 6u)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1B74C7298()
{
  result = qword_1EB996000;
  if (!qword_1EB996000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996000);
  }

  return result;
}

uint64_t sub_1B74C72FC(uint64_t a1)
{
  v32 = sub_1B77FFA18();
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1E69E7CC0];
  v33 = *(a1 + 16);
  if (v33)
  {
    v6 = a1;
    v25 = v1;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1B7801B98();
    v7 = a1 + 56;
    result = sub_1B78018C8();
    v8 = result;
    v9 = 0;
    v10 = *(a1 + 36);
    v29 = a1;
    v30 = v3;
    v27 = v3 + 8;
    v28 = v3 + 16;
    v26 = a1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v6 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      if (v10 != *(v6 + 36))
      {
        goto LABEL_22;
      }

      v34 = v9;
      v13 = *(v6 + 48);
      v15 = v30;
      v14 = v31;
      v16 = v32;
      (*(v30 + 16))(v31, v13 + *(v30 + 72) * v8, v32);
      sub_1B77FF9B8();
      (*(v15 + 8))(v14, v16);
      sub_1B7801B68();
      sub_1B7801BA8();
      v17 = v29;
      sub_1B7801BB8();
      result = sub_1B7801B78();
      v11 = 1 << *(v17 + 32);
      if (v8 >= v11)
      {
        goto LABEL_23;
      }

      v18 = *(v7 + 8 * v12);
      if ((v18 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v6 = v17;
      if (v10 != *(v17 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        v11 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v12 << 6;
        v21 = v12 + 1;
        v22 = (v26 + 8 * v12);
        while (v21 < (v11 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1B723BB64(v8, v10, 0);
            v11 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_1B723BB64(v8, v10, 0);
      }

LABEL_4:
      v9 = v34 + 1;
      v8 = v11;
      if (v34 + 1 == v33)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t static ManagedApplication.existingApplications(with:associatedWith:in:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v10.receiver = swift_getObjCClassFromMetadata();
  v10.super_class = &OBJC_METACLASS____TtC10FinanceKit18ManagedApplication;
  v5 = objc_msgSendSuper2(&v10, sel_fetchRequest);
  v9[0] = v3;
  v9[1] = v4;
  v6 = _s10FinanceKit18ManagedApplicationC12predicateFor8bundleID10accountIDsSo11NSPredicateCAA16BundleIdentifierV_Shy10Foundation4UUIDVGtFZ_0(v9, a2);
  [v5 setPredicate_];

  v7 = sub_1B7801498();
  return v7;
}

void ManagedApplication.bundleIdentifier.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 bundleID];
  v4 = sub_1B7800868();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

unint64_t static ManagedApplication.existingApplication(with:associatedWith:in:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v12.receiver = swift_getObjCClassFromMetadata();
  v12.super_class = &OBJC_METACLASS____TtC10FinanceKit18ManagedApplication;
  v5 = objc_msgSendSuper2(&v12, sel_fetchRequest);
  v11[0] = v3;
  v11[1] = v4;
  v6 = _s10FinanceKit18ManagedApplicationC12predicateFor8bundleID07accountH0So11NSPredicateCAA16BundleIdentifierV_10Foundation4UUIDVtFZ_0(v11);
  [v5 setPredicate_];

  result = sub_1B7801498();
  if (v1)
  {

    return v2;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v9 = result;
  v10 = sub_1B7801958();
  result = v9;
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 32);
LABEL_8:
    v2 = v8;

    return v2;
  }

  __break(1u);
  return result;
}