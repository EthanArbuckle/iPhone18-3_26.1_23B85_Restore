uint64_t sub_29DFC69E0(unint64_t a1)
{
  if (a1 > 9)
  {
    __break(1u);
  }

  else
  {
    v1 = byte_2A24AE210[a1 + 32];
    v2 = sub_29DFC4B88();
    if (*(v2 + 16))
    {
      v3 = sub_29E184720(v1);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 8 * v3);
        sub_29E2BF404();

        return v5;
      }
    }
  }

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t sub_29DFC6AAC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = a1;
  if (a1 == 3)
  {
    v4 = 1;
LABEL_44:
    v37 = sub_29E2BCFB4();
    v38 = *(*(v37 - 8) + 56);

    return v38(a2, v4, 1, v37);
  }

  else
  {
    v5 = sub_29DFC69E0(0);
    v6 = 32;
    while (v6 - *(v5 + 16) != 32)
    {
      v7 = *(v5 + v6++);
      if (v7 == v3)
      {
        v8 = 0;
        v9 = v6 - 33;
LABEL_43:

        MEMORY[0x29ED79740](v9, v8);
        v4 = 0;
        goto LABEL_44;
      }
    }

    v10 = sub_29DFC69E0(1uLL);
    v11 = 32;
    while (v11 - *(v10 + 16) != 32)
    {
      v12 = *(v10 + v11++);
      if (v12 == v3)
      {
        v9 = v11 - 33;
        v8 = 1;
        goto LABEL_43;
      }
    }

    v13 = sub_29DFC69E0(2uLL);
    v14 = 32;
    while (v14 - *(v13 + 16) != 32)
    {
      v15 = *(v13 + v14++);
      if (v15 == v3)
      {
        v9 = v14 - 33;
        v8 = 2;
        goto LABEL_43;
      }
    }

    v16 = sub_29DFC69E0(3uLL);
    v17 = 32;
    while (v17 - *(v16 + 16) != 32)
    {
      v18 = *(v16 + v17++);
      if (v18 == v3)
      {
        v9 = v17 - 33;
        v8 = 3;
        goto LABEL_43;
      }
    }

    v19 = sub_29DFC69E0(4uLL);
    v20 = 32;
    while (v20 - *(v19 + 16) != 32)
    {
      v21 = *(v19 + v20++);
      if (v21 == v3)
      {
        v9 = v20 - 33;
        v8 = 4;
        goto LABEL_43;
      }
    }

    v22 = sub_29DFC69E0(5uLL);
    v23 = 32;
    while (v23 - *(v22 + 16) != 32)
    {
      v24 = *(v22 + v23++);
      if (v24 == v3)
      {
        v9 = v23 - 33;
        v8 = 5;
        goto LABEL_43;
      }
    }

    v25 = sub_29DFC69E0(6uLL);
    v26 = 32;
    while (v26 - *(v25 + 16) != 32)
    {
      v27 = *(v25 + v26++);
      if (v27 == v3)
      {
        v9 = v26 - 33;
        v8 = 6;
        goto LABEL_43;
      }
    }

    v28 = sub_29DFC69E0(7uLL);
    v29 = 32;
    while (v29 - *(v28 + 16) != 32)
    {
      v30 = *(v28 + v29++);
      if (v30 == v3)
      {
        v9 = v29 - 33;
        v8 = 7;
        goto LABEL_43;
      }
    }

    v31 = sub_29DFC69E0(8uLL);
    v32 = 32;
    while (v32 - *(v31 + 16) != 32)
    {
      v33 = *(v31 + v32++);
      if (v33 == v3)
      {
        v9 = v32 - 33;
        v8 = 8;
        goto LABEL_43;
      }
    }

    v34 = sub_29DFC69E0(9uLL);
    v35 = 32;
    while (v35 - *(v34 + 16) != 32)
    {
      v36 = *(v34 + v35++);
      if (v36 == v3)
      {
        v9 = v35 - 33;
        v8 = 9;
        goto LABEL_43;
      }
    }

    result = sub_29E2C4724();
    __break(1u);
  }

  return result;
}

id sub_29DFC6E7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CycleHistoryFiltersCollectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29DFC6F20(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_29E145FD8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_29DFC6F8C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_29DFC6F8C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_29E2C48C4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x29EDCA190];
      }

      else
      {
        v5 = sub_29E2C3664();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_29DFC71BC(v7, v8, a1, v4);
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
    return sub_29DFC7084(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_29DFC7084(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + a3);
    v7 = result - a3;
LABEL_5:
    LOBYTE(result) = *(v5 + v4);
    v8 = v7;
    v15 = v6;
    while (1)
    {
      v9 = *(v6 - 1);
      result = sub_29DED1D68(result);
      if (!v10)
      {
        goto LABEL_9;
      }

      sub_29DED1D68(v9);
      if (v11)
      {
        break;
      }

      if (!v5)
      {
LABEL_14:
        __break(1u);
        return result;
      }

LABEL_10:
      result = *v6;
      *v6 = *(v6 - 1);
      *--v6 = result;
      if (__CFADD__(v8++, 1))
      {
LABEL_4:
        ++v4;
        v6 = v15 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    sub_29DE9DE68();
    v12 = sub_29E2C4384();

    if (v12 != -1)
    {
      goto LABEL_4;
    }

LABEL_9:
    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t sub_29DFC71BC(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v95 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x29EDCA190];
LABEL_105:
    v7 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_107:
      v85 = *(v9 + 2);
      if (v85 >= 2)
      {
        while (1)
        {
          v86 = *v6;
          if (!*v6)
          {
            goto LABEL_141;
          }

          v6 = (v85 - 1);
          v87 = *&v9[16 * v85];
          v88 = *&v9[16 * v85 + 24];
          sub_29DFC78BC(&v86[v87], &v86[*&v9[16 * v85 + 16]], &v86[v88], v7);
          if (v5)
          {
          }

          if (v88 < v87)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_29E14D410(v9);
          }

          if (v85 - 2 >= *(v9 + 2))
          {
            goto LABEL_131;
          }

          v89 = &v9[16 * v85];
          *v89 = v87;
          *(v89 + 1) = v88;
          result = sub_29E14D384(v85 - 1);
          v85 = *(v9 + 2);
          v6 = a3;
          if (v85 <= 1)
          {
          }
        }
      }
    }

LABEL_137:
    result = sub_29E14D410(v9);
    v9 = result;
    goto LABEL_107;
  }

  v8 = 0;
  v9 = MEMORY[0x29EDCA190];
LABEL_4:
  v10 = v8;
  v11 = (v8 + 1);
  if (v8 + 1 >= v7)
  {
    goto LABEL_32;
  }

  v12 = *v6;
  v93 = v8;
  v13 = *(*v6 + v8);
  result = sub_29DED1D68(v11[*v6]);
  v91 = v5;
  if (v14)
  {
    sub_29DED1D68(v13);
    if (v15)
    {
      sub_29DE9DE68();
      v16 = sub_29E2C4384();

      v5 = v16 == -1;
      goto LABEL_10;
    }
  }

  v5 = 1;
LABEL_10:
  v10 = v93;
  v11 = (v93 + 2);
  if (v93 + 2 >= v7)
  {
    if (!v5)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v17 = v11;
    v18 = v11[v12 - 1];
    result = sub_29DED1D68(v11[v12]);
    if (!v19)
    {
      goto LABEL_14;
    }

    sub_29DED1D68(v18);
    if (!v20)
    {

LABEL_14:
      if (!v5)
      {
        v5 = v91;
        v10 = v93;
        goto LABEL_32;
      }

      goto LABEL_15;
    }

    sub_29DE9DE68();
    v21 = sub_29E2C4384();

    if (v5 == (v21 != -1))
    {
      break;
    }

LABEL_15:
    ++v11;
    if (v7 == v17 + 1)
    {
      v11 = v7;
      v10 = v93;
      if (!v5)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }
  }

  v10 = v93;
  if (!v5)
  {
LABEL_31:
    v5 = v91;
    goto LABEL_32;
  }

LABEL_22:
  if (v11 < v10)
  {
    goto LABEL_136;
  }

  if (v10 >= v11)
  {
    goto LABEL_31;
  }

  v22 = v11 - 1;
  v23 = v10;
  v5 = v91;
  do
  {
    if (v23 != v22)
    {
      v26 = *v6;
      if (!*v6)
      {
        goto LABEL_140;
      }

      v24 = v26[v23];
      v26[v23] = v22[v26];
      v22[v26] = v24;
    }
  }

  while (++v23 < v22--);
LABEL_32:
  v27 = v6[1];
  if (v11 >= v27)
  {
    goto LABEL_53;
  }

  if (__OFSUB__(v11, v10))
  {
    goto LABEL_133;
  }

  if (&v11[-v10] >= a4)
  {
    goto LABEL_53;
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_134;
  }

  if (v10 + a4 < v27)
  {
    v27 = (v10 + a4);
  }

  if (v27 < v10)
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v11 == v27)
  {
    goto LABEL_53;
  }

  v92 = v5;
  v94 = v10;
  v7 = *v6;
  v28 = &v11[*v6];
  v29 = v10 - v11;
  v97 = v27;
LABEL_42:
  v98 = v11;
  v30 = v11[v7];
  v31 = v29;
  v32 = v28;
  while (2)
  {
    v33 = *(v32 - 1);
    result = sub_29DED1D68(v30);
    if (!v34)
    {
LABEL_46:
      if (!v7)
      {
        goto LABEL_138;
      }

LABEL_47:
      v30 = *v32;
      *v32 = *(v32 - 1);
      *--v32 = v30;
      if (!__CFADD__(v31++, 1))
      {
        continue;
      }

LABEL_41:
      ++v11;
      ++v28;
      --v29;
      if (v98 + 1 != v97)
      {
        goto LABEL_42;
      }

      v11 = v97;
      v5 = v92;
      v10 = v94;
      v6 = a3;
LABEL_53:
      if (v11 < v10)
      {
        goto LABEL_132;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_29E143B40(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v39 = *(v9 + 2);
      v38 = *(v9 + 3);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_29E143B40((v38 > 1), v39 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v40;
      v41 = &v9[16 * v39];
      *(v41 + 4) = v10;
      *(v41 + 5) = v11;
      v99 = v11;
      v42 = *v95;
      if (!*v95)
      {
        goto LABEL_142;
      }

      if (!v39)
      {
LABEL_3:
        v7 = v6[1];
        v8 = v99;
        if (v99 >= v7)
        {
          goto LABEL_105;
        }

        goto LABEL_4;
      }

      while (1)
      {
        v43 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v44 = *(v9 + 4);
          v45 = *(v9 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_73:
          if (v47)
          {
            goto LABEL_121;
          }

          v60 = &v9[16 * v40];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_124;
          }

          v66 = &v9[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_128;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v40 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v70 = &v9[16 * v40];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_87:
        if (v65)
        {
          goto LABEL_123;
        }

        v73 = &v9[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_126;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_94:
        v81 = v43 - 1;
        if (v43 - 1 >= v40)
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
          goto LABEL_135;
        }

        if (!*v6)
        {
          goto LABEL_139;
        }

        v82 = *&v9[16 * v81 + 32];
        v83 = *&v9[16 * v43 + 40];
        sub_29DFC78BC((*v6 + v82), (*v6 + *&v9[16 * v43 + 32]), *v6 + v83, v42);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_29E14D410(v9);
        }

        if (v81 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v9[16 * v81];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_29E14D384(v43);
        v40 = *(v9 + 2);
        if (v40 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v9[16 * v40 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_119;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_120;
      }

      v55 = &v9[16 * v40];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_122;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_125;
      }

      if (v59 >= v51)
      {
        v77 = &v9[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_129;
        }

        if (v46 < v80)
        {
          v43 = v40 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

    break;
  }

  sub_29DED1D68(v33);
  if (v35)
  {
    sub_29DE9DE68();
    v36 = sub_29E2C4384();

    if (v36 != -1)
    {
      goto LABEL_41;
    }

    goto LABEL_46;
  }

  if (v7)
  {
    goto LABEL_47;
  }

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
  return result;
}

uint64_t sub_29DFC78BC(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      v29 = v7;
      do
      {
        v30 = v6;
        v18 = v6 - 1;
        --v5;
        v19 = v10;
        while (1)
        {
          v20 = v10;
          v21 = v5 + 1;
          v22 = *--v19;
          v23 = v18;
          v24 = *v18;
          sub_29DED1D68(v22);
          if (!v25)
          {
            break;
          }

          sub_29DED1D68(v24);
          if (!v26)
          {

            break;
          }

          sub_29DE9DE68();
          v27 = sub_29E2C4384();

          if (v27 == -1)
          {
            break;
          }

          if (v21 < v20 || v5 >= v20)
          {
            *v5 = *v19;
          }

          --v5;
          v10 = v19;
          v18 = v23;
          if (v19 <= v4)
          {
            v10 = v19;
            v6 = v30;
            goto LABEL_48;
          }
        }

        if (v21 < v30 || v5 >= v30)
        {
          *v5 = *v23;
        }

        v10 = v20;
        if (v20 <= v4)
        {
          break;
        }

        v6 = v23;
      }

      while (v23 > v29);
      v6 = v23;
      if (v23 == v4)
      {
        goto LABEL_49;
      }

      goto LABEL_50;
    }

LABEL_48:
    if (v6 != v4)
    {
LABEL_50:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = v4;
        v12 = *v4;
        sub_29DED1D68(*v6);
        if (!v13)
        {
          goto LABEL_14;
        }

        sub_29DED1D68(v12);
        if (!v14)
        {
          break;
        }

        sub_29DE9DE68();
        v15 = sub_29E2C4384();

        if (v15 == -1)
        {
          goto LABEL_14;
        }

        v16 = v4;
        v17 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v11 + 1)
          {
            goto LABEL_20;
          }
        }

LABEL_19:
        *v7 = *v16;
LABEL_20:
        ++v7;
        if (v4 < v10)
        {
          v6 = v17;
          if (v17 < v5)
          {
            continue;
          }
        }

        goto LABEL_22;
      }

LABEL_14:
      v17 = v6 + 1;
      v16 = v6;
      if (v7 >= v6 && v7 < v17)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_22:
    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_50;
    }
  }

LABEL_49:
  if (v6 >= v10)
  {
    goto LABEL_50;
  }

  return 1;
}

unint64_t sub_29DFC7BD8()
{
  result = qword_2A181A298;
  if (!qword_2A181A298)
  {
    type metadata accessor for CycleHistoryFiltersCollectionViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A181A298);
  }

  return result;
}

unint64_t sub_29DFC7C1C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_29E2C34D4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_29E2C3574();
}

unint64_t sub_29DFC7CCC(void *a1, uint64_t a2, uint64_t a3)
{
  if (_sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() != a2 || v5 != a3)
  {
    v7 = sub_29E2C4914();

    if (v7)
    {
      goto LABEL_8;
    }

    LODWORD(v25) = 0;
    v24 = 147;
    sub_29E2C4724();
    __break(1u);
  }

LABEL_8:
  v8 = sub_29E2C33A4();
  v9 = sub_29E2C33A4();
  v10 = sub_29E2BCF24();
  v11 = [a1 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v9 forIndexPath:v10];

  type metadata accessor for CycleHistoryFilterSectionHeaderReusableView();
  v12 = swift_dynamicCastClassUnconditional();
  result = sub_29E2BCFA4();
  if (result > 9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = sub_29DED2B88(byte_2A24AE210[result + 32]);
  v15 = (v12 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFilterSectionHeaderReusableView_sectionHeaderLabelText);
  *v15 = v14;
  v15[1] = v16;

  v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFilterSectionHeaderReusableView_sectionHeaderLabel;
  v18 = *(v12 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFilterSectionHeaderReusableView_sectionHeaderLabel);
  sub_29E2BF404();
  v19 = sub_29E2C33A4();

  [v18 setText_];

  result = sub_29E2BCFA4();
  if (result > 9)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v20 = byte_2A24AE210[result + 32];
  v21 = objc_opt_self();
  v22 = &selRef_hkmc_menstruationColor;
  if (v20 >= 3)
  {
    v22 = &selRef_hkmc_cycleHistoryFilterBackgroundColor;
  }

  v23 = [v21 *v22];
  [*(v12 + v17) setTextColor_];

  return v12;
}

uint64_t initializeBufferWithCopyOfBuffer for SleepMeasurementsConfiguration(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SleepMeasurementsConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepMeasurementsConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_29DFC8078()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  sub_29E2C3394();
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v2 = qword_2A1A67F80;
  sub_29E2BCC74();
  return sub_29E2C3414();
}

uint64_t sub_29DFC8248(void *a1, int a2)
{
  v26 = a2;
  v3 = MEMORY[0x29EDC9E88];
  sub_29DFC91E8(0, &qword_2A181A2E8, sub_29DFC9098, &type metadata for SleepMeasurementsConfiguration.CorrectiveAction.SetUpSleepFocusModeCodingKeys, MEMORY[0x29EDC9E88]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v23 = &v19 - v5;
  sub_29DFC91E8(0, &qword_2A181A2F0, sub_29DFC90EC, &type metadata for SleepMeasurementsConfiguration.CorrectiveAction.OnboardSleepOnWatchCodingKeys, v3);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v19 - v7;
  sub_29DFC91E8(0, &qword_2A181A2F8, sub_29DFC9140, &type metadata for SleepMeasurementsConfiguration.CorrectiveAction.OnboardSleepCodingKeys, v3);
  v19 = *(v9 - 8);
  v20 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v19 - v10;
  sub_29DFC91E8(0, &qword_2A181A300, sub_29DFC9194, &type metadata for SleepMeasurementsConfiguration.CorrectiveAction.CodingKeys, v3);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v19 - v15;
  sub_29DE966D4(a1, a1[3]);
  sub_29DFC9194();
  sub_29E2C4AA4();
  if (v26)
  {
    if (v26 == 1)
    {
      v28 = 1;
      sub_29DFC90EC();
      sub_29E2C4864();
      (*(v21 + 8))(v8, v22);
    }

    else
    {
      v29 = 2;
      sub_29DFC9098();
      v17 = v23;
      sub_29E2C4864();
      (*(v24 + 8))(v17, v25);
    }
  }

  else
  {
    v27 = 0;
    sub_29DFC9140();
    sub_29E2C4864();
    (*(v19 + 8))(v11, v20);
  }

  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_29DFC8644()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x536472616F626E6FLL;
  }
}

uint64_t sub_29DFC86B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29DFC8958(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29DFC86D8(uint64_t a1)
{
  v2 = sub_29DFC9194();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29DFC8714(uint64_t a1)
{
  v2 = sub_29DFC9194();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29DFC8750(uint64_t a1)
{
  v2 = sub_29DFC9140();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29DFC878C(uint64_t a1)
{
  v2 = sub_29DFC9140();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29DFC87C8(uint64_t a1)
{
  v2 = sub_29DFC90EC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29DFC8804(uint64_t a1)
{
  v2 = sub_29DFC90EC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29DFC8840(uint64_t a1)
{
  v2 = sub_29DFC9098();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29DFC887C(uint64_t a1)
{
  v2 = sub_29DFC9098();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29DFC88B8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29DFC8A84(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_29DFC8904()
{
  result = qword_2A181A2A0;
  if (!qword_2A181A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A2A0);
  }

  return result;
}

uint64_t sub_29DFC8958(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x536472616F626E6FLL && a2 == 0xEC0000007065656CLL;
  if (v4 || (sub_29E2C4914() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000029E2F71A0 == a2 || (sub_29E2C4914() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000029E2F71C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_29E2C4914();

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

uint64_t sub_29DFC8A84(void *a1)
{
  v2 = MEMORY[0x29EDC9E80];
  sub_29DFC91E8(0, &qword_2A181A2A8, sub_29DFC9098, &type metadata for SleepMeasurementsConfiguration.CorrectiveAction.SetUpSleepFocusModeCodingKeys, MEMORY[0x29EDC9E80]);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v36 = &v29 - v4;
  sub_29DFC91E8(0, &qword_2A181A2B8, sub_29DFC90EC, &type metadata for SleepMeasurementsConfiguration.CorrectiveAction.OnboardSleepOnWatchCodingKeys, v2);
  v34 = v5;
  v31 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v35 = &v29 - v6;
  sub_29DFC91E8(0, &qword_2A181A2C8, sub_29DFC9140, &type metadata for SleepMeasurementsConfiguration.CorrectiveAction.OnboardSleepCodingKeys, v2);
  v8 = v7;
  v30 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v29 - v9;
  sub_29DFC91E8(0, &qword_2A181A2D8, sub_29DFC9194, &type metadata for SleepMeasurementsConfiguration.CorrectiveAction.CodingKeys, v2);
  v12 = v11;
  v37 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v29 - v13;
  sub_29DE966D4(a1, a1[3]);
  sub_29DFC9194();
  v15 = v38;
  sub_29E2C4A94();
  if (!v15)
  {
    v16 = v10;
    v38 = v8;
    v17 = v35;
    v18 = v36;
    v19 = sub_29E2C4854();
    v20 = (2 * *(v19 + 16)) | 1;
    v39 = v19;
    v40 = v19 + 32;
    v41 = 0;
    v42 = v20;
    v21 = sub_29E051F10();
    v22 = v14;
    if (v21 == 3 || v41 != v42 >> 1)
    {
      v24 = sub_29E2C45E4();
      v10 = swift_allocError();
      v26 = v25;
      sub_29DF6BDD8();
      *v26 = &type metadata for SleepMeasurementsConfiguration.CorrectiveAction;
      sub_29E2C4804();
      sub_29E2C45C4();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x29EDC9DB8], v24);
      swift_willThrow();
      (*(v37 + 8))(v14, v12);
    }

    else
    {
      v10 = v21;
      if (v21)
      {
        v23 = v37;
        if (v21 != 1)
        {
          LODWORD(v38) = v21;
          v43 = 2;
          sub_29DFC9098();
          sub_29E2C47F4();
          (*(v32 + 8))(v18, v33);
          (*(v23 + 8))(v22, v12);
          swift_unknownObjectRelease();
          v10 = v38;
          goto LABEL_9;
        }

        v43 = 1;
        sub_29DFC90EC();
        sub_29E2C47F4();
        (*(v31 + 8))(v17, v34);
        (*(v23 + 8))(v22, v12);
      }

      else
      {
        v43 = 0;
        sub_29DFC9140();
        sub_29E2C47F4();
        v28 = v37;
        (*(v30 + 8))(v16, v38);
        (*(v28 + 8))(v14, v12);
      }
    }

    swift_unknownObjectRelease();
  }

LABEL_9:
  sub_29DE93B3C(a1);
  return v10;
}

unint64_t sub_29DFC9098()
{
  result = qword_2A181A2B0;
  if (!qword_2A181A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A2B0);
  }

  return result;
}

unint64_t sub_29DFC90EC()
{
  result = qword_2A181A2C0;
  if (!qword_2A181A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A2C0);
  }

  return result;
}

unint64_t sub_29DFC9140()
{
  result = qword_2A181A2D0;
  if (!qword_2A181A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A2D0);
  }

  return result;
}

unint64_t sub_29DFC9194()
{
  result = qword_2A181A2E0;
  if (!qword_2A181A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A2E0);
  }

  return result;
}

void sub_29DFC91E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_29DFC9294()
{
  result = qword_2A181A308;
  if (!qword_2A181A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A308);
  }

  return result;
}

unint64_t sub_29DFC92EC()
{
  result = qword_2A181A310;
  if (!qword_2A181A310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A310);
  }

  return result;
}

unint64_t sub_29DFC9344()
{
  result = qword_2A181A318;
  if (!qword_2A181A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A318);
  }

  return result;
}

unint64_t sub_29DFC939C()
{
  result = qword_2A181A320;
  if (!qword_2A181A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A320);
  }

  return result;
}

unint64_t sub_29DFC93F4()
{
  result = qword_2A181A328;
  if (!qword_2A181A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A328);
  }

  return result;
}

unint64_t sub_29DFC944C()
{
  result = qword_2A181A330;
  if (!qword_2A181A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A330);
  }

  return result;
}

unint64_t sub_29DFC94A4()
{
  result = qword_2A181A338;
  if (!qword_2A181A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A338);
  }

  return result;
}

unint64_t sub_29DFC94FC()
{
  result = qword_2A181A340;
  if (!qword_2A181A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A340);
  }

  return result;
}

unint64_t sub_29DFC9554()
{
  result = qword_2A181A348;
  if (!qword_2A181A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A348);
  }

  return result;
}

void sub_29DFC95CC()
{
  sub_29DFCAF64();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_29DFC9664(void *a1)
{
  v3 = v1;
  sub_29DFCB26C(0, &qword_2A181A3B8, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v11[-v8];
  sub_29DE966D4(a1, a1[3]);
  sub_29DFCB1C4();
  sub_29E2C4AA4();
  v11[15] = 0;
  sub_29DFCAFF8();
  sub_29DFCB134(&qword_2A181A3C0, sub_29DFCAFF8);
  sub_29E2C48A4();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for AddPregnancyHelpTileActionHandler.Model(0) + 20));
    v11[13] = 1;
    sub_29DFCB2D0();
    sub_29E2C48A4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_29DFC9844@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_29DFCAFF8();
  v28 = v4;
  v25 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFCB26C(0, &qword_2A181A398, MEMORY[0x29EDC9E80]);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v21 - v9;
  v11 = type metadata accessor for AddPregnancyHelpTileActionHandler.Model(0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE966D4(a1, a1[3]);
  sub_29DFCB1C4();
  sub_29E2C4A94();
  if (v2)
  {
    return sub_29DE93B3C(a1);
  }

  v23 = v11;
  v14 = v13;
  v15 = v25;
  v31 = 0;
  sub_29DFCB134(&qword_2A181A3A8, sub_29DFCAFF8);
  v16 = v28;
  v17 = v26;
  sub_29E2C4844();
  v18 = *(v15 + 32);
  v22 = v14;
  v18(v14, v6, v16);
  v29 = 1;
  sub_29DFCB218();
  sub_29E2C4844();
  (*(v27 + 8))(v10, v17);
  v19 = v22;
  *(v22 + *(v23 + 20)) = v30;
  sub_29DFCB3E8(v19, v24, type metadata accessor for AddPregnancyHelpTileActionHandler.Model);
  sub_29DE93B3C(a1);
  return sub_29DFCB324(v19, type metadata accessor for AddPregnancyHelpTileActionHandler.Model);
}

uint64_t sub_29DFC9BD0()
{
  if (*v0)
  {
    return 0x67697254656C6974;
  }

  else
  {
    return 0x636E616E67657270;
  }
}

uint64_t sub_29DFC9C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x636E616E67657270 && a2 == 0xEF656C706D615379;
  if (v6 || (sub_29E2C4914() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x67697254656C6974 && a2 == 0xEB00000000726567)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29E2C4914();

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

uint64_t sub_29DFC9D08(uint64_t a1)
{
  v2 = sub_29DFCB1C4();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29DFC9D44(uint64_t a1)
{
  v2 = sub_29DFCB1C4();

  return MEMORY[0x2A1C73280](a1, v2);
}

BOOL sub_29DFC9DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29DE9408C(0, &qword_2A1A61D50);
  sub_29DEB69F0();
  return (sub_29E2C2F74() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20));
}

uint64_t sub_29DFC9E34(uint64_t a1)
{
  v22 = sub_29E2BF6C4();
  v2 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C0514();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFCAF64();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v12 = qword_2A181A350;
  v13 = type metadata accessor for AddPregnancyHelpTileActionHandler.Model(0);
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  v14 = sub_29E2BF6A4();
  v16 = v15;
  sub_29E2BC2B4();
  swift_allocObject();
  sub_29E2BC2A4();
  sub_29E2C04B4();
  sub_29E0DF2D4(v14, v16, v7, v10);
  swift_beginAccess();
  sub_29DFCB384(v10, v11 + v12);
  swift_endAccess();
  v17 = a1;
  v18 = a1;
  v19 = v22;
  (*(v2 + 16))(v4, v18, v22);
  v20 = sub_29E2BF424();
  (*(v2 + 8))(v17, v19);
  return v20;
}

uint64_t sub_29DFCA0A4()
{
  v1 = *v0;
  v2 = sub_29E2C0514();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v42 - v6;
  sub_29DFCAF64();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AddPregnancyHelpTileActionHandler.Model(0);
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v42 - v16;
  v18 = qword_2A181A350;
  swift_beginAccess();
  sub_29DFCB3E8(v0 + v18, v10, sub_29DFCAF64);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    sub_29DFCB450(v10, v17);
    if (v17[*(v11 + 20)])
    {
      if (v17[*(v11 + 20)] == 1)
      {
        sub_29DE9408C(0, &qword_2A1819A60);
        v27 = sub_29E2C3B64();
        v46 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v47 = v28;
        MEMORY[0x29ED7FCC0](0x6574616470752ELL, 0xE700000000000000);
        sub_29E2C33A4();

        v29 = objc_allocWithZone(sub_29E2BDF64());
        v30 = sub_29E2BDF54();
        [v27 addOperation_];

        return sub_29DFCB324(v17, type metadata accessor for AddPregnancyHelpTileActionHandler.Model);
      }

      v42 = v0;
      sub_29E2C04B4();
      sub_29DFCB3E8(v17, v14, type metadata accessor for AddPregnancyHelpTileActionHandler.Model);
      v31 = sub_29E2C0504();
      v32 = sub_29E2C3A34();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v48 = v34;
        *v33 = 136315394;
        v46 = v1;
        swift_getMetatypeMetadata();
        v35 = sub_29E2C3464();
        v37 = sub_29DFAA104(v35, v36, &v48);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2080;
        v46 = 0;
        v47 = 0xE000000000000000;
        v45 = v14[*(v11 + 20)];
        sub_29E2C4664();
        MEMORY[0x29ED7FCC0](0x6E616820746F6E20, 0xEC00000064656C64);
        v38 = sub_29E2C3464();
        v40 = v39;
        sub_29DFCB324(v14, type metadata accessor for AddPregnancyHelpTileActionHandler.Model);
        v41 = sub_29DFAA104(v38, v40, &v48);

        *(v33 + 14) = v41;
        _os_log_impl(&dword_29DE74000, v31, v32, "[%s] %s Fallback to default dismiss", v33, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v34, -1, -1);
        MEMORY[0x29ED82140](v33, -1, -1);
      }

      else
      {

        sub_29DFCB324(v14, type metadata accessor for AddPregnancyHelpTileActionHandler.Model);
      }

      (*(v43 + 8))(v7, v44);
    }

    type metadata accessor for AddPregnancyHelpTileActionHandler(0);
    sub_29DFCB134(&qword_2A181A388, type metadata accessor for AddPregnancyHelpTileActionHandler);
    sub_29E2BF864();
    return sub_29DFCB324(v17, type metadata accessor for AddPregnancyHelpTileActionHandler.Model);
  }

  sub_29DFCB324(v10, sub_29DFCAF64);
  sub_29E2C04B4();
  v19 = sub_29E2C0504();
  v20 = sub_29E2C3A14();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v48 = v22;
    *v21 = 136315138;
    v46 = v1;
    swift_getMetatypeMetadata();
    v23 = sub_29E2C3464();
    v25 = sub_29DFAA104(v23, v24, &v48);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_29DE74000, v19, v20, "[%s] Model is nil falling back to dismiss", v21, 0xCu);
    sub_29DE93B3C(v22);
    MEMORY[0x29ED82140](v22, -1, -1);
    MEMORY[0x29ED82140](v21, -1, -1);
  }

  (*(v43 + 8))(v4, v44);
  type metadata accessor for AddPregnancyHelpTileActionHandler(0);
  sub_29DFCB134(&qword_2A181A388, type metadata accessor for AddPregnancyHelpTileActionHandler);
  return sub_29E2BF864();
}

void sub_29DFCA794()
{
  v1 = v0;
  v2 = sub_29E2BF6C4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v45 - v7;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v45 - v10;
  sub_29DFCAF64();
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = qword_2A181A350;
  swift_beginAccess();
  sub_29DFCB3E8(v1 + v15, v14, sub_29DFCAF64);
  v16 = type metadata accessor for AddPregnancyHelpTileActionHandler.Model(0);
  if ((*(*(v16 - 8) + 48))(v14, 1, v16))
  {
    sub_29DFCB324(v14, sub_29DFCAF64);
LABEL_3:
    sub_29E2BF414();
    sub_29E2BF694();
    v17 = *(v3 + 8);
    v17(v11, v2);
    v47 = sub_29E2BE8F4();

    sub_29E2BF414();
    sub_29E2BF694();
    v17(v8, v2);
    sub_29E2BE8D4();

    sub_29E2BF414();
    sub_29E2BF694();
    v17(v5, v2);
    sub_29E2BE904();

    v18 = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
    v19 = sub_29E2BD184();
    v51 = 0u;
    v52 = 0u;
    v53 = 0;
    v20 = sub_29E2BD174();
    v49 = v19;
    v50 = &off_2A24B5E20;
    v48[0] = v20;
    type metadata accessor for PregnancyOnboardingCoordinator();
    v21 = v2;
    v22 = swift_allocObject();
    v23 = sub_29DEF61C0(v48, v19);
    v24 = MEMORY[0x2A1C7C4A8](v23);
    v26 = (&v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26, v24);
    v28 = v47;
    sub_29E0AC3AC(v47, v55, v54, *v26, v18, 5u, 0, &v51, 0, 0, 0, 4u, 0, 0, 0, 0, 0, 0, v22);

    sub_29DE93B3C(v48);
    sub_29E2BF414();
    v29 = sub_29E2BF6B4();
    v17(v11, v21);
    sub_29E27EFEC(v29, 1);

    return;
  }

  sub_29DFCAFF8();
  v30 = sub_29E2C2F64();
  sub_29DFCB324(v14, sub_29DFCAF64);
  if (!v30)
  {
    goto LABEL_3;
  }

  sub_29E2BF414();
  sub_29E2BF694();
  v31 = *(v3 + 8);
  v31(v11, v2);
  v47 = sub_29E2BE8F4();

  sub_29E2BF414();
  sub_29E2BF694();
  v31(v8, v2);
  sub_29E2BE8D4();

  sub_29E2BF414();
  sub_29E2BF694();
  v31(v5, v2);
  sub_29E2BE904();

  v32 = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
  v33 = sub_29E2BD184();
  v51 = 0u;
  v52 = 0u;
  v53 = 0;
  v46 = v30;
  v34 = sub_29E2BD174();
  v49 = v33;
  v50 = &off_2A24B5E20;
  v48[0] = v34;
  type metadata accessor for PregnancyOnboardingCoordinator();
  v35 = swift_allocObject();
  v45 = v2;
  v36 = v35;
  v37 = sub_29DEF61C0(v48, v33);
  v38 = MEMORY[0x2A1C7C4A8](v37);
  v40 = (&v45 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40, v38);
  v42 = v47;
  sub_29E0AC3AC(v47, v55, v54, *v40, v32, 5u, 0, &v51, 0, v30, 0, 3u, 0, 0, 0, 0, 0, 0, v36);

  v43 = v46;
  sub_29DE93B3C(v48);
  sub_29E2BF414();
  v44 = sub_29E2BF6B4();
  v31(v11, v45);
  sub_29E27F270(v44);
}

uint64_t sub_29DFCAEDC()
{
  v0 = sub_29E2BF434();
  sub_29DFCB324(v0 + qword_2A181A350, sub_29DFCAF64);

  return swift_deallocClassInstance();
}

void sub_29DFCAF64()
{
  if (!qword_2A181A368)
  {
    type metadata accessor for AddPregnancyHelpTileActionHandler.Model(255);
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A368);
    }
  }
}

void sub_29DFCAFF8()
{
  if (!qword_2A181A370)
  {
    sub_29DE9408C(255, &qword_2A1A61D50);
    v0 = sub_29E2C2F84();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A370);
    }
  }
}

void sub_29DFCB074()
{
  sub_29DFCAFF8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_29DFCB134(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29DFCB1C4()
{
  result = qword_2A181A3A0;
  if (!qword_2A181A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A3A0);
  }

  return result;
}

unint64_t sub_29DFCB218()
{
  result = qword_2A181A3B0;
  if (!qword_2A181A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A3B0);
  }

  return result;
}

void sub_29DFCB26C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29DFCB1C4();
    v7 = a3(a1, &type metadata for AddPregnancyHelpTileActionHandler.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29DFCB2D0()
{
  result = qword_2A181A3C8;
  if (!qword_2A181A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A3C8);
  }

  return result;
}

uint64_t sub_29DFCB324(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DFCB384(uint64_t a1, uint64_t a2)
{
  sub_29DFCAF64();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DFCB3E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DFCB450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddPregnancyHelpTileActionHandler.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29DFCB4C8()
{
  result = qword_2A181A3D0;
  if (!qword_2A181A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A3D0);
  }

  return result;
}

unint64_t sub_29DFCB520()
{
  result = qword_2A181A3D8;
  if (!qword_2A181A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A3D8);
  }

  return result;
}

unint64_t sub_29DFCB578()
{
  result = qword_2A181A3E0;
  if (!qword_2A181A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A3E0);
  }

  return result;
}

uint64_t sub_29DFCB658(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_29DFCB81C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_29E1442F0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  sub_29DFCFE08(0, &qword_2A181DCD0, MEMORY[0x29EDBA2F8], type metadata accessor for HKMCDaySummaryBleedingFlow);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_29DFCB978(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_29E143F38(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_29DFCBA6C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_29E144324(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_29DFCBBD8(uint64_t result, uint64_t (*a2)(void), unint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_29DF942BC(0, a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_29DFCBD84(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_29E14472C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_29DFCF3DC();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_29DFCBF2C(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_29E2C4484();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_29E2C4484();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_29DFCC058(uint64_t result, uint64_t (*a2)(void), void (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  a3(0);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_29DFCC1E4(uint64_t result, uint64_t (*a2)(void), unint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_29DF942BC(0, a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_29DFCC308@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_29E2BCF04();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = a1;
  v8 = *(a1 + 32);

  v9 = [v8 startDate];
  v10 = type metadata accessor for PregnancyTileView(0);
  sub_29E2BCB44();

  v11 = [*(a1 + 32) _timeZoneName];
  if (v11)
  {
    v12 = v11;
    v13 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v15 = v14;
  }

  else
  {
    sub_29E2BCEF4();
    v13 = sub_29E2BCED4();
    v15 = v16;
    (*(v5 + 8))(v7, v4);
  }

  v17 = (a2 + *(v10 + 24));
  *v17 = v13;
  v17[1] = v15;
  v18 = [*(a1 + 32) endDate];
  sub_29E2BCB44();

  LOBYTE(v18) = *(a1 + 40);

  *(a2 + *(v10 + 32)) = v18;
  return result;
}

uint64_t sub_29DFCC4B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v32 - v9;
  v11 = sub_29DFCC788();
  v35 = v12;
  v36 = v11;
  v13 = sub_29DFCC9AC();
  v33 = v14;
  v34 = v13;
  sub_29E2C3314();
  (*(v5 + 16))(v7, v10, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v15 = qword_2A1A67F80;
  sub_29E2BCC74();
  v32 = sub_29E2C3414();
  v17 = v16;
  (*(v5 + 8))(v10, v4);
  v18 = type metadata accessor for PregnancyTileView(0);
  v19 = v18[5];
  v20 = type metadata accessor for PregnancyView(0);
  v21 = v20[9];
  v22 = sub_29E2BCBB4();
  v23 = *(*(v22 - 8) + 16);
  v23(a1 + v21, v1 + v19, v22);
  v24 = v18[7];
  v25 = (v1 + v18[6]);
  v27 = *v25;
  v26 = v25[1];
  v23(a1 + v20[11], v1 + v24, v22);
  *a1 = xmmword_29E2D7820;
  v28 = v35;
  *(a1 + 16) = v36;
  *(a1 + 24) = v28;
  v29 = v33;
  *(a1 + 32) = v34;
  *(a1 + 40) = v29;
  *(a1 + 48) = v32;
  *(a1 + 56) = v17;
  v30 = (a1 + v20[10]);
  *v30 = v27;
  v30[1] = v26;
  return sub_29E2BF404();
}

uint64_t sub_29DFCC788()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v11[-v6];
  type metadata accessor for PregnancyTileView(0);
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_29DFCC9AC()
{
  v1 = v0;
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v88 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_29E2C3384();
  v89 = *(v86 - 8);
  MEMORY[0x2A1C7C4A8](v86);
  v87 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v85 = &v71 - v6;
  v7 = sub_29E2BC954();
  v80 = *(v7 - 8);
  v81 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v77 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BC984();
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_29E2BCBB4();
  v12 = *(v90 - 1);
  MEMORY[0x2A1C7C4A8](v90);
  v76 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v83 = &v71 - v15;
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v71 - v17;
  v19 = type metadata accessor for PregnancyTileView(0);
  v20 = sub_29E2BCB04();
  v21 = *(v0 + *(v19 + 32));
  if (v21)
  {
    v22 = 0xED000079636E616ELL;
  }

  else
  {
    v22 = 0x800000029E2EB4F0;
  }

  if ((v21 & 1) == 0 && 0x800000029E2EB4F0 == v22)
  {

LABEL_8:
    sub_29E2BCBA4();
    goto LABEL_10;
  }

  v23 = sub_29E2C4914();

  if (v23)
  {
    goto LABEL_8;
  }

  (*(v12 + 16))(v18, v1 + *(v19 + 28), v90);
LABEL_10:
  v24 = objc_opt_self();
  v25 = sub_29E2BCB04();
  v26 = *(v12 + 8);
  v84 = v12 + 8;
  v82 = v26;
  v26(v18, v90);
  v27 = [v24 isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:v20 pregnancyEndDate:v25];

  if (v27)
  {
    v28 = *(*v1 + 32);
    v29 = v89;
    if ((v21 & 1) == 0)
    {
      sub_29DE9408C(0, &qword_2A1817D48);
      v43 = v28;
      sub_29E2C3ED4();
      sub_29E2BC964();
      v44 = v77;
      sub_29E2BC944();
      v45 = sub_29E2BCB74();
      v74 = v46;
      v75 = v45;
      (*(v80 + 1))(v44, v81);
      v78[1](v11, v79);
      v47 = v85;
      sub_29E2C3314();
      v48 = v29 + 16;
      v49 = v86;
      v81 = *(v29 + 16);
      v81(v87, v47, v86);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v50 = qword_2A1A67F80;
      v72 = qword_2A1A67F80;
      sub_29E2BCC74();
      v79 = v50;
      v80 = "EDING_ALERT_MESSAGE";
      sub_29E2C3414();
      v51 = *(v29 + 8);
      v89 = v29 + 8;
      v78 = v51;
      (v51)(v47, v49);
      sub_29DEB19DC();
      v77 = v52;
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_29E2CAB20;
      *(v53 + 56) = MEMORY[0x29EDC99B0];
      v73 = sub_29DEB1A44();
      *(v53 + 64) = v73;
      v54 = v74;
      *(v53 + 32) = v75;
      *(v53 + 40) = v54;
      v38 = sub_29E2C3404();
      v56 = v55;

      v57 = v76;
      sub_29E2BCBA4();
      LOBYTE(v50) = sub_29E2C3EB4();
      v82(v57, v90);
      v58 = v50;
      if (v50 > 1u)
      {
        v76 = v43;
        v71 = v48;
        sub_29E2C3314();
        v61 = v87;
        v81(v87, v47, v49);
      }

      else
      {
        v59 = v48;
        v60 = v81;
        if (!v58)
        {
          v82(v83, v90);

          return v38;
        }

        v76 = v43;
        sub_29E2C3314();
        v61 = v87;
        v71 = v59;
        v60(v87, v47, v49);
      }

      v62 = v72;
      sub_29E2BCC74();
      v63 = sub_29E2C3414();
      v88 = v64;
      v89 = v63;
      v65 = v78;
      (v78)(v47, v49);
      sub_29E2C3314();
      v81(v61, v47, v49);
      sub_29E2BCC74();
      sub_29E2C3414();
      (v65)(v47, v49);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_29E2CD7A0;
      v67 = MEMORY[0x29EDC99B0];
      v68 = v73;
      *(v66 + 56) = MEMORY[0x29EDC99B0];
      *(v66 + 64) = v68;
      *(v66 + 32) = v38;
      *(v66 + 40) = v56;
      *(v66 + 96) = v67;
      *(v66 + 104) = v68;
      v69 = v88;
      *(v66 + 72) = v89;
      *(v66 + 80) = v69;
      v38 = sub_29E2C3404();

      v82(v83, v90);
      return v38;
    }

    v90 = v28;
    v30 = v85;
    sub_29E2C3314();
    v31 = v86;
    (*(v29 + 16))(v87, v30, v86);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v32 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v29 + 8))(v30, v31);
    sub_29DEB19DC();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_29E2CAB20;
    sub_29E2BC964();
    v34 = v77;
    sub_29E2BC944();
    v35 = sub_29E2BCB74();
    v37 = v36;
    (*(v80 + 1))(v34, v81);
    v78[1](v11, v79);
    *(v33 + 56) = MEMORY[0x29EDC99B0];
    *(v33 + 64) = sub_29DEB1A44();
    *(v33 + 32) = v35;
    *(v33 + 40) = v37;
    v38 = sub_29E2C3404();
  }

  else
  {
    v39 = v85;
    sub_29E2C3314();
    v40 = v89;
    v41 = v86;
    (*(v89 + 16))(v87, v39, v86);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v42 = qword_2A1A67F80;
    sub_29E2BCC74();
    v38 = sub_29E2C3414();
    (*(v40 + 8))(v39, v41);
  }

  return v38;
}

void sub_29DFCD51C(uint64_t a1@<X8>)
{
  *a1 = sub_29E2C1BD4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_29DFCF72C();
  sub_29DFCD65C(v1, a1 + *(v3 + 44));
  v15 = *v1;
  v4 = sub_29E2C1FC4();
  sub_29DFCF91C();
  v6 = a1 + *(v5 + 36);
  *v6 = v4;
  *(v6 + 24) = v15;
  *(v6 + 8) = v15;
  *(v6 + 40) = 0;
  v7 = sub_29E2C2AB4();
  v9 = v8;
  sub_29DFCFA98(0, &qword_2A181A448, sub_29DFCF91C, sub_29DFCFB0C);
  v11 = a1 + *(v10 + 36);
  v12 = [objc_opt_self() tertiarySystemBackgroundColor];
  sub_29E2C2654();
  sub_29E2C22B4();

  sub_29DFCFB0C();
  v14 = (v11 + *(v13 + 36));
  *v14 = v7;
  v14[1] = v9;
}

void sub_29DFCD65C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v148 = sub_29E2C2104();
  v147 = *(v148 - 8);
  MEMORY[0x2A1C7C4A8](v148);
  v146 = &v141 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_29E2C2984();
  v144 = *(v145 - 8);
  MEMORY[0x2A1C7C4A8](v145);
  v143 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v162 = &v141 - v6;
  v153 = sub_29E2BCBB4();
  v151 = *(v153 - 8);
  MEMORY[0x2A1C7C4A8](v153);
  v152 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v150 = &v141 - v9;
  v149 = type metadata accessor for PregnancyView.PrimaryText(0);
  MEMORY[0x2A1C7C4A8](v149);
  v154 = (&v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DFCFA98(0, &qword_2A181A428, type metadata accessor for PregnancyView.PrimaryText, MEMORY[0x29EDBC0A8]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v158 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v163 = &v141 - v14;
  sub_29DF3F200();
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v141 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v156 = &v141 - v18;
  MEMORY[0x2A1C7C4A8](v19);
  v157 = &v141 - v20;
  MEMORY[0x2A1C7C4A8](v21);
  v155 = &v141 - v22;
  MEMORY[0x2A1C7C4A8](v23);
  v161 = &v141 - v24;
  MEMORY[0x2A1C7C4A8](v25);
  v164 = &v141 - v26;
  v165 = a1;
  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  v168 = v27;
  v169 = v28;
  v29 = sub_29DE9DE68();
  sub_29E2BF404();
  v160 = v29;
  v30 = sub_29E2C2294();
  v32 = v31;
  v34 = v33;
  sub_29E2C2044();
  v35 = sub_29E2C2254();
  v37 = v36;
  v39 = v38;

  sub_29DED6478(v30, v32, v34 & 1);

  sub_29E2C20B4();
  v40 = sub_29E2C2204();
  v42 = v41;
  LOBYTE(v30) = v43;
  sub_29DED6478(v35, v37, v39 & 1);

  v44 = objc_opt_self();
  v45 = [v44 hkmc_supplementaryDataTextColor];
  v168 = sub_29E2C2654();
  v46 = sub_29E2C2224();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_29DED6478(v40, v42, v30 & 1);

  v168 = v46;
  v169 = v48;
  v170 = v50 & 1;
  v171 = v52;
  v167 = &unk_2A24AEEC0;
  sub_29DFCB978(&unk_2A24AEEF0);
  v53 = sub_29E2C3604();
  v54 = HKUIJoinStringsForAutomationIdentifier();

  if (!v54)
  {
    __break(1u);
    goto LABEL_7;
  }

  v159 = v44;
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

  sub_29DECE1D4(aTitle_13);
  sub_29E2C23B4();

  sub_29DED6478(v46, v48, v50 & 1);

  v55 = type metadata accessor for PregnancyView(0);
  v56 = *(v151 + 16);
  v57 = v165;
  v58 = v150;
  v59 = v153;
  v56(v150, v165 + v55[9], v153);
  v60 = v55[11];
  v61 = (v57 + v55[10]);
  v62 = *v61;
  v63 = v61[1];
  v64 = v57 + v60;
  v65 = v152;
  v56(v152, v64, v59);
  sub_29E2BF404();
  v66 = v154;
  sub_29DFCE584(v58, v62, v63, v65, v154);
  v168 = &unk_2A24AEEC0;
  sub_29DFCB978(&unk_2A24AEF20);
  v67 = sub_29E2C3604();
  v68 = HKUIJoinStringsForAutomationIdentifier();

  if (!v68)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

  sub_29DECE1D4(aGestationalage_10);
  sub_29DFD0150(&qword_2A181A458, type metadata accessor for PregnancyView.PrimaryText);
  sub_29E2C23B4();

  sub_29DFCFE84(v66, type metadata accessor for PregnancyView.PrimaryText);
  v69 = *(v165 + 40);
  v168 = *(v165 + 32);
  v169 = v69;
  sub_29E2BF404();
  v70 = sub_29E2C2294();
  v72 = v71;
  v74 = v73;
  sub_29E2C2044();
  v75 = sub_29E2C2254();
  v77 = v76;
  v79 = v78;

  sub_29DED6478(v70, v72, v74 & 1);

  sub_29E2C20B4();
  v80 = sub_29E2C2204();
  v82 = v81;
  LOBYTE(v72) = v83;
  sub_29DED6478(v75, v77, v79 & 1);

  v84 = [v159 secondaryLabelColor];
  v168 = sub_29E2C2654();
  v85 = sub_29E2C2224();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  sub_29DED6478(v80, v82, v72 & 1);

  v168 = v85;
  v169 = v87;
  v170 = v89 & 1;
  v171 = v91;
  v167 = &unk_2A24AEEC0;
  sub_29DFCB978(&unk_2A24AEF50);
  v92 = sub_29E2C3604();
  v93 = HKUIJoinStringsForAutomationIdentifier();

  if (!v93)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

  sub_29DECE1D4(aDescription_1);
  sub_29E2C23B4();

  sub_29DED6478(v85, v87, v89 & 1);

  v94 = v165;
  v154 = *v165;
  sub_29E2C2974();
  v95 = *(v94 + 56);
  v168 = *(v94 + 48);
  v169 = v95;
  sub_29E2BF404();
  v96 = sub_29E2C2294();
  v98 = v97;
  v100 = v99;
  sub_29E2C2054();
  v101 = v147;
  v102 = v146;
  v103 = v148;
  (*(v147 + 104))(v146, *MEMORY[0x29EDBC9B0], v148);
  sub_29E2C2124();

  (*(v101 + 8))(v102, v103);
  v104 = sub_29E2C2254();
  v106 = v105;
  LOBYTE(v102) = v107;

  sub_29DED6478(v96, v98, v100 & 1);

  v108 = [v159 systemBlueColor];
  sub_29E2C2654();
  v109 = sub_29E2C2214();
  v111 = v110;
  v113 = v112;
  v115 = v114;

  sub_29DED6478(v104, v106, v102 & 1);

  v168 = v109;
  v169 = v111;
  v116 = v113 & 1;
  v170 = v113 & 1;
  v171 = v115;
  v167 = &unk_2A24AEEC0;
  sub_29DFCB978(&unk_2A24AEF80);
  v117 = sub_29E2C3604();
  v118 = HKUIJoinStringsForAutomationIdentifier();

  if (v118)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

    sub_29DECE1D4(aEdit_0);
    v119 = v155;
    sub_29E2C23B4();

    sub_29DED6478(v109, v111, v116);

    v120 = v157;
    sub_29DFCFC28(v164, v157);
    LOBYTE(v168) = 0;
    v121 = v158;
    sub_29DFCFC8C(v163, v158);
    v122 = v156;
    sub_29DFCFC28(v161, v156);
    LOBYTE(v167) = 0;
    v123 = v144;
    v124 = *(v144 + 16);
    v125 = v143;
    v126 = v145;
    v124(v143, v162, v145);
    v166 = 0;
    v127 = v119;
    v128 = v141;
    sub_29DFCFC28(v127, v141);
    v129 = v142;
    sub_29DFCFC28(v120, v142);
    sub_29DFCF828();
    v131 = v130;
    v132 = v129 + v130[12];
    v133 = v168;
    *v132 = 0x4020000000000000;
    *(v132 + 8) = v133;
    sub_29DFCFC8C(v121, v129 + v130[16]);
    sub_29DFCFC28(v122, v129 + v131[20]);
    v134 = v129 + v131[24];
    v135 = v167;
    v136 = v154;
    *v134 = v154;
    *(v134 + 8) = v135;
    v124((v129 + v131[28]), v125, v126);
    v137 = v129 + v131[32];
    v138 = v166;
    *v137 = v136;
    *(v137 + 8) = v138;
    sub_29DFCFC28(v128, v129 + v131[36]);
    sub_29DFCFE84(v155, sub_29DF3F200);
    v139 = *(v123 + 8);
    v139(v162, v126);
    sub_29DFCFE84(v161, sub_29DF3F200);
    v140 = MEMORY[0x29EDBC0A8];
    sub_29DFCFD20(v163, &qword_2A181A428, type metadata accessor for PregnancyView.PrimaryText, MEMORY[0x29EDBC0A8], sub_29DFCFA98);
    sub_29DFCFE84(v164, sub_29DF3F200);
    sub_29DFCFE84(v128, sub_29DF3F200);
    v139(v125, v126);
    sub_29DFCFE84(v156, sub_29DF3F200);
    sub_29DFCFD20(v158, &qword_2A181A428, type metadata accessor for PregnancyView.PrimaryText, v140, sub_29DFCFA98);
    sub_29DFCFE84(v157, sub_29DF3F200);
    return;
  }

LABEL_9:
  __break(1u);
}

void static String.pregnancyAccessibilityIdentifier(with:)()
{
  v0 = sub_29E2BF404();
  sub_29DFCB978(v0);
  v1 = sub_29E2C3604();
  v2 = HKUIJoinStringsForAutomationIdentifier();

  if (v2)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29DFCE584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v72 = a4;
  v71 = a3;
  v70 = a2;
  v69 = a1;
  v6 = MEMORY[0x29EDBC990];
  v7 = MEMORY[0x29EDC9C68];
  sub_29DFCF7C4(0, &qword_2A181A460, MEMORY[0x29EDBC990], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v66 - v9;
  v11 = sub_29E2C2164();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x29EDBC9D0], v11, v13);
  v16 = *MEMORY[0x29EDBC988];
  v17 = sub_29E2C2074();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v10, v16, v17);
  (*(v18 + 56))(v10, 0, 1, v17);
  sub_29E2C20B4();
  v19 = sub_29E2C20D4();
  sub_29DFCFD20(v10, &qword_2A181A460, v6, v7, sub_29DFCF7C4);
  (*(v12 + 8))(v15, v11);
  v73 = a5;
  *a5 = v19;
  v20 = *MEMORY[0x29EDC8128];
  v21 = *MEMORY[0x29EDC76C8];
  v22 = MEMORY[0x29EDC7700];
  v68 = objc_opt_self();
  v23 = [v68 preferredFontDescriptorWithTextStyle_];
  v24 = [v23 fontDescriptorWithSymbolicTraits_];
  if (v24)
  {
    v25 = v24;

    v23 = v25;
  }

  v26 = *v22;
  v27 = [v23 fontDescriptorWithDesign_];
  if (v27)
  {
    v28 = v27;

    v23 = v28;
  }

  sub_29DFCF7C4(0, &qword_2A1819158, sub_29DF383AC, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  v74 = xmmword_29E2CAB20;
  *(inited + 16) = xmmword_29E2CAB20;
  v30 = *MEMORY[0x29EDC76D0];
  *(inited + 32) = *MEMORY[0x29EDC76D0];
  sub_29DFCFD80();
  v31 = swift_initStackObject();
  v32 = MEMORY[0x29EDC7708];
  *(v31 + 16) = v74;
  v33 = *v32;
  *(v31 + 32) = *v32;
  *(v31 + 40) = v26;
  v34 = v30;
  v35 = v33;
  v67 = v34;
  v36 = v35;
  v37 = sub_29E1852C8(v31);
  swift_setDeallocating();
  sub_29DFCFD20(v31 + 32, &qword_2A1819170, type metadata accessor for TraitKey, type metadata accessor for Weight, sub_29DFCFE08);
  sub_29DF38488();
  v39 = v38;
  *(inited + 64) = v38;
  *(inited + 40) = v37;
  sub_29E1853AC(inited);
  swift_setDeallocating();
  sub_29DFCFE84(inited + 32, sub_29DF383AC);
  type metadata accessor for AttributeName(0);
  sub_29DFD0150(&qword_2A18177E0, type metadata accessor for AttributeName);
  v40 = sub_29E2C31F4();

  v41 = [v23 fontDescriptorByAddingAttributes_];

  v42 = objc_opt_self();
  v43 = [v42 fontWithDescriptor:v41 size:0.0];

  v44 = MEMORY[0x29EDC8118];
  v73[1] = v43;
  v45 = *MEMORY[0x29EDC76C0];
  v46 = [v68 preferredFontDescriptorWithTextStyle_];
  v47 = [v46 fontDescriptorWithSymbolicTraits_];
  if (v47)
  {
    v48 = v47;

    v46 = v48;
  }

  v49 = [v46 fontDescriptorWithDesign_];
  if (v49)
  {
    v50 = v49;

    v46 = v50;
  }

  v51 = swift_initStackObject();
  *(v51 + 16) = v74;
  *(v51 + 32) = v67;
  v52 = swift_initStackObject();
  *(v52 + 16) = v74;
  *(v52 + 32) = v36;
  v53 = v52 + 32;
  *(v52 + 40) = v26;
  v54 = sub_29E1852C8(v52);
  swift_setDeallocating();
  sub_29DFCFD20(v53, &qword_2A1819170, type metadata accessor for TraitKey, type metadata accessor for Weight, sub_29DFCFE08);
  *(v51 + 64) = v39;
  *(v51 + 40) = v54;
  sub_29E1853AC(v51);
  swift_setDeallocating();
  sub_29DFCFE84(v51 + 32, sub_29DF383AC);
  v55 = sub_29E2C31F4();

  v56 = [v46 fontDescriptorByAddingAttributes_];

  v57 = [v42 fontWithDescriptor:v56 size:0.0];
  v58 = v73;
  v73[2] = v57;
  v59 = type metadata accessor for PregnancyView.PrimaryText(0);
  v60 = v59[7];
  v61 = sub_29E2BCBB4();
  v62 = *(*(v61 - 8) + 32);
  v62(v58 + v60, v69, v61);
  v63 = (v58 + v59[8]);
  v64 = v71;
  *v63 = v70;
  v63[1] = v64;
  return (v62)(v58 + v59[9], v72, v61);
}

uint64_t sub_29DFCED70()
{
  v1 = v0;
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v58 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_29E2C3384();
  v57 = *(v59 - 8);
  MEMORY[0x2A1C7C4A8](v59);
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v55 = &v50 - v6;
  v7 = sub_29E2BC6A4();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v60 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BCBB4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v50 - v13;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v50 - v16;
  v18 = type metadata accessor for PregnancyView.PrimaryText(0);
  v53 = *(v18 + 28);
  v19 = sub_29E2BCB04();
  v52 = v18;
  v20 = *(v18 + 36);
  sub_29E2BCA84();
  v21 = sub_29E2BCB34();
  v22 = *(v10 + 8);
  v22(v14, v9);
  v61 = v1;
  if (v21)
  {
    sub_29E2BCBA4();
  }

  else
  {
    (*(v10 + 16))(v17, v1 + v20, v9);
  }

  v23 = objc_opt_self();
  v24 = sub_29E2BCB04();
  v22(v17, v9);
  v25 = [v23 isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:v19 pregnancyEndDate:v24];

  if (v25)
  {
    sub_29E2BCA84();
    v26 = sub_29E2BCB34();
    v22(v14, v9);
    v50 = v9;
    v51 = v22;
    if (v26)
    {
      sub_29E2BCBA4();
      v27 = v56;
      sub_29E15177C(v56);
      v22(v14, v9);
    }

    else
    {
      v27 = v56;
      sub_29E15177C(v56);
    }

    v59 = sub_29DE9408C(0, &qword_2A1817D48);
    v46 = objc_opt_self();
    v47 = [v46 secondaryLabelColor];
    v48 = [v46 labelColor];
    sub_29E2C3EA4();

    v45 = sub_29E2C2284();
    v51(v27, v50);
  }

  else
  {
    v28 = v55;
    sub_29E2C3314();
    v29 = v57;
    v30 = v59;
    (*(v57 + 16))(v54, v28, v59);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v31 = qword_2A1A67F80;
    sub_29E2BCC74();
    v32 = sub_29E2C3414();
    v34 = v33;
    (*(v29 + 8))(v28, v30);
    v62 = v32;
    v63 = v34;
    sub_29DE9DE68();
    v35 = sub_29E2C2294();
    v37 = v36;
    v39 = v38;
    v40 = sub_29E2C2254();
    v42 = v41;
    v44 = v43;
    sub_29DED6478(v35, v37, v39 & 1);

    sub_29E2C2634();
    v45 = sub_29E2C2214();

    sub_29DED6478(v40, v42, v44 & 1);
  }

  return v45;
}

uint64_t sub_29DFCF3A4@<X0>(uint64_t a1@<X8>)
{
  result = sub_29DFCED70();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_29DFCF3DC()
{
  result = qword_2A1A62670;
  if (!qword_2A1A62670)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A62670);
  }

  return result;
}

void sub_29DFCF448()
{
  if (!qword_2A181DBF0)
  {
    sub_29DE9408C(255, &qword_2A1A61D50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181DBF0);
    }
  }
}

void sub_29DFCF4C0()
{
  if (!qword_2A181DC20)
  {
    sub_29DE9408C(255, &qword_2A1A5E0B0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181DC20);
    }
  }
}

uint64_t sub_29DFCF57C()
{
  result = type metadata accessor for PregnancyItem();
  if (v1 <= 0x3F)
  {
    result = sub_29E2BCBB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29DFCF678()
{
  result = sub_29E2BCBB4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_29DFCF72C()
{
  if (!qword_2A181A410)
  {
    sub_29DFCF7C4(255, &qword_2A181A418, sub_29DFCF828, MEMORY[0x29EDBCC28]);
    v0 = sub_29E2C15D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A410);
    }
  }
}

void sub_29DFCF7C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29DFCF828()
{
  if (!qword_2A181A420)
  {
    sub_29DF3F200();
    sub_29DFCFA98(255, &qword_2A181A428, type metadata accessor for PregnancyView.PrimaryText, MEMORY[0x29EDBC0A8]);
    sub_29E2C2984();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2A181A420);
    }
  }
}

void sub_29DFCF91C()
{
  if (!qword_2A181A430)
  {
    sub_29DFCF97C();
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A430);
    }
  }
}

void sub_29DFCF97C()
{
  if (!qword_2A181A438)
  {
    sub_29DFCF7C4(255, &qword_2A181A418, sub_29DFCF828, MEMORY[0x29EDBCC28]);
    sub_29DFCFA10();
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A438);
    }
  }
}

unint64_t sub_29DFCFA10()
{
  result = qword_2A181A440;
  if (!qword_2A181A440)
  {
    sub_29DFCF7C4(255, &qword_2A181A418, sub_29DFCF828, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A440);
  }

  return result;
}

void sub_29DFCFA98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29E2C1744();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29DFCFB0C()
{
  if (!qword_2A181A450)
  {
    sub_29DFCFBA8();
    swift_getOpaqueTypeConformance2();
    v0 = sub_29E2C1C54();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A450);
    }
  }
}

void sub_29DFCFBA8()
{
  if (!qword_2A181B350)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181B350);
    }
  }
}

uint64_t sub_29DFCFC28(uint64_t a1, uint64_t a2)
{
  sub_29DF3F200();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DFCFC8C(uint64_t a1, uint64_t a2)
{
  sub_29DFCFA98(0, &qword_2A181A428, type metadata accessor for PregnancyView.PrimaryText, MEMORY[0x29EDBC0A8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DFCFD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_29DFCFD80()
{
  if (!qword_2A1819168)
  {
    sub_29DFCFE08(255, &qword_2A1819170, type metadata accessor for TraitKey, type metadata accessor for Weight);
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1819168);
    }
  }
}

void sub_29DFCFE08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_29DFCFE84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DFCFF0C()
{
  result = sub_29DE9408C(319, &unk_2A1A61A00);
  if (v1 <= 0x3F)
  {
    result = sub_29E2BCBB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_29DFCFFC0()
{
  result = qword_2A181A478;
  if (!qword_2A181A478)
  {
    sub_29DFCFA98(255, &qword_2A181A448, sub_29DFCF91C, sub_29DFCFB0C);
    sub_29DFD00A0();
    sub_29DFD0150(&qword_2A181A490, sub_29DFCFB0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A478);
  }

  return result;
}

unint64_t sub_29DFD00A0()
{
  result = qword_2A181A480;
  if (!qword_2A181A480)
  {
    sub_29DFCF91C();
    sub_29DFD0150(&qword_2A181A488, sub_29DFCF97C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A480);
  }

  return result;
}

uint64_t sub_29DFD0150(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29DFD021C()
{
  type metadata accessor for CycleHistorySingleCycleModel(319);
  if (v0 <= 0x3F)
  {
    sub_29DE9408C(319, &qword_2A181A4A8);
    if (v1 <= 0x3F)
    {
      sub_29DFD02DC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29DFD02DC()
{
  if (!qword_2A181A4B0)
  {
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A4B0);
    }
  }
}

uint64_t sub_29DFD0354()
{
  result = sub_29DE9408C(319, &qword_2A1A5E0A0);
  if (v1 <= 0x3F)
  {
    result = sub_29E2C31A4();
    if (v2 <= 0x3F)
    {
      result = sub_29E2BCEA4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29DFD0448()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v34 = sub_29E2C3384();
  v2 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v33 - v6;
  v8 = sub_29E2C31A4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x2A1C7C4A8](v12).n128_u64[0];
  v15 = &v33 - v14;
  v16 = *v0;
  v17 = [*v0 lastDayIndex];
  v35 = v8;
  if (v17)
  {
    v18 = v17;
    [v17 integerValue];
    sub_29E2C30D4();

    (*(v9 + 32))(v15, v11, v8);
  }

  else
  {
    v19 = type metadata accessor for CycleHistorySingleCycleModel(0);
    (*(v9 + 16))(v15, v0 + *(v19 + 20), v8);
  }

  v20 = sub_29E2C3164();
  v21 = [v16 menstruationSegment];
  v22 = [v21 days];

  v23 = v20 - v22;
  if (__OFSUB__(v20, v22))
  {
    __break(1u);
    goto LABEL_9;
  }

  v21 = (v23 + 1);
  if (__OFADD__(v23, 1))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_29E2C3314();
  v8 = v34;
  (*(v2 + 16))(v4, v7, v34);
  if (qword_2A1A62788 != -1)
  {
LABEL_10:
    swift_once();
  }

  v24 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v2 + 8))(v7, v8);
  sub_29DFD3F30(0, &qword_2A1A61CA0, sub_29DEEA958);
  v25 = swift_allocObject();
  v26 = MEMORY[0x29EDC9BA8];
  *(v25 + 16) = xmmword_29E2CAB20;
  v27 = MEMORY[0x29EDC9C10];
  *(v25 + 56) = v26;
  *(v25 + 64) = v27;
  *(v25 + 32) = v21;
  v28 = sub_29E2C33B4();
  v30 = v29;

  v36 = v28;
  v37 = v30;
  sub_29DE9DE68();
  v31 = sub_29E2C4354();
  (*(v9 + 8))(v15, v35);

  return v31;
}

uint64_t sub_29DFD0878()
{
  v1 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v117 = &v104 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2C3364();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v116 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_29E2BCAF4();
  v113 = *(v114 - 8);
  MEMORY[0x2A1C7C4A8](v114);
  v110 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v111 = &v104 - v7;
  MEMORY[0x2A1C7C4A8](v8);
  v112 = &v104 - v9;
  sub_29DEB2104();
  v108 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v107 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v106 = &v104 - v13;
  sub_29DEB216C();
  v105 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v109 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_29E2BC9D4();
  v137 = *(v131 - 8);
  MEMORY[0x2A1C7C4A8](v131);
  v127 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_29E2BCA44();
  v130 = *(v133 - 8);
  MEMORY[0x2A1C7C4A8](v133);
  v135 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E2BCA54();
  v128 = *(v18 - 8);
  v129 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v124 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v125 = &v104 - v21;
  MEMORY[0x2A1C7C4A8](v22);
  v126 = &v104 - v23;
  v122 = sub_29E2BCC84();
  v121 = *(v122 - 8);
  MEMORY[0x2A1C7C4A8](v122);
  v115 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25);
  v120 = &v104 - v26;
  v27 = sub_29E2C31A4();
  v28 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27);
  v30 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31);
  v33 = &v104 - v32;
  v136 = sub_29E2BCBB4();
  v132 = *(v136 - 8);
  MEMORY[0x2A1C7C4A8](v136);
  v119 = &v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v35);
  v37 = &v104 - v36;
  *&v39 = MEMORY[0x2A1C7C4A8](v38).n128_u64[0];
  v41 = &v104 - v40;
  v42 = *v0;
  v43 = [*v0 menstruationSegment];
  [v43 days];

  sub_29E2C30D4();
  type metadata accessor for CycleHistorySingleCycleModel(0);
  v123 = v0;
  v134 = v41;
  sub_29E2C3194();
  v44 = *(v28 + 8);
  v44(v33, v27);
  v45 = [v42 lastDayIndex];
  if (!v45)
  {
    sub_29E2C3354();
    v62 = sub_29E2C3344();
    v63 = v124;
    MEMORY[0x29ED78EF0](v62);
    v64 = v135;
    sub_29E2BCA14();
    v65 = v125;
    sub_29E2BC9B4();
    (*(v130 + 8))(v64, v133);
    v66 = v129;
    v67 = *(v128 + 8);
    v67(v63, v129);
    v68 = v127;
    sub_29E2BC9C4();
    v69 = v126;
    sub_29E2BC994();
    v137[1](v68, v131);
    v67(v65, v66);
    sub_29DFD3B40(&qword_2A1817C78, MEMORY[0x29EDB9BB0]);
    v70 = v134;
    sub_29E2BCB94();
    v67(v69, v66);
    sub_29E2C3334();

    sub_29E2C3344();
    sub_29E2C3374();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v71 = qword_2A1A67F80;
    sub_29E2BCC74();
    v72 = sub_29E2C3414();
    (*(v132 + 8))(v70, v136);
    return v72;
  }

  v46 = v133;
  v47 = v45;
  [v45 integerValue];
  sub_29E2C30D4();

  v48 = v119;
  sub_29E2C3194();
  v44(v30, v27);
  v49 = *(v132 + 32);
  v118 = v37;
  v49(v37, v48, v136);
  v50 = v120;
  sub_29E2BCC74();
  v51 = sub_29E2BCC34();
  v53 = v52;
  (*(v121 + 8))(v50, v122);
  if (v51 == 0x53555F6E65 && v53 == 0xE500000000000000)
  {

    v55 = v46;
    v57 = v129;
    v56 = v130;
    v58 = v135;
    v59 = v137;
    v60 = v127;
    v61 = v128;
LABEL_9:
    v74 = v124;
    v75 = v55;
    MEMORY[0x29ED78EF0](v54);
    sub_29E2BCA14();
    v76 = v125;
    sub_29E2BC9B4();
    v130 = *(v56 + 8);
    (v130)(v58, v75);
    v77 = *(v61 + 8);
    v77(v74, v57);
    sub_29E2BC9C4();
    v78 = v126;
    sub_29E2BC994();
    v129 = v59[1];
    v137 = v59 + 1;
    v129(v60, v131);
    v77(v76, v57);
    v128 = sub_29DFD3B40(&qword_2A1817C78, MEMORY[0x29EDB9BB0]);
    sub_29E2BCB94();
    v77(v78, v57);
    v140 = v138;
    v141 = v139;
    v79 = MEMORY[0x29ED7FCC0](0x209380E220, 0xA500000000000000);
    MEMORY[0x29ED78EF0](v79);
    v80 = v135;
    sub_29E2BCA14();
    sub_29E2BC9B4();
    (v130)(v80, v133);
    v77(v74, v57);
    sub_29E2BC9C4();
    sub_29E2BC994();
    v129(v60, v131);
    v77(v76, v57);
    v81 = v118;
    sub_29E2BCB94();
    v77(v78, v57);
    MEMORY[0x29ED7FCC0](v138, v139);

    v72 = v140;
    v82 = *(v132 + 8);
    v83 = v81;
    v84 = v136;
    v82(v83, v136);
    v82(v134, v84);
    return v72;
  }

  v73 = sub_29E2C4914();

  v55 = v46;
  v57 = v129;
  v56 = v130;
  v58 = v135;
  v59 = v137;
  v60 = v127;
  v61 = v128;
  if (v73)
  {
    goto LABEL_9;
  }

  sub_29DFD3B40(&qword_2A1A616E0, MEMORY[0x29EDB9BC8]);
  v85 = v134;
  v86 = v118;
  v87 = v136;
  result = sub_29E2C32B4();
  if (result)
  {
    v89 = v132;
    v90 = *(v132 + 16);
    v91 = v106;
    v90(v106, v85, v87);
    v92 = v108;
    v90((v91 + *(v108 + 48)), v86, v87);
    v93 = v107;
    sub_29DFD4F84(v91, v107);
    v94 = *(v92 + 48);
    v95 = v109;
    v49(v109, v93, v87);
    v96 = *(v89 + 8);
    (v96)(v93 + v94, v87);
    v137 = v96;
    sub_29DEB2268(v91, v93);
    v49((v95 + *(v105 + 36)), (v93 + *(v92 + 48)), v87);
    (v96)(v93, v87);
    v97 = v110;
    sub_29E2BC254();
    v98 = v111;
    sub_29E2BCAC4();
    v99 = *(v113 + 8);
    v100 = v114;
    v99(v97, v114);
    v101 = v135;
    sub_29E2BCA14();
    v102 = v112;
    sub_29E2BCAE4();
    (*(v130 + 8))(v101, v133);
    v99(v98, v100);
    sub_29DFD3B40(&qword_2A181A4E8, MEMORY[0x29EDB9BC0]);
    sub_29E2C3874();
    v99(v102, v100);
    sub_29DFD4FE8(v95, sub_29DEB216C);
    v103 = v137;
    (v137)(v118, v87);
    (v103)(v134, v87);
    return v140;
  }

  __break(1u);
  return result;
}

uint64_t sub_29DFD17A4()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v7 = MEMORY[0x2A1C7C4A8](v6).n128_u64[0];
  v9 = &v14[-v8];
  v10 = [*v0 lastDayIndex];
  if (v10)
  {

    return 0;
  }

  else
  {
    sub_29E2C3314();
    (*(v3 + 16))(v5, v9, v2);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v12 = qword_2A1A67F80;
    sub_29E2BCC74();
    v13 = sub_29E2C3414();
    (*(v3 + 8))(v9, v2);
    return v13;
  }
}

uint64_t sub_29DFD19B0()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v86 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  v82 = v4;
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v72 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x29EDB9F70]) init];
  [v10 setAllowedUnits_];
  [v10 setUnitsStyle_];
  *&v84 = v0;
  v11 = *v0;
  v12 = [*v0 lastDayIndex];
  v85 = v3;
  v81 = v10;
  if (!v12)
  {
    sub_29E2C3314();
    v80 = v4[2];
    v80(v6, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v30 = qword_2A1A67F80;
    v31 = qword_2A1A67F80;
    sub_29E2BCC74();
    v78 = v31;
    v77 = v30;
    v79 = sub_29E2C3414();
    v33 = v32;
    v83 = v4[1];
    v83(v9, v3);
    v34 = type metadata accessor for CycleHistorySingleCycleModel(0);
    v35 = sub_29E2C3164();
    v36 = [v11 menstruationSegment];
    v37 = [v36 days];

    v38 = v35 - v37;
    if (__OFSUB__(v35, v37))
    {
      __break(1u);
    }

    else
    {
      v37 = (v38 + 1);
      if (!__OFADD__(v38, 1))
      {
        v75 = v34;
        v76 = v33;
        sub_29DE9408C(0, &qword_2A181A4D8);
        v74 = sub_29E11FCCC();
        v73 = v39;
        if (v39)
        {
          sub_29E2C3314();
          v40 = v6;
          v41 = v85;
          v42 = v6;
          v43 = v80;
          v80(v40, v9, v85);
          sub_29E2BCC74();
          v77 = sub_29E2C3414();
          v83(v9, v41);
          sub_29DFD3F30(0, &qword_2A1A61CA0, sub_29DEEA958);
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_29E2CD7A0;
          v45 = sub_29DFD2654(v84 + *(v75 + 24));
          v47 = v46;
          v48 = MEMORY[0x29EDC99B0];
          *(v44 + 56) = MEMORY[0x29EDC99B0];
          v49 = sub_29DEB1A44();
          *(v44 + 32) = v45;
          *(v44 + 40) = v47;
          *(v44 + 96) = v48;
          *(v44 + 104) = v49;
          v50 = v43;
          v6 = v42;
          v51 = v74;
          *(v44 + 64) = v49;
          *(v44 + 72) = v51;
          *(v44 + 80) = v73;
          v52 = sub_29E2C3404();
          v54 = v53;

          v23 = v76;
          goto LABEL_15;
        }

        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_25:
    v88 = 0;
    v89 = 0xE000000000000000;
    sub_29E2C4584();

    v88 = 0xD000000000000011;
    v89 = 0x800000029E2F74C0;
    v87 = v37;
    v71 = sub_29E2C48D4();
    MEMORY[0x29ED7FCC0](v71);

    MEMORY[0x29ED7FCC0](0x7379616420, 0xE500000000000000);
    result = sub_29E2C4724();
    __break(1u);
    return result;
  }

  v13 = v12;
  v14 = [v12 integerValue];
  v15 = [v11 menstruationSegment];
  v16 = [v15 days];

  v17 = v14 - v16;
  if (__OFSUB__(v14, v16))
  {
    goto LABEL_20;
  }

  v78 = v13;
  v13 = (v17 + 1);
  if (__OFADD__(v17, 1))
  {
    goto LABEL_21;
  }

  sub_29E2C3314();
  v16 = v85;
  v80 = v4[2];
  v80(v6, v9, v85);
  if (qword_2A1A62788 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v18 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    v83 = v4[1];
    v83(v9, v16);
    sub_29DFD3F30(0, &qword_2A1A61CA0, sub_29DEEA958);
    v19 = swift_allocObject();
    v20 = MEMORY[0x29EDC9BA8];
    *(v19 + 16) = xmmword_29E2CAB20;
    v21 = MEMORY[0x29EDC9C10];
    *(v19 + 56) = v20;
    *(v19 + 64) = v21;
    *(v19 + 32) = v13;
    v79 = sub_29E2C33B4();
    v23 = v22;

    v24 = *(type metadata accessor for CycleHistorySingleCycleModel(0) + 24);
    v25 = [v11 menstruationSegment];
    v26 = [v25 days];

    v27 = [v11 lastDayIndex];
    v28 = v27;
    if (v27)
    {
      v29 = [v27 integerValue];
    }

    else
    {
      v29 = 0;
    }

    v50 = v80;
    v52 = sub_29DFD3F84(v26, v29, v28 == 0, 0, 0, v84 + v24);
    v54 = v55;

    v41 = v85;
LABEL_15:
    sub_29E2C3314();
    v50(v6, v9, v41);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    sub_29E2BCC74();
    sub_29E2C3414();
    v83(v9, v41);
    sub_29DFD3F30(0, &qword_2A1A61CA0, sub_29DEEA958);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_29E2CD7A0;
    v57 = MEMORY[0x29EDC99B0];
    *(v56 + 56) = MEMORY[0x29EDC99B0];
    v58 = sub_29DEB1A44();
    *(v56 + 32) = v79;
    *(v56 + 40) = v23;
    *(v56 + 96) = v57;
    *(v56 + 104) = v58;
    *(v56 + 64) = v58;
    *(v56 + 72) = v52;
    *(v56 + 80) = v54;
    sub_29E2BF404();
    sub_29E2C3404();

    v59 = sub_29E2C33A4();
    v60 = sub_29E2C33A4();

    v82 = v59;
    v80 = [v59 rangeOfString_];
    v86 = v61;

    sub_29DFD3F30(0, &qword_2A1817FD0, sub_29DEA0430);
    v85 = v62;
    inited = swift_initStackObject();
    v84 = xmmword_29E2CAB20;
    *(inited + 16) = xmmword_29E2CAB20;
    v64 = *MEMORY[0x29EDC7638];
    *(inited + 32) = *MEMORY[0x29EDC7638];
    v65 = sub_29DE9408C(0, &unk_2A1A61A00);
    v6 = *MEMORY[0x29EDC80E0];
    v83 = v64;
    v66 = sub_29E2C3FD4();
    *(inited + 64) = v65;
    *(inited + 40) = v66;
    sub_29E185054(inited);
    swift_setDeallocating();
    sub_29DFD4FE8(inited + 32, sub_29DEA0430);
    v67 = objc_allocWithZone(MEMORY[0x29EDBA038]);
    v16 = sub_29E2C33A4();

    type metadata accessor for Key(0);
    sub_29DFD3B40(&qword_2A18177F0, type metadata accessor for Key);
    v68 = sub_29E2C31F4();

    v9 = [v67 initWithString:v16 attributes:v68];

    v11 = swift_initStackObject();
    *(v11 + 16) = v84;
    *(v11 + 32) = v83;
    v4 = (v11 + 32);
    v69 = sub_29E2C3FD4();
    *(v11 + 64) = v65;
    *(v11 + 40) = v69;
    sub_29E185054(v11);
    swift_setDeallocating();
    sub_29DFD4FE8(v11 + 32, sub_29DEA0430);
    v13 = sub_29E2C31F4();

    if (!__OFADD__(v86, 1))
    {
      break;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  [v9 addAttributes:v13 range:{v80, v86 + 1}];

  return v9;
}

uint64_t sub_29DFD2654(uint64_t a1)
{
  v20[2] = a1;
  v1 = sub_29E2BCBB4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29E2C31A4();
  v5 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCC84();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  sub_29E2BCC74();
  v13 = sub_29E2BCC44();
  (*(v9 + 8))(v11, v8);
  [v12 setLocale_];

  v14 = sub_29E2C33A4();
  [v12 setLocalizedDateFormatFromTemplate_];

  v15 = [*v20[1] menstruationSegment];
  [v15 days];

  sub_29E2C30D4();
  sub_29E2C3194();
  v16 = sub_29E2BCB04();
  (*(v2 + 8))(v4, v1);
  v17 = [v12 stringFromDate_];

  v18 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  (*(v5 + 8))(v7, v21);
  return v18;
}

void sub_29DFD2960()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C3384();
  v68 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x2A1C7C4A8](v7).n128_u64[0];
  v64 = &v59 - v9;
  v10 = *v0;
  v11 = [*v0 cycleFactors];
  sub_29DE9408C(0, &qword_2A1A5E0B0);
  v12 = sub_29E2C3614();

  if (v12 >> 62)
  {
    v13 = sub_29E2C4484();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v67 = v4;
    v14 = [v10 cycleFactors];
    v15 = sub_29E2C3614();

    if (v15 >> 62)
    {
      v16 = sub_29E2C4484();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v63 = v3;
    v66 = v6;
    if (v16)
    {
      if (v16 < 1)
      {
        __break(1u);
        return;
      }

      v17 = 0;
      v18 = MEMORY[0x29EDCA190];
      do
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x29ED80D70](v17, v15);
        }

        else
        {
          v19 = *(v15 + 8 * v17 + 32);
        }

        v20 = v19;
        v21 = sub_29E08C870([v19 integerValue]);
        v23 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_29E143F38(0, *(v18 + 2) + 1, 1, v18);
        }

        v25 = *(v18 + 2);
        v24 = *(v18 + 3);
        if (v25 >= v24 >> 1)
        {
          v18 = sub_29E143F38((v24 > 1), v25 + 1, 1, v18);
        }

        ++v17;

        *(v18 + 2) = v25 + 1;
        v26 = &v18[16 * v25];
        *(v26 + 4) = v21;
        *(v26 + 5) = v23;
      }

      while (v16 != v17);
    }

    v27 = v64;
    sub_29E2C3314();
    v29 = v67;
    v28 = v68;
    v61 = v68[2];
    v61(v66, v27, v67);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v30 = qword_2A1A67F80;
    sub_29E2BCC74();
    v31 = v30;
    v62 = sub_29E2C3414();
    v32 = v28[1];
    v68 = v28 + 1;
    v60 = v32;
    v32(v27, v29);
    sub_29DFD3F30(0, &qword_2A1A61CA0, sub_29DEEA958);
    v33 = v27;
    v34 = swift_allocObject();
    v65 = xmmword_29E2CAB20;
    *(v34 + 16) = xmmword_29E2CAB20;
    v35 = objc_opt_self();
    v36 = MEMORY[0x29EDC99B0];
    v37 = sub_29E2C3604();

    v38 = [v35 localizedStringByJoiningStrings_];

    v39 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v41 = v40;

    *(v34 + 56) = v36;
    *(v34 + 64) = sub_29DEB1A44();
    *(v34 + 32) = v39;
    *(v34 + 40) = v41;
    sub_29E2C3404();

    v42 = sub_29E2C33A4();
    v62 = v42;
    sub_29E2C3314();
    v43 = v67;
    v61(v66, v33, v67);
    sub_29E2BCC74();
    sub_29E2C3414();
    v60(v33, v43);
    v44 = sub_29E2C33A4();

    v45 = [v42 rangeOfString_];
    v67 = v46;
    v68 = v45;

    sub_29DFD3F30(0, &qword_2A1817FD0, sub_29DEA0430);
    v66 = v47;
    inited = swift_initStackObject();
    *(inited + 16) = v65;
    v49 = *MEMORY[0x29EDC7638];
    *(inited + 32) = *MEMORY[0x29EDC7638];
    v50 = sub_29DE9408C(0, &unk_2A1A61A00);
    v64 = v49;
    v51 = sub_29E2C3FD4();
    *(inited + 64) = v50;
    *(inited + 40) = v51;
    sub_29E185054(inited);
    swift_setDeallocating();
    sub_29DFD4FE8(inited + 32, sub_29DEA0430);
    v52 = objc_allocWithZone(MEMORY[0x29EDBA038]);
    v53 = sub_29E2C33A4();

    type metadata accessor for Key(0);
    sub_29DFD3B40(&qword_2A18177F0, type metadata accessor for Key);
    v54 = sub_29E2C31F4();

    v55 = [v52 initWithString:v53 attributes:v54];

    v56 = swift_initStackObject();
    *(v56 + 16) = v65;
    *(v56 + 32) = v64;
    v57 = sub_29E2C3FD4();
    *(v56 + 64) = v50;
    *(v56 + 40) = v57;
    sub_29E185054(v56);
    swift_setDeallocating();
    sub_29DFD4FE8(v56 + 32, sub_29DEA0430);
    v58 = sub_29E2C31F4();

    [v55 addAttributes:v58 range:{v68, v67}];
  }
}

uint64_t sub_29DFD31B4()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v17[-v7];
  sub_29E2C3314();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v3 + 8))(v8, v2);
  sub_29DFD3F30(0, &qword_2A1A61CA0, sub_29DEEA958);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29E2CAB20;
  v11 = [*v0 menstruationSegment];
  [v11 days];
  v13 = v12;

  v14 = MEMORY[0x29EDC9C10];
  *(v10 + 56) = MEMORY[0x29EDC9BA8];
  *(v10 + 64) = v14;
  *(v10 + 32) = v13;
  v15 = sub_29E2C33B4();

  return v15;
}

uint64_t sub_29DFD344C()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v20 - v7;
  sub_29E2C3314();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v3 + 8))(v8, v2);
  sub_29DFD3F30(0, &qword_2A1A61CA0, sub_29DEEA958);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29E2CAB20;
  v11 = [*v0 menstruationSegment];
  [v11 days];
  v13 = v12;

  v14 = MEMORY[0x29EDC9C10];
  *(v10 + 56) = MEMORY[0x29EDC9BA8];
  *(v10 + 64) = v14;
  *(v10 + 32) = v13;
  v15 = sub_29E2C33B4();
  v17 = v16;

  v20[1] = v15;
  v20[2] = v17;
  sub_29DE9DE68();
  v18 = sub_29E2C4354();

  return v18;
}

uint64_t sub_29DFD3710()
{
  sub_29DE9408C(0, &qword_2A1A619F0);
  if (sub_29E2C40D4())
  {
    sub_29E2C31A4();
    sub_29DFD3B40(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
    if (sub_29E2C3304())
    {

      JUMPOUT(0x29ED79570);
    }
  }

  return 0;
}

uint64_t sub_29DFD3804()
{
  sub_29E2C4A04();
  sub_29E2C40E4();
  sub_29E2C31A4();
  sub_29DFD3B40(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]);
  sub_29E2C3254();
  sub_29E2BCEA4();
  sub_29DFD3B40(&qword_2A181A4E0, MEMORY[0x29EDB9D18]);
  sub_29E2C3254();
  return sub_29E2C4A54();
}

uint64_t sub_29DFD3908()
{
  sub_29E2C40E4();
  sub_29E2C31A4();
  sub_29DFD3B40(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]);
  sub_29E2C3254();
  sub_29E2BCEA4();
  sub_29DFD3B40(&qword_2A181A4E0, MEMORY[0x29EDB9D18]);
  return sub_29E2C3254();
}

uint64_t sub_29DFD39F8()
{
  sub_29E2C4A04();
  sub_29E2C40E4();
  sub_29E2C31A4();
  sub_29DFD3B40(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]);
  sub_29E2C3254();
  sub_29E2BCEA4();
  sub_29DFD3B40(&qword_2A181A4E0, MEMORY[0x29EDB9D18]);
  sub_29E2C3254();
  return sub_29E2C4A54();
}

uint64_t sub_29DFD3B40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DFD3B8C()
{
  sub_29E2C40E4();
  type metadata accessor for CycleHistorySingleCycleModel(0);
  sub_29E2C31A4();
  sub_29DFD3B40(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]);
  sub_29E2C3254();
  sub_29E2BCEA4();
  sub_29DFD3B40(&qword_2A181A4E0, MEMORY[0x29EDB9D18]);
  sub_29E2C3254();
  v1 = type metadata accessor for CycleHistorySingleCycleViewModel(0);
  sub_29E2C40E4();
  v2 = *(v0 + *(v1 + 24));
  sub_29E2C4A24();
  if (v2 != 51)
  {
    MEMORY[0x29ED811E0](v2);
  }

  sub_29E2C4A24();
  sub_29E2C4A24();
  sub_29E2C4A24();
  sub_29E2C4A24();
  return sub_29E2C4A24();
}

uint64_t sub_29DFD3D14()
{
  sub_29E2C4A04();
  sub_29DFD3B8C();
  return sub_29E2C4A54();
}

uint64_t sub_29DFD3D58()
{
  sub_29E2C4A04();
  sub_29DFD3B8C();
  return sub_29E2C4A54();
}

uint64_t sub_29DFD3D94(uint64_t a1, uint64_t a2)
{
  sub_29DE9408C(0, &qword_2A1A619F0);
  if ((sub_29E2C40D4() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_29E2C31A4();
  v4 = type metadata accessor for CycleHistorySingleCycleModel(0);
  sub_29DFD3B40(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
  if ((sub_29E2C3304() & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((MEMORY[0x29ED79570](a1 + *(v4 + 24), a2 + *(v4 + 24)) & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = type metadata accessor for CycleHistorySingleCycleViewModel(0);
  if ((sub_29E2C40D4() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = v5[6];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 51)
  {
    if (v8 != 51)
    {
      goto LABEL_13;
    }
  }

  else if (v7 != v8)
  {
    goto LABEL_13;
  }

  if (*(a1 + v5[7]) == *(a2 + v5[7]) && *(a1 + v5[8]) == *(a2 + v5[8]) && *(a1 + v5[9]) == *(a2 + v5[9]) && *(a1 + v5[10]) == *(a2 + v5[10]))
  {
    v9 = *(a1 + v5[11]) ^ *(a2 + v5[11]) ^ 1;
    return v9 & 1;
  }

LABEL_13:
  v9 = 0;
  return v9 & 1;
}

void sub_29DFD3F30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C48E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29DFD3F84(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v148 = a6;
  v144 = a5;
  v142 = a4;
  LODWORD(v150) = a3;
  v140 = a2;
  v157 = a1;
  v6 = sub_29E2C3384();
  v155 = *(v6 - 8);
  v156 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v153 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v154 = &v135 - v9;
  v147 = sub_29E2BCE84();
  v141 = *(v147 - 8);
  MEMORY[0x2A1C7C4A8](v147);
  v146 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BCEA4();
  v149 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v145 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2C31A4();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E2BCBB4();
  v158 = *(v17 - 8);
  v159 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v160 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v135 - v20;
  v22 = sub_29E2BCC84();
  v23 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v25 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  sub_29E2BCC74();
  v27 = sub_29E2BCC44();
  v28 = *(v23 + 8);
  v152 = v25;
  v139 = v22;
  v138 = v23 + 8;
  v137 = v28;
  v28(v25, v22);
  [v26 setLocale_];

  v29 = sub_29E2C33A4();
  [v26 setLocalizedDateFormatFromTemplate_];

  sub_29E2C30D4();
  sub_29E2C3194();
  v30 = *(v14 + 8);
  v30(v16, v13);
  v31 = sub_29E2BCB04();
  v157 = v26;
  v32 = [v26 stringFromDate_];

  v143 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v151 = v33;

  if (v150)
  {
    if (v144)
    {
      v34 = v144;
      v35 = v156;
      v36 = v157;
      v38 = v154;
      v37 = v155;
      v39 = v153;
      v40 = v142;
    }

    else
    {
      v38 = v154;
      sub_29E2C3314();
      v37 = v155;
      v35 = v156;
      v39 = v153;
      (*(v155 + 16))(v153, v38, v156);
      v36 = v157;
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v111 = qword_2A1A67F80;
      sub_29E2BCC74();
      v40 = sub_29E2C3414();
      v34 = v112;
      (*(v37 + 8))(v38, v35);
    }

    sub_29E2BF404();
    sub_29E2C3314();
    (*(v37 + 16))(v39, v38, v35);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v113 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v37 + 8))(v38, v35);
    sub_29DFD3F30(0, &qword_2A1A61CA0, sub_29DEEA958);
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_29E2CD7A0;
    v115 = MEMORY[0x29EDC99B0];
    *(v114 + 56) = MEMORY[0x29EDC99B0];
    v116 = sub_29DEB1A44();
    v117 = v151;
    *(v114 + 32) = v143;
    *(v114 + 40) = v117;
    *(v114 + 96) = v115;
    *(v114 + 104) = v116;
    *(v114 + 64) = v116;
    *(v114 + 72) = v40;
    *(v114 + 80) = v34;
    v88 = sub_29E2C3404();

    (*(v158 + 8))(v21, v159);
  }

  else
  {
    sub_29E2C30D4();
    sub_29E2C3194();
    v30(v16, v13);
    v41 = v145;
    sub_29E2BCE44();
    v42 = *MEMORY[0x29EDB9CD0];
    v43 = v141;
    v44 = v11;
    v45 = v146;
    v46 = v147;
    v150 = *(v141 + 104);
    v150(v146, v42, v147);
    v47 = sub_29E2BCE24();
    v48 = *(v43 + 8);
    v49 = v45;
    v50 = v44;
    v51 = v149;
    v48(v49, v46);
    v54 = *(v51 + 8);
    v52 = v51 + 8;
    v53 = v54;
    v54(v41, v50);
    v136 = v21;
    if (v47)
    {
      v55 = v145;
      sub_29E2BCE44();
      v56 = *MEMORY[0x29EDB9CD8];
      v57 = v146;
      v149 = v52;
      v58 = v147;
      v150(v146, v56, v147);
      v59 = v160;
      v60 = sub_29E2BCE24();
      v48(v57, v58);
      v53(v55, v50);
      if (v60)
      {

        v61 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
        v62 = sub_29E2C33A4();
        [v61 setLocalizedDateFormatFromTemplate_];

        v63 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
        v64 = sub_29E2C33A4();
        [v63 setLocalizedDateFormatFromTemplate_];

        v65 = sub_29E2BCB04();
        v66 = [v63 stringFromDate_];

        v67 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v150 = v68;
        v151 = v67;

        v69 = sub_29E2BCB04();
        v70 = [v61 stringFromDate_];

        v71 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v148 = v72;
        v149 = v71;

        v73 = sub_29E2BCB04();
        v74 = [v61 stringFromDate_];

        v75 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v77 = v76;

        v78 = v154;
        sub_29E2C3314();
        v80 = v155;
        v79 = v156;
        (*(v155 + 16))(v153, v78, v156);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v81 = qword_2A1A67F80;
        sub_29E2BCC74();
        sub_29E2C3414();
        (*(v80 + 8))(v78, v79);
        sub_29DFD3F30(0, &qword_2A1A61CA0, sub_29DEEA958);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_29E2CE0D0;
        v83 = MEMORY[0x29EDC99B0];
        *(v82 + 56) = MEMORY[0x29EDC99B0];
        v84 = sub_29DEB1A44();
        v85 = v150;
        *(v82 + 32) = v151;
        *(v82 + 40) = v85;
        *(v82 + 96) = v83;
        *(v82 + 104) = v84;
        v86 = v148;
        v87 = v149;
        *(v82 + 64) = v84;
        *(v82 + 72) = v87;
        *(v82 + 80) = v86;
        *(v82 + 136) = v83;
        *(v82 + 144) = v84;
        *(v82 + 112) = v75;
        *(v82 + 120) = v77;
        v88 = sub_29E2C3404();

        v89 = *(v158 + 8);
        v90 = v59;
      }

      else
      {
        v118 = sub_29E2BCB04();
        v119 = v157;
        v120 = [v157 stringFromDate_];

        v121 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v123 = v122;

        v124 = v154;
        sub_29E2C3314();
        v125 = v59;
        v127 = v155;
        v126 = v156;
        (*(v155 + 16))(v153, v124, v156);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v128 = qword_2A1A67F80;
        sub_29E2BCC74();
        sub_29E2C3414();
        (*(v127 + 8))(v124, v126);
        sub_29DFD3F30(0, &qword_2A1A61CA0, sub_29DEEA958);
        v129 = swift_allocObject();
        *(v129 + 16) = xmmword_29E2CD7A0;
        v130 = MEMORY[0x29EDC99B0];
        *(v129 + 56) = MEMORY[0x29EDC99B0];
        v131 = sub_29DEB1A44();
        v132 = v151;
        *(v129 + 32) = v143;
        *(v129 + 40) = v132;
        *(v129 + 96) = v130;
        *(v129 + 104) = v131;
        *(v129 + 64) = v131;
        *(v129 + 72) = v121;
        *(v129 + 80) = v123;
        v88 = sub_29E2C3404();

        v89 = *(v158 + 8);
        v90 = v125;
      }
    }

    else
    {

      v91 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
      v92 = v152;
      sub_29E2BCC74();
      v93 = sub_29E2BCC44();
      v137(v92, v139);
      [v91 setLocale_];

      v94 = sub_29E2C33A4();
      [v91 setLocalizedDateFormatFromTemplate_];

      v95 = sub_29E2BCB04();
      v96 = [v91 stringFromDate_];

      v151 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v98 = v97;

      v99 = sub_29E2BCB04();
      v100 = [v91 stringFromDate_];

      v101 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v103 = v102;

      v104 = v154;
      sub_29E2C3314();
      v106 = v155;
      v105 = v156;
      (*(v155 + 16))(v153, v104, v156);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v107 = qword_2A1A67F80;
      sub_29E2BCC74();
      sub_29E2C3414();
      (*(v106 + 8))(v104, v105);
      sub_29DFD3F30(0, &qword_2A1A61CA0, sub_29DEEA958);
      v108 = swift_allocObject();
      *(v108 + 16) = xmmword_29E2CD7A0;
      v109 = MEMORY[0x29EDC99B0];
      *(v108 + 56) = MEMORY[0x29EDC99B0];
      v110 = sub_29DEB1A44();
      *(v108 + 32) = v151;
      *(v108 + 40) = v98;
      *(v108 + 96) = v109;
      *(v108 + 104) = v110;
      *(v108 + 64) = v110;
      *(v108 + 72) = v101;
      *(v108 + 80) = v103;
      v88 = sub_29E2C3404();

      v89 = *(v158 + 8);
      v90 = v160;
    }

    v133 = v159;
    v89(v90, v159);
    v89(v136, v133);
  }

  return v88;
}

uint64_t sub_29DFD4F84(uint64_t a1, uint64_t a2)
{
  sub_29DEB2104();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DFD4FE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_29DFD5048(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView_configuration];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView_label;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  if (a2)
  {
    v6 = sub_29E2C33A4();
  }

  else
  {
    v6 = 0;
  }

  v13.receiver = v2;
  v13.super_class = type metadata accessor for MenstrualCyclesHeaderFooterView();
  v7 = objc_msgSendSuper2(&v13, sel_initWithReuseIdentifier_, v6);

  v8 = v7;
  sub_29DFD543C();
  sub_29DFD5278();
  sub_29DEAC750();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29E2CAB20;
  v10 = sub_29E2C0B54();
  v11 = MEMORY[0x29EDC7870];
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  sub_29E2C4034();

  swift_unknownObjectRelease();

  return v8;
}

void sub_29DFD5278()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView_label);
  v2 = *MEMORY[0x29EDC80F8];
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView_configuration;
  swift_beginAccess();
  sub_29DFD5A4C(v0 + v3, v14);
  v4 = v15;
  if (v15)
  {
    v5 = v16;
    v6 = sub_29DE966D4(v14, v15);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x2A1C7C4A8](v6);
    v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v7 + 16))(v10, v8);
    sub_29DFD5AB0(v14);
    v11 = (*(v5 + 8))(v4, v5);
    (*(v7 + 8))(v10, v4);
  }

  else
  {
    sub_29DFD5AB0(v14);
    v11 = 0;
  }

  v12 = [objc_opt_self() _preferredFontForTextStyle_maximumContentSizeCategory_];

  [v1 setFont_];
}

void sub_29DFD543C()
{
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView_label];
  [v1 setNumberOfLines_];
  v2 = [objc_opt_self() secondaryLabelColor];
  [v1 setTextColor_];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v0 contentView];
  [v3 addSubview_];

  v4 = [v1 topAnchor];
  v5 = [v0 contentView];
  v6 = [v5 layoutMarginsGuide];

  v7 = [v6 topAnchor];
  v8 = [v4 constraintEqualToAnchor_];

  [v8 setActive_];
  v9 = [v1 bottomAnchor];
  v10 = [v0 contentView];
  v11 = [v10 layoutMarginsGuide];

  v12 = [v11 bottomAnchor];
  v13 = [v9 constraintEqualToAnchor_];

  [v13 setActive_];
}

id sub_29DFD5674()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenstrualCyclesHeaderFooterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29DFD5718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  v7 = sub_29DEBB7E8(v11);
  (*(*(a3 - 8) + 16))(v7, a1, a3);
  sub_29DE9DC34(v11, v10);
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView_configuration;
  swift_beginAccess();
  sub_29DE9DCF4(v10, a2 + v8);
  swift_endAccess();
  sub_29DFD5278();
  return sub_29DE93B3C(v11);
}

char *sub_29DFD57F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_allocWithZone(type metadata accessor for MenstrualCyclesHeaderFooterView());
  v5 = sub_29E2C33A4();
  v6 = [v4 initWithReuseIdentifier_];

  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView_label;
  v8 = *&v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31MenstrualCyclesHeaderFooterView_label];
  v9 = sub_29E2C33A4();
  [v8 setText_];

  v10 = a3[3];
  v11 = a3[4];
  v12 = sub_29DE966D4(a3, v10);
  sub_29DFD5718(v12, v6, v10, v11);
  v13 = [*&v6[v7] leadingAnchor];
  v14 = v6;
  v15 = [v14 contentView];
  v16 = [v15 layoutMarginsGuide];

  v17 = [v16 leadingAnchor];
  v18 = [v13 constraintEqualToAnchor_];

  [v18 setActive_];
  v19 = [v14 contentView];

  v20 = [v19 layoutMarginsGuide];
  v21 = [v20 trailingAnchor];

  v22 = [*&v6[v7] trailingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  [v23 setActive_];
  return v14;
}

uint64_t sub_29DFD5A4C(uint64_t a1, uint64_t a2)
{
  sub_29DE9DD58();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DFD5AB0(uint64_t a1)
{
  sub_29DE9DD58();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_29DFD5BF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PregnancyGuardianFeaturesCollectionViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29DFD5C90()
{
  sub_29E2BE424();

  return swift_deallocClassInstance();
}

uint64_t sub_29DFD5CF4()
{
  v0 = sub_29E2BEE54();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BEE14();
  sub_29E2BF074();
  v4 = sub_29E2BEE44();
  swift_unknownObjectRelease();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_29DFD5E20(uint64_t a1)
{
  v2 = sub_29E2BF6C4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_29E2BF424();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t sub_29DFD5F28()
{
  sub_29E2BF434();

  return swift_deallocClassInstance();
}

uint64_t sub_29DFD5F98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PregnancyGuardianFeaturesPromptTileViewActionHandler(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29DFD6014()
{
  v1 = sub_29E2C2B34();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C2B54();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1A626C0);
  v9 = sub_29E2C3CF4();
  aBlock[4] = sub_29DFD8594;
  v13 = v0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24B6F30;
  v10 = _Block_copy(aBlock);

  sub_29E2C2B44();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29DFD816C(&qword_2A1A626F0, 255, MEMORY[0x29EDCA248]);
  sub_29DFD861C(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29DF4B408();
  sub_29E2C43F4();
  MEMORY[0x29ED804D0](0, v8, v4, v10);
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_29DFD62EC()
{

  sub_29DE93B3C(v0 + 96);
  swift_unknownObjectRelease();
}

id *sub_29DFD6344()
{
  [v0[17] unregisterObserver_];

  sub_29DE93B3C((v0 + 12));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_29DFD63C0()
{
  sub_29DFD6344();

  return swift_deallocClassInstance();
}

uint64_t sub_29DFD6418(uint64_t a1)
{
  sub_29DFD85B4(0, &qword_2A181A570, MEMORY[0x29EDC2008]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  if (*(a1 + 88) == 1)
  {
    (*(v4 + 104))(&v13 - v8, *MEMORY[0x29EDC1FF8], v3, v9);
  }

  else
  {
    sub_29E2BE5F4();
    sub_29E2BED34();
    v10 = sub_29E2BE774();

    if (v10 & 1 | ((*(a1 + 48) & 1) == 0))
    {
      v11 = MEMORY[0x29EDC1FF8];
    }

    else
    {
      v11 = MEMORY[0x29EDC2000];
    }

    (*(v4 + 104))(v6, *v11, v3);
  }

  return sub_29E2BE644();
}

void *sub_29DFD65B8()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v1 = sub_29DFD6618();
    *(v0 + 144) = v1;
  }

  return v1;
}

void *sub_29DFD6618()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v17 - v6;
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  v11 = v10;
  (*(v2 + 8))(v7, v1);
  v12 = [objc_opt_self() systemIndigoColor];
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v18 = qword_2A1A67E58;
  v19 = unk_2A1A67E60;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000012, 0x800000029E2F7900);
  v13 = v18;
  v14 = v19;
  type metadata accessor for TileHeaderItem();
  swift_allocObject();
  v15 = sub_29DEF6574(v9, v11, v12, v13, v14);
  v15[5] = &off_2A24B6F10;
  swift_unknownObjectWeakAssign();
  v15[7] = &off_2A24B6F00;
  swift_unknownObjectWeakAssign();
  return v15;
}

uint64_t sub_29DFD6998@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E2C08B4();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v15[-v9];
  sub_29E2C3314();
  (*(v5 + 16))(v7, v10, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v5 + 8))(v10, v4);
  sub_29E2C0844();
  v12 = sub_29E2BE0B4();
  swift_allocObject();
  v13 = sub_29E2BE094();
  a1[3] = v12;
  result = sub_29DFD816C(&unk_2A181CC00, 255, MEMORY[0x29EDC1C30]);
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t sub_29DFD6CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_29E2C0514();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  sub_29E2C3714();
  v6[11] = sub_29E2C3704();
  v9 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29DFD6DB0, v9, v8);
}

uint64_t sub_29DFD6DB0()
{
  v29 = v0;
  v1 = *(v0 + 40);

  sub_29E2C04B4();
  v2 = v1;
  v3 = sub_29E2C0504();
  v4 = sub_29E2C3A34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v25 = *(v0 + 80);
    v6 = *(v0 + 64);
    v7 = *(v0 + 40);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136446466;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v26);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_29E2C4584();

    v27 = 0xD000000000000018;
    v28 = 0x800000029E2F7940;
    *(v0 + 32) = v7;
    sub_29DE9408C(0, &unk_2A1A5E190);
    v13 = v7;
    v14 = sub_29E2C3464();
    MEMORY[0x29ED7FCC0](v14);

    v15 = v28;
    *(v0 + 16) = v27;
    *(v0 + 24) = v15;
    v16 = sub_29E2C3464();
    v18 = sub_29DFAA104(v16, v17, &v26);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_29DE74000, v3, v4, "[%{public}s] Received %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);

    (*(v5 + 8))(v25, v6);
  }

  else
  {
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    v21 = *(v0 + 64);

    (*(v20 + 8))(v19, v21);
  }

  v22 = *(v0 + 48);
  *(v22 + 88) = [*(v0 + 40) state] == 1;
  sub_29DFD6014();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_29DFD71FC(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 64);
  *(v3 + 64) = a2;

  v11 = a2;
  sub_29E2C04B4();
  v12 = v11;
  v13 = sub_29E2C0504();
  v14 = sub_29E2C3A34();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v39 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    *&v41 = v17;
    *v16 = 136446466;
    v18 = sub_29E2C4AE4();
    v20 = sub_29DFAA104(v18, v19, &v41);
    v38 = v6;
    v21 = v20;

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    v40 = v12;
    sub_29DE9408C(0, &qword_2A1A61DC0);
    v22 = v12;
    v23 = sub_29E2C3464();
    v25 = sub_29DFAA104(v23, v24, &v41);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_29DE74000, v13, v14, "[%{public}s] Received analysis: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v17, -1, -1);
    v26 = v16;
    a1 = v39;
    MEMORY[0x29ED82140](v26, -1, -1);

    (*(v7 + 8))(v9, v38);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  if (*(v3 + 49) == 1)
  {
    v27 = sub_29DFD65B8();
    v28 = sub_29E144584(0, 1, 1, MEMORY[0x29EDCA190]);
    v30 = v28[2];
    v29 = v28[3];
    if (v30 >= v29 >> 1)
    {
      v28 = sub_29E144584((v29 > 1), v30 + 1, 1, v28);
    }

    v42 = type metadata accessor for TileHeaderItem();
    v43 = sub_29DFD816C(&unk_2A1820CE0, 255, type metadata accessor for TileHeaderItem);
    *&v41 = v27;
    v28[2] = v30 + 1;
    sub_29DF3CBE8(&v41, &v28[5 * v30 + 4]);
  }

  else
  {
    v28 = MEMORY[0x29EDCA190];
  }

  v31 = type metadata accessor for CycleFactorsItem();
  v32 = swift_allocObject();
  *(v32 + 32) = 0;
  *(v32 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v32 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v32 + 80) = 0;
  swift_unknownObjectWeakInit();
  *(v32 + 16) = v12;
  *(v32 + 24) = a1;
  *(v32 + 48) = &off_2A24B6F10;
  swift_unknownObjectWeakAssign();
  *(v32 + 64) = &off_2A24B6F00;
  swift_unknownObjectWeakAssign();
  v33 = v12;
  v34 = a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_29E144584(0, v28[2] + 1, 1, v28);
  }

  v36 = v28[2];
  v35 = v28[3];
  if (v36 >= v35 >> 1)
  {
    v28 = sub_29E144584((v35 > 1), v36 + 1, 1, v28);
  }

  v42 = v31;
  v43 = sub_29DFD816C(&qword_2A181A580, 255, type metadata accessor for CycleFactorsItem);
  *&v41 = v32;
  v28[2] = v36 + 1;
  sub_29DF3CBE8(&v41, &v28[5 * v36 + 4]);
  sub_29E2BE5F4();
  sub_29E13D98C(v28);

  sub_29E2BEC94();

  sub_29DFD6014();
}

void sub_29DFD7754(uint64_t a1, void *a2)
{
  v3 = v2;
  v43 = a2;
  v4 = *v2;
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = v42 - v10;
  sub_29E2C04B4();
  v12 = sub_29E2C0504();
  v13 = sub_29E2C3A34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    v44[0] = v42[0];
    *v14 = 136446210;
    v15 = sub_29E2C4AE4();
    v42[1] = v4;
    v17 = v3;
    v18 = v5;
    v19 = v8;
    v20 = v6;
    v21 = sub_29DFAA104(v15, v16, v44);

    *(v14 + 4) = v21;
    v6 = v20;
    v8 = v19;
    v5 = v18;
    v3 = v17;
    _os_log_impl(&dword_29DE74000, v12, v13, "[%{public}s] Showing the Cycle Factors View Controller", v14, 0xCu);
    v22 = v42[0];
    sub_29DE93B3C(v42[0]);
    MEMORY[0x29ED82140](v22, -1, -1);
    MEMORY[0x29ED82140](v14, -1, -1);
  }

  v23 = *(v6 + 8);
  v23(v11, v5);
  v24 = v3[8];
  if (v24)
  {
    v25 = type metadata accessor for CycleFactorsHistoryCollectionViewController();
    v26 = v3[7];
    v27 = v24;
    v28 = v26;
    v29 = [v27 ongoingCycleFactors];
    sub_29DE9408C(0, &qword_2A1A61D50);
    v30 = sub_29E2C3614();

    v31 = v3[9];
    v32 = v3[10];
    sub_29DE9DC34((v3 + 12), v44);
    v33 = v3[17];
    swift_getObjectType();

    swift_unknownObjectRetain();
    v34 = sub_29E259808(v28, v30, v31, v32, v44, v33, v25);
    v34[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_launchSource] = 0;
    [v43 showViewController:v34 sender:v3];
  }

  else
  {
    sub_29E2C04B4();
    v35 = sub_29E2C0504();
    v36 = sub_29E2C3A14();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44[0] = v38;
      *v37 = 136446210;
      v39 = sub_29E2C4AE4();
      v41 = sub_29DFAA104(v39, v40, v44);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_29DE74000, v35, v36, "[%{public}s] Attempted to show Cycle Factors View Controller with nil analysis", v37, 0xCu);
      sub_29DE93B3C(v38);
      MEMORY[0x29ED82140](v38, -1, -1);
      MEMORY[0x29ED82140](v37, -1, -1);
    }

    v23(v8, v5);
  }
}

uint64_t sub_29DFD7B7C(int a1)
{
  v17 = a1;
  v1 = sub_29E2BCFB4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFD85B4(0, &unk_2A181A550, MEMORY[0x29EDC2020]);
  sub_29DFBBD70();
  result = sub_29E2BE6D4();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (result)
    {
      v7 = 0;
      v8 = (v2 + 8);
      v16 = v1;
      do
      {
        MEMORY[0x29ED79720](v7, 0);
        sub_29E2BE764();
        (*v8)(v4, v1);
        sub_29DE9DC34(v20, v19);
        sub_29DEA7E2C();
        type metadata accessor for CycleFactorsItem();
        if (swift_dynamicCast())
        {
          v9 = v18;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v10 = *(v9 + 80);
LABEL_12:
            ObjectType = swift_getObjectType();
            v13 = *(v10 + 8);
            v14 = v10;
            v1 = v16;
            v13(v17 & 1, v20, ObjectType, v14);

            swift_unknownObjectRelease();
            goto LABEL_5;
          }
        }

        else
        {
          sub_29DE9DC34(v20, v19);
          type metadata accessor for TileHeaderItem();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_5;
          }

          v11 = v18;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v10 = *(v11 + 72);
            goto LABEL_12;
          }
        }

LABEL_5:
        result = sub_29DE93B3C(v20);
        ++v7;
      }

      while (v6 != v7);
    }
  }

  return result;
}

void *sub_29DFD7E34(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  v3 = sub_29E2BCFB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C0AD4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E2C0B44();
  v11 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0ADB14(v13);
  v14 = *(v2 + 49);
  if ((v14 & 1) == 0)
  {
    (*(v8 + 104))(v10, *MEMORY[0x29EDC7860], v7);
    sub_29E2C0B04();
  }

  MEMORY[0x29ED79720](0, 0);
  sub_29DFD85B4(0, &unk_2A181A550, MEMORY[0x29EDC2020]);
  sub_29DFBBD70();
  sub_29E2BE764();
  (*(v4 + 8))(v6, v3);
  sub_29DE9DC34(v23, v22);
  sub_29DEA7E2C();
  type metadata accessor for CycleFactorsItem();
  if (swift_dynamicCast())
  {
    *(v21 + 32) = v14 ^ 1;
  }

  sub_29DE9408C(0, &qword_2A1819BB0);
  v15 = sub_29E2C3F34();
  [v15 setContentInsetsReference_];
  v16 = 0.0;
  if (v14)
  {
    v16 = 10.0;
  }

  [v15 setContentInsets_];
  sub_29DE93B3C(v23);
  (*(v11 + 8))(v13, v19);
  return v15;
}

uint64_t sub_29DFD816C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29DFD81B4(void *a1)
{
  type metadata accessor for CycleFactorsSectionCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_29E2C33A4();
  [a1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v3];

  type metadata accessor for TileHeaderCell();
  v4 = swift_getObjCClassFromMetadata();
  type metadata accessor for TileHeaderItem();
  sub_29DEF6428();
  v5 = sub_29E2C33A4();

  [a1 registerClass:v4 forCellWithReuseIdentifier:v5];
}

uint64_t sub_29DFD828C(char a1)
{
  v2 = v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C2B84();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DE9408C(0, &qword_2A1A626C0);
  *v11 = sub_29E2C3CF4();
  (*(v9 + 104))(v11, *MEMORY[0x29EDCA278], v8);
  v12 = sub_29E2C2BA4();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_29E2C04B4();
    v14 = sub_29E2C0504();
    v15 = sub_29E2C3A34();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136446466;
      v18 = sub_29E2C4AE4();
      v20 = sub_29DFAA104(v18, v19, &v24);
      v23 = v4;
      v21 = a1;
      v22 = v20;

      *(v16 + 4) = v22;
      a1 = v21;
      *(v16 + 12) = 1024;
      *(v16 + 14) = v21 & 1;
      _os_log_impl(&dword_29DE74000, v14, v15, "[%{public}s] Received availability update to: %{BOOL}d", v16, 0x12u);
      sub_29DE93B3C(v17);
      MEMORY[0x29ED82140](v17, -1, -1);
      MEMORY[0x29ED82140](v16, -1, -1);

      (*(v5 + 8))(v7, v23);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    *(v2 + 48) = a1 & 1;
    return sub_29DFD6014();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29DFD859C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29DFD85B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_29E2BED34();
    v7 = a3(a1, v6, MEMORY[0x29EDC2280]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29DFD861C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29DFD8680(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29DE9657C;

  return sub_29DFD6CB8(a1, v4, v5, v6, v7, v8);
}

void sub_29DFD8748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1107296256;
  v5[2] = sub_29DFE9648;
  v5[3] = &unk_2A24B6FA0;
  v4 = _Block_copy(v5);

  [v3 savePeriodNotYetStartedWithCompletion_];
  _Block_release(v4);
}

void sub_29DFD8800(void *a1)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v25 = a1;
    v9 = v8;
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136446210;
    v11 = sub_29E2C4AE4();
    v13 = sub_29DFAA104(v11, v12, &v26);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Presenting add new menstrual cycle", v9, 0xCu);
    sub_29DE93B3C(v10);
    MEMORY[0x29ED82140](v10, -1, -1);
    v14 = v9;
    a1 = v25;
    MEMORY[0x29ED82140](v14, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v15 = *MEMORY[0x29EDC3288];
  v16 = objc_allocWithZone(MEMORY[0x29EDBAA50]);
  v17 = v15;
  v18 = [v16 init];
  v19 = objc_allocWithZone(type metadata accessor for CalendarViewController());
  v20 = a1;
  v21 = sub_29DF55F94(v20, v18, v17);

  v22 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [v22 setModalPresentationStyle_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    [Strong presentViewController:v22 animated:1 completion:0];
  }
}

void sub_29DFD8AB0(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v71 = a1;
  v3 = *v2;
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v69 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C3384();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = v60 - v11;
  v13 = sub_29E2C0514();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v17 = sub_29E2C0504();
  v18 = sub_29E2C3A34();
  v19 = os_log_type_enabled(v17, v18);
  v70 = v3;
  v73 = v6;
  v66 = v9;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v68 = v13;
    v21 = v20;
    v22 = swift_slowAlloc();
    aBlock = v22;
    *v21 = 136446210;
    v23 = sub_29E2C4AE4();
    v25 = v7;
    v26 = sub_29DFAA104(v23, v24, &aBlock);

    *(v21 + 4) = v26;
    v7 = v25;
    _os_log_impl(&dword_29DE74000, v17, v18, "[%{public}s] Presenting Turn Off Predictions alert", v21, 0xCu);
    sub_29DE93B3C(v22);
    v27 = v22;
    v6 = v73;
    MEMORY[0x29ED82140](v27, -1, -1);
    v9 = v66;
    MEMORY[0x29ED82140](v21, -1, -1);

    (*(v14 + 8))(v16, v68);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  sub_29E2C3314();
  v28 = v7;
  v29 = v7 + 16;
  v30 = *(v7 + 16);
  v30(v9, v12, v6);
  v31 = v12;
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v32 = qword_2A1A67F80;
  v33 = qword_2A1A67F80;
  sub_29E2BCC74();
  v34 = v33;
  v64 = sub_29E2C3414();
  v35 = v9;
  v36 = v28 + 8;
  v37 = *(v28 + 8);
  v38 = v73;
  v37(v31, v73);
  v60[1] = v36;
  sub_29E2C3314();
  v30(v35, v31, v38);
  sub_29E2BCC74();
  v62 = v32;
  sub_29E2C3414();
  v67 = v30;
  v68 = v29;
  v37(v31, v38);
  v61 = v37;
  v39 = sub_29E2C33A4();

  v40 = sub_29E2C33A4();

  v63 = [objc_opt_self() alertControllerWithTitle:v39 message:v40 preferredStyle:1];

  sub_29E2C3314();
  v41 = v31;
  v42 = v31;
  v43 = v73;
  v67(v35, v41, v73);
  sub_29E2BCC74();
  sub_29E2C3414();
  v37(v42, v43);
  v44 = swift_allocObject();
  v45 = v71;
  v44[2] = v72;
  v44[3] = v45;
  v46 = v65;
  v47 = v70;
  v44[4] = v65;
  v44[5] = v47;

  v48 = sub_29E2C33A4();

  v78 = sub_29DFDA48C;
  v79 = v44;
  aBlock = MEMORY[0x29EDCA5F8];
  v75 = 1107296256;
  v76 = sub_29DF6E81C;
  v77 = &unk_2A24B6FF0;
  v49 = _Block_copy(&aBlock);

  v50 = objc_opt_self();
  v51 = [v50 actionWithTitle:v48 style:0 handler:v49];
  _Block_release(v49);

  v52 = v63;
  v64 = v51;
  [v63 addAction_];
  sub_29E2C3314();
  v67(v66, v42, v43);
  sub_29E2BCC74();
  sub_29E2C3414();
  v61(v42, v43);
  v53 = swift_allocObject();
  v54 = v70;
  v53[2] = v71;
  v53[3] = v46;
  v53[4] = v54;

  v55 = sub_29E2C33A4();

  v78 = sub_29DFDA498;
  v79 = v53;
  aBlock = MEMORY[0x29EDCA5F8];
  v75 = 1107296256;
  v76 = sub_29DF6E81C;
  v77 = &unk_2A24B7040;
  v56 = _Block_copy(&aBlock);

  v57 = [v50 actionWithTitle:v55 style:1 handler:v56];
  _Block_release(v56);

  [v52 addAction_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v59 = Strong;
    [Strong presentViewController:v52 animated:1 completion:0];
  }
}

uint64_t sub_29DFD9314(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v31 = a3;
  v32 = a5;
  sub_29DFDA4A4();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2C0514();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v13 = sub_29E2C0504();
  v14 = sub_29E2C3A34();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v9;
    v17 = v16;
    v33 = v16;
    *v15 = 136446210;
    v18 = sub_29E2C4AE4();
    v30 = a2;
    v20 = sub_29DFAA104(v18, v19, &v33);
    a2 = v30;

    *(v15 + 4) = v20;
    _os_log_impl(&dword_29DE74000, v13, v14, "[%{public}s] Should turn off predictions", v15, 0xCu);
    sub_29DE93B3C(v17);
    MEMORY[0x29ED82140](v17, -1, -1);
    MEMORY[0x29ED82140](v15, -1, -1);

    (*(v10 + 8))(v12, v29);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v21 = sub_29E2C3734();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  sub_29E2C3714();

  v22 = sub_29E2C3704();
  v23 = swift_allocObject();
  v24 = MEMORY[0x29EDCA390];
  v23[2] = v22;
  v23[3] = v24;
  v25 = v32;
  v23[4] = a2;
  v23[5] = v25;
  sub_29E13C63C(0, 0, v8, &unk_29E2D7E98, v23);

  return v31(v26);
}

uint64_t sub_29DFD9608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_29E2C0514();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_29DFDA604();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  sub_29E2C3714();
  v5[12] = sub_29E2C3704();
  v9 = sub_29E2C36A4();
  v5[13] = v9;
  v5[14] = v8;

  return MEMORY[0x2A1C73D48](sub_29DFD9764, v9, v8);
}

uint64_t sub_29DFD9764()
{
  v0[15] = *(v0[3] + 32);
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  sub_29E2C3C74();
  v1 = swift_task_alloc();
  v0[16] = v1;
  v2 = sub_29DFDA654();
  v0[17] = v2;
  *v1 = v0;
  v1[1] = sub_29DFD9840;
  v3 = v0[11];

  return MEMORY[0x2A1C63C38](0, v3, v2);
}

uint64_t sub_29DFD9840()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v2[18] = v0;

  v6 = *(v4 + 8);
  v2[19] = v6;
  v2[20] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[14];
  v8 = v2[13];
  if (v0)
  {
    v9 = sub_29DFD9CD4;
  }

  else
  {
    v9 = sub_29DFD99EC;
  }

  return MEMORY[0x2A1C73D48](v9, v8, v7);
}

uint64_t sub_29DFD99EC()
{
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  sub_29E2C3C74();
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_29DFD9AB0;
  v2 = v0[17];
  v3 = v0[10];

  return MEMORY[0x2A1C63C38](0, v3, v2);
}

uint64_t sub_29DFD9AB0()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 64);
  *(*v1 + 176) = v0;

  v3(v4, v5);
  v6 = *(v2 + 112);
  v7 = *(v2 + 104);
  if (v0)
  {
    v8 = sub_29DFD9F0C;
  }

  else
  {
    v8 = sub_29DFD9C58;
  }

  return MEMORY[0x2A1C73D48](v8, v7, v6);
}

uint64_t sub_29DFD9C58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29DFD9CD4()
{
  v23 = v0;
  v1 = v0[18];

  sub_29E2C04B4();
  v2 = v1;
  v3 = sub_29E2C0504();
  v4 = sub_29E2C3A14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v21 = v0[7];
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136446466;
    v9 = sub_29E2C4AE4();
    v11 = sub_29DFAA104(v9, v10, &v22);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v0[2] = v1;
    v12 = v1;
    sub_29DE96670();
    v13 = sub_29E2C3424();
    v15 = sub_29DFAA104(v13, v14, &v22);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_29DE74000, v3, v4, "[%{public}s] Error turning off projections: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v8, -1, -1);
    MEMORY[0x29ED82140](v7, -1, -1);

    (*(v5 + 8))(v21, v6);
  }

  else
  {
    v17 = v0[6];
    v16 = v0[7];
    v18 = v0[5];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_29DFD9F0C()
{
  v23 = v0;
  v1 = v0[22];

  sub_29E2C04B4();
  v2 = v1;
  v3 = sub_29E2C0504();
  v4 = sub_29E2C3A14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v21 = v0[7];
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136446466;
    v9 = sub_29E2C4AE4();
    v11 = sub_29DFAA104(v9, v10, &v22);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v0[2] = v1;
    v12 = v1;
    sub_29DE96670();
    v13 = sub_29E2C3424();
    v15 = sub_29DFAA104(v13, v14, &v22);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_29DE74000, v3, v4, "[%{public}s] Error turning off projections: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v8, -1, -1);
    MEMORY[0x29ED82140](v7, -1, -1);

    (*(v5 + 8))(v21, v6);
  }

  else
  {
    v17 = v0[6];
    v16 = v0[7];
    v18 = v0[5];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_29DFDA144(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v9 = sub_29E2C0504();
  v10 = sub_29E2C3A34();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = a3;
    v12 = a2;
    v13 = v11;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    v15 = sub_29E2C4AE4();
    v17 = sub_29DFAA104(v15, v16, &v22);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Dismissed turning off predictions", v13, 0xCu);
    sub_29DE93B3C(v14);
    MEMORY[0x29ED82140](v14, -1, -1);
    v18 = v13;
    a2 = v12;
    MEMORY[0x29ED82140](v18, -1, -1);
  }

  v19 = (*(v6 + 8))(v8, v5);
  return a2(v19);
}

uint64_t sub_29DFDA310()
{
  MEMORY[0x29ED82270](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_29DFDA37C(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  sub_29DE966D4(a1, a1[3]);
  v4 = sub_29E2BF484();
  v5 = [objc_allocWithZone(MEMORY[0x29EDC3410]) initWithHealthStore_];

  *(v1 + 24) = v5;
  v6 = *MEMORY[0x29EDBA708];
  v7 = sub_29E2BF484();
  v8 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:v6 healthStore:v7];

  *(v2 + 32) = v8;
  sub_29DE93B3C(a1);
  return v2;
}

uint64_t sub_29DFDA474(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29DFDA4A4()
{
  if (!qword_2A1A5E2F0)
  {
    sub_29E2C3734();
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E2F0);
    }
  }
}

uint64_t sub_29DFDA4FC(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2A1C733A0](v1, 48, 7);
}

uint64_t sub_29DFDA544(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29DE9657C;

  return sub_29DFD9608(a1, v4, v5, v7, v6);
}

void sub_29DFDA604()
{
  if (!qword_2A181A588)
  {
    v0 = sub_29E2C3CA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A588);
    }
  }
}

unint64_t sub_29DFDA654()
{
  result = qword_2A181A590;
  if (!qword_2A181A590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A181A590);
  }

  return result;
}

uint64_t sub_29DFDA6E8(SEL *a1)
{
  v3 = v1;
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v10 = MEMORY[0x2A1C7C4A8](v9).n128_u64[0];
  v12 = &v21[-v11];
  v13 = [v3 *a1];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  sub_29E2C3314();
  (*(v6 + 16))(v8, v12, v5);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v15 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v6 + 8))(v12, v5);
  sub_29DEB19DC();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29E2CAB20;
  v17 = [v14 integerValue];
  v18 = MEMORY[0x29EDC9C10];
  *(v16 + 56) = MEMORY[0x29EDC9BA8];
  *(v16 + 64) = v18;
  *(v16 + 32) = v17;
  v19 = sub_29E2C33B4();

  return v19;
}

id sub_29DFDA98C(SEL *a1, SEL *a2)
{
  v5 = v2;
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C3384();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x2A1C7C4A8](v11).n128_u64[0];
  v14 = v34 - v13;
  result = [v5 *a1];
  if (result)
  {
    v16 = result;
    v17 = [v5 *a2];
    if (v17)
    {
      v18 = v17;
      [v17 doubleValue];
      v20 = v19;
      [v16 doubleValue];
      v22 = ceil((v20 - v21) * 0.5);
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v22 > -9.22337204e18)
      {
        if (v22 < 9.22337204e18)
        {
          v39 = v18;
          v40 = v16;
          v37 = v22;
          sub_29E2C3314();
          v38 = *(v8 + 16);
          v38(v10, v14, v7);
          if (qword_2A1A62788 == -1)
          {
LABEL_7:
            v23 = qword_2A1A67F80;
            sub_29E2BCC74();
            v24 = v23;
            sub_29E2C3414();
            v25 = *(v8 + 8);
            v34[1] = v8 + 8;
            v36 = v25;
            v25(v14, v7);
            sub_29DEB19DC();
            v26 = swift_allocObject();
            v35 = xmmword_29E2CAB20;
            v27 = MEMORY[0x29EDC9BA8];
            *(v26 + 16) = xmmword_29E2CAB20;
            v28 = MEMORY[0x29EDC9C10];
            *(v26 + 56) = v27;
            *(v26 + 64) = v28;
            *(v26 + 32) = v37;
            v29 = sub_29E2C33B4();
            v37 = v30;

            sub_29E2C3314();
            v38(v10, v14, v7);
            sub_29E2BCC74();
            sub_29E2C3414();
            v36(v14, v7);
            v31 = swift_allocObject();
            *(v31 + 16) = v35;
            *(v31 + 56) = MEMORY[0x29EDC99B0];
            *(v31 + 64) = sub_29DEB1A44();
            v32 = v37;
            *(v31 + 32) = v29;
            *(v31 + 40) = v32;
            v33 = sub_29E2C3404();

            return v33;
          }

LABEL_13:
          swift_once();
          goto LABEL_7;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      __break(1u);
      goto LABEL_12;
    }

    return 0;
  }

  return result;
}

uint64_t sub_29DFDADE0(void *a1, uint64_t a2, SEL *a3)
{
  v6 = sub_29E2BCBB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2C31A4();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x2A1C7C4A8](v10).n128_u64[0];
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v3 *a3];
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  [v15 integerValue];

  sub_29E2C30D4();
  sub_29E2C3194();
  v17 = sub_29E2BCB04();
  (*(v7 + 8))(v9, v6);
  v18 = [a1 stringFromDate_];

  v19 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  (*(v11 + 8))(v14, v10);
  return v19;
}

uint64_t sub_29DFDAFF4(uint64_t a1)
{
  v2 = v1;
  v56 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_29E2C0514();
  v49 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v51 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB2104();
  v55 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v54 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v46 - v8;
  sub_29DEB216C();
  v53 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2C31A4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E2BCBB4();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = MEMORY[0x2A1C7C4A8](v20).n128_u64[0];
  v23 = &v46 - v22;
  v24 = [v2 firstMenstruationStartDayIndex];
  if (!v24)
  {
    v36 = v49;
    v37 = v51;
    sub_29E2C04B4();
    v38 = sub_29E2C0504();
    v39 = sub_29E2C3A14();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v3;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v57 = v42;
      *v41 = 136446210;
      v43 = sub_29E2C4AE4();
      v45 = sub_29DFAA104(v43, v44, &v57);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_29DE74000, v38, v39, "[%{public}s] Tried to format pdf with statistics containing nil firstMenstruationStartDayIndex", v41, 0xCu);
      sub_29DE93B3C(v42);
      MEMORY[0x29ED82140](v42, -1, -1);
      MEMORY[0x29ED82140](v41, -1, -1);

      (*(v36 + 8))(v37, v40);
    }

    else
    {

      (*(v36 + 8))(v37, v3);
    }

    return 0;
  }

  v25 = v24;
  [v24 integerValue];

  sub_29E2C30D4();
  sub_29E2C3194();
  (*(v13 + 8))(v15, v12);
  sub_29E2BCBA4();
  sub_29DEAAE18();
  result = sub_29E2C32B4();
  if (result)
  {
    v27 = v17[2];
    v48 = v23;
    v27(v9, v23, v16);
    v28 = v55;
    v29 = &v9[*(v55 + 48)];
    v47 = v19;
    v27(v29, v19, v16);
    v30 = v54;
    sub_29DFD4F84(v9, v54);
    v31 = *(v28 + 48);
    v32 = v17[4];
    v33 = v52;
    v32(v52, v30, v16);
    v34 = v17[1];
    v34(v30 + v31, v16);
    sub_29DEB2268(v9, v30);
    v32((v33 + *(v53 + 36)), v30 + *(v28 + 48), v16);
    v34(v30, v16);
    v35 = sub_29E1BA5EC();
    sub_29DFDB570(v33);
    v34(v47, v16);
    v34(v48, v16);
    return v35;
  }

  __break(1u);
  return result;
}

uint64_t sub_29DFDB570(uint64_t a1)
{
  sub_29DEB216C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_29DFDB5CC()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingConfirmationViewController____lazy_storage___primaryButton;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingConfirmationViewController____lazy_storage___primaryButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingConfirmationViewController____lazy_storage___primaryButton);
  }

  else
  {
    v4 = sub_29DFDB630(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29DFDB630(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = v17 - v8;
  v10 = [objc_opt_self() boldButton];
  [v10 addTarget:a1 action:sel_hxui_primaryFooterButtonTapped forControlEvents:64];
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  v12 = sub_29E2C33A4();

  [v10 setTitle:v12 forState:0];

  v13 = qword_2A1A60ED8;
  v14 = v10;
  if (v13 != -1)
  {
    swift_once();
  }

  v17[1] = qword_2A1A67E58;
  v17[2] = unk_2A1A67E60;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2ECF90);
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0x616D7269666E6F43, 0xEC0000006E6F6974);
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0x427972616D697250, 0xED00006E6F747475);
  v15 = sub_29E2C33A4();

  [v14 setAccessibilityIdentifier_];

  return v14;
}

id sub_29DFDB998(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v33 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_29E2C3384();
  v32 = *(v35 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v35);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v29 - v8;
  v10 = sub_29E2BFC14();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E2BE534();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingConfirmationViewController_onboardingStep] = 13;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingConfirmationViewController____lazy_storage___primaryButton] = 0;
  v18 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingConfirmationViewController_animationView;
  if (qword_2A1816FC8 != -1)
  {
    swift_once();
  }

  v19 = sub_29DEA8E9C(v14, static MicaAnimationView.Animation.pregnancySetup);
  (*(v15 + 16))(v17, v19, v14);
  (*(v11 + 104))(v13, *MEMORY[0x29EDC2C80], v10);
  v20 = objc_allocWithZone(sub_29E2BE554());
  *&v2[v18] = sub_29E2BE544();
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingConfirmationViewController_coordinator] = v36;

  sub_29E2C3314();
  v21 = v32;
  v30 = *(v32 + 16);
  v30(v7, v9, v35);
  v31 = v2;
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v29[1] = "EDING_ALERT_MESSAGE";
  v22 = qword_2A1A67F80;
  sub_29E2BCC74();
  v23 = v22;
  sub_29E2C3414();
  v32 = *(v21 + 8);
  v24 = v35;
  (v32)(v9, v35);
  v25 = sub_29E2C33A4();

  sub_29E2C3314();
  v30(v7, v9, v24);
  sub_29E2BCC74();
  sub_29E2C3414();
  (v32)(v9, v24);
  v26 = sub_29E2C33A4();

  v37.receiver = v31;
  v37.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v37, sel_initWithTitle_detailText_symbolName_contentLayout_, v25, v26, 0, 1);

  return v27;
}

void sub_29DFDBEA8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v8 = MEMORY[0x2A1C7C4A8](v7).n128_u64[0];
  v10 = &v19[-v9];
  v20.receiver = v0;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_viewDidLoad, v8);
  v11 = [v0 navigationController];
  if (v11)
  {
    v12 = v11;
    [v11 setNavigationBarHidden_];
  }

  [v0 setModalInPresentation_];
  sub_29DFDC1D8(*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45PregnancyOnboardingConfirmationViewController_animationView]);
  v13 = [v0 buttonTray];
  v14 = sub_29DFDB5CC();
  [v13 addButton_];

  v15 = [v0 navigationItem];
  [v15 setHidesBackButton_];

  v16 = [v0 buttonTray];
  sub_29E2C3314();
  (*(v4 + 16))(v6, v10, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v17 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v4 + 8))(v10, v3);
  v18 = sub_29E2C33A4();

  [v16 setCaptionText_];
}

void sub_29DFDC1D8(void *a1)
{
  v3 = [v1 contentView];
  [v3 addSubview_];

  v4 = [v1 contentView];
  v5 = objc_opt_self();
  v6 = [v5 systemBackgroundColor];
  [v4 setBackgroundColor_];

  v7 = [v1 contentView];
  [v7 setClipsToBounds_];

  v8 = [v5 systemBackgroundColor];
  [a1 setBackgroundColor_];

  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = objc_opt_self();
  sub_29DE99B54();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29E2CE070;
  v11 = [a1 topAnchor];
  v12 = [v1 contentView];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v10 + 32) = v14;
  v15 = [a1 leadingAnchor];
  v16 = [v1 contentView];
  v17 = [v16 leadingAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v10 + 40) = v18;
  v19 = [a1 bottomAnchor];
  v20 = [v1 contentView];
  v21 = [v20 bottomAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v10 + 48) = v22;
  v23 = [a1 trailingAnchor];
  v24 = [v1 contentView];
  v25 = [v24 trailingAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v10 + 56) = v26;
  sub_29DEB8834();
  v27 = sub_29E2C3604();

  [v9 activateConstraints_];
}

uint64_t sub_29DFDC888(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v191 = a5;
  v190 = a4;
  v189 = a3;
  v188 = a2;
  sub_29DFDDF2C(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v183 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v211 = &v152 - v8;
  v182 = sub_29E2BCA04();
  v9 = *(v182 - 8);
  MEMORY[0x2A1C7C4A8](v182);
  v181 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_29E2BCA54();
  v11 = *(v180 - 8);
  MEMORY[0x2A1C7C4A8](v180);
  v179 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v178 = &v152 - v14;
  v15 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v210 = &v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_29E2C3384();
  v17 = *(v209 - 8);
  MEMORY[0x2A1C7C4A8](v209);
  v208 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v171 = &v152 - v20;
  sub_29DEC6594();
  v177 = v21;
  MEMORY[0x2A1C7C4A8](v21);
  v176 = &v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v175 = &v152 - v24;
  sub_29DEFCC2C();
  v174 = v25;
  MEMORY[0x2A1C7C4A8](v25);
  v173 = &v152 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29E2C31A4();
  v28 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27);
  v215 = &v152 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30);
  v219 = &v152 - v31;
  v221 = sub_29E2BCEA4();
  v32 = *(v221 - 8);
  MEMORY[0x2A1C7C4A8](v221);
  v187 = &v152 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v34);
  v220 = &v152 - v35;
  v172 = sub_29E2BC5F4();
  v36 = *(v172 - 8);
  MEMORY[0x2A1C7C4A8](v172);
  v212 = &v152 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_29E2BCBB4();
  v38 = *(v222 - 8);
  MEMORY[0x2A1C7C4A8](v222);
  v186 = &v152 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v40);
  v185 = &v152 - v41;
  MEMORY[0x2A1C7C4A8](v42);
  v214 = &v152 - v43;
  MEMORY[0x2A1C7C4A8](v44);
  v218 = &v152 - v45;
  MEMORY[0x2A1C7C4A8](v46);
  v224 = &v152 - v47;
  MEMORY[0x2A1C7C4A8](v48);
  v50 = &v152 - v49;
  MEMORY[0x2A1C7C4A8](v51);
  v213 = &v152 - v53;
  v184 = v50;
  if (v52 >> 62)
  {
    goto LABEL_39;
  }

  result = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (result >= 1)
    {
      v165 = v27;
      v170 = v52 & 0xC000000000000001;
      v162 = "CYCLE_HEADER_FORMAT";
      v161 = "DING_REVIEW_CONFIRMATION_FOOTER";
      v160 = "MINDER_CANCEL_PROMPT";
      v169 = (v38 + 32);
      v217 = (v38 + 8);
      v193 = (v38 + 16);
      v168 = *MEMORY[0x29EDB9CC0];
      v167 = *MEMORY[0x29EDB9CD0];
      v207 = v32 + 2;
      v192 = (v28 + 16);
      v159 = (v28 + 32);
      v206 = (v28 + 8);
      v205 = (v17 + 16);
      v204 = (v17 + 8);
      v158 = (v9 + 8);
      v157 = (v11 + 8);
      v156 = (v28 + 56);
      v155 = (v28 + 48);
      v55 = 0;
      v154 = (v32 + 1);
      v153 = (v36 + 8);
      v223 = MEMORY[0x29EDCA198];
      v56 = &off_29F363000;
      v166 = xmmword_29E2CD7A0;
      v152 = xmmword_29E2CAB20;
      v164 = v52;
      v57 = v222;
      v58 = v213;
      v163 = result;
      while (1)
      {
        v59 = v170 ? MEMORY[0x29ED80D70](v55) : *(v52 + 8 * v55 + 32);
        v60 = v188;
        v61 = v59;
        v62 = *(v56 + 3584);
        v225 = v61;
        v63 = [v61 v62];
        sub_29E2BCB44();

        sub_29DFDDF90(&qword_2A1A616E0, MEMORY[0x29EDB9BC8]);
        v64 = sub_29E2C3294();
        v203 = v55;
        if (v64)
        {
          (*v217)(v50, v57);
          (*v193)(v58, v60, v57);
        }

        else
        {
          (*v169)(v58, v50, v57);
        }

        sub_29DFDDF2C(0, &qword_2A1A61CF0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
        v65 = sub_29E2BCE84();
        v66 = *(v65 - 8);
        v67 = *(v66 + 72);
        v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v69 = swift_allocObject();
        *(v69 + 16) = v166;
        v70 = v69 + v68;
        v71 = *(v66 + 104);
        v71(v70, v168, v65);
        v71(v70 + v67, v167, v65);
        sub_29DE924A4(v69);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v72 = v212;
        sub_29E2BCD14();

        v73 = v223;
        if (*(v223 + 16))
        {
          v74 = sub_29E18464C(v72);
          v75 = v191;
          v36 = v219;
          v76 = v193;
          if (v77)
          {
            v202 = *(*(v73 + 56) + 8 * v74);
            sub_29E2BF404();
          }

          else
          {
            v202 = MEMORY[0x29EDCA190];
          }

          v78 = v222;
        }

        else
        {
          v202 = MEMORY[0x29EDCA190];
          v75 = v191;
          v36 = v219;
          v78 = v222;
          v76 = v193;
        }

        v79 = v225;
        v216 = [v225 hkmc_cycleFactor];
        v17 = *v76;
        (*v76)(v224, v213, v78);
        v17(v218, v60, v78);
        v80 = *v207;
        (*v207)(v220, v189, v221);
        v81 = [v79 *(v56 + 3584)];
        v82 = v185;
        sub_29E2BCB44();

        if (sub_29E2C3294())
        {
          (*v217)(v82, v78);
          v17(v214, v75, v78);
        }

        else
        {
          (*v169)(v214, v82, v78);
        }

        v38 = v78;
        v83 = [v225 startDate];
        v84 = v186;
        sub_29E2BCB44();

        v85 = v187;
        v28 = v220;
        v86 = v221;
        v32 = v207;
        v80(v187, v220, v221);
        sub_29E2C3144();
        v17(v84, v224, v38);
        v80(v85, v28, v86);
        v9 = v215;
        sub_29E2C3144();
        sub_29DFDDF90(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
        v27 = v165;
        v11 = v165;
        if ((sub_29E2C32B4() & 1) == 0)
        {
          break;
        }

        v87 = *v192;
        v88 = v175;
        (*v192)(v175, v36, v27);
        v89 = v177;
        v90 = v88 + *(v177 + 48);
        v196 = v87;
        v87(v90, v9, v27);
        v91 = v176;
        sub_29DEC6FE8(v88, v176);
        v92 = *(v89 + 48);
        v93 = *v159;
        v94 = v27;
        v95 = v173;
        (*v159)(v173, v91, v94);
        v96 = *v206;
        (*v206)(v91 + v92, v94);
        sub_29DEC704C(v88, v91);
        v93(&v95[*(v174 + 36)], v91 + *(v89 + 48), v94);
        v96(v91, v94);
        MEMORY[0x29ED80290](v95);
        v98 = v97;
        v99 = v171;
        sub_29E2C3314();
        v100 = v209;
        v200 = *v205;
        v200(v208, v99, v209);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v201 = v96;
        v101 = qword_2A1A67F80;
        sub_29E2BCC74();
        v102 = v101;
        sub_29E2C3414();
        v197 = *v204;
        v197(v99, v100);
        sub_29DFDDF2C(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
        v103 = swift_allocObject();
        *(v103 + 16) = v152;
        *(v103 + 56) = MEMORY[0x29EDC9BA8];
        *(v103 + 64) = MEMORY[0x29EDC9C10];
        *(v103 + 32) = v98;
        v104 = sub_29E2C33B4();
        v106 = v105;

        v226 = v104;
        v227 = v106;
        sub_29DE9DE68();
        v107 = sub_29E2C4354();
        v109 = v108;

        if (v216 == 2)
        {

          v110 = objc_opt_self();
          v111 = sub_29E2BCB04();
          v112 = [v110 gestationalAgeStringOnDate:v111 pregnancySample:v225];

          v198 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
          v199 = v113;
        }

        else
        {
          v198 = v107;
          v199 = v109;
        }

        v114 = v179;
        MEMORY[0x29ED78A30]();
        v115 = v181;
        sub_29E2BC9E4();
        v116 = v178;
        sub_29E2BC9A4();
        (*v158)(v115, v182);
        v117 = *v157;
        v118 = v180;
        (*v157)(v114, v180);
        sub_29DFDDF90(&qword_2A1817C78, MEMORY[0x29EDB9BB0]);
        sub_29E2BCB94();
        v117(v116, v118);
        v119 = v226;
        v195 = v227;
        if (sub_29E2BCB34())
        {
          v120 = 1;
          v121 = v211;
        }

        else
        {
          v121 = v211;
          v196(v211, v215, v94);
          v120 = 0;
        }

        v196 = v119;
        (*v156)(v121, v120, 1, v94);
        v194 = sub_29E2C3164();
        v122 = v183;
        sub_29DE962B4(v121, v183);
        v123 = (*v155)(v122, 1, v94);
        if (v123 == 1)
        {
          sub_29DE96334(v122);
          v124 = 0;
          v125 = v94;
          v126 = v201;
        }

        else
        {
          v124 = sub_29E2C3164();
          v126 = v201;
          v201(v122, v94);
          v125 = v94;
        }

        sub_29E2C3314();
        v127 = v209;
        v200(v208, v99, v209);
        sub_29E2BCC74();
        v128 = sub_29E2C3414();
        v130 = v129;
        v197(v99, v127);
        v131 = v220;
        v201 = sub_29DFD3F84(v194, v124, v123 == 1, v128, v130, v220);
        v200 = v132;

        v133 = sub_29E08C870(v216);
        v135 = v134;

        sub_29DE96334(v211);
        v126(v215, v125);
        v126(v219, v125);
        v136 = *v217;
        v137 = v222;
        (*v217)(v214, v222);
        (*v154)(v131, v221);
        v136(v218, v137);
        v136(v224, v137);
        v138 = v202;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_29E1445A0(0, *(v138 + 2) + 1, 1, v138);
        }

        v139 = v163;
        v140 = v196;
        v142 = *(v138 + 2);
        v141 = *(v138 + 3);
        v143 = v138;
        if (v142 >= v141 >> 1)
        {
          v143 = sub_29E1445A0((v141 > 1), v142 + 1, 1, v138);
        }

        v55 = v203 + 1;
        *(v143 + 2) = v142 + 1;
        v144 = &v143[64 * v142];
        v145 = v195;
        *(v144 + 4) = v140;
        *(v144 + 5) = v145;
        v146 = v200;
        *(v144 + 6) = v201;
        *(v144 + 7) = v146;
        v147 = v199;
        *(v144 + 8) = v198;
        *(v144 + 9) = v147;
        *(v144 + 10) = v133;
        *(v144 + 11) = v135;
        v148 = v223;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v226 = v148;
        v150 = v212;
        sub_29E008CB0(v143, v212, isUniquelyReferenced_nonNull_native);

        v223 = v226;
        (*v153)(v150, v172);
        v58 = v213;
        v57 = v222;
        v136(v213, v222);
        v52 = v164;
        v50 = v184;
        v56 = 0x1FA937000;
        if (v139 == v55)
        {
          return v223;
        }
      }

      __break(1u);
LABEL_39:
      v151 = v52;
      result = sub_29E2C4484();
      v52 = v151;
      v50 = v184;
      if (!result)
      {
        return MEMORY[0x29EDCA198];
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void sub_29DFDDF2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29DFDDF90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DFDDFD8(void *a1, char a2)
{
  v3 = v2;
  v36[1] = *MEMORY[0x29EDCA608];
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF1482C();
  swift_allocObject();
  *(v2 + 32) = sub_29E2C10A4();
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0xD000000000000023;
  *(v2 + 64) = 0x800000029E2F7D50;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v36[0] = 0;
  v10 = a1;
  v11 = [v10 allValuesWithError_];
  v12 = v36[0];
  if (v11)
  {
    v13 = v11;
    v14 = sub_29E2C3214();
    v15 = v12;

    v16 = sub_29DFDE394(v14);

    if (!v16)
    {
      v16 = sub_29E184F40(MEMORY[0x29EDCA190]);
    }

    *(v3 + 72) = v16;
  }

  else
  {
    v17 = v36[0];
    v18 = sub_29E2BC7E4();

    swift_willThrow();
    *(v3 + 72) = sub_29E184F40(MEMORY[0x29EDCA190]);
    sub_29E2C04B4();
    v19 = v18;
    v20 = sub_29E2C0504();
    v21 = sub_29E2C3A14();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36[0] = v33;
      *v22 = 136446466;
      v23 = sub_29E2C4AE4();
      v25 = sub_29DFAA104(v23, v24, v36);
      v34 = v7;
      v26 = v25;

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      v35 = v18;
      v27 = v18;
      sub_29DE96670();
      v28 = sub_29E2C3424();
      v30 = sub_29DFAA104(v28, v29, v36);

      *(v22 + 14) = v30;
      _os_log_impl(&dword_29DE74000, v20, v21, "[%{public}s] Failed to retrieve settings: %s", v22, 0x16u);
      v31 = v33;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v31, -1, -1);
      MEMORY[0x29ED82140](v22, -1, -1);

      (*(v34 + 8))(v9, v6);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }

  return v3;
}

unint64_t sub_29DFDE394(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_29DFE1020();
    v2 = sub_29E2C47B4();
  }

  else
  {
    v2 = MEMORY[0x29EDCA198];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_29E2BF404();
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_29DEA6E90(*(a1 + 56) + 32 * v11, v24);
        *&v23 = v13;
        *(&v23 + 1) = v14;
        v21[2] = v23;
        v22[0] = v24[0];
        v22[1] = v24[1];
        v15 = v23;
        sub_29DEA049C(v22, v21);
        sub_29E2BF404();
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_29DECF000(v15, *(&v15 + 1));
        if (v16)
        {
          *(v2[6] + 16 * result) = v15;
          v9 = result;

          *(v2[7] + v9) = v20 & 1;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          *(v2[7] + result) = v20 & 1;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_29DFDE5E0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  sub_29DFDA4A4();
  MEMORY[0x2A1C7C4A8]();
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29E2C0514();
  v11 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8]();
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  sub_29E2BF404();
  v14 = sub_29E2C0504();
  v15 = sub_29E2C3A34();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v39 = v10;
    v17 = v16;
    v38 = swift_slowAlloc();
    v43[0] = v38;
    *v17 = 136446722;
    v18 = sub_29E2C4AE4();
    v40 = a1;
    v20 = sub_29DFAA104(v18, v19, v43);
    v37 = v8;
    v21 = a3;
    v22 = v20;

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    if (v21)
    {
      v23 = 20302;
    }

    else
    {
      v23 = 5457241;
    }

    if (v21)
    {
      v24 = 0xE200000000000000;
    }

    else
    {
      v24 = 0xE300000000000000;
    }

    v25 = sub_29DFAA104(v23, v24, v43);
    a1 = v40;

    *(v17 + 14) = v25;
    a3 = v21;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_29DFAA104(a1, a2, v43);
    v26 = v15;
    v27 = v37;
    _os_log_impl(&dword_29DE74000, v14, v26, "[%{public}s] Set hidden = %s for chart sample type identifier: %s", v17, 0x20u);
    v28 = v38;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v28, -1, -1);
    v29 = v17;
    v10 = v39;
    MEMORY[0x29ED82140](v29, -1, -1);

    (*(v11 + 8))(v13, v41);
  }

  else
  {

    (*(v11 + 8))(v13, v41);
    v27 = v8;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = v4[9];
  v4[9] = 0x8000000000000000;
  sub_29E008804((a3 & 1) == 0, a1, a2, isUniquelyReferenced_nonNull_native);
  v4[9] = v42;
  swift_endAccess();
  v31 = sub_29E2C3734();
  (*(*(v31 - 8) + 56))(v10, 1, 1, v31);
  v32 = v4[2];
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v32;
  *(v33 + 40) = a3 & 1;
  *(v33 + 48) = a1;
  *(v33 + 56) = a2;
  *(v33 + 64) = v4;
  *(v33 + 72) = v27;
  sub_29E2BF404();
  v34 = v32;

  sub_29E13C63C(0, 0, v10, &unk_29E2D7F60, v33);

  sub_29DF1482C();
  sub_29DFE13D0();
  return sub_29E2C11A4();
}

uint64_t sub_29DFDE9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = a8;
  *(v8 + 184) = v12;
  *(v8 + 160) = a6;
  *(v8 + 168) = a7;
  *(v8 + 240) = a5;
  *(v8 + 152) = a4;
  v9 = sub_29E2C0514();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29DFDEAC8, 0, 0);
}

uint64_t sub_29DFDEAC8()
{
  v1 = *(v0 + 152);
  v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  *(v0 + 216) = v2;
  v3 = sub_29E2C33A4();
  *(v0 + 224) = v3;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_29DFDEC24;
  v4 = swift_continuation_init();
  sub_29DFE1154();
  *(v0 + 136) = v5;
  *(v0 + 80) = MEMORY[0x29EDCA5F8];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_29E27F6E4;
  *(v0 + 104) = &unk_2A24B71D0;
  *(v0 + 112) = v4;
  [v1 setNumber:v2 forKey:v3 completion:v0 + 80];

  return MEMORY[0x2A1C73CC0](v0 + 16);
}

uint64_t sub_29DFDEC24()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_29DFDEDE8;
  }

  else
  {
    v2 = sub_29DFDED34;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29DFDED34()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);

  v3 = *(v2 + 40);
  if (v3)
  {
    v4 = *(v0 + 168);
    v5 = *(v0 + 160);

    v3(v5, v4);
    sub_29DE8EF50(v3);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_29DFDEDE8()
{
  v28 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  swift_willThrow();

  sub_29E2C04B4();
  sub_29E2BF404();
  v4 = v1;
  v5 = sub_29E2C0504();
  v6 = sub_29E2C3A14();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 232);
    v24 = *(v0 + 200);
    v25 = *(v0 + 192);
    v26 = *(v0 + 208);
    v8 = *(v0 + 160);
    v9 = *(v0 + 168);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27[0] = v11;
    *v10 = 136446722;
    v12 = sub_29E2C4AE4();
    v14 = sub_29DFAA104(v12, v13, v27);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_29DFAA104(v8, v9, v27);
    *(v10 + 22) = 2080;
    *(v0 + 144) = v7;
    v15 = v7;
    sub_29DE96670();
    v16 = sub_29E2C3424();
    v18 = sub_29DFAA104(v16, v17, v27);

    *(v10 + 24) = v18;
    _os_log_impl(&dword_29DE74000, v5, v6, "[%{public}s] Error updating %s: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v11, -1, -1);
    MEMORY[0x29ED82140](v10, -1, -1);

    (*(v24 + 8))(v26, v25);
  }

  else
  {
    v20 = *(v0 + 200);
    v19 = *(v0 + 208);
    v21 = *(v0 + 192);

    (*(v20 + 8))(v19, v21);
  }

  v22 = *(v0 + 8);

  return v22();
}

id sub_29DFDF04C(uint64_t a1, uint64_t a2)
{
  sub_29DE9408C(0, &qword_2A1A61D70);
  result = [swift_getObjCClassFromMetadata() menstrualFlowType];
  if (result)
  {
    v6 = result;
    v7 = [result identifier];

    v8 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v10 = v9;

    if (v8 != a1 || v10 != a2)
    {
      v12 = sub_29E2C4914();

      if (v12)
      {
        goto LABEL_11;
      }

      swift_beginAccess();
      v13 = *(v2 + 72);
      if (!*(v13 + 16))
      {
        goto LABEL_11;
      }

      sub_29E2BF404();
      v14 = sub_29DECF000(a1, a2);
      if (v15)
      {
        v16 = *(*(v13 + 56) + v14);

        v17 = v16 ^ 1;
        return (v17 & 1);
      }
    }

LABEL_11:
    v17 = 1;
    return (v17 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_29DFDF190()
{
  sub_29DFE032C();
  v1 = v0;
  v2 = HKMCSymptomSampleTypes();
  sub_29DE9408C(0, &qword_2A1A61D70);
  v3 = sub_29E2C3614();

  if (v3 >> 62)
  {
    sub_29DE9408C(0, &unk_2A1A61D90);
    sub_29E2BF404();
    v4 = sub_29E2C4744();
  }

  else
  {
    sub_29E2BF404();
    sub_29E2C4924();
    sub_29DE9408C(0, &unk_2A1A61D90);
    v4 = v3;
  }

  sub_29DFCB79C(v4);
  v5 = v1;
  if (v1 >> 62)
  {
    v6 = sub_29E2C4484();
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_16:

    v9 = MEMORY[0x29EDCA190];
    goto LABEL_17;
  }

  v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_5:
  v43 = MEMORY[0x29EDCA190];
  result = sub_29E1811FC(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  v8 = 0;
  v9 = v43;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x29ED80D70](v8, v5);
    }

    else
    {
      v10 = *(v5 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = [v10 identifier];
    v13 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v15 = v14;

    v17 = *(v43 + 16);
    v16 = *(v43 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_29E1811FC((v16 > 1), v17 + 1, 1);
    }

    ++v8;
    *(v43 + 16) = v17 + 1;
    v18 = v43 + 16 * v17;
    *(v18 + 32) = v13;
    *(v18 + 40) = v15;
  }

  while (v6 != v8);

LABEL_17:
  v19 = *(v9 + 16);
  result = swift_beginAccess();
  if (v19)
  {
    v20 = 0;
    v21 = MEMORY[0x29EDCA190];
    do
    {
      v22 = (v9 + 40 + 16 * v20);
      v23 = v20;
      while (1)
      {
        if (v23 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_42;
        }

        v25 = *(v22 - 1);
        v24 = *v22;
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        sub_29E2BF404();
        result = [ObjCClassFromMetadata menstrualFlowType];
        if (!result)
        {
          goto LABEL_43;
        }

        v27 = result;
        v28 = [result identifier];

        v29 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v31 = v30;

        if (v25 == v29 && v24 == v31)
        {
          break;
        }

        v33 = sub_29E2C4914();

        if (v33)
        {
          goto LABEL_33;
        }

        v34 = *(v42 + 72);
        if (!*(v34 + 16))
        {
          goto LABEL_33;
        }

        sub_29E2BF404();
        v35 = sub_29DECF000(v25, v24);
        if ((v36 & 1) == 0)
        {
          break;
        }

        v37 = *(*(v34 + 56) + v35);

        if ((v37 & 1) == 0)
        {
          goto LABEL_33;
        }

        ++v23;

        v22 += 2;
        if (v19 == v23)
        {
          goto LABEL_40;
        }
      }

LABEL_33:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_29E1811FC(0, *(v21 + 16) + 1, 1);
      }

      v39 = *(v21 + 16);
      v38 = *(v21 + 24);
      if (v39 >= v38 >> 1)
      {
        result = sub_29E1811FC((v38 > 1), v39 + 1, 1);
      }

      v20 = v23 + 1;
      *(v21 + 16) = v39 + 1;
      v40 = v21 + 16 * v39;
      *(v40 + 32) = v25;
      *(v40 + 40) = v24;
    }

    while (v19 - 1 != v23);
  }

  else
  {
    v21 = MEMORY[0x29EDCA190];
  }

LABEL_40:

  v41 = sub_29E14EC84(v21);

  return v41;
}

id sub_29DFDF5D0()
{
  v0 = HKMCSymptomSampleTypes();
  sub_29DE9408C(0, &qword_2A1A61D70);
  v1 = sub_29E2C3614();

  if (!(v1 >> 62))
  {
    sub_29E2BF404();
    sub_29E2C4924();
    sub_29DE9408C(0, &unk_2A1A61D90);

    v2 = v1;
LABEL_3:
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

LABEL_30:
  sub_29DE9408C(0, &unk_2A1A61D90);
  sub_29E2BF404();
  v2 = sub_29E2C4744();
  swift_bridgeObjectRelease_n();
  v1 = v2;
  if (!(v2 >> 62))
  {
    goto LABEL_3;
  }

  v3 = sub_29E2C4484();
LABEL_4:
  swift_beginAccess();
  if (v3)
  {
    v4 = 0;
    v28 = v2 & 0xFFFFFFFFFFFFFF8;
    v29 = v2 & 0xC000000000000001;
    v5 = &selRef_hkmc_menstruationLoggingCardGradientAColor;
    while (1)
    {
      if (v29)
      {
        v6 = MEMORY[0x29ED80D70](v4, v1);
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      else
      {
        if (v4 >= *(v28 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v6 = *(v1 + 8 * v4 + 32);
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      v8 = v1;
      v9 = v6;
      v10 = [v6 v5[57]];
      v11 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v13 = v12;

      result = [swift_getObjCClassFromMetadata() menstrualFlowType];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v15 = result;
      v16 = [result v5[57]];

      v17 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v19 = v18;

      if (v11 == v17 && v13 == v19)
      {
        break;
      }

      v20 = sub_29E2C4914();

      if (v20)
      {

        goto LABEL_7;
      }

      v21 = *(v27 + 72);
      v5 = &selRef_hkmc_menstruationLoggingCardGradientAColor;
      if (!*(v21 + 16))
      {

LABEL_23:
        v1 = v8;
        goto LABEL_8;
      }

      sub_29E2BF404();
      v22 = sub_29DECF000(v11, v13);
      v24 = v23;

      if ((v24 & 1) == 0)
      {

        goto LABEL_23;
      }

      v25 = *(*(v21 + 56) + v22);

      v1 = v8;
      if (v25)
      {
        v26 = 0;
        goto LABEL_28;
      }

LABEL_8:
      ++v4;
      if (v7 == v3)
      {
        goto LABEL_27;
      }
    }

LABEL_7:

    v1 = v8;
    v5 = &selRef_hkmc_menstruationLoggingCardGradientAColor;
    goto LABEL_8;
  }

LABEL_27:
  v26 = 1;
LABEL_28:

  return v26;
}

uint64_t sub_29DFDF960(int a1, uint64_t a2, uint64_t a3)
{
  v28[1] = a2;
  v31 = a1;
  v29 = *v3;
  v30 = a3;
  sub_29DFDA4A4();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v28[0] = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = HKMCSymptomSampleTypes();
  sub_29DE9408C(0, &qword_2A1A61D70);
  v7 = sub_29E2C3614();

  if (v7 >> 62)
  {
    goto LABEL_14;
  }

  sub_29E2BF404();
  sub_29E2C4924();
  sub_29DE9408C(0, &unk_2A1A61D90);

  v8 = v7;
  while (1)
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      break;
    }

    while (1)
    {
      v10 = 0;
      v11 = v8 & 0xC000000000000001;
      v12 = v8 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v11)
        {
          v13 = MEMORY[0x29ED80D70](v10, v7);
        }

        else
        {
          if (v10 >= *(v12 + 16))
          {
            goto LABEL_13;
          }

          v13 = *(v7 + 8 * v10 + 32);
        }

        v14 = v13;
        v15 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v16 = [v13 identifier];
        v17 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v19 = v18;

        sub_29DFDE5E0(v17, v19, v31 & 1);

        ++v10;
        if (v15 == v9)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      sub_29DE9408C(0, &unk_2A1A61D90);
      sub_29E2BF404();
      v8 = sub_29E2C4744();
      swift_bridgeObjectRelease_n();
      v7 = v8;
      if (!(v8 >> 62))
      {
        break;
      }

      v9 = sub_29E2C4484();
      if (!v9)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_16:

  v20 = [*(v32 + 16) healthStore];
  v21 = [objc_allocWithZone(MEMORY[0x29EDBAA90]) initWithHealthStore_];

  v22 = sub_29E2C3734();
  v23 = v28[0];
  (*(*(v22 - 8) + 56))(v28[0], 1, 1, v22);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v21;
  v24[5] = 0xD00000000000001DLL;
  v26 = v29;
  v25 = v30;
  v24[6] = 0x800000029E2F7D80;
  v24[7] = v26;
  sub_29E13C63C(0, 0, v23, v25, v24);
}

uint64_t sub_29DFDFCA8()
{
  v1 = *v0;
  sub_29DFDA4A4();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C3734();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = v0[2];
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v7[5] = v1;
  v8 = v6;
  sub_29E13C63C(0, 0, v4, &unk_29E2D7F40, v7);
}

uint64_t sub_29DFDFDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = sub_29E2C0514();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29DFDFE90, 0, 0);
}

uint64_t sub_29DFDFE90()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_29DFDFF9C;
  v2 = swift_continuation_init();
  sub_29DFE1154();
  v0[17] = v3;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29E27F6E4;
  v0[13] = &unk_2A24B7130;
  v0[14] = v2;
  [v1 setValueForAllKeys:0 completion:v0 + 10];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29DFDFF9C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_29DFE010C;
  }

  else
  {
    v2 = sub_29DFE00AC;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29DFE00AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29DFE010C()
{
  v24 = v0;
  v1 = *(v0 + 192);
  swift_willThrow();
  sub_29E2C04B4();
  v2 = v1;
  v3 = sub_29E2C0504();
  v4 = sub_29E2C3A14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 192);
    v22 = *(v0 + 184);
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23[0] = v9;
    *v8 = 136446466;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, v23);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v0 + 144) = v5;
    v13 = v5;
    sub_29DE96670();
    v14 = sub_29E2C3424();
    v16 = sub_29DFAA104(v14, v15, v23);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_29DE74000, v3, v4, "[%{public}s] Error resetting: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);

    (*(v6 + 8))(v22, v7);
  }

  else
  {
    v17 = *(v0 + 184);
    v18 = *(v0 + 168);
    v19 = *(v0 + 176);

    (*(v19 + 8))(v17, v18);
  }

  v20 = *(v0 + 8);

  return v20();
}

void sub_29DFE032C()
{
  v1 = HKMCCycleChartMainTypes();
  sub_29DE9408C(0, &unk_2A1A61D90);
  v2 = sub_29E2C3614();

  if ((*(v0 + 24) & 1) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    v4 = v2 >> 62;
    if (v2 >> 62)
    {
      goto LABEL_68;
    }

    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v6 = 0;
    while (1)
    {
      if (v5 == v6)
      {
        if (v4)
        {
          v6 = sub_29E2C4484();
        }

        else
        {
          v6 = *(v3 + 16);
        }

        goto LABEL_24;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29ED80D70](v6, v2);
      }

      else
      {
        if (v6 >= *(v3 + 16))
        {
          goto LABEL_61;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 code];

      v10 = v6 + 1;
      v11 = __OFADD__(v6, 1);
      if (v9 == 256)
      {
        break;
      }

      ++v6;
      if (v11)
      {
        goto LABEL_62;
      }
    }

    if (!v11)
    {
      if (v4)
      {
        if (v10 != sub_29E2C4484())
        {
LABEL_28:
          v3 = v6 + 5;
          do
          {
            v13 = v3 - 4;
            v4 = v2 & 0xC000000000000001;
            if ((v2 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x29ED80D70](v3 - 4, v2);
            }

            else
            {
              if ((v13 & 0x8000000000000000) != 0)
              {
                goto LABEL_63;
              }

              if (v13 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_64;
              }

              v14 = *(v2 + 8 * v3);
            }

            v15 = v14;
            v16 = [v14 code];

            if (v16 != 256)
            {
              if (v13 != v6)
              {
                if (v4)
                {
                  v17 = MEMORY[0x29ED80D70](v6, v2);
                  v18 = MEMORY[0x29ED80D70](v3 - 4, v2);
                }

                else
                {
                  if (v6 < 0)
                  {
                    goto LABEL_71;
                  }

                  v19 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v6 >= v19)
                  {
                    goto LABEL_72;
                  }

                  if (v13 >= v19)
                  {
                    goto LABEL_73;
                  }

                  v20 = *(v2 + 8 * v3);
                  v17 = *(v2 + 8 * v6 + 32);
                  v18 = v20;
                }

                v21 = v18;
                if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
                {
                  v2 = sub_29E151750(v2);
                  v22 = (v2 >> 62) & 1;
                }

                else
                {
                  LODWORD(v22) = 0;
                }

                v4 = v2 & 0xFFFFFFFFFFFFFF8;
                v23 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
                *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v21;

                if ((v2 & 0x8000000000000000) != 0 || v22)
                {
                  v2 = sub_29E151750(v2);
                  v4 = v2 & 0xFFFFFFFFFFFFFF8;
                  if ((v13 & 0x8000000000000000) != 0)
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
LABEL_67:
                    __break(1u);
LABEL_68:
                    v5 = sub_29E2C4484();
                    goto LABEL_4;
                  }
                }

                else if ((v13 & 0x8000000000000000) != 0)
                {
                  goto LABEL_60;
                }

                if (v13 >= *(v4 + 16))
                {
                  goto LABEL_67;
                }

                v24 = *(v4 + 8 * v3);
                *(v4 + 8 * v3) = v17;
              }

              v25 = __OFADD__(v6++, 1);
              if (v25)
              {
                goto LABEL_66;
              }
            }

            v25 = __OFADD__(v13, 1);
            v26 = v3 - 3;
            if (v25)
            {
              goto LABEL_65;
            }

            if (v2 >> 62)
            {
              v27 = sub_29E2C4484();
            }

            else
            {
              v27 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            ++v3;
          }

          while (v26 != v27);
        }
      }

      else if (v10 != *(v3 + 16))
      {
        goto LABEL_28;
      }

LABEL_24:
      if (v2 >> 62)
      {
        v12 = sub_29E2C4484();
        if (v12 >= v6)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12 >= v6)
        {
LABEL_26:
          sub_29E14EC70(v6, v12);
          return;
        }
      }

      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
    }

    __break(1u);
  }
}