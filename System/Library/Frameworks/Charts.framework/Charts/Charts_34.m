unint64_t sub_1AAF2F384()
{
  result = qword_1ED9B12E0[0];
  if (!qword_1ED9B12E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B12E0);
  }

  return result;
}

uint64_t sub_1AAF2F3D8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = (MEMORY[0x1E69E7CC0] + 32);
LABEL_3:
  v8 = *(v1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_34:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(v1 + 16);
        if (v3 == v10)
        {
          goto LABEL_30;
        }

        if (v3 >= v10)
        {
          goto LABEL_34;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = v9 + 16 * v11;
        v13 = *(v12 + 40);
        v29 = *(v12 + 32);
        if (v2)
        {

          v14 = v5;
          v15 = __OFSUB__(v2--, 1);
          if (v15)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v16 = *(v5 + 3);
          if (((v16 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_37;
          }

          v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
          if (v17 <= 1)
          {
            v18 = 1;
          }

          else
          {
            v18 = v17;
          }

          sub_1AAD11570(0, &qword_1ED9B1188, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v14 = swift_allocObject();
          v19 = j__malloc_size(v14);
          v20 = v19 - 32;
          if (v19 < 32)
          {
            v20 = v19 - 17;
          }

          v21 = v20 >> 4;
          *(v14 + 2) = v18;
          *(v14 + 3) = 2 * (v20 >> 4);
          v22 = v14 + 32;
          v23 = *(v5 + 3) >> 1;
          v6 = &v14[16 * v23 + 32];
          v24 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;
          if (*(v5 + 2))
          {
            v25 = v5 + 32;
            if (v14 != v5 || v22 >= &v25[16 * v23])
            {
              memmove(v22, v25, 16 * v23);
            }

            *(v5 + 2) = 0;
          }

          else
          {
          }

          v15 = __OFSUB__(v24, 1);
          v2 = v24 - 1;
          if (v15)
          {
            goto LABEL_36;
          }
        }

        ++v11;
        *v6 = v29;
        *(v6 + 1) = v13;
        v6 += 16;
        v5 = v14;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_30:

  v26 = *(v5 + 3);
  if (v26 < 2)
  {
    return v5;
  }

  v27 = v26 >> 1;
  v15 = __OFSUB__(v27, v2);
  v28 = v27 - v2;
  if (!v15)
  {
    *(v5 + 2) = v28;
    return v5;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1AAF2F604(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = (MEMORY[0x1E69E7CC0] + 32);
LABEL_3:
  v8 = *(v1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_31:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(v1 + 16);
        if (v3 == v10)
        {
          goto LABEL_27;
        }

        if (v3 >= v10)
        {
          goto LABEL_31;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = *(v9 + 8 * v11 + 32);
        if (!v2)
        {
          v13 = v5[3];
          if (((v13 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_34;
          }

          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          if (v14 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          sub_1AAD11570(0, &qword_1ED9B28C0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
          v16 = swift_allocObject();
          v17 = j__malloc_size(v16);
          v18 = v17 - 32;
          if (v17 < 32)
          {
            v18 = v17 - 25;
          }

          v19 = v18 >> 3;
          v16[2] = v15;
          v16[3] = 2 * (v18 >> 3);
          v20 = (v16 + 4);
          v21 = v5[3] >> 1;
          if (v5[2])
          {
            v22 = v5 + 4;
            if (v16 != v5 || v20 >= v22 + 8 * v21)
            {
              v23 = v18 >> 3;
              memmove(v16 + 4, v22, 8 * v21);
              v19 = v23;
            }

            v5[2] = 0;
          }

          v6 = (v20 + 8 * v21);
          v2 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

          v5 = v16;
        }

        v24 = __OFSUB__(v2--, 1);
        if (v24)
        {
          goto LABEL_33;
        }

        ++v11;
        *v6++ = v12;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_27:

  v25 = v5[3];
  if (v25 < 2)
  {
    return v5;
  }

  v26 = v25 >> 1;
  v24 = __OFSUB__(v26, v2);
  v27 = v26 - v2;
  if (!v24)
  {
    v5[2] = v27;
    return v5;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1AAF2F80C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v6)
  {
    sub_1AAD14950(0, &qword_1EB423018, &qword_1EB423020);
    v7 = swift_allocObject();
    result = j__malloc_size(v7);
    v9 = result - 32;
    if (result < 32)
    {
      v9 = result - 17;
    }

    v10 = v9 >> 4;
    v7[2] = v6;
    v7[3] = 2 * v10;
    v11 = v10 & 0x7FFFFFFFFFFFFFFFLL;
    v12 = v7 + 4;
    if (v5 >= v4)
    {
      v13 = v4;
    }

    else
    {
      v13 = v5;
    }

    if (v13 >= v6 - 1)
    {
      v13 = v6 - 1;
    }

    if (v13 > 3)
    {
      v17 = v13 + 1;
      v18 = v17 & 3;
      if ((v17 & 3) == 0)
      {
        v18 = 4;
      }

      v14 = v17 - v18;
      v12 += 2 * v14;
      v19 = (a1 + 48);
      v20 = (v7 + 8);
      v21 = a2 + 48;
      v22 = 0uLL;
      v23 = v11;
      v24.i64[0] = -1;
      v24.i64[1] = -1;
      v25 = v14;
      do
      {
        v26 = v20 - 4;
        v56.val[0] = v19[-1].val[1];
        v57 = *v19;
        v56.val[1] = *(v21 - 16);
        vst2q_f64(v26, v56);
        vst2q_f64(v20, v57);
        v23 = vaddq_s64(v23, v24);
        v22 = vaddq_s64(v22, v24);
        ++v19;
        v20 += 8;
        v21 += 32;
        v25 -= 4;
      }

      while (v25);
      v11 = vaddvq_s64(vpaddq_s64(v23, v22));
    }

    else
    {
      v14 = 0;
    }

    v27 = 0;
    v28 = v6 - v14;
    v29 = 8 * v14 + 32;
    v30 = a2 + v29;
    v31 = a1 + v29;
    v32 = v5 - v14;
    v33 = v4 - v14;
    do
    {
      if (v33 == v27)
      {
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      if (v32 == v27)
      {
        goto LABEL_51;
      }

      v34 = *(v30 + 8 * v27);
      *v12 = *(v31 + 8 * v27);
      v12[1] = v34;
      v12 += 2;
      ++v27;
    }

    while (v28 != v27);
    v16 = v11 - v27;
    if (v4 <= v5)
    {
      goto LABEL_46;
    }

    goto LABEL_26;
  }

  v7 = MEMORY[0x1E69E7CC0];
  v15 = *(MEMORY[0x1E69E7CC0] + 24);

  v12 = v7 + 4;
  v16 = v15 >> 1;
  if (v4 > v5)
  {
LABEL_26:
    v35 = a1 + 32;
    v36 = a2 + 32;
    v55 = a2 + 32;
    while (v6 < v4)
    {
      v37 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_53;
      }

      if (v5 == v6)
      {
        goto LABEL_46;
      }

      if (v6 >= v5)
      {
        goto LABEL_54;
      }

      v38 = *(v35 + 8 * v6);
      v39 = *(v36 + 8 * v6);
      if (!v16)
      {
        v40 = v7[3];
        if (((v40 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_56;
        }

        v41 = v35;
        v42 = v40 & 0xFFFFFFFFFFFFFFFELL;
        if (v42 <= 1)
        {
          v43 = 1;
        }

        else
        {
          v43 = v42;
        }

        sub_1AAD14950(0, &qword_1EB423018, &qword_1EB423020);
        v44 = swift_allocObject();
        v45 = j__malloc_size(v44);
        v46 = v45 - 32;
        if (v45 < 32)
        {
          v46 = v45 - 17;
        }

        v47 = v46 >> 4;
        v44[2] = v43;
        v44[3] = 2 * (v46 >> 4);
        v48 = (v44 + 4);
        v49 = v7[3] >> 1;
        if (v7[2])
        {
          v50 = v7 + 4;
          if (v44 != v7 || v48 >= v50 + 16 * v49)
          {
            memmove(v44 + 4, v50, 16 * v49);
          }

          v7[2] = 0;
        }

        v12 = (v48 + 16 * v49);
        v16 = (v47 & 0x7FFFFFFFFFFFFFFFLL) - v49;

        v7 = v44;
        v35 = v41;
        v36 = v55;
      }

      v51 = __OFSUB__(v16--, 1);
      if (v51)
      {
        goto LABEL_55;
      }

      *v12 = v38;
      v12[1] = v39;
      v12 += 2;
      ++v6;
      if (v37 == v4)
      {
        goto LABEL_46;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_46:
  v52 = v7[3];
  if (v52 < 2)
  {
    return v7;
  }

  v53 = v52 >> 1;
  v51 = __OFSUB__(v53, v16);
  v54 = v53 - v16;
  if (!v51)
  {
    v7[2] = v54;
    return v7;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_1AAF2FB40(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1AADAA0A4(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_1AAF300D8((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 2;
        v19 = v18 >= v17;
        ++v16;
        v17 = v18;
        if ((((v10 < v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AAD68568(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_1AAD68568((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_1AAF300D8((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1AAF300D8(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 2;
    v5 -= 2;
    v18 = v14;
    do
    {
      v19 = v5 + 2;
      v20 = *(v18 - 2);
      v18 -= 2;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 2, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_1AAF3032C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  *(a6 + *(type metadata accessor for VisualMapper() + 36)) = a5;
  type metadata accessor for VisualMapper.Mapping();

  return swift_storeEnumTagMultiPayload();
}

void sub_1AAF303E4(void *a1@<X8>)
{
  sub_1AACED220(v1, &v3);
  type metadata accessor for TypedVectorizedProperties();
  if ((swift_dynamicCast() & 1) == 0)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 2;
    bzero(a1 + 4, 0x2A9uLL);
  }
}

void *sub_1AAF30464@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for TypedVectorizedProperties();
  v4 = swift_allocObject();
  *a2 = v4;
  v5 = (v4 + 16);

  return memcpy(v5, a1, 0x2C9uLL);
}

__n128 sub_1AAF304C8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11)
{
  v11 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v11;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = *(a1 + 48);
  v12 = *(a2 + 16);
  *(a9 + 56) = *a2;
  *(a9 + 72) = v12;
  *(a9 + 88) = *(a2 + 32);
  *(a9 + 104) = *(a2 + 48);
  v13 = *a3;
  v14 = a3[1];
  *(a9 + 169) = *(a3 + 57);
  v15 = a3[3];
  *(a9 + 144) = a3[2];
  *(a9 + 160) = v15;
  *(a9 + 112) = v13;
  *(a9 + 128) = v14;
  v16 = *a4;
  v17 = a4[1];
  *(a9 + 249) = *(a4 + 57);
  v18 = a4[3];
  *(a9 + 224) = a4[2];
  *(a9 + 240) = v18;
  *(a9 + 192) = v16;
  *(a9 + 208) = v17;
  v19 = *a5;
  v20 = a5[1];
  v21 = a5[2];
  *(a9 + 320) = *(a5 + 48);
  *(a9 + 288) = v20;
  *(a9 + 304) = v21;
  *(a9 + 272) = v19;
  v22 = *a6;
  v23 = a6[1];
  v24 = a6[3];
  *(a9 + 360) = a6[2];
  *(a9 + 376) = v24;
  *(a9 + 328) = v22;
  *(a9 + 344) = v23;
  v25 = a6[4];
  v26 = a6[5];
  v27 = a6[6];
  v28 = a6[7];
  *(a9 + 456) = *(a6 + 128);
  *(a9 + 424) = v27;
  *(a9 + 440) = v28;
  *(a9 + 392) = v25;
  *(a9 + 408) = v26;
  v29 = *(a7 + 16);
  *(a9 + 464) = *a7;
  *(a9 + 480) = v29;
  *(a9 + 496) = *(a7 + 32);
  *(a9 + 512) = *(a7 + 48);
  v30 = *(a8 + 16);
  *(a9 + 520) = *a8;
  *(a9 + 536) = v30;
  *(a9 + 552) = *(a8 + 32);
  *(a9 + 568) = *(a8 + 48);
  v31 = *a10;
  v32 = a10[1];
  v33 = a10[2];
  v34 = a10[3];
  *(a9 + 640) = *(a10 + 64);
  *(a9 + 608) = v33;
  *(a9 + 624) = v34;
  *(a9 + 576) = v31;
  *(a9 + 592) = v32;
  result = *a11;
  v36 = *(a11 + 16);
  v37 = *(a11 + 32);
  v38 = *(a11 + 48);
  *(a9 + 712) = *(a11 + 64);
  *(a9 + 680) = v37;
  *(a9 + 696) = v38;
  *(a9 + 648) = result;
  *(a9 + 664) = v36;
  return result;
}

uint64_t sub_1AAF305E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v57 = a3;
  v60 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v47 = v12;
  v48 = v11;
  v58 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v13;
  v61 = type metadata accessor for PlottableProjection();
  v14 = *(v61 - 8);
  v46 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v56 = &v42 - v15;
  v16 = type metadata accessor for AnyConcreteScale();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v42 - v19;
  v62 = a4;
  v20 = type metadata accessor for VisualMapper.Mapping();
  v59 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = (&v42 - v22);
  v24 = *a1;
  v26 = *(a1 + 16);
  v27 = *(a1 + 24);
  v52 = *(a1 + 8);
  v25 = v52;
  v53 = v24;
  *a6 = v24;
  a6[1] = v25;
  v51 = v26;
  a6[2] = v26;
  a6[3] = v27;
  v55 = v27;
  if ((*(v17 + 48))(a2, 1, v16, v21) == 1)
  {
    sub_1AACD7304(v53, v52, v51);
    v28 = *(v14 + 8);

    v28(a1, v61);
    (v60[4])(v23, v57, a5);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v50 = a5;
    v29 = *(v17 + 32);
    v29(v54, a2, v16);
    v44 = *(v14 + 32);
    v44(v56, a1, v61);
    v45 = v20;
    v30 = v60 + 4;
    v43 = v60[4];
    v43(v58, v57, v50);
    v31 = (*(v17 + 80) + 48) & ~*(v17 + 80);
    v32 = (v18 + *(v14 + 80) + v31) & ~*(v14 + 80);
    v33 = *(v30 + 48);
    v60 = a6;
    v34 = (v46 + v33 + v32) & ~v33;
    v35 = swift_allocObject();
    v36 = v50;
    *(v35 + 2) = v62;
    *(v35 + 3) = v36;
    v37 = v49;
    *(v35 + 4) = v48;
    *(v35 + 5) = v37;
    v29(v35 + v31, v54, v16);
    v38 = v50;
    v44(v35 + v32, v56, v61);
    v39 = v35 + v34;
    a6 = v60;
    v43(v39, v58, v38);
    v20 = v45;
    *v23 = sub_1AAF3A408;
    v23[1] = v35;
    swift_storeEnumTagMultiPayload();
    sub_1AACD7304(v53, v52, v51);
  }

  v40 = type metadata accessor for VisualMapper();
  return (*(v59 + 32))(a6 + *(v40 + 36), v23, v20);
}

uint64_t sub_1AAF30A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a3;
  v25 = a4;
  v23 = a2;
  v7 = type metadata accessor for PlottableProjection();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v14 = *(v8 + 32);
  (v14)(&v20 - v10, a1, v7, v9);
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v17 = v24;
  *(v16 + 2) = v23;
  *(v16 + 3) = v17;
  *(v16 + 4) = v25;
  v14(&v16[v15], v11, v7);
  v18 = v21;
  sub_1AACD7304(v12, v13, v21);

  *a5 = v12;
  *(a5 + 8) = v13;
  *(a5 + 16) = v18;
  *(a5 + 24) = result;
  *(a5 + 32) = sub_1AAF3AD20;
  *(a5 + 40) = v16;
  *(a5 + 104) = 2;
  return result;
}

__n128 sub_1AAF30C04@<Q0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  *&v6[7] = *a4;
  *&v6[39] = a4[2];
  *&v6[23] = a4[1];
  *&v6[87] = a4[5];
  *&v6[71] = a4[4];
  *&v6[55] = a4[3];
  *&v6[96] = *(a4 + 89);
  *(a5 + 17) = *v6;
  *(a5 + 49) = *&v6[32];
  result = *&v6[80];
  *(a5 + 113) = *&v6[96];
  *(a5 + 97) = *&v6[80];
  *(a5 + 81) = *&v6[64];
  *(a5 + 65) = *&v6[48];
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 33) = *&v6[16];
  return result;
}

uint64_t sub_1AAF30C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a6;
  *(result + 24) = a5;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = sub_1AAF3A578;
  *(a7 + 40) = result;
  *(a7 + 48) = 2;
  return result;
}

uint64_t sub_1AAF30D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a1;
  v44 = a6;
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PlottableProjection.Storage();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - v15;
  v45 = a5;
  v17 = type metadata accessor for PlottableProjection();
  (*(v14 + 16))(v16, a2 + *(v17 + 44), v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v31 = *a2;
      v30 = *(a2 + 8);
      v32 = *(a2 + 16);
      v33 = *(a2 + 24);
      sub_1AACD7304(*a2, v30, v32);

      v42 = v12;
      v34 = v43;
      swift_getAtKeyPath();

      (*(*(v17 - 8) + 8))(a2, v17);
      (*(*(a4 - 8) + 8))(v34, a4);
      v24 = v44;
      v25 = v31;
      v26 = v30;
      v27 = v32;
      v28 = v33;
      v29 = v42;
      return sub_1AACD6EC4(v25, v26, v27, v28, v29, a3, v24);
    }

    if (EnumCaseMultiPayload == 3)
    {
      (*(v14 + 8))(v16, v13);
    }

    else
    {

      sub_1AAF90774();
      v38 = sub_1AAF8CB94();
      v39 = sub_1AAF8CBA4();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v41 = *(TupleTypeMetadata3 + 48);
      (*(*(v39 - 8) + 8))(&v16[*(TupleTypeMetadata3 + 64)], v39);
      (*(*(v38 - 8) + 8))(&v16[v41], v38);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(*(a4 - 8) + 8))(v43, a4);
      (*(v10 + 32))(v12, v16, a3);
      v19 = *a2;
      v20 = *(a2 + 8);
      v21 = *(a2 + 16);
      v22 = *(a2 + 24);
      sub_1AACD7304(*a2, v20, v21);
      v23 = *(*(v17 - 8) + 8);

      v23(a2, v17);
      v24 = v44;
      v25 = v19;
      v26 = v20;
      v27 = v21;
      v28 = v22;
      v29 = v12;
      return sub_1AACD6EC4(v25, v26, v27, v28, v29, a3, v24);
    }

    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v37 = *(v10 + 8);
    v37(&v16[*(TupleTypeMetadata2 + 48)], a3);
    v37(v16, a3);
  }

  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAF311A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v15 = swift_allocObject();
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  *(v15 + 4) = a6;
  *(v15 + 5) = a7;
  *(v15 + 6) = a2;
  *(v15 + 7) = a3;
  v16 = type metadata accessor for Vectorizer();
  v17 = (a8 + *(v16 + 36));
  *v17 = sub_1AAF3ACC0;
  v17[1] = v15;
  v18 = swift_allocObject();
  *(v18 + 2) = a4;
  *(v18 + 3) = a5;
  *(v18 + 4) = a6;
  *(v18 + 5) = a7;
  *(v18 + 6) = a2;
  *(v18 + 7) = a3;
  v19 = (a8 + *(v16 + 40));
  *v19 = sub_1AAF3ACF0;
  v19[1] = v18;
}

uint64_t sub_1AAF312D4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a2 + 1);
  v3 = *(a2 + 2);
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  v7 = *(a2 + 6);
  v8 = *(a2 + 7);
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  v11 = *(a2 + 10);
  v12 = *(a2 + 11);
  v13 = a2[96];
  v14 = *(a2 + 13);
  v15 = a2[112];
  if (*a2 <= 1u)
  {
    v22 = *(a2 + 5);
    v23 = *(a2 + 6);
    v24 = *(a2 + 7);
    v25 = *(a2 + 8);
    v21 = a1;
    v16 = *(a2 + 13);
    v17 = v15;
LABEL_5:
    v18 = sub_1AAF31474(a1, v16, v17);
    sub_1AAF3ACA4(v4, v3, v6, v5, v22, v23, v24, v25, v10, v11, v12, v13);
    sub_1AAD31A5C(v14, v15);
    (*(*(a3 - 8) + 8))(v21);
    return *&v18;
  }

  if (*a2 == 2)
  {
    v21 = a1;
    v22 = *(a2 + 5);
    v16 = *(a2 + 13);
    v17 = v15;
    v24 = v8;
    v25 = v9;
    v23 = v7;
    goto LABEL_5;
  }

  sub_1AAF3ACA4(v4, v3, v6, v5, *(a2 + 5), v7, v8, v9, v10, v11, v12, a2[96]);
  sub_1AAD31A5C(v14, v15);
  (*(*(a3 - 8) + 8))(a1);
  return 0;
}

double sub_1AAF31474(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return *&a2;
  }

  swift_getAtKeyPath();
  sub_1AAD31A5C(a2, 1);
  return v5;
}

uint64_t sub_1AAF314E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for XYRenderer();
  v9 = v8[19];
  type metadata accessor for VectorizedModifiers();
  v10 = swift_allocObject();
  v10[1] = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  v10[4] = 0u;
  v10[5] = 0u;
  v10[6] = 0u;
  v10[7] = 0u;
  v10[8] = 0u;
  v10[9] = 0u;
  v10[10] = 0u;
  v10[11] = 0u;
  v10[12] = 0u;
  v10[13] = 0u;
  v10[14] = 0u;
  *(a5 + v9) = v10;
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v11 = v8[17];
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for BoundingSectionSpecification();
  (*(*(v12 - 8) + 32))(a5 + v11, a2, v12);
  v13 = v8[18];
  v14 = type metadata accessor for BoundingSectionSpecification();
  return (*(*(v14 - 8) + 32))(a5 + v13, a3, v14);
}

uint64_t sub_1AAF31694@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  swift_getAtKeyPath();
  result = sub_1AAF8DA44();
  *a2 = result;
  return result;
}

uint64_t sub_1AAF31754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v35 = a4;
  v36 = a3;
  v37 = a1;
  v38 = a2;
  v39 = a9;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PlottableProjection();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v32 - v18);
  v20 = sub_1AAF8FE74();
  v33 = *(v20 - 8);
  v34 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v32 - v22;
  (*(v17 + 16))(v19, v36, v16, v21);
  (*(v13 + 16))(v15, v37, a5);
  sub_1AAE7A6D8(v19, v15, a5, a7, a8, &v40);
  v24 = v43;
  v25 = v44;
  v26 = v45;
  v27 = v42;
  v47 = v40;
  v48 = v41;
  if (v45 < 0)
  {
    sub_1AAD6E0DC(&v47);
    v46 = v27;
    sub_1AAF3A1F0(&v46, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    *&v24 = (*&v24 + *&v25) * 0.5;
    v26 &= 1u;
    *&v25 = 0.0;
  }

  else
  {
    sub_1AACCAE10(v43, v44, v45);
    sub_1AAD6E0DC(&v47);
    v46 = v27;
    sub_1AAF3A1F0(&v46, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AAD0E818(v24, v25, v26);
  }

  v28 = type metadata accessor for AnyConcreteScale();
  sub_1AAE05368(v24, v25, v26, v28, v23);
  sub_1AACCA728(v24, v25, v26);
  v29 = *(a6 - 8);
  v30 = *(v29 + 48);
  if (v30(v23, 1, a6) != 1)
  {
    return (*(v29 + 32))(v39, v23, a6);
  }

  (*(v29 + 16))(v39, v35, a6);
  result = (v30)(v23, 1, a6);
  if (result != 1)
  {
    return (*(v33 + 8))(v23, v34);
  }

  return result;
}

__n128 sub_1AAF31B48@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PlottableProjection();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v22 - v17);
  (*(v19 + 16))(&v22 - v17, a2, v16);
  (*(v12 + 16))(v14, a1, a3);
  sub_1AAE7A6D8(v18, v14, a3, a4, a5, v23);
  v20 = v23[3];
  *(a6 + 32) = v23[2];
  *(a6 + 48) = v20;
  *(a6 + 64) = v24;
  result = v23[1];
  *a6 = v23[0];
  *(a6 + 16) = result;
  return result;
}

uint64_t sub_1AAF31D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 24);
  v8 = type metadata accessor for VisualMapper.Mapping();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v15 - v10);
  (*(v12 + 16))(&v15 - v10, v3 + *(a2 + 36), v8, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return (*(*(v7 - 8) + 32))(a3, v11, v7);
  }

  if (EnumCaseMultiPayload == 1)
  {
    swift_getAtKeyPath();
  }

  else
  {
    (*v11)(a1);
  }
}

uint64_t sub_1AAF31E68()
{
  v1 = type metadata accessor for SgVectorized(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for RulesRenderer(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PointsRenderer(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RectanglesRenderer(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD0F23C(v0, v15, type metadata accessor for AnyVectorizedRenderer.MarkRenderer);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1AAF3A780(v15, v6, type metadata accessor for RulesRenderer);
      v17 = *(v6 + 7);
      sub_1AACE34A8(v6, type metadata accessor for RulesRenderer);
    }

    else
    {
      v18 = swift_projectBox();
      sub_1AAD0F23C(v18, v3, type metadata accessor for SgVectorized);
      v17 = *v3;
      sub_1AACE34A8(v3, type metadata accessor for SgVectorized);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AAF3A780(v15, v9, type metadata accessor for PointsRenderer);
    v17 = *(v9 + 7);
    sub_1AACE34A8(v9, type metadata accessor for PointsRenderer);
  }

  else
  {
    sub_1AAF3A780(v15, v12, type metadata accessor for RectanglesRenderer);
    v17 = *(v12 + 7);
    sub_1AACE34A8(v12, type metadata accessor for RectanglesRenderer);
  }

  return v17;
}

uint64_t sub_1AAF3215C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for SgVectorized(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RulesRenderer(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RectanglesRenderer(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PointsRenderer(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD0F23C(v3, v20, type metadata accessor for AnyVectorizedRenderer.MarkRenderer);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1AAF3A780(v20, v11, type metadata accessor for RulesRenderer);
      sub_1AAF53A8C(a1, a2, &unk_1F1FCF620, MEMORY[0x1E69E7CC0]);
      return sub_1AACE34A8(v11, type metadata accessor for RulesRenderer);
    }

    else
    {
      v23 = swift_projectBox();
      sub_1AAD0F23C(v23, v8, type metadata accessor for SgVectorized);
      sub_1AAF544F4(a1, a2);
      sub_1AACE34A8(v8, type metadata accessor for SgVectorized);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AAF3A780(v20, v17, type metadata accessor for PointsRenderer);
    sub_1AAF5317C(a1, a2, &unk_1F1FCF5F8, MEMORY[0x1E69E7CC0]);
    return sub_1AACE34A8(v17, type metadata accessor for PointsRenderer);
  }

  else
  {
    sub_1AAF3A780(v20, v14, type metadata accessor for RectanglesRenderer);
    sub_1AAF54078(a1, a2);
    return sub_1AACE34A8(v14, type metadata accessor for RectanglesRenderer);
  }
}

double sub_1AAF324B0@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 169) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = 1;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 249) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 320) = -4;
  v2 = (a1 + 328);
  *(a1 + 304) = 0u;
  sub_1AAD3CF1C(v8);
  v3 = v8[7];
  *(a1 + 424) = v8[6];
  *(a1 + 440) = v3;
  *(a1 + 456) = v9;
  v4 = v8[3];
  *(a1 + 360) = v8[2];
  *(a1 + 376) = v4;
  v5 = v8[5];
  *(a1 + 392) = v8[4];
  *(a1 + 408) = v5;
  v6 = v8[1];
  *v2 = v8[0];
  *(a1 + 344) = v6;
  result = 0.0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  *(a1 + 488) = 1;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 1;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 1;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 672) = 1;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0;
  return result;
}

uint64_t sub_1AAF32744()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1AAF3A1F0(v0 + 16, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
  sub_1AAF3A1F0(v0 + 72, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, v1);
  sub_1AAF3A1F0(v0 + 128, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, v1);
  sub_1AAF3A1F0(v0 + 184, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, v1);

  return swift_deallocClassInstance();
}

uint64_t sub_1AAF3281C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF32870()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1AAF328B8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1AAF328EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 129))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1AAF32948(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_1AAF329D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAF32A20(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_1AAF32A8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 304))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1AAF32AE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1AAF32BC4()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v0 = type metadata accessor for BoundingSectionSpecification();
    if (v2 <= 0x3F)
    {
      v0 = type metadata accessor for BoundingSectionSpecification();
      if (v3 <= 0x3F)
      {
        type metadata accessor for VectorizedModifiers();
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_1AAF32CC4(int *a1, unsigned int a2, void *a3)
{
  v51 = a3[2];
  v4 = *(v51 - 8);
  v5 = *(a3[3] - 8);
  v6 = *(v4 + 84);
  v7 = *(v5 + 80);
  v8 = *(sub_1AAF8CB94() - 8);
  v9 = *(v8 + 80);
  v10 = *(sub_1AAF8CBA4() - 8);
  v11 = *(v10 + 80);
  v12 = v11 | v9;
  v13 = v11 | v9 | v7;
  v14 = v13 | 7;
  v15 = (v13 + 32) & ~(v13 | 7);
  v16 = *(v5 + 64);
  if (((v16 + v7) & ~v7) + v16 > v16)
  {
    v16 += (v16 + v7) & ~v7;
  }

  v17 = (*(v8 + 64) + v11 + ((v9 + 8) & ~v9)) & ~v11;
  v18 = *(v10 + 64);
  v19 = v17 + v18;
  if (v16 <= v17 + v18)
  {
    v20 = v17 + v18;
  }

  else
  {
    v20 = v16;
  }

  if (v20 <= 0x10)
  {
    v20 = 16;
  }

  v21 = v20 + v15;
  if (v21 + 1 > ((v21 + 1 + v14) & ~v14) + v21 + 1)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = ((v21 + 1 + v14) & ~v14) + v21 + 1;
  }

  v23 = (v21 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v22 <= v23 + 113)
  {
    v22 = v23 + 113;
  }

  v24 = v23 + 49;
  if (v22 > v24)
  {
    v24 = v22;
  }

  if (v24 <= 0x19)
  {
    v25 = 25;
  }

  else
  {
    v25 = v24;
  }

  v26 = *(a3[4] - 8);
  v27 = *(v26 + 80);
  v28 = v12 | v27;
  v29 = v28 | 7;
  v30 = (v28 + 32) & ~(v28 | 7);
  v31 = *(v26 + 64);
  if (((v31 + v27) & ~v27) + v31 > v31)
  {
    v31 += (v31 + v27) & ~v27;
  }

  if (v31 <= v19)
  {
    v31 = v19;
  }

  if (v31 <= 0x10)
  {
    v31 = 16;
  }

  v32 = v31 + v30;
  if (v32 + 1 > ((v32 + 1 + v29) & ~v29) + v32 + 1)
  {
    v33 = v32 + 1;
  }

  else
  {
    v33 = ((v32 + 1 + v29) & ~v29) + v32 + 1;
  }

  v34 = (v32 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v33 <= v34 + 113)
  {
    v33 = v34 + 113;
  }

  v35 = v34 + 49;
  if (v33 > v35)
  {
    v35 = v33;
  }

  if (v35 <= 0x19)
  {
    v36 = 25;
  }

  else
  {
    v36 = v35;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v37 = 0x7FFFFFFF;
  }

  else
  {
    v37 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v38 = *(v4 + 64) + v14;
  v39 = v25 + 1;
  if (v37 >= a2)
  {
    goto LABEL_60;
  }

  v40 = ((v36 + ((v39 + v29 + (v38 & ~v14)) & ~v29) + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  v41 = v40 & 0xFFFFFFF8;
  if ((v40 & 0xFFFFFFF8) != 0)
  {
    v42 = 2;
  }

  else
  {
    v42 = a2 - v37 + 1;
  }

  if (v42 >= 0x10000)
  {
    v43 = 4;
  }

  else
  {
    v43 = 2;
  }

  if (v42 < 0x100)
  {
    v43 = 1;
  }

  if (v42 >= 2)
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  if (v44 > 1)
  {
    if (v44 == 2)
    {
      v45 = *(a1 + v40);
      if (!v45)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v45 = *(a1 + v40);
      if (!v45)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    v47 = v45 - 1;
    if (v41)
    {
      v47 = 0;
      v48 = *a1;
    }

    else
    {
      v48 = 0;
    }

    return v37 + (v48 | v47) + 1;
  }

  if (v44)
  {
    v45 = *(a1 + v40);
    if (v45)
    {
      goto LABEL_57;
    }
  }

LABEL_60:
  if (v6 < 0x7FFFFFFF)
  {
    v50 = *((v36 + 1 + ((((a1 + v38) & ~v14) + v29 + v39) & ~v29) + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v50 >= 0xFFFFFFFF)
    {
      LODWORD(v50) = -1;
    }

    return (v50 + 1);
  }

  else
  {
    v49 = *(v4 + 48);

    return v49(a1, v6, v51);
  }
}

void sub_1AAF330F4(_DWORD *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v50 = *(a4[2] - 8);
  v6 = *(a4[3] - 8);
  v7 = *(v50 + 84);
  v8 = *(v6 + 80);
  v9 = *(sub_1AAF8CB94() - 8);
  v10 = *(v9 + 80);
  v11 = sub_1AAF8CBA4();
  v12 = v7;
  v13 = *(v11 - 8);
  v14 = *(v13 + 80);
  v15 = v14 | v10;
  v16 = v14 | v10 | v8;
  v17 = v16 | 7;
  v18 = (v16 + 32) & ~(v16 | 7);
  v19 = *(v6 + 64);
  if (((v19 + v8) & ~v8) + v19 > v19)
  {
    v19 += (v19 + v8) & ~v8;
  }

  v20 = (*(v9 + 64) + v14 + ((v10 + 8) & ~v10)) & ~v14;
  v21 = *(v13 + 64);
  v22 = v20 + v21;
  if (v19 <= v20 + v21)
  {
    v23 = v20 + v21;
  }

  else
  {
    v23 = v19;
  }

  if (v23 <= 0x10)
  {
    v23 = 16;
  }

  v24 = v23 + v18;
  if (v24 + 1 > ((v24 + 1 + v17) & ~v17) + v24 + 1)
  {
    v25 = v24 + 1;
  }

  else
  {
    v25 = ((v24 + 1 + v17) & ~v17) + v24 + 1;
  }

  v26 = (v24 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v25 <= v26 + 113)
  {
    v25 = v26 + 113;
  }

  v27 = v26 + 49;
  if (v25 <= v27)
  {
    v25 = v27;
  }

  v28 = *(a4[4] - 8);
  if (v25 <= 0x19)
  {
    v29 = 25;
  }

  else
  {
    v29 = v25;
  }

  v30 = *(v28 + 80);
  v31 = v15 | v30;
  v32 = v31 | 7;
  v33 = (v31 + 32) & ~(v31 | 7);
  v34 = *(v28 + 64);
  if (((v34 + v30) & ~v30) + v34 > v34)
  {
    v34 += (v34 + v30) & ~v30;
  }

  if (v34 <= v22)
  {
    v34 = v22;
  }

  if (v34 <= 0x10)
  {
    v34 = 16;
  }

  v35 = v34 + v33;
  if (v35 + 1 > ((v35 + 1 + v32) & ~v32) + v35 + 1)
  {
    v36 = v35 + 1;
  }

  else
  {
    v36 = ((v35 + 1 + v32) & ~v32) + v35 + 1;
  }

  v37 = (v35 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v36 <= v37 + 113)
  {
    v36 = v37 + 113;
  }

  v38 = v37 + 49;
  if (v36 > v38)
  {
    v38 = v36;
  }

  if (v38 <= 0x19)
  {
    v38 = 25;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v39 = 0x7FFFFFFF;
  }

  else
  {
    v39 = v7;
  }

  v40 = *(v50 + 64) + v17;
  v41 = ((v38 + ((v29 + 1 + v32 + (v40 & ~v17)) & ~v32) + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v39 >= a3)
  {
    v44 = 0;
  }

  else
  {
    if (((v38 + ((v29 + 1 + v32 + (v40 & ~v17)) & ~v32) + 8) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v42 = a3 - v39 + 1;
    }

    else
    {
      v42 = 2;
    }

    if (v42 >= 0x10000)
    {
      v43 = 4;
    }

    else
    {
      v43 = 2;
    }

    if (v42 < 0x100)
    {
      v43 = 1;
    }

    if (v42 >= 2)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }
  }

  if (a2 > v39)
  {
    if (((v38 + ((v29 + 1 + v32 + (v40 & ~v17)) & ~v32) + 8) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v45 = a2 - v39;
    }

    else
    {
      v45 = 1;
    }

    if (((v38 + ((v29 + 1 + v32 + (v40 & ~v17)) & ~v32) + 8) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v46 = ~v39 + a2;
      bzero(a1, v41);
      *a1 = v46;
    }

    if (v44 > 1)
    {
      if (v44 == 2)
      {
        *(a1 + v41) = v45;
      }

      else
      {
        *(a1 + v41) = v45;
      }
    }

    else if (v44)
    {
      *(a1 + v41) = v45;
    }

    return;
  }

  if (v44 > 1)
  {
    if (v44 != 2)
    {
      *(a1 + v41) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_67;
    }

    *(a1 + v41) = 0;
  }

  else if (v44)
  {
    *(a1 + v41) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_67;
  }

  if (!a2)
  {
    return;
  }

LABEL_67:
  if (v12 < 0x7FFFFFFF)
  {
    v48 = ((v38 + 1 + ((((a1 + v40) & ~v17) + v32 + v29 + 1) & ~v32) + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v49 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v49 = a2 - 1;
    }

    *v48 = v49;
  }

  else
  {
    v47 = *(v50 + 56);

    v47(a1);
  }
}

unint64_t sub_1AAF33574()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1AACFDCAC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAF33630(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (((v1 >> 1) & 0x3E) != 0)
  {
    return 64 - ((v1 >> 1) & 0x3E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAF33654(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAF33684(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a1;
  v7 = type metadata accessor for ConcreteScale();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = type metadata accessor for ConcreteScale();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = type metadata accessor for AnyConcreteScale();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  v17 = *(a3 + 76);
  v40 = v4;
  v41 = *(v4 + v17);

  swift_getAtKeyPath();

  (*(v14 + 16))(v16, v39, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v35;
    v19 = v16;
    v20 = v36;
    v21 = (*(v35 + 32))(v12, v19, v36);
    v39 = &v35;
    MEMORY[0x1EEE9AC00](v21);
    *(&v35 - 5) = *(a3 + 16);
    *(&v35 - 8) = *(a3 + 32);
    *(&v35 - 7) = a4;
    *(&v35 - 3) = *(a3 + 40);
    v22 = v40;
    *(&v35 - 4) = *(a3 + 56);
    *(&v35 - 3) = v22;
    *(&v35 - 2) = v12;
    v23 = MEMORY[0x1E69E6720];
    sub_1AAF3C2A4(0, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
    v24 = type metadata accessor for RepeatedValueCollection();
    sub_1AACD90D0(sub_1AAF3AB4C, (&v35 - 12), MEMORY[0x1E69E73E0], v24, v25, &v41);
    sub_1AAF3A1F0(v42, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, v23);
    (*(v18 + 8))(v12, v20);
  }

  else
  {
    v26 = v37;
    v27 = v16;
    v28 = v38;
    v29 = (*(v37 + 32))(v9, v27, v38);
    v39 = &v35;
    MEMORY[0x1EEE9AC00](v29);
    *(&v35 - 5) = *(a3 + 16);
    *(&v35 - 8) = *(a3 + 32);
    *(&v35 - 7) = a4;
    *(&v35 - 3) = *(a3 + 40);
    v30 = v40;
    *(&v35 - 4) = *(a3 + 56);
    *(&v35 - 3) = v30;
    *(&v35 - 2) = v9;
    v31 = MEMORY[0x1E69E6720];
    sub_1AAF3C2A4(0, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
    v32 = type metadata accessor for RepeatedValueCollection();
    sub_1AACD90D0(sub_1AAF3AB1C, (&v35 - 12), MEMORY[0x1E69E73E0], v32, v33, &v41);
    sub_1AAF3A1F0(v42, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, v31);
    (*(v26 + 8))(v9, v28);
  }

  return v41;
}

double sub_1AAF33B08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v10 = *(a1 + 8);
  sub_1AAF3A170(a2, v17, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  if (!v18)
  {
    sub_1AAF3A1F0(v17, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    goto LABEL_7;
  }

  v11 = *(a4 + 40);
  v12 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AAE9195C(AssociatedTypeWitness, &v19);
  sub_1AAF3A27C(v17);
  if (!*(&v20 + 1))
  {
LABEL_7:
    sub_1AAF3A1F0(&v19, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
    *(a5 + 48) = 0;
    result = 0.0;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    return result;
  }

  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  if (sub_1AAF3AC38(a3, v10))
  {
    sub_1AAE05C6C(&v23, v6, a3, v12, v11);
  }

  result = *&v23;
  v15 = v24;
  v16 = v25;
  *a5 = v23;
  *(a5 + 16) = v15;
  *(a5 + 32) = v16;
  *(a5 + 48) = v26;
  return result;
}

uint64_t sub_1AAF33CB4(uint64_t *a1, void *a2)
{
  AssociatedConformanceWitness = a1;
  v3 = *(*(*(a2[5] + 8) + 8) + 8);
  v4 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = a2[4];
  v67 = a2[7];
  v68 = v6;
  v66 = type metadata accessor for BoundingSectionSpecification();
  v54 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v7 = a2[3];
  v69 = a2;
  v8 = a2[6];
  v64 = v7;
  v65 = &v50 - v9;
  v63 = v8;
  v62 = type metadata accessor for BoundingSectionSpecification();
  v55 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v50 - v10;
  v72 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  v17 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v50 - v18;
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v3;
  v24 = v4;
  v71 = swift_getAssociatedTypeWitness();
  v51 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v50 - v25;
  v26 = *AssociatedConformanceWitness;
  v27 = AssociatedConformanceWitness[1];
  swift_beginAccess();
  v52 = v26;
  sub_1AAF3A138(v26 + 960, v77);
  if (sub_1AAF3AC38(0, v27) || sub_1AAF3AC38(1u, v27))
  {
    v50 = v27;
    (*(v20 + 16))(v23, v73, v24);
    sub_1AAF8F744();
    v28 = v52;
    swift_beginAccess();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1AAF8FE94();
    v58 = *(v72 + 48);
    v59 = v72 + 48;
    if (v58(v19, 1, AssociatedTypeWitness) != 1)
    {
      v33 = *(v72 + 32);
      v55 += 2;
      v56 = v33;
      v34 = (v72 + 16);
      v72 += 32;
      v53 = (v72 - 24);
      v54 += 2;
      v57 = v19;
      v33(v16, v19, AssociatedTypeWitness);
      while (1)
      {
        v36 = v69;
        v37 = v73;
        v38 = v61;
        (*v55)(v61, v73 + *(v69 + 17), v62);
        v39 = *v34;
        (*v34)(v13, v16, AssociatedTypeWitness);
        v40 = sub_1AAE7E33C(v38, v13, AssociatedTypeWitness, v64, v63, v81);
        v41 = v37 + *(v36 + 72);
        v42 = v65;
        (*v54)(v65, v41, v66, v40);
        v39(v13, v16, AssociatedTypeWitness);
        sub_1AAE7E33C(v42, v13, AssociatedTypeWitness, v68, v67, v82);
        if (*(v28 + 953) == 2)
        {
          if ((v84[6] = v81[6], v84[7] = v81[7], v84[8] = v81[8], v84[2] = v81[2], v84[3] = v81[3], v84[4] = v81[4], v84[5] = v81[5], v84[0] = v81[0], v84[1] = v81[1], v43 = sub_1AACDB99C(v84), v44 = sub_1AACD2C84(v84), ((1 << v43) & 0x32) == 0) && ((v45 = 0, ((1 << v43) & 5) == 0) || (v45 = 0, v46 = *(v44 + 48), v46 < 0) || v46 == 2) || (v83[6] = v82[6], v83[7] = v82[7], v83[8] = v82[8], v83[2] = v82[2], v83[3] = v82[3], v83[4] = v82[4], v83[5] = v82[5], v83[0] = v82[0], v83[1] = v82[1], v47 = sub_1AACDB99C(v83), v48 = sub_1AACD2C84(v83), v45 = 1, ((1 << v47) & 0x32) == 0) && (((1 << v47) & 5) == 0 || (v49 = *(v48 + 48), v49 < 0) || v49 == 2))
          {
            *(v28 + 953) = v45;
          }
        }

        sub_1AACD2E6C(v81, 0);
        sub_1AACD2E6C(v82, 1u);
        sub_1AADC7F60(v82);
        sub_1AADC7F60(v81);
        (*v53)(v16, AssociatedTypeWitness);
        v35 = v57;
        sub_1AAF8FE94();
        if (v58(v35, 1, AssociatedTypeWitness) == 1)
        {
          break;
        }

        v56(v16, v35, AssociatedTypeWitness);
      }
    }

    (*(v51 + 8))(v70, v71);
    v27 = v50;
  }

  v29 = v69;
  v30 = *(v73 + *(v69 + 19));
  v31 = v52;
  v74 = v52;
  v75 = v27;
  sub_1AAF33B08(&v74, v77, 5u, v69, v76);
  swift_beginAccess();
  sub_1AAF3A0A0(v76, v30 + 16, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  swift_endAccess();
  v74 = v31;
  v75 = v27;
  sub_1AAF33B08(&v74, &v78, 8u, v29, v76);
  swift_beginAccess();
  sub_1AAF3A0A0(v76, v30 + 72, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  swift_endAccess();
  v74 = v31;
  v75 = v27;
  sub_1AAF33B08(&v74, &v79, 6u, v29, v76);
  swift_beginAccess();
  sub_1AAF3A0A0(v76, v30 + 128, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  swift_endAccess();
  v74 = v31;
  v75 = v27;
  sub_1AAF33B08(&v74, &v80, 7u, v29, v76);
  sub_1AACF257C(v77);
  swift_beginAccess();
  sub_1AAF3A0A0(v76, v30 + 184, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  return swift_endAccess();
}

int *sub_1AAF34528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v12 = type metadata accessor for XYRenderer();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for XYRenderer.ResolvedKeyframe();
  *(a6 + result[17]) = a7;
  *(a6 + result[18]) = a2;
  *(a6 + result[19]) = a3;
  v14 = (a6 + result[20]);
  *v14 = a4;
  v14[1] = a5;
  return result;
}

uint64_t sub_1AAF3462C(uint64_t a1, void (**a2)(char *, __int128 *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7, uint64_t a8, uint64_t a9)
{
  v235 = a8;
  v230 = a2;
  v231 = a6;
  *&v256 = a4;
  v239 = a3;
  v241 = a1;
  v237 = a9;
  v11 = a7[5];
  v12 = *(*(*&v11 + 8) + 8);
  v13 = *(a7 + 2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v209 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v200 = &v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v247 = &v193 - v16;
  v267 = swift_getAssociatedTypeWitness();
  v232 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v267);
  v272 = &v193 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v240 = &v193 - v19;
  v224 = sub_1AAF8DE34();
  v226 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v220 = &v193 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v223 = &v193 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v238 = &v193 - v24;
  v229 = type metadata accessor for SgShapeStyle();
  MEMORY[0x1EEE9AC00](v229);
  v234 = &v193 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a7 + 3);
  v27 = *(a7 + 6);
  v28 = *(a7 + 7);
  v248 = *(a7 + 4);
  v249 = v27;
  *&v29 = v248;
  v255.f64[0] = v11;
  *(&v29 + 1) = v11;
  *&v30 = v13;
  v252 = v26;
  *(&v30 + 1) = v26;
  v291 = v30;
  v292 = v29;
  v293[0] = v27;
  v246 = v28;
  v293[1] = v28;
  v31 = type metadata accessor for XYRenderer.ResolvedKeyframe();
  v32 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v236 = &v193 - v33;
  v275 = v31;
  v266 = *(v31 - 1);
  MEMORY[0x1EEE9AC00](v34);
  v250 = &v193 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v274 = &v193 - v37;
  v195 = v38;
  MEMORY[0x1EEE9AC00](v39);
  v201 = &v193 - v40;
  v270 = v12;
  v265 = swift_getAssociatedTypeWitness();
  v208 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v264 = &v193 - v41;
  v225 = a7;
  v42 = sub_1AAF8FE74();
  v244 = *(v42 - 8);
  v245 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v254 = &v193 - v43;
  v271 = v13;
  v199 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v253 = &v193 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v206 = &v193 - v47;
  *&v268.f64[0] = type metadata accessor for SgVectorized(0);
  MEMORY[0x1EEE9AC00](*&v268.f64[0]);
  v49 = &v193 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for RulesRenderer(0);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v263 = (&v193 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = type metadata accessor for PointsRenderer(0);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v262 = (&v193 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for RectanglesRenderer(0);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v261 = (&v193 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v193 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for AnyVectorizedRenderer(0) - 8;
  MEMORY[0x1EEE9AC00](v59);
  *&v269.f64[0] = &v193 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x1E69E7CC0];
  *&v291 = MEMORY[0x1E69E7CC0];
  v64 = *(a5 + 16);
  v251 = a5;
  if (v64)
  {
    v65 = a5 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v66 = *(v61 + 72);
    v260 = v49;
    v259 = (v49 + 8);
    v258 = v66;
    while (1)
    {
      v67 = *&v269.f64[0];
      sub_1AAD0F23C(v65, *&v269.f64[0], type metadata accessor for AnyVectorizedRenderer);
      sub_1AAF3A780(v67, v58, type metadata accessor for AnyVectorizedRenderer.MarkRenderer);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v69 = v263;
        sub_1AAF3A780(v58, v263, type metadata accessor for RulesRenderer);
        v70 = v69[6];

        v71 = type metadata accessor for RulesRenderer;
        goto LABEL_11;
      }

      v72 = swift_projectBox();
      v73 = v63;
      v74 = v58;
      v75 = v56;
      v76 = v260;
      sub_1AAD0F23C(v72, v260, type metadata accessor for SgVectorized);
      v77 = *(v259 + *(*&v268.f64[0] + 36));

      v78 = v76;
      v56 = v75;
      v58 = v74;
      v63 = v73;
      v66 = v258;
      sub_1AACE34A8(v78, type metadata accessor for SgVectorized);

      if (v77)
      {
LABEL_14:
        MEMORY[0x1AC598430](v60);
        if (*((v291 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v291 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AAF8F874();
        }

        v60 = sub_1AAF8F8C4();
        v63 = v291;
      }

LABEL_4:
      v65 += v66;
      if (!--v64)
      {
        goto LABEL_16;
      }
    }

    if (EnumCaseMultiPayload)
    {
      v69 = v262;
      sub_1AAF3A780(v58, v262, type metadata accessor for PointsRenderer);
      v70 = v69[6];

      v71 = type metadata accessor for PointsRenderer;
    }

    else
    {
      v69 = v261;
      sub_1AAF3A780(v58, v261, type metadata accessor for RectanglesRenderer);
      v70 = v69[6];

      v71 = type metadata accessor for RectanglesRenderer;
    }

LABEL_11:
    v60 = sub_1AACE34A8(v69, v71);
    if (v70)
    {
      goto LABEL_14;
    }

    goto LABEL_4;
  }

LABEL_16:
  *&v269.f64[0] = v63;
  *&v291 = v251;
  MEMORY[0x1EEE9AC00](v60);
  v79 = v252;
  *(&v193 - 8) = v271;
  *(&v193 - 7) = v79;
  v80 = v235;
  *(&v193 - 6) = v248;
  *(&v193 - 5) = v80;
  v81 = v249;
  *(&v193 - 4) = *&v255.f64[0];
  *(&v193 - 3) = v81;
  v191 = v246;
  v192 = v237;
  sub_1AAD04B78(0, &qword_1ED9B2A80, type metadata accessor for AnyVectorizedRenderer, MEMORY[0x1E69E62F8]);
  sub_1AAF3A81C();
  v82 = v225;
  v83 = 0;
  v84 = sub_1AAF8F764();
  v85 = *(v256 + 16);
  v86 = sub_1AAF8F8D4();
  v87 = AssociatedTypeWitness;
  v88 = v254;
  if (v85 != v86)
  {
    goto LABEL_88;
  }

  if (*&v269.f64[0] >> 62)
  {
    goto LABEL_87;
  }

  if (*((*&v269.f64[0] & 0xFFFFFFFFFFFFFF8) + 0x10) != v85)
  {
LABEL_88:
    LODWORD(v192) = 0;
    v191 = 362;
    goto LABEL_93;
  }

LABEL_19:
  *&v268.f64[0] = v83;
  *&v291 = v84;
  v89 = sub_1AAF8F914();
  swift_getWitnessTable();
  v262 = v89;
  sub_1AAF8F4F4();
  v90 = *(v82 - 8);
  if ((*(v90 + 48))(v88, 1, v82) == 1)
  {
    goto LABEL_92;
  }

  v91 = v199;
  v92 = v253;
  v93 = v271;
  (*(v199 + 16))(v253, v88, v271);
  (*(v90 + 8))(v88, v82);
  (*(v91 + 32))(v206, v92, v93);
  sub_1AAF8FB74();
  v263 = *(swift_getAssociatedConformanceWitness() + 8);
  v233 = sub_1AAF8F934();
  v94 = type metadata accessor for ChartContentRenderContext.Environment(0);
  sub_1AAF3A170(v239 + *(v94 + 108), &v281, &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  v260 = v94;
  v95 = v84;
  if (*(&v282[0] + 1))
  {
    sub_1AAF303E4(&v291);
    sub_1AAE0FC7C(&v281);
  }

  else
  {
    sub_1AAF3A1F0(&v281, &qword_1ED9B3A10, &type metadata for VectorizedProperties, MEMORY[0x1E69E6720]);
    v291 = 0uLL;
    *&v292 = 0;
    *(&v292 + 1) = 2;
    bzero(v293, 0x2A9uLL);
  }

  v96 = type metadata accessor for TypedVectorizedProperties();
  v97 = sub_1AAF8FE74();
  v98 = *(v97 - 8);
  v99 = *(v98 + 16);
  v99(&v281, &v291, v97);
  if (*(&v282[0] + 1) == 2)
  {
    (*(v98 + 8))(&v281, v97);
    v204 = 0;
    v205 = 0;
    v212 = 0;
    v213 = 0;
    v203 = 0;
    v210 = 1;
    v211 = 0;
  }

  else
  {
    v204 = v286;
    v205 = v284;
    v212 = v288;
    v213 = v285;
    v210 = v287;
    v211 = v289;
    v203 = v290;
    sub_1AAF3A9A0(v284, v285, v286, v287, v288, v289, v290);
    (*(*(v96 - 8) + 8))(&v281, v96);
  }

  v99(&v281, &v291, v97);
  v197 = v98;
  v198 = v97;
  if (*(&v282[0] + 1) == 2)
  {
    (*(v98 + 8))(&v281, v97);
    v244 = 0;
    v245 = 0;
    v253 = 0;
    v254 = 0;
    v243 = 0;
    v242 = 0;
    v251 = 1;
  }

  else
  {
    v244 = *(&v281 + 1);
    v245 = v281;
    v253 = *&v282[1];
    v251 = *(&v282[0] + 1);
    v254 = *&v282[0];
    v243 = *(&v282[1] + 1);
    v242 = v283;
    sub_1AAD3B168(v281, *(&v281 + 1), v282[0], *(&v282[0] + 1), *&v282[1], *(&v282[1] + 1), v283);
    (*(*(v96 - 8) + 8))(&v281, v96);
  }

  v261 = v95;
  v294 = v95;
  v88 = v262;
  WitnessTable = swift_getWitnessTable();
  v101 = MEMORY[0x1AC598390](&v281, v88, WitnessTable);
  v294 = v281;
  MEMORY[0x1EEE9AC00](v101);
  v102 = v252;
  *(&v193 - 12) = v271;
  *(&v193 - 11) = v102;
  v103 = v249;
  v104 = v235;
  *(&v193 - 10) = v248;
  *(&v193 - 9) = v104;
  v105 = v255.f64[0];
  *(&v193 - 8) = *&v255.f64[0];
  *(&v193 - 7) = v103;
  v106 = v237;
  *(&v193 - 6) = v246;
  *(&v193 - 5) = v106;
  v107 = v257.f64[0];
  *(&v193 - 4) = *&v269.f64[0];
  *(&v193 - 3) = v107;
  MEMORY[0x1EEE9AC00](*&v105);
  *(&v193 - 10) = v109;
  *(&v193 - 9) = v108;
  *(&v193 - 8) = v110;
  *(&v193 - 7) = v111;
  *(&v193 - 6) = v112;
  *(&v193 - 5) = v113;
  *(&v193 - 4) = v114;
  *(&v193 - 3) = v115;
  v191 = sub_1AAF3A8A4;
  v192 = v116;
  v117 = sub_1AAF90354();
  v280 = swift_getWitnessTable();
  v118 = swift_getWitnessTable();
  v119 = v275;
  v121 = sub_1AACB00E0(sub_1AAF3A8E4, (&v193 - 12), v117, v275, MEMORY[0x1E69E73E0], v118, MEMORY[0x1E69E7410], v120);

  v246 = v121;
  *&v281 = v121;
  sub_1AAF8F914();
  swift_getWitnessTable();
  v122 = v236;
  sub_1AAF8F4F4();
  v123 = v266;
  if ((*(v266 + 48))(v122, 1, v119) == 1)
  {
    goto LABEL_91;
  }

  v124 = *(v123 + 32);
  v262 = (v123 + 32);
  v261 = v124;
  (v124)(v201, v122, v275);
  sub_1AAF8DE44();
  sub_1AAF8DED4();
  v125 = sub_1AAF8DEA4();
  v126 = *(v239 + *(v260 + 13));
  sub_1AAF3A170(v239, &v281, qword_1ED9B52F0, &type metadata for SgShapeStyle.Shading);
  v84 = v267;
  v196 = v125;
  if (BYTE8(v282[1]) == 255)
  {
    *(&v279[0] + 1) = MEMORY[0x1E697E790];
    *&v279[1] = MEMORY[0x1E697E788];
    BYTE8(v279[1]) = 1;
  }

  else
  {
    v278 = v281;
    v279[0] = v282[0];
    *(v279 + 9) = *(v282 + 9);
  }

  v127 = v229;
  v83 = v246;
  v128 = v234;
  sub_1AACAD248(&v278, v234);
  v129 = v127[8];
  v130 = sub_1AAF8F154();
  v131 = *(v130 - 8);
  v132 = *(v131 + 56);
  v218 = v130;
  v219 = v129;
  v216 = v131 + 56;
  v217 = v132;
  (v132)(v128 + v129, 1, 1);
  *(v128 + 41) = 0;
  *(v128 + 48) = 0u;
  v215 = (v128 + 48);
  *(v128 + 64) = 0u;
  *(v128 + 80) = 0;
  *(v128 + 88) = v126;
  v133 = v128 + v127[9];
  *v133 = 0;
  v214 = v133;
  *(v133 + 8) = 0;
  memset(v295, 0, sizeof(v295));
  v296 = 1;
  v82 = v223;
  sub_1AAF2E4A4(v128, v295, v223);
  sub_1AAF8DE74();
  v134 = v226;
  v221 = *(v226 + 8);
  v222 = v226 + 8;
  v221(v82, v224);
  v135 = v233;
  if (!sub_1AAF8F8D4())
  {
    goto LABEL_79;
  }

  v136 = 0;
  v137 = v275[20];
  v227 = *(v237 + 8);
  v228 = v237 + 8;
  v138 = &v201[v137];
  v139 = *v138;
  v140 = *(v138 + 1);
  v229 = (v232 + 32);
  v230 = (v232 + 16);
  v260 = (v266 + 16);
  v259 = (v208 + 8);
  v258 = (v266 + 8);
  v248 = (v209 + 1);
  v249 = (v209 + 2);
  v207 = v140 + 32;
  v208 = v140;
  v236 = v139;
  v202 = v139 + 32;
  v209 = (v134 + 32);
  v226 = v232 + 8;
  v141 = v126;
  while (1)
  {
    v85 = sub_1AAF8F8B4();
    sub_1AAF8F864();
    v252 = v136;
    if (v85)
    {
      (*(v232 + 16))(v240, v135 + ((*(v232 + 80) + 32) & ~*(v232 + 80)) + *(v232 + 72) * v136, v84);
      v88 = v250;
      v161 = v136 + 1;
      if (__OFADD__(v136, 1))
      {
        goto LABEL_78;
      }
    }

    else
    {
      v189 = sub_1AAF90114();
      v88 = v250;
      if (v194 != 8)
      {
        goto LABEL_90;
      }

      *&v281 = v189;
      v85 = v189;
      (*v230)(v240, &v281, v84);
      swift_unknownObjectRelease();
      v161 = v252 + 1;
      if (__OFADD__(v252, 1))
      {
LABEL_78:
        __break(1u);
LABEL_79:

        sub_1AAF8DE54();
        sub_1AAF8DEE4();
        sub_1AAF8DEB4();
        sub_1AAD2C0D4(v205, v213, v204, v210, v212, v211, v203);
        sub_1AAD3D034(v245, v244, v254, v251, v253, v243, v242);
        v221(v238, v224);
        sub_1AACE34A8(v234, type metadata accessor for SgShapeStyle);
        (*(v197 + 8))(&v291, v198);
        (*(v199 + 8))(v206, v271);
        sub_1AAE9C090(&v278);
        return (*(v266 + 8))(v201, v275);
      }
    }

    v239 = v161;
    (*v229)(v272, v240, v84);
    if (v251 == 1)
    {
      v162 = v141;
    }

    else
    {
      v162 = 0.0;
    }

    if (v251 == 1)
    {
      v126 = v141;
    }

    if (sub_1AAF8F8D4())
    {
      break;
    }

    v268 = 0u;
    v269 = 0u;
LABEL_63:

    if (v236)
    {
      v159 = v241;
      v84 = v267;
      if (v252 >= *(v208 + 16))
      {
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        if (sub_1AAF8FFB4() != v85)
        {
          goto LABEL_88;
        }

        goto LABEL_19;
      }

      v185 = *(v207 + 8 * v252);
      if (v185 <= 0)
      {
        if (v185 < 0)
        {
          v187 = __OFSUB__(0, v185);
          v186 = -v185;
          v82 = v234;
          if (v187)
          {
            goto LABEL_86;
          }

          if ((v186 & 0x8000000000000000) != 0)
          {
            goto LABEL_84;
          }
        }

        else
        {
          v186 = 0;
          v82 = v234;
        }

        if (v186 >= *(v236 + 2))
        {
          goto LABEL_85;
        }

        v188 = *&v202[8 * v186];

        sub_1AACE34A8(v82, type metadata accessor for SgShapeStyle);
        sub_1AAE9C090(&v278);
        LOBYTE(v281) = 1;
        *&v278 = v188;
        *(&v279[0] + 1) = MEMORY[0x1E697E0B8];
        *&v279[1] = MEMORY[0x1E697E0A8];
        BYTE8(v279[1]) = 1;
        goto LABEL_36;
      }
    }

    else
    {
      v159 = v241;
      v84 = v267;
      if (v210 != 1)
      {
        v143 = v204;
        v142 = v205;
        *&v281 = v205;
        v144 = v212;
        *(&v281 + 1) = v213;
        *&v282[0] = v204;
        v146 = v210;
        v145 = v211;
        *(&v282[0] + 1) = v210;
        *&v282[1] = v212;
        *(&v282[1] + 1) = v211;
        v147 = v203;
        v283 = v203;
        sub_1AADA61DC(v205, v213, v204, v210);
        sub_1AAD3CF48(v144, v145, v147);
        v148 = sub_1AAF8FC84();
        v149 = v200;
        (*v249)(v200);
        v148(&v276, 0);
        *(&v277[0] + 1) = MEMORY[0x1E697E0B8];
        *&v277[1] = MEMORY[0x1E697E0A8];
        v150 = type metadata accessor for VisualMapper();
        sub_1AAF31D00(v149, v150, &v276);
        (*v248)(v149, v87);
        v82 = v234;
        sub_1AACE34A8(v234, type metadata accessor for SgShapeStyle);
        sub_1AAE9C090(&v278);
        sub_1AADA6198(v142, v213, v143, v146);
        sub_1AAD2C0B8(v212, v211, v147);
        BYTE8(v277[1]) = 1;
        v278 = v276;
        v279[0] = v277[0];
        *(v279 + 9) = *(v277 + 9);
        goto LABEL_36;
      }
    }

    v158 = v238;
    v82 = v234;
    if (v162 == v126)
    {
      goto LABEL_37;
    }

    sub_1AACE34A8(v234, type metadata accessor for SgShapeStyle);
LABEL_36:
    sub_1AACAD248(&v278, v82);
    v217(v82 + v219, 1, 1, v218);
    *(v82 + 41) = 0;
    v151 = v214;
    v152 = v215;
    *v215 = 0u;
    v152[1] = 0u;
    *(v152 + 4) = 0;
    *(v82 + 88) = v162;
    *v151 = 0;
    *(v151 + 8) = 0;
    v153 = v220;
    sub_1AAF2E4A4(v82, v295, v220);
    v154 = v223;
    v155 = v241;
    sub_1AAF8DE74();
    v156 = v224;
    v157 = v221;
    v221(v153, v224);
    v158 = v238;
    v157(v238, v156);
    v159 = v155;
    (*v209)(v158, v154, v156);
    v126 = v162;
    v141 = v162;
    v84 = v267;
LABEL_37:
    v227(v159, v252, v82, v158, v235, v237, v268, v268.f64[1], v269, v269.f64[1]);
    (*v226)(v272, v84);
    v135 = v233;
    v160 = sub_1AAF8F8D4();
    v136 = v239;
    if (v239 == v160)
    {
      goto LABEL_79;
    }
  }

  v84 = 0;
  v268 = 0u;
  v269 = 0u;
  while (1)
  {
    v85 = sub_1AAF8F8B4();
    sub_1AAF8F864();
    if (v85)
    {
      (*(v266 + 16))(v274, v83 + ((*(v266 + 80) + 32) & ~*(v266 + 80)) + *(v266 + 72) * v84, v275);
      v82 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        goto LABEL_80;
      }

      goto LABEL_51;
    }

    v184 = sub_1AAF90114();
    if (v195 != 8)
    {
      break;
    }

    *&v281 = v184;
    v85 = v184;
    (*v260)(v274, &v281, v275);
    swift_unknownObjectRelease();
    v82 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

LABEL_51:
    (v261)(v88, v274, v275);
    v163 = v264;
    v164 = v88;
    sub_1AAF8FB74();
    swift_getAssociatedConformanceWitness();
    v165 = v265;
    v85 = sub_1AAF8F7E4();
    (*v259)(v163, v165);
    if (v85)
    {
      v167 = *(v164 + v275[18]);
      v168 = *(v167 + 16);
      v87 = AssociatedTypeWitness;
      v88 = v247;
      if (!v168)
      {
        goto LABEL_81;
      }

      v169 = *(v164 + v275[19]);
      v170 = *(v169 + 16);
      if (!v170)
      {
        goto LABEL_82;
      }

      *&v166 = *(v164 + v275[17]);
      v256 = v166;
      v171 = *(v167 + 16 * (v252 % v168) + 32);
      v172 = v169 + 16 * (v252 % v170);
      v173.f64[0] = *(v172 + 32);
      v257 = v171;
      v173.f64[1] = *(v172 + 40);
      v255 = v173;
      v85 = sub_1AAF8FC84();
      (*v249)(v88);
      (v85)(&v281, 0);
      v174 = v251;
      if (v251 == 1)
      {
        (*v248)(v88, v87);
        v175 = *&v256;
      }

      else
      {
        v177 = v244;
        v176 = v245;
        *&v281 = v245;
        *(&v281 + 1) = v244;
        v178 = v253;
        *&v282[0] = v254;
        *(&v282[0] + 1) = v251;
        *&v282[1] = v253;
        v179 = v243;
        *(&v282[1] + 1) = v243;
        v180 = v242;
        v283 = v242;
        sub_1AADA61DC(v245, v244, v254, v251);
        sub_1AAD3CEFC(v178, v179, v180);
        v181 = type metadata accessor for VisualMapper();
        sub_1AAF31D00(v88, v181, &v276);
        (*v248)(v88, AssociatedTypeWitness);
        v182 = v177;
        v87 = AssociatedTypeWitness;
        v85 = v246;
        sub_1AADA6198(v176, v182, v254, v174);
        v183 = v180;
        v83 = v85;
        sub_1AAD3D014(v253, v179, v183);
        v175 = *&v256;
        v162 = v162 + *&v256 * *&v276;
      }

      v268 = vaddq_f64(v268, vmulq_n_f64(v257, v175));
      v269 = vaddq_f64(v269, vmulq_n_f64(v255, v175));
      v88 = v250;
      (*v258)(v250, v275);
    }

    else
    {
      (*v258)(v164, v275);
      v87 = AssociatedTypeWitness;
      v88 = v164;
    }

    ++v84;
    if (v82 == sub_1AAF8F8D4())
    {
      goto LABEL_63;
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  (*(v244 + 8))(v88, v245);
  LODWORD(v192) = 0;
  v191 = 363;
LABEL_93:
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAF364C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v33 = a6;
  v34 = a7;
  v31 = a4;
  v32 = a5;
  v12 = type metadata accessor for RulesRenderer(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PointsRenderer(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RectanglesRenderer(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD0F23C(a1, v23, type metadata accessor for AnyVectorizedRenderer.MarkRenderer);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1AAF3A780(v23, v17, type metadata accessor for PointsRenderer);
      sub_1AACAEF68(v17, &v35);
      v25 = type metadata accessor for PointsRenderer;
      v26 = v17;
    }

    else
    {
      sub_1AAF3A780(v23, v20, type metadata accessor for RectanglesRenderer);
      sub_1AACAEF68(v20, &v35);
      v25 = type metadata accessor for RectanglesRenderer;
      v26 = v20;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1AAF3A780(v23, v14, type metadata accessor for RulesRenderer);
    sub_1AACAEF68(v14, &v35);
    v25 = type metadata accessor for RulesRenderer;
    v26 = v14;
LABEL_7:
    sub_1AACE34A8(v26, v25);
    sub_1AACBB198(&v35, v40);
    sub_1AAF3ABD4();
    *&v35 = a2;
    *(&v35 + 1) = a3;
    v36 = v31;
    v37 = v32;
    v38 = v33;
    v39 = v34;
    v27 = type metadata accessor for XYRenderer();
    v28 = swift_dynamicCast();
    return (*(*(v27 - 8) + 56))(a8, v28 ^ 1u, 1, v27);
  }

  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

void sub_1AAF36834(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  v84 = a4;
  v93 = a2;
  *&v98 = a6;
  *(&v98 + 1) = a7;
  v91 = a12;
  v92 = a7;
  v90 = a8;
  *&v99 = a8;
  *(&v99 + 1) = a11;
  v87 = *(&a12 + 1);
  v88 = a11;
  v100 = a12;
  v18 = type metadata accessor for XYRenderer();
  MEMORY[0x1EEE9AC00](v18);
  v86 = v78 - v19;
  v89 = a6;
  v20 = *(a6 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a9;
  v81 = a5;
  v82 = v26;
  v83 = v25;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x1AC598D40](a1, a3, v22);
  }

  else
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_10;
    }

    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v27 = *(a3 + 8 * a1 + 32);
  }

  v79 = a13;
  v28 = v89;
  (*(v20 + 16))(v24, v93, v89);
  v29 = v88;
  v78[1] = swift_getAssociatedTypeWitness();
  v85 = sub_1AAF8F934();
  v31 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 16);
  v30 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 32);
  v104[0] = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale);
  v104[1] = v31;
  v104[2] = v30;
  v33 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 64);
  v32 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 80);
  v34 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 48);
  v105 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 96);
  v104[4] = v33;
  v104[5] = v32;
  v104[3] = v34;
  MEMORY[0x1EEE9AC00](v85);
  v35 = v92;
  v78[-10] = v28;
  v78[-9] = v35;
  v36 = v91;
  v78[-8] = v90;
  v78[-7] = a10;
  v78[-6] = v29;
  v78[-5] = v36;
  v75 = v87;
  v76 = v79;
  v77 = v84;
  v37 = MEMORY[0x1E697E0B8];
  sub_1AAF3AA98(v104, &v98, &qword_1ED9B3E20, &qword_1ED9B3E28, MEMORY[0x1E697E0B8]);
  v38 = sub_1AAF52754(sub_1AAF3A9FC);
  v84 = v39;
  sub_1AACE33D8(v104, &qword_1ED9B3E20, &qword_1ED9B3E28, v37);
  v40 = v83;
  (*(v82 + 16))(v86, v93, v83);
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(v81 + 16) > a1)
  {
    v41 = *(v81 + 8 * a1 + 32);
    v82 = v38;
    v94[0] = v85;
    v43 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
    v42 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
    v98 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
    v99 = v43;
    v100 = v42;
    v45 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
    v44 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
    v46 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
    *(v103 + 9) = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
    v102 = v45;
    v103[0] = v44;
    v101 = v46;
    v47 = v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    v79 = type metadata accessor for ChartContentRenderContext.Environment(0);
    v48 = &v47[*(v79 + 84)];
    v49 = *v48;
    v50 = v48[1];
    v51 = v48[2];
    v52 = *(v27 + 44);
    v53 = *(v27 + 45);
    v54 = *(v27 + 3);
    v55 = *(v27 + 4);
    sub_1AAF3AA98(&v98, v96, &qword_1ED9B3E30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0]);
    v56 = type metadata accessor for BoundingSectionSpecification();
    v57 = sub_1AAF8F914();
    v78[0] = swift_getWitnessTable();
    v81 = sub_1AAE7EC08(v94, &v98, v56, v57, v78[0], v49, v50, v51, v52, v53, v54, v55);
    v58 = MEMORY[0x1E69E7DE0];
    sub_1AACE33D8(&v98, &qword_1ED9B3E30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0]);
    v83 = *(v40 + 72);
    v95[0] = v85;
    v59 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48);
    v60 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64);
    v61 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80);
    *(v97 + 9) = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89);
    v97[0] = v61;
    v63 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16);
    v62 = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32);
    v96[0] = *(v27 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
    v96[1] = v63;
    v96[3] = v59;
    v96[4] = v60;
    v96[2] = v62;
    v64 = &v47[*(v79 + 88)];
    v65 = *v64;
    v66 = v64[1];
    v67 = v64[2];
    v68 = *(v27 + 46);
    v69 = *(v27 + 47);
    v70 = *(v27 + 5);
    v71 = *(v27 + 6);
    sub_1AAF3AA98(v96, v94, &qword_1ED9B3E30, &qword_1ED9B3E38, v58);
    v72 = v87;
    v73 = type metadata accessor for BoundingSectionSpecification();
    v74 = sub_1AAE7EC08(v95, v96, v73, v57, v78[0], v65, v66, v67, v68, v69, v70, v71);
    sub_1AACE33D8(v96, &qword_1ED9B3E30, &qword_1ED9B3E38, v58);

    v77 = v72;
    v76 = v91;
    v75 = v88;
    sub_1AAF34528(v86, v81, v74, v82, v84, v80, v41);
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1AAF36E74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v3;
  v13 = *(a1 + 96);
  v4 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v4;
  v5 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v5;
  KeyPath = swift_getKeyPath();
  v7 = type metadata accessor for XYRenderer();
  v8 = sub_1AAF33684(v12, KeyPath, v7, MEMORY[0x1E697E0B8]);
  v10 = v9;

  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t sub_1AAF36F58(uint64_t a1, uint64_t *a2)
{
  sub_1AAF3A170(a1, v5, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  v3 = *a2;
  swift_beginAccess();
  sub_1AAF3A0A0(v5, v3 + 16, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  return swift_endAccess();
}

char *sub_1AAF36FDC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v194 = a4;
  v201 = a3[5];
  v8 = *(*(*(v201 + 8) + 8) + 8);
  v9 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = a3[7];
  v184 = a3[4];
  v193 = v11;
  v161 = type metadata accessor for BoundingSectionSpecification();
  v156 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v160 = &v148[-v12 - 8];
  v13 = a3[3];
  v163 = a3;
  v191 = a3[6];
  v192 = v13;
  v159 = type metadata accessor for BoundingSectionSpecification();
  v155 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v158 = &v148[-v14 - 8];
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v157 = &v148[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v18);
  v186 = &v148[-v19 - 8];
  v20 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v209 = &v148[-v21 - 8];
  v196 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v198 = &v148[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v199 = v8;
  v211 = swift_getAssociatedTypeWitness();
  v171 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v210 = &v148[-v24 - 8];
  v162 = a2;
  v25 = a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  v189 = a2 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v188 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v26 = v25 + v188[27];
  if (*(v26 + 24))
  {
    sub_1AAE0FC20(v26, &v238);
    sub_1AAF303E4(v235);
    v27 = sub_1AAE0FC7C(&v238);
  }

  else
  {
    memset(v235, 0, 24);
    v235[3] = 2;
    bzero(&v236, 0x2A9uLL);
  }

  MEMORY[0x1EEE9AC00](v27);
  v28 = v192;
  *(&v147 - 8) = v9;
  *(&v147 - 7) = v28;
  v29 = v184;
  *(&v147 - 6) = v184;
  v30 = v29;
  v31 = v201;
  *(&v147 - 5) = v194;
  *(&v147 - 4) = v31;
  v32 = v193;
  *(&v147 - 3) = v191;
  *(&v147 - 2) = v32;
  *(&v147 - 1) = a5;
  type metadata accessor for TypedVectorizedProperties();
  v185 = sub_1AAF8FE74();
  v197 = type metadata accessor for VisualMapper();
  v34 = sub_1AAE29A94(sub_1AAF3A580, (&v147 - 10), MEMORY[0x1E69E73E0], v197, v33, &v238);
  v187 = 0;
  v195 = &v147;
  v206 = *(&v238 + 1);
  v207 = v238;
  v190 = a5;
  v35 = *(&v239 + 1);
  v204 = v240;
  v205 = v239;
  v203 = *(&v240 + 1);
  v202 = v241;
  MEMORY[0x1EEE9AC00](v34);
  v36 = v9;
  v200 = v9;
  v37 = v191;
  v38 = v192;
  *(&v147 - 8) = v9;
  *(&v147 - 7) = v38;
  v39 = v194;
  *(&v147 - 6) = v30;
  *(&v147 - 5) = v39;
  v40 = v201;
  *(&v147 - 4) = v201;
  *(&v147 - 3) = v37;
  *(&v147 - 2) = v193;
  *(&v147 - 1) = v41;
  v208 = AssociatedTypeWitness;
  v154 = type metadata accessor for VisualMapper();
  v42 = v187;
  v44 = sub_1AAE29A94(sub_1AAF3A5D8, (&v147 - 10), MEMORY[0x1E69E73E0], v154, v43, &v238);
  v195 = &v147;
  v175 = *(&v238 + 1);
  v176 = v238;
  v182 = *(&v239 + 1);
  v183 = v42;
  v173 = v240;
  v174 = v239;
  v172 = *(&v240 + 1);
  v177 = v241;
  MEMORY[0x1EEE9AC00](v44);
  *(&v147 - 8) = v36;
  *(&v147 - 7) = v38;
  v45 = v184;
  *(&v147 - 6) = v184;
  *(&v147 - 5) = v39;
  *(&v147 - 4) = v40;
  v46 = v190;
  v47 = v191;
  v48 = v193;
  *(&v147 - 3) = v191;
  *(&v147 - 2) = v48;
  *(&v147 - 1) = v46;
  v49 = type metadata accessor for VisualMapper();
  v51 = sub_1AAE29A94(sub_1AAF3A624, (&v147 - 10), MEMORY[0x1E69E73E0], v49, v50, &v238);
  v195 = &v147;
  v227 = v240;
  v228 = v241;
  v229 = v242;
  v225 = v238;
  v226 = v239;
  MEMORY[0x1EEE9AC00](v51);
  v52 = v192;
  *(&v147 - 8) = v200;
  *(&v147 - 7) = v52;
  v53 = v194;
  *(&v147 - 6) = v45;
  *(&v147 - 5) = v53;
  *(&v147 - 4) = v201;
  *(&v147 - 3) = v47;
  v54 = v190;
  *(&v147 - 2) = v48;
  *(&v147 - 1) = v54;
  v187 = v49;
  sub_1AAE29A94(sub_1AAF3A650, (&v147 - 10), MEMORY[0x1E69E73E0], v49, v55, &v238);
  v232 = v240;
  v233 = v241;
  v234 = v242;
  v230 = v238;
  v231 = v239;
  v56 = (v189 + v188[25]);
  v58 = *v56;
  v57 = v56[1];
  v170 = v58;
  v181 = v57;
  v59 = (v189 + v188[23]);
  v60 = *v59;
  v61 = v59[1];
  v63 = v59[2];
  v62 = v59[3];
  v64 = (v189 + v188[24]);
  v65 = *v64;
  v179 = v64[1];
  v180 = v65;
  v66 = v64[2];
  v67 = v64[3];
  (*(v196 + 16))(v198, v178, v200);

  v166 = v61;
  v167 = v60;
  v164 = v62;
  v165 = v63;
  sub_1AADA61DC(v60, v61, v63, v62);
  v168 = v67;
  v169 = v66;
  sub_1AADA61DC(v180, v179, v66, v67);
  sub_1AAF8F744();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = v209;
  v201 = AssociatedConformanceWitness;
  sub_1AAF8FE94();
  v70 = v208;
  v199 = *(v15 + 48);
  v200 = v15 + 48;
  if (v199(v69, 1, v208) == 1)
  {
    v183 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v90 = *(v15 + 32);
    v89 = (v15 + 32);
    v195 = (v89 - 24);
    v196 = v90;
    v152 = v89 - 16;
    v153 = v187 - 8;
    v155 += 2;
    v156 += 2;
    v151 = v190 + 8;
    v183 = MEMORY[0x1E69E7CC0];
    v198 = v89;
    do
    {
      v91 = v186;
      while (1)
      {
        (v196)(v91, v69, v70);
        if (v35 == 1)
        {
          break;
        }

        v93 = v206;
        v92 = v207;
        *&v220 = v207;
        *(&v220 + 1) = v206;
        v95 = v204;
        v94 = v205;
        *&v221 = v205;
        *(&v221 + 1) = v35;
        *&v222 = v204;
        v96 = v35;
        v97 = v203;
        *(&v222 + 1) = v203;
        v98 = v202;
        LOBYTE(v223) = v202;
        sub_1AADA61DC(v207, v206, v205, v96);
        sub_1AAD3CEFC(v95, v97, v98);
        sub_1AAF31D00(v91, v197, &v215);
        sub_1AADA6198(v92, v93, v94, v96);
        v99 = v97;
        v35 = v96;
        v70 = v208;
        sub_1AAD3D014(v95, v99, v98);
        if (v215 != 1)
        {
          break;
        }

        (*v195)(v91, v70);
        v69 = v209;
        sub_1AAF8FE94();
        if (v199(v69, 1, v70) == 1)
        {
          goto LABEL_6;
        }
      }

      v100 = v91;
      if (v182 != 1)
      {
        v102 = v175;
        v101 = v176;
        *&v220 = v176;
        *(&v220 + 1) = v175;
        v104 = v173;
        v103 = v174;
        *&v221 = v174;
        v105 = v182;
        *(&v221 + 1) = v182;
        *&v222 = v173;
        v106 = v172;
        *(&v222 + 1) = v172;
        v107 = v177;
        LOBYTE(v223) = v177;
        sub_1AADA61DC(v176, v175, v174, v182);
        sub_1AAE0FCD0(v104, v106, v107);
        sub_1AAF31D00(v186, v154, &v215);
        v108 = v102;
        v70 = v208;
        v109 = v103;
        v100 = v186;
        sub_1AADA6198(v101, v108, v109, v105);
        sub_1AAE0FD00(v104, v106, v177);
        v110 = *(&v215 + 1);
        v111 = (v189 + v188[25]);
        *v111 = v215;
        v111[1] = v110;
      }

      v112 = *(&v226 + 1);
      v113 = v187;
      if (*(&v226 + 1) != 1)
      {
        v114 = *(&v228 + 1);
        v115 = v228;
        v150 = v227;
        *&v148[16] = v226;
        *v148 = v225;
        LODWORD(v149) = v229;
        v215 = v225;
        v216 = v226;
        v217 = v227;
        v218 = v228;
        v219 = v229;
        v222 = v227;
        v223 = v228;
        v224 = v229;
        v220 = v225;
        v221 = v226;
        (*(*(v187 - 8) + 16))(&v212, &v220, v187);
        sub_1AAF31D00(v100, v113, &v212);
        sub_1AADA6198(*v148, *&v148[8], v148[16], v112);
        sub_1AAE0FE08(v150, *(&v150 + 1), v115, v114, v149);
        v116 = v213;
        v117 = v214;
        v118 = (v189 + v188[23]);
        v119 = *v118;
        v120 = v118[1];
        v121 = v118[2];
        v122 = v118[3];
        *v118 = v212;
        v118[2] = v116;
        v118[3] = v117;
        sub_1AADA6198(v119, v120, v121, v122);
      }

      v123 = *(&v231 + 1);
      if (*(&v231 + 1) != 1)
      {
        v124 = *(&v233 + 1);
        v125 = v233;
        v126 = *(&v232 + 1);
        *(&v150 + 1) = v232;
        v149 = v231;
        *&v148[8] = v230;
        LODWORD(v150) = v234;
        v215 = v230;
        v216 = v231;
        v217 = v232;
        v218 = v233;
        v219 = v234;
        v222 = v232;
        v223 = v233;
        v224 = v234;
        v220 = v230;
        v221 = v231;
        (*(*(v113 - 8) + 16))(&v212, &v220, v113);
        sub_1AAF31D00(v100, v113, &v212);
        sub_1AADA6198(*&v148[8], *&v148[16], v149, v123);
        sub_1AAE0FE08(*(&v150 + 1), v126, v125, v124, v150);
        v127 = v213;
        v128 = v214;
        v129 = (v189 + v188[24]);
        v130 = *v129;
        v131 = v129[1];
        v132 = v129[2];
        v133 = v129[3];
        *v129 = v212;
        v129[2] = v127;
        v129[3] = v128;
        sub_1AADA6198(v130, v131, v132, v133);
      }

      v134 = v163;
      v135 = v178;
      v136 = v158;
      (*v155)(v158, v178 + *(v163 + 17), v159);
      v137 = *v152;
      v138 = v157;
      (*v152)(v157, v100, v70);
      v139 = sub_1AAE7E33C(v136, v138, v70, v192, v191, v237);
      v140 = v135 + *(v134 + 18);
      v141 = v160;
      (*v156)(v160, v140, v161, v139);
      v137(v138, v100, v70);
      v142 = sub_1AAE7E33C(v141, v138, v70, v184, v193, &v238);
      v143 = (*(v190 + 8))(v237, &v238, v162, v142);
      sub_1AADC7F60(&v238);
      sub_1AADC7F60(v237);
      v144 = v183;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v144 = sub_1AACE3508(0, *(v144 + 2) + 1, 1, v144);
      }

      v146 = *(v144 + 2);
      v145 = *(v144 + 3);
      if (v146 >= v145 >> 1)
      {
        v144 = sub_1AACE3508((v145 > 1), v146 + 1, 1, v144);
      }

      (*v195)(v186, v70);
      *(v144 + 2) = v146 + 1;
      v183 = v144;
      *&v144[8 * v146 + 32] = v143;
      v69 = v209;
      sub_1AAF8FE94();
    }

    while (v199(v69, 1, v70) != 1);
  }

LABEL_6:
  v71 = sub_1AAF8FE74();
  v72 = *(*(v71 - 8) + 8);
  v72(&v230, v71);
  v72(&v225, v71);
  sub_1AAF3A6BC(v176, v175, v174, v182, v173, v172, v177);
  sub_1AAD3D034(v207, v206, v205, v35, v204, v203, v202);
  (*(v171 + 8))(v210, v211);
  (*(*(v185 - 8) + 8))(v235);
  v73 = v188;
  v74 = v189;
  v75 = (v189 + v188[25]);
  *v75 = v170;
  v75[1] = v181;
  v76 = (v74 + v73[23]);
  v77 = *v76;
  v78 = v76[1];
  v79 = v76[2];
  v80 = v76[3];
  *v76 = v167;
  v76[1] = v166;
  v76[2] = v165;
  v76[3] = v164;
  v81 = (v74 + v73[24]);
  v82 = *v81;
  v83 = v81[1];
  v84 = v81[2];
  v85 = v81[3];
  v86 = v179;
  *v81 = v180;
  v81[1] = v86;
  v87 = v168;
  v81[2] = v169;
  v81[3] = v87;

  sub_1AADA6198(v77, v78, v79, v80);
  sub_1AADA6198(v82, v83, v84, v85);
  return v183;
}

uint64_t sub_1AAF38028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 624);
  v10 = *(a1 + 608);
  v11 = v2;
  v12 = *(a1 + 640);
  v3 = v12;
  v4 = *(a1 + 592);
  v9[0] = *(a1 + 576);
  v5 = v9[0];
  v9[1] = v4;
  *(a2 + 32) = v10;
  *(a2 + 48) = v2;
  *(a2 + 64) = v3;
  *a2 = v5;
  *(a2 + 16) = v4;
  swift_getAssociatedTypeWitness();
  type metadata accessor for VisualMapper();
  v6 = sub_1AAF8FE74();
  return (*(*(v6 - 8) + 16))(v8, v9, v6);
}

uint64_t sub_1AAF380F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *(a1 + 712);
  v3 = *(a1 + 696);
  v10 = *(a1 + 680);
  v2 = v10;
  v11 = v3;
  v4 = *(a1 + 664);
  v9[0] = *(a1 + 648);
  v5 = v9[0];
  v9[1] = v4;
  *(a2 + 64) = v12;
  *(a2 + 32) = v2;
  *(a2 + 48) = v3;
  *a2 = v5;
  *(a2 + 16) = v4;
  swift_getAssociatedTypeWitness();
  type metadata accessor for VisualMapper();
  v6 = sub_1AAF8FE74();
  return (*(*(v6 - 8) + 16))(v8, v9, v6);
}

uint64_t sub_1AAF38200(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *a1;
  v14 = a1[1];
  v15 = *(*a1 + 16);
  v16 = *(v15 + 16);
  v17 = *(v16 + 32);

  v18 = sub_1AACD5520(a3, v17);
  v19 = *(v16 + 32);
  *(v16 + 32) = v18;
  v20 = *(v15 + 24);
  *(v15 + 24) = v18;
  sub_1AAF382E4(a4, a5, a2, v13, v14, a6, a7, a8, a9);
  *(v15 + 24) = v20;

  *(v16 + 32) = v19;
}

uint64_t sub_1AAF382E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v15);
  v18[0] = a4;
  v18[1] = a5;
  (*(a9 + 32))(v14, v18, a7, a9);
  return (*(v12 + 8))(v14, a7);
}

uint64_t sub_1AAF383F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(v13 + 16);
  v15 = *(v14 + 16);
  v16 = *(v15 + 32);

  v17 = sub_1AACD5520(a3, v16);
  v18 = *(v15 + 32);
  *(v15 + 32) = v17;
  v19 = *(v14 + 24);
  *(v14 + 24) = v17;
  sub_1AAF384D0(a4, a5, a2, v12, v13, a6, a7, a8, a9);
  *(v14 + 24) = v19;
  *(v15 + 32) = v18;
}

uint64_t sub_1AAF384D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16(v15);
  v18[0] = a4 & 1;
  v19 = a5;
  (*(a9 + 40))(v14, v18, a7, a9);
  return (*(v12 + 8))(v14, a7);
}

uint64_t sub_1AAF385F4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(*(a4 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v36 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = sub_1AAF8FE74();
  v38 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v36 - v15);
  v37 = sub_1AAF90354();
  MEMORY[0x1EEE9AC00](v37);
  v36[1] = v36 - v17;
  v48 = v8;
  v53 = sub_1AAF90344();
  v41 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v54 = v36 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *a2;
  v42 = v22;
  v23 = *(v22 + 16);
  v46 = a1;
  v23(v21, a1, a3);
  v24 = v49;
  swift_beginAccess();
  sub_1AAF3A138(v24 + 960, v61);
  sub_1AAF3A170(&v65, v60, &qword_1ED9AE368, &type metadata for VectorizedPlottables.Position);
  sub_1AAF3A170(v61, v56, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  if (*(&v56[1] + 1))
  {
    v57[0] = v56[0];
    v57[1] = v56[1];
    v57[2] = v56[2];
    *&v57[3] = *&v56[3];
    sub_1AAE05C6C(v57, v21, 5u, a3, a4);
    sub_1AAF3A27C(v57);
  }

  else
  {
    sub_1AAF3A1F0(v56, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
  }

  sub_1AAF3A170(&v62, v56, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  if (*(&v56[1] + 1))
  {
    v57[0] = v56[0];
    v57[1] = v56[1];
    v57[2] = v56[2];
    *&v57[3] = *&v56[3];
    sub_1AAE05C6C(v57, v21, 8u, a3, a4);
    sub_1AAF3A27C(v57);
  }

  else
  {
    sub_1AAF3A1F0(v56, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
  }

  sub_1AAF3A170(&v63, v56, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  if (*(&v56[1] + 1))
  {
    v57[0] = v56[0];
    v57[1] = v56[1];
    v57[2] = v56[2];
    *&v57[3] = *&v56[3];
    sub_1AAE05C6C(v57, v21, 6u, a3, a4);
    sub_1AAF3A27C(v57);
  }

  else
  {
    sub_1AAF3A1F0(v56, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
  }

  sub_1AAF3A170(&v64, v57, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  v44 = v11;
  v47 = a4;
  if (*(&v57[1] + 1))
  {
    v58[0] = v57[0];
    v58[1] = v57[1];
    v58[2] = v57[2];
    v59 = *&v57[3];
    sub_1AAE05C6C(v58, v21, 7u, a3, a4);
    sub_1AAF3A27C(v58);
  }

  else
  {
    sub_1AAF3A1F0(v57, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
  }

  v45 = AssociatedTypeWitness;
  swift_beginAccess();
  v43 = v24;
  memcpy(v57, (v24 + 696), 0x102uLL);
  sub_1AACBB21C(v57, v56);
  v52 = a3;
  v40 = v21;
  MEMORY[0x1AC598390](a3, v48);
  sub_1AAF90324();
  v25 = (v38 + 32);
  v48 = TupleTypeMetadata2 - 8;
  v26 = (v39 + 32);
  v27 = (v39 + 8);
  while (1)
  {
    v29 = v50;
    sub_1AAF90334();
    (*v25)(v16, v29, v51);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v30 = *v16;
    v31 = TupleTypeMetadata2;
    v32 = v16 + *(TupleTypeMetadata2 + 48);
    v33 = v44;
    v34 = v45;
    (*v26)(v44, v32, v45);
    sub_1AAF3A170(v60, v56, &qword_1ED9AE368, &type metadata for VectorizedPlottables.Position);
    if (*&v56[3])
    {
      v55[2] = v56[2];
      v55[3] = v56[3];
      v55[4] = v56[4];
      v55[0] = v56[0];
      v55[1] = v56[1];
      sub_1AAE08020(v55, v33, v34);
      sub_1AAF3A24C(v55);
    }

    v28 = *(v46 + *(type metadata accessor for Vectorizer() + 36));
    v56[0] = v49;
    v28(v56, v33, v30);
    (*v27)(v33, v34);
    TupleTypeMetadata2 = v31;
  }

  (*(v41 + 8))(v54, v53);
  sub_1AAF3A1F0(v60, &qword_1ED9AE368, &type metadata for VectorizedPlottables.Position, MEMORY[0x1E69E6720]);
  sub_1AACF257C(v61);
  (*(v42 + 8))(v40, v52);
  memcpy(v56, (v43 + 696), 0x102uLL);
  memcpy((v43 + 696), v57, 0x102uLL);
  return sub_1AACBB254(v56);
}

uint64_t sub_1AAF38E08@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1AAD04B78(0, &qword_1ED9B67A0, type metadata accessor for SgClipRect, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v65 = &v55[-v11];
  v58 = a4;
  v12 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v57 = &v55[-v14];
  v15 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v55[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v17);
  v56 = *a2;
  v20 = *(a2 + 1);
  v64 = v21;
  v22 = *(v21 + 16);
  v68 = &v55[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = a1;
  v22(v18);
  v23 = v20 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v24 = v23 + *(v15 + 108);
  v25 = *(v24 + 24);
  v66 = a5;
  v67 = a3;
  v60 = v13;
  if (v25)
  {
    sub_1AAE0FC20(v24, v75);
    v26 = *(v12 + 8);
    swift_getAssociatedTypeWitness();
    sub_1AAF303E4(v74);
    sub_1AAE0FC7C(v75);
    if (v74[3] != 2)
    {
      v62 = v26;
      memcpy(v75, v74, 0x2C9uLL);
      goto LABEL_7;
    }
  }

  else
  {
    memset(v74, 0, 24);
    v74[3] = 2;
    bzero(&v74[4], 0x2A9uLL);
    v26 = *(v12 + 8);
    swift_getAssociatedTypeWitness();
  }

  sub_1AAF324B0(v75);
  v62 = v26;
  if (v74[3] != 2)
  {
    type metadata accessor for TypedVectorizedProperties();
    v27 = sub_1AAF8FE74();
    (*(*(v27 - 8) + 8))(v74, v27);
  }

LABEL_7:
  sub_1AAD0F23C(v23, v69, type metadata accessor for ChartContentRenderContext.Environment);
  swift_beginAccess();
  memcpy(v72, (v20 + 80), 0x102uLL);
  v63 = v15;
  *(v23 + *(v15 + 64)) = 0;
  v71 = 0;
  sub_1AACBB21C(v72, v73);
  v28 = v57;
  v30 = v67;
  v29 = v68;
  v31 = sub_1AAF8FB74();
  v70[0] = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v31);
  v32 = v58;
  *&v55[-80] = v30;
  *&v55[-72] = v32;
  *&v55[-64] = v29;
  *&v55[-56] = v75;
  v33 = v59;
  *&v55[-48] = v20;
  *&v55[-40] = v33;
  v55[-32] = v56;
  *&v55[-24] = v20;
  *&v55[-16] = &v71;
  sub_1AAF3C2A4(0, &qword_1ED9B2758, &type metadata for _ChartContentRenderOutputs, MEMORY[0x1E69E62F8]);
  v34 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  sub_1AAF8F7B4();
  (*(v60 + 8))(v28, v34);
  v35 = v73[0];
  swift_beginAccess();
  sub_1AAF3A000(v69, v23);
  swift_endAccess();
  memcpy(v73, (v20 + 80), 0x102uLL);
  memcpy((v20 + 80), v72, 0x102uLL);
  sub_1AACBB21C(v72, v70);
  sub_1AACBB254(v73);
  v36 = *(v20 + 16);
  v37 = *(v36 + 24);
  v38 = *(v35 + 16);
  if (v38)
  {
    AssociatedTypeWitness = *(v36 + 24);
    v39 = MEMORY[0x1E69E7CC0];
    v70[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD0F6F0(0, v38, 0);
    v40 = v70[0];
    v41 = *(v70[0] + 16);
    v42 = 32;
    do
    {
      v43 = *(v35 + v42);
      v70[0] = v40;
      v44 = *(v40 + 24);

      if (v41 >= v44 >> 1)
      {
        sub_1AAD0F6F0((v44 > 1), v41 + 1, 1);
        v40 = v70[0];
      }

      *(v40 + 16) = v41 + 1;
      *(v40 + 8 * v41 + 32) = v43;
      v42 += 8;
      ++v41;
      --v38;
    }

    while (v38);

    v37 = AssociatedTypeWitness;
  }

  else
  {

    v40 = MEMORY[0x1E69E7CC0];
    v39 = MEMORY[0x1E69E7CC0];
  }

  v45 = type metadata accessor for SgGroup(0);
  v46 = swift_allocBox();
  v48 = v47;
  v49 = type metadata accessor for SgClipRect(0);
  v50 = v65;
  (*(*(v49 - 8) + 56))(v65, 1, 1, v49);
  sub_1AACBB254(v72);
  v51 = *&v69[*(v63 + 64)];
  sub_1AACE34A8(v69, type metadata accessor for ChartContentRenderContext.Environment);
  *v48 = v37;
  v48[1] = v40;
  sub_1AAD0F670(v50, v48 + v45[6]);
  *(v48 + v45[7]) = 0x3FF0000000000000;
  *(v48 + v45[8]) = v51;
  *(v48 + v45[9]) = v39;
  *(v48 + v45[10]) = 0;
  v52 = v67;
  *v66 = v46;
  swift_getAssociatedTypeWitness();
  v53 = type metadata accessor for TypedVectorizedProperties();
  (*(*(v53 - 8) + 8))(v75, v53);
  return (*(v64 + 8))(v68, v52);
}

uint64_t sub_1AAF395A8(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v83 = a1;
  v88 = a8;
  v87 = a7;
  v86 = a6;
  v90 = a5;
  v85 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = (&v81 - v14);
  v84 = a10;
  v16 = sub_1AAF8FC84();
  v89 = v13;
  v17 = *(v13 + 16);
  v91 = v15;
  v92 = AssociatedTypeWitness;
  v17(v15);
  v16(&v118, 0);
  v18 = *(a4 + 24);
  if (v18 != 1)
  {
    v20 = *(a4 + 32);
    v19 = *(a4 + 40);
    *&v82 = v19;
    v21 = *(a4 + 8);
    v22 = *(a4 + 16);
    v24 = *(a4 + 48);
    *&v118 = *a4;
    v23 = v118;
    *(&v118 + 1) = v21;
    *v119 = v22;
    *&v119[8] = v18;
    *&v119[16] = v20;
    *&v119[24] = v19;
    v119[32] = v24;
    sub_1AADA61DC(v118, v21, v22, v18);
    sub_1AAD3CEFC(v20, v19, v24);
    v25 = type metadata accessor for VisualMapper();
    sub_1AAF31D00(v91, v25, &v110);
    sub_1AADA6198(v23, v21, v22, v18);
    sub_1AAD3D014(v20, v82, v24);
    v26 = v110;
    v27 = v90 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    *(v27 + *(type metadata accessor for ChartContentRenderContext.Environment(0) + 52)) = v26;
  }

  v28 = *(a4 + 80);
  if (v28 != 1)
  {
    v30 = *(a4 + 88);
    v29 = *(a4 + 96);
    v32 = *(a4 + 64);
    v31 = *(a4 + 72);
    v33 = *(a4 + 56);
    v34 = *(a4 + 104);
    *&v118 = v33;
    *(&v118 + 1) = v32;
    *v119 = v31;
    *&v119[8] = v28;
    *&v119[16] = v30;
    *&v119[24] = v29;
    *&v82 = v29;
    v119[32] = v34;
    *(&v111 + 1) = MEMORY[0x1E697E0B8];
    *&v112 = MEMORY[0x1E697E0A8];
    sub_1AADA61DC(v33, v32, v31, v28);
    sub_1AAD3CF48(v30, v29, v34);
    v35 = type metadata accessor for VisualMapper();
    sub_1AAF31D00(v91, v35, &v110);
    sub_1AADA6198(v33, v32, v31, v28);
    sub_1AAD2C0B8(v30, v82, v34);
    BYTE8(v112) = 1;
    v36 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    v37 = v90;
    swift_beginAccess();
    sub_1AAF3A0A0(&v110, v37 + v36, qword_1ED9B52F0, &type metadata for SgShapeStyle.Shading);
    swift_endAccess();
  }

  v38 = *(a4 + 136);
  v39 = v91;
  if (v38 != 1)
  {
    v118 = *(a4 + 112);
    *v119 = *(a4 + 128);
    *&v119[8] = v38;
    v40 = *(a4 + 160);
    *&v119[16] = *(a4 + 144);
    *&v119[32] = v40;
    *&v119[41] = *(a4 + 169);
    v41 = type metadata accessor for VisualMapper();
    sub_1AAF31D00(v39, v41, &v110);
    v81 = v111;
    v82 = v110;
    v42 = v112;
    v43 = v90 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    v44 = v81;
    *(v43 + 48) = v82;
    *(v43 + 64) = v44;
    *(v43 + 80) = v42;
  }

  v45 = type metadata accessor for VisualMapper();
  v46 = sub_1AAF8FE74();
  v47 = *(v46 - 8);
  (*(v47 + 16))(&v110, a4 + 192, v46);
  if (*(&v111 + 1) == 1)
  {
    (*(v47 + 8))(&v110, v46);
  }

  else
  {
    *&v119[16] = v112;
    *&v119[32] = v113[0];
    *&v119[41] = *(v113 + 9);
    v118 = v110;
    *v119 = v111;
    sub_1AAF31D00(v39, v45, &v110);
    (*(*(v45 - 8) + 8))(&v118, v45);
    BYTE8(v112) = 0;
    v48 = v90 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    sub_1AAF3A0A0(&v110, v48 + 88, qword_1ED9B3000, &type metadata for SgSymbol);
    swift_endAccess();
  }

  v49 = *(a4 + 320);
  if (v49 <= 0xFB)
  {
    v50 = *(a4 + 280);
    v52 = *(a4 + 288);
    v51 = *(a4 + 296);
    v54 = *(a4 + 304);
    v53 = *(a4 + 312);
    *&v118 = *(a4 + 272);
    *(&v118 + 1) = v50;
    *v119 = v52;
    *&v119[8] = v51;
    *&v119[16] = v54;
    *&v119[24] = v53;
    if ((v49 & 0x80) != 0)
    {
      v119[32] = v49 & 0x7F;
      type metadata accessor for CGSize(255);
      v59 = type metadata accessor for VisualMapper();
      sub_1AAF31D00(v39, v59, &v110);
      v56 = *(&v110 + 1);
      v58 = v110;
      v57 = 1;
    }

    else
    {
      v119[32] = v49;
      v55 = type metadata accessor for VisualMapper();
      sub_1AAF31D00(v39, v55, &v110);
      v56 = 0;
      v57 = 0;
      v58 = v110;
    }

    v60 = v90 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    *(v60 + 136) = v58;
    *(v60 + 144) = v56;
    *(v60 + 152) = v57;
    v39 = v91;
  }

  v61 = *(a4 + 408);
  v62 = *(a4 + 440);
  v115 = *(a4 + 424);
  v116 = v62;
  v63 = *(a4 + 344);
  v64 = *(a4 + 376);
  v112 = *(a4 + 360);
  v113[0] = v64;
  v65 = *(a4 + 376);
  v66 = *(a4 + 408);
  v113[1] = *(a4 + 392);
  v114 = v66;
  v67 = *(a4 + 344);
  v110 = *(a4 + 328);
  v111 = v67;
  v68 = *(a4 + 440);
  *&v119[80] = v115;
  *&v119[96] = v68;
  *&v119[16] = v112;
  *&v119[32] = v65;
  *&v119[48] = v113[1];
  *&v119[64] = v61;
  v117 = *(a4 + 456);
  v119[112] = *(a4 + 456);
  v118 = v110;
  *v119 = v63;
  if (sub_1AAF3A07C(&v118) != 1)
  {
    *&v82 = swift_getKeyPath();
    v99 = *&v119[72];
    v100[0] = *&v119[88];
    *(v100 + 9) = *&v119[97];
    v95 = *&v119[8];
    v96 = *&v119[24];
    v97 = *&v119[40];
    v98 = *&v119[56];
    v103[2] = v112;
    v103[3] = v113[0];
    v103[0] = v110;
    v103[1] = v111;
    v104 = v117;
    v103[6] = v115;
    v103[7] = v116;
    v103[4] = v113[1];
    v103[5] = v114;
    v69 = type metadata accessor for TypedVectorizedProperties.Position();
    v70 = sub_1AAF8FE74();
    v71 = *(v70 - 8);
    (*(v71 + 16))(v93, &v110, v70);
    (*(*(v69 - 8) + 16))(v93, v103, v69);
    v72 = type metadata accessor for VisualMapper();
    sub_1AAF31D00(v39, v72, v101);
    v93[4] = v99;
    v94[0] = v100[0];
    *(v94 + 9) = *(v100 + 9);
    v93[0] = v95;
    v93[1] = v96;
    v93[2] = v97;
    v93[3] = v98;
    (*(*(v72 - 8) + 8))(v93, v72);
    v107 = v101[2];
    v108 = v101[3];
    v109 = v102;
    v105 = v101[0];
    v106 = v101[1];
    v73 = *(&v118 + 1);
    LOBYTE(v72) = v119[0];
    swift_beginAccess();
    v97 = v107;
    v98 = v108;
    v95 = v105;
    v96 = v106;
    *&v99 = v109;
    *(&v99 + 1) = v73;
    LOBYTE(v100[0]) = v72;
    swift_setAtWritableKeyPath();
    swift_endAccess();

    (*(v71 + 8))(&v110, v70);
  }

  v74 = v86 + *(type metadata accessor for Vectorizer() + 40);
  v75 = *v74;
  v76 = *(v74 + 8);
  LOBYTE(v103[0]) = v87 & 1;
  *(&v103[0] + 1) = v88;
  v75(v93, v103, v39, *a9);
  v77 = *&v93[0];
  if (*&v93[0] != 0xE000000000000000)
  {
    v39 = v83;
    v76 = *v83;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  result = (*(v89 + 8))(v39, v92);
  while (__OFADD__(*a9, 1))
  {
    __break(1u);
LABEL_26:
    v76 = sub_1AAD04BDC(0, *(v76 + 2) + 1, 1, v76);
LABEL_20:
    v80 = *(v76 + 2);
    v79 = *(v76 + 3);
    if (v80 >= v79 >> 1)
    {
      v76 = sub_1AAD04BDC((v79 > 1), v80 + 1, 1, v76);
    }

    result = (*(v89 + 8))(v91, v92);
    *(v76 + 2) = v80 + 1;
    *&v76[8 * v80 + 32] = v77;
    *v39 = v76;
  }

  ++*a9;
  return result;
}

uint64_t sub_1AAF3A000(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartContentRenderContext.Environment(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAF3A07C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAF3A0A0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAF3C2A4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAF3A170(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAF3C2A4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAF3A1F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AAF3C2A4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AAF3A2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2 || a6 == 1)
  {
  }

  if (!a6)
  {
  }

  return result;
}

uint64_t sub_1AAF3A300(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 < 0)
  {
    v9 = a7 & 0x7F;
  }

  else
  {
    v9 = a7;
  }

  sub_1AADA6198(a1, a2, a3, a4);

  return sub_1AAD3D014(a5, a6, v9);
}

uint64_t sub_1AAF3A35C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a10 == 2 || a10 == 1)
  {
  }

  else if (!a10)
  {
    sub_1AAD04750(result, a2, a3 & 1);

    return sub_1AAD0E818(a5, a6, a7);
  }

  return result;
}

uint64_t sub_1AAF3A408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for AnyConcreteScale() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for PlottableProjection() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = v2 + ((v13 + *(v12 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80));

  return sub_1AAF31754(a1, v2 + v10, v2 + v13, v14, v5, v6, v7, v8, a2);
}

uint64_t sub_1AAF3A580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 520);
  v3 = *(a1 + 528);
  v4 = *(a1 + 536);
  v5 = *(a1 + 544);
  v6 = *(a1 + 552);
  v7 = *(a1 + 560);
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = *(a1 + 568);
  *(a2 + 48) = v8;
  return sub_1AAD3B168(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1AAF3A5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 464);
  v2 = *(a1 + 472);
  v4 = *(a1 + 480);
  v5 = *(a1 + 488);
  v6 = *(a1 + 496);
  v7 = *(a1 + 504);
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = *(a1 + 512);
  *(a2 + 48) = v8;
  return sub_1AAF3A70C(v3, v2, v4, v5, v6, v7, v8);
}

uint64_t sub_1AAF3A6BC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a4 != 1)
  {
    sub_1AADA6198(result, a2, a3, a4);
    return sub_1AAE0FD00(a5, a6, a7);
  }

  return result;
}

uint64_t sub_1AAF3A70C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a4 != 1)
  {
    sub_1AADA61DC(result, a2, a3, a4);

    return sub_1AAE0FCD0(a5, a6, a7);
  }

  return result;
}

uint64_t sub_1AAF3A780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1AAF3A81C()
{
  result = qword_1EB427228[0];
  if (!qword_1EB427228[0])
  {
    sub_1AAD04B78(255, &qword_1ED9B2A80, type metadata accessor for AnyVectorizedRenderer, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB427228);
  }

  return result;
}

uint64_t sub_1AAF3A8E4(char *a1)
{
  v3 = *(v1 + 80);
  v4 = *a1;
  type metadata accessor for XYRenderer();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_1AAF3A9A0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a4 != 1)
  {
    sub_1AADA61DC(result, a2, a3, a4);

    return sub_1AAD3CF48(a5, a6, a7);
  }

  return result;
}

void sub_1AAF3AA3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    sub_1AAF3C2A4(255, a3, a4, a5);
    v6 = sub_1AAF8FE74();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AAF3AA98(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1AAF3AA3C(0, a3, a4, a5, type metadata accessor for AnyConcreteScale);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AAF3AB7C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  result = sub_1AAE922E8(*(v4 + 72), *(v4 + 80), *(v4 + 16), a1, *(v4 + 40), *(v4 + 48), a2, a3);
  *a4 = result;
  a4[1] = v7;
  return result;
}

unint64_t sub_1AAF3ABD4()
{
  result = qword_1ED9B3A28[0];
  if (!qword_1ED9B3A28[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1ED9B3A28);
  }

  return result;
}

BOOL sub_1AAF3AC38(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = sub_1AACB6398(a1);
  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = *(*(a2 + 56) + 72 * v3 + 40);
  v6 = v5 >> 8 > 0xFE;
  v7 = v5 & 0xFF00;
  return v6 || v7 == 768;
}

uint64_t sub_1AAF3ACA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  if (a12 != 255)
  {
    return sub_1AAD31A5C(a11, a12 & 1);
  }

  return result;
}

double sub_1AAF3AD20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(type metadata accessor for PlottableProjection() - 8);
  v9 = v2 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  *&result = sub_1AAF31B48(a1, v9, v5, v6, v7, a2).n128_u64[0];
  return result;
}

void sub_1AAF3ADC8()
{
  type metadata accessor for XYRenderer();
  if (v0 <= 0x3F)
  {
    sub_1AAD04B78(319, &qword_1EB4261F0, sub_1AAE8412C, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1AAF3AA3C(319, &qword_1EB4272B0, qword_1EB4272B8, MEMORY[0x1E697E0B8], type metadata accessor for RepeatedValueCollection);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1AAF3AEDC(int *a1, unsigned int a2, void *a3)
{
  v51 = a3[2];
  v4 = *(v51 - 8);
  v5 = *(a3[3] - 8);
  v6 = *(v4 + 84);
  v7 = *(v5 + 80);
  v8 = *(sub_1AAF8CB94() - 8);
  v9 = *(v8 + 80);
  v10 = *(sub_1AAF8CBA4() - 8);
  v11 = *(v10 + 80);
  v12 = v11 | v9;
  v13 = v11 | v9 | v7;
  v14 = v13 | 7;
  v15 = (v13 + 32) & ~(v13 | 7);
  v16 = *(v5 + 64);
  if (((v16 + v7) & ~v7) + v16 > v16)
  {
    v16 += (v16 + v7) & ~v7;
  }

  v17 = (*(v8 + 64) + v11 + ((v9 + 8) & ~v9)) & ~v11;
  v18 = *(v10 + 64);
  v19 = v17 + v18;
  if (v16 <= v17 + v18)
  {
    v20 = v17 + v18;
  }

  else
  {
    v20 = v16;
  }

  if (v20 <= 0x10)
  {
    v20 = 16;
  }

  v21 = v20 + v15;
  if (v21 + 1 > ((v21 + 1 + v14) & ~v14) + v21 + 1)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = ((v21 + 1 + v14) & ~v14) + v21 + 1;
  }

  v23 = (v21 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v22 <= v23 + 113)
  {
    v22 = v23 + 113;
  }

  v24 = v23 + 49;
  if (v22 > v24)
  {
    v24 = v22;
  }

  if (v24 <= 0x19)
  {
    v25 = 25;
  }

  else
  {
    v25 = v24;
  }

  v26 = *(a3[4] - 8);
  v27 = *(v26 + 80);
  v28 = v12 | v27;
  v29 = v28 | 7;
  v30 = (v28 + 32) & ~(v28 | 7);
  v31 = *(v26 + 64);
  if (((v31 + v27) & ~v27) + v31 > v31)
  {
    v31 += (v31 + v27) & ~v27;
  }

  if (v31 <= v19)
  {
    v31 = v19;
  }

  if (v31 <= 0x10)
  {
    v31 = 16;
  }

  v32 = v31 + v30;
  if (v32 + 1 > ((v32 + 1 + v29) & ~v29) + v32 + 1)
  {
    v33 = v32 + 1;
  }

  else
  {
    v33 = ((v32 + 1 + v29) & ~v29) + v32 + 1;
  }

  v34 = (v32 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v33 <= v34 + 113)
  {
    v33 = v34 + 113;
  }

  v35 = v34 + 49;
  if (v33 > v35)
  {
    v35 = v33;
  }

  if (v35 <= 0x19)
  {
    v36 = 25;
  }

  else
  {
    v36 = v35;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v37 = 0x7FFFFFFF;
  }

  else
  {
    v37 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v38 = *(v4 + 64) + v14;
  v39 = v25 + 1;
  if (v37 >= a2)
  {
    goto LABEL_60;
  }

  v40 = ((((((((((v36 + ((v39 + v29 + (v38 & ~v14)) & ~v29) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v41 = v40 & 0xFFFFFFF8;
  if ((v40 & 0xFFFFFFF8) != 0)
  {
    v42 = 2;
  }

  else
  {
    v42 = a2 - v37 + 1;
  }

  if (v42 >= 0x10000)
  {
    v43 = 4;
  }

  else
  {
    v43 = 2;
  }

  if (v42 < 0x100)
  {
    v43 = 1;
  }

  if (v42 >= 2)
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  if (v44 > 1)
  {
    if (v44 == 2)
    {
      v45 = *(a1 + v40);
      if (!v45)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v45 = *(a1 + v40);
      if (!v45)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    v47 = v45 - 1;
    if (v41)
    {
      v47 = 0;
      v48 = *a1;
    }

    else
    {
      v48 = 0;
    }

    return v37 + (v48 | v47) + 1;
  }

  if (v44)
  {
    v45 = *(a1 + v40);
    if (v45)
    {
      goto LABEL_57;
    }
  }

LABEL_60:
  if (v6 < 0x7FFFFFFF)
  {
    v50 = *((v36 + 1 + ((((a1 + v38) & ~v14) + v29 + v39) & ~v29) + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v50 >= 0xFFFFFFFF)
    {
      LODWORD(v50) = -1;
    }

    return (v50 + 1);
  }

  else
  {
    v49 = *(v4 + 48);

    return v49(a1, v6, v51);
  }
}

void sub_1AAF3B32C(_DWORD *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v51 = *(a4[2] - 8);
  v6 = *(a4[3] - 8);
  v7 = *(v51 + 84);
  v8 = *(v6 + 80);
  v9 = *(sub_1AAF8CB94() - 8);
  v10 = *(v9 + 80);
  v11 = sub_1AAF8CBA4();
  v12 = v7;
  v13 = *(v11 - 8);
  v14 = *(v13 + 80);
  v15 = v14 | v10;
  v16 = v14 | v10 | v8;
  v17 = v16 | 7;
  v18 = (v16 + 32) & ~(v16 | 7);
  v19 = *(v6 + 64);
  if (((v19 + v8) & ~v8) + v19 > v19)
  {
    v19 += (v19 + v8) & ~v8;
  }

  v20 = (*(v9 + 64) + v14 + ((v10 + 8) & ~v10)) & ~v14;
  v21 = *(v13 + 64);
  v22 = v20 + v21;
  if (v19 <= v20 + v21)
  {
    v23 = v20 + v21;
  }

  else
  {
    v23 = v19;
  }

  if (v23 <= 0x10)
  {
    v23 = 16;
  }

  v24 = v23 + v18;
  if (v24 + 1 > ((v24 + 1 + v17) & ~v17) + v24 + 1)
  {
    v25 = v24 + 1;
  }

  else
  {
    v25 = ((v24 + 1 + v17) & ~v17) + v24 + 1;
  }

  v26 = (v24 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v25 <= v26 + 113)
  {
    v25 = v26 + 113;
  }

  v27 = v26 + 49;
  if (v25 > v27)
  {
    v27 = v25;
  }

  if (v27 <= 0x19)
  {
    v28 = 25;
  }

  else
  {
    v28 = v27;
  }

  v29 = *(a4[4] - 8);
  v30 = *(v29 + 80);
  v31 = v15 | v30;
  v32 = v31 | 7;
  v33 = (v31 + 32) & ~(v31 | 7);
  v34 = *(v29 + 64);
  if (((v34 + v30) & ~v30) + v34 > v34)
  {
    v34 += (v34 + v30) & ~v30;
  }

  if (v34 <= v22)
  {
    v34 = v22;
  }

  if (v34 <= 0x10)
  {
    v34 = 16;
  }

  v35 = v34 + v33;
  if (v35 + 1 > ((v35 + 1 + v32) & ~v32) + v35 + 1)
  {
    v36 = v35 + 1;
  }

  else
  {
    v36 = ((v35 + 1 + v32) & ~v32) + v35 + 1;
  }

  v37 = (v35 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v36 <= v37 + 113)
  {
    v36 = v37 + 113;
  }

  v38 = v37 + 49;
  if (v36 > v38)
  {
    v38 = v36;
  }

  if (v38 <= 0x19)
  {
    v38 = 25;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v39 = 0x7FFFFFFF;
  }

  else
  {
    v39 = v7;
  }

  v40 = *(v51 + 64) + v17;
  v41 = v28 + 1;
  v42 = ((((((((((v38 + ((v28 + 1 + v32 + (v40 & ~v17)) & ~v32) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v39 >= a3)
  {
    v45 = 0;
  }

  else
  {
    if (((((((((((v38 + ((v28 + 1 + v32 + (v40 & ~v17)) & ~v32) + 8) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v43 = a3 - v39 + 1;
    }

    else
    {
      v43 = 2;
    }

    if (v43 >= 0x10000)
    {
      v44 = 4;
    }

    else
    {
      v44 = 2;
    }

    if (v43 < 0x100)
    {
      v44 = 1;
    }

    if (v43 >= 2)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }
  }

  if (a2 > v39)
  {
    if (v42)
    {
      v46 = 1;
    }

    else
    {
      v46 = a2 - v39;
    }

    if (v42)
    {
      v47 = ~v39 + a2;
      bzero(a1, v42);
      *a1 = v47;
    }

    if (v45 > 1)
    {
      if (v45 == 2)
      {
        *(a1 + v42) = v46;
      }

      else
      {
        *(a1 + v42) = v46;
      }
    }

    else if (v45)
    {
      *(a1 + v42) = v46;
    }

    return;
  }

  if (v45 > 1)
  {
    if (v45 != 2)
    {
      *(a1 + v42) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_67;
    }

    *(a1 + v42) = 0;
  }

  else if (v45)
  {
    *(a1 + v42) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_67;
  }

  if (!a2)
  {
    return;
  }

LABEL_67:
  if (v12 < 0x7FFFFFFF)
  {
    v49 = ((v38 + 1 + ((((a1 + v40) & ~v17) + v32 + v41) & ~v32) + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v50 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v50 = a2 - 1;
    }

    *v49 = v50;
  }

  else
  {
    v48 = *(v51 + 56);

    v48(a1);
  }
}

unint64_t sub_1AAF3B7B4()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v0 = sub_1AAF90774();
    if (v2 <= 0x3F)
    {
      v0 = sub_1AACFDCAC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_1AAF3B854(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1AAF3B96C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1AAF3BB24()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF3BB84()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF3BBC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 713))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1AAF3BC30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
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
    *(result + 712) = 0;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 713) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 713) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AAF3BD3C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF3BD78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 49))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 48) >> 1) & 0x3E | (*(a1 + 48) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AAF3BDCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

void sub_1AAF3BE74()
{
  sub_1AAF3C2A4(319, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for VisualMapper.Mapping();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AAF3BF20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = *(v3 + 64);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + (((*(v3 + 80) & 0xF8) + 39) & ~(*(v3 + 80) & 0xF8) & 0x1F8) + 1;
  v6 = 8 * v5;
  if (v5 > 3)
  {
    goto LABEL_6;
  }

  v9 = (a2 - 2147483646 + ~(-1 << v6)) >> v6;
  if (v9 > 0xFFFE)
  {
    v7 = *(a1 + v5);
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_25:
    v11 = *(a1 + 3);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    if ((v11 + 1) >= 2)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }

  if (v9 > 0xFE)
  {
    v7 = *(a1 + v5);
    if (*(a1 + v5))
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  if (!v9)
  {
    goto LABEL_25;
  }

LABEL_6:
  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 0x7FFFFFFF;
}

void sub_1AAF3C094(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 64);
  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  v7 = v6 + (((*(v5 + 80) & 0xF8) + 39) & ~(*(v5 + 80) & 0xF8) & 0x1F8) + 1;
  if (a3 < 0x7FFFFFFF)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = (a3 - 2147483646 + ~(-1 << (8 * v7))) >> (8 * v7);
    if (v11 > 0xFFFE)
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0xFF)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0x7FFFFFFE)
  {
    v9 = a2 - 0x7FFFFFFF;
    if (v7 >= 4)
    {
      bzero(a1, v7);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v7)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_39:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      *(a1 + 3) = a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_24;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_1AAF3C2A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAF3C35C(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = *v1;
  (*(v5 + 16))(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  swift_dynamicCast();
  v7[0] = v7[2];
  v7[1] = v7[3];
  v4(v7);
}

uint64_t sub_1AAF3C45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = (*(AssociatedConformanceWitness + 16))(&v29, AssociatedTypeWitness, AssociatedConformanceWitness);
  switch(v29)
  {
    case 1:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF41A80;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 2:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF41A54;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 3:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF41A18;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 4:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF419DC;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 5:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF419B0;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 6:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF41984;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 7:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF41958;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 8:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF4191C;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 9:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF4189C;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 10:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF41814;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 11:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF41870;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 12:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF41AD8;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 13:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF41B04;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
    case 14:
      result = sub_1AAF902C4();
      __break(1u);
      return result;
    default:
      MEMORY[0x1EEE9AC00](v14);
      v16 = *(a3 + 24);
      v23 = v16;
      v24 = a4;
      v25 = a5;
      v26 = a6;
      v27 = v6;
      v28 = a2;
      v17 = *(*(a6 + 8) + 8);
      v18 = MEMORY[0x1E69E73E0];
      v19 = MEMORY[0x1E69E7410];
      v20 = sub_1AAF41AAC;
      return sub_1AACB00E0(v20, &v22, a4, v16, v18, v17, v19, v15);
  }
}

uint64_t sub_1AAF3CB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = (*(AssociatedConformanceWitness + 16))(&v24, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v24 == 14)
  {
    MEMORY[0x1EEE9AC00](v14);
    v18 = *(a3 + 24);
    v19 = a4;
    v20 = a5;
    v21 = a6;
    v22 = v6;
    v23 = a2;
    return sub_1AACB00E0(sub_1AAF40494, &v17, a4, v18, MEMORY[0x1E69E73E0], *(*(a6 + 8) + 8), MEMORY[0x1E69E7410], v15);
  }

  else
  {
    result = sub_1AAF902C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAF3CCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = sub_1AACD78AC(a1, a3, a4);
  if (v8 >= 2u)
  {
    result = sub_1AACCA728(v6, v7, 2);
    __break(1u);
  }

  else
  {
    v10 = v6;
    return v5(&v10);
  }

  return result;
}

uint64_t sub_1AAF3CD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[11] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = (*(AssociatedConformanceWitness + 16))(&v22, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v22 == 13)
  {
    MEMORY[0x1EEE9AC00](v17);
    v21[2] = *(a5 + 24);
    v21[3] = a6;
    v21[4] = a7;
    v21[5] = a8;
    v21[6] = a2;
    v21[7] = a3;
    v21[8] = a4;
    v21[9] = v21[10];
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return sub_1AACB00E0(sub_1AAF4234C, v21, a6, TupleTypeMetadata2, MEMORY[0x1E69E73E0], *(*(a8 + 8) + 8), MEMORY[0x1E69E7410], v19);
  }

  else
  {
    result = sub_1AAF902C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAF3CF20(char **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v297 = a6;
  v303 = a5;
  v296 = a1;
  v9 = *a2;
  v302 = a2;
  v10 = v9;
  v11 = *(a3 + 24);
  v269 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v268 = &v251 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v293 = sub_1AAF8FE74();
  v271 = *(v293 - 8);
  MEMORY[0x1EEE9AC00](v293);
  v270 = &v251 - v15;
  v294 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v267 = &v251 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v299 = &v251 - v19;
  v20 = *(v10 + *MEMORY[0x1E69E77B0] + 8);
  v265 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v300 = &v251 - v22;
  v24 = *v23;
  v295 = *(*v23 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v251 - v26;
  v28 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v264 = &v251 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v263 = &v251 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v277 = &v251 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v262 = &v251 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v261 = &v251 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v260 = &v251 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v259 = &v251 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v258 = &v251 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v257 = &v251 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v256 = &v251 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v255 = &v251 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v254 = &v251 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v253 = &v251 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v252 = &v251 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v251 = &v251 - v57;
  v305 = a4;
  v58 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v251 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = a7;
  v275 = *(*(*(a7 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v274 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v292 = (&v251 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v63);
  v291 = (&v251 - v64);
  MEMORY[0x1EEE9AC00](v65);
  v290 = &v251 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v289 = (&v251 - v68);
  MEMORY[0x1EEE9AC00](v69);
  v288 = (&v251 - v70);
  MEMORY[0x1EEE9AC00](v71);
  v287 = (&v251 - v72);
  MEMORY[0x1EEE9AC00](v73);
  v286 = &v251 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v285 = &v251 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v284 = &v251 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v283 = &v251 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v279 = &v251 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v282 = &v251 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v281 = &v251 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v278 = &v251 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v280 = &v251 - v90;
  v91 = swift_allocObject();
  v308 = v11;
  *(v91 + 16) = sub_1AAF8A48C();
  v273 = v91 + 16;
  v298 = v91;
  *(v91 + 24) = v92;
  v93 = swift_allocObject();
  v307 = v93;
  *(v93 + 16) = 1;
  v266 = (v93 + 16);
  v306 = swift_allocBox();
  v94 = *(v294 + 56);
  v272 = v95;
  v276 = v14;
  v94(v95, 1, 1, v14);
  v96 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v98 = *(AssociatedConformanceWitness + 16);
  v301 = v96;
  v98(&v314, v96, AssociatedConformanceWitness);
  v99 = v314;
  (*(v58 + 16))(v61, v296);
  v296 = (v295 + 48);
  switch(v99)
  {
    case 1:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v147 = swift_getAssociatedConformanceWitness();
      v148 = v254;
      v149 = v147;
      sub_1AAF8FE94();
      v292 = *v296;
      v150 = v292(v148, 1, v24);
      v105 = v276;
      if (v150 == 1)
      {
        v106 = &v314;
        goto LABEL_32;
      }

      v208 = v295 + 32;
      v295 = *(v295 + 32);
      v291 = (v208 - 24);
      v290 = (v265 + 8);
      v289 = (v294 + 8);
      v133 = v309;
      v288 = v149;
      do
      {
        v209 = v208;
        (v295)(v27, v148, v24);
        v210 = v300;
        swift_getAtKeyPath();
        (*v291)(v27, v24);
        sub_1AACB09D0(v301, MEMORY[0x1E69E7290], &v317);
        v211 = (*v290)(v210, v20);
        v211.n128_u16[0] = LOWORD(v317);
        v317 = vmovl_s16(v211.n128_u64[0]).i32[0];
        v212 = v299;
        swift_dynamicCast();
        sub_1AAF41B30(v212, v306, v307, v298, v133, v105, v308, v20, v305, v303);
        (*v289)(v212, v105);
        sub_1AAF8FE94();
        v133 = v309;
        v213 = v292(v148, 1, v24);
        v208 = v209;
      }

      while (v213 != 1);
      p_AssociatedTypeWitness = &v314;
      goto LABEL_79;
    case 2:
      v127 = v279;
      sub_1AAF8F744();
      v128 = AssociatedTypeWitness;
      v129 = swift_getAssociatedConformanceWitness();
      v130 = v255;
      v292 = v129;
      sub_1AAF8FE94();
      v291 = *v296;
      v131 = v291(v130, 1, v24);
      v105 = v276;
      if (v131 == 1)
      {
        v132 = v127;
        v134 = v308;
        v133 = v309;
        v135 = v294;
        v136 = v293;
        v137 = v271;
        v138 = v270;
        v100 = v128;
        goto LABEL_80;
      }

      v194 = v295 + 32;
      v295 = *(v295 + 32);
      v290 = (v194 - 24);
      v289 = (v265 + 8);
      v288 = (v294 + 8);
      v133 = v309;
      v195 = v298;
      do
      {
        (v295)(v27, v130, v24);
        v196 = v300;
        swift_getAtKeyPath();
        (*v290)(v27, v24);
        sub_1AACB09D0(v301, MEMORY[0x1E69E72F0], &v317);
        (*v289)(v196, v20);
        v317 = SLODWORD(v317);
        v197 = v299;
        swift_dynamicCast();
        sub_1AAF41B30(v197, v306, v307, v195, v133, v105, v308, v20, v305, v303);
        (*v288)(v197, v105);
        sub_1AAF8FE94();
        v133 = v309;
      }

      while (v291(v130, 1, v24) != 1);
      p_AssociatedTypeWitness = &v311;
      goto LABEL_79;
    case 3:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v139 = swift_getAssociatedConformanceWitness();
      v140 = v256;
      v141 = v139;
      sub_1AAF8FE94();
      v292 = *v296;
      v142 = v292(v140, 1, v24);
      v105 = v276;
      if (v142 == 1)
      {
        v106 = &v315;
        goto LABEL_32;
      }

      v198 = v295 + 32;
      v295 = *(v295 + 32);
      v291 = (v198 - 24);
      v290 = (v265 + 8);
      v289 = v141;
      v288 = (v294 + 8);
      v133 = v309;
      do
      {
        (v295)(v27, v140, v24);
        v199 = v300;
        swift_getAtKeyPath();
        (*v291)(v27, v24);
        sub_1AACB09D0(v301, MEMORY[0x1E69E7360], &v317);
        (*v290)(v199, v20);
        v317 = *&v317;
        v200 = v299;
        swift_dynamicCast();
        sub_1AAF41B30(v200, v306, v307, v298, v133, v105, v308, v20, v305, v303);
        (*v288)(v200, v105);
        sub_1AAF8FE94();
        v133 = v309;
      }

      while (v292(v140, 1, v24) != 1);
      p_AssociatedTypeWitness = &v315;
      goto LABEL_79;
    case 4:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v115 = swift_getAssociatedConformanceWitness();
      v116 = v257;
      v117 = v115;
      sub_1AAF8FE94();
      v292 = *v296;
      v118 = v292(v116, 1, v24);
      v105 = v276;
      if (v118 == 1)
      {
        v106 = &v316;
        goto LABEL_32;
      }

      v180 = v295 + 32;
      v295 = *(v295 + 32);
      v291 = (v180 - 24);
      v290 = (v265 + 8);
      v289 = v117;
      v288 = (v294 + 8);
      v133 = v309;
      do
      {
        (v295)(v27, v116, v24);
        v181 = v300;
        swift_getAtKeyPath();
        (*v291)(v27, v24);
        sub_1AACB09D0(v301, MEMORY[0x1E69E6530], &v317);
        (*v290)(v181, v20);
        v317 = *&v317;
        v182 = v299;
        swift_dynamicCast();
        sub_1AAF41B30(v182, v306, v307, v298, v133, v105, v308, v20, v305, v303);
        (*v288)(v182, v105);
        sub_1AAF8FE94();
        v133 = v309;
      }

      while (v292(v116, 1, v24) != 1);
      p_AssociatedTypeWitness = &v316;
      goto LABEL_79;
    case 5:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v151 = swift_getAssociatedConformanceWitness();
      v152 = v258;
      v153 = v151;
      sub_1AAF8FE94();
      v292 = *v296;
      v154 = v292(v152, 1, v24);
      v105 = v276;
      if (v154 == 1)
      {
        v106 = &v317;
        goto LABEL_32;
      }

      v214 = v295 + 32;
      v295 = *(v295 + 32);
      v291 = (v214 - 24);
      v290 = (v265 + 8);
      v289 = v153;
      v288 = (v294 + 8);
      v133 = v309;
      do
      {
        (v295)(v27, v152, v24);
        v215 = v300;
        swift_getAtKeyPath();
        (*v291)(v27, v24);
        sub_1AACB09D0(v301, MEMORY[0x1E69E7508], &v317);
        v216 = (*v290)(v215, v20);
        v216.n128_u8[0] = LOBYTE(v317);
        v317 = v216.n128_u64[0];
        v217 = v299;
        swift_dynamicCast();
        sub_1AAF41B30(v217, v306, v307, v298, v133, v105, v308, v20, v305, v303);
        (*v288)(v217, v105);
        sub_1AAF8FE94();
        v133 = v309;
      }

      while (v292(v152, 1, v24) != 1);
      p_AssociatedTypeWitness = &v317;
      goto LABEL_79;
    case 6:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v158 = swift_getAssociatedConformanceWitness();
      v159 = v259;
      v160 = v158;
      sub_1AAF8FE94();
      v292 = *v296;
      v161 = v292(v159, 1, v24);
      v105 = v276;
      if (v161 == 1)
      {
        v106 = &v318;
        goto LABEL_32;
      }

      v226 = v295 + 32;
      v295 = *(v295 + 32);
      v291 = (v226 - 24);
      v290 = (v265 + 8);
      v289 = v160;
      v288 = (v294 + 8);
      v133 = v309;
      do
      {
        (v295)(v27, v159, v24);
        v227 = v300;
        swift_getAtKeyPath();
        (*v291)(v27, v24);
        sub_1AACB09D0(v301, MEMORY[0x1E69E75F8], &v317);
        v228 = (*v290)(v227, v20);
        v228.n128_u16[0] = LOWORD(v317);
        v317 = v228.n128_u64[0];
        v229 = v299;
        swift_dynamicCast();
        sub_1AAF41B30(v229, v306, v307, v298, v133, v105, v308, v20, v305, v303);
        (*v288)(v229, v105);
        sub_1AAF8FE94();
        v133 = v309;
      }

      while (v292(v159, 1, v24) != 1);
      p_AssociatedTypeWitness = &v318;
      goto LABEL_79;
    case 7:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v143 = swift_getAssociatedConformanceWitness();
      v144 = v260;
      v145 = v143;
      sub_1AAF8FE94();
      v292 = *v296;
      v146 = v292(v144, 1, v24);
      v105 = v276;
      if (v146 == 1)
      {
        v106 = &v319;
        goto LABEL_32;
      }

      v201 = v295 + 32;
      v295 = *(v295 + 32);
      v291 = (v201 - 24);
      v290 = (v265 + 8);
      v289 = v145;
      v288 = (v294 + 8);
      v133 = v309;
      do
      {
        (v295)(v27, v144, v24);
        v202 = v300;
        swift_getAtKeyPath();
        (*v291)(v27, v24);
        sub_1AACB09D0(v301, MEMORY[0x1E69E7668], &v317);
        v203 = (*v290)(v202, v20);
        v203.n128_u32[0] = LODWORD(v317);
        v317 = v203.n128_u64[0];
        v204 = v299;
        swift_dynamicCast();
        sub_1AAF41B30(v204, v306, v307, v298, v133, v105, v308, v20, v305, v303);
        (*v288)(v204, v105);
        sub_1AAF8FE94();
        v133 = v309;
      }

      while (v292(v144, 1, v24) != 1);
      p_AssociatedTypeWitness = &v319;
      goto LABEL_79;
    case 8:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v166 = swift_getAssociatedConformanceWitness();
      v167 = v261;
      v168 = v166;
      sub_1AAF8FE94();
      v292 = *v296;
      v169 = v292(v167, 1, v24);
      v105 = v276;
      if (v169 == 1)
      {
        v106 = &v320;
        goto LABEL_32;
      }

      v239 = v295 + 32;
      v295 = *(v295 + 32);
      v291 = (v239 - 24);
      v290 = (v265 + 8);
      v289 = v168;
      v287 = (v294 + 8);
      v133 = v309;
      do
      {
        (v295)(v27, v167, v24);
        v240 = v300;
        swift_getAtKeyPath();
        (*v291)(v27, v24);
        sub_1AACB09D0(v301, MEMORY[0x1E69E76D8], &v317);
        (*v290)(v240, v20);
        v317 = *&v317;
        v241 = v299;
        swift_dynamicCast();
        sub_1AAF41B30(v241, v306, v307, v298, v133, v105, v308, v20, v305, v303);
        (*v287)(v241, v105);
        sub_1AAF8FE94();
        v133 = v309;
      }

      while (v292(v167, 1, v24) != 1);
      p_AssociatedTypeWitness = &v320;
      goto LABEL_79;
    case 9:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v123 = swift_getAssociatedConformanceWitness();
      v124 = v262;
      v125 = v123;
      sub_1AAF8FE94();
      v292 = *v296;
      v126 = v292(v124, 1, v24);
      v105 = v276;
      if (v126 == 1)
      {
        v106 = &v321;
        goto LABEL_32;
      }

      v191 = v295 + 32;
      v295 = *(v295 + 32);
      v291 = (v191 - 24);
      v290 = (v265 + 8);
      v288 = v125;
      v287 = (v294 + 8);
      v133 = v309;
      do
      {
        (v295)(v27, v124, v24);
        v192 = v300;
        swift_getAtKeyPath();
        (*v291)(v27, v24);
        sub_1AACB09D0(v301, MEMORY[0x1E69E6810], &v317);
        (*v290)(v192, v20);
        v317 = *&v317;
        v193 = v299;
        swift_dynamicCast();
        sub_1AAF41B30(v193, v306, v307, v298, v133, v105, v308, v20, v305, v303);
        (*v287)(v193, v105);
        sub_1AAF8FE94();
        v133 = v309;
      }

      while (v292(v124, 1, v24) != 1);
      p_AssociatedTypeWitness = &v321;
      goto LABEL_79;
    case 10:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v162 = swift_getAssociatedConformanceWitness();
      v163 = v264;
      v164 = v162;
      sub_1AAF8FE94();
      v291 = *v296;
      v165 = v291(v163, 1, v24);
      v105 = v276;
      if (v165 == 1)
      {
        v134 = v308;
        v133 = v309;
        v135 = v294;
        v136 = v293;
        v137 = v271;
        v138 = v270;
      }

      else
      {
        v230 = v295 + 32;
        v295 = *(v295 + 32);
        v290 = (v230 - 24);
        v289 = (v265 + 8);
        v288 = v164;
        v287 = (v294 + 8);
        v133 = v309;
        do
        {
          (v295)(v27, v163, v24);
          v231 = v300;
          swift_getAtKeyPath();
          (*v290)(v27, v24);
          sub_1AACB09D0(v301, MEMORY[0x1E69E7788], &v317);
          (*v289)(v231, v20);
          _H0 = LOWORD(v317);
          __asm { FCVT            D0, H0 }

          v317 = _D0;
          v238 = v299;
          swift_dynamicCast();
          sub_1AAF41B30(v238, v306, v307, v298, v133, v105, v308, v20, v305, v303);
          (*v287)(v238, v105);
          sub_1AAF8FE94();
          v133 = v309;
        }

        while (v291(v163, 1, v24) != 1);
        v134 = v308;
        v135 = v294;
        v136 = v293;
        v137 = v271;
        v138 = v270;
        v100 = AssociatedTypeWitness;
      }

      v132 = v292;
      goto LABEL_80;
    case 11:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v111 = swift_getAssociatedConformanceWitness();
      v112 = v263;
      v113 = v111;
      sub_1AAF8FE94();
      v292 = *v296;
      v114 = v292(v112, 1, v24);
      v105 = v276;
      if (v114 == 1)
      {
        v106 = &v323;
        goto LABEL_32;
      }

      v177 = v295 + 32;
      v295 = *(v295 + 32);
      v290 = (v177 - 24);
      v289 = (v265 + 8);
      v288 = v113;
      v287 = (v294 + 8);
      v133 = v309;
      do
      {
        (v295)(v27, v112, v24);
        v178 = v300;
        swift_getAtKeyPath();
        (*v290)(v27, v24);
        sub_1AACB09D0(v301, MEMORY[0x1E69E6448], &v317);
        (*v289)(v178, v20);
        v317 = *&v317;
        v179 = v299;
        swift_dynamicCast();
        sub_1AAF41B30(v179, v306, v307, v298, v133, v105, v308, v20, v305, v303);
        (*v287)(v179, v105);
        sub_1AAF8FE94();
        v133 = v309;
      }

      while (v292(v112, 1, v24) != 1);
      p_AssociatedTypeWitness = &v323;
      goto LABEL_79;
    case 12:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v119 = swift_getAssociatedConformanceWitness();
      v120 = v277;
      v121 = v119;
      sub_1AAF8FE94();
      v292 = *v296;
      v122 = v292(v120, 1, v24);
      v105 = v276;
      if (v122 == 1)
      {
        v106 = &v322;
        goto LABEL_32;
      }

      v291 = *(v295 + 32);
      v289 = (v295 + 8);
      v288 = (v265 + 8);
      v287 = (v294 + 8);
      v133 = v309;
      v286 = v121;
      v295 += 32;
      v183 = MEMORY[0x1E69E63B0];
      do
      {
        v184 = v277;
        v291(v27, v277, v24);
        v185 = v300;
        swift_getAtKeyPath();
        (*v289)(v27, v24);
        v186 = v105;
        v187 = v24;
        v188 = v27;
        v189 = v185;
        v190 = v299;
        sub_1AACB09D0(v301, v183, &v317);
        (*v288)(v189, v20);
        v27 = v188;
        v24 = v187;
        v105 = v186;
        swift_dynamicCast();
        sub_1AAF41B30(v190, v306, v307, v298, v133, v186, v308, v20, v305, v303);
        (*v287)(v190, v186);
        sub_1AAF8FE94();
        v133 = v309;
      }

      while (v292(v184, 1, v24) != 1);
      p_AssociatedTypeWitness = &v322;
      goto LABEL_79;
    case 13:
      v155 = v278;
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v156 = swift_getAssociatedConformanceWitness();
      v157 = v252;
      sub_1AAF8FE94();
      v292 = *v296;
      if (v292(v157, 1, v24) == 1)
      {
        v132 = v155;
        v134 = v308;
        v133 = v309;
        v135 = v294;
        v136 = v293;
        v137 = v271;
        v138 = v270;
        v105 = v276;
        goto LABEL_80;
      }

      v218 = v157;
      v291 = v156;
      v219 = v295 + 32;
      v295 = *(v295 + 32);
      v290 = (v219 - 24);
      v289 = (v265 + 8);
      v220 = v297;
      v221 = (v294 + 8);
      v133 = v309;
      v105 = v276;
      do
      {
        (v295)(v27, v218, v24);
        v222 = v300;
        swift_getAtKeyPath();
        (*v290)(v27, v24);
        sub_1AACB0534(v222, v301, v20, v220);
        v224 = v223;
        (*v289)(v222, v20);
        v317 = v224;
        v225 = v299;
        swift_dynamicCast();
        sub_1AAF41B30(v225, v306, v307, v298, v133, v105, v308, v20, v305, v303);
        (*v221)(v225, v105);
        sub_1AAF8FE94();
        v133 = v309;
      }

      while (v292(v218, 1, v24) != 1);
      p_AssociatedTypeWitness = &AssociatedTypeWitness;
      goto LABEL_79;
    case 14:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v107 = swift_getAssociatedConformanceWitness();
      v108 = v251;
      v109 = v107;
      sub_1AAF8FE94();
      v292 = *v296;
      v110 = v292(v108, 1, v24);
      v105 = v276;
      if (v110 == 1)
      {
        v106 = &v312;
        goto LABEL_32;
      }

      v170 = v295 + 32;
      v295 = *(v295 + 32);
      v291 = (v170 - 24);
      v290 = (v265 + 8);
      v289 = (v294 + 8);
      v133 = v309;
      v288 = v109;
      v171 = MEMORY[0x1E69E6158];
      do
      {
        v172 = v170;
        (v295)(v27, v108, v24);
        v173 = v300;
        swift_getAtKeyPath();
        (*v291)(v27, v24);
        sub_1AACB09D0(v301, v171, &v317);
        (*v290)(v173, v20);
        v174 = v299;
        swift_dynamicCast();
        sub_1AAF41B30(v174, v306, v307, v298, v133, v105, v308, v20, v305, v303);
        (*v289)(v174, v105);
        sub_1AAF8FE94();
        v133 = v309;
        v175 = v292(v108, 1, v24);
        v170 = v172;
      }

      while (v175 != 1);
      p_AssociatedTypeWitness = &v312;
      goto LABEL_79;
    default:
      sub_1AAF8F744();
      v100 = AssociatedTypeWitness;
      v101 = swift_getAssociatedConformanceWitness();
      v102 = v253;
      v103 = v101;
      sub_1AAF8FE94();
      v292 = *v296;
      v104 = v292(v102, 1, v24);
      v105 = v276;
      if (v104 == 1)
      {
        v106 = &v313;
LABEL_32:
        v132 = *(v106 - 32);
        v134 = v308;
        v133 = v309;
        v135 = v294;
        v136 = v293;
        v137 = v271;
        v138 = v270;
      }

      else
      {
        v205 = v295 + 32;
        v295 = *(v295 + 32);
        v291 = (v205 - 24);
        v290 = (v265 + 8);
        v289 = v103;
        v288 = (v294 + 8);
        v133 = v309;
        do
        {
          (v295)(v27, v102, v24);
          v206 = v300;
          swift_getAtKeyPath();
          (*v291)(v27, v24);
          sub_1AACB09D0(v301, MEMORY[0x1E69E7230], &v317);
          (*v290)(v206, v20);
          v317 = SLOBYTE(v317);
          v207 = v299;
          swift_dynamicCast();
          sub_1AAF41B30(v207, v306, v307, v298, v133, v105, v308, v20, v305, v303);
          (*v288)(v207, v105);
          sub_1AAF8FE94();
          v133 = v309;
        }

        while (v292(v102, 1, v24) != 1);
        p_AssociatedTypeWitness = &v313;
LABEL_79:
        v132 = *(p_AssociatedTypeWitness - 32);
        v134 = v308;
        v135 = v294;
        v136 = v293;
        v137 = v271;
        v138 = v270;
        v100 = AssociatedTypeWitness;
      }

LABEL_80:
      (*(v274 + 8))(v132, v100);
      v242 = v272;
      swift_beginAccess();
      (*(v137 + 16))(v138, v242, v136);
      if ((*(v135 + 48))(v138, 1, v105) == 1)
      {
        (*(v137 + 8))(v138, v136);
      }

      else
      {
        v244 = v267;
        (*(v135 + 32))(v267, v138, v105);
        v245 = v268;
        (*v133)(v244);
        v246 = v266;
        swift_beginAccess();
        v247 = *v246;
        swift_beginAccess();
        v248 = type metadata accessor for RepeatedValueCollection();
        sub_1AAF8A4B4(v245, v247, v248);
        swift_endAccess();
        (*(v269 + 8))(v245, v134);
        (*(v135 + 8))(v244, v105);
      }

      v243 = v298;
      swift_beginAccess();
      v249 = *(v243 + 16);

      return v249;
  }
}

uint64_t sub_1AAF40318(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v11 - v5;
  v8 = *v7;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, MEMORY[0x1E69E6158], v12);
  (*(v4 + 8))(v6, v3);
  v11[0] = v12[0];
  v11[1] = v12[1];
  v8(v11);
}

uint64_t sub_1AAF404C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (**a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v23 - v14;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AAE8A220(v15, a3, a4, AssociatedTypeWitness, v12, a8);
  v18 = v17;
  v20 = v19;
  (*(v13 + 8))(v15, v12);
  swift_getTupleTypeMetadata2();
  v21 = *a5;
  v24 = v18;
  v21(&v24);
  v24 = v20;
  return (v21)(&v24);
}

uint64_t sub_1AAF40678(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - v9;
  v12 = *v11;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB0534(v10, AssociatedTypeWitness, v7, a6);
  v15 = v14;
  (*(v8 + 8))(v10, v7);
  v18 = v15;
  return v12(&v18);
}

uint64_t sub_1AAF407DC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - v5;
  v8 = *v7;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, MEMORY[0x1E69E63B0], &v12);
  (*(v4 + 8))(v6, v3);
  v11 = v12;
  return v8(&v11);
}

uint64_t sub_1AAF40950(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - v5;
  v8 = *v7;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, MEMORY[0x1E69E7230], &v12);
  (*(v4 + 8))(v6, v3);
  v11 = v12;
  return v8(&v11);
}

uint64_t sub_1AAF40AC8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - v5;
  v8 = *v7;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, MEMORY[0x1E69E7290], &v13);
  v10 = (*(v4 + 8))(v6, v3);
  v10.n128_u16[0] = v13;
  v12 = vmovl_s16(v10.n128_u64[0]).i32[0];
  return v8(&v12);
}

uint64_t sub_1AAF40C48(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - v5;
  v8 = *v7;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, MEMORY[0x1E69E72F0], &v12);
  (*(v4 + 8))(v6, v3);
  v11 = v12;
  return v8(&v11);
}

uint64_t sub_1AAF40DC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - v11;
  v14 = *v13;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, a9, &v18);
  (*(v10 + 8))(v12, v9);
  v18 = *&v18;
  return v14(&v18);
}

uint64_t sub_1AAF40F40(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - v5;
  v8 = *v7;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, MEMORY[0x1E69E7508], &v13);
  v10 = (*(v4 + 8))(v6, v3);
  v10.n128_u8[0] = v13;
  v12 = v10.n128_u64[0];
  return v8(&v12);
}

uint64_t sub_1AAF410B8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - v5;
  v8 = *v7;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, MEMORY[0x1E69E75F8], &v13);
  v10 = (*(v4 + 8))(v6, v3);
  v10.n128_u16[0] = v13;
  v12 = v10.n128_u64[0];
  return v8(&v12);
}

uint64_t sub_1AAF41230(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - v5;
  v8 = *v7;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, MEMORY[0x1E69E7668], &v13);
  v10 = (*(v4 + 8))(v6, v3);
  v10.n128_u32[0] = v13;
  v12 = v10.n128_u64[0];
  return v8(&v12);
}

uint64_t sub_1AAF413A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - v11;
  v14 = *v13;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, a9, &v18);
  (*(v10 + 8))(v12, v9);
  v18 = *&v18;
  return v14(&v18);
}

uint64_t sub_1AAF41524(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - v5;
  v8 = *v7;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, MEMORY[0x1E69E6448], &v12);
  (*(v4 + 8))(v6, v3);
  v11 = v12;
  return v8(&v11);
}

uint64_t sub_1AAF4169C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v17 - v5;
  v8 = *v7;
  swift_getAtKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, MEMORY[0x1E69E7788], &v18);
  (*(v4 + 8))(v6, v3);
  _H0 = v18;
  __asm { FCVT            D0, H0 }

  v17 = _D0;
  return v8(&v17);
}

uint64_t sub_1AAF41B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v59 = a5;
  v62 = a4;
  v79 = a3;
  v64 = a7;
  v63 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v61 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v58 - v18;
  v19 = sub_1AAF8FE74();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v22 = &v58 - v21;
  v23 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v72 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v74 = &v58 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v78 = &v58 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v58 - v31;
  v33 = swift_projectBox();
  v34 = v14[2];
  v73 = a1;
  v70 = v14 + 2;
  v68 = v34;
  v34(v32, a1, a6);
  v35 = v14[7];
  v71 = v14 + 7;
  v69 = v35;
  v35(v32, 0, 1, a6);
  swift_beginAccess();
  v66 = TupleTypeMetadata2;
  v36 = *(TupleTypeMetadata2 + 48);
  v37 = *(v23 + 16);
  (v37)(v22, v32, v19);
  v75 = v33;
  (v37)(&v22[v36], v33, v19);
  v76 = v14;
  v38 = v14[6];
  v39 = v38(v22, 1, a6);
  v77 = v23;
  v67 = v38;
  if (v39 == 1)
  {
    v78 = v37;
    v40 = *(v23 + 8);
    v40(v32, v19);
    if (v38(&v22[v36], 1, a6) == 1)
    {
      v40(v22, v19);
      goto LABEL_13;
    }

    v42 = v75;
    v41 = v40;
    v37 = v78;
    goto LABEL_7;
  }

  (v37)(v78, v22, v19);
  if (v38(&v22[v36], 1, a6) == 1)
  {
    v41 = *(v77 + 8);
    v41(v32, v19);
    (v76[1])(v78, a6);
    v42 = v75;
LABEL_7:
    (*(v65 + 8))(v22, v66);
    v43 = v74;
LABEL_8:
    swift_beginAccess();
    (v37)(v43, v42, v19);
    if (v67(v43, 1, a6) == 1)
    {
      v44 = v77;
      v41(v43, v19);
    }

    else
    {
      v45 = v76;
      v46 = v60;
      (v76[4])(v60, v43, a6);
      v47 = v61;
      (*v59)(v46);
      v48 = v79;
      swift_beginAccess();
      v49 = *(v48 + 16);
      swift_beginAccess();
      v50 = v64;
      v51 = type metadata accessor for RepeatedValueCollection();
      sub_1AAF8A4B4(v47, v49, v51);
      swift_endAccess();
      (*(v63 + 8))(v47, v50);
      (v45[1])(v46, a6);
      v44 = v77;
    }

    v52 = v72;
    v68(v72, v73, a6);
    v53 = 1;
    v69(v52, 0, 1, a6);
    swift_beginAccess();
    (*(v44 + 40))(v42, v52, v19);
    result = swift_beginAccess();
    goto LABEL_14;
  }

  v66 = a10;
  v55 = v58;
  (v76[4])(v58, &v22[v36], a6);
  LODWORD(v66) = sub_1AAF8F5F4();
  v65 = v76[1];
  (v65)(v55, a6);
  v41 = *(v77 + 8);
  v41(v32, v19);
  (v65)(v78, a6);
  v41(v22, v19);
  v43 = v74;
  v42 = v75;
  if ((v66 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  v56 = v79;
  result = swift_beginAccess();
  v57 = *(v56 + 16);
  v53 = v57 + 1;
  if (!__OFADD__(v57, 1))
  {
LABEL_14:
    *(v79 + 16) = v53;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAF42390(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AAF423D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

double sub_1AAF4242C(uint64_t a1, char a2, double a3, double a4, double a5)
{
  result = (a3 - a5) / a4;
  if (a2)
  {
    if (a2 == 1)
    {
      if ((*&result & 0x8000000000000000) != 0)
      {
        v7 = 1.0 - exp(-result);
      }

      else
      {
        v7 = exp(result) + -1.0;
      }

      return v7 / *&a1;
    }

    else if (*&a1 != 0.0)
    {

      return exp(result);
    }
  }

  else
  {

    return pow(result, 1.0 / *&a1);
  }

  return result;
}

long double sub_1AAF424D8(uint64_t a1, char a2, long double a3, double a4, double a5)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v7 = a3;
      v8 = *&a1 * a3;
      if ((*&v7 & 0x8000000000000000) != 0)
      {
        a3 = -log(1.0 - v8);
      }

      else
      {
        a3 = log(v8 + 1.0);
      }
    }

    else if (*&a1 != 0.0)
    {
      a3 = log(a3);
    }
  }

  else
  {
    a3 = pow(a3, *&a1);
  }

  return a3 * a4 + a5;
}

uint64_t sub_1AAF42560(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return v2 == v3;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

    return v2 == v3;
  }

  if (v2 == 0.0)
  {
    if (v4 != 2 || *&v3 != 0)
    {
      return 0;
    }
  }

  else if (v4 != 2 || *&v3 != 1)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1AAF425CC@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    *&result = *(v3 + 24) + *&result / *(v3 + 16);
  }

  *a3 = *&result;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1AAF425F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 16) != 2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = *(result + 32);
  if (v4 <= 0.0)
  {
    goto LABEL_11;
  }

  v5 = *(result + 40);
  if (v5 <= 0.0)
  {
    goto LABEL_11;
  }

  if (v4 == v5)
  {
    v6 = swift_allocObject();
    v7 = 0;
    v8 = 0;
    *(v6 + 16) = v4;
    v9 = xmmword_1AAFAB900;
    v10 = sub_1AAF427F8;
    v11 = sub_1AAF42558;
  }

  else
  {
    v12 = log(*(result + 32));
    v14 = 1.0 / (log(v5) - v12);
    v7 = swift_allocObject();
    *(v7 + 16) = v12;
    *(v7 + 24) = v14;
    v6 = swift_allocObject();
    *&v13 = v14;
    *(v6 + 16) = v14;
    *(v6 + 24) = v12;
    *(&v13 + 1) = -(v12 * v14);
    v9 = v13;
    v10 = sub_1AAF427A4;
    v11 = sub_1AAF42774;
    v8 = 1;
  }

  *a2 = v11;
  *(a2 + 8) = v7;
  *(a2 + 16) = v10;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
  *(a2 + 40) = v8;
  *(a2 + 48) = 2;
  *(a2 + 56) = v9;
}

long double sub_1AAF42774(long double *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v3 * (log(*a1) - v2);
}

uint64_t sub_1AAF427A4@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    *&result = exp(*(v3 + 24) + *&result / *(v3 + 16));
  }

  *a3 = *&result;
  *(a3 + 8) = a2 & 1;
  return result;
}

double sub_1AAF427F8@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1AAF42808@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a3 > 0.0 && *(result + 16) == 2)
  {
    v5 = result;
    v6 = *(result + 32);
    v7 = *(result + 40);
    if (v6 == v7)
    {
      v8 = swift_allocObject();
      v9 = 0;
      v8[2] = v6;
      v10 = xmmword_1AAFAB900;
      v11 = 0.0;
      v12 = sub_1AAF42D44;
      v13 = sub_1AAF42558;
      v14 = 2;
    }

    else
    {
      v11 = a3;
      v15 = v6 * a3;
      if ((*&v6 & 0x8000000000000000) != 0)
      {
        v16 = -log(1.0 - v15);
      }

      else
      {
        v16 = log(v15 + 1.0);
      }

      v17 = v7 * v11;
      if ((*&v7 & 0x8000000000000000) != 0)
      {
        v18 = -log(1.0 - v17);
      }

      else
      {
        v18 = log(v17 + 1.0);
      }

      v20 = 1.0 / (v18 - v16);
      v9 = swift_allocObject();
      v9[2] = v11;
      v9[3] = v16;
      v9[4] = v20;
      v8 = swift_allocObject();
      *&v19 = v20;
      v8[2] = v20;
      v8[3] = v16;
      *(&v19 + 1) = -(v16 * v20);
      v10 = v19;
      v8[4] = v11;
      v12 = sub_1AAF42C54;
      v13 = sub_1AAF42BF8;
      v14 = 1;
    }

    *a2 = v13;
    *(a2 + 8) = v9;
    *(a2 + 16) = v12;
    *(a2 + 24) = v8;
    *(a2 + 32) = v5;
    *(a2 + 40) = v11;
    *(a2 + 48) = v14;
    *(a2 + 56) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AAF429CC(uint64_t a1@<X0>, uint64_t a2@<X8>, long double a3@<D0>)
{
  if (*(a1 + 16) != 2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5 != v6)
  {
    v11 = a3;
    v15 = pow(*(a1 + 32), a3);
    v16 = pow(v6, v11);
    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v17 = 1.0 / (v16 - v15);
      v9 = v17;
      if ((*&v17 & 0x7FF0000000000000) != 0x7FF0000000000000)
      {
        v8 = swift_allocObject();
        *(v8 + 16) = v11;
        *(v8 + 24) = v15;
        *(v8 + 32) = v17;
        v7 = swift_allocObject();
        v14 = 0;
        *(v7 + 16) = v17;
        *(v7 + 24) = v15;
        *(v7 + 32) = v11;
        v10 = -(v15 * v17);
        v12 = sub_1AAF42B98;
        v13 = sub_1AAF42B64;
        goto LABEL_7;
      }
    }

LABEL_11:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  v8 = 0;
  v9 = 0.0;
  *(v7 + 16) = v5;
  v10 = 0.5;
  v11 = 0.0;
  v12 = sub_1AAF42D44;
  v13 = sub_1AAF42558;
  v14 = 2;
LABEL_7:
  *a2 = v13;
  *(a2 + 8) = v8;
  *(a2 + 16) = v12;
  *(a2 + 24) = v7;
  *(a2 + 32) = a1;
  *(a2 + 40) = v11;
  *(a2 + 48) = v14;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
}

long double sub_1AAF42B64(long double *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return v3 * (pow(*a1, *(v1 + 16)) - v2);
}

uint64_t sub_1AAF42B98@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    *&result = pow(v3[3] + *&result / v3[2], 1.0 / v3[4]);
  }

  *a3 = *&result;
  *(a3 + 8) = a2 & 1;
  return result;
}

double sub_1AAF42BF8(double *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2] * *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v5 = -log(1.0 - v4);
  }

  else
  {
    v5 = log(v4 + 1.0);
  }

  return v3 * (v5 - v2);
}

uint64_t sub_1AAF42C54@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    v6 = v3[4];
    v7 = v3[3] + *&result / v3[2];
    if ((*&v7 & 0x8000000000000000) != 0)
    {
      v8 = 1.0 - exp(-v7);
    }

    else
    {
      v8 = exp(v7) + -1.0;
    }

    *&result = v8 / v6;
  }

  *a3 = *&result;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1AAF42CDC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *(result + 32);
    result += 32;
    v5 = *(result + 24);
    v6 = *(result + 32);
    v8 = *(result + 8);
    v7 = *(result + 16);
    *a2 = v4 + (*(result + 40 * v3 - 40) - v4) * a3;
    *(a2 + 8) = v8;
    *(a2 + 16) = v7;
    *(a2 + 24) = v5;
    *(a2 + 32) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAF42D48()
{
  v1 = *(*v0 + 256);
  v2 = sub_1AAF8FE74();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + *(*v0 + 264));

  return sub_1AACB4A98(v3);
}

uint64_t sub_1AAF42DF4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AAF42E34()
{
  sub_1AAF90694();
  v0 = sub_1AAF8F5E4();
  MEMORY[0x1AC5992C0](v0);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF42EB0()
{
  sub_1AAF90694();
  v0 = sub_1AAF8F5E4();
  MEMORY[0x1AC5992C0](v0);
  return sub_1AAF906F4();
}

unint64_t sub_1AAF42EF8()
{
  result = qword_1EB4273C0;
  if (!qword_1EB4273C0)
  {
    type metadata accessor for AnySignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4273C0);
  }

  return result;
}

uint64_t sub_1AAF42FBC(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v16 = a9;
  v17 = (a6 - a3) / (a3 * 0.528665);
  v18 = 1.0;
  if (v17 < 1.0)
  {
    sub_1AAD9B024(&unk_1F1FCEE70);
    v18 = 1.0;
    v16 = a9;
  }

  v19 = (v16 - a3) / (a3 * 0.528665);
  if (v19 < v18)
  {
    sub_1AAD9B024(&unk_1F1FCEE70);
  }

  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8F4();
  return sub_1AAF8E8F4();
}

uint64_t sub_1AAF43334()
{
  swift_getKeyPath();
  swift_getAtKeyPath();

  swift_getKeyPath();
  swift_getAtKeyPath();

  swift_getKeyPath();
  swift_getAtKeyPath();

  swift_getKeyPath();
  swift_getAtKeyPath();

  return sub_1AAF8E444();
}

uint64_t sub_1AAF4344C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, __n128 a9@<Q5>, __n128 a10@<Q6>, float64x2_t a11@<Q7>, float64_t a12, double a13, uint64_t a14)
{
  v120 = a11;
  v114 = a10;
  v113 = a9;
  v22 = sub_1AAF8E244();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = a6;
  v115 = vabdd_f64(a7, a6);
  v27 = 0.0;
  if (a4 < 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = a4;
  }

  if (v28 < a5)
  {
    v29 = a5;
  }

  else
  {
    v29 = v28;
  }

  if (v115 + 2.22044605e-16 >= 6.28318531)
  {
    if (v28 >= 2.22044605e-16)
    {
      sub_1AAF8E934();
      v139 = 0x3FF0000000000000uLL;
      *&v140 = 0;
      *(&v140 + 1) = 0x3FF0000000000000;
      v141 = 0;
      v142 = 0;
      sub_1AAF8E8C4();
      result = sub_1AAF8E8C4();
      v54 = v135;
      v53 = v136;
      v55 = v137;
    }

    else
    {
      result = sub_1AAF8E924();
      v54 = v139;
      v53 = v140;
      v55 = v141;
    }

    goto LABEL_107;
  }

  v110 = a7;
  v111 = a13;
  v121 = a14;
  if (a8 > 0.0)
  {
    v30 = fmax(v29 * 0.1 * 0.5, 1.0);
    if (v30 >= a8)
    {
      v27 = a8;
    }

    else
    {
      v27 = v30;
    }
  }

  v24.f64[0] = a12;
  v119 = v24;
  v31 = v115;
  if (v115 <= 3.14159265)
  {
    v32 = v115;
  }

  else
  {
    v32 = 3.14159265;
  }

  v116 = v32;
  v118 = v29 * 0.1;
  v33 = sin(v32 * 0.5);
  v34 = v27 / v33 - v28;
  v35 = v28 + v34;
  *&v108 = v34;
  v36 = v34 < 0.0;
  v112 = v28;
  if (v34 >= 0.0)
  {
    v37 = v28 + v34;
  }

  else
  {
    v37 = v28;
  }

  if (v36)
  {
    v35 = v28 + 0.0;
  }

  v103 = v37;
  v38 = v29;
  v102 = v35;
  if (v37 < v29)
  {
    v29 = v35;
  }

  v39 = asin(v27 / v29);
  v40 = v27;
  v41 = v31 * 0.5;
  if (v31 * 0.5 < v39)
  {
    v39 = v31 * 0.5;
  }

  if (v39 < 0.0)
  {
    v39 = 0.0;
  }

  v107 = v39;
  v105 = (v38 + v29) * 0.5;
  v42 = asin(v40 / v105);
  if (v41 < v42)
  {
    v42 = v31 * 0.5;
  }

  if (v42 < 0.0)
  {
    v42 = 0.0;
  }

  v104 = v42;
  v44 = v38 * v116;
  v45 = (v38 - v29) * 0.5;
  if (v45 >= v118)
  {
    v45 = v118;
  }

  v116 = v40;
  v46 = v38 * v33 - v44 / ((v38 + v38) * v33) * v40;
  if (v46 >= v45)
  {
    v47 = v45;
  }

  else
  {
    v47 = v46;
  }

  v106 = 3.14159265;
  v118 = v38;
  v109 = v31 * 0.5;
  if (v31 >= 3.14159265)
  {
    if (v38 * 0.5 >= v47)
    {
      *&v43 = v47;
    }

    else
    {
      *&v43 = v38 * 0.5;
    }
  }

  else
  {
    v48 = fmax(*&v108, 0.0);
    *&v49 = sin(v31 * 0.5);
    *&v49 = *&v49 * (v38 - v48) / (*&v49 + 1.0);
    if (*&v49 >= v47)
    {
      *&v49 = v47;
    }

    v108 = v49;
    v50 = sin(v41 - v107);
    v43 = v108;
    v51 = v29 * v50 / (v50 + 1.0);
    if (v51 < v47)
    {
      v47 = v51;
    }
  }

  v56 = v117;
  v57 = v110;
  v58.f64[0] = v112;
  *&v59.f64[0] = v114.n128_u64[0];
  v59.f64[1] = v120.f64[0];
  if (v112 >= v47)
  {
    v58.f64[0] = v47;
  }

  v60.i64[0] = v113.n128_u64[0];
  v60.i64[1] = *&v119.f64[0];
  v61 = vbicq_s8(v59, vclezq_f64(v59));
  v62 = vbicq_s8(v60, vclezq_f64(v60));
  v108 = v43;
  *&v58.f64[1] = v43;
  v63 = vbslq_s8(vcgtq_f64(v61, v58), v58, v61);
  v64 = vbslq_s8(vcgtq_f64(v62, v58), v58, v62);
  v119 = v64;
  v120 = v63;
  if (*v64.i64 > *v63.i64)
  {
    v63.i64[0] = v64.i64[0];
  }

  v65 = asin(v116 / (v29 + *v63.i64));
  v66 = v119.f64[1];
  if (v65 > 0.0)
  {
    v67 = v109;
    if (v109 >= v65)
    {
      v68 = v65;
    }

    else
    {
      v68 = v109;
    }

    v69 = v120.f64[1];
    if (v119.f64[1] <= v120.f64[1])
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v69 = v120.f64[1];
  v68 = 0.0;
  v67 = v109;
  if (v119.f64[1] > v120.f64[1])
  {
LABEL_58:
    v69 = v119.f64[1];
  }

LABEL_59:
  v70 = asin(v116 / (v118 - v69));
  if (v70 <= 0.0)
  {
    v71 = 0.0;
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v119), vceqzq_f64(v120))))))
    {
      goto LABEL_64;
    }
  }

  else
  {
    if (v67 >= v70)
    {
      v71 = v70;
    }

    else
    {
      v71 = v67;
    }

    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v119), vceqzq_f64(v120))))))
    {
LABEL_64:
      v103 = v68;
      sub_1AAF8E934();
      (*(v23 + 16))(v26, a1, v22);
      v72 = (*(v23 + 88))(v26, v22);
      if (v72 != *MEMORY[0x1E697F480] && v72 != *MEMORY[0x1E697F468])
      {
        (*(v23 + 8))(v26, v22);
      }

      v73 = v106;
      v116 = 0.0174532925;
      __sincos_stret((v104 + v56) * 180.0 / v106 * 0.0174532925);
      sub_1AAF8E8A4();
      v74 = -1.0;
      if (v56 < v57)
      {
        v74 = 1.0;
      }

      v105 = v74;
      if (v118 >= 2.22044605e-12)
      {
        v78 = (v71 + v56) * 180.0 / v73;
        v101 = v29;
        if (v66 >= 2.22044605e-12)
        {
          v79 = v118;
          v80 = fmax(fmin(sqrt(v79 * (v79 - (v66 + v66))) / (v118 - v66), 1.0), 0.00001);
          v81 = acos(v80);
          v82 = v116;
          v102 = v78 + v105 * (v81 / v116);
          v83 = v71;
          v84 = v79 / v80;
          cosval = __sincos_stret(v78 * v116).__cosval;
          sub_1AAF8E8D4();
          v86 = v84 * cosval;
          v71 = v83;
          v104 = v86 + v111;
          v78 = v102;
          __sincos_stret(v102 * v82);
          v57 = v110;
          v139 = 0x3FF0000000000000uLL;
          *&v140 = 0;
          *(&v140 + 1) = 0x3FF0000000000000;
          v141 = 0;
          v142 = 0;
          sub_1AAF8E8B4();
          v73 = v106;
        }

        else
        {
          __sincos_stret(v78 * v116);
          sub_1AAF8E8D4();
        }

        v87 = (v57 - v71) * 180.0 / v73;
        if (v120.f64[1] >= 2.22044605e-12)
        {
          v88 = v118;
          v111 = sqrt(v88 * (v88 - (v120.f64[1] + v120.f64[1])));
          v89 = acos(fmax(fmin(v111 / (v118 - v120.f64[1]), 1.0), 0.00001));
          v90 = v116;
          v91 = v88;
          v92 = v88;
          v57 = v110;
          sub_1AAF443D8(v87 - v105 * (v89 / v116), v91, v78, v92);
          __sincos_stret(v87 * v90);
          v73 = v106;
          v135 = 0x3FF0000000000000uLL;
          *&v136 = 0;
          *(&v136 + 1) = 0x3FF0000000000000;
          v137 = 0;
          v138 = 0;
          sub_1AAF8E8B4();
        }

        else
        {
          sub_1AAF443D8((v57 - v71) * 180.0 / v73, v118, v78, v118);
        }

        v56 = v117;
        v29 = v101;
      }

      else
      {
        sub_1AAF8E8D4();
        sub_1AAF8E8D4();
      }

      if (v119.f64[0] > 0.0 || v120.f64[0] > 0.0)
      {
        if (v29 >= 2.22044605e-12)
        {
          v93 = (v57 - v103) * 180.0 / v73;
          if (v120.f64[0] >= 2.22044605e-12)
          {
            v94 = acos(fmax(fmin(sqrt(v29 * (v29 + v120.f64[0] + v120.f64[0])) / (v29 + v120.f64[0]), 1.0), 0.00001));
            v95 = v116;
            v118 = v93 - v105 * (v94 / v116);
            __sincos_stret(v93 * v116);
            sub_1AAF8E8D4();
            v73 = v106;
            v96 = v118;
            __sincos_stret(v118 * v95);
            v131 = 0x3FF0000000000000uLL;
            *&v132 = 0;
            *(&v132 + 1) = 0x3FF0000000000000;
            v133 = 0;
            v134 = 0;
            sub_1AAF8E8B4();
            v93 = v96;
            v56 = v117;
          }

          else
          {
            __sincos_stret(v93 * v116);
            sub_1AAF8E8D4();
          }

          v97 = (v103 + v56) * 180.0 / v73;
          if (v119.f64[0] >= 2.22044605e-12)
          {
            v98 = acos(fmax(fmin(sqrt(v29 * (v29 + v119.f64[0] + v119.f64[0])) / (v29 + v119.f64[0]), 1.0), 0.00001));
            v99 = v116;
            sub_1AAF443D8(v97 + v105 * (v98 / v116), v29, v93, v29);
            __sincos_stret(v97 * v99);
            v125 = 0x3FF0000000000000;
            v126 = 0;
            v127 = 0;
            v128 = 0x3FF0000000000000;
            v130 = 0;
            v129 = 0;
            sub_1AAF8E8B4();
          }

          else
          {
            sub_1AAF443D8((v103 + v56) * 180.0 / v73, v29, v93, v29);
          }

          goto LABEL_106;
        }

        sub_1AAF8E8D4();
      }

      else
      {
        if (v115 < v73 && v112 == 0.0 && (a2 & 1) != 0)
        {
          tan(v109);
          __sincos_stret((v56 + v57) * 0.5);
          v131 = 0x3FF0000000000000uLL;
          *&v132 = 0;
          *(&v132 + 1) = 0x3FF0000000000000;
          v133 = 0;
          v134 = 0;
          sub_1AAF8E8C4();
LABEL_106:
          result = sub_1AAF8E884();
          v53 = v123;
          v54 = v122;
          v55 = v124;
          goto LABEL_107;
        }

        if (v29 > 2.22044605e-16)
        {
          v131 = 0x3FF0000000000000uLL;
          *&v132 = 0;
          *(&v132 + 1) = 0x3FF0000000000000;
          v133 = 0;
          v134 = 0;
          sub_1AAF8E8C4();
          goto LABEL_106;
        }
      }

      sub_1AAF8E8D4();
      goto LABEL_106;
    }
  }

  if (v118 > v112)
  {
    v75 = v118;
  }

  else
  {
    v75 = v112;
  }

  if (v103 >= v75)
  {
    v76 = v75;
  }

  else
  {
    v76 = v102;
  }

  v77 = v116;
  asin(v116 / v75);
  sub_1AAF8E934();
  if (v76 <= 2.22044605e-16)
  {
    sub_1AAF8E8A4();
  }

  else
  {
    asin(v77 / v76);
    v139 = 0x3FF0000000000000uLL;
    *&v140 = 0;
    *(&v140 + 1) = 0x3FF0000000000000;
    v141 = 0;
    v142 = 0;
    sub_1AAF8E8C4();
  }

  v135 = 0x3FF0000000000000uLL;
  *&v136 = 0;
  *(&v136 + 1) = 0x3FF0000000000000;
  v137 = 0;
  v138 = 0;
  sub_1AAF8E8C4();
  result = sub_1AAF8E884();
  v53 = v132;
  v54 = v131;
  v55 = v133;
LABEL_107:
  *a3 = v54;
  *(a3 + 16) = v53;
  *(a3 + 32) = v55;
  return result;
}

uint64_t sub_1AAF443D8(double a1, double a2, double a3, double a4)
{
  v5 = vabdd_f64(a1, a3);
  if (v5 < 6.39488462e-13)
  {
    __sincos_stret(a1 * 0.0174532925);

    return sub_1AAF8E8D4();
  }

  if (fabs(a2 - a4) < 2.22044605e-12)
  {
    return sub_1AAF8E8C4();
  }

  v7 = ceil(v5 / 45.0);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = v7;
  if (v7 < 1)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v9 = a1 - a3;
  __sincos_stret(((a1 - a3) * 0.0 + a3) * 0.0174532925);
  v14 = v8;
  v15 = v9;
  v10 = v9 * (1.0 / v8);
  v11 = a3;
  __sincos_stret((v10 + a3) * 0.0174532925);
  result = sub_1AAF8E8F4();
  v12 = v8 - 1;
  if (v12)
  {
    v13 = 2;
    do
    {
      __sincos_stret((v15 * (v13 / v14) + v11) * 0.0174532925);
      result = sub_1AAF8E8F4();
      ++v13;
      v11 = a3;
      --v12;
    }

    while (v12);
  }

  return result;
}

void (*sub_1AAF4475C(uint64_t **a1, uint64_t a2))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1AAF4C29C(v4, a2);
  return sub_1AAD184AC;
}

uint64_t (*sub_1AAF447D4(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1AAF4C340(v4, a2);
  return sub_1AAD184B4;
}

uint64_t sub_1AAF4484C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  if (!a2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_11:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = v8;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v10 = a2;
      v11 = 0;
      v12 = a3 - 1;
      while (v11 < *(a4 + 16))
      {
        v13 = *(type metadata accessor for ChartContentList.Item() - 8);
        v14 = *(v13 + 72);
        result = sub_1AAD1C5AC(a4 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + v14 * v11, v10, type metadata accessor for ChartContentList.Item);
        if (v12 == v11)
        {
          goto LABEL_11;
        }

        v10 += v14;
        if (v9 == ++v11)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    v8 = v9;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1AAF44974@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*v1 + 16);
  if (v3 == v4)
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  if (v3 >= v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *v1 + (v3 << 6);
  v1[1] = v3 + 1;
  v6 = v1[2];
  *&v10[0] = v6;
  result = sub_1AAD117A0(v5 + 32, v10 + 8);
  if (__OFADD__(v6, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v1[2] = v6 + 1;
  v8 = v10[3];
  *(a1 + 32) = v10[2];
  *(a1 + 48) = v8;
  *(a1 + 64) = v11;
  v9 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v9;
  return result;
}