Swift::Int sub_1000F24D4(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_100574388(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        v9 = sub_100572D98();
        v9[2] = v6 / 2;
      }

      v11[0] = v9 + 4;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      v10[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_1000F25DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3 - 56;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 56 * a3);
    v8 = v6;
    result = v5;
    while (1)
    {
      v9 = &unk_100586970 + 8 * v7;
      if (v7 < 0)
      {
        v9 = &unk_100586B10 + 8 * *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      }

      v10 = result + 56;
      v11 = *result;
      if ((*result & 0x8000000000000000) != 0)
      {
        v12 = &unk_100586B10 + 8 * *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      }

      else
      {
        v12 = &unk_100586970 + 8 * v11;
      }

      if (*v9 >= *v12)
      {
LABEL_4:
        ++a3;
        v5 += 56;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v13 = *(result + 64);
      v14 = *(result + 80);
      v15 = *(result + 96);
      v16 = *(result + 16);
      *v10 = *result;
      *(result + 72) = v16;
      *(result + 88) = *(result + 32);
      v17 = *(result + 48);
      *result = v7;
      *(result + 8) = v13;
      *(result + 24) = v14;
      *(result + 40) = v15;
      result -= 56;
      *(v10 + 48) = v17;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1000F26C4(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v107 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_105:
    v5 = *v107;
    if (!*v107)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_107:
      v102 = *(v10 + 2);
      if (v102 >= 2)
      {
        while (*a3)
        {
          v103 = *&v10[16 * v102];
          v104 = *&v10[16 * v102 + 24];
          sub_1000F2D98((*a3 + 56 * v103), (*a3 + 56 * *&v10[16 * v102 + 16]), *a3 + 56 * v104, v5);
          if (v6)
          {
          }

          if (v104 < v103)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_100303EF8(v10);
          }

          if (v102 - 2 >= *(v10 + 2))
          {
            goto LABEL_131;
          }

          v105 = &v10[16 * v102];
          *v105 = v103;
          *(v105 + 1) = v104;
          result = sub_100303E6C(v102 - 1);
          v102 = *(v10 + 2);
          if (v102 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_100303EF8(v10);
    v10 = result;
    goto LABEL_107;
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
LABEL_4:
  v11 = v9++;
  if (v9 >= v7)
  {
    goto LABEL_32;
  }

  v12 = *a3;
  v13 = *(*a3 + 56 * v9);
  if (v13 < 0)
  {
    v14 = &unk_100586B10 + 8 * *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  }

  else
  {
    v14 = &unk_100586970 + 8 * v13;
  }

  v15 = *(v12 + 56 * v11);
  if (v15 < 0)
  {
    v16 = &unk_100586B10 + 8 * *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  }

  else
  {
    v16 = &unk_100586970 + 8 * v15;
  }

  v17 = *v14;
  v18 = *v16;
  v19 = v11 + 2;
  if (v7 > v11 + 2)
  {
    v19 = v7;
  }

  v20 = v19 - v11 - 2;
  v21 = 56 * v11;
  v22 = (v12 + 56 * v11 + 112);
  while (v20)
  {
    v25 = *v22;
    if (*v22 < 0)
    {
      v26 = &unk_100586B10 + 8 * *((v25 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      if ((v13 & 0x8000000000000000) == 0)
      {
LABEL_21:
        v23 = &unk_100586970 + 8 * v13;
        goto LABEL_15;
      }
    }

    else
    {
      v26 = &unk_100586970 + 8 * v25;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }
    }

    v23 = &unk_100586B10 + 8 * *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
LABEL_15:
    v24 = (v17 < v18) ^ (*v26 >= *v23);
    --v20;
    v22 += 7;
    ++v9;
    v13 = v25;
    if ((v24 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v9 = v19;
LABEL_23:
  if (v17 < v18)
  {
    if (v9 < v11)
    {
      goto LABEL_134;
    }

    if (v11 < v9)
    {
      v27 = 56 * v9;
      v28 = v9;
      v29 = v11;
      do
      {
        if (v29 != --v28)
        {
          v39 = *a3;
          if (!*a3)
          {
            goto LABEL_140;
          }

          v30 = (v39 + v21);
          v31 = *(v39 + v21 + 48);
          v32 = v39 + v27;
          v33 = *v30;
          v34 = v30[1];
          v35 = v30[2];
          v36 = *(v32 - 40);
          v37 = *(v32 - 24);
          v38 = *(v32 - 56);
          *(v30 + 6) = *(v32 - 8);
          v30[1] = v36;
          v30[2] = v37;
          *v30 = v38;
          *(v32 - 56) = v33;
          *(v32 - 40) = v34;
          *(v32 - 24) = v35;
          *(v32 - 8) = v31;
        }

        ++v29;
        v27 -= 56;
        v21 += 56;
      }

      while (v29 < v28);
    }
  }

LABEL_32:
  v40 = a3[1];
  if (v9 >= v40)
  {
    goto LABEL_54;
  }

  if (__OFSUB__(v9, v11))
  {
    goto LABEL_133;
  }

  if (v9 - v11 >= v8)
  {
    goto LABEL_54;
  }

  if (__OFADD__(v11, v8))
  {
    goto LABEL_135;
  }

  if (v11 + v8 < v40)
  {
    v40 = v11 + v8;
  }

  if (v40 < v11)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v9 == v40)
  {
    goto LABEL_54;
  }

  v41 = *a3;
  v42 = *a3 + 56 * v9 - 56;
  v43 = v11 - v9;
LABEL_42:
  v44 = *(v41 + 56 * v9);
  v45 = v43;
  v46 = v42;
  while (1)
  {
    v47 = &unk_100586970 + 8 * v44;
    if (v44 < 0)
    {
      v47 = &unk_100586B10 + 8 * *((v44 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    }

    v49 = v46 + 56;
    v48 = *v46;
    if ((*v46 & 0x8000000000000000) != 0)
    {
      v50 = &unk_100586B10 + 8 * *((v48 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    }

    else
    {
      v50 = &unk_100586970 + 8 * v48;
    }

    result = *v50;
    if (*v47 >= result)
    {
LABEL_41:
      ++v9;
      v42 += 56;
      --v43;
      if (v9 == v40)
      {
        v9 = v40;
LABEL_54:
        if (v9 < v11)
        {
          goto LABEL_132;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1000CF5B8(0, *(v10 + 2) + 1, 1, v10);
          v10 = result;
        }

        v5 = *(v10 + 2);
        v57 = *(v10 + 3);
        v58 = v5 + 1;
        if (v5 >= v57 >> 1)
        {
          result = sub_1000CF5B8((v57 > 1), v5 + 1, 1, v10);
          v10 = result;
        }

        *(v10 + 2) = v58;
        v59 = &v10[16 * v5];
        *(v59 + 4) = v11;
        *(v59 + 5) = v9;
        v60 = *v107;
        if (!*v107)
        {
          goto LABEL_142;
        }

        if (!v5)
        {
LABEL_3:
          v7 = a3[1];
          v8 = a4;
          if (v9 >= v7)
          {
            goto LABEL_105;
          }

          goto LABEL_4;
        }

        while (1)
        {
          v61 = v58 - 1;
          if (v58 >= 4)
          {
            break;
          }

          if (v58 == 3)
          {
            v62 = *(v10 + 4);
            v63 = *(v10 + 5);
            v72 = __OFSUB__(v63, v62);
            v64 = v63 - v62;
            v65 = v72;
LABEL_74:
            if (v65)
            {
              goto LABEL_121;
            }

            v78 = &v10[16 * v58];
            v80 = *v78;
            v79 = *(v78 + 1);
            v81 = __OFSUB__(v79, v80);
            v82 = v79 - v80;
            v83 = v81;
            if (v81)
            {
              goto LABEL_124;
            }

            v84 = &v10[16 * v61 + 32];
            v86 = *v84;
            v85 = *(v84 + 1);
            v72 = __OFSUB__(v85, v86);
            v87 = v85 - v86;
            if (v72)
            {
              goto LABEL_127;
            }

            if (__OFADD__(v82, v87))
            {
              goto LABEL_128;
            }

            if (v82 + v87 >= v64)
            {
              if (v64 < v87)
              {
                v61 = v58 - 2;
              }

              goto LABEL_95;
            }

            goto LABEL_88;
          }

          v88 = &v10[16 * v58];
          v90 = *v88;
          v89 = *(v88 + 1);
          v72 = __OFSUB__(v89, v90);
          v82 = v89 - v90;
          v83 = v72;
LABEL_88:
          if (v83)
          {
            goto LABEL_123;
          }

          v91 = &v10[16 * v61];
          v93 = *(v91 + 4);
          v92 = *(v91 + 5);
          v72 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v72)
          {
            goto LABEL_126;
          }

          if (v94 < v82)
          {
            goto LABEL_3;
          }

LABEL_95:
          v99 = v61 - 1;
          if (v61 - 1 >= v58)
          {
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
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
            goto LABEL_136;
          }

          if (!*a3)
          {
            goto LABEL_139;
          }

          v100 = *&v10[16 * v99 + 32];
          v5 = *&v10[16 * v61 + 40];
          sub_1000F2D98((*a3 + 56 * v100), (*a3 + 56 * *&v10[16 * v61 + 32]), *a3 + 56 * v5, v60);
          if (v6)
          {
          }

          if (v5 < v100)
          {
            goto LABEL_117;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_100303EF8(v10);
          }

          if (v99 >= *(v10 + 2))
          {
            goto LABEL_118;
          }

          v101 = &v10[16 * v99];
          *(v101 + 4) = v100;
          *(v101 + 5) = v5;
          result = sub_100303E6C(v61);
          v58 = *(v10 + 2);
          if (v58 <= 1)
          {
            goto LABEL_3;
          }
        }

        v66 = &v10[16 * v58 + 32];
        v67 = *(v66 - 64);
        v68 = *(v66 - 56);
        v72 = __OFSUB__(v68, v67);
        v69 = v68 - v67;
        if (v72)
        {
          goto LABEL_119;
        }

        v71 = *(v66 - 48);
        v70 = *(v66 - 40);
        v72 = __OFSUB__(v70, v71);
        v64 = v70 - v71;
        v65 = v72;
        if (v72)
        {
          goto LABEL_120;
        }

        v73 = &v10[16 * v58];
        v75 = *v73;
        v74 = *(v73 + 1);
        v72 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v72)
        {
          goto LABEL_122;
        }

        v72 = __OFADD__(v64, v76);
        v77 = v64 + v76;
        if (v72)
        {
          goto LABEL_125;
        }

        if (v77 >= v69)
        {
          v95 = &v10[16 * v61 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v72 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v72)
          {
            goto LABEL_129;
          }

          if (v64 < v98)
          {
            v61 = v58 - 2;
          }

          goto LABEL_95;
        }

        goto LABEL_74;
      }

      goto LABEL_42;
    }

    if (!v41)
    {
      break;
    }

    v51 = *(v46 + 64);
    v52 = *(v46 + 80);
    v53 = *(v46 + 96);
    v54 = *(v46 + 16);
    *v49 = *v46;
    *(v46 + 72) = v54;
    *(v46 + 88) = *(v46 + 32);
    v55 = *(v46 + 48);
    *v46 = v44;
    *(v46 + 8) = v51;
    *(v46 + 24) = v52;
    *(v46 + 40) = v53;
    v46 -= 56;
    *(v49 + 48) = v55;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_41;
    }
  }

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
  return result;
}

uint64_t sub_1000F2D98(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[56 * v11] <= a4)
    {
      memmove(a4, __src, 56 * v11);
    }

    v12 = &v4[56 * v11];
    if (v10 < 56 || v6 <= v7)
    {
      goto LABEL_42;
    }

LABEL_26:
    v22 = v6 - 56;
    v5 -= 56;
    v23 = v12;
    while (1)
    {
      v25 = *(v23 - 56);
      v23 -= 56;
      v24 = v25;
      if (v25 < 0)
      {
        v26 = &unk_100586B10 + 8 * *((v24 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
        v27 = *v22;
        if ((*v22 & 0x8000000000000000) != 0)
        {
LABEL_32:
          v28 = &unk_100586B10 + 8 * *((v27 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
          goto LABEL_33;
        }
      }

      else
      {
        v26 = &unk_100586970 + 8 * v24;
        v27 = *v22;
        if ((*v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }
      }

      v28 = &unk_100586970 + 8 * v27;
LABEL_33:
      if (*v26 < *v28)
      {
        if ((v5 + 56) != v6)
        {
          v32 = *v22;
          v33 = *(v6 - 40);
          v34 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v33;
          *(v5 + 32) = v34;
          *v5 = v32;
        }

        if (v12 <= v4 || (v6 -= 56, v22 <= v7))
        {
          v6 = v22;
          goto LABEL_42;
        }

        goto LABEL_26;
      }

      if ((v5 + 56) != v12)
      {
        v29 = *v23;
        v30 = *(v23 + 16);
        v31 = *(v23 + 32);
        *(v5 + 48) = *(v23 + 48);
        *(v5 + 16) = v30;
        *(v5 + 32) = v31;
        *v5 = v29;
      }

      v5 -= 56;
      v12 = v23;
      if (v23 <= v4)
      {
        v12 = v23;
        goto LABEL_42;
      }
    }
  }

  if (a4 != __dst || &__dst[56 * v9] <= a4)
  {
    memmove(a4, __dst, 56 * v9);
  }

  v12 = &v4[56 * v9];
  if (v8 >= 56 && v6 < v5)
  {
    do
    {
      v13 = *v6;
      if ((*v6 & 0x8000000000000000) != 0)
      {
        v14 = &unk_100586B10 + 8 * *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
        v15 = *v4;
        if ((*v4 & 0x8000000000000000) == 0)
        {
LABEL_9:
          v16 = &unk_100586970 + 8 * v15;
          goto LABEL_12;
        }
      }

      else
      {
        v14 = &unk_100586970 + 8 * v13;
        v15 = *v4;
        if ((*v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      v16 = &unk_100586B10 + 8 * *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
LABEL_12:
      if (*v14 >= *v16)
      {
        v17 = v4;
        v18 = v7 == v4;
        v4 += 56;
        if (v18)
        {
          goto LABEL_18;
        }

LABEL_17:
        v19 = *v17;
        v20 = *(v17 + 1);
        v21 = *(v17 + 2);
        *(v7 + 6) = *(v17 + 6);
        *(v7 + 1) = v20;
        *(v7 + 2) = v21;
        *v7 = v19;
        goto LABEL_18;
      }

      v17 = v6;
      v18 = v7 == v6;
      v6 += 56;
      if (!v18)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 56;
    }

    while (v4 < v12 && v6 < v5);
  }

  v6 = v7;
LABEL_42:
  v35 = ((v12 - v4) * 0x4924924924924925) >> 64;
  v36 = (v35 >> 4) + (v35 >> 63);
  if (v6 != v4 || v6 >= &v4[56 * v36])
  {
    memmove(v6, v4, 56 * v36);
  }

  return 1;
}

uint64_t sub_1000F30A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  sub_100574678();
  sub_1005729F8();
  v5 = sub_1005746C8();

  return a3(a1, a2, v5);
}

uint64_t sub_1000F3124(void *(*a1)(void *__return_ptr), uint64_t a2, void (*a3)(void *__return_ptr, void *))
{
  v4 = a1(v29);
  a3(v26, v4);
  v5 = v30;
  v6 = v31;
  sub_10000C8CC(v29, v30);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = v8;
  v10 = v27;
  v11 = v28;
  sub_10000C8CC(v26, v27);
  if (v7 == (*(v11 + 8))(v10, v11) && v9 == v12)
  {
  }

  else
  {
    v14 = sub_100574498();

    v15 = 0;
    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v16 = v30;
  v17 = v31;
  sub_10000C8CC(v29, v30);
  v18 = (*(v17 + 24))(v16, v17);
  v20 = v19;
  v21 = v27;
  v22 = v28;
  sub_10000C8CC(v26, v27);
  v23 = (*(v22 + 24))(v21, v22);
  if (v20)
  {
    if (v24)
    {
      if (v18 == v23 && v20 == v24)
      {

        v15 = 1;
      }

      else
      {
        v15 = sub_100574498();
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (!v24)
    {
      v15 = 1;
      goto LABEL_18;
    }

    v15 = 0;
  }

LABEL_18:
  sub_100010474(v26);
  sub_100010474(v29);
  return v15 & 1;
}

uint64_t sub_1000F3334()
{

  return swift_deallocObject();
}

char *sub_1000F336C(uint64_t a1, char **a2, uint64_t a3, int a4)
{
  v29 = a4;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = (a1 + 40);
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v8[5];
    v12 = *v8;
    LOBYTE(v25[0]) = *(v8 - 8);
    v25[1] = v12;
    v21 = *(v8 + 3);
    v26 = *(v8 + 1);
    v27 = v21;
    v28 = v11;

    sub_1000E9624(v25, a2, a3, v29 & 1, v23);
    if (v4)
    {
      break;
    }

    if (*&v23[0] >> 60 != 15)
    {
      v22 = v23[0];
      v19 = v23[2];
      v20 = v23[1];
      v13 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1000CF368(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      v16 = v22;
      if (v15 >= v14 >> 1)
      {
        v17 = sub_1000CF368((v14 > 1), v15 + 1, 1, v9);
        v16 = v22;
        v9 = v17;
      }

      *(v9 + 2) = v15 + 1;
      v10 = &v9[56 * v15];
      *(v10 + 2) = v16;
      *(v10 + 3) = v20;
      *(v10 + 4) = v19;
      *(v10 + 10) = v13;
    }

    v8 += 7;
    if (!--v5)
    {
      return v9;
    }
  }

  return v9;
}

char *sub_1000F356C(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1000CFDD4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1001E8C08(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_1000F362C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006E6B40);
    v3 = sub_1005741C8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1000F30A0(v5, v6, sub_1000EBC88);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000F3754(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006E6AE8);
    v3 = sub_1005741C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000CC8C(v4, &v13, &qword_1006E6B38);
      v5 = v13;
      v6 = v14;
      result = sub_1000F30A0(v13, v14, sub_1000EBC88);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000F51DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000F3898(uint64_t result, char **a2, uint64_t *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = 0;
  v5 = result + 40;
  v6 = _swiftEmptyArrayStorage;
  v24 = *(result + 16);
  v22 = result + 40;
  do
  {
    v23 = v6;
    v7 = (v5 + 56 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v3)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_24;
      }

      v9 = *(v7 - 1);
      v32 = v7[4];
      v10 = v7[5];
      v30 = v7[2];
      v31 = v7[3];
      v28 = *v7;
      v29 = v7[1];
      if (v9 < 0)
      {
        break;
      }

      v27 = v10;

      sub_100573ED8(49);

      v33._countAndFlagsBits = ActionType.rawValue.getter(v9);
      sub_100572A98(v33);

      v34._object = 0x80000001005ACBC0;
      v34._countAndFlagsBits = 0xD00000000000002BLL;
      sub_100572A98(v34);
      v11 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v11;
      v13 = i + 1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_1000CF25C(0, *(v11 + 2) + 1, 1, v11);
        *a2 = v11;
      }

      v15 = *(v11 + 2);
      v14 = *(v11 + 3);
      if (v15 >= v14 >> 1)
      {
        v11 = sub_1000CF25C((v14 > 1), v15 + 1, 1, v11);
        *a2 = v11;
      }

      *(v11 + 2) = v15 + 1;
      v16 = &v11[16 * v15];
      *(v16 + 4) = 544743456;
      *(v16 + 5) = 0xE400000000000000;
      v17 = *a3;

      v18 = sub_1001B4BCC(v9, v17);

      v3 = v24;
      v4 = i + 1;
      v10 = v27;
      if ((v18 & 1) == 0)
      {
        goto LABEL_15;
      }

      result = sub_1000F3DC0(v9);
      v7 += 7;
      if (v13 == v24)
      {
        return v23;
      }
    }

LABEL_15:
    v6 = v23;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000CC5D4(0, v23[2] + 1, 1);
      v6 = v23;
    }

    v5 = v22;
    v20 = v6[2];
    v19 = v6[3];
    if (v20 >= v19 >> 1)
    {
      result = sub_1000CC5D4((v19 > 1), v20 + 1, 1);
      v6 = v23;
    }

    v6[2] = v20 + 1;
    v21 = &v6[7 * v20];
    v21[4] = v9;
    v21[5] = v28;
    v21[6] = v29;
    v21[7] = v30;
    v21[8] = v31;
    v21[9] = v32;
    v21[10] = v10;
  }

  while (v4 != v3);
  return v6;
}

unint64_t sub_1000F3B88(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_1000CF25C(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = sub_1001E8CAC(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_1000F3C64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006E6B68);
    v3 = sub_1005741C8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1000EB8B4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000F3D58(uint64_t a1)
{
  v2 = sub_100009DCC(&unk_1006E68F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F3DC0(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }
}

uint64_t sub_1000F3E14(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000F3E40()
{

  return swift_deallocObject();
}

uint64_t sub_1000F3E78()
{

  return sub_100570548();
}

uint64_t sub_1000F3EDC()
{

  return swift_deallocObject();
}

uint64_t sub_1000F3F14()
{
  result = (*(v0 + 16))();
  if (result)
  {
    return sub_100570538();
  }

  return result;
}

unint64_t sub_1000F3F48()
{
  result = qword_1006E6908;
  if (!qword_1006E6908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6908);
  }

  return result;
}

unint64_t sub_1000F3FA0()
{
  result = qword_1006E6910;
  if (!qword_1006E6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6910);
  }

  return result;
}

uint64_t sub_1000F4014(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000F405C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F4184(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10056CAE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000F41EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006E6A88);
    v3 = sub_1005741C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000F30A0(v5, v6, sub_1000EBC88);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000F431C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006E6B48);
    v3 = sub_1005741C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000CC8C(v4, v13, &unk_1006E6B50);
      result = sub_1000EB93C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000F51DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000F4458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006E6B30);
    v3 = sub_1005741C8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1000EB980(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_1000F4538(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100009DCC(&qword_1006E6A80);
  v3 = sub_1005741C8();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_1000EB980(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1000EB980(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000F464C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006E6B28);
    v3 = sub_1005741C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000F30A0(v5, v6, sub_1000EBC88);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000F4764(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&unk_1006E6B00);
    v3 = sub_1005741C8();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000F30A0(v5, v6, sub_1000EBC88);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000F4874(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E5C40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100009DCC(&qword_1006E5C48);
    v7 = sub_1005741C8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000CC8C(v9, v5, &qword_1006E5C40);
      result = sub_1000EB9E8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10056CAE8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000F4A5C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, Swift::Int))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100009DCC(&qword_1006E6B20);
    v5 = sub_1005741C8();

    for (i = (a1 + 56); ; i += 4)
    {
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      sub_1000F54C8(v9, v10);
      result = sub_1000F30A0(v7, v8, a2);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      v14 = (v5[7] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      v15 = v5[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v5[2] = v17;
      if (!--v2)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000F4B7C(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E6AF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100009DCC(&qword_1006E6AF8);
    v7 = sub_1005741C8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000CC8C(v9, v5, &qword_1006E6AF0);
      result = sub_1000EB9E8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10056CAE8();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
      result = sub_1000F51EC(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000F4D84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006E6A60);
    v3 = sub_1005741C8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_1000EBABC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000F4E7C(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E6A90);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100009DCC(&qword_1006E6A50);
    v7 = sub_1005741C8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000CC8C(v9, v5, &qword_1006E6A90);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1000F30A0(*v5, v12, sub_1000EBC88);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_10056D9E8();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000F50C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100009DCC(a2);
    v7 = sub_1005741C8();
    v8 = a1 + 32;

    while (1)
    {
      sub_10000CC8C(v8, &v15, a4);
      v9 = v15;
      result = sub_1000EBB8C(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_1000F51DC(&v16, (v7[7] + 32 * result));
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      v8 += 40;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_1000F51DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000F51EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F5250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F52B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F53CC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v4 = a2;
    v6 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v14 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_100574178();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = sub_100574178();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  v7(result, 1);

  return v14(v6, v4, 0);
}

uint64_t sub_1000F54C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000F558C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  a5[3] = a2(0);
  a5[4] = a3;
  v9 = sub_10002AB7C(a5);
  return sub_100101DB8(a1, v9, a4);
}

uint64_t sub_1000F5668(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(sub_100009DCC(&qword_1006E6B90) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6420);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000F5770, 0, 0);
}

uint64_t sub_1000F5770()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = sub_100572F48();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_10000CC8C(v4, v2, &qword_1006E6B90);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_100019B40(v2, v7 + v6, &qword_1006E6B90);
  sub_1002B0D90(0, 0, v1, &unk_100586F50, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000F58CC(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(sub_100009DCC(&qword_1006E6B98) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6420);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000F59D4, 0, 0);
}

uint64_t sub_1000F59D4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = sub_100572F48();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_10000CC8C(v4, v2, &qword_1006E6B98);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_100019B40(v2, v7 + v6, &qword_1006E6B98);
  sub_1002B0D90(0, 0, v1, &unk_100586F60, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000F5B30(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(sub_100009DCC(&qword_1006E6D10) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6420);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000F5C38, 0, 0);
}

uint64_t sub_1000F5C38()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = sub_100572F48();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_10000CC8C(v4, v2, &qword_1006E6D10);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_100019B40(v2, v7 + v6, &qword_1006E6D10);
  sub_1002B0D90(0, 0, v1, &unk_100586E60, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000F5D94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return (sub_100207DBC)(a1, 1);
}

uint64_t sub_1000F5E4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return (sub_1002092DC)(a1, 1);
}

uint64_t sub_1000F5F04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CB98;

  return (sub_10021E008)(a1, 1);
}

uint64_t Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v56 = a7;
  v57 = a6;
  v54 = a4;
  v55 = a5;
  v50 = a2;
  v12 = sub_10056DFD8();
  v47 = *(v12 - 8);
  v48 = v12;
  __chkstk_darwin(v12);
  v46 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v51 = v14;
  v53 = *(v14 - 8);
  v15 = v53;
  __chkstk_darwin(v14);
  v49 = (&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_100009DCC(&qword_1006E6B70);
  __chkstk_darwin(v17 - 8);
  v52 = &v46 - v18;
  v19 = type metadata accessor for Actions.PlaybackContext();
  v20 = v19[5];
  (*(v15 + 56))(&a8[v20], 1, 1, v14);
  v21 = &a8[v19[6]];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = &a8[v19[7]];
  *(v22 + 32) = 0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *a8 = a1;
  sub_1000F64CC(a2, &a8[v20], &qword_1006E6B70);
  v24 = *v21;
  v23 = *(v21 + 1);
  v25 = *(v21 + 2);
  v26 = *(v21 + 3);
  v27 = a3;
  v28 = a3;
  v29 = v54;
  v30 = v55;
  v31 = v57;
  sub_1000F6420(v28, v54, v55, v57);
  v32 = v25;
  v33 = v50;
  sub_1000F6480(v24, v23, v32, v26);
  v34 = v27;
  *v21 = v27;
  *(v21 + 1) = v29;
  *(v21 + 2) = v30;
  *(v21 + 3) = v31;
  v36 = v51;
  v35 = v52;
  sub_1000F64CC(v56, v22, &qword_1006E6B78);
  sub_10000CC8C(v33, v35, &qword_1006E6B70);
  if ((*(v53 + 48))(v35, 1, v36) == 1)
  {
    sub_1000F6480(v34, v29, v55, v57);
    sub_10001036C(v56, &qword_1006E6B78);
    sub_10001036C(v33, &qword_1006E6B70);
    v33 = v35;
  }

  else
  {
    v37 = v29;
    v38 = v49;
    sub_100101DB8(v35, v49, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = v46;
      v40 = v47;
      v41 = v48;
      (*(v47 + 32))(v46, v38, v48);
      v42 = sub_10056DFA8();
      (*(v40 + 8))(v39, v41);
    }

    else
    {
      v42 = *v38;
    }

    sub_1000F6534(v35);
    v43 = v55;
    v44 = v57;
    sub_1002ADDBC(v34, v37, v55, v57);
    sub_1000F6480(v34, v37, v43, v44);

    sub_10001036C(v56, &qword_1006E6B78);
  }

  return sub_10001036C(v33, &qword_1006E6B70);
}

uint64_t type metadata accessor for Actions.PlaybackContext()
{
  result = qword_1006E6CB0;
  if (!qword_1006E6CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F6420(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1000F646C(a3, a4);
  }
}

uint64_t sub_1000F646C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000F54C8(a1, a2);
  }

  return a1;
}

void sub_1000F6480(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1000A79FC(a3, a4);
  }
}

uint64_t sub_1000F64CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100009DCC(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F6534(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Actions.PlaybackContext.playActivityInformation.getter()
{
  v1 = v0 + *(type metadata accessor for Actions.PlaybackContext() + 24);
  v2 = *v1;
  sub_1000F6420(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return v2;
}

void Actions.PlaybackContext.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v6 = sub_10056DFD8();
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v16 = type metadata accessor for Actions.PlaybackContext();
  v17 = v4 + *(v16 + 24);
  sub_1000F6480(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24));
  v18 = v29;
  v19 = v30;
  *v17 = a1;
  *(v17 + 8) = v18;
  v20 = v31;
  *(v17 + 16) = v19;
  *(v17 + 24) = v20;
  v21 = *(v16 + 20);
  if (!(*(v10 + 48))(v4 + v21, 1, v9))
  {
    v22 = v28;
    sub_100101DB8(v4 + v21, v15, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    sub_100101DB8(v15, v13, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v22 + 32))(v8, v13, v6);
      v23 = sub_10056DFA8();
      (*(v22 + 8))(v8, v6);
      sub_1000F6534(v15);
    }

    else
    {
      sub_1000F6534(v15);
      v23 = *v13;
    }

    v24 = *v17;
    v25 = *(v17 + 8);
    v26 = *(v17 + 16);
    v27 = *(v17 + 24);
    sub_1000F6420(*v17, v25, v26, v27);
    sub_1002ADDBC(v24, v25, v26, v27);
    sub_1000F6480(v24, v25, v26, v27);
  }
}

void (*Actions.PlaybackContext.playActivityInformation.modify(void *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_10056DFD8();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v4[3] = v7;
  v8 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[4] = v8;
  v9 = *(v8 - 8);
  v4[5] = v9;
  v10 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v4[7] = v11;
  v12 = type metadata accessor for Actions.PlaybackContext();
  v4[8] = v12;
  *(v4 + 18) = *(v12 + 24);
  return sub_1000F6B10;
}

void sub_1000F6B10(void **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = *v2;
    v4 = *(v2[8] + 20);
    if (!(*(v2[5] + 48))(*v2 + v4, 1, v2[4]))
    {
      v6 = v2[6];
      v5 = v2[7];
      sub_100101DB8(v3 + v4, v5, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      sub_100101DB8(v5, v6, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v8 = v2[6];
      v9 = v2[7];
      if (EnumCaseMultiPayload == 1)
      {
        v11 = v2[2];
        v10 = v2[3];
        v12 = v2[1];
        (*(v11 + 32))(v10, v2[6], v12);
        v13 = sub_10056DFA8();
        (*(v11 + 8))(v10, v12);
        sub_1000F6534(v9);
      }

      else
      {
        sub_1000F6534(v2[7]);
        v13 = *v8;
      }

      v14 = (*v2 + *(v2 + 18));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      sub_1000F6420(*v14, v16, v17, v18);
      sub_1002ADDBC(v15, v16, v17, v18);
      sub_1000F6480(v15, v16, v17, v18);
    }
  }

  v19 = v2[6];
  v20 = v2[3];
  free(v2[7]);
  free(v19);
  free(v20);

  free(v2);
}

uint64_t static MusicActions.queueActions(item:playbackContext:presentationSource:metricsReportingContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = a2;
  v8 = sub_100009DCC(&qword_1006E6B80);
  __chkstk_darwin(v8 - 8);
  v10 = &v110 - v9;
  v11 = type metadata accessor for Actions.PlaybackContext();
  __chkstk_darwin(v11 - 8);
  v13 = (&v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v15 = a1[4];
  v16 = sub_10000C8CC(a1, v14);
  __chkstk_darwin(v16);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v117 = type metadata accessor for Actions.PlaybackContext;
  sub_100101DB8(a2, v13, type metadata accessor for Actions.PlaybackContext);
  v20 = a3;
  v115 = a3;
  sub_1000FEAFC(a3, &v155);
  v21 = a4;
  v114 = a4;
  v111 = v10;
  sub_10000CC8C(a4, v10, &qword_1006E6B80);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v18, 0, v13, &v155, v10, v14, v15, &v120);
  sub_1001531D8(&v120, &v122);
  v171[0] = v120;
  sub_1000FEB58(v171);
  v170 = v121;
  sub_10001036C(&v170, &unk_1006EB090);

  v116 = sub_100009DCC(&qword_1006E6288);
  v22 = swift_allocObject();
  v118 = xmmword_10057B510;
  *(v22 + 16) = xmmword_10057B510;
  LOBYTE(a4) = BYTE8(v126);
  v23 = swift_allocObject();
  v24 = v129;
  *(v23 + 112) = v128;
  *(v23 + 128) = v24;
  *(v23 + 144) = v130;
  v25 = v125;
  *(v23 + 48) = v124;
  *(v23 + 64) = v25;
  v26 = v127;
  *(v23 + 80) = v126;
  *(v23 + 96) = v26;
  v27 = v123;
  *(v23 + 16) = v122;
  *(v23 + 32) = v27;
  v28 = swift_allocObject();
  v29 = v129;
  *(v28 + 112) = v128;
  *(v28 + 128) = v29;
  *(v28 + 144) = v130;
  v30 = v125;
  *(v28 + 48) = v124;
  *(v28 + 64) = v30;
  v31 = v127;
  *(v28 + 80) = v126;
  *(v28 + 96) = v31;
  v32 = v123;
  *(v28 + 16) = v122;
  *(v28 + 32) = v32;
  v33 = swift_allocObject();
  v34 = v129;
  *(v33 + 112) = v128;
  *(v33 + 128) = v34;
  *(v33 + 144) = v130;
  v35 = v125;
  *(v33 + 48) = v124;
  *(v33 + 64) = v35;
  v36 = v127;
  *(v33 + 80) = v126;
  *(v33 + 96) = v36;
  v37 = v123;
  *(v33 + 16) = v122;
  *(v33 + 32) = v37;
  v112 = v22;
  *(v22 + 32) = a4;
  *(v22 + 40) = sub_1000FEBB0;
  *(v22 + 48) = v23;
  *(v22 + 56) = sub_1000FEBB8;
  *(v22 + 64) = v28;
  *(v22 + 72) = &unk_100586BB0;
  *(v22 + 80) = v33;
  v38 = a1[3];
  v39 = a1[4];
  v40 = sub_10000C8CC(a1, v38);
  __chkstk_darwin(v40);
  v42 = &v110 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v43 + 16))(v42);
  v44 = v113;
  v45 = v13;
  sub_100101DB8(v113, v13, v117);
  sub_1000FEAFC(v20, &v144);
  v46 = v111;
  sub_10000CC8C(v21, v111, &qword_1006E6B80);
  sub_10000CC8C(&v122, &v155, &qword_1006E6B88);
  sub_10000CC8C(&v122, &v155, &qword_1006E6B88);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v42, 2, v45, &v144, v46, v38, v39, &v131);
  sub_1001531D8(&v131, &v133);
  v169 = v131;
  sub_1000FEB58(&v169);
  v168 = v132;
  sub_10001036C(&v168, &unk_1006EB090);

  v47 = swift_allocObject();
  *(v47 + 16) = v118;
  LOBYTE(v42) = BYTE8(v137);
  v48 = swift_allocObject();
  v49 = v140;
  *(v48 + 112) = v139;
  *(v48 + 128) = v49;
  *(v48 + 144) = v141;
  v50 = v136;
  *(v48 + 48) = v135;
  *(v48 + 64) = v50;
  v51 = v138;
  *(v48 + 80) = v137;
  *(v48 + 96) = v51;
  v52 = v134;
  *(v48 + 16) = v133;
  *(v48 + 32) = v52;
  v53 = swift_allocObject();
  v54 = v140;
  *(v53 + 112) = v139;
  *(v53 + 128) = v54;
  *(v53 + 144) = v141;
  v55 = v136;
  *(v53 + 48) = v135;
  *(v53 + 64) = v55;
  v56 = v138;
  *(v53 + 80) = v137;
  *(v53 + 96) = v56;
  v57 = v134;
  *(v53 + 16) = v133;
  *(v53 + 32) = v57;
  v58 = swift_allocObject();
  v59 = v140;
  *(v58 + 112) = v139;
  *(v58 + 128) = v59;
  *(v58 + 144) = v141;
  v60 = v136;
  *(v58 + 48) = v135;
  *(v58 + 64) = v60;
  v61 = v138;
  *(v58 + 80) = v137;
  *(v58 + 96) = v61;
  v62 = v134;
  *(v58 + 16) = v133;
  *(v58 + 32) = v62;
  *(v47 + 32) = v42;
  *(v47 + 40) = sub_100101FD8;
  *(v47 + 48) = v48;
  *(v47 + 56) = sub_100101FF0;
  *(v47 + 64) = v53;
  *(v47 + 72) = &unk_100586BC0;
  *(v47 + 80) = v58;
  v63 = a1[3];
  v64 = a1[4];
  v65 = sub_10000C8CC(a1, v63);
  __chkstk_darwin(v65);
  v67 = &v110 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v68 + 16))(v67);
  sub_100101DB8(v44, v45, v117);
  sub_1000FEAFC(v115, &v144);
  sub_10000CC8C(v114, v46, &qword_1006E6B80);
  sub_10000CC8C(&v133, &v155, &qword_1006E6B88);
  sub_10000CC8C(&v133, &v155, &qword_1006E6B88);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v67, 1, v45, &v144, v46, v63, v64, &v142);
  sub_1001531D8(&v142, &v144);
  v167 = v142;
  sub_1000FEB58(&v167);
  v166 = v143;
  sub_10001036C(&v166, &unk_1006EB090);

  v69 = swift_allocObject();
  *(v69 + 16) = v118;
  LOBYTE(v21) = BYTE8(v148);
  v70 = swift_allocObject();
  v71 = v151;
  *(v70 + 112) = v150;
  *(v70 + 128) = v71;
  *(v70 + 144) = v152;
  v72 = v147;
  *(v70 + 48) = v146;
  *(v70 + 64) = v72;
  v73 = v149;
  *(v70 + 80) = v148;
  *(v70 + 96) = v73;
  v74 = v145;
  *(v70 + 16) = v144;
  *(v70 + 32) = v74;
  v75 = swift_allocObject();
  v76 = v151;
  *(v75 + 112) = v150;
  *(v75 + 128) = v76;
  *(v75 + 144) = v152;
  v77 = v147;
  *(v75 + 48) = v146;
  *(v75 + 64) = v77;
  v78 = v149;
  *(v75 + 80) = v148;
  *(v75 + 96) = v78;
  v79 = v145;
  *(v75 + 16) = v144;
  *(v75 + 32) = v79;
  v80 = swift_allocObject();
  v81 = v151;
  *(v80 + 112) = v150;
  *(v80 + 128) = v81;
  *(v80 + 144) = v152;
  v82 = v147;
  *(v80 + 48) = v146;
  *(v80 + 64) = v82;
  v83 = v149;
  *(v80 + 80) = v148;
  *(v80 + 96) = v83;
  v84 = v145;
  *(v80 + 16) = v144;
  *(v80 + 32) = v84;
  *(v69 + 32) = v21;
  *(v69 + 40) = sub_100101FD8;
  *(v69 + 48) = v70;
  *(v69 + 56) = sub_100101FF0;
  *(v69 + 64) = v75;
  *(v69 + 72) = &unk_100586BC8;
  *(v69 + 80) = v80;
  v85 = a1[3];
  v86 = a1[4];
  v87 = sub_10000C8CC(a1, v85);
  __chkstk_darwin(v87);
  v89 = &v110 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v90 + 16))(v89);
  sub_100101DB8(v113, v45, v117);
  sub_1000FEAFC(v115, v119);
  sub_10000CC8C(v114, v46, &qword_1006E6B80);
  sub_10000CC8C(&v144, &v155, &qword_1006E6B88);
  sub_10000CC8C(&v144, &v155, &qword_1006E6B88);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v89, 3, v45, v119, v46, v85, v86, &v153);
  sub_1001531D8(&v153, &v155);
  v165 = v153;
  sub_1000FEB58(&v165);
  v164 = v154;
  sub_10001036C(&v164, &unk_1006EB090);

  v91 = swift_allocObject();
  *(v91 + 16) = v118;
  LOBYTE(v21) = BYTE8(v159);
  v92 = swift_allocObject();
  v93 = v162;
  *(v92 + 112) = v161;
  *(v92 + 128) = v93;
  *(v92 + 144) = v163;
  v94 = v158;
  *(v92 + 48) = v157;
  *(v92 + 64) = v94;
  v95 = v160;
  *(v92 + 80) = v159;
  *(v92 + 96) = v95;
  v96 = v156;
  *(v92 + 16) = v155;
  *(v92 + 32) = v96;
  v97 = swift_allocObject();
  v98 = v162;
  *(v97 + 112) = v161;
  *(v97 + 128) = v98;
  *(v97 + 144) = v163;
  v99 = v158;
  *(v97 + 48) = v157;
  *(v97 + 64) = v99;
  v100 = v160;
  *(v97 + 80) = v159;
  *(v97 + 96) = v100;
  v101 = v156;
  *(v97 + 16) = v155;
  *(v97 + 32) = v101;
  v102 = swift_allocObject();
  v103 = v162;
  *(v102 + 112) = v161;
  *(v102 + 128) = v103;
  *(v102 + 144) = v163;
  v104 = v158;
  *(v102 + 48) = v157;
  *(v102 + 64) = v104;
  v105 = v160;
  *(v102 + 80) = v159;
  *(v102 + 96) = v105;
  v106 = v156;
  *(v102 + 16) = v155;
  *(v102 + 32) = v106;
  *(v91 + 32) = v21;
  *(v91 + 40) = sub_100101FD8;
  *(v91 + 48) = v92;
  *(v91 + 56) = sub_100101FF0;
  *(v91 + 64) = v97;
  *(v91 + 72) = &unk_100586BD0;
  *(v91 + 80) = v102;
  sub_100009DCC(&qword_1006E6190);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_10057BD80;
  *(v107 + 32) = v112;
  *(v107 + 40) = v47;
  *(v107 + 48) = v69;
  *(v107 + 56) = v91;
  sub_10000CC8C(&v155, v119, &qword_1006E6B88);
  sub_10000CC8C(&v155, v119, &qword_1006E6B88);
  v108 = sub_1000DBFDC(v107);
  swift_setDeallocating();
  sub_100009DCC(&qword_1006E6198);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v108;
}

uint64_t static MusicActions.pinActions(item:library:presentationSource:metricsReportingContext:onFinish:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v96 = a5;
  v97 = a6;
  v86 = a3;
  v87 = a4;
  v95 = a2;
  v9 = sub_100009DCC(&qword_1006E6B90);
  v10 = *(v9 - 8);
  v88 = (v9 - 8);
  v92 = v10;
  v91 = *(v10 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v94 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v93 = &v77 - v14;
  v15 = __chkstk_darwin(v13);
  v90 = &v77 - v16;
  __chkstk_darwin(v15);
  v89 = &v77 - v17;
  v18 = sub_100009DCC(&qword_1006E6B80);
  __chkstk_darwin(v18 - 8);
  v20 = &v77 - v19;
  v21 = sub_100009DCC(&qword_1006E6B98);
  v22 = (v21 - 8);
  v79 = *(v21 - 8);
  v23 = *(v79 + 64);
  v24 = __chkstk_darwin(v21);
  v82 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v24);
  v80 = &v77 - v26;
  v27 = __chkstk_darwin(v25);
  v78 = &v77 - v28;
  __chkstk_darwin(v27);
  v30 = &v77 - v29;
  v85 = a1;
  v31 = a1[3];
  inited = a1[4];
  v32 = sub_10000C8CC(a1, v31);
  __chkstk_darwin(v32);
  v34 = &v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v34);
  sub_1000FEAFC(a3, v99);
  v81 = v20;
  sub_10000CC8C(a4, v20, &qword_1006E6B80);
  v36 = v95;

  v38 = v96;
  v37 = v97;
  sub_1000E672C(v96);
  Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(v34, v36, v99, v20, v38, v37, v31, inited, v30);
  v30[v22[11]] = 7;
  *&v30[v22[13]] = 0x4014000000000000;
  v39 = &v30[v22[12]];
  *v39 = sub_10027A900;
  v39[1] = 0;
  v40 = &v30[v22[14]];
  *v40 = &unk_10058F8D0;
  *(v40 + 1) = 0;
  v41 = &v30[v22[15]];
  *v41 = &unk_10058F8D8;
  *(v41 + 1) = 0;
  v84 = sub_100009DCC(&qword_1006E6288);
  inited = swift_initStackObject();
  v83 = xmmword_10057B510;
  *(inited + 16) = xmmword_10057B510;
  v42 = v78;
  sub_10000CC8C(v30, v78, &qword_1006E6B98);
  v43 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v44 = swift_allocObject();
  sub_100019B40(v42, v44 + v43, &qword_1006E6B98);
  v45 = v80;
  sub_10000CC8C(v30, v80, &qword_1006E6B98);
  v46 = swift_allocObject();
  sub_100019B40(v45, v46 + v43, &qword_1006E6B98);
  v47 = v82;
  sub_10000CC8C(v30, v82, &qword_1006E6B98);
  v48 = swift_allocObject();
  sub_100019B40(v47, v48 + v43, &qword_1006E6B98);
  v49 = inited;
  *(inited + 32) = 7;
  v49[5] = sub_1000FED60;
  v49[6] = v44;
  v49[7] = sub_1000FEE00;
  v49[8] = v46;
  v49[9] = &unk_100586C00;
  v49[10] = v48;
  sub_10001036C(v30, &qword_1006E6B98);
  v50 = v85[3];
  v51 = v85[4];
  v52 = sub_10000C8CC(v85, v50);
  __chkstk_darwin(v52);
  v54 = &v77 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v55 + 16))(v54);
  sub_1000FEAFC(v86, v99);
  v56 = v81;
  sub_10000CC8C(v87, v81, &qword_1006E6B80);
  v57 = v95;

  v59 = v96;
  v58 = v97;
  sub_1000E672C(v96);
  v60 = v89;
  Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(v54, v57, v99, v56, v59, v58, v50, v51, v89);
  v61 = v88;
  *(v60 + v88[11]) = 8;
  *(v60 + v61[13]) = 0x4014000000000000;
  v62 = (v60 + v61[12]);
  v63 = v60;
  *v62 = sub_10027AB50;
  v62[1] = 0;
  v64 = (v60 + v61[14]);
  *v64 = &unk_10058F900;
  v64[1] = 0;
  v65 = (v60 + v61[15]);
  *v65 = &unk_10058F908;
  v65[1] = 0;
  v66 = swift_initStackObject();
  *(v66 + 16) = v83;
  v67 = v90;
  sub_10000CC8C(v60, v90, &qword_1006E6B90);
  v68 = (*(v92 + 80) + 16) & ~*(v92 + 80);
  v97 = swift_allocObject();
  sub_100019B40(v67, v97 + v68, &qword_1006E6B90);
  v69 = v93;
  sub_10000CC8C(v60, v93, &qword_1006E6B90);
  v70 = swift_allocObject();
  sub_100019B40(v69, v70 + v68, &qword_1006E6B90);
  v71 = v94;
  sub_10000CC8C(v60, v94, &qword_1006E6B90);
  v72 = swift_allocObject();
  sub_100019B40(v71, v72 + v68, &qword_1006E6B90);
  *(v66 + 32) = 8;
  v73 = v97;
  *(v66 + 40) = sub_1000FEF14;
  *(v66 + 48) = v73;
  *(v66 + 56) = sub_1000FEFB4;
  *(v66 + 64) = v70;
  *(v66 + 72) = &unk_100586C10;
  *(v66 + 80) = v72;
  sub_10001036C(v63, &qword_1006E6B90);
  sub_100009DCC(&qword_1006E6190);
  v74 = swift_initStackObject();
  *(v74 + 16) = xmmword_10057B500;
  *(v74 + 32) = inited;
  *(v74 + 40) = v66;
  v75 = sub_1000DBFDC(v74);
  swift_setDeallocating();
  sub_100009DCC(&qword_1006E6198);
  swift_arrayDestroy();
  return v75;
}

uint64_t static MusicActions.libraryActions(item:library:presentationSource:playlistPickerPresenter:observer:metricsReportingContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v195 = a7;
  *&v196 = a6;
  v193 = a3;
  v194 = a5;
  v184 = a4;
  v9 = sub_1005720F8();
  v180 = *(v9 - 8);
  v181 = v9;
  __chkstk_darwin(v9);
  v182 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009DCC(&qword_1006E8BE0);
  __chkstk_darwin(v11 - 8);
  v189 = (&v176 - v12);
  v13 = sub_1005722D8();
  v186 = *(v13 - 8);
  v187 = v13;
  __chkstk_darwin(v13);
  v192 = &v176 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100571B78();
  v191 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100009DCC(&qword_1006E6B80);
  __chkstk_darwin(v18 - 8);
  v20 = &v176 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v23 = a1[5];
  v24 = sub_10000C8CC(a1, v22);
  __chkstk_darwin(v24);
  v26 = &v176 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  sub_1000FEAFC(v193, &v217);
  sub_10000CC8C(v195, v20, &qword_1006E6B80);
  v188 = v20;
  Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(v26, a2, &v217, v194, v196, v20, v22, v21, &v224, v23);
  LOBYTE(v227) = 0;
  *(&v227 + 1) = sub_1001024FC;
  *&v228 = 0;
  *(&v228 + 1) = 0x4014000000000000;
  *&v229 = &unk_100586FB8;
  *(&v229 + 1) = 0;
  *&v230 = &unk_100586FC0;
  *(&v230 + 1) = 0;
  sub_1000FF2A4(a1, &v217);
  swift_unknownObjectRetain();
  v190 = a2;

  v194 = sub_100009DCC(&qword_1006E6BA0);
  if (swift_dynamicCast())
  {
    v28 = (*(v191 + 8))(v17, v15);
    v29 = (v224)(v28);
    if (v30 == 1)
    {
      v31 = 0;
      goto LABEL_6;
    }

    sub_1000CA864(v29, v30);
  }

  v31 = 1;
LABEL_6:
  v191 = sub_100009DCC(&qword_1006E6288);
  v32 = swift_allocObject();
  v196 = xmmword_10057B510;
  *(v32 + 16) = xmmword_10057B510;
  v33 = v227;
  v34 = swift_allocObject();
  v35 = v229;
  v34[5] = v228;
  v34[6] = v35;
  v34[7] = v230;
  v36 = v225;
  v34[1] = v224;
  v34[2] = v36;
  v37 = v227;
  v34[3] = v226;
  v34[4] = v37;
  v38 = swift_allocObject();
  v39 = v229;
  v38[5] = v228;
  v38[6] = v39;
  v38[7] = v230;
  v40 = v225;
  v38[1] = v224;
  v38[2] = v40;
  v41 = v227;
  v38[3] = v226;
  v38[4] = v41;
  v42 = swift_allocObject();
  v43 = v229;
  v42[5] = v228;
  v42[6] = v43;
  v42[7] = v230;
  v44 = v225;
  v42[1] = v224;
  v42[2] = v44;
  v45 = v227;
  v42[3] = v226;
  v42[4] = v45;
  *(v32 + 32) = v33;
  *(v32 + 40) = sub_1000FF308;
  *(v32 + 48) = v34;
  *(v32 + 56) = sub_100102030;
  *(v32 + 64) = v38;
  *(v32 + 72) = &unk_100586C30;
  *(v32 + 80) = v42;
  v185 = v32;
  if (v31)
  {
    v46 = a1[3];
    v47 = a1[4];
    v48 = a1[5];
    v49 = sub_10000C8CC(a1, v46);
    __chkstk_darwin(v49);
    v51 = &v176 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v52 + 16))(v51);
    v53 = v193;
    sub_1000FEAFC(v193, &v217);
    v54 = v195;
    v55 = v188;
    sub_10000CC8C(v195, v188, &qword_1006E6B80);
    Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v51, v190, &v217, v55, v46, v47, v48, &v210);
    v203 = v210;
    v204 = v211;
    v205 = v212;
    LOBYTE(v206) = 49;
    *(&v206 + 1) = sub_1001024FC;
    *&v207 = 0;
    *(&v207 + 1) = 0x4014000000000000;
    *&v208 = &unk_100587358;
    *(&v208 + 1) = 0;
    *&v209 = &unk_100587360;
    *(&v209 + 1) = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v196;
    v57 = swift_allocObject();
    v58 = v208;
    v57[5] = v207;
    v57[6] = v58;
    v57[7] = v209;
    v59 = v204;
    v57[1] = v203;
    v57[2] = v59;
    v60 = v206;
    v57[3] = v205;
    v57[4] = v60;
    v61 = swift_allocObject();
    v62 = v208;
    v61[5] = v207;
    v61[6] = v62;
    v61[7] = v209;
    v63 = v204;
    v61[1] = v203;
    v61[2] = v63;
    v64 = v206;
    v61[3] = v205;
    v61[4] = v64;
    v65 = swift_allocObject();
    v66 = v208;
    v65[5] = v207;
    v65[6] = v66;
    v65[7] = v209;
    v67 = v204;
    v65[1] = v203;
    v65[2] = v67;
    v68 = v206;
    v65[3] = v205;
    v65[4] = v68;
    v183 = v56;
    *(v56 + 32) = 49;
    *(v56 + 40) = sub_1000FF584;
    *(v56 + 48) = v57;
    *(v56 + 56) = sub_100102030;
    *(v56 + 64) = v61;
    *(v56 + 72) = &unk_100586C90;
    *(v56 + 80) = v65;
    v69 = a1[3];
    v70 = a1[4];
    v71 = a1[5];
    v72 = sub_10000C8CC(a1, v69);
    __chkstk_darwin(v72);
    v74 = &v176 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v75 + 16))(v74);
    sub_1000FEAFC(v53, &v217);
    v76 = v54;
    v77 = v55;
    sub_10000CC8C(v76, v55, &qword_1006E6B80);
    v78 = v190;
    Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(v74, v190, 0, &v217, v77, v69, v70, v71, &v197);
    v210 = v197;
    v211 = v198;
    v212 = v199;
    LOBYTE(v213) = 48;
    *(&v213 + 1) = sub_1001024FC;
    *&v214 = 0;
    *(&v214 + 1) = 0x4014000000000000;
    *&v215 = &unk_100587AB0;
    *(&v215 + 1) = 0;
    *&v216 = &unk_100587AB8;
    *(&v216 + 1) = 0;
    v79 = swift_allocObject();
    *(v79 + 16) = v196;
    v80 = swift_allocObject();
    v81 = v215;
    v80[5] = v214;
    v80[6] = v81;
    v80[7] = v216;
    v82 = v211;
    v80[1] = v210;
    v80[2] = v82;
    v83 = v213;
    v80[3] = v212;
    v80[4] = v83;
    v84 = swift_allocObject();
    v85 = v215;
    v84[5] = v214;
    v84[6] = v85;
    v84[7] = v216;
    v86 = v211;
    v84[1] = v210;
    v84[2] = v86;
    v87 = v213;
    v84[3] = v212;
    v84[4] = v87;
    v88 = swift_allocObject();
    v89 = v215;
    v88[5] = v214;
    v88[6] = v89;
    v88[7] = v216;
    v90 = v211;
    v88[1] = v210;
    v88[2] = v90;
    v91 = v213;
    v88[3] = v212;
    v88[4] = v91;
    *(v79 + 32) = 48;
    *(v79 + 40) = sub_1000FF65C;
    *(v79 + 48) = v80;
    *(v79 + 56) = sub_100102030;
    *(v79 + 64) = v84;
    *(v79 + 72) = &unk_100586CA0;
    *(v79 + 80) = v88;
    v92 = a1[3];
    v178 = a1[4];
    v179 = v79;
    v177 = a1[5];
    v93 = sub_10000C8CC(a1, v92);
    v176 = &v176;
    __chkstk_darwin(v93);
    v95 = &v176 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v96 + 16))(v95);
    sub_1000FEAFC(v53, &v197);
    sub_10000CC8C(v195, v77, &qword_1006E6B80);

    sub_10000CC8C(&v224, &v217, &qword_1006E6BA8);

    sub_10000CC8C(&v224, &v217, &qword_1006E6BA8);
    sub_10000CC8C(&v203, &v217, &qword_1006E6BD8);
    sub_10000CC8C(&v210, &v217, &qword_1006E6BE0);

    sub_10000CC8C(&v224, &v217, &qword_1006E6BA8);
    sub_10000CC8C(&v203, &v217, &qword_1006E6BD8);
    sub_10000CC8C(&v210, &v217, &qword_1006E6BE0);
    Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v95, v78, &v197, v188, v92, v178, v177, &v200);
    v217 = v200;
    v218 = v201;
    v219 = v202;
    LOBYTE(v220) = 1;
    *(&v220 + 1) = sub_1001024FC;
    *&v221 = 0;
    *(&v221 + 1) = 0x4014000000000000;
    *&v222 = &unk_100587748;
    *(&v222 + 1) = 0;
    *&v223 = &unk_100587750;
    *(&v223 + 1) = 0;
    v97 = swift_allocObject();
    *(v97 + 16) = v196;
    v98 = swift_allocObject();
    v99 = v222;
    v98[5] = v221;
    v98[6] = v99;
    v98[7] = v223;
    v100 = v218;
    v98[1] = v217;
    v98[2] = v100;
    v101 = v220;
    v98[3] = v219;
    v98[4] = v101;
    v102 = swift_allocObject();
    v103 = v222;
    v102[5] = v221;
    v102[6] = v103;
    v102[7] = v223;
    v104 = v218;
    v102[1] = v217;
    v102[2] = v104;
    v105 = v220;
    v102[3] = v219;
    v102[4] = v105;
    v106 = swift_allocObject();
    v107 = v222;
    v106[5] = v221;
    v106[6] = v107;
    v106[7] = v223;
    v108 = v218;
    v106[1] = v217;
    v106[2] = v108;
    v109 = v220;
    v106[3] = v219;
    v106[4] = v109;
    *(v97 + 32) = 1;
    *(v97 + 40) = sub_1000FF730;
    *(v97 + 48) = v98;
    *(v97 + 56) = sub_100102030;
    *(v97 + 64) = v102;
    *(v97 + 72) = &unk_100586CC0;
    *(v97 + 80) = v106;
    sub_100009DCC(&qword_1006E6190);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_100580F90;
    *(v110 + 32) = v183;
    *(v110 + 40) = v179;
    *(v110 + 48) = v97;
    sub_10000CC8C(&v217, &v197, &qword_1006E6BE8);
    sub_10000CC8C(&v217, &v197, &qword_1006E6BE8);
    v183 = sub_1000DBFDC(v110);
    swift_setDeallocating();
    sub_100009DCC(&qword_1006E6198);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    sub_10000CC8C(&v224, &v217, &qword_1006E6BA8);
    sub_10000CC8C(&v224, &v217, &qword_1006E6BA8);
    sub_10000CC8C(&v224, &v217, &qword_1006E6BA8);
    v183 = _swiftEmptyArrayStorage;
  }

  v111 = v186;
  v112 = v187;
  v113 = v192;
  sub_1000FF2A4(a1, &v217);
  sub_100009DCC(&qword_1006E6BB0);
  v114 = swift_dynamicCast();
  v115 = v189;
  if (v114)
  {
    sub_100100600(&v210, &v203);
    sub_10000CC8C(v184, &v200, &qword_1006E6BC0);
    if (*(&v201 + 1))
    {
      sub_10002EA74(&v200, &v197);
      v116 = *(&v204 + 1);
      v186 = *(&v205 + 1);
      v187 = v205;
      v117 = sub_10000C8CC(&v203, *(&v204 + 1));
      v118 = v111;
      v119 = *(&v198 + 1);
      v120 = v199;
      v121 = a1;
      v122 = sub_10000C8CC(&v197, *(&v198 + 1));
      sub_1000FEAFC(v193, &v210);
      v123 = v112;
      v124 = v188;
      sub_10000CC8C(v195, v188, &qword_1006E6B80);
      v175 = v120;
      v111 = v118;
      v125 = v122;
      a1 = v121;
      v126 = v124;
      v112 = v123;
      v127 = v119;
      v113 = v192;
      sub_100111FE4(v117, &v210, v125, v126, v116, v127, v187, v186, &v217, v175);
      LOBYTE(v220) = 11;
      *(&v220 + 1) = sub_1001024FC;
      *&v221 = 0;
      *(&v221 + 1) = 0x4014000000000000;
      *&v222 = &unk_100587148;
      *(&v222 + 1) = 0;
      *&v223 = &unk_100587150;
      *(&v223 + 1) = 0;
      v128 = swift_allocObject();
      *(v128 + 16) = v196;
      v129 = swift_allocObject();
      v130 = v222;
      v129[5] = v221;
      v129[6] = v130;
      v129[7] = v223;
      v131 = v218;
      v129[1] = v217;
      v129[2] = v131;
      v132 = v220;
      v129[3] = v219;
      v129[4] = v132;
      v133 = swift_allocObject();
      v134 = v222;
      v133[5] = v221;
      v133[6] = v134;
      v133[7] = v223;
      v135 = v218;
      v133[1] = v217;
      v133[2] = v135;
      v136 = v220;
      v133[3] = v219;
      v133[4] = v136;
      v137 = swift_allocObject();
      v138 = v222;
      v137[5] = v221;
      v137[6] = v138;
      v137[7] = v223;
      v139 = v218;
      v137[1] = v217;
      v137[2] = v139;
      v140 = v220;
      v137[3] = v219;
      v137[4] = v140;
      *(v128 + 32) = 11;
      *(v128 + 40) = sub_1000FF4B0;
      *(v128 + 48) = v129;
      *(v128 + 56) = sub_100102030;
      *(v128 + 64) = v133;
      *(v128 + 72) = &unk_100586C78;
      *(v128 + 80) = v137;
      sub_100009DCC(&qword_1006E6190);
      v141 = swift_allocObject();
      *(v141 + 16) = v196;
      *(v141 + 32) = v128;
      sub_10000CC8C(&v217, &v210, &qword_1006E6BD0);
      sub_10000CC8C(&v217, &v210, &qword_1006E6BD0);
      v142 = sub_1000DBFDC(v141);
      swift_setDeallocating();
      sub_10001036C(v141 + 32, &qword_1006E6198);
      v115 = v189;
      swift_deallocClassInstance();
      sub_100010474(&v197);
      sub_100010474(&v203);
      goto LABEL_15;
    }

    sub_10001036C(&v200, &qword_1006E6BC0);
    sub_100010474(&v203);
  }

  else
  {
    v211 = 0u;
    v212 = 0u;
    v210 = 0u;
    sub_10001036C(&v210, &qword_1006E6BB8);
  }

  v142 = _swiftEmptyArrayStorage;
LABEL_15:
  sub_1000FF2A4(a1, &v217);
  v143 = swift_dynamicCast();
  v144 = *(v111 + 56);
  if ((v143 & 1) == 0)
  {
    v144(v115, 1, 1, v112);
    v170 = &qword_1006E8BE0;
    v171 = v115;
LABEL_20:
    sub_10001036C(v171, v170);
    v169 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  v144(v115, 0, 1, v112);
  (*(v111 + 32))(v113, v115, v112);
  sub_10000CC8C(v184, &v197, &qword_1006E6BC0);
  if (!*(&v198 + 1))
  {
    (*(v111 + 8))(v113, v112);
    v170 = &qword_1006E6BC0;
    v171 = &v197;
    goto LABEL_20;
  }

  sub_10002EA74(&v197, &v203);
  v145 = *(&v204 + 1);
  v146 = v205;
  v147 = sub_10000C8CC(&v203, *(&v204 + 1));
  v148 = *(v111 + 16);
  v149 = v111;
  v150 = v182;
  v148(v182, v113, v112);
  v151 = (*(v180 + 104))(v150, enum case for Playlist.Folder.Item.playlist(_:), v181);
  __chkstk_darwin(v151);
  v153 = &v176 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v154 + 16))(v153, v147, v145);
  Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(v150, v190, v153, v145, v146, &v210);
  v217 = v210;
  v218 = v211;
  v219 = v212;
  LOBYTE(v220) = 20;
  *(&v220 + 1) = sub_10012D6A4;
  *&v221 = 0;
  *(&v221 + 1) = 0x4014000000000000;
  *&v222 = &unk_100587890;
  *(&v222 + 1) = 0;
  *&v223 = &unk_100587898;
  *(&v223 + 1) = 0;
  v155 = swift_allocObject();
  *(v155 + 16) = v196;
  v156 = swift_allocObject();
  v157 = v222;
  v156[5] = v221;
  v156[6] = v157;
  v156[7] = v223;
  v158 = v218;
  v156[1] = v217;
  v156[2] = v158;
  v159 = v220;
  v156[3] = v219;
  v156[4] = v159;
  v160 = swift_allocObject();
  v161 = v222;
  v160[5] = v221;
  v160[6] = v161;
  v160[7] = v223;
  v162 = v218;
  v160[1] = v217;
  v160[2] = v162;
  v163 = v220;
  v160[3] = v219;
  v160[4] = v163;
  v164 = swift_allocObject();
  v165 = v222;
  v164[5] = v221;
  v164[6] = v165;
  v164[7] = v223;
  v166 = v218;
  v164[1] = v217;
  v164[2] = v166;
  v167 = v220;
  v164[3] = v219;
  v164[4] = v167;
  *(v155 + 32) = 20;
  *(v155 + 40) = sub_1000FF3DC;
  *(v155 + 48) = v156;
  *(v155 + 56) = sub_100102030;
  *(v155 + 64) = v160;
  *(v155 + 72) = &unk_100586C60;
  *(v155 + 80) = v164;
  sub_100009DCC(&qword_1006E6190);
  v168 = swift_allocObject();
  *(v168 + 16) = v196;
  *(v168 + 32) = v155;
  sub_10000CC8C(&v217, &v210, &qword_1006E6BC8);

  sub_10000CC8C(&v217, &v210, &qword_1006E6BC8);
  v169 = sub_1000DBFDC(v168);
  swift_setDeallocating();
  sub_10001036C(v168 + 32, &qword_1006E6198);
  swift_deallocClassInstance();
  (*(v149 + 8))(v192, v112);
  sub_100010474(&v203);
LABEL_21:
  sub_100009DCC(&qword_1006E6190);
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_10057BD80;
  *(v172 + 32) = v185;
  *(v172 + 40) = v183;
  *(v172 + 48) = v142;
  *(v172 + 56) = v169;
  v173 = sub_1000DBFDC(v172);
  sub_10001036C(&v224, &qword_1006E6BA8);
  swift_setDeallocating();
  sub_100009DCC(&qword_1006E6198);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v173;
}

uint64_t static MusicActions.folderActions(folder:library:presentationSource:folderPickerPresenter:onCreateFolder:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v133 = a6;
  v118 = a4;
  v131 = a2;
  v123 = a1;
  v9 = sub_1005720F8();
  v119 = *(v9 - 8);
  v120 = v9;
  __chkstk_darwin(v9);
  v121 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100572118();
  v129 = *(v11 - 8);
  v130 = v11;
  v12 = __chkstk_darwin(v11);
  v125 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v13;
  __chkstk_darwin(v12);
  v132 = &v112 - v14;
  v15 = sub_100009DCC(&qword_1006E6BF0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15 - 8);
  v122 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v112 - v19;
  sub_10000CC8C(a1, &v112 - v19, &qword_1006E6BF0);
  v126 = a3;
  sub_1000FEAFC(a3, &v156);
  v21 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_100019B40(v20, v24 + v21, &qword_1006E6BF0);
  *(v24 + v22) = 0;
  v25 = (v24 + v23);
  v127 = a5;
  v26 = v133;
  *v25 = a5;
  v25[1] = v26;
  sub_1000FF9D0(&v156, v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
  *&v156 = sub_1000FF804;
  *(&v156 + 1) = v131;
  *&v157 = &unk_100586CD8;
  *(&v157 + 1) = v24;
  *&v158 = &unk_1005878A8;
  *(&v158 + 1) = 0;
  LOBYTE(v159) = 10;
  *(&v159 + 1) = sub_10012D6A4;
  *&v160 = 0;
  *(&v160 + 1) = 0x4014000000000000;
  *&v161 = &unk_1005878B0;
  *(&v161 + 1) = 0;
  *&v162 = &unk_1005878B8;
  *(&v162 + 1) = 0;
  v27 = sub_100009DCC(&qword_1006E6288);
  v28 = swift_allocObject();
  v128 = xmmword_10057B510;
  *(v28 + 16) = xmmword_10057B510;
  v29 = swift_allocObject();
  v30 = v161;
  v29[5] = v160;
  v29[6] = v30;
  v29[7] = v162;
  v31 = v157;
  v29[1] = v156;
  v29[2] = v31;
  v32 = v159;
  v29[3] = v158;
  v29[4] = v32;
  v33 = swift_allocObject();
  v34 = v161;
  v33[5] = v160;
  v33[6] = v34;
  v33[7] = v162;
  v35 = v157;
  v33[1] = v156;
  v33[2] = v35;
  v36 = v159;
  v33[3] = v158;
  v33[4] = v36;
  v37 = swift_allocObject();
  v38 = v161;
  v37[5] = v160;
  v37[6] = v38;
  v37[7] = v162;
  v39 = v157;
  v37[1] = v156;
  v37[2] = v39;
  v40 = v159;
  v37[3] = v158;
  v37[4] = v40;
  *(v28 + 32) = 10;
  *(v28 + 40) = sub_1000FFB68;
  *(v28 + 48) = v29;
  *(v28 + 56) = sub_100102030;
  *(v28 + 64) = v33;
  *(v28 + 72) = &unk_100586CE8;
  *(v28 + 80) = v37;
  v41 = v122;
  sub_10000CC8C(v123, v122, &qword_1006E6BF0);
  v42 = v129;
  v43 = v130;
  if ((*(v129 + 48))(v41, 1) == 1)
  {
    sub_10000CC8C(&v156, &v149, &qword_1006E6BF8);

    sub_10000CC8C(&v156, &v149, &qword_1006E6BF8);
    sub_1000E672C(v127);
    sub_10001036C(v41, &qword_1006E6BF0);
    v44 = _swiftEmptyArrayStorage;
  }

  else
  {
    v45 = *(v42 + 32);
    v46 = v132;
    v124 = v27;
    v45(v132, v41, v43);
    v115 = v45;
    v116 = v42 + 32;
    v47 = *(v42 + 16);
    v122 = v28;
    v123 = v42 + 16;
    v48 = v125;
    v49 = v43;
    v47(v125, v46, v43);
    v113 = v47;
    sub_1000FEAFC(v126, &v149);
    v50 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v114 = *(v42 + 80);
    v117 += 7;
    v51 = (v117 + v50) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    v53 = v49;
    v54 = v49;
    v28 = v122;
    v45((v52 + v50), v48, v53);
    sub_1000FF9D0(&v149, v52 + v51);
    v55 = v131;
    *&v135 = sub_1000FF804;
    *(&v135 + 1) = v131;
    *&v136 = &unk_100586CF8;
    *(&v136 + 1) = v52;
    *&v137 = &unk_1005878C8;
    *(&v137 + 1) = 0;
    LOBYTE(v138) = 19;
    *(&v138 + 1) = sub_10012D6A4;
    *&v139 = 0;
    *(&v139 + 1) = 0x4014000000000000;
    *&v140 = &unk_1005878D0;
    *(&v140 + 1) = 0;
    *&v141 = &unk_1005878D8;
    *(&v141 + 1) = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v128;
    v57 = swift_allocObject();
    v58 = v140;
    v57[5] = v139;
    v57[6] = v58;
    v57[7] = v141;
    v59 = v136;
    v57[1] = v135;
    v57[2] = v59;
    v60 = v138;
    v57[3] = v137;
    v57[4] = v60;
    v61 = swift_allocObject();
    v62 = v140;
    v61[5] = v139;
    v61[6] = v62;
    v61[7] = v141;
    v63 = v136;
    v61[1] = v135;
    v61[2] = v63;
    v64 = v138;
    v61[3] = v137;
    v61[4] = v64;
    v65 = swift_allocObject();
    v66 = v140;
    v65[5] = v139;
    v65[6] = v66;
    v65[7] = v141;
    v67 = v136;
    v65[1] = v135;
    v65[2] = v67;
    v68 = v138;
    v65[3] = v137;
    v65[4] = v68;
    *(v56 + 32) = 19;
    *(v56 + 40) = sub_1000FFE18;
    *(v56 + 48) = v57;
    *(v56 + 56) = sub_100102030;
    *(v56 + 64) = v61;
    *(v56 + 72) = &unk_100586D08;
    *(v56 + 80) = v65;
    v69 = v118[3];
    v70 = v118[4];
    v71 = sub_10000C8CC(v118, v69);
    v72 = v121;
    v47(v121, v132, v54);
    v73 = (*(v119 + 104))(v72, enum case for Playlist.Folder.Item.folder(_:), v120);
    __chkstk_darwin(v73);
    v75 = &v112 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v76 + 16))(v75, v71, v69);
    Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(v72, v55, v75, v69, v70, &v149);
    v142 = v149;
    v143 = v150;
    v144 = v151;
    LOBYTE(v145) = 20;
    *(&v145 + 1) = sub_10012D6A4;
    *&v146 = 0;
    *(&v146 + 1) = 0x4014000000000000;
    *&v147 = &unk_100587890;
    *(&v147 + 1) = 0;
    *&v148 = &unk_100587898;
    *(&v148 + 1) = 0;
    v77 = swift_allocObject();
    *(v77 + 16) = v128;
    v78 = swift_allocObject();
    v79 = v147;
    v78[5] = v146;
    v78[6] = v79;
    v78[7] = v148;
    v80 = v143;
    v78[1] = v142;
    v78[2] = v80;
    v81 = v145;
    v78[3] = v144;
    v78[4] = v81;
    v82 = swift_allocObject();
    v83 = v147;
    v82[5] = v146;
    v82[6] = v83;
    v82[7] = v148;
    v84 = v143;
    v82[1] = v142;
    v82[2] = v84;
    v85 = v145;
    v82[3] = v144;
    v82[4] = v85;
    v86 = swift_allocObject();
    v87 = v147;
    v86[5] = v146;
    v86[6] = v87;
    v86[7] = v148;
    v88 = v143;
    v86[1] = v142;
    v86[2] = v88;
    v89 = v145;
    v86[3] = v144;
    v86[4] = v89;
    *(v77 + 32) = 20;
    *(v77 + 40) = sub_100101FDC;
    *(v77 + 48) = v78;
    *(v77 + 56) = sub_100102030;
    *(v77 + 64) = v82;
    *(v77 + 72) = &unk_100586D10;
    *(v77 + 80) = v86;
    v90 = v125;
    v91 = v130;
    v113(v125, v132, v130);
    sub_1000FEAFC(v126, &v149);
    v92 = (v114 + 24) & ~v114;
    v93 = (v117 + v92) & 0xFFFFFFFFFFFFFFF8;
    v94 = swift_allocObject();
    *(v94 + 16) = v55;

    v115(v94 + v92, v90, v91);
    sub_1000FF9D0(&v149, v94 + v93);
    *&v149 = sub_1000FFEEC;
    *(&v149 + 1) = v55;
    *&v150 = &unk_100586D18;
    *(&v150 + 1) = v94;
    *&v151 = &unk_1005878E8;
    *(&v151 + 1) = 0;
    LOBYTE(v152) = 50;
    *(&v152 + 1) = sub_10012D6A4;
    *&v153 = 0;
    *(&v153 + 1) = 0x4014000000000000;
    *&v154 = &unk_1005878F0;
    *(&v154 + 1) = 0;
    *&v155 = &unk_1005878F8;
    *(&v155 + 1) = 0;
    v95 = swift_allocObject();
    *(v95 + 16) = v128;
    v96 = swift_allocObject();
    v97 = v154;
    v96[5] = v153;
    v96[6] = v97;
    v96[7] = v155;
    v98 = v150;
    v96[1] = v149;
    v96[2] = v98;
    v99 = v152;
    v96[3] = v151;
    v96[4] = v99;
    v100 = swift_allocObject();
    v101 = v154;
    v100[5] = v153;
    v100[6] = v101;
    v100[7] = v155;
    v102 = v150;
    v100[1] = v149;
    v100[2] = v102;
    v103 = v152;
    v100[3] = v151;
    v100[4] = v103;
    v104 = swift_allocObject();
    v105 = v154;
    v104[5] = v153;
    v104[6] = v105;
    v104[7] = v155;
    v106 = v150;
    v104[1] = v149;
    v104[2] = v106;
    v107 = v152;
    v104[3] = v151;
    v104[4] = v107;
    *(v95 + 32) = 50;
    *(v95 + 40) = sub_100100110;
    *(v95 + 48) = v96;
    *(v95 + 56) = sub_100102030;
    *(v95 + 64) = v100;
    *(v95 + 72) = &unk_100586D28;
    *(v95 + 80) = v104;
    sub_100009DCC(&qword_1006E6190);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_100580F90;
    *(v108 + 32) = v56;
    *(v108 + 40) = v77;
    *(v108 + 48) = v95;
    swift_retain_n();
    sub_10000CC8C(&v156, v134, &qword_1006E6BF8);
    sub_10000CC8C(&v135, v134, &qword_1006E6C00);
    sub_10000CC8C(&v142, v134, &qword_1006E6BC8);
    sub_10000CC8C(&v149, v134, &qword_1006E6C08);

    sub_10000CC8C(&v156, v134, &qword_1006E6BF8);
    sub_10000CC8C(&v135, v134, &qword_1006E6C00);
    sub_10000CC8C(&v142, v134, &qword_1006E6BC8);
    sub_10000CC8C(&v149, v134, &qword_1006E6C08);
    sub_1000E672C(v127);
    v44 = sub_1000DBFDC(v108);
    swift_setDeallocating();
    sub_100009DCC(&qword_1006E6198);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v129 + 8))(v132, v130);
  }

  sub_100009DCC(&qword_1006E6190);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_10057B500;
  *(v109 + 32) = v28;
  *(v109 + 40) = v44;
  v110 = sub_1000DBFDC(v109);
  swift_setDeallocating();
  sub_100009DCC(&qword_1006E6198);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v110;
}

uint64_t static MusicActions.tasteActions(item:library:alertPresenter:noticePresenting:ratingViewController:presentationSource:metricsReportingContext:onFinish:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v148 = a7;
  v138 = a5;
  v139 = a6;
  v142 = a4;
  v143 = a2;
  v145 = a3;
  v150 = a9;
  v151 = a10;
  v16 = sub_100009DCC(&qword_1006E6B80);
  __chkstk_darwin(v16 - 8);
  v152 = &v137 - v17;
  v18 = a1;
  v149 = a1;
  v19 = a1[3];
  *&v153 = v18[4];
  v20 = sub_10000C8CC(v18, v19);
  __chkstk_darwin(v20);
  v22 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  sub_10002EA8C(a3, &v181);
  sub_10000CC8C(a4, &v174, &qword_1006E6C10);
  sub_1000FEAFC(a7, &v188);
  v24 = a8;
  v25 = v152;
  sub_10000CC8C(a8, v152, &qword_1006E6B80);
  Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v22, a2, &v181, &v174, &v188, v25, a9, a10, &v167, v19, v153);
  LOBYTE(v170) = 2;
  *(&v170 + 1) = sub_10012D6A4;
  *&v171 = 0;
  *(&v171 + 1) = 0x4014000000000000;
  *&v172 = &unk_100589270;
  *(&v172 + 1) = 0;
  *&v173 = &unk_100589278;
  *(&v173 + 1) = 0;
  v26 = sub_100009DCC(&qword_1006E6288);
  v27 = swift_allocObject();
  v153 = xmmword_10057B510;
  *(v27 + 16) = xmmword_10057B510;
  v28 = swift_allocObject();
  v29 = v172;
  v28[5] = v171;
  v28[6] = v29;
  v28[7] = v173;
  v30 = v168;
  v28[1] = v167;
  v28[2] = v30;
  v31 = v170;
  v28[3] = v169;
  v28[4] = v31;
  v32 = swift_allocObject();
  v33 = v172;
  v32[5] = v171;
  v32[6] = v33;
  v32[7] = v173;
  v34 = v168;
  v32[1] = v167;
  v32[2] = v34;
  v35 = v170;
  v32[3] = v169;
  v32[4] = v35;
  v36 = swift_allocObject();
  v37 = v172;
  v36[5] = v171;
  v36[6] = v37;
  v36[7] = v173;
  v38 = v168;
  v36[1] = v167;
  v36[2] = v38;
  v39 = v170;
  v36[3] = v169;
  v36[4] = v39;
  *(v27 + 32) = 2;
  *(v27 + 40) = sub_1001001E4;
  *(v27 + 48) = v28;
  *(v27 + 56) = sub_100102030;
  *(v27 + 64) = v32;
  *(v27 + 72) = &unk_100586D50;
  *(v27 + 80) = v36;
  v146 = v27;
  v40 = v149[3];
  v41 = v149[4];
  v42 = v149;
  v43 = sub_10000C8CC(v149, v40);
  __chkstk_darwin(v43);
  v45 = &v137 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v46 + 16))(v45);
  sub_10002EA8C(v145, &v181);
  v47 = v142;
  sub_10000CC8C(v142, &v155, &qword_1006E6C10);
  sub_1000FEAFC(v148, &v188);
  v141 = v24;
  v48 = v152;
  sub_10000CC8C(v24, v152, &qword_1006E6B80);
  v49 = v143;
  Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v45, v143, &v181, &v155, &v188, v48, v150, v151, &v174, v40, v41);
  LOBYTE(v177) = 3;
  *(&v177 + 1) = sub_10012D6A4;
  *&v178 = 0;
  *(&v178 + 1) = 0x4014000000000000;
  *&v179 = &unk_1005892A0;
  *(&v179 + 1) = 0;
  *&v180 = &unk_1005892A8;
  *(&v180 + 1) = 0;
  v147 = v26;
  v50 = swift_allocObject();
  *(v50 + 16) = v153;
  v51 = swift_allocObject();
  v52 = v179;
  v51[5] = v178;
  v51[6] = v52;
  v51[7] = v180;
  v53 = v175;
  v51[1] = v174;
  v51[2] = v53;
  v54 = v177;
  v51[3] = v176;
  v51[4] = v54;
  v55 = swift_allocObject();
  v56 = v179;
  v55[5] = v178;
  v55[6] = v56;
  v55[7] = v180;
  v57 = v175;
  v55[1] = v174;
  v55[2] = v57;
  v58 = v177;
  v55[3] = v176;
  v55[4] = v58;
  v59 = swift_allocObject();
  v60 = v179;
  v59[5] = v178;
  v59[6] = v60;
  v59[7] = v180;
  v61 = v175;
  v59[1] = v174;
  v59[2] = v61;
  v62 = v177;
  v59[3] = v176;
  v59[4] = v62;
  *(v50 + 32) = 3;
  *(v50 + 40) = sub_1001002B8;
  *(v50 + 48) = v51;
  *(v50 + 56) = sub_100102030;
  *(v50 + 64) = v55;
  *(v50 + 72) = &unk_100586D60;
  *(v50 + 80) = v59;
  v145 = v50;
  v63 = v42[3];
  v64 = v42[4];
  v65 = sub_10000C8CC(v42, v63);
  __chkstk_darwin(v65);
  v67 = &v137 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v68 + 16))(v67);
  sub_10000CC8C(v47, &v188, &qword_1006E6C10);
  v69 = v24;
  v70 = v152;
  sub_10000CC8C(v69, v152, &qword_1006E6B80);
  Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(v67, v49, &v188, v70, v63, v64, &v181);
  LOBYTE(v184) = 36;
  *(&v184 + 1) = sub_10012D6A4;
  *&v185 = 0;
  *(&v185 + 1) = 0x4014000000000000;
  *&v186 = &unk_1005892D0;
  *(&v186 + 1) = 0;
  *&v187 = &unk_1005892D8;
  *(&v187 + 1) = 0;
  v71 = swift_allocObject();
  *(v71 + 16) = v153;
  v72 = swift_allocObject();
  v73 = v186;
  v72[5] = v185;
  v72[6] = v73;
  v72[7] = v187;
  v74 = v182;
  v72[1] = v181;
  v72[2] = v74;
  v75 = v184;
  v72[3] = v183;
  v72[4] = v75;
  v76 = swift_allocObject();
  v77 = v186;
  v76[5] = v185;
  v76[6] = v77;
  v76[7] = v187;
  v78 = v182;
  v76[1] = v181;
  v76[2] = v78;
  v79 = v184;
  v76[3] = v183;
  v76[4] = v79;
  v80 = swift_allocObject();
  v81 = v186;
  v80[5] = v185;
  v80[6] = v81;
  v80[7] = v187;
  v82 = v182;
  v80[1] = v181;
  v80[2] = v82;
  v83 = v184;
  v80[3] = v183;
  v80[4] = v83;
  *(v71 + 32) = 36;
  *(v71 + 40) = sub_10010038C;
  *(v71 + 48) = v72;
  *(v71 + 56) = sub_1001003C0;
  *(v71 + 64) = v76;
  *(v71 + 72) = &unk_100586D70;
  *(v71 + 80) = v80;
  v144 = v71;
  v84 = v42[3];
  v140 = v42[4];
  v85 = sub_10000C8CC(v42, v84);
  __chkstk_darwin(v85);
  v87 = &v137 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v88 + 16))(v87);
  sub_10000CC8C(v47, &v155, &qword_1006E6C10);
  sub_10000CC8C(v141, v70, &qword_1006E6B80);
  v89 = v49;
  swift_retain_n();
  v90 = v150;
  sub_1000E672C(v150);
  sub_10000CC8C(&v167, &v188, &qword_1006E6C18);
  sub_10000CC8C(&v174, &v188, &qword_1006E6C20);
  sub_10000CC8C(&v181, &v188, &qword_1006E6C28);

  sub_10000CC8C(&v167, &v188, &qword_1006E6C18);
  sub_1000E672C(v90);
  sub_10000CC8C(&v174, &v188, &qword_1006E6C20);
  sub_10000CC8C(&v181, &v188, &qword_1006E6C28);
  Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(v87, v49, v152, v84, v140, &v188);
  LOBYTE(v191) = 37;
  *(&v191 + 1) = sub_10012D6A4;
  *&v192 = 0;
  *(&v192 + 1) = 0x4014000000000000;
  *&v193 = &unk_100589300;
  *(&v193 + 1) = 0;
  *&v194 = &unk_100589308;
  *(&v194 + 1) = 0;
  v91 = swift_allocObject();
  *(v91 + 16) = v153;
  v92 = swift_allocObject();
  v93 = v193;
  v92[5] = v192;
  v92[6] = v93;
  v92[7] = v194;
  v94 = v189;
  v92[1] = v188;
  v92[2] = v94;
  v95 = v191;
  v92[3] = v190;
  v92[4] = v95;
  v96 = swift_allocObject();
  v97 = v193;
  v96[5] = v192;
  v96[6] = v97;
  v96[7] = v194;
  v98 = v189;
  v96[1] = v188;
  v96[2] = v98;
  v99 = v191;
  v96[3] = v190;
  v96[4] = v99;
  v100 = swift_allocObject();
  v101 = v193;
  v100[5] = v192;
  v100[6] = v101;
  v100[7] = v194;
  v102 = v189;
  v100[1] = v188;
  v100[2] = v102;
  v103 = v191;
  v100[3] = v190;
  v100[4] = v103;
  *(v91 + 32) = 37;
  *(v91 + 40) = sub_100100464;
  *(v91 + 48) = v92;
  *(v91 + 56) = sub_100102030;
  *(v91 + 64) = v96;
  *(v91 + 72) = &unk_100586D98;
  *(v91 + 80) = v100;
  sub_10002EA8C(v149, &v162);
  sub_10000CC8C(&v188, &v155, &qword_1006E6C30);
  sub_10000CC8C(&v188, &v155, &qword_1006E6C30);
  sub_100009DCC(&qword_1006E6C38);
  sub_100009DCC(&qword_1006E6C40);
  if (swift_dynamicCast())
  {
    sub_100100600(v161, &v163);
    v104 = v164;
    v105 = v165;
    v106 = v166;
    v107 = sub_10000C8CC(&v163, v164);
    __chkstk_darwin(v107);
    v109 = &v137 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v110 + 16))(v109);
    sub_1000FEAFC(v148, &v155);
    v111 = swift_allocObject();
    v111[2] = v104;
    v111[3] = v105;
    v112 = v138;
    v113 = v139;
    v111[4] = v106;
    v111[5] = v112;
    v111[6] = v113;
    *&v155 = Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)(v109, v89, sub_100100650, v111, &v155, v104, v105, v106);
    *(&v155 + 1) = v114;
    *&v156 = v115;
    *(&v156 + 1) = v116;
    LOBYTE(v157) = 38;
    *(&v157 + 1) = sub_1001024FC;
    *&v158 = 0;
    *(&v158 + 1) = 0x4014000000000000;
    *&v159 = &unk_100589480;
    *(&v159 + 1) = 0;
    *&v160 = &unk_100589488;
    *(&v160 + 1) = 0;
    v117 = swift_allocObject();
    *(v117 + 16) = v153;
    v118 = swift_allocObject();
    v119 = v158;
    v118[3] = v157;
    v118[4] = v119;
    v120 = v160;
    v118[5] = v159;
    v118[6] = v120;
    v121 = v156;
    v118[1] = v155;
    v118[2] = v121;
    v122 = swift_allocObject();
    v123 = v158;
    v122[3] = v157;
    v122[4] = v123;
    v124 = v160;
    v122[5] = v159;
    v122[6] = v124;
    v125 = v156;
    v122[1] = v155;
    v122[2] = v125;
    v126 = swift_allocObject();
    v127 = v158;
    v126[3] = v157;
    v126[4] = v127;
    v128 = v160;
    v126[5] = v159;
    v126[6] = v128;
    v129 = v156;
    v126[1] = v155;
    v126[2] = v129;
    *(v117 + 32) = 38;
    *(v117 + 40) = sub_100100664;
    *(v117 + 48) = v118;
    *(v117 + 56) = sub_10010066C;
    *(v117 + 64) = v122;
    *(v117 + 72) = &unk_100586DC8;
    *(v117 + 80) = v126;
    sub_100009DCC(&qword_1006E6190);
    v130 = swift_allocObject();
    *(v130 + 16) = v153;
    *(v130 + 32) = v117;
    sub_10000CC8C(&v155, v154, &qword_1006E6C50);

    sub_10000CC8C(&v155, v154, &qword_1006E6C50);

    v131 = sub_1000DBFDC(v130);
    swift_setDeallocating();
    sub_10001036C(v130 + 32, &qword_1006E6198);
    swift_deallocClassInstance();
    sub_100010474(&v163);
  }

  else
  {
    memset(v161, 0, sizeof(v161));
    sub_10001036C(v161, &qword_1006E6C48);
    v131 = _swiftEmptyArrayStorage;
  }

  sub_100009DCC(&qword_1006E6190);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_100582420;
  v133 = v145;
  *(v132 + 32) = v146;
  v134 = v144;
  *(v132 + 40) = v133;
  *(v132 + 48) = v134;
  *(v132 + 56) = v91;
  *(v132 + 64) = v131;
  v135 = sub_1000DBFDC(v132);
  swift_setDeallocating();
  sub_100009DCC(&qword_1006E6198);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v135;
}

uint64_t sub_1000FBC50(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[3] = a4;
  v12[4] = a6;
  v9 = sub_10002AB7C(v12);
  (*(*(a4 - 8) + 16))(v9, a1, a4);
  v10 = a2(v12);
  sub_100010474(v12);
  return v10;
}

uint64_t sub_1000FBCEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 64);
  a2[3] = &type metadata for Actions.Queue.Context;
  a2[4] = &protocol witness table for Actions.Queue.Context;
  v9 = swift_allocObject();
  *a2 = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  v11 = *(a1 + 48);
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = v11;
  *(v9 + 80) = v8;
  sub_100101FC4(v4);
}

uint64_t sub_1000FBDBC(uint64_t a1)
{
  sub_100009DCC(&qword_1006E6420);
  *(v1 + 288) = swift_task_alloc();
  v3 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v3;
  *(v1 + 144) = *(a1 + 128);
  v4 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v4;
  v5 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v5;
  v6 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;

  return _swift_task_switch(sub_1000FBE80, 0, 0);
}

uint64_t sub_1000FBE80()
{
  v1 = *(v0 + 288);
  v2 = sub_100572F48();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 128);
  *(v3 + 128) = *(v0 + 112);
  *(v3 + 144) = v4;
  *(v3 + 160) = *(v0 + 144);
  v5 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v5;
  v6 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v6;
  v7 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v7;
  sub_10000CC8C(v0 + 16, v0 + 152, &qword_1006E6B88);
  sub_1002B0D90(0, 0, v1, &unk_100586F70, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000FBFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 112);
  *(v4 + 112) = *(a4 + 96);
  *(v4 + 128) = v6;
  *(v4 + 144) = *(a4 + 128);
  v7 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v7;
  v8 = *(a4 + 80);
  *(v4 + 80) = *(a4 + 64);
  *(v4 + 96) = v8;
  v9 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = swift_task_alloc();
  *(v4 + 152) = v10;
  *v10 = v4;
  v10[1] = sub_1000FC094;

  return (sub_100206864)(a1, 1);
}

uint64_t sub_1000FC094()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000FC188(_OWORD *a1)
{
  sub_100009DCC(&qword_1006E6420);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000FC244, 0, 0);
}

uint64_t sub_1000FC244()
{
  v1 = *(v0 + 240);
  v2 = sub_100572F48();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000CC8C(v0 + 16, v0 + 128, &qword_1006E6BC8);
  sub_1002B0D90(0, 0, v1, &unk_100586F30, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000FC370(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_100101FD4;

  return (sub_10020A7FC)(a1, 1);
}

uint64_t sub_1000FC448(_OWORD *a1)
{
  sub_100009DCC(&qword_1006E6420);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000FC504, 0, 0);
}

uint64_t sub_1000FC504()
{
  v1 = *(v0 + 240);
  v2 = sub_100572F48();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000CC8C(v0 + 16, v0 + 128, &qword_1006E6BD0);
  sub_1002B0D90(0, 0, v1, &unk_100586F20, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000FC630(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_100101FD4;

  return (sub_10020BCDC)(a1, 1);
}

uint64_t sub_1000FC708(_OWORD *a1)
{
  sub_100009DCC(&qword_1006E6420);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000FC7C4, 0, 0);
}

uint64_t sub_1000FC7C4()
{
  v1 = *(v0 + 240);
  v2 = sub_100572F48();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000CC8C(v0 + 16, v0 + 128, &qword_1006E6BE8);
  sub_1002B0D90(0, 0, v1, &unk_100586EF0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000FC8F0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_100101FD4;

  return (sub_10020D1BC)(a1, 1);
}

uint64_t sub_1000FC9C8(_OWORD *a1)
{
  sub_100009DCC(&qword_1006E6420);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000FCA84, 0, 0);
}

uint64_t sub_1000FCA84()
{
  v1 = *(v0 + 240);
  v2 = sub_100572F48();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000CC8C(v0 + 16, v0 + 128, &qword_1006E6BE0);
  sub_1002B0D90(0, 0, v1, &unk_100586F00, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000FCBB0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_100101FD4;

  return (sub_10020E69C)(a1, 1);
}

uint64_t sub_1000FCC88(_OWORD *a1)
{
  sub_100009DCC(&qword_1006E6420);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000FCD44, 0, 0);
}

uint64_t sub_1000FCD44()
{
  v1 = *(v0 + 240);
  v2 = sub_100572F48();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000CC8C(v0 + 16, v0 + 128, &qword_1006E6BD8);
  sub_1002B0D90(0, 0, v1, &unk_100586F10, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000FCE70(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_100101FD4;

  return (sub_10020FB7C)(a1, 1);
}

uint64_t sub_1000FCF48(_OWORD *a1)
{
  sub_100009DCC(&qword_1006E6420);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000FD004, 0, 0);
}

uint64_t sub_1000FD004()
{
  v1 = *(v0 + 240);
  v2 = sub_100572F48();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000CC8C(v0 + 16, v0 + 128, &qword_1006E6BA8);
  sub_1002B0D90(0, 0, v1, &unk_100586F40, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000FD130(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_100101FD4;

  return (sub_10021105C)(a1, 1);
}

uint64_t sub_1000FD208(_OWORD *a1)
{
  sub_100009DCC(&qword_1006E6420);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000FD2C4, 0, 0);
}

uint64_t sub_1000FD2C4()
{
  v1 = *(v0 + 240);
  v2 = sub_100572F48();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000CC8C(v0 + 16, v0 + 128, &qword_1006E6C08);
  sub_1002B0D90(0, 0, v1, &unk_100586EC0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000FD3F0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_100101FD4;

  return (sub_10021253C)(a1, 1);
}

uint64_t sub_1000FD4C8(_OWORD *a1)
{
  sub_100009DCC(&qword_1006E6420);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000FD584, 0, 0);
}

uint64_t sub_1000FD584()
{
  v1 = *(v0 + 240);
  v2 = sub_100572F48();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000CC8C(v0 + 16, v0 + 128, &qword_1006E6C00);
  sub_1002B0D90(0, 0, v1, &unk_100586ED0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000FD6B0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_100101FD4;

  return (sub_100213A1C)(a1, 1);
}

uint64_t sub_1000FD788(_OWORD *a1)
{
  sub_100009DCC(&qword_1006E6420);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000FD844, 0, 0);
}

uint64_t sub_1000FD844()
{
  v1 = *(v0 + 240);
  v2 = sub_100572F48();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000CC8C(v0 + 16, v0 + 128, &qword_1006E6BF8);
  sub_1002B0D90(0, 0, v1, &unk_100586EE0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000FD970(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_100101FD4;

  return (sub_100214EFC)(a1, 1);
}

uint64_t sub_1000FDA48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[3];
  a2[3] = &type metadata for Actions.RateSong.Context;
  a2[4] = &protocol witness table for Actions.RateSong.Context;
  v6 = swift_allocObject();
  *a2 = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = *(a1 + 1);
  *(v6 + 40) = v5;
}

uint64_t sub_1000FDAD4(_OWORD *a1)
{
  sub_100009DCC(&qword_1006E6420);
  *(v1 + 208) = swift_task_alloc();
  v3 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v3;
  v4 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v4;
  v5 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;

  return _swift_task_switch(sub_1000FDB88, 0, 0);
}

uint64_t sub_1000FDB88()
{
  v1 = *(v0 + 208);
  v2 = sub_100572F48();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v4;
  v5 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v5;
  v6 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v6;
  sub_10000CC8C(v0 + 16, v0 + 112, &qword_1006E6C50);
  sub_1002B0D90(0, 0, v1, &unk_100586E70, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000FDCAC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v6;
  v7 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v7;
  v8 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v8;
  v9 = swift_task_alloc();
  *(v4 + 112) = v9;
  *v9 = v4;
  v9[1] = sub_1000FDD7C;

  return (sub_1002163DC)(a1, 1);
}

uint64_t sub_1000FDD7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000FDE70(_OWORD *a1)
{
  sub_100009DCC(&qword_1006E6420);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000FDF2C, 0, 0);
}

uint64_t sub_1000FDF2C()
{
  v1 = *(v0 + 240);
  v2 = sub_100572F48();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000CC8C(v0 + 16, v0 + 128, &qword_1006E6C30);
  sub_1002B0D90(0, 0, v1, &unk_100586E80, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000FE058(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_100101FD4;

  return (sub_100217858)(a1, 1);
}

uint64_t sub_1000FE130(_OWORD *a1)
{
  sub_100009DCC(&qword_1006E6420);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000FE1EC, 0, 0);
}

uint64_t sub_1000FE1EC()
{
  v1 = *(v0 + 240);
  v2 = sub_100572F48();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000CC8C(v0 + 16, v0 + 128, &qword_1006E6C28);
  sub_1002B0D90(0, 0, v1, &unk_100586E90, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000FE318(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_1000FE3F0;

  return (sub_100218D38)(a1, 1);
}

uint64_t sub_1000FE3F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000FE4E4(_OWORD *a1)
{
  sub_100009DCC(&qword_1006E6420);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000FE5A0, 0, 0);
}

uint64_t sub_1000FE5A0()
{
  v1 = *(v0 + 240);
  v2 = sub_100572F48();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000CC8C(v0 + 16, v0 + 128, &qword_1006E6C20);
  sub_1002B0D90(0, 0, v1, &unk_100586EA0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000FE6CC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_100101FD4;

  return (sub_10021A218)(a1, 1);
}

uint64_t sub_1000FE7A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[5];
  a4[3] = a2;
  a4[4] = a3;
  v8 = swift_allocObject();
  *a4 = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = *(a1 + 1);
  *(v8 + 40) = *(a1 + 3);
  *(v8 + 56) = v7;
}

uint64_t sub_1000FE83C(_OWORD *a1)
{
  sub_100009DCC(&qword_1006E6420);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1000FE8F8, 0, 0);
}

uint64_t sub_1000FE8F8()
{
  v1 = *(v0 + 240);
  v2 = sub_100572F48();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_10000CC8C(v0 + 16, v0 + 128, &qword_1006E6C18);
  sub_1002B0D90(0, 0, v1, &unk_100586EB0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000FEA24(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_100101FD4;

  return (sub_10021B6F8)(a1, 1);
}

uint64_t sub_1000FEBBC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000116F0;

  return sub_1000FBDBC(v0 + 16);
}

uint64_t sub_1000FEC5C()
{
  v1 = *(v0 + 64);
  v7[2] = *(v0 + 48);
  v7[3] = v1;
  v7[4] = *(v0 + 80);
  v2 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v2;
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 128);
  v10 = *(v0 + 112);
  v11 = v5;
  v12 = *(v0 + 144);
  v8 = v4;
  v9 = v3;
  return v4(v7);
}

uint64_t sub_1000FECC0()
{
  v1 = *(v0 + 16);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000FEE14()
{
  v2 = *(sub_100009DCC(&qword_1006E6B98) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000116F0;

  return sub_1000F58CC(v0 + v3);
}

uint64_t sub_1000FEFC8(uint64_t *a1)
{
  v2 = sub_100009DCC(a1);
  v3 = *(v2 - 8);
  return (*(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + *(v2 + 40)))(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
}

uint64_t sub_1000FF034(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(sub_100009DCC(a1) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = sub_10056D818();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t sub_1000FF1CC()
{
  v2 = *(sub_100009DCC(&qword_1006E6B90) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000116F0;

  return sub_1000F5668(v0 + v3);
}

uint64_t sub_1000FF2A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000FF33C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000116F0;

  return sub_1000FCF48((v0 + 16));
}

uint64_t sub_1000FF410()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000116F0;

  return sub_1000FC188((v0 + 16));
}

uint64_t sub_1000FF4E4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000116F0;

  return sub_1000FC448((v0 + 16));
}

uint64_t sub_1000FF5BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000116F0;

  return sub_1000FCC88((v0 + 16));
}

uint64_t sub_1000FF690()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000116F0;

  return sub_1000FC9C8((v0 + 16));
}

uint64_t sub_1000FF764()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000116F0;

  return sub_1000FC708((v0 + 16));
}

uint64_t sub_1000FF80C()
{
  v1 = *(sub_100009DCC(&qword_1006E6BF0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_100572118();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + v3))
  {
  }

  v7 = v0 + v6;
  swift_unknownObjectWeakDestroy();
  v8 = *(v0 + v6 + 48);
  if (v8 != 255)
  {
    sub_1000FF9AC(*(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), v8);
  }

  if (*(v7 + 64))
  {
  }

  if (*(v7 + 80))
  {
  }

  return swift_deallocObject();
}

void sub_1000FF9AC(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 == 2)
  {
    swift_unknownObjectRelease();
  }

  else if (a6 <= 1u)
  {
  }
}

uint64_t sub_1000FFA2C()
{
  v2 = *(sub_100009DCC(&qword_1006E6BF0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1000116F0;

  return sub_100126774(v0 + v3, v6, v8, v9, v0 + v7);
}

uint64_t sub_1000FFB9C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000116F0;

  return sub_1000FD788((v0 + 16));
}

uint64_t sub_1000FFC3C()
{
  v1 = sub_100572118();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_1000FF9AC(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000FFD18()
{
  v2 = *(sub_100572118() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000116F0;

  return sub_1001281E8(v0 + v3, v0 + v4);
}

uint64_t sub_1000FFE4C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000116F0;

  return sub_1000FD4C8((v0 + 16));
}

uint64_t sub_1000FFEF4()
{
  v1 = sub_100572118();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_1000FF9AC(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10010000C()
{
  v2 = *(sub_100572118() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000116F0;

  return sub_10012A694(v5, v0 + v3, v0 + v4);
}

uint64_t sub_100100144()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000116F0;

  return sub_1000FD208((v0 + 16));
}

uint64_t sub_100100218()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000116F0;

  return sub_1000FE83C((v0 + 16));
}

uint64_t sub_1001002EC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000116F0;

  return sub_1000FE4E4((v0 + 16));
}

uint64_t sub_1001003C4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000CB98;

  return sub_1000FE130((v0 + 16));
}

uint64_t sub_100100498()
{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v7[2] = *(v0 + 48);
  v13 = *(v0 + 120);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v11 = *(v0 + 88);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v12 = v4;
  v8 = v2;
  v9 = v3;
  v10 = v5;
  return v3(v7);
}

uint64_t sub_100100500()
{

  return swift_deallocObject();
}

uint64_t sub_100100560()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000116F0;

  return sub_1000FDE70((v0 + 16));
}

_OWORD *sub_100100600(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_100100618()
{

  return swift_deallocObject();
}

uint64_t sub_10010066C()
{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v13 = *(v0 + 104);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v11 = *(v0 + 72);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v12 = v4;
  v8 = v2;
  v9 = v3;
  v10 = v5;
  return v3(v7);
}

uint64_t sub_1001006CC()
{

  return swift_deallocObject();
}

uint64_t sub_100100724()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000116F0;

  return sub_1000FDAD4((v0 + 16));
}

uint64_t sub_1001007E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009DCC(&qword_1006E6B70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1001008B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100009DCC(&qword_1006E6B70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100100968()
{
  type metadata accessor for PlaybackController();
  if (v0 <= 0x3F)
  {
    sub_100100A1C();
    if (v1 <= 0x3F)
    {
      sub_100100A74();
      if (v2 <= 0x3F)
      {
        sub_100100AC4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100100A1C()
{
  if (!qword_1006E6CC0)
  {
    type metadata accessor for PlaybackIntentDescriptor.IntentType(255);
    v0 = sub_100573C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1006E6CC0);
    }
  }
}

void sub_100100A74()
{
  if (!qword_1006E6CC8)
  {
    v0 = sub_100573C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1006E6CC8);
    }
  }
}

void sub_100100AC4()
{
  if (!qword_1006E6CD0)
  {
    sub_100010324(&unk_1006E6CD8);
    v0 = sub_100573C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1006E6CD0);
    }
  }
}

uint64_t sub_100100B38()
{
  v1 = *(sub_100009DCC(&qword_1006E6D10) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context() + 24);
  v4 = sub_100572128();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100100CC4(uint64_t a1)
{
  sub_100009DCC(&qword_1006E6D10);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return sub_1000F5F04(a1);
}

uint64_t sub_100100DC0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100100E20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_1000FDCAC(a1, v4, v5, (v1 + 32));
}

uint64_t sub_100100EE4()
{

  return swift_deallocObject();
}

uint64_t sub_100100F28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_1000FE058(a1, v4, v5, (v1 + 32));
}

uint64_t sub_100100FF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_1000FE318(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001010B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_1000FE6CC(a1, v4, v5, (v1 + 32));
}

uint64_t sub_100101178(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_1000FEA24(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10010123C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_1000FD3F0(a1, v4, v5, (v1 + 32));
}

uint64_t sub_100101300(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_1000FD6B0(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001013C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_1000FD970(a1, v4, v5, (v1 + 32));
}

uint64_t sub_100101488(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_1000FC8F0(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10010154C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_1000FCBB0(a1, v4, v5, (v1 + 32));
}

uint64_t sub_100101610(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_1000FCE70(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1001016D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_1000FC630(a1, v4, v5, (v1 + 32));
}

uint64_t sub_100101798(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_1000FC370(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10010185C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001018C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_1000FD130(a1, v4, v5, (v1 + 32));
}

uint64_t sub_100101988()
{

  return swift_deallocObject();
}

uint64_t sub_1001019F8(uint64_t a1)
{
  sub_100009DCC(&qword_1006E6B90);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return sub_1000F5D94(a1);
}

uint64_t sub_100101B1C(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(sub_100009DCC(a1) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  v7 = sub_10056D818();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t sub_100101CBC(uint64_t a1)
{
  sub_100009DCC(&qword_1006E6B98);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return sub_1000F5E4C(a1);
}

uint64_t sub_100101DB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100101E20()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 32);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100101EA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_1000FBFB4(a1, v4, v5, v1 + 32);
}

uint64_t sub_100101F64()
{
  v1 = *(v0 + 16);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

id sub_100101FC4(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

uint64_t Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>, uint64_t a10)
{
  v37 = a8;
  v38 = a4;
  v40 = a3;
  v41 = a6;
  v39 = a5;
  v44 = a2;
  v36[0] = a1;
  v42 = a9;
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(a1);
  v43 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  (*(v12 + 16))(v36 - v15);
  v17 = *(v12 + 80);
  v18 = (v17 + 40) & ~v17;
  v36[1] = v17 | 7;
  v19 = v13 + 7;
  v20 = (v13 + 7 + v18) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = a7;
  *(v21 + 3) = a8;
  *(v21 + 4) = a10;
  v22 = *(v12 + 32);
  v22(v21 + v18, v16, a7);
  v23 = v43;
  *(v21 + v20) = v44;
  v22(v23, v36[0], a7);
  v24 = (v17 + 56) & ~v17;
  v25 = (v19 + v24) & 0xFFFFFFFFFFFFFFF8;
  v36[0] = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v27 = (((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v26 + 80) + 96) & ~*(v26 + 80);
  v28 = swift_allocObject();
  v29 = v37;
  v30 = v38;
  *(v28 + 2) = a7;
  *(v28 + 3) = v29;
  *(v28 + 4) = a10;
  *(v28 + 5) = v30;
  v31 = v39;
  *(v28 + 6) = v39;
  v22(v28 + v24, v43, a7);
  *(v28 + v25) = v44;
  sub_1000FF9D0(v40, v28 + v36[0]);
  sub_100019B40(v41, v28 + v27, &qword_1006E6B80);
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = &unk_100586FA0;
  *(v33 + 24) = v32;
  swift_unknownObjectRetain();

  v35 = v42;
  *v42 = sub_100102C24;
  v35[1] = v21;
  v35[2] = &unk_100586F90;
  v35[3] = v28;
  v35[4] = &unk_100586FB0;
  v35[5] = v33;
  return result;
}

uint64_t static Actions.AddToLibrary.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 0;
  *(a2 + 56) = sub_1001024FC;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100586FB8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100586FC0;
  *(a2 + 104) = 0;
}

uint64_t sub_100102524(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 16) + **(a2 + 16));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10000CB98;

  return v5();
}

uint64_t sub_10010260C(uint64_t a1)
{
  v4 = (*(a1 + 32) + **(a1 + 32));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000116F0;

  return v4();
}

uint64_t sub_1001026F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 0;
  *(a2 + 56) = sub_1001024FC;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100586FB8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100586FC0;
  *(a2 + 104) = 0;
}

uint64_t sub_1001027AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v37 = a2;
  v33 = sub_1005717A8();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009DCC(&qword_1006E6D18);
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_100009DCC(&qword_1006E6D78);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v30 - v14;
  v16 = *(a3 - 8);
  __chkstk_darwin(v13);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100571B78();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v16 + 16);
  v34 = a1;
  v23(v18, a1, a3);
  v24 = swift_dynamicCast();
  v25 = *(v20 + 56);
  if ((v24 & 1) == 0)
  {
    v25(v15, 1, 1, v19);
    sub_10001036C(v15, &qword_1006E6D78);
    goto LABEL_5;
  }

  v25(v15, 0, 1, v19);
  (*(v20 + 32))(v22, v15, v19);
  v26 = Album.childrenAddStatus(_:)(v37);
  (*(v20 + 8))(v22, v19);
  if (v26 != 1)
  {
LABEL_5:
    sub_10056D4C8();
    v28 = v33;
    sub_100571658();
    (*(v35 + 8))(v8, v28);
    v27 = sub_100103294();
    (*(v31 + 8))(v11, v32);
    return v27;
  }

  return 0;
}

uint64_t sub_100102B90()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t Album.childrenAddStatus(_:)(uint64_t a1)
{
  v40 = a1;
  v39 = sub_1005717A8();
  v1 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100009DCC(&qword_1006E6D18);
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v28 - v4;
  v35 = sub_100571C48();
  v5 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009DCC(&qword_1006E6D20);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = sub_100009DCC(&qword_1006E6D28);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  v13 = sub_100009DCC(&qword_1006E6D30);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - v15;
  sub_100571B58();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10001036C(v12, &qword_1006E6D28);
    return 0;
  }

  (*(v14 + 32))(v16, v12, v13);
  sub_1001093BC(&qword_1006E6D38);
  sub_1005731B8();
  sub_100573208();
  if (v41[0] == v41[4])
  {
    (*(v14 + 8))(v16, v13);
    return 0;
  }

  v29 = v14;
  (*(v14 + 16))(v9, v16, v13);
  v18 = *(v7 + 36);
  v28 = v16;
  sub_1005731B8();
  sub_100573208();
  if (*&v9[v18] == v41[0])
  {
LABEL_11:
    sub_10001036C(v9, &qword_1006E6D20);
    (*(v29 + 8))(v28, v13);
    return 2;
  }

  else
  {
    v32 = (v5 + 8);
    v33 = (v5 + 16);
    v30 = (v3 + 8);
    v31 = (v1 + 8);
    v19 = v34;
    while (1)
    {
      v20 = sub_1005732E8();
      v21 = v35;
      (*v33)(v19);
      v20(v41, 0);
      sub_100573218();
      v22 = v38;
      sub_10056D4C8();
      v23 = v36;
      v24 = v39;
      sub_100571658();
      (*v32)(v19, v21);
      (*v31)(v22, v24);
      v25 = sub_100103294();
      v27 = v26;
      (*v30)(v23, v37);
      if (v27 == 1)
      {
        break;
      }

      sub_1000CA864(v25, v27);
      sub_100573208();
      if (*&v9[v18] == v41[0])
      {
        goto LABEL_11;
      }
    }

    sub_10001036C(v9, &qword_1006E6D20);
    (*(v29 + 8))(v28, v13);
    return 1;
  }
}

uint64_t sub_100103294()
{
  v1 = v0;
  v2 = sub_1005717B8();
  v28 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v27 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v27 - v5;
  v7 = sub_100571798();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100009DCC(&qword_1006E6D18);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  (*(v15 + 16))(&v27 - v16, v1, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v8 + 32))(v13, v17, v7);
    (*(v8 + 16))(v11, v13, v7);
    v19 = (*(v8 + 88))(v11, v7);
    if (v19 == enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
    {
      (*(v8 + 96))(v11, v7);
      v20 = v28;
      (*(v28 + 32))(v6, v11, v2);
      v21 = v27;
      (*(v20 + 16))(v27, v6, v2);
      v22 = (*(v20 + 88))(v21, v2);
      if (v22 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) && v22 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:) && v22 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
      {
        v29 = 0;
        v30 = 0xE000000000000000;
        sub_100573ED8(24);

        v29 = 0xD000000000000016;
        v30 = 0x80000001005ACCB0;
        sub_10010936C(&qword_1006E6D68);
        v31._countAndFlagsBits = sub_100574408();
        sub_100572A98(v31);

        v23 = v29;
        v24 = *(v20 + 8);
        v24(v6, v2);
        (*(v8 + 8))(v13, v7);
        v24(v21, v2);
        return v23;
      }

      (*(v20 + 8))(v6, v2);
      (*(v8 + 8))(v13, v7);
      return 0;
    }

    if (v19 == enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:))
    {
      goto LABEL_10;
    }

    if (v19 == enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:))
    {
      (*(v8 + 8))(v13, v7);
      return 0xD000000000000012;
    }

    else
    {
      if (v19 == enum case for MusicLibrary.AddAction.UnsupportedReason.networkRequired(_:))
      {
LABEL_10:
        (*(v8 + 8))(v13, v7);
        return 0xD000000000000010;
      }

      v26 = *(v8 + 8);
      v26(v13, v7);
      v26(v11, v7);
      return 0x206E776F6E6B6E55;
    }
  }

  else
  {
    if (v18 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      return 0;
    }

    result = sub_1005740F8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001038B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[86] = v18;
  v8[85] = a8;
  v8[84] = a7;
  v8[83] = a6;
  v8[82] = a5;
  v8[81] = a4;
  v8[80] = a3;
  v8[79] = a2;
  v8[78] = a1;
  sub_100009DCC(&qword_1006E6428);
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v8[89] = swift_task_alloc();
  v8[90] = swift_task_alloc();
  v8[91] = swift_task_alloc();
  v8[92] = swift_task_alloc();
  v8[93] = swift_task_alloc();
  v8[94] = swift_task_alloc();
  v8[95] = type metadata accessor for MetricsEvent.Click(0);
  v8[96] = swift_task_alloc();
  v8[97] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v8[98] = swift_task_alloc();
  v8[99] = swift_task_alloc();
  v8[100] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B80);
  v8[101] = swift_task_alloc();
  v10 = type metadata accessor for Actions.MetricsReportingContext();
  v8[102] = v10;
  v8[103] = *(v10 - 8);
  v8[104] = swift_task_alloc();
  v8[105] = type metadata accessor for Notice.Variant(0);
  v8[106] = swift_task_alloc();
  v11 = sub_1005717B8();
  v8[107] = v11;
  v8[108] = *(v11 - 8);
  v8[109] = swift_task_alloc();
  v8[110] = sub_100009DCC(&qword_1006E6D70);
  v8[111] = swift_task_alloc();
  v8[112] = swift_task_alloc();
  v12 = sub_1005717A8();
  v8[113] = v12;
  v8[114] = *(v12 - 8);
  v8[115] = swift_task_alloc();
  v13 = sub_100009DCC(&qword_1006E6D18);
  v8[116] = v13;
  v8[117] = *(v13 - 8);
  v8[118] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6D28);
  v8[119] = swift_task_alloc();
  v14 = sub_100009DCC(&qword_1006E6D30);
  v8[120] = v14;
  v8[121] = *(v14 - 8);
  v8[122] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6D78);
  v8[123] = swift_task_alloc();
  v8[124] = *(a7 - 8);
  v8[125] = swift_task_alloc();
  v15 = sub_100571B78();
  v8[126] = v15;
  v8[127] = *(v15 - 8);
  v8[128] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6D80);
  v8[129] = swift_task_alloc();
  v8[130] = swift_task_alloc();
  v8[131] = swift_task_alloc();
  v8[132] = swift_task_alloc();
  v8[133] = swift_task_alloc();
  v8[134] = swift_task_alloc();
  v8[135] = swift_task_alloc();

  return _swift_task_switch(sub_100103E8C, 0, 0);
}

uint64_t sub_100103E8C()
{
  v101 = v0;
  if (*(v0 + 624))
  {
    v1 = *(v0 + 632);
    *(v0 + 1088) = swift_getObjectType();
    *(v0 + 1096) = *(v1 + 8);
    *(v0 + 1104) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0xE86A000000000000;
    sub_100572F08();
    *(v0 + 1112) = sub_100572EF8();
    v2 = sub_100572E78();
    v4 = v3;
    v5 = sub_100104C64;
LABEL_3:
    v6 = v5;
    v7 = v2;
    v8 = v4;
LABEL_4:

    return _swift_task_switch(v6, v7, v8);
  }

  if (qword_1006E4D40 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v9 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v9;
  v10 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v10;
  v11 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v11;
  v12 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v12;
  sub_100108D2C(v0 + 16);
  if ((*(v0 + 25) & 2) != 0)
  {
    v14 = *(v0 + 1016);
    v15 = *(v0 + 1000);
    v16 = *(v0 + 992);
    v17 = *(v0 + 672);
    v18 = *(v0 + 640);
    v99 = *(*(v0 + 864) + 56);
    v99(*(v0 + 1080), 1, 1, *(v0 + 856));
    v19 = *(v16 + 16);
    *(v0 + 1120) = v19;
    *(v0 + 1128) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v15, v18, v17);
    v20 = swift_dynamicCast();
    v21 = *(v14 + 56);
    if (v20)
    {
      v22 = *(v0 + 1024);
      v23 = *(v0 + 1016);
      v24 = *(v0 + 1008);
      v25 = *(v0 + 984);
      v26 = *(v0 + 648);
      v21(v25, 0, 1, v24);
      (*(v23 + 32))(v22, v25, v24);
      if (Album.childrenAddStatus(_:)(v26) != 1)
      {
        (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
        goto LABEL_20;
      }

      v27 = *(v0 + 968);
      v28 = *(v0 + 960);
      v29 = *(v0 + 952);
      sub_100571B58();
      if ((*(v27 + 48))(v29, 1, v28) != 1)
      {
        v78 = *(v0 + 976);
        v79 = *(v0 + 648);
        (*(*(v0 + 968) + 32))(v78, *(v0 + 952), *(v0 + 960));
        v100[0] = _swiftEmptyArrayStorage;

        LOBYTE(v78) = sub_100108D80(v78, v79, v100);

        if (v78)
        {
          v80 = *(v0 + 1024);
          v81 = *(v0 + 1016);
          v82 = *(v0 + 1008);
          (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
          (*(v81 + 8))(v80, v82);
        }

        else
        {
          if (*(v100[0] + 16))
          {
            (*(*(v0 + 864) + 16))(*(v0 + 1072), v100[0] + ((*(*(v0 + 864) + 80) + 32) & ~*(*(v0 + 864) + 80)), *(v0 + 856));
            v83 = 0;
          }

          else
          {
            v83 = 1;
          }

          v84 = *(v0 + 1080);
          v85 = *(v0 + 1072);
          v86 = *(v0 + 1024);
          v87 = *(v0 + 1016);
          v88 = *(v0 + 1008);
          v89 = *(v0 + 856);
          (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
          (*(v87 + 8))(v86, v88);
          sub_10001036C(v84, &qword_1006E6D80);
          v99(v85, v83, 1, v89);
          sub_100019B40(v85, v84, &qword_1006E6D80);
        }

LABEL_21:
        v37 = *(v0 + 1080);
        v38 = *(v0 + 1056);
        v39 = *(v0 + 896);
        v40 = *(v0 + 880);
        v41 = *(v0 + 864);
        v42 = *(v0 + 856);
        v96 = *(v41 + 104);
        v96(v38, enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:), v42);
        v99(v38, 0, 1, v42);
        v98 = v40;
        v43 = *(v40 + 48);
        sub_10000CC8C(v37, v39, &qword_1006E6D80);
        sub_10000CC8C(v38, v39 + v43, &qword_1006E6D80);
        v44 = *(v41 + 48);
        if (v44(v39, 1, v42) == 1)
        {
          v45 = *(v0 + 856);
          sub_10001036C(*(v0 + 1056), &qword_1006E6D80);
          if (v44(v39 + v43, 1, v45) == 1)
          {
            sub_10001036C(*(v0 + 896), &qword_1006E6D80);
LABEL_35:
            *(v0 + 1136) = sub_100572F08();
            *(v0 + 1144) = sub_100572EF8();
            v69 = sub_100572E78();
            v8 = v70;
            *(v0 + 1152) = v69;
            *(v0 + 1160) = v70;
            v6 = sub_100105A70;
            v7 = v69;
            goto LABEL_4;
          }
        }

        else
        {
          v46 = *(v0 + 856);
          sub_10000CC8C(*(v0 + 896), *(v0 + 1048), &qword_1006E6D80);
          v47 = v44(v39 + v43, 1, v46);
          v48 = *(v0 + 1056);
          v49 = *(v0 + 1048);
          if (v47 != 1)
          {
            v94 = v44;
            v92 = *(v0 + 896);
            v65 = *(v0 + 872);
            v66 = *(v0 + 864);
            v67 = *(v0 + 856);
            (*(v66 + 32))(v65, v39 + v43, v67);
            sub_10010936C(&qword_1006E6D90);
            v91 = sub_1005727E8();
            v68 = *(v66 + 8);
            v68(v65, v67);
            sub_10001036C(v48, &qword_1006E6D80);
            v68(v49, v67);
            sub_10001036C(v92, &qword_1006E6D80);
            if (v91)
            {
              goto LABEL_35;
            }

LABEL_27:
            v52 = *(v0 + 1080);
            v53 = *(v0 + 1040);
            v54 = *(v0 + 888);
            v55 = *(v0 + 856);
            v96(v53, enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:), v55);
            v99(v53, 0, 1, v55);
            v56 = *(v98 + 48);
            sub_10000CC8C(v52, v54, &qword_1006E6D80);
            sub_10000CC8C(v53, v54 + v56, &qword_1006E6D80);
            if (v94(v54, 1, v55) == 1)
            {
              v57 = *(v0 + 856);
              sub_10001036C(*(v0 + 1040), &qword_1006E6D80);
              if (v94(v54 + v56, 1, v57) == 1)
              {
                sub_10001036C(*(v0 + 888), &qword_1006E6D80);
LABEL_37:
                *(v0 + 1192) = sub_100572F08();
                *(v0 + 1200) = sub_100572EF8();
                v2 = sub_100572E78();
                v4 = v77;
                v5 = sub_100105D48;
                goto LABEL_3;
              }
            }

            else
            {
              v58 = *(v0 + 856);
              sub_10000CC8C(*(v0 + 888), *(v0 + 1032), &qword_1006E6D80);
              v59 = v94(v54 + v56, 1, v58);
              v60 = *(v0 + 1040);
              v61 = *(v0 + 1032);
              if (v59 != 1)
              {
                v71 = *(v0 + 888);
                v72 = *(v0 + 872);
                v73 = *(v0 + 864);
                v74 = *(v0 + 856);
                (*(v73 + 32))(v72, v54 + v56, v74);
                sub_10010936C(&qword_1006E6D90);
                v75 = sub_1005727E8();
                v76 = *(v73 + 8);
                v76(v72, v74);
                sub_10001036C(v60, &qword_1006E6D80);
                v76(v61, v74);
                sub_10001036C(v71, &qword_1006E6D80);
                if (v75)
                {
                  goto LABEL_37;
                }

LABEL_33:
                swift_storeEnumTagMultiPayload();
                *(v0 + 1216) = sub_100572F08();
                *(v0 + 1224) = sub_100572EF8();
                v2 = sub_100572E78();
                v4 = v64;
                v5 = sub_100106384;
                goto LABEL_3;
              }

              v62 = *(v0 + 864);
              v63 = *(v0 + 856);
              sub_10001036C(*(v0 + 1040), &qword_1006E6D80);
              (*(v62 + 8))(v61, v63);
            }

            sub_10001036C(*(v0 + 888), &qword_1006E6D70);
            goto LABEL_33;
          }

          v50 = *(v0 + 864);
          v51 = *(v0 + 856);
          sub_10001036C(*(v0 + 1056), &qword_1006E6D80);
          (*(v50 + 8))(v49, v51);
        }

        v94 = v44;
        sub_10001036C(*(v0 + 896), &qword_1006E6D70);
        goto LABEL_27;
      }

      v30 = *(v0 + 952);
      (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
      v31 = &qword_1006E6D28;
    }

    else
    {
      v30 = *(v0 + 984);
      v21(v30, 1, 1, *(v0 + 1008));
      v31 = &qword_1006E6D78;
    }

    sub_10001036C(v30, v31);
LABEL_20:
    v93 = *(v0 + 1064);
    v32 = *(v0 + 944);
    v33 = *(v0 + 936);
    v95 = *(v0 + 928);
    v97 = *(v0 + 1080);
    v34 = *(v0 + 920);
    v35 = *(v0 + 912);
    v36 = *(v0 + 904);
    sub_10056D4C8();
    sub_100571658();
    (*(v35 + 8))(v34, v36);
    MusicLibrary.SupportedStatus<>.unaddableReason.getter(v93);
    (*(v33 + 8))(v32, v95);
    sub_10001036C(v97, &qword_1006E6D80);
    sub_100019B40(v93, v97, &qword_1006E6D80);
    goto LABEL_21;
  }

  *(v0 + 600) = 0;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0u;
  *(v0 + 608) = -1;
  _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 568);
  sub_1001090C8(v0 + 568);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100104C64()
{
  v1 = v0[137];
  v2 = v0[136];
  v3 = v0[79];

  v1(0, v2, v3);

  return _swift_task_switch(sub_100104D00, 0, 0);
}

uint64_t sub_100104D00()
{
  v99 = v0;
  if (qword_1006E4D40 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  v2 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v2;
  v3 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v3;
  v4 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v4;
  sub_100108D2C(v0 + 16);
  if ((*(v0 + 25) & 2) == 0)
  {
    *(v0 + 600) = 0;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0u;
    *(v0 + 608) = -1;
    _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 568);
    sub_1001090C8(v0 + 568);

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v0 + 1016);
  v8 = *(v0 + 1000);
  v9 = *(v0 + 992);
  v10 = *(v0 + 672);
  v11 = *(v0 + 640);
  v97 = *(*(v0 + 864) + 56);
  v97(*(v0 + 1080), 1, 1, *(v0 + 856));
  v12 = *(v9 + 16);
  *(v0 + 1120) = v12;
  *(v0 + 1128) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v8, v11, v10);
  v13 = swift_dynamicCast();
  v14 = *(v7 + 56);
  if ((v13 & 1) == 0)
  {
    v23 = *(v0 + 984);
    v14(v23, 1, 1, *(v0 + 1008));
    v24 = &qword_1006E6D78;
    goto LABEL_12;
  }

  v15 = *(v0 + 1024);
  v16 = *(v0 + 1016);
  v17 = *(v0 + 1008);
  v18 = *(v0 + 984);
  v19 = *(v0 + 648);
  v14(v18, 0, 1, v17);
  (*(v16 + 32))(v15, v18, v17);
  if (Album.childrenAddStatus(_:)(v19) != 1)
  {
    (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
    goto LABEL_14;
  }

  v20 = *(v0 + 968);
  v21 = *(v0 + 960);
  v22 = *(v0 + 952);
  sub_100571B58();
  if ((*(v20 + 48))(v22, 1, v21) == 1)
  {
    v23 = *(v0 + 952);
    (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
    v24 = &qword_1006E6D28;
LABEL_12:
    sub_10001036C(v23, v24);
LABEL_14:
    v91 = *(v0 + 1064);
    v25 = *(v0 + 944);
    v26 = *(v0 + 936);
    v93 = *(v0 + 928);
    v95 = *(v0 + 1080);
    v27 = *(v0 + 920);
    v28 = *(v0 + 912);
    v29 = *(v0 + 904);
    sub_10056D4C8();
    sub_100571658();
    (*(v28 + 8))(v27, v29);
    MusicLibrary.SupportedStatus<>.unaddableReason.getter(v91);
    (*(v26 + 8))(v25, v93);
    sub_10001036C(v95, &qword_1006E6D80);
    sub_100019B40(v91, v95, &qword_1006E6D80);
    goto LABEL_15;
  }

  v77 = *(v0 + 976);
  v78 = *(v0 + 648);
  (*(*(v0 + 968) + 32))(v77, *(v0 + 952), *(v0 + 960));
  v98[0] = _swiftEmptyArrayStorage;

  LOBYTE(v77) = sub_100108D80(v77, v78, v98);

  if (v77)
  {
    v79 = *(v0 + 1024);
    v80 = *(v0 + 1016);
    v81 = *(v0 + 1008);
    (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
    (*(v80 + 8))(v79, v81);
  }

  else
  {
    if (*(v98[0] + 16))
    {
      (*(*(v0 + 864) + 16))(*(v0 + 1072), v98[0] + ((*(*(v0 + 864) + 80) + 32) & ~*(*(v0 + 864) + 80)), *(v0 + 856));
      v82 = 0;
    }

    else
    {
      v82 = 1;
    }

    v83 = *(v0 + 1080);
    v84 = *(v0 + 1072);
    v85 = *(v0 + 1024);
    v86 = *(v0 + 1016);
    v87 = *(v0 + 1008);
    v88 = *(v0 + 856);
    (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
    (*(v86 + 8))(v85, v87);
    sub_10001036C(v83, &qword_1006E6D80);
    v97(v84, v82, 1, v88);
    sub_100019B40(v84, v83, &qword_1006E6D80);
  }

LABEL_15:
  v30 = *(v0 + 1080);
  v31 = *(v0 + 1056);
  v32 = *(v0 + 896);
  v33 = *(v0 + 880);
  v34 = *(v0 + 864);
  v35 = *(v0 + 856);
  v94 = *(v34 + 104);
  v94(v31, enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:), v35);
  v97(v31, 0, 1, v35);
  v96 = v33;
  v36 = *(v33 + 48);
  sub_10000CC8C(v30, v32, &qword_1006E6D80);
  sub_10000CC8C(v31, v32 + v36, &qword_1006E6D80);
  v37 = *(v34 + 48);
  if (v37(v32, 1, v35) != 1)
  {
    v39 = *(v0 + 856);
    sub_10000CC8C(*(v0 + 896), *(v0 + 1048), &qword_1006E6D80);
    v40 = v37(v32 + v36, 1, v39);
    v41 = *(v0 + 1056);
    v42 = *(v0 + 1048);
    if (v40 != 1)
    {
      v92 = v37;
      v90 = *(v0 + 896);
      v61 = *(v0 + 872);
      v62 = *(v0 + 864);
      v63 = *(v0 + 856);
      (*(v62 + 32))(v61, v32 + v36, v63);
      sub_10010936C(&qword_1006E6D90);
      v89 = sub_1005727E8();
      v64 = *(v62 + 8);
      v64(v61, v63);
      sub_10001036C(v41, &qword_1006E6D80);
      v64(v42, v63);
      sub_10001036C(v90, &qword_1006E6D80);
      if (v89)
      {
        goto LABEL_29;
      }

LABEL_21:
      v45 = *(v0 + 1080);
      v46 = *(v0 + 1040);
      v47 = *(v0 + 888);
      v48 = *(v0 + 856);
      v94(v46, enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:), v48);
      v97(v46, 0, 1, v48);
      v49 = *(v96 + 48);
      sub_10000CC8C(v45, v47, &qword_1006E6D80);
      sub_10000CC8C(v46, v47 + v49, &qword_1006E6D80);
      if (v92(v47, 1, v48) == 1)
      {
        v50 = *(v0 + 856);
        sub_10001036C(*(v0 + 1040), &qword_1006E6D80);
        if (v92(v47 + v49, 1, v50) == 1)
        {
          sub_10001036C(*(v0 + 888), &qword_1006E6D80);
LABEL_31:
          *(v0 + 1192) = sub_100572F08();
          *(v0 + 1200) = sub_100572EF8();
          v57 = sub_100572E78();
          v59 = v76;
          v60 = sub_100105D48;
          goto LABEL_32;
        }
      }

      else
      {
        v51 = *(v0 + 856);
        sub_10000CC8C(*(v0 + 888), *(v0 + 1032), &qword_1006E6D80);
        v52 = v92(v47 + v49, 1, v51);
        v53 = *(v0 + 1040);
        v54 = *(v0 + 1032);
        if (v52 != 1)
        {
          v70 = *(v0 + 888);
          v71 = *(v0 + 872);
          v72 = *(v0 + 864);
          v73 = *(v0 + 856);
          (*(v72 + 32))(v71, v47 + v49, v73);
          sub_10010936C(&qword_1006E6D90);
          v74 = sub_1005727E8();
          v75 = *(v72 + 8);
          v75(v71, v73);
          sub_10001036C(v53, &qword_1006E6D80);
          v75(v54, v73);
          sub_10001036C(v70, &qword_1006E6D80);
          if (v74)
          {
            goto LABEL_31;
          }

LABEL_27:
          swift_storeEnumTagMultiPayload();
          *(v0 + 1216) = sub_100572F08();
          *(v0 + 1224) = sub_100572EF8();
          v57 = sub_100572E78();
          v59 = v58;
          v60 = sub_100106384;
LABEL_32:
          v68 = v60;
          v69 = v57;
          v67 = v59;
          goto LABEL_33;
        }

        v55 = *(v0 + 864);
        v56 = *(v0 + 856);
        sub_10001036C(*(v0 + 1040), &qword_1006E6D80);
        (*(v55 + 8))(v54, v56);
      }

      sub_10001036C(*(v0 + 888), &qword_1006E6D70);
      goto LABEL_27;
    }

    v43 = *(v0 + 864);
    v44 = *(v0 + 856);
    sub_10001036C(*(v0 + 1056), &qword_1006E6D80);
    (*(v43 + 8))(v42, v44);
LABEL_20:
    v92 = v37;
    sub_10001036C(*(v0 + 896), &qword_1006E6D70);
    goto LABEL_21;
  }

  v38 = *(v0 + 856);
  sub_10001036C(*(v0 + 1056), &qword_1006E6D80);
  if (v37(v32 + v36, 1, v38) != 1)
  {
    goto LABEL_20;
  }

  sub_10001036C(*(v0 + 896), &qword_1006E6D80);
LABEL_29:
  *(v0 + 1136) = sub_100572F08();
  *(v0 + 1144) = sub_100572EF8();
  v65 = sub_100572E78();
  v67 = v66;
  *(v0 + 1152) = v65;
  *(v0 + 1160) = v66;
  v68 = sub_100105A70;
  v69 = v65;
LABEL_33:

  return _swift_task_switch(v68, v69, v67);
}

uint64_t sub_100105A70()
{
  v1 = v0[82];
  v2 = sub_100572EF8();
  v0[146] = v2;
  v3 = swift_task_alloc();
  v0[147] = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  v0[148] = v4;
  *v4 = v0;
  v4[1] = sub_100105B80;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 609, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001005ACD10, sub_1001093B0, v3, &type metadata for Bool);
}

uint64_t sub_100105B80()
{
  v1 = *v0;

  v2 = *(v1 + 1160);
  v3 = *(v1 + 1152);

  return _swift_task_switch(sub_100105CE0, v3, v2);
}

uint64_t sub_100105CE0()
{

  return _swift_task_switch(sub_100109430, 0, 0);
}

uint64_t sub_100105D48()
{

  sub_1001CAB6C(0, v0 + 448);

  return _swift_task_switch(sub_100105DBC, 0, 0);
}

uint64_t sub_100105DBC()
{
  *(v0 + 1208) = sub_100572EF8();
  v2 = sub_100572E78();

  return _swift_task_switch(sub_100105E48, v2, v1);
}

uint64_t sub_100105E48()
{
  v1 = *(v0 + 656);

  v2 = sub_10017F500(v0 + 448, 0, 1);
  v3 = v2;
  v4 = *(v0 + 480);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_1006E4FE8;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_10056DF88();
    sub_10000C49C(v7, qword_1006ECA00);
    v8 = sub_10056DF68();
    v9 = sub_100573448();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 656);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 552) = sub_1002EC584;
    *(v0 + 560) = 0;
    *(v0 + 520) = _NSConcreteStackBlock;
    *(v0 + 528) = 1107296256;
    *(v0 + 536) = sub_1002ED584;
    *(v0 + 544) = &unk_100688D18;
    v13 = _Block_copy((v0 + 520));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_1000FEAFC(v11, v0 + 272);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_1000FF9D0(v0 + 272, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v3;
    v5(v11, v17, sub_100109350, v15);
    sub_1000F3E14(v5);

    sub_100109250(v0 + 448);
    v18 = sub_100106138;
  }

  else
  {
    sub_1002EAA64(v2, *(v0 + 480), 1, 0, 0);

    sub_100109250(v0 + 448);
    v18 = sub_100109430;
  }

  return _swift_task_switch(v18, 0, 0);
}

uint64_t sub_100106138()
{
  sub_10001036C(*(v0 + 1080), &qword_1006E6D80);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100106384()
{
  v1 = *(v0 + 848);

  sub_10022F384(v1, 0);
  sub_1001091F0(v1, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_10010641C, 0, 0);
}

uint64_t sub_10010641C()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  sub_10000CC8C(*(v0 + 664), v3, &qword_1006E6B80);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_10001036C(*(v0 + 808), &qword_1006E6B80);
    v4 = *(v0 + 1120);
    v5 = *(v0 + 672);
    v6 = *(v0 + 640);
    sub_10023E5C8(v5, v5);
    swift_allocObject();
    v7 = sub_100572D48();
    v4(v8, v6, v5);
    v9 = sub_100206838(v7);
    *(v0 + 1304) = v9;
    *(v0 + 616) = v9;
    v10 = swift_task_alloc();
    *(v0 + 1312) = v10;
    v11 = sub_100572E38();
    WitnessTable = swift_getWitnessTable();
    *v10 = v0;
    v10[1] = sub_1001070D8;
    v13 = *(v0 + 680);
    v14 = *(v0 + 672);

    return MusicLibrary.add<A, B>(_:)(v0 + 616, v11, v14, WitnessTable, v13);
  }

  else
  {
    v15 = *(v0 + 800);
    v16 = *(v0 + 672);
    sub_10010911C(*(v0 + 808), *(v0 + 832), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 1232) = MusicItem.metricsTargetIdentifier.getter(v16);
    *(v0 + 1240) = v17;
    v18 = sub_10056C8A8();
    *(v0 + 1248) = v18;
    v19 = *(v18 - 8);
    v20 = *(v19 + 56);
    *(v0 + 1256) = v20;
    *(v0 + 1264) = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v20(v15, 1, 1, v18);
    sub_100009DCC(&qword_1006E6D88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B500;
    *(inited + 32) = MusicItem.metricsContentType.getter(v16);
    *(inited + 40) = v22;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 1;
    *(v0 + 1272) = sub_1000E0568(inited);
    *(v0 + 1280) = v23;
    *(v0 + 1288) = v24;
    *(v0 + 610) = v25;
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v0 + 1296) = sub_100572EF8();
    v27 = sub_100572E78();

    return _swift_task_switch(sub_10010676C, v27, v26);
  }
}

uint64_t sub_10010676C()
{
  v80 = *(v0 + 610);
  v73 = *(v0 + 1272);
  v76 = *(v0 + 1240);
  v78 = *(v0 + 1288);
  v74 = *(v0 + 1232);
  v1 = *(v0 + 832);
  v2 = *(v0 + 816);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 768);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);
  v72 = *(v0 + 744);

  sub_10000CC8C(v3, v4, &qword_1006E5D10);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000CC8C(v1 + v2[5], v7, &qword_1006E6428);
  v81 = *(v1 + v2[8]);
  *(v5 + v6[19]) = 0;
  v11 = (v5 + v6[20]);
  *v11 = 0;
  v11[1] = 0;
  *v5 = v74;
  *(v5 + 8) = v76;
  *(v5 + 16) = 773;
  sub_100019B40(v4, v5 + v6[7], &qword_1006E5D10);
  *(v5 + v6[8]) = v8;
  v12 = (v5 + v6[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v5 + v6[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_10000CC8C(v7, v72, &qword_1006E6428);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 610);
  v17 = *(v0 + 1288);
  v18 = *(v0 + 1280);
  v19 = *(v0 + 1272);
  v20 = *(v0 + 744);
  if (v15 == 1)
  {

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v18, v17, v16, SBYTE1(v16));
    sub_10001036C(v20, &qword_1006E6428);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v18, v17, v16, SBYTE1(v16));

    sub_1001091F0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 752);
  v24 = *(v0 + 736);
  v25 = (*(v0 + 768) + *(*(v0 + 760) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000CC8C(v23, v24, &qword_1006E6428);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 736);
  if (v26 == 1)
  {
    sub_10001036C(*(v0 + 736), &qword_1006E6428);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1001091F0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 752);
  v31 = *(v0 + 728);
  v32 = (*(v0 + 768) + *(*(v0 + 760) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000CC8C(v30, v31, &qword_1006E6428);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 1256);
    v34 = *(v0 + 1248);
    v35 = *(v0 + 784);
    sub_10001036C(*(v0 + 728), &qword_1006E6428);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 728);
    sub_10000CC8C(v36 + v14[6], *(v0 + 784), &qword_1006E5D10);
    sub_1001091F0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 752);
  v38 = *(v0 + 720);
  sub_100019B40(*(v0 + 784), *(v0 + 768) + *(*(v0 + 760) + 56), &qword_1006E5D10);
  sub_10000CC8C(v37, v38, &qword_1006E6428);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 720);
  if (v39 == 1)
  {
    sub_10001036C(*(v0 + 720), &qword_1006E6428);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1001091F0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 752);
  v43 = *(v0 + 712);
  *(*(v0 + 768) + *(*(v0 + 760) + 60)) = v41;
  sub_10000CC8C(v42, v43, &qword_1006E6428);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 712);
  if (v44 == 1)
  {
    sub_10001036C(v45, &qword_1006E6428);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1001091F0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 752);
  v48 = *(v0 + 704);
  *(*(v0 + 768) + *(*(v0 + 760) + 64)) = v46;
  sub_10000CC8C(v47, v48, &qword_1006E6428);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 704);
  if (v49 == 1)
  {
    sub_10001036C(*(v0 + 704), &qword_1006E6428);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1001091F0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 752);
  v55 = *(v0 + 696);
  v56 = (*(v0 + 768) + *(*(v0 + 760) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100019B40(v54, v55, &qword_1006E6428);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 696);
  if (v57 == 1)
  {
    sub_10001036C(v58, &qword_1006E6428);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1001091F0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 776);
  v61 = *(v0 + 768);
  v62 = *(v0 + 760);
  *(v61 + *(v62 + 68)) = v59;
  *(v61 + *(v62 + 44)) = v81;
  sub_10010911C(v61, v60, type metadata accessor for MetricsEvent.Click);
  if (qword_1006E4D30 != -1)
  {
    swift_once();
  }

  v63 = *(v0 + 1288);
  v64 = *(v0 + 1280);
  v65 = *(v0 + 1272);
  v66 = *(v0 + 832);
  v67 = *(v0 + 816);
  v68 = *(v0 + 800);
  v69 = *(v0 + 776);
  v70 = *(v0 + 610);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100109184(v65, v64, v63, v70, SBYTE1(v70));
  sub_1001091F0(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001036C(v68, &qword_1006E5D10);

  return _swift_task_switch(sub_100106F60, 0, 0);
}

uint64_t sub_100106F60()
{
  sub_1001091F0(v0[104], type metadata accessor for Actions.MetricsReportingContext);
  v1 = v0[140];
  v2 = v0[84];
  v3 = v0[80];
  sub_10023E5C8(v2, v2);
  swift_allocObject();
  v4 = sub_100572D48();
  v1(v5, v3, v2);
  v6 = sub_100206838(v4);
  v0[163] = v6;
  v0[77] = v6;
  v7 = swift_task_alloc();
  v0[164] = v7;
  v8 = sub_100572E38();
  WitnessTable = swift_getWitnessTable();
  *v7 = v0;
  v7[1] = sub_1001070D8;
  v10 = v0[85];
  v11 = v0[84];

  return MusicLibrary.add<A, B>(_:)(v0 + 77, v8, v11, WitnessTable, v10);
}

uint64_t sub_1001070D8()
{
  *(*v1 + 1320) = v0;

  if (v0)
  {
    v2 = sub_100107214;
  }

  else
  {

    v2 = sub_100109430;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100107214()
{
  sub_10001036C(*(v0 + 1080), &qword_1006E6D80);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100107468()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(*(sub_100009DCC(&qword_1006E6B80) - 8) + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  v6 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v7 = *(v0 + v4 + 48);
  if (v7 != 255)
  {
    sub_1000FF9AC(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
  }

  if (*(v6 + 64))
  {
  }

  v8 = (v4 + v5 + 96) & ~v5;
  if (*(v6 + 80))
  {
  }

  v9 = v0 + v8;
  v10 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v10 - 8) + 48))(v0 + v8, 1, v10))
  {
    if (*(v9 + 8) >= 0xDuLL)
    {
    }

    v11 = v9 + *(v10 + 20);
    v12 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      v13 = *(v12 + 24);
      v14 = sub_10056C8A8();
      v15 = *(v14 - 8);
      v19 = v13;
      v16 = v11 + v13;
      v17 = v14;
      if (!(*(v15 + 48))(v16, 1, v14))
      {
        (*(v15 + 8))(v11 + v19, v17);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_100107798()
{
  v2 = v0[2];
  v14 = v0[3];
  v3 = (*(*(v2 - 8) + 80) + 56) & ~*(*(v2 - 8) + 80);
  v4 = (*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v7 = (v5 + *(v6 + 80) + 96) & ~*(v6 + 80);
  v8 = v0[5];
  v9 = v0[6];
  v10 = *(v0 + v4);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_10000CB98;

  return sub_1001038B4(v8, v9, v0 + v3, v10, v0 + v5, v0 + v7, v2, v14);
}

uint64_t sub_100107928(uint64_t a1, void (*a2)(char *, char *, uint64_t), size_t *a3)
{
  v36 = a3;
  v37 = a2;
  v3 = sub_100009DCC(&qword_1006E6D80);
  __chkstk_darwin(v3 - 8);
  v5 = &v36 - v4;
  v41 = sub_1005717B8();
  v6 = *(v41 - 8);
  v7 = __chkstk_darwin(v41);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = &v36 - v9;
  v10 = sub_1005717A8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100009DCC(&qword_1006E6D18);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v39 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  sub_10056D4C8();
  sub_100571C48();
  sub_100571658();
  (*(v11 + 8))(v13, v10);
  MusicLibrary.SupportedStatus<>.unaddableReason.getter(v5);
  v20 = v41;
  if ((*(v6 + 48))(v5, 1, v41) == 1)
  {
    sub_10001036C(v5, &qword_1006E6D80);
  }

  else
  {
    v21 = v38;
    v37 = *(v6 + 32);
    v37(v38, v5, v20);
    (*(v6 + 16))(v40, v21, v20);
    v22 = v36;
    v23 = *v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v22 = v23;
    if (isUniquelyReferenced_nonNull_native)
    {
      v25 = v22;
    }

    else
    {
      v23 = sub_1000CF7F4(0, v23[2] + 1, 1, v23);
      v25 = v22;
      *v22 = v23;
    }

    v27 = v23[2];
    v26 = v23[3];
    if (v27 >= v26 >> 1)
    {
      *v25 = sub_1000CF7F4(v26 > 1, v27 + 1, 1, v23);
    }

    v28 = v41;
    (*(v6 + 8))(v38, v41);
    v29 = *v25;
    *(v29 + 16) = v27 + 1;
    v37((v29 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v27), v40, v28);
  }

  v30 = v39;
  (*(v15 + 16))(v39, v19, v14);
  v31 = (*(v15 + 88))(v30, v14);
  v32 = v31;
  v33 = enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:);
  if (v31 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v34 = *(v15 + 8);
    v34(v19, v14);
    v34(v30, v14);
    return v32 != v33;
  }

  if (v31 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    (*(v15 + 8))(v19, v14);
    return v32 != v33;
  }

  result = sub_100574488();
  __break(1u);
  return result;
}

uint64_t MusicLibrary.SupportedStatus<>.unaddableReason.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100009DCC(&qword_1006E6D18);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = sub_100571798();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  (*(v5 + 16))(v7, v2, v4);
  if ((*(v5 + 88))(v7, v4) == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v5 + 96))(v7, v4);
    v15 = *(v9 + 32);
    v15(v14, v7, v8);
    v15(v12, v14, v8);
    if ((*(v9 + 88))(v12, v8) == enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
    {
      (*(v9 + 96))(v12, v8);
      v16 = sub_1005717B8();
      v17 = *(v16 - 8);
      (*(v17 + 32))(a1, v12, v16);
      return (*(v17 + 56))(a1, 0, 1, v16);
    }

    (*(v9 + 8))(v12, v8);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  v19 = sub_1005717B8();
  return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
}

uint64_t sub_100108140(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_100572F08();
  v2[4] = sub_100572EF8();
  v4 = sub_100572E78();

  return _swift_task_switch(sub_1001081D8, v4, v3);
}

uint64_t sub_1001081D8()
{
  v1 = v0[2];

  if (v1)
  {
    v2 = v0[3];
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(0, ObjectType, v2);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_10010826C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001082A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000CB98;

  return sub_100108140(v2, v3);
}

uint64_t sub_10010833C(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000C5F8;

  return v4();
}

uint64_t sub_100108424()
{

  return swift_deallocObject();
}

uint64_t sub_10010845C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return sub_10010833C(v2);
}

uint64_t Actions.AddToLibrary.Context.menuItemTitle.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*Actions.AddToLibrary.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E73756C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E73756C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_100108BF8;
}

uint64_t (*Actions.AddToLibrary.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x80000001005ACC40;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000010;
  *(v1 + 24) = 0x80000001005ACC40;
  return sub_100109428;
}

uint64_t (*sub_100108838())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E73756C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E73756C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_100109428;
}

uint64_t (*sub_1001088DC())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x80000001005ACC40;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000010;
  *(v1 + 24) = 0x80000001005ACC40;
  return sub_100109428;
}

Swift::Int MPCPlaybackEngine.Option.hashValue.getter(unsigned __int8 a1)
{
  sub_100574678();
  sub_100574688(a1);
  return sub_1005746C8();
}

uint64_t _s9MusicCore7ActionsO12AddToLibraryO7ContextV25menuItemCompactStyleTitleSSSgvg_0()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_100108BC0()
{

  return swift_deallocObject();
}

unint64_t sub_100108C0C()
{
  result = qword_1006E6D60;
  if (!qword_1006E6D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6D60);
  }

  return result;
}

uint64_t sub_100108C70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100108CB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_100108D80(uint64_t a1, void (*a2)(char *, char *, uint64_t), size_t *a3)
{
  v29 = a2;
  v30 = a3;
  v28 = sub_100571C48();
  v4 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009DCC(&qword_1006E6D30);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = sub_100009DCC(&qword_1006E6D20);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  (*(v7 + 16))(v9, a1, v6);
  sub_1001093BC(&qword_1006E6D98);
  sub_100572B98();
  v14 = *(v11 + 44);
  sub_1001093BC(&qword_1006E6D38);
  v25 = (v4 + 16);
  v26 = (v4 + 8);
  do
  {
    sub_100573208();
    v15 = v32[0];
    v31 = *&v13[v14];
    if (v31 == v32[0])
    {
      break;
    }

    v16 = sub_1005732E8();
    v17 = v6;
    v18 = v27;
    v19 = v28;
    (*v25)(v27);
    v16(v32, 0);
    sub_100573218();
    v20 = v33;
    v21 = sub_100107928(v18, v29, v30);
    v33 = v20;
    if (v20)
    {
      (*v26)(v18, v19);
      break;
    }

    v22 = v21;
    (*v26)(v18, v19);
    v6 = v17;
  }

  while ((v22 & 1) == 0);
  sub_10001036C(v13, &qword_1006E6D20);
  return v31 != v15;
}

uint64_t sub_10010911C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_100109184(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3 || a5 == 2)
  {
  }

  if (a5 == 1)
  {
    return sub_1001091B0(result);
  }

  return result;
}

void *sub_1001091B0(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001091F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001092A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001092BC()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_1000FF9AC(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10010936C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1005717B8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001093BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100010324(&qword_1006E6D30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double Actions.AddToPlaylist.Context.init<A, B>(item:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _OWORD *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v15 = sub_100111FE4(a1, a2, a3, a4, a5, a6, a7, a9, v18, a10);
  (*(*(a6 - 8) + 8))(a3, a6, v15);

  (*(*(a5 - 8) + 8))(a1, a5);
  v16 = v18[1];
  *a8 = v18[0];
  a8[1] = v16;
  result = *&v19;
  a8[2] = v19;
  return result;
}

uint64_t static Actions.AddToPlaylist.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 11;
  *(a2 + 56) = sub_1001024FC;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100587148;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100587150;
  *(a2 + 104) = 0;
}

uint64_t sub_1001095CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 11;
  *(a2 + 56) = sub_1001024FC;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100587148;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100587150;
  *(a2 + 104) = 0;
}

uint64_t (*Actions.AddToPlaylist.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6461622E74786574;
  *(v0 + 24) = 0xEF73756C702E6567;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6461622E74786574;
  *(v1 + 24) = 0xEF73756C702E6567;
  return sub_100108BF8;
}

uint64_t (*sub_100109734())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6461622E74786574;
  *(v0 + 24) = 0xEF73756C702E6567;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6461622E74786574;
  *(v1 + 24) = 0xEF73756C702E6567;
  return sub_100109428;
}

uint64_t Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t (**a7)()@<X8>)
{
  v81 = a6;
  v84 = a5;
  v85 = a4;
  v83 = a3;
  v82 = a2;
  v86 = a7;
  v101 = sub_1005717A8();
  v8 = *(v101 - 8);
  __chkstk_darwin(v101);
  v100 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009DCC(&qword_1006E6D18);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v88 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v79 = &v77 - v15;
  v16 = __chkstk_darwin(v14);
  v78 = &v77 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v77 - v19;
  v80 = v21;
  __chkstk_darwin(v18);
  v105 = &v77 - v22;
  v23 = sub_100009DCC(&qword_1006E6DA0);
  v24 = __chkstk_darwin(v23 - 8);
  v77 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v77 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v77 - v30;
  __chkstk_darwin(v29);
  v33 = &v77 - v32;
  v87 = v11;
  v97 = *(v11 + 56);
  v98 = v11 + 56;
  v97(&v77 - v32, 1, 1, v10);
  v102 = a1;
  v96 = *(a1 + 16);
  if (v96)
  {
    v34 = 0;
    result = v102 + 32;
    v94 = (v8 + 8);
    v92 = (v87 + 88);
    v93 = (v87 + 16);
    v99 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
    v36 = (v87 + 8);
    v90 = (v87 + 48);
    v89 = (v87 + 32);
    v91 = v31;
    v95 = v33;
    while (v34 < *(v102 + 16))
    {
      v103 = result;
      v104 = v34;
      sub_1000FF2A4(result, v106);
      sub_10000C8CC(v106, v106[3]);
      v39 = v100;
      sub_10056D4C8();
      v40 = v36;
      v41 = v10;
      v42 = v105;
      v43 = v101;
      sub_100571658();
      sub_100010474(v106);
      (*v94)(v39, v43);
      v44 = v42;
      v10 = v41;
      v36 = v40;
      (*v93)(v20, v44, v10);
      v45 = (*v92)(v20, v10);
      v46 = *v40;
      if (v45 == v99)
      {
        v46(v105, v10);

        v46(v20, v10);
        sub_10001036C(v95, &qword_1006E6DA0);
        v50 = v87;
        v52 = v10;
        v55 = v78;
        (*(v87 + 104))(v78, v99, v10);
        goto LABEL_15;
      }

      v46(v20, v10);
      v33 = v95;
      sub_100019B40(v95, v28, &qword_1006E6DA0);
      v47 = *v90;
      if ((*v90)(v28, 1, v10) == 1)
      {
        v37 = v91;
        (*v89)(v91, v105, v10);
        v48 = v47(v28, 1, v10);
        v38 = v104;
        if (v48 != 1)
        {
          sub_10001036C(v28, &qword_1006E6DA0);
        }
      }

      else
      {
        v46(v105, v10);
        v37 = v91;
        (*v89)(v91, v28, v10);
        v38 = v104;
      }

      v34 = v38 + 1;
      v97(v37, 0, 1, v10);
      sub_100019B40(v37, v33, &qword_1006E6DA0);
      result = v103 + 48;
      if (v96 == v34)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v49 = v77;
    sub_100019B40(v33, v77, &qword_1006E6DA0);
    v50 = v87;
    v51 = *(v87 + 48);
    v52 = v10;
    if (v51(v49, 1, v10) == 1)
    {
      v53 = enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:);
      v54 = sub_100571798();
      v55 = v78;
      (*(*(v54 - 8) + 104))(v78, v53, v54);
      (*(v50 + 104))(v55, enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:), v10);
      v56 = v51(v49, 1, v10) == 1;
      v57 = v49;
      v58 = v80;
      if (!v56)
      {
        sub_10001036C(v57, &qword_1006E6DA0);
      }
    }

    else
    {
      v55 = v78;
      (*(v50 + 32))(v78, v49, v10);
LABEL_15:
      v58 = v80;
    }

    v59 = v79;
    (*(v50 + 16))(v79, v55, v52);
    v60 = *(v50 + 80);
    v105 = swift_allocObject();
    v61 = *(v50 + 32);
    v61(&v105[(v60 + 16) & ~v60], v59, v52);
    v61(v88, v55, v52);
    v62 = (v60 + 32) & ~v60;
    v63 = (v58 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = (v63 + 103) & 0xFFFFFFFFFFFFFFF8;
    v65 = v84;
    v66 = *(v84 - 8);
    v67 = (v64 + *(v66 + 80) + 8) & ~*(v66 + 80);
    v68 = swift_allocObject();
    v69 = v81;
    *(v68 + 16) = v65;
    *(v68 + 24) = v69;
    v61((v68 + v62), v88, v52);
    sub_1000FF9D0(v82, v68 + v63);
    v70 = v102;
    *(v68 + v64) = v102;
    (*(v66 + 32))(v68 + v67, v83, v65);
    v71 = *(sub_100009DCC(&qword_1006E6B80) - 8);
    v72 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v73 = (*(v71 + 64) + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    sub_100019B40(v85, v74 + v72, &qword_1006E6B80);
    *(v74 + v73) = v70;

    v75 = v86;
    v76 = v105;
    *v86 = sub_100112300;
    v75[1] = v76;
    v75[2] = &unk_100587168;
    v75[3] = v68;
    v75[4] = &unk_100587178;
    v75[5] = v74;
  }

  return result;
}

unint64_t sub_10010A1E4(uint64_t a1)
{
  v2 = sub_1005717B8();
  v3 = *(v2 - 8);
  v54 = v2;
  v55 = v3;
  v4 = __chkstk_darwin(v2);
  v56 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v53 = &v50 - v6;
  v7 = sub_100571798();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v50 - v12;
  v14 = sub_100009DCC(&qword_1006E6D18);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v50 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v51 = &v50 - v19;
  __chkstk_darwin(v18);
  v21 = &v50 - v20;
  v22 = *(v15 + 16);
  v52 = a1;
  v22(&v50 - v20, a1, v14);
  v23 = (*(v15 + 88))(v21, v14);
  if (v23 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v23 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      if (qword_1006E4C68 != -1)
      {
        swift_once();
      }

      v32 = sub_10056DF88();
      sub_10000C49C(v32, static Logger.actions);
      v33 = v51;
      v22(v51, v52, v14);
      v34 = sub_10056DF68();
      v35 = sub_100573438();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = v56;
        *v36 = 136315138;
        LODWORD(v55) = v35;
        v22(v50, v33, v14);
        v37 = sub_100572978();
        v39 = v38;
        v40 = *(v15 + 8);
        v40(v33, v14);
        v41 = sub_1000C9784(v37, v39, &v57);

        *(v36 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v34, v55, "Unknown status=%s", v36, 0xCu);
        sub_100010474(v56);
      }

      else
      {

        v40 = *(v15 + 8);
        v40(v33, v14);
      }

      v31 = 0x206E776F6E6B6E55;
      v40(v21, v14);
      return v31;
    }

    return 0;
  }

  (*(v15 + 96))(v21, v14);
  (*(v8 + 32))(v13, v21, v7);
  (*(v8 + 16))(v11, v13, v7);
  v24 = (*(v8 + 88))(v11, v7);
  if (v24 != enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
  {
    if (v24 == enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:))
    {
      v31 = 0xD000000000000010;
      (*(v8 + 8))(v13, v7);
      return v31;
    }

    if (v24 == enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:))
    {
      goto LABEL_27;
    }

    v42 = enum case for MusicLibrary.AddAction.UnsupportedReason.networkRequired(_:);
    v43 = *(v8 + 8);
    v44 = v24;
    v43(v13, v7);
    if (v44 != v42)
    {
      v31 = 0x206E776F6E6B6E55;
      v43(v11, v7);
      return v31;
    }

    return 0;
  }

  (*(v8 + 96))(v11, v7);
  v25 = v55;
  v26 = v53;
  v27 = v11;
  v28 = v54;
  (*(v55 + 32))(v53, v27, v54);
  v29 = v56;
  (*(v25 + 16))(v56, v26, v28);
  v30 = (*(v25 + 88))(v29, v28);
  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) || v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
  {
    goto LABEL_26;
  }

  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:))
  {
    (*(v25 + 8))(v26, v28);
    (*(v8 + 8))(v13, v7);
    return 0xD00000000000001CLL;
  }

  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.libraryAddIneligibleContent(_:))
  {
    (*(v25 + 8))(v26, v28);
    (*(v8 + 8))(v13, v7);
    return 0xD00000000000001ELL;
  }

  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.invalidContentType(_:))
  {
    (*(v25 + 8))(v26, v28);
    (*(v8 + 8))(v13, v7);
    return 0xD000000000000014;
  }

  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionAccountLinkingRequired(_:))
  {
    (*(v25 + 8))(v26, v28);
    (*(v8 + 8))(v13, v7);
    return 0xD000000000000025;
  }

  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
  {
LABEL_26:
    (*(v25 + 8))(v26, v28);
LABEL_27:
    (*(v8 + 8))(v13, v7);
    return 0;
  }

  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.sharedLibrary(_:))
  {
    (*(v25 + 8))(v26, v28);
    (*(v8 + 8))(v13, v7);
    return 0xD000000000000016;
  }

  else
  {
    v31 = 0x206E776F6E6B6E55;
    v46 = enum case for MusicLibrary.AddStatus.UnaddableReason.unknown(_:);
    v47 = v26;
    v48 = *(v25 + 8);
    v49 = v30;
    v48(v47, v28);
    (*(v8 + 8))(v13, v7);
    if (v49 != v46)
    {
      v48(v56, v28);
    }
  }

  return v31;
}

uint64_t sub_10010AB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[72] = a6;
  v6[71] = a5;
  v6[70] = a4;
  v6[69] = a3;
  v6[68] = a2;
  v6[67] = a1;
  v7 = sub_100571908();
  v6[73] = v7;
  v6[74] = *(v7 - 8);
  v6[75] = swift_task_alloc();
  v6[76] = sub_100009DCC(&qword_1006E6E18);
  v6[77] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6E20);
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();
  v8 = sub_100571C48();
  v6[81] = v8;
  v6[82] = *(v8 - 8);
  v6[83] = swift_task_alloc();
  v6[84] = sub_100009DCC(&qword_1006E6D20);
  v6[85] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6D28);
  v6[86] = swift_task_alloc();
  v9 = sub_100009DCC(&qword_1006E6D30);
  v6[87] = v9;
  v6[88] = *(v9 - 8);
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();
  v6[91] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6D80);
  v6[92] = swift_task_alloc();
  v10 = sub_1005717B8();
  v6[93] = v10;
  v6[94] = *(v10 - 8);
  v6[95] = swift_task_alloc();
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();

  return _swift_task_switch(sub_10010AEAC, 0, 0);
}

uint64_t sub_10010AEAC()
{
  v104 = v0;
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);
  MusicLibrary.SupportedStatus<>.unaddableReason.getter(v3);
  if ((*(v1 + 48))(v3, 1, v2) != 1)
  {
    v11 = *(v0 + 776);
    v12 = *(v0 + 768);
    v13 = *(v0 + 752);
    v14 = *(v0 + 744);
    (*(v13 + 32))(v11, *(v0 + 736), v14);
    v15 = *(v13 + 16);
    v15(v12, v11, v14);
    v16 = (*(v13 + 88))(v12, v14);
    if (v16 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:))
    {
      if (v16 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
      {
        if (v16 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
        {
          v35 = *(v0 + 776);
          v36 = *(v0 + 752);
          v37 = *(v0 + 744);
          *(v0 + 448) = 0u;
          *(v0 + 464) = 0u;
          *(v0 + 480) = 0;
          *(v0 + 488) = -2;
          _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 448);
          sub_1001090C8(v0 + 448);
          (*(v36 + 8))(v35, v37);
        }

        else
        {
          if (qword_1006E4C68 != -1)
          {
            swift_once();
          }

          v42 = *(v0 + 776);
          v43 = *(v0 + 760);
          v44 = *(v0 + 744);
          v45 = sub_10056DF88();
          sub_10000C49C(v45, static Logger.actions);
          v15(v43, v42, v44);
          v46 = sub_10056DF68();
          v47 = sub_100573438();
          v48 = os_log_type_enabled(v46, v47);
          v49 = *(v0 + 776);
          v50 = *(v0 + 760);
          v51 = *(v0 + 752);
          v52 = *(v0 + 744);
          if (v48)
          {
            v102 = *(v0 + 776);
            v53 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v103 = v97;
            *v53 = 136315138;
            sub_100112A64(&qword_1006E6D68, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason);
            v54 = sub_100574408();
            v56 = v55;
            v57 = *(v51 + 8);
            v57(v50, v52);
            v58 = sub_1000C9784(v54, v56, &v103);

            *(v53 + 4) = v58;
            _os_log_impl(&_mh_execute_header, v46, v47, "Unhandled unaddableReason=%s", v53, 0xCu);
            sub_100010474(v97);

            v59 = v102;
          }

          else
          {

            v57 = *(v51 + 8);
            v57(v50, v52);
            v59 = v49;
          }

          v57(v59, v52);
          v57(*(v0 + 768), *(v0 + 744));
        }

LABEL_43:

        v83 = *(v0 + 8);

        return v83();
      }

      *(v0 + 816) = sub_100572F08();
      *(v0 + 824) = sub_100572EF8();
      v21 = sub_100572E78();
      v23 = v22;
      *(v0 + 832) = v21;
      *(v0 + 840) = v22;
      v24 = sub_10010C130;
      v25 = v21;
LABEL_22:

      return _swift_task_switch(v24, v25, v23);
    }

    *(v0 + 792) = sub_100572F08();
    *(v0 + 800) = sub_100572EF8();
    v17 = sub_100572E78();
    v19 = v18;
    v20 = sub_10010BBF4;
LABEL_21:
    v24 = v20;
    v25 = v17;
    v23 = v19;
    goto LABEL_22;
  }

  v4 = *(v0 + 552);
  sub_10001036C(*(v0 + 736), &qword_1006E6D80);
  sub_100570E28();
  v5 = *(v4 + 16);
  *(v0 + 784) = v5;
  if (v5)
  {
    v6 = *(v0 + 552);
    *(v0 + 872) = 0;
    v7 = *(v6 + 56);
    sub_10000C8CC((v6 + 32), v7);
    v8 = swift_task_alloc();
    *(v0 + 880) = v8;
    *v8 = v0;
    v8[1] = sub_10010C40C;
    v9 = *(v0 + 688);

    return MusicPlaylistAddable.tracks.getter(v9, v7);
  }

  if (qword_1006E5648 != -1)
  {
    swift_once();
  }

  if (ExplicitRestrictionsController.explicitContentIsAllowed.getter())
  {
    if (!*(v0 + 784))
    {
      goto LABEL_42;
    }

    goto LABEL_14;
  }

  v38 = *(v0 + 680);
  v39 = *(v0 + 672);
  (*(*(v0 + 704) + 16))(*(v0 + 712), *(v0 + 728), *(v0 + 696));
  sub_1001093BC(&qword_1006E6D98);
  sub_100572B98();
  v40 = *(v39 + 36);
  sub_1001093BC(&qword_1006E6D38);
  sub_100573208();
  v101 = v40;
  if (*(v38 + v40) == *(v0 + 528))
  {
LABEL_20:
    sub_10001036C(*(v0 + 680), &qword_1006E6D20);
    *(v0 + 888) = sub_100572F08();
    *(v0 + 896) = sub_100572EF8();
    v17 = sub_100572E78();
    v19 = v41;
    v20 = sub_10010CF40;
    goto LABEL_21;
  }

  v60 = *(v0 + 656);
  v94 = *(v0 + 608);
  v93 = (v60 + 16);
  v61 = *(v0 + 592);
  v91 = (v61 + 56);
  v92 = (v61 + 104);
  v84 = (v61 + 32);
  v86 = (v61 + 8);
  v87 = v38;
  v89 = (v60 + 8);
  v90 = (v61 + 48);
  v88 = enum case for ContentRating.clean(_:);
  while (1)
  {
    v66 = *(v0 + 664);
    v98 = *(v0 + 640);
    v67 = *(v0 + 632);
    v95 = *(v0 + 616);
    v68 = *(v0 + 584);
    v69 = sub_1005732E8();
    (*v93)(v66);
    v69(v0 + 496, 0);
    sub_100573218();
    sub_100571BF8();
    (*v92)(v67, v88, v68);
    (*v91)(v67, 0, 1, v68);
    v70 = *(v94 + 48);
    sub_10000CC8C(v98, v95, &qword_1006E6E20);
    sub_10000CC8C(v67, v95 + v70, &qword_1006E6E20);
    v71 = *v90;
    if ((*v90)(v95, 1, v68) == 1)
    {
      break;
    }

    v72 = *(v0 + 584);
    sub_10000CC8C(*(v0 + 616), *(v0 + 624), &qword_1006E6E20);
    v73 = v71(v95 + v70, 1, v72);
    v74 = *(v0 + 664);
    v75 = *(v0 + 648);
    v76 = *(v0 + 640);
    v77 = *(v0 + 632);
    v78 = *(v0 + 624);
    if (v73 == 1)
    {
      v79 = *(v0 + 584);
      sub_10001036C(*(v0 + 632), &qword_1006E6E20);
      sub_10001036C(v76, &qword_1006E6E20);
      (*v89)(v74, v75);
      (*v86)(v78, v79);
      goto LABEL_31;
    }

    v99 = *(v0 + 616);
    v80 = *(v0 + 600);
    v81 = *(v0 + 584);
    (*v84)(v80, v95 + v70, v81);
    sub_100112A64(&qword_1006E6E28, &type metadata accessor for ContentRating);
    v85 = sub_1005727E8();
    v82 = *v86;
    (*v86)(v80, v81);
    sub_10001036C(v77, &qword_1006E6E20);
    sub_10001036C(v76, &qword_1006E6E20);
    (*v89)(v74, v75);
    v82(v78, v81);
    sub_10001036C(v99, &qword_1006E6E20);
    if (v85)
    {
      goto LABEL_41;
    }

LABEL_32:
    sub_100573208();
    if (*(v87 + v101) == *(v0 + 528))
    {
      goto LABEL_20;
    }
  }

  v62 = *(v0 + 664);
  v63 = *(v0 + 648);
  v64 = *(v0 + 640);
  v65 = *(v0 + 584);
  sub_10001036C(*(v0 + 632), &qword_1006E6E20);
  sub_10001036C(v64, &qword_1006E6E20);
  (*v89)(v62, v63);
  if (v71(v95 + v70, 1, v65) != 1)
  {
LABEL_31:
    sub_10001036C(*(v0 + 616), &qword_1006E6E18);
    goto LABEL_32;
  }

  sub_10001036C(*(v0 + 616), &qword_1006E6E20);
LABEL_41:
  sub_10001036C(*(v0 + 680), &qword_1006E6D20);
  if (!*(v0 + 784))
  {
LABEL_42:
    (*(*(v0 + 704) + 8))(*(v0 + 728), *(v0 + 696));
    goto LABEL_43;
  }

LABEL_14:
  v100 = *(v0 + 576);
  v26 = *(v0 + 552);
  v28 = v26[7];
  v27 = v26[8];
  v29 = v26[9];
  v30 = sub_10000C8CC(v26 + 4, v28);
  v96 = (*(v100 + 8) + **(v100 + 8));
  v31 = swift_task_alloc();
  *(v0 + 912) = v31;
  *v31 = v0;
  v31[1] = sub_10010D47C;
  v32 = *(v0 + 576);
  v33 = *(v0 + 568);
  v34 = *(v0 + 728);

  return v96(v34, v30, v28, v27, v29, v33, v32);
}

uint64_t sub_10010BBF4()
{

  sub_1001CAB6C(0, v0 + 280);

  return _swift_task_switch(sub_10010BC68, 0, 0);
}

uint64_t sub_10010BC68()
{
  *(v0 + 808) = sub_100572EF8();
  v2 = sub_100572E78();

  return _swift_task_switch(sub_10010BCF4, v2, v1);
}

uint64_t sub_10010BCF4()
{
  v1 = *(v0 + 544);

  v2 = sub_10017F500(v0 + 280, 0, 1);
  v3 = v2;
  v4 = *(v0 + 312);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_1006E4FE8;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_10056DF88();
    sub_10000C49C(v7, qword_1006ECA00);
    v8 = sub_10056DF68();
    v9 = sub_100573448();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 544);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 432) = sub_1002EC584;
    *(v0 + 440) = 0;
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_1002ED584;
    *(v0 + 424) = &unk_100688FB8;
    v13 = _Block_copy((v0 + 400));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_1000FEAFC(v11, v0 + 112);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_1000FF9D0(v0 + 112, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v3;
    v5(v11, v17, sub_100112BB0, v15);
    sub_1000F3E14(v5);

    sub_100109250(v0 + 280);
    v18 = sub_10010BFDC;
  }

  else
  {
    sub_1002EAA64(v2, *(v0 + 312), 1, 0, 0);

    sub_100109250(v0 + 280);
    v18 = sub_100112BA8;
  }

  return _swift_task_switch(v18, 0, 0);
}

uint64_t sub_10010BFDC()
{
  (*(v0[94] + 8))(v0[97], v0[93]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10010C130()
{
  v1 = v0[68];
  v2 = sub_100572EF8();
  v0[106] = v2;
  v3 = swift_task_alloc();
  v0[107] = v3;
  *(v3 + 16) = 2;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  v0[108] = v4;
  *v4 = v0;
  v4[1] = sub_10010C244;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 489, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001005ACD10, sub_1001093B0, v3, &type metadata for Bool);
}

uint64_t sub_10010C244()
{
  v1 = *v0;

  v2 = *(v1 + 840);
  v3 = *(v1 + 832);

  return _swift_task_switch(sub_10010C3A4, v3, v2);
}

uint64_t sub_10010C3A4()
{

  return _swift_task_switch(sub_100112BA8, 0, 0);
}

uint64_t sub_10010C40C()
{

  return _swift_task_switch(sub_10010C508, 0, 0);
}

uint64_t sub_10010C508()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    sub_100570E28();
    if (v4(v3, 1, v2) != 1)
    {
      sub_10001036C(v0[86], &qword_1006E6D28);
    }
  }

  else
  {
    (*(v1 + 32))(v0[90], v3, v2);
  }

  v5 = v0[98];
  v6 = v0[90];
  v7 = v0[88];
  v8 = v0[87];
  v9 = v0[109] + 1;
  sub_100570E48();
  (*(v7 + 8))(v6, v8);
  if (v9 == v5)
  {
    if (qword_1006E5648 != -1)
    {
      swift_once();
    }

    if (ExplicitRestrictionsController.explicitContentIsAllowed.getter())
    {
      if (!v0[98])
      {
        goto LABEL_31;
      }

      goto LABEL_10;
    }

    v25 = v0[85];
    v26 = v0[84];
    (*(v0[88] + 16))(v0[89], v0[91], v0[87]);
    sub_1001093BC(&qword_1006E6D98);
    sub_100572B98();
    v27 = *(v26 + 36);
    sub_1001093BC(&qword_1006E6D38);
    sub_100573208();
    v70 = v27;
    if (*(v25 + v27) == v0[66])
    {
LABEL_17:
      sub_10001036C(v0[85], &qword_1006E6D20);
      v0[111] = sub_100572F08();
      v0[112] = sub_100572EF8();
      v29 = sub_100572E78();

      return _swift_task_switch(sub_10010CF40, v29, v28);
    }

    v30 = v0[82];
    v64 = v0[76];
    v63 = (v30 + 16);
    v31 = v0[74];
    v61 = (v31 + 56);
    v62 = (v31 + 104);
    v54 = (v31 + 32);
    v56 = (v31 + 8);
    v57 = v25;
    v59 = (v30 + 8);
    v60 = (v31 + 48);
    v58 = enum case for ContentRating.clean(_:);
    while (1)
    {
      v36 = v0[83];
      v37 = v0[79];
      v65 = v0[77];
      v67 = v0[80];
      v38 = v0[73];
      v39 = sub_1005732E8();
      (*v63)(v36);
      v39(v0 + 62, 0);
      sub_100573218();
      sub_100571BF8();
      (*v62)(v37, v58, v38);
      (*v61)(v37, 0, 1, v38);
      v40 = *(v64 + 48);
      sub_10000CC8C(v67, v65, &qword_1006E6E20);
      sub_10000CC8C(v37, v65 + v40, &qword_1006E6E20);
      v41 = *v60;
      if ((*v60)(v65, 1, v38) == 1)
      {
        break;
      }

      v42 = v0[73];
      sub_10000CC8C(v0[77], v0[78], &qword_1006E6E20);
      v43 = v41(v65 + v40, 1, v42);
      v44 = v0[83];
      v45 = v0[81];
      v46 = v0[80];
      v47 = v0[79];
      v48 = v0[78];
      if (v43 == 1)
      {
        v49 = v0[73];
        sub_10001036C(v0[79], &qword_1006E6E20);
        sub_10001036C(v46, &qword_1006E6E20);
        (*v59)(v44, v45);
        (*v56)(v48, v49);
LABEL_22:
        sub_10001036C(v0[77], &qword_1006E6E18);
        goto LABEL_23;
      }

      v68 = v0[77];
      v50 = v0[75];
      v51 = v0[73];
      (*v54)(v50, v65 + v40, v51);
      sub_100112A64(&qword_1006E6E28, &type metadata accessor for ContentRating);
      v55 = sub_1005727E8();
      v52 = *v56;
      (*v56)(v50, v51);
      sub_10001036C(v47, &qword_1006E6E20);
      sub_10001036C(v46, &qword_1006E6E20);
      (*v59)(v44, v45);
      v52(v48, v51);
      sub_10001036C(v68, &qword_1006E6E20);
      if (v55)
      {
        goto LABEL_30;
      }

LABEL_23:
      sub_100573208();
      if (*(v57 + v70) == v0[66])
      {
        goto LABEL_17;
      }
    }

    v32 = v0[83];
    v33 = v0[81];
    v34 = v0[80];
    v35 = v0[73];
    sub_10001036C(v0[79], &qword_1006E6E20);
    sub_10001036C(v34, &qword_1006E6E20);
    (*v59)(v32, v33);
    if (v41(v65 + v40, 1, v35) == 1)
    {
      sub_10001036C(v0[77], &qword_1006E6E20);
LABEL_30:
      sub_10001036C(v0[85], &qword_1006E6D20);
      if (!v0[98])
      {
LABEL_31:
        (*(v0[88] + 8))(v0[91], v0[87]);

        v53 = v0[1];

        return v53();
      }

LABEL_10:
      v69 = v0[72];
      v10 = v0[69];
      v12 = v10[7];
      v11 = v10[8];
      v13 = v10[9];
      v14 = sub_10000C8CC(v10 + 4, v12);
      v66 = (*(v69 + 8) + **(v69 + 8));
      v15 = swift_task_alloc();
      v0[114] = v15;
      *v15 = v0;
      v15[1] = sub_10010D47C;
      v16 = v0[72];
      v17 = v0[71];
      v18 = v0[91];

      return v66(v18, v14, v12, v11, v13, v17, v16);
    }

    goto LABEL_22;
  }

  v20 = v0[109];
  v0[109] = v20 + 1;
  v21 = v0[69] + 48 * v20;
  v22 = *(v21 + 104);
  sub_10000C8CC((v21 + 80), v22);
  v23 = swift_task_alloc();
  v0[110] = v23;
  *v23 = v0;
  v23[1] = sub_10010C40C;
  v24 = v0[86];

  return MusicPlaylistAddable.tracks.getter(v24, v22);
}