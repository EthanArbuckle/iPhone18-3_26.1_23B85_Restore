uint64_t sub_1E13AB92C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v98 = result;
  v119 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v7 = *v98;
    if (!*v98)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_103:
      v118 = v8;
      v89 = v8;
      v8 = *(v8 + 16);
      if (v8 >= 2)
      {
        while (*v119)
        {
          v90 = *&v89[16 * v8];
          v91 = *&v89[16 * v8 + 24];
          sub_1E13AC938((*v119 + 192 * v90), (*v119 + 192 * *&v89[16 * v8 + 16]), (*v119 + 192 * v91), v7);
          if (v5)
          {
          }

          if (v91 < v90)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v89 = sub_1E1968F00(v89);
          }

          if ((v8 - 2) >= *(v89 + 2))
          {
            goto LABEL_127;
          }

          v92 = &v89[16 * v8];
          *v92 = v90;
          *(v92 + 1) = v91;
          v118 = v89;
          result = sub_1E1968E74(v8 - 1);
          v89 = v118;
          v8 = *(v118 + 16);
          if (v8 <= 1)
          {
          }
        }

        goto LABEL_137;
      }
    }

LABEL_133:
    result = sub_1E1968F00(v8);
    v8 = result;
    goto LABEL_103;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    v99 = v7;
    if (v7 + 1 < v6)
    {
      v94 = v8;
      v11 = *v119;
      sub_1E13AE1A8(*v119 + 192 * v10, &v107);
      sub_1E13AE1A8(v11 + 192 * v7, v106);
      sub_1E13AE1A8(&v107, v103);
      v12 = v105;
      sub_1E13AD9D0(v104);
      sub_1E13AE1A8(v106, v103);
      v7 = v105;
      sub_1E13AD9D0(v104);
      v96 = v5;
      if (3 - v7 >= (3 - v12))
      {
        v101 = v7 == v12 && v107 < v106[0];
      }

      else
      {
        v101 = 1;
      }

      sub_1E13AE218(v106);
      result = sub_1E13AE218(&v107);
      v13 = v9 + 2;
      v14 = 192 * v9;
      v15 = v11 + 192 * v9 + 384;
      v16 = v14 + 192;
      do
      {
        v19 = v13;
        v8 = v10;
        v5 = v16;
        if (v13 >= v6)
        {
          break;
        }

        sub_1E13AE1A8(v15, &v107);
        sub_1E13AE1A8(v15 - 192, v106);
        sub_1E13AE1A8(&v107, v103);
        v7 = v105;
        sub_1E13AD9D0(v104);
        sub_1E13AE1A8(v106, v103);
        v20 = v105;
        sub_1E13AD9D0(v104);
        v17 = 3 - v20 < (3 - v7) || v20 == v7 && v107 < v106[0];
        sub_1E13AE218(v106);
        result = sub_1E13AE218(&v107);
        v13 = v19 + 1;
        v15 += 192;
        v16 = v5 + 192;
        v18 = v101 == v17;
        v10 = v8 + 1;
      }

      while (v18);
      if (!v101)
      {
        goto LABEL_28;
      }

      v21 = v99;
      if (v19 < v99)
      {
        goto LABEL_130;
      }

      if (v99 < v19)
      {
        do
        {
          if (v21 != v8)
          {
            v23 = *v119;
            if (!*v119)
            {
              goto LABEL_136;
            }

            v24 = (v23 + v5);
            v115 = *(v23 + v14 + 128);
            v116 = *(v23 + v14 + 144);
            v117[0] = *(v23 + v14 + 160);
            v7 = &v107;
            *(v117 + 10) = *(v23 + v14 + 170);
            v111 = *(v23 + v14 + 64);
            v112 = *(v23 + v14 + 80);
            v113 = *(v23 + v14 + 96);
            v114 = *(v23 + v14 + 112);
            v107 = *(v23 + v14);
            v108 = *(v23 + v14 + 16);
            v109 = *(v23 + v14 + 32);
            v110 = *(v23 + v14 + 48);
            result = memmove((v23 + v14), (v23 + v5), 0xC0uLL);
            v24[8] = v115;
            v24[9] = v116;
            v24[10] = v117[0];
            *(v24 + 170) = *(v117 + 10);
            v24[4] = v111;
            v24[5] = v112;
            v24[6] = v113;
            v24[7] = v114;
            *v24 = v107;
            v24[1] = v108;
            v24[2] = v109;
            v24[3] = v110;
          }

          ++v21;
          v5 -= 192;
          v14 += 192;
        }

        while (v21 < v8--);
LABEL_28:
        v10 = v19;
        v8 = v94;
        v5 = v96;
        v9 = v99;
        goto LABEL_29;
      }

      v10 = v19;
      v8 = v94;
      v5 = v96;
      v9 = v99;
    }

LABEL_29:
    v25 = v119[1];
    if (v10 < v25)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_129;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_50:
    if (v10 < v9)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E172D878(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v42 = *(v8 + 16);
    v41 = *(v8 + 24);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1E172D878((v41 > 1), v42 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v43;
    v44 = v8 + 16 * v42;
    *(v44 + 32) = v99;
    *(v44 + 40) = v10;
    v45 = *v98;
    if (!*v98)
    {
      goto LABEL_138;
    }

    v7 = v10;
    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v8 + 32);
          v48 = *(v8 + 40);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_70:
          if (v50)
          {
            goto LABEL_117;
          }

          v63 = (v8 + 16 * v43);
          v65 = *v63;
          v64 = v63[1];
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_120;
          }

          v69 = (v8 + 32 + 16 * v46);
          v71 = *v69;
          v70 = v69[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_124;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v73 = (v8 + 16 * v43);
        v75 = *v73;
        v74 = v73[1];
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_84:
        if (v68)
        {
          goto LABEL_119;
        }

        v76 = v8 + 16 * v46;
        v78 = *(v76 + 32);
        v77 = *(v76 + 40);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_122;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_91:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
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
          goto LABEL_132;
        }

        if (!*v119)
        {
          goto LABEL_135;
        }

        v85 = v8;
        v86 = v8 + 32;
        v8 = *(v8 + 32 + 16 * v84);
        v87 = *(v86 + 16 * v46 + 8);
        sub_1E13AC938((*v119 + 192 * v8), (*v119 + 192 * *(v86 + 16 * v46)), (*v119 + 192 * v87), v45);
        if (v5)
        {
        }

        if (v87 < v8)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_1E1968F00(v85);
        }

        if (v84 >= *(v85 + 2))
        {
          goto LABEL_114;
        }

        v88 = &v85[16 * v84];
        *(v88 + 4) = v8;
        *(v88 + 5) = v87;
        v118 = v85;
        result = sub_1E1968E74(v46);
        v8 = v118;
        v43 = *(v118 + 16);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = v8 + 32 + 16 * v43;
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_115;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_116;
      }

      v58 = (v8 + 16 * v43);
      v60 = *v58;
      v59 = v58[1];
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_118;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_121;
      }

      if (v62 >= v54)
      {
        v80 = (v8 + 32 + 16 * v46);
        v82 = *v80;
        v81 = v80[1];
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_125;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v6 = v119[1];
    if (v7 >= v6)
    {
      goto LABEL_101;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_131;
  }

  if (v9 + a4 < v25)
  {
    v25 = v9 + a4;
  }

  if (v25 < v9)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v10 == v25)
  {
    goto LABEL_50;
  }

  v100 = v25;
  v95 = v8;
  v97 = v5;
  v26 = *v119;
  v27 = *v119 + 192 * v10;
  v28 = v9 - v10;
LABEL_40:
  v102 = v10;
  v29 = v28;
  v30 = v27;
  while (1)
  {
    sub_1E13AE1A8(v30, &v107);
    v31 = v30 - 12;
    sub_1E13AE1A8((v30 - 12), v106);
    sub_1E13AE1A8(&v107, v103);
    v7 = v105;
    sub_1E13AD9D0(v104);
    sub_1E13AE1A8(v106, v103);
    v32 = v105;
    sub_1E13AD9D0(v104);
    if (3 - v32 >= (3 - v7))
    {
      if (v32 != v7)
      {
        sub_1E13AE218(v106);
        sub_1E13AE218(&v107);
LABEL_39:
        v10 = v102 + 1;
        v27 += 192;
        --v28;
        if (v102 + 1 == v100)
        {
          v9 = v99;
          v10 = v100;
          v8 = v95;
          v5 = v97;
          goto LABEL_50;
        }

        goto LABEL_40;
      }

      v7 = v107;
      v33 = v106[0];
      sub_1E13AE218(v106);
      result = sub_1E13AE218(&v107);
      if (v7 >= v33)
      {
        goto LABEL_39;
      }
    }

    else
    {
      sub_1E13AE218(v106);
      result = sub_1E13AE218(&v107);
    }

    if (!v26)
    {
      break;
    }

    v115 = v30[8];
    v116 = v30[9];
    v117[0] = v30[10];
    *(v117 + 10) = *(v30 + 170);
    v111 = v30[4];
    v112 = v30[5];
    v113 = v30[6];
    v114 = v30[7];
    v107 = *v30;
    v108 = v30[1];
    v109 = v30[2];
    v110 = v30[3];
    v34 = *(v30 - 3);
    v30[8] = *(v30 - 4);
    v30[9] = v34;
    v35 = *(v30 - 1);
    v30[10] = *(v30 - 2);
    v30[11] = v35;
    v36 = *(v30 - 7);
    v30[4] = *(v30 - 8);
    v30[5] = v36;
    v37 = *(v30 - 5);
    v30[6] = *(v30 - 6);
    v30[7] = v37;
    v38 = *(v30 - 11);
    *v30 = *v31;
    v30[1] = v38;
    v39 = *(v30 - 9);
    v30[2] = *(v30 - 10);
    v30[3] = v39;
    *(v30 - 4) = v115;
    *(v30 - 3) = v116;
    *(v30 - 2) = v117[0];
    *(v30 - 22) = *(v117 + 10);
    *(v30 - 8) = v111;
    *(v30 - 7) = v112;
    *(v30 - 6) = v113;
    *(v30 - 5) = v114;
    *v31 = v107;
    *(v30 - 11) = v108;
    *(v30 - 10) = v109;
    *(v30 - 9) = v110;
    v30 -= 12;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_39;
    }
  }

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
  return result;
}

uint64_t sub_1E13AC284(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 192;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 192;
  if (v9 >= v11)
  {
    v19 = 192 * v11;
    if (a4 != __src || &__src[v19] <= a4)
    {
      memmove(a4, __src, 192 * v11);
    }

    v13 = &v4[v19];
    if (v10 < 192 || v6 <= v7)
    {
      v18 = v6;
    }

    else
    {
      v37 = v4;
      v31 = v7;
      do
      {
        v20 = (v6 - 192);
        v21 = v13 - 192;
        v5 -= 192;
        while (1)
        {
          v24 = v21 + 192;
          v25 = v5 + 192;
          sub_1E13AE1A8(v21, v36);
          v26 = v20;
          sub_1E13AE1A8(v20, v35);
          sub_1E13AE1A8(v36, v32);
          v27 = v34;
          sub_1E13AD9D0(v33);
          sub_1E13AE1A8(v35, v32);
          v28 = v34;
          sub_1E13AD9D0(v33);
          sub_1E13AE218(v35);
          sub_1E13AE218(v36);
          if (v27 < v28)
          {
            break;
          }

          if (v25 != v24)
          {
            memmove(v5, v21, 0xC0uLL);
          }

          v22 = v21 - 192;
          v5 -= 192;
          v23 = v21 > v37;
          v21 -= 192;
          v20 = v26;
          if (!v23)
          {
            v13 = v22 + 192;
            v18 = v6;
            v4 = v37;
            goto LABEL_34;
          }
        }

        v17 = v25 == v6;
        v18 = v26;
        if (!v17)
        {
          memmove(v5, v26, 0xC0uLL);
        }

        v4 = v37;
        v13 = v21 + 192;
        if (v24 <= v37)
        {
          break;
        }

        v6 = v18;
      }

      while (v18 > v31);
      v13 = v21 + 192;
    }
  }

  else
  {
    v12 = 192 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 >= 192 && v6 < v5)
    {
      while (1)
      {
        sub_1E13AE1A8(v6, v36);
        sub_1E13AE1A8(v4, v35);
        sub_1E13AE1A8(v36, v32);
        v14 = v34;
        sub_1E13AD9D0(v33);
        sub_1E13AE1A8(v35, v32);
        v15 = v34;
        sub_1E13AD9D0(v33);
        sub_1E13AE218(v35);
        sub_1E13AE218(v36);
        if (v14 >= v15)
        {
          break;
        }

        v16 = v6;
        v17 = v7 == v6;
        v6 += 192;
        if (!v17)
        {
          goto LABEL_12;
        }

LABEL_13:
        v7 += 192;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_15;
        }
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 192;
      if (v17)
      {
        goto LABEL_13;
      }

LABEL_12:
      memmove(v7, v16, 0xC0uLL);
      goto LABEL_13;
    }

LABEL_15:
    v18 = v7;
  }

LABEL_34:
  v29 = 192 * ((v13 - v4) / 192);
  if (v18 != v4 || v18 >= &v4[v29])
  {
    memmove(v18, v4, v29);
  }

  return 1;
}

uint64_t sub_1E13AC5B4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 192;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 192;
  if (v9 >= v11)
  {
    v21 = 192 * v11;
    if (a4 != __src || &__src[v21] <= a4)
    {
      memmove(a4, __src, 192 * v11);
    }

    v13 = &v4[v21];
    if (v10 < 192 || v6 <= v7)
    {
LABEL_52:
      v20 = v6;
      goto LABEL_53;
    }

    while (1)
    {
      v20 = v6 - 192;
      v22 = v13 - 192;
      v5 -= 192;
      while (1)
      {
        sub_1E13AE1A8(v22, v34);
        sub_1E13AE1A8((v6 - 192), v33);
        sub_1E13AE1A8(v34, v30);
        v24 = v32;
        sub_1E13AD9D0(v31);
        sub_1E13AE1A8(v33, v30);
        v25 = v32;
        sub_1E13AD9D0(v31);
        if (v24)
        {
          if ((v25 & 1) == 0)
          {
            v27 = 0;
            goto LABEL_44;
          }

          v26 = v33[0] < v34[0];
        }

        else
        {
          if (v25)
          {
            v27 = 1;
            goto LABEL_44;
          }

          v26 = v34[0] < v33[0];
        }

        v27 = v26;
LABEL_44:
        sub_1E13AE218(v33);
        sub_1E13AE218(v34);
        if (v27)
        {
          break;
        }

        if (v5 + 192 != v22 + 192)
        {
          memmove(v5, v22, 0xC0uLL);
        }

        v23 = v22 - 192;
        v5 -= 192;
        v16 = v22 > v4;
        v22 -= 192;
        if (!v16)
        {
          v13 = v23 + 192;
          goto LABEL_52;
        }
      }

      if (v5 + 192 != v6)
      {
        memmove(v5, v6 - 192, 0xC0uLL);
      }

      v13 = v22 + 192;
      if (v22 + 192 > v4)
      {
        v6 -= 192;
        if (v20 > v7)
        {
          continue;
        }
      }

      v13 = v22 + 192;
      goto LABEL_53;
    }
  }

  v12 = 192 * v9;
  if (a4 != __dst || &__dst[v12] <= a4)
  {
    memmove(a4, __dst, v12);
  }

  v13 = &v4[v12];
  if (v8 >= 192 && v6 < v5)
  {
    do
    {
      sub_1E13AE1A8(v6, v34);
      sub_1E13AE1A8(v4, v33);
      sub_1E13AE1A8(v34, v30);
      v14 = v32;
      sub_1E13AD9D0(v31);
      sub_1E13AE1A8(v33, v30);
      v15 = v32;
      sub_1E13AD9D0(v31);
      if (v14)
      {
        if ((v15 & 1) == 0)
        {
          sub_1E13AE218(v33);
          sub_1E13AE218(v34);
LABEL_21:
          v18 = v4;
          v19 = v7 == v4;
          v4 += 192;
          if (v19)
          {
            goto LABEL_23;
          }

LABEL_22:
          memmove(v7, v18, 0xC0uLL);
          goto LABEL_23;
        }

        v16 = v33[0] < v34[0];
      }

      else
      {
        if (v15)
        {
          sub_1E13AE218(v33);
          sub_1E13AE218(v34);
          goto LABEL_18;
        }

        v16 = v34[0] < v33[0];
      }

      v17 = v16;
      sub_1E13AE218(v33);
      sub_1E13AE218(v34);
      if ((v17 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_18:
      v18 = v6;
      v19 = v7 == v6;
      v6 += 192;
      if (!v19)
      {
        goto LABEL_22;
      }

LABEL_23:
      v7 += 192;
    }

    while (v4 < v13 && v6 < v5);
  }

  v20 = v7;
LABEL_53:
  v28 = 192 * ((v13 - v4) / 192);
  if (v20 != v4 || v20 >= &v4[v28])
  {
    memmove(v20, v4, v28);
  }

  return 1;
}

uint64_t sub_1E13AC938(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 192;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 192;
  if (v9 >= v11)
  {
    v20 = 192 * v11;
    if (__dst != a2 || &a2[v20] <= __dst)
    {
      memmove(__dst, a2, 192 * v11);
    }

    v13 = &v4[v20];
    if (v10 < 192 || v6 <= v7)
    {
LABEL_43:
      v21 = v6;
    }

    else
    {
      do
      {
        v21 = v6 - 192;
        v22 = v13 - 192;
        v5 -= 192;
        while (1)
        {
          sub_1E13AE1A8(v22, v34);
          sub_1E13AE1A8((v6 - 192), v33);
          sub_1E13AE1A8(v34, v30);
          v25 = v32;
          sub_1E13AD9D0(v31);
          sub_1E13AE1A8(v33, v30);
          v26 = v32;
          sub_1E13AD9D0(v31);
          v27 = 3 - v26 < (3 - v25) || v26 == v25 && v34[0] < v33[0];
          sub_1E13AE218(v33);
          sub_1E13AE218(v34);
          if (v27)
          {
            break;
          }

          if (v5 + 192 != v22 + 192)
          {
            memmove(v5, v22, 0xC0uLL);
          }

          v23 = v22 - 192;
          v5 -= 192;
          v24 = v22 > v4;
          v22 -= 192;
          if (!v24)
          {
            v13 = v23 + 192;
            goto LABEL_43;
          }
        }

        if (v5 + 192 != v6)
        {
          memmove(v5, v6 - 192, 0xC0uLL);
        }

        v13 = v22 + 192;
        if (v22 + 192 <= v4)
        {
          break;
        }

        v6 -= 192;
      }

      while (v21 > v7);
      v13 = v22 + 192;
    }
  }

  else
  {
    v12 = 192 * v9;
    if (__dst != __src || &__src[v12] <= __dst)
    {
      memmove(__dst, __src, v12);
    }

    v13 = &v4[v12];
    if (v8 >= 192 && v6 < v5)
    {
      while (1)
      {
        sub_1E13AE1A8(v6, v34);
        sub_1E13AE1A8(v4, v33);
        sub_1E13AE1A8(v34, v30);
        v14 = v32;
        sub_1E13AD9D0(v31);
        sub_1E13AE1A8(v33, v30);
        v15 = v32;
        sub_1E13AD9D0(v31);
        if (3 - v15 < (3 - v14))
        {
          break;
        }

        if (v15 == v14)
        {
          v18 = v34[0];
          v19 = v33[0];
          sub_1E13AE218(v33);
          sub_1E13AE218(v34);
          if (v18 < v19)
          {
            goto LABEL_9;
          }
        }

        else
        {
          sub_1E13AE218(v33);
          sub_1E13AE218(v34);
        }

        v16 = v4;
        v17 = v7 == v4;
        v4 += 192;
        if (!v17)
        {
          goto LABEL_10;
        }

LABEL_11:
        v7 += 192;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_42;
        }
      }

      sub_1E13AE218(v33);
      sub_1E13AE218(v34);
LABEL_9:
      v16 = v6;
      v17 = v7 == v6;
      v6 += 192;
      if (v17)
      {
        goto LABEL_11;
      }

LABEL_10:
      memmove(v7, v16, 0xC0uLL);
      goto LABEL_11;
    }

LABEL_42:
    v21 = v7;
  }

  v28 = 192 * ((v13 - v4) / 192);
  if (v21 != v4 || v21 >= &v4[v28])
  {
    memmove(v21, v4, v28);
  }

  return 1;
}

void sub_1E13ACCB8(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v99 = a2;
  v92 = a5;
  v94 = a4;
  v90 = a3;
  v6 = v128;
  v98 = sub_1E1AF745C();
  v7 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1D8B18 != -1)
  {
    goto LABEL_107;
  }

  while (1)
  {
    v9 = xmmword_1EE1D8B30;
    *(v6 + 13) = xmmword_1EE1D8B20;
    *(v6 + 14) = v9;
    v10 = *&qword_1EE1D8B50;
    *(v6 + 15) = xmmword_1EE1D8B40;
    *(v6 + 16) = v10;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = sub_1E1AF628C();
      v13 = v12;
      *(v12 + 16) = v11;
      v14 = 32;
      do
      {
        v15 = (v12 + v14);
        v16 = *(v6 + 14);
        *v15 = *(v6 + 13);
        v15[1] = v16;
        v17 = *(v6 + 16);
        v15[2] = *(v6 + 15);
        v15[3] = v17;
        v14 += 64;
        --v11;
      }

      while (v11);
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v93 = a1;
    *&v128[0] = sub_1E1430674(a1);
    sub_1E13A9EA4(v128, sub_1E13AB92C, sub_1E13AA494);
    v91 = 0;
    v100 = *&v128[0];
    v18 = *(*&v128[0] + 16);
    v104 = v13 + 32;
    v105 = v13;
    v96 = v18;
    if (v18)
    {
      v19 = 0;
      v6 = (v100 + 32);
      v95 = v7 + 1;
      v20 = v94;
      while (v19 < *(v100 + 16))
      {
        sub_1E13AE1A8(v6, v128);
        v115 = *(v128 + 8);
        v116 = *(&v128[1] + 8);
        v113 = v128[9];
        v114[0] = v128[10];
        *(v114 + 10) = *(&v128[10] + 10);
        v109 = v128[5];
        v110 = v128[6];
        v111 = v128[7];
        v112 = v128[8];
        v107 = v128[3];
        v108 = v128[4];
        if (!*(&v128[2] + 1))
        {
          goto LABEL_20;
        }

        v101 = v19;
        v102 = v6;
        v103 = *&v128[0];
        v128[0] = v115;
        v128[1] = v116;
        *(&v128[7] + 8) = v112;
        *(&v128[8] + 8) = v113;
        *(&v128[9] + 8) = v114[0];
        *(&v128[10] + 2) = *(v114 + 10);
        *(&v128[4] + 8) = v109;
        *(&v128[5] + 8) = v110;
        *(&v128[6] + 8) = v111;
        *(&v128[3] + 8) = v108;
        *&v128[2] = *(&v128[2] + 1);
        *(&v128[2] + 8) = v107;
        __swift_project_boxed_opaque_existential_1Tm(&v128[3], v109);
        a1 = v97;
        sub_1E13BC274();
        sub_1E1AF12DC();
        v22 = v21;
        v23 = *v95;
        v6 = v98;
        (*v95)(a1, v98);
        __swift_project_boxed_opaque_existential_1Tm(&v128[5] + 1, *&v128[7]);
        sub_1E13BC274();
        sub_1E1AF12DC();
        v25 = v24;
        v23(a1, v6);
        if (v20 - v22 - v25 < 0.0)
        {
          v26 = 0.0;
        }

        else
        {
          v26 = v20 - v22 - v25;
        }

        v7 = __swift_project_boxed_opaque_existential_1Tm(v128 + 1, *&v128[2]);
        sub_1E1AF11CC();
        if (v26 - v27 < 0.0)
        {
          v20 = 0.0;
        }

        else
        {
          v20 = v26 - v27;
        }

        if ((v103 & 0x8000000000000000) != 0)
        {
          goto LABEL_95;
        }

        v13 = v105;
        if (v103 >= *(v105 + 16))
        {
          goto LABEL_96;
        }

        v31 = v104 + (v103 << 6);
        *v31 = v22;
        *(v31 + 8) = v25;
        v19 = v101 + 1;
        *(v31 + 16) = v27;
        *(v31 + 24) = v28;
        *(v31 + 32) = v29;
        *(v31 + 40) = v30;
        *(v31 + 48) = 0;
        *(v31 + 56) = 0;
        sub_1E13AD9D0(v128);
        v6 = v102 + 192;
        if (v96 == v19)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_94;
    }

LABEL_20:

    *&v128[0] = sub_1E1430674(v93);
    a1 = v128;
    v32 = v91;
    sub_1E13A9EA4(v128, sub_1E13AAFB0, sub_1E13AA244);
    if (v32)
    {
      v88 = v32;
LABEL_109:

      __break(1u);

      __break(1u);
      return;
    }

    v7 = *&v128[0];
    v33 = *(*&v128[0] + 16);
    if (!v33)
    {
      break;
    }

    v34 = 0;
    v6 = (*&v128[0] + 32);
    v35 = 0.0;
    v36 = v94;
    while (v34 < *(v7 + 2))
    {
      sub_1E13AE1A8(v6, v128);
      v37 = *&v128[0];
      v115 = *(v128 + 8);
      v116 = *(&v128[1] + 8);
      v113 = v128[9];
      v114[0] = v128[10];
      *(v114 + 10) = *(&v128[10] + 10);
      v109 = v128[5];
      v110 = v128[6];
      v111 = v128[7];
      v112 = v128[8];
      v107 = v128[3];
      v108 = v128[4];
      if (!*(&v128[2] + 1))
      {
        goto LABEL_32;
      }

      v128[0] = v115;
      v128[1] = v116;
      *(&v128[7] + 8) = v112;
      *(&v128[8] + 8) = v113;
      *(&v128[9] + 8) = v114[0];
      *(&v128[10] + 2) = *(v114 + 10);
      *(&v128[3] + 8) = v108;
      *(&v128[4] + 8) = v109;
      *(&v128[5] + 8) = v110;
      *(&v128[6] + 8) = v111;
      *&v128[2] = *(&v128[2] + 1);
      *(&v128[2] + 8) = v107;
      if ((v37 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }

      if (v37 >= *(v13 + 16))
      {
        goto LABEL_98;
      }

      v38 = (v104 + (v37 << 6));
      v40 = *v38;
      v39 = v38[1];
      v41 = v38[2];
      if (BYTE1(v128[11]))
      {
        v42 = v36 - v41 - v39;
        v36 = v36 - (v39 + v40 + v41);
      }

      else
      {
        v42 = v35 + v40;
        v35 = v35 + v39 + v40 + v41;
      }

      sub_1E13AD9D0(v128);
      if (v37 >= *(v13 + 16))
      {
        goto LABEL_99;
      }

      ++v34;
      v38[6] = v42;
      v6 += 192;
      if (v33 == v34)
      {
        goto LABEL_32;
      }
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
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
    swift_once();
  }

LABEL_32:

  v127 = sub_1E1430674(v93);
  sub_1E13A9EA4(&v127, sub_1E13AA6E0, sub_1E13AA040);
  a1 = v127;
  *&v125 = v94;
  *(&v125 + 1) = v92;
  *v126 = 0;
  v6 = &v115;
  memset(&v126[8], 0, 32);
  *&v126[40] = xmmword_1E1B04B80;
  v43 = sub_1E159E7A4(MEMORY[0x1E69E7CC0]);
  v7 = v128;
  v102 = *(a1 + 16);
  if (v102)
  {
    v32 = 0;
    v103 = a1 + 32;
    v101 = a1;
    while (1)
    {
      if (v32 >= *(a1 + 16))
      {
        goto LABEL_100;
      }

      sub_1E13AE1A8(v103, v128);
      v45 = *&v128[0];
      v123 = *(v128 + 8);
      v124 = *(&v128[1] + 8);
      v121 = v128[9];
      v122[0] = v128[10];
      *(v122 + 10) = *(&v128[10] + 10);
      v117 = v128[5];
      v118 = v128[6];
      v119 = v128[7];
      v120 = v128[8];
      v115 = v128[3];
      v116 = v128[4];
      if (!*(&v128[2] + 1))
      {
        goto LABEL_92;
      }

      v128[0] = v123;
      v128[1] = v124;
      *(&v128[7] + 8) = v120;
      *(&v128[8] + 8) = v121;
      *(&v128[9] + 8) = v122[0];
      *(&v128[10] + 2) = *(v122 + 10);
      *(&v128[3] + 8) = v116;
      *(&v128[4] + 8) = v117;
      *(&v128[5] + 8) = v118;
      *(&v128[6] + 8) = v119;
      *&v128[2] = *(&v128[2] + 1);
      *(&v128[2] + 8) = v115;
      if ((v45 & 0x8000000000000000) != 0)
      {
        goto LABEL_101;
      }

      if (v45 >= *(v105 + 16))
      {
        goto LABEL_102;
      }

      v46 = (v104 + (v45 << 6));
      v47 = v46[2];
      v48 = v46[3];
      v50 = v46[4];
      v49 = v46[5];
      a1 = LOBYTE(v128[8]);
      if ((*(&v128[8] + 1) & 0x8000000000000000) == 0)
      {
        v51 = *(*(&v128[8] + 1) + 16);
        if (LOBYTE(v128[8]) > 1u)
        {
          goto LABEL_42;
        }

        goto LABEL_52;
      }

      v6 = (*(&v128[8] + 1) & 0x7FFFFFFFFFFFFFFFLL);
      v53 = *((*(&v128[8] + 1) & 0x7FFFFFFFFFFFFFFFLL) + 0xC2);
      sub_1E13AD998((*(&v128[8] + 1) & 0x7FFFFFFFFFFFFFFFLL) + 16, &v107);
      if (!*(v43 + 2) || (v7 = v43, v54 = sub_1E131A7E8(v107), (v55 & 1) == 0))
      {
        sub_1E13AD9D0(&v107);
        v51 = 0.0;
        if (a1 > 1)
        {
          goto LABEL_42;
        }

        goto LABEL_52;
      }

      v56 = (*(v43 + 7) + (v54 << 6));
      v58 = v56[3];
      v57 = v56[4];
      v59 = v56[5];
      v60 = v56[7];

      sub_1E13AD9D0(&v107);

      if (v53 <= 1)
      {
        break;
      }

      if (v53 != 2)
      {
        if (v53 != 3)
        {
          v57 = v58 - v59;
        }

        goto LABEL_87;
      }

      v51 = v60 + v58;
      if (a1 > 1)
      {
LABEL_42:
        v52 = v48;
        if (a1 != 2)
        {
          v52 = v50;
          if (a1 != 3)
          {
            v52 = v48 - v49;
          }
        }

        goto LABEL_54;
      }

LABEL_52:
      v52 = 0.0;
      if (a1)
      {
        v52 = v48 * 0.5;
      }

LABEL_54:
      if (v45 >= *(v105 + 16))
      {
        goto LABEL_103;
      }

      v61 = v51 - v52;
      v46[7] = v51 - v52;
      v62 = v46[3];
      v63 = v46[6] - *v46;
      v64 = v46[1] + *v46 + v46[2];
      v126[1] = 1;
      if (v126[0])
      {
        v7 = &v125;
        sub_1E19C636C(v63, v61, v64, v62, v47, v48, v50, v49);
      }

      else
      {
        v74 = *(&v125 + 1);
        v75 = *&v125;
        v129.origin.x = v63;
        v129.origin.y = v61;
        v129.size.width = v64;
        v129.size.height = v62;
        if (*&v126[16] < CGRectGetMaxY(v129))
        {
          v130.origin.x = v63;
          v130.origin.y = v61;
          v130.size.width = v64;
          v130.size.height = v62;
          if (CGRectGetMaxY(v130) <= v74)
          {
            v131.origin.x = v63;
            v131.origin.y = v61;
            v131.size.width = v64;
            v131.size.height = v62;
            *&v126[16] = CGRectGetMaxY(v131);
          }
        }

        v132.origin.x = v63;
        v132.origin.y = v61;
        v132.size.width = v64;
        v132.size.height = v62;
        if (*&v126[32] < CGRectGetMaxX(v132))
        {
          v133.origin.x = v63;
          v133.origin.y = v61;
          v133.size.width = v64;
          v133.size.height = v62;
          if (CGRectGetMaxX(v133) <= v75)
          {
            v134.origin.x = v63;
            v134.origin.y = v61;
            v134.size.width = v64;
            v134.size.height = v62;
            *&v126[32] = CGRectGetMaxX(v134);
          }
        }

        v135.origin.x = v63;
        v135.origin.y = v61;
        v135.size.width = v64;
        v135.size.height = v62;
        v76 = v50 + CGRectGetMinY(v135);
        if (v76 > 0.0 && v76 <= v74)
        {
          if (v76 < *&v126[40])
          {
            *&v126[40] = v76;
          }

          if (*&v126[48] < v76)
          {
            *&v126[48] = v76;
          }
        }

        v136.origin.x = v63;
        v136.origin.y = v61;
        v136.size.width = v64;
        v136.size.height = v62;
        v77 = CGRectGetMaxY(v136) - v49;
        if (v77 > 0.0 && v77 <= v74)
        {
          if (v77 < *&v126[40])
          {
            *&v126[40] = v77;
          }

          if (*&v126[48] < v77)
          {
            *&v126[48] = v77;
          }
        }
      }

      if (v45 >= *(v105 + 16))
      {
        goto LABEL_104;
      }

      v6 = *&v128[0];
      v107 = *v46;
      v108 = *(v46 + 1);
      v109 = *(v46 + 2);
      v110 = *(v46 + 3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v106 = v43;
      v7 = v43;
      v66 = sub_1E131A7E8(v6);
      v68 = *(v43 + 2);
      v69 = (v67 & 1) == 0;
      v70 = __OFADD__(v68, v69);
      v71 = v68 + v69;
      if (v70)
      {
        goto LABEL_105;
      }

      v72 = v67;
      if (*(v43 + 3) >= v71)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = &v106;
          v81 = v66;
          sub_1E14161A4();
          v66 = v81;
        }
      }

      else
      {
        sub_1E1689504(v71, isUniquelyReferenced_nonNull_native);
        v7 = v106;
        v66 = sub_1E131A7E8(v6);
        if ((v72 & 1) != (v73 & 1))
        {
          sub_1E1AF757C();
          __break(1u);
          v88 = v91;
          goto LABEL_109;
        }
      }

      a1 = v101;
      v43 = v106;
      if (v72)
      {
        v44 = (*(v106 + 7) + (v66 << 6));
        *v44 = v107;
        v44[1] = v108;
        v44[2] = v109;
        v44[3] = v110;
        sub_1E13AD9D0(v128);
      }

      else
      {
        *(v106 + (v66 >> 6) + 8) |= 1 << v66;
        *(*(v43 + 6) + 8 * v66) = v6;
        v78 = (*(v43 + 7) + (v66 << 6));
        *v78 = v107;
        v78[1] = v108;
        v78[2] = v109;
        v78[3] = v110;
        sub_1E13AD9D0(v128);
        v79 = *(v43 + 2);
        v70 = __OFADD__(v79, 1);
        v80 = v79 + 1;
        if (v70)
        {
          goto LABEL_106;
        }

        *(v43 + 2) = v80;
      }

      ++v32;
      v103 += 192;
      v7 = v128;
      v6 = &v115;
      if (v102 == v32)
      {
        goto LABEL_91;
      }
    }

    v57 = 0.0;
    if (v53)
    {
      v57 = v58 * 0.5;
    }

LABEL_87:
    v51 = v60 + v57;
    if (a1 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_52;
  }

LABEL_91:
  memset(v128, 0, 186);
  v123 = *(v128 + 8);
  v124 = *(&v128[1] + 8);
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v115 = 0u;
  *(v122 + 10) = *(&v128[10] + 10);
  v121 = 0u;
  v122[0] = 0u;
  v120 = 0u;
LABEL_92:

  v128[2] = *&v126[16];
  v128[3] = *&v126[32];
  *&v128[4] = *&v126[48];
  v128[0] = v125;
  v128[1] = *v126;
  v82 = FrameAccumulator.measurements()();
  v83 = v90;
  *v90 = v82;
  *(v83 + 1) = v84;
  *(v83 + 2) = v85;
  *(v83 + 3) = v86;
  *(v83 + 4) = v105;
  v87 = v92;
  v83[5] = v94;
  v83[6] = v87;
}

unint64_t sub_1E13ADA04()
{
  result = qword_1ECEB2D98;
  if (!qword_1ECEB2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2D98);
  }

  return result;
}

unint64_t sub_1E13ADA58()
{
  result = qword_1ECEB2DA0;
  if (!qword_1ECEB2DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2DA0);
  }

  return result;
}

unint64_t sub_1E13ADAB0()
{
  result = qword_1ECEB2DA8;
  if (!qword_1ECEB2DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2DA8);
  }

  return result;
}

__n128 __swift_memcpy178_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 88);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1E13ADB5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 178))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E13ADBA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 178) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 178) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E13ADC24(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[24])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E13ADC68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_1E13ADCCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E13ADD28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1E13ADDAC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[25])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E13ADDF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchResultCondensedBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchResultCondensedBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CornerStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CornerStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E13AE104(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E13AE14C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E13AE1A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E13AE218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E13AE294(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E13AE2B4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t Color.init(_:alpha:)()
{
  v0 = sub_1E1AF2ACC();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8]);
  return sub_1E1AF2B3C();
}

__n128 Color.simd4.getter()
{
  v0 = Color.rgbaComponents.getter();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B05090;
  v8 = v0;
  v9 = v2;
  *(inited + 32) = v8;
  *(inited + 36) = v9;
  v10 = v4;
  v11 = v6;
  *(inited + 40) = v10;
  *(inited + 44) = v11;
  sub_1E13AE568(inited);
  v14 = v12;
  swift_setDeallocating();
  return v14;
}

double Color.rgbaComponents.getter()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6[0] = 0;
  v3 = 0;
  v4 = 0;
  sub_1E1355E88();

  v0 = sub_1E1AF6CBC();
  v1 = [v0 getRed:v6 green:&v5 blue:&v4 alpha:&v3];

  result = 0.0;
  if (v1)
  {
    return *v6;
  }

  return result;
}

uint64_t sub_1E13AE568(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 4)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E13AE5C4(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

unint64_t sub_1E13AE610()
{
  v0 = sub_1E1AF047C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DB8);
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v38 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v38 - v3;
  v5 = MEMORY[0x1E69E7CC0];
  v48 = MEMORY[0x1E69E7CC0];
  v6 = sub_1E1AF021C();
  v7 = swift_dynamicCastClass();
  v40 = v6;
  if (v7)
  {

    sub_1E1AF04CC();
    v8 = sub_1E1AF02AC();
    if ((*(*(v8 - 8) + 48))(v4, 1, v8) != 1)
    {
      sub_1E13AEBA8(v4);

      MEMORY[0x1E68FEF20](v9);
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_44;
      }

      goto LABEL_5;
    }

    sub_1E13AEBA8(v4);
  }

LABEL_6:
  sub_1E1AF04AC();
  sub_1E1AF025C();
  v10 = v41;
  sub_1E1AF045C();
  v11 = v42;
  v12 = sub_1E1AF046C();
  v13 = v47[0];
  if (v47[0])
  {
    while (1)
    {
      v14 = sub_1E13AE610(v12);
      v15 = v14;
      v16 = v14 >> 62;
      v17 = v14 >> 62 ? sub_1E1AF71CC() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = v5 >> 62;
      if (v5 >> 62)
      {
        v36 = sub_1E1AF71CC();
        v20 = v36 + v17;
        if (__OFADD__(v36, v17))
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }
      }

      else
      {
        v19 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v20 = v19 + v17;
        if (__OFADD__(v19, v17))
        {
          goto LABEL_38;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v18)
      {
        goto LABEL_19;
      }

LABEL_20:
      v5 = sub_1E1AF706C();
      v21 = v5 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v45 = v13;
      v46 = v17;
      v22 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v16)
      {
        v25 = v21;
        v26 = sub_1E1AF71CC();
        v21 = v25;
        v24 = v26;
        if (v26)
        {
LABEL_25:
          if (((v23 >> 1) - v22) < v46)
          {
            goto LABEL_41;
          }

          v27 = v21 + 8 * v22 + 32;
          v44 = v21;
          if (v16)
          {
            if (v24 < 1)
            {
              goto LABEL_43;
            }

            v43 = v5;
            sub_1E13AEB44();
            for (i = 0; i != v24; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DC8);
              v30 = sub_1E1545E24(v47, i, v15);
              v32 = *v31;

              (v30)(v47, 0);
              *(v27 + 8 * i) = v32;
            }

            v10 = v41;
            v11 = v42;
            v5 = v43;
            v28 = v46;
          }

          else
          {
            v28 = v46;
            swift_arrayInitWithCopy();
          }

          if (v28 > 0)
          {
            v33 = *(v44 + 16);
            v34 = __OFADD__(v33, v28);
            v35 = v33 + v28;
            if (v34)
            {
              goto LABEL_42;
            }

            *(v44 + 16) = v35;
          }

          goto LABEL_9;
        }
      }

      else
      {
        v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v24)
        {
          goto LABEL_25;
        }
      }

      if (v46 > 0)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        sub_1E1AF625C();
LABEL_5:
        sub_1E1AF62AC();

        v5 = v48;
        goto LABEL_6;
      }

LABEL_9:
      v12 = sub_1E1AF046C();
      v13 = v47[0];
      if (!v47[0])
      {
        goto LABEL_39;
      }
    }

    if (!v18)
    {
      v21 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v20 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_19:
    sub_1E1AF71CC();
    goto LABEL_20;
  }

LABEL_39:
  (*(v39 + 8))(v10, v11);
  return v5;
}

unint64_t sub_1E13AEB44()
{
  result = qword_1ECEB2DD0;
  if (!qword_1ECEB2DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB2DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2DD0);
  }

  return result;
}

uint64_t sub_1E13AEBA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ThreeDimensionalAppIconRealityRenderer.__allocating_init()()
{
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E13AECB0;

  return ThreeDimensionalAppIconRealityRenderer.init()();
}

uint64_t sub_1E13AECB0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t ThreeDimensionalAppIconRealityRenderer.init()()
{
  v1[6] = v0;
  v1[7] = *v0;
  sub_1E1AF644C();
  v1[8] = sub_1E1AF643C();
  v3 = sub_1E1AF63CC();
  v1[9] = v3;
  v1[10] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E13AEE70, v3, v2);
}

id sub_1E13AEE70()
{
  result = MTLCreateSystemDefaultDevice();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v0[6];
  *(v2 + 16) = result;
  sub_1E1AF04AC();
  swift_allocObject();
  *(v2 + 32) = sub_1E1AF033C();
  sub_1E13AE5C4(&unk_1F5C20D70);
  *(v2 + 48) = v3;
  sub_1E13AE5C4(&unk_1F5C20DA0);
  v12 = v4;
  sub_1E13AE5C4(&unk_1F5C20DD0);
  v6 = vmulq_f32(v12, v5);
  v6.i32[3] = 0;
  *(v2 + 64) = v6;
  *(v2 + 88) = [objc_allocWithZone(MEMORY[0x1E69741C0]) init];
  *(v2 + 96) = 0;
  sub_1E1AF0A7C();
  swift_allocObject();
  *(v0[6] + 24) = sub_1E1AF0A6C();

  v7 = sub_1E1AF0A5C();
  sub_1E1AF0A4C();
  sub_1E13B2998(&qword_1EE1D2AF0, MEMORY[0x1E697A3F8]);
  sub_1E1AF0A9C();

  v7(v0 + 2, 0);

  [*(v2 + 88) setPixelFormat_];
  [*(v2 + 88) setCompressionType_];
  [*(v2 + 88) setUsage_];
  [*(v2 + 88) setWidth_];
  [*(v2 + 88) setHeight_];
  result = [swift_unknownObjectRetain() newTextureWithDescriptor_];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = v0[6];
  swift_unknownObjectRelease();
  *(v9 + 80) = v8;
  sub_1E13AF84C();
  v10 = *(v2 + 32);
  v0[11] = v10;

  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_1E13AF1A8;

  return sub_1E13B1774(v10);
}

uint64_t sub_1E13AF1A8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1E13AF488;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1E13AF2C4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E13AF2C4()
{
  v1 = *(v0[6] + 32);
  v0[14] = v1;

  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_1E13AF36C;

  return sub_1E13B1FCC(v1);
}

uint64_t sub_1E13AF36C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1E13AF6DC;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1E13AF50C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E13AF488()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E13AF50C()
{
  v1 = *(v0[6] + 32);
  v0[17] = v1;

  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_1E13AF5C0;

  return sub_1E13AFDB4(v1);
}

uint64_t sub_1E13AF5C0()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1E13AF7C8;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1E13AF760;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E13AF6DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E13AF760()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_1E13AF7C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E13AF84C()
{
  v0 = sub_1E1AF0A0C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v41 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E38);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v38 - v3;
  v5 = sub_1E1AF03EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF044C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF04AC();
  swift_allocObject();
  sub_1E1AF033C();
  sub_1E1AF041C();
  sub_1E1AF03DC();
  sub_1E1AF043C();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  sub_1E1AF026C();
  v13 = sub_1E1AF039C();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_1E1AF035C();
  if (qword_1EE1D44F0 != -1)
  {
    swift_once();
  }

  v14 = (3.1416 * *&xmmword_1EE215570) / 180.0;
  v15 = vmuls_lane_f32(3.1416, *&xmmword_1EE215570, 1) / 180.0;
  v16 = vmuls_lane_f32(3.1416, xmmword_1EE215570, 2) / 180.0;
  sub_1E13AE5C4(&unk_1F5C20CA8);
  v39 = v17;
  v19 = __sincosf_stret(v14 * 0.5);
  v18.f32[0] = v19.__cosval;
  v40 = v18;
  v39 = vmulq_n_f32(v39, v19.__sinval);
  sub_1E13AE5C4(&unk_1F5C20CD8);
  v38 = v20;
  v21 = __sincosf_stret(v15 * 0.5);
  v22 = vmulq_n_f32(v38, v21.__sinval);
  v22.i32[3] = LODWORD(v21.__cosval);
  v23 = vnegq_f32(v22);
  v24 = vtrn2q_s32(v22, vtrn1q_s32(v22, v23));
  v25 = vrev64q_s32(v22);
  v25.i32[0] = v23.i32[1];
  v25.i32[3] = v23.i32[2];
  v40 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v22, v40.f32[0]), v25, v39, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v22, v23, 8uLL), *v39.f32, 1), vextq_s8(v24, v24, 8uLL), v39.f32[0]));
  sub_1E13AE5C4(&unk_1F5C20D08);
  v39 = v26;
  v27 = __sincosf_stret(v16 * 0.5);
  v28 = vmulq_n_f32(v39, v27.__sinval);
  v28.i32[3] = LODWORD(v27.__cosval);
  v29 = vnegq_f32(v28);
  v30 = vtrn2q_s32(v28, vtrn1q_s32(v28, v29));
  v31 = vrev64q_s32(v28);
  v31.i32[0] = v29.i32[1];
  v31.i32[3] = v29.i32[2];
  v40 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v28, v29, 8uLL), *v40.f32, 1), vextq_s8(v30, v30, 8uLL), v40.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v28, v40, 3), v31, v40, 2));
  v32 = sub_1E1AF027C();
  v33[1] = v40;
  v32(v42, 0);

  sub_1E1AF09EC();
  GenericGray = CGColorCreateGenericGray(0.0, 0.0);
  sub_1E1AF09FC();

  v35 = sub_1E1AF0A2C();
  sub_1E1AF0A1C();
  v35(v42, 0);
  v36 = sub_1E1AF0A5C();
  sub_1E1AF0A4C();
  sub_1E13B2998(&qword_1EE1D2AF0, MEMORY[0x1E697A3F8]);
  sub_1E1AF0A9C();
  v36(v42, 0);
}

uint64_t sub_1E13AFDB4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_1E1AF644C();
  v2[7] = sub_1E1AF643C();
  v4 = sub_1E1AF63CC();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E13AFE4C, v4, v3);
}

uint64_t sub_1E13AFE4C()
{
  *(v0 + 80) = sub_1E1AF04AC();
  if (qword_1EE1E31F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_1EE1E3200;
  v2 = qword_1EE1E3200;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_1E13AFF68;

  return MEMORY[0x1EEDD6AC0](0xD000000000000014, 0x80000001E1B5B9F0, v1);
}

uint64_t sub_1E13AFF68(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_1E13B0148;
  }

  else
  {
    v4[13] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_1E13B0090;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E13B0090()
{
  v1 = v0[13];
  v2 = v0[6];

  *(v2 + 96) = v1;

  sub_1E1AF024C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E13B0148()
{

  if (qword_1EE1E35F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE2161A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF54AC();

  v3 = *(v0 + 8);

  return v3();
}

double sub_1E13B02E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E30);
  v0 = swift_allocObject();
  v0[1] = xmmword_1E1B04930;
  v0[2] = xmmword_1E1B050D0;
  v0[3] = xmmword_1E1B050E0;
  v0[4] = xmmword_1E1B050F0;
  result = 0.0000498655644;
  v0[5] = xmmword_1E1B05100;
  v0[6] = xmmword_1E1B05110;
  qword_1EE2160A8 = v0;
  return result;
}

uint64_t sub_1E13B0358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E10);
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  sub_1E1AF644C();
  v4[15] = sub_1E1AF643C();
  v7 = sub_1E1AF63CC();
  v4[16] = v7;
  v4[17] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E13B045C, v7, v6);
}

uint64_t sub_1E13B045C()
{
  if (*(v0[11] + 96))
  {
    v1 = v0[10];

    v2 = [v1 layoutDirection];
    LODWORD(v3) = -3.5;
    if (v2 != 1)
    {
      *&v3 = 0.2;
    }

    HIDWORD(v3) = 1059481190;
    v18 = v3;
    sub_1E1AF04AC();
    v4 = sub_1E1AF027C();
    *(v5 + 32) = v18;
    v4(v0 + 2, 0);
  }

  v6 = v0[8];
  if (v6 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
  {
    v8 = 0;
    v9 = v0[13];
    v19 = v6 & 0xC000000000000001;
    v10 = v6 & 0xFFFFFFFFFFFFFF8;
    v11 = MEMORY[0x1E69E7CC0];
    while (v19)
    {
      v12 = MEMORY[0x1E68FFD80](v8, v0[8]);
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_19;
      }

LABEL_11:
      *v0[14] = v12;
      sub_1E1AEFE9C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1E172DBF8(0, v11[2] + 1, 1, v11);
      }

      v14 = v11[2];
      v13 = v11[3];
      if (v14 >= v13 >> 1)
      {
        v11 = sub_1E172DBF8(v13 > 1, v14 + 1, 1, v11);
      }

      v15 = v0[14];
      v11[2] = v14 + 1;
      sub_1E13B29E0(v15, v11 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14);
      ++v8;
      if (v6 == i)
      {
        goto LABEL_23;
      }
    }

    if (v8 >= *(v10 + 16))
    {
      goto LABEL_20;
    }

    v6 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
      goto LABEL_11;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v16 = v0[11];
  v0[18] = sub_1E14D675C(v11);

  v0[6] = v16;

  return MEMORY[0x1EEE6DFA0](sub_1E13B06E4, 0, 0);
}

uint64_t sub_1E13B06E4()
{
  v1 = v0[18];
  v2 = v0[9];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18);
  v4 = swift_task_alloc();
  v0[19] = v4;
  v4[2] = v1;
  v4[3] = v0 + 6;
  v4[4] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E20);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_1E13B0814;

  return MEMORY[0x1EEE6DBF8](v0 + 7, v3, v5, 0, 0, &unk_1E1B421B0, v4, v3);
}

uint64_t sub_1E13B0814()
{

  return MEMORY[0x1EEE6DFA0](sub_1E13B0948, 0, 0);
}

uint64_t sub_1E13B0968()
{
  v1 = v0[21];
  v2 = v0[11];

  v3 = *(v2 + 96);

  sub_1E1916D88(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t ThreeDimensionalAppIconRealityRenderer.snapshot(for:with:traitCollection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = v3;
  v4[3] = sub_1E1AF644C();
  v4[4] = sub_1E1AF643C();
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1E13B0AE0;

  return sub_1E13B0358(a1, a2, a3);
}

uint64_t sub_1E13B0AE0()
{

  v1 = sub_1E1AF63CC();

  return MEMORY[0x1EEE6DFA0](sub_1E13B0C1C, v1, v0);
}

uint64_t sub_1E13B0C1C()
{

  v1 = sub_1E13B0DC4();
  if (v1)
  {
    v2 = v1;
    v3 = sub_1E13B23EC(v1);
  }

  else
  {
    if (qword_1EE1D27A0 != -1)
    {
      swift_once();
    }

    v4 = sub_1E1AF591C();
    __swift_project_value_buffer(v4, qword_1EE215438);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    v3 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v3);
}

void *sub_1E13B0DC4()
{
  v1 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1E1AF09CC();
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - v6;
  v8 = sub_1E1AF09AC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  sub_1E1AF099C();
  v40 = v14;
  v41 = v9;
  (*(v9 + 16))(v12, v14, v8);
  sub_1E1AF09DC();
  v38 = v8;
  v15 = v0;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v33 = v16 + 16;
  v34 = dispatch_semaphore_create(0);
  v35 = *(v15 + 24);
  v36 = 0;
  v17 = v39;
  (*(v39 + 16))(v5, v7, v2);
  v18 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v19 = (v3 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = *(v17 + 32);
  v37 = v2;
  v21(v20 + v18, v5, v2);
  *(v20 + v19) = v16;
  v22 = v34;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v34;

  v23 = v22;
  v24 = v36;
  sub_1E1AF0A3C();
  if (v24)
  {
    (*(v39 + 8))(v7, v37);

    v25 = v38;
    if (qword_1EE1D27A0 != -1)
    {
      swift_once();
    }

    v26 = sub_1E1AF591C();
    __swift_project_value_buffer(v26, qword_1EE215438);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v27 = v42;
    v28 = v43;
    v44[3] = v43;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v44);
    (*(*(v28 - 8) + 16))(boxed_opaque_existential_0, v27, v28);
    sub_1E1AF385C();
    sub_1E1308058(v44, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    (*(v41 + 8))(v40, v25);
    return 0;
  }

  else
  {

    sub_1E1AF6A9C();

    (*(v39 + 8))(v7, v37);
    (*(v41 + 8))(v40, v38);
    swift_beginAccess();
    v31 = *(v16 + 16);
    v32 = v31;

    return v31;
  }
}

uint64_t sub_1E13B1364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E1AF09BC();
  if (v4 >> 62)
  {
    v6 = v4;
    v7 = sub_1E1AF71CC();
    v4 = v6;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_8:

    v5 = 0;
    goto LABEL_9;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E68FFD80](0);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_18;
    }

    v5 = *(v4 + 32);
    swift_unknownObjectRetain();
  }

LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DF8);
  inited = swift_initStackObject();
  v19 = xmmword_1E1B02CC0;
  *(inited + 16) = xmmword_1E1B02CC0;
  v9 = *MEMORY[0x1E695F9A8];
  *(inited + 32) = *MEMORY[0x1E695F9A8];
  v10 = v9;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  type metadata accessor for CGColorSpace(0);
  *(inited + 64) = v12;
  *(inited + 40) = DeviceRGB;
  sub_1E159F1D0(inited);
  swift_setDeallocating();
  sub_1E1308058(inited + 32, &unk_1ECEB2E00);
  if (!v5)
  {

LABEL_13:
    if (qword_1EE1D27A0 == -1)
    {
LABEL_14:
      v17 = sub_1E1AF591C();
      __swift_project_value_buffer(v17, qword_1EE215438);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = v19;
      sub_1E1AF382C();
      sub_1E1AF54AC();

      goto LABEL_15;
    }

LABEL_18:
    swift_once();
    goto LABEL_14;
  }

  v13 = objc_allocWithZone(MEMORY[0x1E695F658]);
  type metadata accessor for CIImageOption(0);
  sub_1E13B2998(&qword_1EE1D2588, type metadata accessor for CIImageOption);
  swift_unknownObjectRetain();
  v14 = sub_1E1AF5C6C();

  v15 = [v13 initWithMTLTexture:v5 options:v14];
  swift_unknownObjectRelease();

  if (!v15)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  v16 = *(a3 + 16);
  *(a3 + 16) = v15;

LABEL_15:
  sub_1E1AF6AAC();
  return swift_unknownObjectRelease();
}

uint64_t ThreeDimensionalAppIconRealityRenderer.deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t ThreeDimensionalAppIconRealityRenderer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1E13B1774(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_1E1AF044C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_1E1AF0B4C();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_1E1AF0B0C();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v5 = sub_1E1AF0B2C();
  v1[15] = v5;
  v1[16] = *(v5 - 8);
  v1[17] = swift_task_alloc();
  sub_1E1AF644C();
  v1[18] = sub_1E1AF643C();
  v7 = sub_1E1AF63CC();
  v1[19] = v7;
  v1[20] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E13B197C, v7, v6);
}

uint64_t sub_1E13B197C()
{
  sub_1E1AF037C();
  if (qword_1EE1E31F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_1EE1E3200;
  v2 = qword_1EE1E3200;
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *v3 = v0;
  v3[1] = sub_1E13B1A94;

  return MEMORY[0x1EEDD6710](0xD000000000000011, 0x80000001E1B5BA30, v1);
}

uint64_t sub_1E13B1A94(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = v4[19];
    v6 = v4[20];
    v7 = sub_1E13B1E08;
  }

  else
  {
    v4[23] = a1;
    v5 = v4[19];
    v6 = v4[20];
    v7 = sub_1E13B1BBC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E13B1BBC()
{
  v1 = v0[23];
  v2 = v0[17];
  v16 = v0[15];
  v17 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  v18 = v0[9];
  v8 = v0[8];
  v19 = v0[7];
  v20 = v0[6];

  *v3 = v1;
  (*(v4 + 104))(v3, *MEMORY[0x1E697A730], v6);

  sub_1E1AF0B1C();

  sub_1E1AF0B3C();
  sub_1E1AF041C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E28);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E1B02CD0;
  v10 = MEMORY[0x1E697A728];
  *(v9 + 56) = v16;
  *(v9 + 64) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v9 + 32));
  (*(v17 + 16))(boxed_opaque_existential_0, v2, v16);
  v12 = MEMORY[0x1E697A818];
  *(v9 + 96) = v18;
  *(v9 + 104) = v12;
  v13 = __swift_allocate_boxed_opaque_existential_0((v9 + 72));
  (*(v7 + 16))(v13, v5, v18);
  sub_1E1AF042C();

  (*(v19 + 8))(v8, v20);
  (*(v7 + 8))(v5, v18);
  (*(v17 + 8))(v2, v16);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E13B1E08()
{

  if (qword_1EE1D27A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE215438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF54AC();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E13B1FCC(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_1E1AF044C();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_1E1AF03BC();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  sub_1E1AF644C();
  v1[13] = sub_1E1AF643C();
  v5 = sub_1E1AF63CC();

  return MEMORY[0x1EEE6DFA0](sub_1E13B211C, v5, v4);
}

uint64_t sub_1E13B211C()
{
  v1 = v0[11];
  v2 = v0[8];

  v18 = objc_opt_self();
  v17 = (v2 + 8);
  sub_1E1AF04AC();
  for (i = 0; i != 5; ++i)
  {
    v4 = v0[12];
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[7];
    swift_allocObject();
    sub_1E1AF033C();
    v8 = [v18 whiteColor];
    sub_1E1AF03AC();
    sub_1E1AF041C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E28);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1E1B02CC0;
    *(v9 + 56) = v5;
    *(v9 + 64) = MEMORY[0x1E697A2F0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v9 + 32));
    (*(v1 + 16))(boxed_opaque_existential_0, v4, v5);
    sub_1E1AF042C();

    (*v17)(v6, v7);
    result = sub_1E1AF024C();
    if (qword_1EE1E1FF0 != -1)
    {
      result = swift_once();
    }

    if (i >= *(qword_1EE2160A8 + 16))
    {
      __break(1u);
      return result;
    }

    v12 = v0[12];
    v13 = v0[10];
    v19 = *(qword_1EE2160A8 + 16 * i + 32);
    v14 = sub_1E1AF027C();
    *(v15 + 16) = v19;
    v14(v0 + 2, 0);

    (*(v1 + 8))(v12, v13);
  }

  v16 = v0[1];

  return v16();
}

id sub_1E13B23EC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  v3 = *MEMORY[0x1E695F860];
  *(inited + 32) = *MEMORY[0x1E695F860];
  *(inited + 64) = MEMORY[0x1E69E6370];
  *(inited + 40) = 0;
  v4 = v3;
  sub_1E159F1AC(inited);
  swift_setDeallocating();
  sub_1E1308058(inited + 32, &unk_1ECEB2DE0);
  v5 = objc_allocWithZone(MEMORY[0x1E695F620]);
  type metadata accessor for CIContextOption(0);
  sub_1E13B2998(&qword_1EE1D2508, type metadata accessor for CIContextOption);
  v6 = sub_1E1AF5C6C();

  v7 = [v5 initWithOptions_];

  [a1 extent];
  v8 = [v7 createCGImage:a1 fromRect:?];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v8 imageOrientation:5];
  }

  else
  {
    if (qword_1EE1D27A0 != -1)
    {
      swift_once();
    }

    v11 = sub_1E1AF591C();
    __swift_project_value_buffer(v11, qword_1EE215438);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    return 0;
  }

  return v10;
}

uint64_t dispatch thunk of ThreeDimensionalAppIconRealityRenderer.__allocating_init()()
{
  v4 = (*(v0 + 144) + **(v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E13B27F4;

  return v4();
}

uint64_t sub_1E13B27F4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1E13B28F0(uint64_t a1)
{
  v3 = *(sub_1E1AF09CC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E13B1364(a1, v1 + v4, v5);
}

uint64_t sub_1E13B2998(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E13B29E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E13B2A50(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1E130B5DC;

  return sub_1E191D7BC(a1, a2, v6, v7, v8);
}

void *ThreeDimensionalAppIconSnapshotter.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for AppIconSnapshotCache();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1E159F1F4(MEMORY[0x1E69E7CC0]);
  v2[2] = v3;
  type metadata accessor for ThreeDimensionalAppIconSnapshotter.RendererManager();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  v2[3] = v4;
  v2[4] = a1;
  return v2;
}

void *ThreeDimensionalAppIconSnapshotter.init(_:)(uint64_t a1)
{
  type metadata accessor for AppIconSnapshotCache();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1E159F1F4(MEMORY[0x1E69E7CC0]);
  v1[2] = v3;
  type metadata accessor for ThreeDimensionalAppIconSnapshotter.RendererManager();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  v1[3] = v4;
  v1[4] = a1;
  return v1;
}

uint64_t sub_1E13B2C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E13B2C50, v3, 0);
}

uint64_t sub_1E13B2C50()
{
  v1 = *(v0[5] + 112);
  if (v1)
  {
    v0[8] = v1;
    v0[9] = sub_1E1AF644C();

    v0[10] = sub_1E1AF643C();
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1E13B2FC8;
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return sub_1E13B0358(v5, v3, v4);
  }

  else
  {
    type metadata accessor for ThreeDimensionalAppIconRealityRenderer();
    swift_allocObject();
    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = sub_1E13B2D9C;

    return ThreeDimensionalAppIconRealityRenderer.init()();
  }
}

uint64_t sub_1E13B2D9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 40);
    *(v4 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1E13B2EE8, v8, 0);
  }
}

uint64_t sub_1E13B2EE8()
{
  v1 = v0[5];
  *(v1 + 112) = v0[7];

  v3 = *(v1 + 112);
  if (v3)
  {
    v0[8] = v3;
    v0[9] = sub_1E1AF644C();

    v0[10] = sub_1E1AF643C();
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1E13B2FC8;
    v5 = v0[3];
    v6 = v0[4];
    v7 = v0[2];

    return sub_1E13B0358(v7, v5, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E13B2FC8()
{

  v1 = sub_1E1AF63CC();

  return MEMORY[0x1EEE6DFA0](sub_1E13B3104, v1, v0);
}

uint64_t sub_1E13B3104()
{

  v1 = sub_1E13B0DC4();
  if (v1)
  {
    v2 = v1;
    v3 = sub_1E13B23EC(v1);
  }

  else
  {
    if (qword_1EE1D27A0 != -1)
    {
      swift_once();
    }

    v4 = sub_1E1AF591C();
    __swift_project_value_buffer(v4, qword_1EE215438);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    v3 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t sub_1E13B32B8()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t ThreeDimensionalAppIconSnapshotter.snapshot(for:with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E13B3320, 0, 0);
}

uint64_t sub_1E13B3320()
{
  v1 = *(v0[4] + 32);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1E13B33C0;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1E13B2C2C(v4, v1, v3);
}

uint64_t sub_1E13B33C0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t ThreeDimensionalAppIconSnapshotter.snapshot<A>(for:into:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[28] = a5;
  v6[29] = v5;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  sub_1E1AF644C();
  v6[30] = sub_1E1AF643C();
  v8 = sub_1E1AF63CC();
  v6[31] = v8;
  v6[32] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1E13B3560, v8, v7);
}

uint64_t sub_1E13B3560()
{
  v1 = *(v0 + 232);
  v2 = sub_1E13B3848(*(v0 + 192), *(v0 + 208));
  *(v0 + 264) = v2;
  *(v0 + 272) = v3;
  v4 = *(v1 + 16);
  *(v0 + 160) = v2;
  *(v0 + 280) = v4;
  *(v0 + 168) = v3;

  sub_1E1AF6F6C();
  v5 = AppIconSnapshotCache.snapshot(for:)(v0 + 16);
  sub_1E134B88C(v0 + 16);
  if (v5)
  {
    v7 = *(v0 + 216);
    v6 = *(v0 + 224);

    v8 = *(v6 + 40);
    v9 = v5;
    v8(v5, 1, v7, v6);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(*(v0 + 232) + 32);
    v13 = swift_task_alloc();
    *(v0 + 288) = v13;
    *v13 = v0;
    v13[1] = sub_1E13B3714;
    v14 = *(v0 + 208);
    v15 = *(v0 + 192);

    return sub_1E13B2C2C(v15, v12, v14);
  }
}

uint64_t sub_1E13B3714(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 296) = a1;

  if (v1)
  {

    v4 = *(v3 + 248);
    v5 = *(v3 + 256);
    v6 = sub_1E13B43C4;
  }

  else
  {
    v4 = *(v3 + 248);
    v5 = *(v3 + 256);
    v6 = sub_1E13B43C0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

unint64_t sub_1E13B3848(unint64_t result, void *a2)
{
  if (result >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v4 = MEMORY[0x1E69E7CC0];
    if (!v3)
    {
LABEL_15:
      v32 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
      sub_1E130C384();
      v15 = sub_1E1AF5D6C();
      v17 = v16;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1E1B02CD0;
      v32 = 0x3A656C616373;
      v33 = 0xE600000000000000;
      [a2 displayScale];
      v19 = sub_1E1AF654C();
      MEMORY[0x1E68FECA0](v19);

      v20 = v33;
      *(v18 + 32) = v32;
      *(v18 + 40) = v20;
      v32 = 0x3A74756D6167;
      v33 = 0xE600000000000000;
      v34 = [a2 displayGamut];
      v21 = sub_1E1AF742C();
      MEMORY[0x1E68FECA0](v21);

      v22 = v33;
      *(v18 + 48) = v32;
      *(v18 + 56) = v22;
      v32 = v18;
      v23 = sub_1E1AF5D6C();
      v25 = v24;

      v32 = v15;
      v33 = v17;
      MEMORY[0x1E68FECA0](0x7374696172743A3ALL, 0xE90000000000003ALL);
      MEMORY[0x1E68FECA0](v23, v25);

      return v32;
    }

    v5 = result;
    v34 = MEMORY[0x1E69E7CC0];
    result = sub_1E135C088(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      break;
    }

    v6 = 0;
    v4 = v34;
    v7 = v5;
    v29 = v5;
    v30 = v5 & 0xC000000000000001;
    v27 = a2;
    v28 = v5 & 0xFFFFFFFFFFFFFF8;
    a2 = v3;
    while (1)
    {
      v8 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v30)
      {
        v9 = MEMORY[0x1E68FFD80](v6, v7);
      }

      else
      {
        if (v6 >= *(v28 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v7 + 8 * v6 + 32);
      }

      v31 = v9;
      sub_1E13B4108(&v31, &v32);

      v11 = v32;
      v10 = v33;
      v34 = v4;
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1E135C088((v12 > 1), v13 + 1, 1);
        v4 = v34;
      }

      *(v4 + 16) = v13 + 1;
      v14 = v4 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      ++v6;
      v7 = v29;
      if (v8 == a2)
      {
        a2 = v27;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v26 = result;
    v3 = sub_1E1AF71CC();
    result = v26;
  }

  __break(1u);
  return result;
}

uint64_t ThreeDimensionalAppIconSnapshotter.snapshot<A>(for:into:with:checking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[28] = a6;
  v7[29] = v6;
  v7[26] = a3;
  v7[27] = a5;
  v7[24] = a1;
  v7[25] = a2;
  sub_1E1AF644C();
  v7[30] = sub_1E1AF643C();
  v9 = sub_1E1AF63CC();
  v7[31] = v9;
  v7[32] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E13B3BF4, v9, v8);
}

uint64_t sub_1E13B3BF4()
{
  v1 = *(v0 + 232);
  v2 = sub_1E13B3848(*(v0 + 192), *(v0 + 208));
  *(v0 + 264) = v2;
  *(v0 + 272) = v3;
  v4 = *(v1 + 16);
  *(v0 + 160) = v2;
  *(v0 + 280) = v4;
  *(v0 + 168) = v3;

  sub_1E1AF6F6C();
  v5 = AppIconSnapshotCache.snapshot(for:)(v0 + 16);
  sub_1E134B88C(v0 + 16);
  if (v5)
  {
    v7 = *(v0 + 216);
    v6 = *(v0 + 224);

    v8 = *(v6 + 40);
    v9 = v5;
    v8(v5, 1, v7, v6);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(*(v0 + 232) + 32);
    v13 = swift_task_alloc();
    *(v0 + 288) = v13;
    *v13 = v0;
    v13[1] = sub_1E13B3DA8;
    v14 = *(v0 + 208);
    v15 = *(v0 + 192);

    return sub_1E13B2C2C(v15, v12, v14);
  }
}

uint64_t sub_1E13B3DA8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 296) = a1;

  if (v1)
  {

    v4 = *(v3 + 248);
    v5 = *(v3 + 256);
    v6 = sub_1E13B402C;
  }

  else
  {
    v4 = *(v3 + 248);
    v5 = *(v3 + 256);
    v6 = sub_1E13B3EDC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E13B3EDC()
{
  v1 = v0[37];

  if (v1)
  {
    v0[22] = v0[33];
    v2 = v0[37];
    v4 = v0[27];
    v3 = v0[28];
    v0[23] = v0[34];
    sub_1E1AF6F6C();
    sub_1E134E724((v0 + 7), (v0 + 12));
    swift_beginAccess();
    v5 = v2;
    sub_1E1387078(v2, (v0 + 12));
    swift_endAccess();
    sub_1E134B88C((v0 + 7));
    (*(v3 + 40))(v2, 1, v4, v3);
  }

  else
  {
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E13B402C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ThreeDimensionalAppIconSnapshotter.deinit()
{

  return v0;
}

uint64_t ThreeDimensionalAppIconSnapshotter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E13B4108@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E1B05090;
  v5 = *(v3 + 24);
  *(v4 + 32) = *(v3 + 16);
  *(v4 + 40) = v5;

  v16 = sub_1E1AF654C();
  v17 = v6;
  MEMORY[0x1E68FECA0](120, 0xE100000000000000);
  v7 = sub_1E1AF654C();
  MEMORY[0x1E68FECA0](v7);

  *(v4 + 48) = v16;
  *(v4 + 56) = v17;
  v8 = *(v3 + 64);
  if (v8 <= 3)
  {
    if (*(v3 + 64) > 1u)
    {
      if (v8 == 2)
      {
        v9 = 0x80000001E1B58330;
        v10 = 0xD000000000000016;
      }

      else
      {
        v9 = 0xE500000000000000;
        v10 = 0x646E756F72;
      }
    }

    else if (*(v3 + 64))
    {
      v9 = 0xEB00000000746365;
      v10 = 0x526465646E756F72;
    }

    else
    {
      v9 = 0xEB00000000646569;
      v10 = 0x6669636570736E75;
    }
  }

  else if (*(v3 + 64) <= 5u)
  {
    if (v8 == 4)
    {
      v10 = 0xD000000000000010;
      v9 = 0x80000001E1B58350;
    }

    else
    {
      v9 = 0xE400000000000000;
      v10 = 1819044208;
    }
  }

  else if (v8 == 6)
  {
    v9 = 0xE300000000000000;
    v10 = 7364969;
  }

  else if (v8 == 7)
  {
    v9 = 0xE600000000000000;
    v10 = 0x746365527674;
  }

  else
  {
    v9 = 0xE900000000000064;
    v10 = 0x656E726F64616E75;
  }

  *(v4 + 64) = v10;
  *(v4 + 72) = v9;
  v11 = *(v3 + 80);
  *(v4 + 80) = *(v3 + 72);
  *(v4 + 88) = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
  sub_1E130C384();
  v12 = sub_1E1AF5D6C();
  v14 = v13;

  *a2 = v12;
  a2[1] = v14;
  return result;
}

float32x4_t sub_1E13B43C8()
{
  sub_1E13AE5C4(&unk_1F5C20E00);
  v3 = v0;
  sub_1E13AE5C4(&unk_1F5C20E30);
  result = vmulq_f32(v3, v1);
  result.i32[3] = 0;
  xmmword_1ECEB2E40 = result;
  return result;
}

double sub_1E13B4414()
{
  result = 6.14672864e-10;
  xmmword_1EE215570 = xmmword_1E1B05340;
  return result;
}

size_t sub_1E13B4428@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2E50);
  v8 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v41 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v41 - v15;
  v17 = *a1;
  v58 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E60);
  sub_1E1AF2BEC();
  *&v18 = v59;
  v56 = v18;
  v55 = *(&v59 + 1);
  v58 = 0;
  sub_1E1AF2BEC();
  v54 = v59;
  sub_1E1AF04AC();
  swift_allocObject();
  v58 = sub_1E1AF033C();
  sub_1E1AF2BEC();
  v51 = *(&v59 + 1);
  v52 = v59;
  sub_1E1AF023C();
  v58 = MEMORY[0x1E68F8F50](0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E68);
  sub_1E1AF2BEC();
  v49 = *(&v59 + 1);
  v50 = v59;
  sub_1E1AF034C();
  swift_allocObject();
  v58 = sub_1E1AF033C();
  sub_1E1AF2BEC();
  v47 = *(&v59 + 1);
  v48 = v59;
  type metadata accessor for ArtworkLoader();
  sub_1E13B8C18(&qword_1ECEB2E70, type metadata accessor for ArtworkLoader);
  v19 = sub_1E1AF232C();
  v20 = v19;
  v45 = v21;
  v53 = v17;
  v22 = flt_1E1B0559C[v17];
  if (!(a3 >> 62))
  {
    v23 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = v19;
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_16:

    v25 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v33 = v53;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E78);
    (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
    result = sub_1E1488E8C(v16, v23);
    *&v35 = v56;
    *(&v35 + 1) = v55;
    v36 = v54;
    *a4 = v35;
    *(a4 + 16) = v36;
    *(a4 + 32) = result;
    *(a4 + 40) = 0;
    v37 = v51;
    *(a4 + 48) = v52;
    *(a4 + 56) = v37;
    v38 = v49;
    *(a4 + 64) = v50;
    *(a4 + 72) = v38;
    v39 = v47;
    *(a4 + 80) = v48;
    *(a4 + 88) = v39;
    v40 = v45;
    *(a4 + 96) = v46;
    *(a4 + 104) = v40;
    *(a4 + 112) = v33;
    *(a4 + 116) = v22;
    *(a4 + 120) = v22 * 200.0;
    *(a4 + 128) = a2;
    *(a4 + 136) = v25;
    return result;
  }

  v23 = sub_1E1AF71CC();
  v46 = v20;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_3:
  *&v59 = MEMORY[0x1E69E7CC0];
  result = sub_1E135C400(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v42 = v16;
    v43 = a4;
    v44 = a2;
    v25 = v59;
    if ((a3 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v23; ++i)
      {
        *v13 = MEMORY[0x1E68FFD80](i, a3);
        sub_1E1AEFE9C();
        *&v59 = v25;
        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1E135C400(v27 > 1, v28 + 1, 1);
          v25 = v59;
        }

        *(v25 + 16) = v28 + 1;
        sub_1E137F600(v13, v25 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v28, &unk_1ECEB2E50);
      }
    }

    else
    {
      v29 = 32;
      v30 = v23;
      do
      {
        *v10 = *(a3 + v29);

        sub_1E1AEFE9C();
        *&v59 = v25;
        v32 = *(v25 + 16);
        v31 = *(v25 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1E135C400(v31 > 1, v32 + 1, 1);
          v25 = v59;
        }

        *(v25 + 16) = v32 + 1;
        sub_1E137F600(v10, v25 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v32, &unk_1ECEB2E50);
        v29 += 8;
        --v30;
      }

      while (v30);
    }

    a2 = v44;
    a4 = v43;
    v16 = v42;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E13B499C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v34 = v1[6];
  v35 = v3;
  v36 = v1[8];
  v4 = v1[3];
  v30 = v1[2];
  v31 = v4;
  v5 = v1[5];
  v32 = v1[4];
  v33 = v5;
  v6 = v1[1];
  v28 = *v1;
  v29 = v6;
  v7 = swift_allocObject();
  v8 = v1[7];
  v7[7] = v1[6];
  v7[8] = v8;
  v7[9] = v1[8];
  v9 = v1[3];
  v7[3] = v1[2];
  v7[4] = v9;
  v10 = v1[5];
  v7[5] = v1[4];
  v7[6] = v10;
  v11 = v1[1];
  v7[1] = *v1;
  v7[2] = v11;
  v12 = swift_allocObject();
  v13 = v1[7];
  v12[7] = v1[6];
  v12[8] = v13;
  v12[9] = v1[8];
  v14 = v1[3];
  v12[3] = v1[2];
  v12[4] = v14;
  v15 = v1[5];
  v12[5] = v1[4];
  v12[6] = v15;
  v16 = v1[1];
  v12[1] = *v1;
  v12[2] = v16;
  sub_1E13B8938(&v28, v27);
  sub_1E13B8938(&v28, v27);
  sub_1E1AF0E4C();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E80) + 36)) = 0xBFB47AE147AE147BLL;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E88) + 36)) = 0x3FF2666666666666;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E90) + 36)) = 0x3FF0000000000000;
  v17 = sub_1E1AF22BC();
  v18 = sub_1E1AF26DC();
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E98) + 36);
  *v19 = v17;
  *(v19 + 8) = v18;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2EA0) + 36)) = 0;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2EA8) + 36)) = 0;
  v20 = swift_allocObject();
  v21 = v35;
  *(v20 + 7) = v34;
  *(v20 + 8) = v21;
  *(v20 + 9) = v36;
  v22 = v31;
  *(v20 + 3) = v30;
  *(v20 + 4) = v22;
  v23 = v33;
  *(v20 + 5) = v32;
  *(v20 + 6) = v23;
  v24 = v29;
  *(v20 + 1) = v28;
  *(v20 + 2) = v24;
  v25 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2EB0) + 36));
  *v25 = sub_1E13B8970;
  v25[1] = v20;
  v25[2] = 0;
  v25[3] = 0;
  return sub_1E13B8938(&v28, v27);
}

uint64_t sub_1E13B4C28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18);
  v165 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v167 = &v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v169 = (&v160 - v5);
  v184 = sub_1E1AF320C();
  v222 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v183 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_1E1AF324C();
  v221 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v181 = &v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1E1AF32BC();
  v8 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v188 = (&v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v170 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v198 = &v160 - v13;
  v210 = sub_1E1AEFCCC();
  v14 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v174 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_1E1AEFEAC();
  v16 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v201 = &v160 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2E50);
  v212 = *(v219 - 8);
  v18 = *(v212 + 64);
  v19 = MEMORY[0x1EEE9AC00](v219);
  v161 = &v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v166 = &v160 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v168 = &v160 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v217 = &v160 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v197 = &v160 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v196 = &v160 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v195 = &v160 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v160 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2EC0);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v176 = (&v160 - v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2EC8);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v203 = &v160 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v202 = (&v160 - v40);
  v41 = 0;
  v42 = *(a1 + 136);
  v204 = (v35 + 48);
  v205 = (v35 + 56);
  v43 = v33;
  v175 = v42;
  v44 = *(v42 + 16);
  v200 = (v16 + 16);
  v207 = (v16 + 32);
  v208 = (v16 + 8);
  v194 = v18 + 7;
  v209 = (v14 + 48);
  v173 = (v14 + 32);
  v187 = *MEMORY[0x1E69E8018];
  v186 = (v8 + 104);
  v185 = (v8 + 8);
  v180 = v229;
  v179 = (v222 + 8);
  v177 = (v14 + 8);
  v178 = (v221 + 8);
  v218 = a1;
  v192 = v44;
  v193 = v34;
  v211 = v33;
  while (1)
  {
    if (v41 == v44)
    {
      v46 = 1;
      v214 = v44;
      v47 = v203;
    }

    else
    {
      if (v41 >= v44)
      {
        goto LABEL_59;
      }

      v48 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_60;
      }

      v49 = v176;
      v50 = v175 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v41;
      v51 = *(v34 + 48);
      *v176 = v41;
      sub_1E134FD1C(v50, v49 + v51, &unk_1ECEB2E50);
      v52 = v49;
      v47 = v203;
      sub_1E137F600(v52, v203, &qword_1ECEB2EC0);
      v46 = 0;
      v214 = v48;
    }

    v53 = v202;
    (*v205)(v47, v46, 1, v34);
    sub_1E137F600(v47, v53, &unk_1ECEB2EC8);
    result = (*v204)(v53, 1, v34);
    if (result == 1)
    {
      return result;
    }

    v215 = *v53;
    v55 = v53 + *(v34 + 48);
    v56 = *v55;
    v58 = v219;
    v57 = v220;
    v59 = *(v219 + 48);
    v60 = *v207;
    v61 = v195;
    (*v207)(&v195[v59], &v55[v59], v220);
    v62 = *(v58 + 48);
    *v43 = v56;
    v199 = v60;
    v60(&v43[v62], &v61[v59], v57);
    v63 = *(v56 + 72);
    v64 = *(v56 + 80);
    *&v228 = v63;
    *(&v228 + 1) = v64;
    if (Artwork.Crop.preferredContentMode.getter() == 1)
    {
      v222 = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, 128.0, 128.0);
    }

    else
    {
      *&v228 = v63;
      *(&v228 + 1) = v64;

      v222 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&v228, 0, 128.0, 128.0);
    }

    v65 = v218;
    v66 = *(v218 + 12);
    if (!v66)
    {
      goto LABEL_64;
    }

    v67 = v196;
    sub_1E134FD1C(v43, v196, &unk_1ECEB2E50);

    v68 = v220;
    v69 = *(v219 + 48);
    v191 = *v200;
    v191(v201, v67 + v69, v220);
    v190 = sub_1E13B8C18(&qword_1EE1FADB0, MEMORY[0x1E69695A8]);
    sub_1E1AF6F6C();
    v206 = *v208;
    v206(v67 + v69, v68);
    v70 = swift_allocObject();
    v221 = v66;
    swift_weakInit();
    v71 = v197;
    sub_1E134FD1C(v43, v197, &unk_1ECEB2E50);
    sub_1E134FD1C(v71, v217, &unk_1ECEB2E50);
    v72 = (*(v212 + 80) + 168) & ~*(v212 + 80);
    v73 = (v194 + v72) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    v75 = v65[7];
    *(v74 + 112) = v65[6];
    *(v74 + 128) = v75;
    *(v74 + 144) = v65[8];
    v76 = v65[3];
    *(v74 + 48) = v65[2];
    *(v74 + 64) = v76;
    v77 = v65[5];
    *(v74 + 80) = v65[4];
    *(v74 + 96) = v77;
    v78 = v65[1];
    *(v74 + 16) = *v65;
    *(v74 + 32) = v78;
    *(v74 + 160) = v215;
    sub_1E137F600(v71, v74 + v72, &unk_1ECEB2E50);
    *(v74 + v73) = v70;
    v79 = v222;
    v80 = *(v222 + 16);
    v81 = *(v222 + 24);
    sub_1E13B8938(v65, &v228);

    sub_1E13B8938(v65, &v228);

    sub_1E13B8938(v65, &v228);
    v216 = v70;

    v82 = v198;
    sub_1E1AEFCAC();
    v83 = v210;
    v84 = *v209;
    v85 = (*v209)(v82, 1, v210);
    v213 = v74;
    if (v85 == 1)
    {
      sub_1E1308058(v82, &unk_1ECEB4B60);
LABEL_17:
      v86 = v221;
      goto LABEL_49;
    }

    v87 = v174;
    (*v173)(v174, v82, v83);
    v88 = sub_1E1AEFC9C();
    v86 = v221;
    if (!v89)
    {
      (*v177)(v87, v83);
      goto LABEL_49;
    }

    if (v88 == 0x6D696D6574737973 && v89 == 0xEB00000000656761)
    {
      break;
    }

    v90 = sub_1E1AF74AC();

    v171 = *v177;
    v171(v87, v83);
    if (v90)
    {
      goto LABEL_24;
    }

LABEL_49:
    v139 = swift_allocObject();
    swift_weakInit();
    sub_1E134FD1C(v230, v226, &unk_1ECEB5670);
    v140 = swift_allocObject();
    *(v140 + 16) = v139;
    *(v140 + 24) = v79;
    v141 = v213;
    *(v140 + 32) = sub_1E13B8978;
    *(v140 + 40) = v141;
    v142 = v226[1];
    *(v140 + 48) = v226[0];
    *(v140 + 64) = v142;
    *(v140 + 80) = v227;
    v143 = *(v86 + 32);
    v145 = v188;
    v144 = v189;
    *v188 = v143;
    (*v186)(v145, v187, v144);

    v143;
    LOBYTE(v143) = sub_1E1AF32EC();
    (*v185)(v145, v144);
    if ((v143 & 1) == 0)
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v146 = swift_allocObject();
    *(v146 + 16) = v86;
    *(v146 + 24) = v79;
    *(v146 + 32) = sub_1E13B8A50;
    *(v146 + 40) = v140;
    *(v146 + 48) = sub_1E13B8978;
    *(v146 + 56) = v141;
    *(v146 + 64) = 1;
    v229[2] = sub_1E13B8A60;
    v229[3] = v146;
    *&v228 = MEMORY[0x1E69E9820];
    *(&v228 + 1) = 1107296256;
    v229[0] = sub_1E1302D64;
    v229[1] = &block_descriptor_3;
    v147 = _Block_copy(&v228);
    v215 = v139;
    v148 = v147;

    v149 = v181;
    sub_1E1AF322C();
    v224 = MEMORY[0x1E69E7CC0];
    sub_1E13B8C18(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    v222 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
    v151 = v183;
    v150 = v184;
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v149, v151, v148);
    _Block_release(v148);

    v152 = v218;
    sub_1E13B8A74(v218);
    sub_1E1308058(v217, &unk_1ECEB2E50);

    sub_1E13B8A74(v152);

    (*v179)(v151, v150);
    (*v178)(v149, v182);
    sub_1E1308058(v230, &unk_1ECEB5670);

LABEL_3:

    v43 = v211;
    v34 = v193;
LABEL_4:
    sub_1E1308058(v43, &unk_1ECEB2E50);
    v44 = v192;
    v41 = v214;
  }

  v171 = *v177;
  v171(v87, v83);
LABEL_24:
  v172 = v84;
  v91 = sub_1E159F330(MEMORY[0x1E69E7CC0]);
  v92 = v91;
  v93 = v91 + 64;
  v94 = 1 << *(v91 + 32);
  if (v94 < 64)
  {
    v95 = ~(-1 << v94);
  }

  else
  {
    v95 = -1;
  }

  v96 = v95 & *(v91 + 64);
  v97 = (v94 + 63) >> 6;

  v98 = 0;
  if (v96)
  {
    while (1)
    {
      v99 = v98;
LABEL_33:
      v100 = __clz(__rbit64(v96)) | (v99 << 6);
      v101 = *(*(v92 + 48) + v100);
      v96 &= v96 - 1;
      v102 = (*(v92 + 56) + 16 * v100);
      v103 = *v102;
      v104 = v102[1];
      *&v228 = v80;
      *(&v228 + 1) = v81;
      *&v226[0] = qword_1E1B055C0[v101];
      *(&v226[0] + 1) = 0xE300000000000000;
      v224 = v103;
      v225 = v104;
      sub_1E13B8AA4();

      v80 = sub_1E1AF6E2C();
      v106 = v105;

      v81 = v106;
      if (!v96)
      {
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
LABEL_29:
    v99 = v98 + 1;
    if (__OFADD__(v98, 1))
    {
      __break(1u);
      goto LABEL_58;
    }

    if (v99 >= v97)
    {
      break;
    }

    v96 = *(v93 + 8 * v99);
    ++v98;
    if (v96)
    {
      v98 = v99;
      goto LABEL_33;
    }
  }

  v107 = v170;
  sub_1E1AEFCAC();

  v108 = v210;
  if ((v172)(v107, 1, v210) == 1)
  {
    sub_1E1308058(v107, &unk_1ECEB4B60);
    v79 = v222;
    goto LABEL_17;
  }

  sub_1E1AEFC6C();
  v110 = v109;
  v171(v107, v108);
  v86 = v221;
  v79 = v222;
  if (!v110)
  {
    goto LABEL_49;
  }

  v111 = sub_1E1AF5DBC();
  v112 = [objc_opt_self() _systemImageNamed_];

  if (!v112)
  {

    v45 = v218;
    sub_1E13B8A74(v218);
    sub_1E1308058(v217, &unk_1ECEB2E50);

    sub_1E13B8A74(v45);

    sub_1E1308058(v230, &unk_1ECEB5670);
    goto LABEL_3;
  }

  sub_1E13B8A74(v218);

  v113 = *(v79 + 24);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E78);
  v172 = *(v114 + 64);
  v115 = v168;
  v116 = v169;
  *v169 = v112;
  v117 = v217;
  sub_1E134FD1C(v217, v115, &unk_1ECEB2E50);
  v118 = *(*v115 + 48);
  v119 = v118;
  v120 = v112;
  v171 = v113;

  *(v116 + 1) = v118;
  v121 = v166;
  sub_1E134FD1C(v117, v166, &unk_1ECEB2E50);

  v199(&v116[v172], v121 + *(v219 + 48), v220);
  v122 = *(v114 - 8);
  v123 = *(v122 + 56);
  v199 = v114;
  v123(v116, 0, 1, v114);
  v124 = *(v218 + 4);
  v125 = *(v218 + 5);
  v231 = v125;
  v232[0] = v124;
  *&v228 = v124;
  *(&v228 + 1) = v125;
  sub_1E134FD1C(v232, v226, &qword_1ECEB2E20);
  sub_1E134FD1C(&v231, v226, &qword_1ECEB2ED8);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2EE0);
  sub_1E1AF2BFC();
  v126 = v224;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v126 = sub_1E14E6954(v126);
  }

  v127 = v167;
  v128 = v215;
  v43 = v211;
  if ((v215 & 0x8000000000000000) != 0)
  {
    goto LABEL_62;
  }

  if (v215 >= v126[2])
  {
    goto LABEL_63;
  }

  v162 = v122;
  v215 = v120;
  v129 = *(v219 + 48);
  v130 = (*(v165 + 80) + 32) & ~*(v165 + 80);
  v131 = *(v165 + 72);
  sub_1E13B8AF8(v169, v126 + v130 + v131 * v128);
  *&v226[0] = v124;
  *(&v226[0] + 1) = v125;
  v223 = v126;
  sub_1E1AF2C0C();
  sub_1E1308058(v232, &qword_1ECEB2E20);
  sub_1E1308058(&v231, &qword_1ECEB2ED8);
  v206(&v168[v129], v220);
  v163 = v125;
  v164 = v124;
  *&v228 = v124;
  *(&v228 + 1) = v125;
  sub_1E1AF2BFC();
  v132 = *&v226[0];
  v133 = *(*&v226[0] + 16);
  if (!v133)
  {
LABEL_48:

    *&v228 = v164;
    *(&v228 + 1) = v163;
    sub_1E1AF2BFC();
    v137 = *&v226[0];
    v138 = v218;
    v228 = *v218;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2EE8);
    sub_1E1AF2BFC();
    sub_1E13B6BDC(v137, *&v226[0]);

LABEL_52:
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v154 = v217;
    if (Strong)
    {
      v155 = v161;
      sub_1E134FD1C(v217, v161, &unk_1ECEB2E50);

      v156 = v220;
      v157 = *(v219 + 48);
      v191(v201, v155 + v157, v220);
      sub_1E1AF6F6C();
      v158 = v155 + v157;
      v154 = v217;
      v206(v158, v156);
      ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)(&v228, 1);
      v159 = v215;

      sub_1E134B88C(&v228);
    }

    else
    {

      v159 = v215;
    }

    sub_1E13B8A74(v138);
    v34 = v193;
    sub_1E1308058(v154, &unk_1ECEB2E50);

    sub_1E1308058(v230, &unk_1ECEB5670);

    goto LABEL_4;
  }

  v134 = 0;
  v135 = *&v226[0] + v130;
  v136 = (v162 + 48);
  while (v134 < *(v132 + 16))
  {
    sub_1E134FD1C(v135, v127, &qword_1ECEB2E18);
    if ((*v136)(v127, 1, v199) == 1)
    {
      sub_1E1308058(v127, &qword_1ECEB2E18);

      v138 = v218;
      v43 = v211;
      goto LABEL_52;
    }

    ++v134;
    sub_1E1308058(v127, &qword_1ECEB2E18);
    v135 += v131;
    v43 = v211;
    if (v133 == v134)
    {
      goto LABEL_48;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  type metadata accessor for ArtworkLoader();
  sub_1E13B8C18(&qword_1ECEB2E70, type metadata accessor for ArtworkLoader);
  result = sub_1E1AF231C();
  __break(1u);
  return result;
}

void sub_1E13B64AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v64 = a6;
  v70 = a5;
  v11 = sub_1E1AEFEAC();
  v71 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2E50);
  v14 = MEMORY[0x1EEE9AC00](v69);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v54 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18) - 8;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v28 = &v54 - v27;
  if (a1)
  {
    v62 = v26;
    v59 = a8;
    v60 = v16;
    v55 = v13;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E78);
    v30 = *(v29 + 64);
    *v28 = a1;
    sub_1E134FD1C(a7, v21, &unk_1ECEB2E50);
    v63 = v21;
    v31 = *v21;
    v68 = v11;
    v32 = *(v31 + 48);
    v33 = v32;
    v58 = a1;

    *(v28 + 1) = v32;
    v34 = v68;
    v54 = a7;
    v35 = v71;
    sub_1E134FD1C(a7, v19, &unk_1ECEB2E50);

    v36 = v69;
    (*(v35 + 32))(&v28[v30], &v19[*(v69 + 48)], v34);
    v37 = *(v29 - 8);
    (*(v37 + 56))(v28, 0, 1, v29);
    v38 = *(v70 + 32);
    v74 = *(v70 + 40);
    v75[0] = v38;
    v66 = v74;
    v67 = v38;
    *&v72[0] = v38;
    *(&v72[0] + 1) = v74;
    sub_1E134FD1C(v75, v73, &qword_1ECEB2E20);
    sub_1E134FD1C(&v74, v73, &qword_1ECEB2ED8);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2EE0);
    sub_1E1AF2BFC();
    v39 = v73[4];
    v40 = v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v41 = v63;
      if ((v64 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

      if (v39[2] <= v64)
      {
        goto LABEL_19;
      }

      v57 = v37;
      v61 = *(v40 + 48);
      v56 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v37 = *(v62 + 72);
      sub_1E13B8AF8(v28, v39 + v56 + v37 * v64);
      v42 = v67;
      v43 = v34;
      v44 = v66;
      v73[0] = v67;
      v73[1] = v66;
      v73[3] = v39;
      sub_1E1AF2C0C();
      sub_1E1308058(v75, &qword_1ECEB2E20);
      sub_1E1308058(&v74, &qword_1ECEB2ED8);
      v45 = *(v35 + 8);
      v64 = v35 + 8;
      v63 = v45;
      (v45)(&v41[v61], v43);
      *&v72[0] = v42;
      *(&v72[0] + 1) = v44;
      sub_1E1AF2BFC();
      v39 = v73[0];
      v35 = *(v73[0] + 16);
      if (!v35)
      {
        break;
      }

      v40 = 0;
      v46 = v73[0] + v56;
      v47 = (v57 + 48);
      v34 = &qword_1ECEB2E18;
      v28 = &unk_1E1B05240;
      while (v40 < v39[2])
      {
        sub_1E134FD1C(v46, v25, &qword_1ECEB2E18);
        if ((*v47)(v25, 1, v29) == 1)
        {
          sub_1E1308058(v25, &qword_1ECEB2E18);

          goto LABEL_12;
        }

        ++v40;
        sub_1E1308058(v25, &qword_1ECEB2E18);
        v46 += v37;
        if (v35 == v40)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_17:
      v39 = sub_1E14E6954(v39);
    }

LABEL_10:

    *&v72[0] = v67;
    *(&v72[0] + 1) = v66;
    sub_1E1AF2BFC();
    v48 = v73[0];
    v72[0] = *v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2EE8);
    sub_1E1AF2BFC();
    sub_1E13B6BDC(v48, v73[0]);

LABEL_12:
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v50 = v68;
    v51 = v71;
    v52 = v60;
    if (Strong)
    {
      sub_1E134FD1C(v54, v60, &unk_1ECEB2E50);

      v53 = *(v69 + 48);
      (*(v51 + 16))(v55, v52 + v53, v50);
      sub_1E13B8C18(&qword_1EE1FADB0, MEMORY[0x1E69695A8]);
      sub_1E1AF6F6C();
      (v63)(v52 + v53, v50);
      ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)(v72, 1);

      sub_1E134B88C(v72);
    }

    else
    {
    }
  }
}

uint64_t sub_1E13B6BDC(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2EF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v76 = v65 - v4;
  v5 = sub_1E1AF0ADC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v75 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v65 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2F00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v77 = v65 - v11;
  v85 = sub_1E1AF0AFC();
  v73 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v81 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DB8);
  v80 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = v65 - v13;
  v84 = sub_1E1AF047C();
  v74 = *(v84 - 1);
  v14 = MEMORY[0x1EEE9AC00](v84);
  v83 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v78 = (v65 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18) - 8;
  result = MEMORY[0x1EEE9AC00](v17);
  v21 = v65 - v20;
  v22 = *(a1 + 16);
  v72 = a1;
  if (v22)
  {
    v23 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v24 = v22 - 1;
    v25 = *(v19 + 72);
    do
    {
      sub_1E134FD1C(v23, v21, &qword_1ECEB2E18);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E78);
      v27 = (*(*(v26 - 8) + 48))(v21, 1, v26);
      result = sub_1E1308058(v21, &qword_1ECEB2E18);
      v29 = v24-- != 0;
      v30 = v27 == 1;
      v31 = v27 != 1;
      if (v30)
      {
        break;
      }

      v23 += v25;
    }

    while (v29);
    if (!v82)
    {
      return result;
    }
  }

  else
  {
    v31 = 1;
    if (!v82)
    {
      return result;
    }
  }

  result = sub_1E1AF03FC();
  if (result)
  {
    v32 = result;
    if (v31)
    {
      v82 = sub_1E1AF04AC();
      v65[1] = v32;
      sub_1E1AF025C();
      v93 = MEMORY[0x1E69E7CC0];
      sub_1E13B8C18(&qword_1EE1E22E0, MEMORY[0x1E697A360]);
      sub_1E1AF60AC();
      sub_1E1302CD4(&qword_1EE1E22E8, &qword_1ECEB2DB8);
      sub_1E1AF6DBC();
      if (v90)
      {
        v33 = (v74 + 1);
        do
        {
          sub_1E1AF048C();
          v34 = sub_1E1AF5E9C();
          v36 = v35;

          *&v90 = v34;
          *(&v90 + 1) = v36;
          v88 = 0x72656E6F6C63;
          v89 = 0xE600000000000000;
          sub_1E13B8AA4();
          v37 = sub_1E1AF6E9C();

          if ((v37 & 1) != 0 && (v38 = v83, sub_1E1AF025C(), sub_1E13B8C18(&qword_1EE1E22D8, MEMORY[0x1E697A360]), v39 = v84, sub_1E1AF665C(), sub_1E1AF668C(), (*v33)(v38, v39), v90 == v88))
          {
          }

          else
          {
            sub_1E1AF70BC();
            sub_1E1AF70FC();
            sub_1E1AF710C();
            sub_1E1AF70CC();
          }

          sub_1E1AF6DBC();
        }

        while (v90);
      }

      (*(v80 + 8))(v86, v87);
      v40 = v93;
      if (v93 < 0 || (v93 & 0x4000000000000000) != 0)
      {
        goto LABEL_65;
      }

      v41 = *(v93 + 16);
LABEL_24:
      v42 = v72;
      v43 = v77;
      if (v41)
      {
        v44 = 0;
        v45 = v40 & 0xC000000000000001;
        v46 = v40 + 32;
        v84 = (v73 + 7);
        v78 = (v73 + 6);
        v74 = (v73 + 4);
        v67 = (v73 + 2);
        ++v73;
        v66 = xmmword_1E1B02CC0;
        v79 = v9;
        v71 = v40;
        v70 = v41;
        v69 = v40 & 0xC000000000000001;
        v68 = v40 + 32;
        do
        {
          if (v45)
          {
            v83 = MEMORY[0x1E68FFD80](v44, v40);
            v47 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              goto LABEL_62;
            }
          }

          else
          {
            if (v44 >= *(v40 + 16))
            {
              goto LABEL_63;
            }

            v83 = *(v46 + 8 * v44);

            v47 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              v41 = sub_1E1AF71CC();
              goto LABEL_24;
            }
          }

          v80 = v47;
          v82 = sub_1E1917CB0(v42, v44);
          if (v82)
          {
            v48 = sub_1E13AE610();
            v49 = v48;
            if (v48 >> 62)
            {
              v50 = sub_1E1AF71CC();
              if (v50)
              {
LABEL_33:
                if (v50 < 1)
                {
                  goto LABEL_64;
                }

                v51 = 0;
                v86 = (v49 & 0xC000000000000001);
                v87 = v49;
                while (2)
                {
                  if (v86)
                  {
                    MEMORY[0x1E68FFD80](v51, v49);
                  }

                  else
                  {
                  }

                  sub_1E1AF021C();
                  sub_1E1AF04CC();
                  v52 = sub_1E1AF02AC();
                  v53 = *(*(v52 - 8) + 48);
                  if (v53(v9, 1, v52))
                  {

                    sub_1E1308058(v9, &qword_1ECEB2DC0);
                    v90 = 0u;
                    v91 = 0u;
                    v92 = 0;
                    goto LABEL_46;
                  }

                  v54 = sub_1E1AF028C();
                  sub_1E1308058(v9, &qword_1ECEB2DC0);
                  if (*(v54 + 16))
                  {
                    sub_1E1300B24(v54 + 32, &v90);

                    if (*(&v91 + 1))
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2F18);
                      v55 = v85;
                      v56 = swift_dynamicCast();
                      (*v84)(v43, v56 ^ 1u, 1, v55);
                      if ((*v78)(v43, 1, v55) == 1)
                      {

                        v9 = v79;
                        v49 = v87;
                        goto LABEL_47;
                      }

                      (*v74)(v81, v43, v55);

                      v57 = v76;
                      sub_1E1AF0ABC();
                      v58 = sub_1E1AF0AAC();
                      (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
                      v59 = [objc_opt_self() whiteColor];
                      sub_1E1AF0ACC();
                      v60 = v81;
                      sub_1E1AF0AEC();
                      v61 = sub_1E1AF04BC();
                      if (!v53(v62, 1, v52))
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2F20);
                        v63 = swift_allocObject();
                        *(v63 + 16) = v66;
                        *(v63 + 56) = v55;
                        *(v63 + 64) = MEMORY[0x1E697A6A0];
                        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v63 + 32));
                        (*v67)(boxed_opaque_existential_0, v60, v55);
                        sub_1E1AF029C();
                      }

                      v61(&v90, 0);

                      (*v73)(v60, v55);
                      v43 = v77;
                      v9 = v79;
                      v49 = v87;
LABEL_48:
                      if (v50 == ++v51)
                      {

                        v42 = v72;
                        v40 = v71;
                        v41 = v70;
                        v45 = v69;
                        v46 = v68;
                        goto LABEL_26;
                      }

                      continue;
                    }
                  }

                  else
                  {

                    v92 = 0;
                    v90 = 0u;
                    v91 = 0u;
                  }

                  break;
                }

LABEL_46:
                v49 = v87;
                sub_1E1308058(&v90, &qword_1ECEB2F10);
                (*v84)(v43, 1, 1, v85);
LABEL_47:
                sub_1E1308058(v43, &unk_1ECEB2F00);
                goto LABEL_48;
              }
            }

            else
            {
              v50 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v50)
              {
                goto LABEL_33;
              }
            }
          }

          else
          {
          }

LABEL_26:
          v44 = v80;
        }

        while (v80 != v41);
      }
    }
  }

  return result;
}

uint64_t sub_1E13B78A0(uint64_t a1, uint64_t a2)
{
  v2[33] = a1;
  v2[34] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  v2[35] = swift_task_alloc();
  v3 = sub_1E1AF0A8C();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  sub_1E1AF0DEC();
  v2[39] = swift_task_alloc();
  v2[40] = sub_1E1AF644C();
  v2[41] = sub_1E1AF643C();
  v5 = sub_1E1AF63CC();

  return MEMORY[0x1EEE6DFA0](sub_1E13B79FC, v5, v4);
}

uint64_t sub_1E13B79FC()
{
  v1 = *(v0 + 272);

  *(v0 + 192) = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2F38);
  sub_1E1AF2BFC();
  if (*(v0 + 240))
  {
    v2 = *(v0 + 304);
    v3 = *(v0 + 296);
    v20 = *(v0 + 288);
    v4 = *(v0 + 272);
    *(v0 + 208) = *(v4 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2F30);
    sub_1E1AF2BFC();
    sub_1E1AF023C();
    sub_1E1AF024C();

    sub_1E1AF0DDC();
    sub_1E1AF0E0C();
    (*(v3 + 104))(v2, *MEMORY[0x1E697A500], v20);
    v5 = sub_1E1AF0DFC();
    sub_1E1AF0E3C();
    v5(v0 + 160, 0);
    *(v0 + 224) = *(v4 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2F48);
    sub_1E1AF2BFC();
    sub_1E1AF0E1C();
    sub_1E13B8C18(&unk_1ECEB2F50, MEMORY[0x1E6985D98]);
    sub_1E1AF0E2C();

    sub_1E1AF0E2C();
  }

  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v8 = sub_1E1AF649C();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_1E13B8938(v7, v0 + 16);
  v9 = sub_1E1AF643C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = *v7;
  v12 = v7[4];
  v14 = v7[1];
  v13 = v7[2];
  *(v10 + 80) = v7[3];
  *(v10 + 96) = v12;
  *(v10 + 48) = v14;
  *(v10 + 64) = v13;
  v15 = v7[8];
  v17 = v7[5];
  v16 = v7[6];
  *(v10 + 144) = v7[7];
  *(v10 + 160) = v15;
  *(v10 + 112) = v17;
  *(v10 + 128) = v16;
  sub_1E154AF74(0, 0, v6, &unk_1E1B05570, v10);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1E13B7D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  sub_1E1AF644C();
  v4[15] = sub_1E1AF643C();
  v6 = sub_1E1AF63CC();
  v4[16] = v6;
  v4[17] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E13B7DA8, v6, v5);
}

uint64_t sub_1E13B7DA8()
{
  v1 = v0[14];
  sub_1E1AF6FEC();

  v2 = *(v1 + 112);
  v3 = 0xE500000000000000;
  v4 = 0x70556F7754;
  v5 = 0x437055656E4FLL;
  if (v2 != 6)
  {
    v5 = 0x447055656E4FLL;
  }

  v6 = 0x417055656E4FLL;
  if (v2 != 4)
  {
    v6 = 0x427055656E4FLL;
  }

  if (*(v1 + 112) <= 5u)
  {
    v5 = v6;
  }

  v7 = 0xE300000000000000;
  v8 = 7233862;
  if (v2 != 2)
  {
    v8 = 0x7274656D6D797341;
    v7 = 0xEC0000006C616369;
  }

  if (*(v1 + 112))
  {
    v4 = 0x70556565726854;
    v3 = 0xE700000000000000;
  }

  if (*(v1 + 112) > 1u)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*(v1 + 112) <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*(v1 + 112) <= 3u)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  v0[18] = sub_1E1AF04AC();
  MEMORY[0x1E68FECA0](v9, v10);

  if (qword_1EE1E31F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = qword_1EE1E3200;
  v12 = qword_1EE1E3200;
  v13 = swift_task_alloc();
  v0[19] = v13;
  *v13 = v0;
  v13[1] = sub_1E13B8000;

  return MEMORY[0x1EEDD6AC0](0x70415F656E656353, 0xEF5F65726F745370, v11);
}

uint64_t sub_1E13B8000(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_1E13B8268;
  }

  else
  {
    v4[21] = a1;
    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_1E13B8128;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E13B8128()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);

  *(v0 + 40) = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2F48);
  sub_1E1AF2BFC();
  sub_1E1AF024C();

  *(v0 + 56) = *v2;
  *(v0 + 96) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2EE8);
  sub_1E1AF2C0C();
  *(v0 + 72) = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2EE0);
  sub_1E1AF2BFC();
  sub_1E13B6BDC(*(v0 + 104), v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E13B8268()
{

  if (qword_1EE1E35F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE2161A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF54AC();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E13B83FC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  v4 = *(v0 + 120);
  v35 = *(v0 + 80);
  v36 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2F30);
  sub_1E1AF2BFC();
  atanf(36.0 / (v4 + v4));
  sub_1E1AF034C();
  v5 = sub_1E1AF038C();
  sub_1E1AF03CC();
  v5(&v35, 0);

  v35 = v1;
  v36 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2F38);
  result = sub_1E1AF2BFC();
  if (v37)
  {
    if (qword_1ECEB0D78 != -1)
    {
      swift_once();
    }

    v32 = xmmword_1ECEB2E40;
    sub_1E1AF023C();
    v7 = sub_1E1AF027C();
    *(v8 + 32) = v32;
    v7(&v35, 0);
    if (qword_1EE1D44F0 != -1)
    {
      swift_once();
    }

    v9 = (3.1416 * *&xmmword_1EE215570) / 180.0;
    v10 = vmuls_lane_f32(3.1416, *&xmmword_1EE215570, 1) / 180.0;
    v11 = vmuls_lane_f32(3.1416, xmmword_1EE215570, 2) / 180.0;
    sub_1E13AE5C4(&unk_1F5C20CA8);
    v29 = v12;
    v13 = __sincosf_stret(v9 * 0.5);
    v30 = vmulq_n_f32(v29, v13.__sinval);
    sub_1E13AE5C4(&unk_1F5C20CD8);
    v28 = v14;
    v15 = __sincosf_stret(v10 * 0.5);
    v16 = vmulq_n_f32(v28, v15.__sinval);
    v16.i32[3] = LODWORD(v15.__cosval);
    v17 = vnegq_f32(v16);
    v18 = vtrn2q_s32(v16, vtrn1q_s32(v16, v17));
    v19 = vrev64q_s32(v16);
    v19.i32[0] = v17.i32[1];
    v19.i32[3] = v17.i32[2];
    v33 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v16, v13.__cosval), v19, v30, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v16, v17, 8uLL), *v30.f32, 1), vextq_s8(v18, v18, 8uLL), v30.f32[0]));
    sub_1E13AE5C4(&unk_1F5C20D08);
    v31 = v20;
    v21 = __sincosf_stret(v11 * 0.5);
    v22 = vmulq_n_f32(v31, v21.__sinval);
    v22.i32[3] = LODWORD(v21.__cosval);
    v23 = vnegq_f32(v22);
    v24 = vtrn2q_s32(v22, vtrn1q_s32(v22, v23));
    v25 = vrev64q_s32(v22);
    v25.i32[0] = v23.i32[1];
    v25.i32[3] = v23.i32[2];
    v34 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v22, v23, 8uLL), *v33.f32, 1), vextq_s8(v24, v24, 8uLL), v33.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v22, v33, 3), v25, v33, 2));
    v26 = sub_1E1AF027C();
    v27[1] = v34;
    v26(&v35, 0);
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1E13B8774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E13B87BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E13B884C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E130B5DC;

  return sub_1E13B78A0(a1, v1 + 16);
}

void sub_1E13B8978(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2E50) - 8);
  v10 = (*(v9 + 80) + 168) & ~*(v9 + 80);
  v11 = *(v4 + 160);
  v12 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1E13B64AC(a1, a2, a3, a4, v4 + 16, v11, v4 + v10, v12);
}

unint64_t sub_1E13B8AA4()
{
  result = qword_1EE1E3540;
  if (!qword_1EE1E3540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3540);
  }

  return result;
}

uint64_t sub_1E13B8AF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E13B8B68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E130B5D8;

  return sub_1E13B7D10(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E13B8C18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E13B8C60()
{
  result = qword_1ECEB2F60;
  if (!qword_1ECEB2F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECEB2EB0);
    sub_1E13B8CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2F60);
  }

  return result;
}

unint64_t sub_1E13B8CEC()
{
  result = qword_1ECEB2F68;
  if (!qword_1ECEB2F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB2EA8);
    sub_1E13B8DA4();
    sub_1E1302CD4(&qword_1ECEB2FA8, &qword_1ECEB2FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2F68);
  }

  return result;
}

unint64_t sub_1E13B8DA4()
{
  result = qword_1ECEB2F70;
  if (!qword_1ECEB2F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB2EA0);
    sub_1E13B8E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2F70);
  }

  return result;
}

unint64_t sub_1E13B8E30()
{
  result = qword_1ECEB2F78;
  if (!qword_1ECEB2F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB2E98);
    sub_1E13B8EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2F78);
  }

  return result;
}

unint64_t sub_1E13B8EBC()
{
  result = qword_1ECEB2F80;
  if (!qword_1ECEB2F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB2E90);
    sub_1E13B8F48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2F80);
  }

  return result;
}

unint64_t sub_1E13B8F48()
{
  result = qword_1ECEB2F88;
  if (!qword_1ECEB2F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB2E88);
    sub_1E13B8FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2F88);
  }

  return result;
}

unint64_t sub_1E13B8FD4()
{
  result = qword_1ECEB2F90;
  if (!qword_1ECEB2F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB2E80);
    sub_1E1302CD4(&qword_1ECEB2F98, &qword_1ECEB2FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2F90);
  }

  return result;
}

id sub_1E13B908C(double *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  [*(*a2 + OBJC_IVAR____TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientView) setFrame_];
  [*&v6[OBJC_IVAR____TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientLayer] setFrame_];

  return [v6 setFrame_];
}

id sub_1E13B9138(double a1, double a2, double a3, double a4)
{
  [*&v4[OBJC_IVAR____TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientView] setFrame_];
  [*&v4[OBJC_IVAR____TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientLayer] setFrame_];

  return [v4 setFrame_];
}

void (*sub_1E13B91E8(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  [v1 frame];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  return sub_1E13B9270;
}

void sub_1E13B9270(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4);
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  [*&v2[OBJC_IVAR____TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientView] setFrame_];
  [*&v2[OBJC_IVAR____TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientLayer] setFrame_];
  [v2 setFrame_];

  free(v1);
}

id ThreeDimensionalArtworkGradientBackgroundView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ThreeDimensionalArtworkGradientBackgroundView.init()()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientLayer;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v0[OBJC_IVAR____TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientView] = v2;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for ThreeDimensionalArtworkGradientBackgroundView();
  v3 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v3 setAccessibilityIgnoresInvertColors_];
  v4 = OBJC_IVAR____TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientLayer;
  v5 = *&v3[OBJC_IVAR____TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E1B02CD0;
  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 whiteColor];
  v10 = [v9 colorWithAlphaComponent_];

  v11 = [v10 CGColor];
  type metadata accessor for CGColor(0);
  v13 = v12;
  *(v6 + 56) = v12;
  *(v6 + 32) = v11;
  v14 = [v7 whiteColor];
  v15 = [v14 colorWithAlphaComponent_];

  v16 = [v15 CGColor];
  *(v6 + 88) = v13;
  *(v6 + 64) = v16;
  v17 = sub_1E1AF620C();

  [v8 setColors_];

  [*&v3[v4] setStartPoint_];
  [*&v3[v4] setEndPoint_];
  [*&v3[v4] setZPosition_];
  v18 = OBJC_IVAR____TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientView;
  v19 = [*&v3[OBJC_IVAR____TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientView] layer];
  [v19 addSublayer_];

  v20 = *&v3[v18];
  v21 = [v7 clearColor];
  [v20 setBackgroundColor_];

  [*&v3[v18] setUserInteractionEnabled_];
  v22 = [*&v3[v18] layer];
  v23 = sub_1E1AF5DBC();
  [v22 setCompositingFilter_];

  [*&v3[v18] setAccessibilityIgnoresInvertColors_];
  [v3 addSubview_];
  [v3 setClipsToBounds_];
  [v3 _setCornerRadius_];

  return v3;
}

id sub_1E13B97D8()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ThreeDimensionalArtworkGradientBackgroundView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  [v0 bounds];
  [v0 setFrame_];
  v1 = *&v0[OBJC_IVAR____TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC11AppStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientLayer];
  [v0 bounds];
  return [v2 setFrame_];
}

id ThreeDimensionalArtworkGradientBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ThreeDimensionalArtworkGradientBackgroundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThreeDimensionalArtworkGradientBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MSOPagePresenter.pageUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_pageUrl;
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1E13B9BB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_uber;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1E13B9C64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_uber;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

BOOL sub_1E13B9D1C()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_uber;
  swift_beginAccess();
  return *(v0 + v1) != 0;
}

uint64_t MSOPagePresenter.init(objectGraph:personalizationProvider:pageUrl:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FC8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v34 = v33 - v10;
  v11 = *a4;
  v12 = a4[1];
  v14 = a4[2];
  v13 = a4[3];
  *(v4 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_uber) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_shelves) = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v15 = (v4 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_pageTitle);
  *v15 = 0;
  v15[1] = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_isPreparingNextPage) = 0;
  v16 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_pageUrl;
  v17 = sub_1E1AEFCCC();
  v35 = *(v17 - 8);
  v36 = v17;
  v18 = *(v35 + 16);
  v37 = a3;
  v18(v4 + v16, a3, v17);
  v19 = (v4 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_context);
  *v19 = v11;
  v19[1] = v12;
  v19[2] = v14;
  v19[3] = v13;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_personalizationProvider) = a2;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x1E69E7CD0];

  v38 = v14;
  v20 = v13;
  sub_1E13BBA90(v11, v12);

  v21 = sub_1E138C578(a1, 0, 0, 0);

  v22 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_uber;
  swift_beginAccess();
  if (*(v21 + v22))
  {

    v23 = v11;
  }

  else
  {
    v24 = v34;
    v33[1] = a2;
    if (v12)
    {
      v25 = v20;
      v23 = v11;
      sub_1E13BBA90(v11, v12);

      v26 = sub_1E1AEFBDC();
      v33[0] = v27;
      v41 = v26;
      v42 = v27;
      v39 = v11;
      v40 = v12;
      v28 = sub_1E1AEFF8C();
      (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
      sub_1E13B8AA4();

      sub_1E1AF6E6C();
      v30 = v29;
      sub_1E1308058(v24, &qword_1ECEB2FC8);

      if (v30)
      {
        sub_1E13BBAE0(v11, v12);
        v31 = 0;
      }

      else
      {
        v31 = *(v25 + OBJC_IVAR____TtC11AppStoreKit15MSOProviderData_roomUber);

        sub_1E13BBAE0(v11, v12);
      }
    }

    else
    {

      v31 = 0;
      v23 = v11;
    }

    *(v21 + v22) = v31;
  }

  (*(v35 + 8))(v37, v36);
  sub_1E13BBAE0(v23, v12);
  return v21;
}

uint64_t sub_1E13BA1E0(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FC8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35 - v7;
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[3];
  v12 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_uber;
  result = swift_beginAccess();
  if (!*(v3 + v12))
  {
    if (v9)
    {

      v37[0] = sub_1E1AEFBDC();
      v37[1] = v14;
      v39 = v10;
      v40 = v9;
      v15 = sub_1E1AEFF8C();
      (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
      sub_1E13B8AA4();

      sub_1E1AF6E6C();
      v17 = v16;
      sub_1E1308058(v8, &qword_1ECEB2FC8);

      if ((v17 & 1) == 0)
      {
        v19 = *(v11 + OBJC_IVAR____TtC11AppStoreKit15MSOProviderData_roomUber);

        sub_1E13BBAE0(v10, v9);
        goto LABEL_11;
      }

      sub_1E13BBAE0(v10, v9);
    }

    if (a2)
    {
      v18 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
      swift_beginAccess();
      v19 = *(a2 + v18);
    }

    else
    {
      v19 = 0;
    }

LABEL_11:
    *(v3 + v12) = v19;

    if (!a2)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (!a2)
  {
    return result;
  }

LABEL_12:
  v21 = *(a2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v20 = *(a2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title + 8);
  v22 = (v3 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_pageTitle);
  swift_beginAccess();
  *v22 = v21;
  v22[1] = v20;

  v23 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v24 = *(a2 + v23);
  v25 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  v26 = *(v24 + 16);
  v27 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;

  result = swift_beginAccess();
  if (!v26)
  {
    goto LABEL_23;
  }

  v28 = 0;
  v29 = v24 + 32;
  v35 = v26 - 1;
  v36 = v24 + 32;
  do
  {
    v30 = v29 + 40 * v28;
    v31 = v28;
    while (1)
    {
      if (v31 >= *(v24 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1E134E724(v30, v37);
      if (*(*(a2 + v27) + 16))
      {
        break;
      }

LABEL_15:
      ++v31;
      result = sub_1E134B88C(v37);
      v30 += 40;
      if (v26 == v31)
      {
        goto LABEL_23;
      }
    }

    sub_1E135FCF4(v37);
    if ((v32 & 1) == 0)
    {

      goto LABEL_15;
    }

    v33 = sub_1E134B88C(v37);
    MEMORY[0x1E68FEF20](v33);
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v28 = v31 + 1;
    result = sub_1E1AF62AC();
    v25 = v38;
    v29 = v36;
  }

  while (v35 != v31);
LABEL_23:

  v34 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_shelves;
  swift_beginAccess();
  *(v3 + v34) = v25;

  v37[3] = type metadata accessor for GenericPage();
  v37[4] = &protocol witness table for BasePage;
  v37[5] = sub_1E13BC028(&unk_1EE1E0748, type metadata accessor for GenericPage);
  v37[0] = a2;
  swift_beginAccess();

  sub_1E13891EC(v37, v3 + 40);
  swift_endAccess();
  sub_1E138B568();

  return sub_1E1308058(v37, &qword_1ECEB2588);
}

uint64_t sub_1E13BA6D0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E13BA73C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

uint64_t sub_1E13BA82C()
{
  result = swift_beginAccess();
  if ((*(v0 + 32) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) & 1) == 0)
  {
    *(v0 + 32) = 1;
    v2 = v0 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v3 + 24) + 8))(ObjectType);
      swift_unknownObjectRelease();
    }

    sub_1E17720F4(0);
    sub_1E13BAFA0();
    v9 = sub_1E1AF470C();
    v10 = MEMORY[0x1E69AB218];
    __swift_allocate_boxed_opaque_existential_0(v8);

    sub_1E1AF46FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2878);
    sub_1E13BBB38(&qword_1ECEB2FE8, &qword_1ECEB2878);
    sub_1E1AF585C();

    __swift_destroy_boxed_opaque_existential_1(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FF0);
    sub_1E13BBB38(&qword_1ECEB2FF8, &qword_1ECEB2FF0);
    sub_1E1AF57EC();
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1E13BBB8C;
    *(v5 + 24) = v0;
    v6 = sub_1E1361A80();
    swift_retain_n();
    v7 = sub_1E1AF68EC();
    v9 = v6;
    v10 = MEMORY[0x1E69AB720];
    v8[0] = v7;
    sub_1E1AF57FC();

    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return result;
}

uint64_t sub_1E13BAAC4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1E1AEFCCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MSOPageIntent();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v18 = *a1;
  v12 = a1[2];
  type metadata accessor for JSIntentDispatcher();
  v13 = *(a2 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_objectGraph);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  (*(v5 + 16))(v7, a2 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_pageUrl, v4);
  if (v11)
  {

    v14 = v18;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  strcpy(v10, "MSOPageIntent");
  *(v10 + 7) = -4864;
  (*(v5 + 32))(&v10[v8[5]], v7, v4);
  v15 = &v10[v8[6]];
  *v15 = v14;
  *(v15 + 1) = v11;
  *&v10[v8[7]] = v12;
  v16 = sub_1E13690EC(v10, v13, "AppStoreKit/MSOPagePresenter.swift", 34, 2);

  sub_1E13BBFB0(v10);
  return v16;
}

uint64_t sub_1E13BACFC(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  v14[0] = *a2;
  v14[1] = v4;
  sub_1E13BA1E0(v14, a1);
  v5 = a3 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    swift_getObjectType();
    sub_1E162A1BC();
    (*(v6 + 32))();

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v7 + 16) + 8))(ObjectType);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();

  sub_1E176F7A4(v9, 0);

  swift_beginAccess();
  v10 = *(a3 + 32);
  *(a3 + 32) = 0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v5 + 8);
    v12 = swift_getObjectType();
    (*(*(v11 + 24) + 16))(v12);
    swift_unknownObjectRelease();
  }

  return sub_1E17720F4(v10);
}

uint64_t sub_1E13BAEA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 32);
  *(a2 + 32) = 0;
  v5 = a2 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v6 + 24) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  sub_1E17720F4(v4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v5 + 8);
    v10 = swift_getObjectType();
    (*(*(v9 + 24) + 24))(a1, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E13BAFA0()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_context);
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_context + 8);
  if (v2)
  {
    v4 = v1[2];
    v3 = v1[3];
    v5 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FF0);
    *&v9 = v5;
    *(&v9 + 1) = v2;
    *&v10 = v4;
    *(&v10 + 1) = v3;

    return sub_1E1AF582C();
  }

  if (!*(v0 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_personalizationProvider))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FF0);
    v9 = 0u;
    v10 = 0u;
    return sub_1E1AF582C();
  }

  v7 = sub_1E13C4918(&unk_1F5C20B98);
  sub_1E15E75E8(v7);

  *(&v10 + 1) = sub_1E1AF470C();
  v11 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(&v9);

  sub_1E1AF46FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3018);
  v8 = sub_1E1AF57DC();

  __swift_destroy_boxed_opaque_existential_1(&v9);
  return v8;
}

uint64_t sub_1E13BB130@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FC8);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v16 - v6;
  v8 = a1[1];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = *a1;
  v11 = a1[2];
  v10 = a1[3];

  v16[2] = sub_1E1AEFBDC();
  v16[3] = v12;
  v16[0] = v9;
  v16[1] = v8;
  v13 = sub_1E1AEFF8C();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_1E13B8AA4();

  sub_1E1AF6E6C();
  v15 = v14;
  sub_1E1308058(v7, &qword_1ECEB2FC8);

  if (v15)
  {
    result = sub_1E13BBAE0(v9, v8);
LABEL_4:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  *a2 = v9;
  *(a2 + 8) = v8;
  *(a2 + 16) = v11;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_1E13BB2F4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_pageTitle);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1E13BB360()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_pageTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E13BB3B8()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_shelves;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    return sub_1E1AF71CC();
  }

  else
  {
    return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1E13BB420(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_shelves;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x1E68FFD80](a1, v5);

    return v6;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v6 = *(v5 + 8 * a1 + 32);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E13BB4CC(unint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_shelves;
  swift_beginAccess();
  v6 = *(v2 + v5);

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v2 + v5) = v6;
  if (!result || v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    result = sub_1E14E7234(v6);
    v6 = result;
    *(v2 + v5) = result;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = a2;
    *(v2 + v5) = v6;
    swift_endAccess();
  }

  __break(1u);
  return result;
}

BOOL sub_1E13BB594(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_shelves;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    v5 = sub_1E1AF71CC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 > a1;
}

unint64_t sub_1E13BB610()
{
  v1 = sub_1E1AF019C();
  v2 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_shelves;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    if (v1 < sub_1E1AF71CC())
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_3:
  result = sub_1E1AF019C();
  v5 = *(v0 + v2);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v9 = result;

    v6 = MEMORY[0x1E68FFD80](v9, v5);

    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 8 * result + 32);

LABEL_7:
    v7 = *(v6 + 24);

    v8 = *(v7 + 16);

    return sub_1E1AF018C() < v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E13BB734()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_isPreparingNextPage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E13BB778(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E13BB860()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_pageUrl;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E13BBAE0(*(v0 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_context), *(v0 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_context + 8));

  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_view);
}

uint64_t MSOPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();

  v1 = OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_pageUrl;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E13BBAE0(*(v0 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_context), *(v0 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_context + 8));

  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit16MSOPagePresenter_view);

  return v0;
}

uint64_t MSOPagePresenter.__deallocating_deinit()
{
  MSOPagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E13BBA90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1E13BBAE0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1E13BBB38(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E13BBBCC(uint64_t a1)
{
  result = sub_1E13BC028(&qword_1ECEB3000, type metadata accessor for MSOPagePresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for MSOPagePresenter()
{
  result = qword_1ECEB3008;
  if (!qword_1ECEB3008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E13BBC78()
{
  result = sub_1E1AEFCCC();
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

uint64_t sub_1E13BBFB0(uint64_t a1)
{
  v2 = type metadata accessor for MSOPageIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E13BC028(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PerformanceTestRunner.failed(_:with:)(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
  v8 = sub_1E1AF5E8C();
  (*(a4 + 16))(a1, v8, v9, a3, a4);
}

id UITabBarItem.withAXIdentifier(_:)(uint64_t *a1)
{
  v3 = sub_1E1AF489C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  v11[3] = &type metadata for StoreTab.Identifier;
  v11[0] = v8;
  v11[1] = v7;
  v9 = v1;
  sub_1E13BC260(v8, v7);
  sub_1E1AF486C();
  __swift_destroy_boxed_opaque_existential_1(v11);
  MEMORY[0x1E68FF500](v6);
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t sub_1E13BC260(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xB)
  {
  }

  return result;
}

uint64_t LargeHeroBreakoutLayout.DetailsVerticalPostion.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t LargeHeroBreakoutLayout.init(metrics:backgroundMediaView:headerLabel:detailsView:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a1[11];
  *(a5 + 160) = a1[10];
  *(a5 + 176) = v5;
  v6 = a1[12];
  v7 = a1[7];
  *(a5 + 96) = a1[6];
  *(a5 + 112) = v7;
  v8 = a1[9];
  *(a5 + 128) = a1[8];
  *(a5 + 144) = v8;
  v9 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v9;
  v10 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v10;
  v11 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v11;
  v12 = *a2;
  v13 = a2[1];
  *(a5 + 192) = v6;
  *(a5 + 208) = v12;
  *(a5 + 224) = v13;
  v14 = *(a3 + 16);
  *(a5 + 248) = *a3;
  *(a5 + 240) = *(a2 + 4);
  *(a5 + 264) = v14;
  *(a5 + 280) = *(a3 + 32);
  return sub_1E1308EC0(a4, a5 + 288);
}

uint64_t LargeHeroBreakoutLayout.Metrics.init(headerSpace:headerMaxWidth:detailPosition:detailsWidth:detailsVerticalPostion:layoutMargins:height:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, _OWORD *a4@<X3>, char *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v19 = *a3;
  v20 = *a5;
  *(a7 + 56) = 0u;
  *(a7 + 72) = 0;
  *(a7 + 40) = 0u;
  v21 = a7 + 40;
  sub_1E1308EC0(a1, a7);
  sub_1E13BC4E4(a2, v21);
  *(a7 + 80) = v19;
  v22 = a4[1];
  *(a7 + 88) = *a4;
  *(a7 + 104) = v22;
  *(a7 + 113) = *(a4 + 25);
  *(a7 + 129) = v20;
  *(a7 + 136) = a8;
  *(a7 + 144) = a9;
  *(a7 + 152) = a10;
  *(a7 + 160) = a11;

  return sub_1E1308EC0(a6, a7 + 168);
}

uint64_t sub_1E13BC4E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB47F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LargeHeroBreakoutLayout.Metrics.headerSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

void LargeHeroBreakoutLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = a3;
  v4[20] = a4;
}

uint64_t LargeHeroBreakoutLayout.Metrics.height.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 168);

  return sub_1E1308EC0(a1, v1 + 168);
}

__n128 LargeHeroBreakoutLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v2;
  *(a2 + 192) = *(a1 + 192);
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  v6 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v6;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

__n128 sub_1E13BC854@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v2;
  *(a2 + 192) = *(a1 + 192);
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  v6 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v6;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

double static LargeHeroBreakoutLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, double a2)
{
  v4 = sub_1E1AF745C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((a1 + 168), *(a1 + 192));
  sub_1E1AF102C();
  sub_1E1AF12DC();
  (*(v5 + 8))(v7, v4);
  return a2;
}

uint64_t LargeHeroBreakoutLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_1E1AF745C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(v4 + 208, v37, &qword_1ECEB4E00);
  if (v38)
  {
    __swift_project_boxed_opaque_existential_1Tm(v37, v38);
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    sub_1E1308058(v37, &qword_1ECEB4E00);
  }

  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  sub_1E1AF6B0C();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_1E134FD1C(v4 + 248, &v35, &qword_1ECEB2AD0);
  if (v36)
  {
    sub_1E1308EC0(&v35, v37);
    __swift_project_boxed_opaque_existential_1Tm(v37, v38);
    if (sub_1E1AF112C())
    {
      sub_1E134FD1C(v4 + 40, &v33, &unk_1ECEB47F0);
      if (v34)
      {
        sub_1E1308EC0(&v33, &v35);
        __swift_project_boxed_opaque_existential_1Tm(&v35, v36);
        sub_1E1AF102C();
        sub_1E1AF12DC();
        v22 = v21;
        (*(v10 + 8))(v12, v9);
        if (v22 >= v18)
        {
          v22 = v18;
        }

        __swift_destroy_boxed_opaque_existential_1(&v35);
      }

      else
      {
        sub_1E1308058(&v33, &unk_1ECEB47F0);
        v22 = v18;
      }

      *&v31[2] = v22;
      __swift_project_boxed_opaque_existential_1Tm(v37, v38);
      sub_1E1AF11CC();
      v31[1] = v23;
      v31[0] = v24;
      __swift_project_boxed_opaque_existential_1Tm(v37, v38);
      v39.origin.x = v14;
      v39.origin.y = v16;
      v39.size.width = v18;
      v39.size.height = v20;
      CGRectGetMinX(v39);
      v40.origin.x = v14;
      v40.origin.y = v16;
      v40.size.width = v18;
      v40.size.height = v20;
      CGRectGetMinY(v40);
      __swift_project_boxed_opaque_existential_1Tm(v4, *(v4 + 24));
      sub_1E1AF12FC();
      sub_1E1AF6B1C();
      sub_1E1AF116C();
    }

    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    sub_1E1308058(&v35, &qword_1ECEB2AD0);
  }

  v41.origin.x = v14;
  v41.origin.y = v16;
  v41.size.width = v18;
  v41.size.height = v20;
  Width = CGRectGetWidth(v41);
  sub_1E1836DC4(Width);
  v42.origin.x = v14;
  v42.origin.y = v16;
  v42.size.width = v18;
  v42.size.height = v20;
  CGRectGetHeight(v42);
  __swift_project_boxed_opaque_existential_1Tm((v4 + 288), *(v4 + 312));
  sub_1E1AF11CC();
  if (*(v4 + 80))
  {
    v26 = v14;
    v27 = v16;
    v28 = v18;
    v29 = v20;
    if (*(v4 + 80) == 1)
    {
      CGRectGetMaxX(*&v26);
    }

    else
    {
      CGRectGetMidX(*&v26);
    }
  }

  else
  {
    v43.origin.x = v14;
    v43.origin.y = v16;
    v43.size.width = v18;
    v43.size.height = v20;
    CGRectGetMinX(v43);
  }

  if (*(v4 + 129) == 1)
  {
    v44.origin.x = v14;
    v44.origin.y = v16;
    v44.size.width = v18;
    v44.size.height = v20;
    CGRectGetMaxY(v44);
  }

  else
  {
    CGRectGetMidY(v32);
  }

  __swift_project_boxed_opaque_existential_1Tm((v4 + 288), *(v4 + 312));
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  return sub_1E1AF106C();
}

unint64_t sub_1E13BCF70()
{
  result = qword_1ECEB3020;
  if (!qword_1ECEB3020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3020);
  }

  return result;
}

uint64_t sub_1E13BCFC8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1E13BD3E8();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x1EEE18170](a1, a2, v10, a3, v11, v12);
}

unint64_t sub_1E13BD038()
{
  result = qword_1EE1D9AA0;
  if (!qword_1EE1D9AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D9AA0);
  }

  return result;
}

double sub_1E13BD08C(uint64_t a1, double a2)
{
  v4 = sub_1E1AF745C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((a1 + 168), *(a1 + 192));
  sub_1E13BC274();
  sub_1E1AF12DC();
  (*(v5 + 8))(v7, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit21BreakoutDetailsLayoutV15DetailDimensionO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_1E13BD1E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E13BD22C(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_1E13BD31C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E13BD364(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E13BD3E8()
{
  result = qword_1EE1D9AA8[0];
  if (!qword_1EE1D9AA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1D9AA8);
  }

  return result;
}

uint64_t ArcadeSeeAllGamesContentPresenter.__allocating_init(objectGraph:pageUrl:facetsPresenter:displayStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = swift_allocObject();
  v9 = *a4;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelves) = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CD0];
  *(v8 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelfContentTypes) = MEMORY[0x1E69E7CD0];
  *(v8 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions) = 0;
  v11 = (v8 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken);
  *v11 = 0u;
  v11[1] = 0u;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_selectedFacetOptions) = 0;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage) = 0;
  v12 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_pageUrl;
  v13 = sub_1E1AEFCCC();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8 + v12, a2, v13);
  *(v8 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_facetsPresenter) = a3;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_displayStyle) = v9;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_activeRequests) = v10;
  v15 = sub_1E138C578(a1, 0, 0, 0);

  (*(v14 + 8))(a2, v13);
  return v15;
}

uint64_t ArcadeSeeAllGamesContentPresenter.init(objectGraph:pageUrl:facetsPresenter:displayStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = *a4;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelves) = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CD0];
  *(v4 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelfContentTypes) = MEMORY[0x1E69E7CD0];
  *(v4 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions) = 0;
  v10 = (v4 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken);
  *v10 = 0u;
  v10[1] = 0u;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_selectedFacetOptions) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage) = 0;
  v11 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_pageUrl;
  v12 = sub_1E1AEFCCC();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v4 + v11, a2, v12);
  *(v4 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_facetsPresenter) = a3;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_displayStyle) = v8;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_activeRequests) = v9;
  v14 = sub_1E138C578(a1, 0, 0, 0);

  (*(v13 + 8))(a2, v12);
  return v14;
}

uint64_t sub_1E13BD838(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E13BD8A4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

uint64_t sub_1E13BD9A4()
{
  v1 = v0 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v4 = *(v2 + 16);
    v5 = *(v4 + 32);

    v5(v6, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v1 + 8);
    v8 = swift_getObjectType();
    (*(v7 + 24))(*(v0 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions), v8, v7);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v9 = *(v0 + 16);
  if (v9)
  {
    v10 = qword_1EE1EC290;

    if (v10 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = qword_1EE1EC298;
    v12 = v9 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
    swift_beginAccess();
    *v12 = v11;
    *(v12 + 8) = 0;
    v13 = *(v9 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
    swift_beginAccess();
    *(v13 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }

  return sub_1E13BDBD8(0);
}

uint64_t sub_1E13BDBD8(char a1)
{
  result = swift_beginAccess();
  if (*(v1 + 32))
  {
    return result;
  }

  v4 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  if (*(v1 + v4) & 1) != 0 || (*(v1 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves))
  {
    return result;
  }

  v5 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6 >> 62)
  {
    if (sub_1E1AF71CC())
    {
LABEL_6:
      if ((a1 & 1) == 0)
      {
        v7 = v1 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view;
        swift_beginAccess();
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v8 = *(v7 + 8);
          ObjectType = swift_getObjectType();
          (*(*(*(v8 + 16) + 16) + 8))(ObjectType);
          return swift_unknownObjectRelease();
        }

        return result;
      }
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

  v10 = *(v1 + 32);
  *(v1 + 32) = 1;
  v11 = v1 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    v13 = swift_getObjectType();
    (*(*(*(v12 + 16) + 24) + 8))(v13);
    swift_unknownObjectRelease();
  }

  sub_1E17720F4(v10);
  v14 = sub_1E1AEFBDC();
  v16 = v15;
  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_displayStyle) == 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1AF74AC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3060);
  sub_1E1AF690C();
  v18 = _s11AppStoreKit10PageFacetsV24serializeSelectedOptionsySDySSSaySDyS2SSgGGGSDyAC5FacetVShyAJ6OptionVGGFZ_0(v24);

  v19 = v17 & 1;
  type metadata accessor for JSIntentDispatcher();
  v20 = *(v1 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_objectGraph);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  *&v24 = 0xD00000000000001BLL;
  *(&v24 + 1) = 0x80000001E1B5BD00;
  v25 = v14;
  v26 = v16;
  v27 = v19;
  v28 = v18;
  sub_1E1368B18(&v24, v20, "AppStoreKit/ArcadeSeeAllGamesContentPresenter.swift", 51, 2);
  sub_1E13BFEF0(&v24);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  v21 = sub_1E1361A80();

  v22 = sub_1E1AF68EC();
  v23[3] = v21;
  v23[4] = MEMORY[0x1E69AB720];
  v23[0] = v22;
  sub_1E1AF57FC();

  __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_1E13BDFE8(uint64_t *a1)
{
  v2 = sub_1E1AEFE6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v47 = v3;
    v48 = v2;
    sub_1E13BE984(v6);
    swift_beginAccess();
    v9 = *(v8 + 32);
    *(v8 + 32) = 0;
    v10 = v8 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      v13 = *(*(v11 + 16) + 24);
      v14 = *(v13 + 16);

      v14(ObjectType, v13);
      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_1E17720F4(v9);

    v15 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
    swift_beginAccess();
    v16 = *(v8 + v15);
    if (v16 >> 62)
    {
      v17 = sub_1E1AF71CC();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      if (Strong)
      {
        v19 = *(v10 + 8);
        v20 = swift_getObjectType();
        (*(v19 + 48))(v20, v19);
        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v10 + 8);
        v22 = swift_getObjectType();
        swift_beginAccess();
        v23 = *(v21 + 16);
        v24 = *(v23 + 32);

        v24(v25, v22, v23);

        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v26 = *(v10 + 8);
        v27 = swift_getObjectType();
        (*(v26 + 24))(*(v8 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions), v27, v26);
        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v28 = *(v10 + 8);
        v29 = swift_getObjectType();
        (*(*(*(v28 + 16) + 16) + 8))(v29);
        swift_unknownObjectRelease();
      }

      v30 = sub_1E16356A4();
      sub_1E176F7A4(v30, 0);

      swift_beginAccess();
      if (*(v8 + 16))
      {
        v49[3] = type metadata accessor for ArcadeSeeAllGamesPage();
        v49[4] = &protocol witness table for BasePage;
        v49[5] = sub_1E13C049C(&qword_1ECEB3088, type metadata accessor for ArcadeSeeAllGamesPage);
        v49[0] = v6;

        PendingPageRender.use(pageRenderEventFrom:)(v49);

        sub_1E1308058(v49, &qword_1ECEB2588);
        v31 = *(v8 + 16);
      }

      else
      {

        v31 = 0;
      }

      v40 = v48;
      v41 = v47;

      if (v31)
      {
        sub_1E1AEFE5C();
        sub_1E1AEFE1C();
        v43 = v42;
        (*(v41 + 8))(v5, v40);
        v44 = v31 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_rootViewModelPresentTime;
        swift_beginAccess();
        *v44 = v43;
        *(v44 + 8) = 0;
        v45 = *(v31 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasViewModelPresentTime[0]);
        swift_beginAccess();
        *(v45 + 40) = 1;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1E149DEE8();
        }
      }
    }

    else if (Strong)
    {
      v32 = *(v10 + 8);
      v33 = swift_getObjectType();
      v34._object = 0x80000001E1B5BE40;
      v34._countAndFlagsBits = 0xD00000000000001CLL;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      v36 = localizedString(_:comment:)(v34, v35);
      v37._countAndFlagsBits = 0xD000000000000022;
      v37._object = 0x80000001E1B5BE60;
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      v39 = localizedString(_:comment:)(v37, v38);
      (*(v32 + 40))(v36._countAndFlagsBits, v36._object, v39._countAndFlagsBits, v39._object, v33, v32);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1E13BE5C0(void *a1)
{
  v2 = type metadata accessor for PresenterError();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = *(v6 + 32);
    *(v6 + 32) = 0;
    v8 = v6 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view;
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    v33 = v8;
    if (v9)
    {
      v10 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      v12 = *(*(v10 + 16) + 24);
      v13 = v2;
      v14 = a1;
      v15 = *(v12 + 16);

      v15(ObjectType, v12);
      a1 = v14;
      v2 = v13;
      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_1E17720F4(v7);

    v16 = *(v2 + 20);
    v17 = sub_1E1AEFCCC();
    (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
    *v4 = a1;
    swift_beginAccess();
    v18 = *(v6 + 16);
    if (v18)
    {
      sub_1E13C049C(&qword_1EE1DFCE0, type metadata accessor for PresenterError);
      v19 = swift_allocError();
      sub_1E13614D0(v4, v20);
      v21 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v22 = *(v18 + v21);
      v23 = a1;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v18 + v21) = v22;
      v25 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_1E172D0E4(0, v22[2] + 1, 1, v22);
        *(v18 + v21) = v22;
      }

      v27 = v22[2];
      v26 = v22[3];
      if (v27 >= v26 >> 1)
      {
        v22 = sub_1E172D0E4((v26 > 1), v27 + 1, 1, v22);
      }

      v22[2] = v27 + 1;
      v22[v27 + 4] = v19;
      *(v18 + v21) = v22;
      swift_endAccess();
    }

    else
    {
      v28 = a1;
      v25 = v33;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v25 + 8);
      v30 = swift_getObjectType();
      sub_1E13C049C(&qword_1EE1DFCE0, type metadata accessor for PresenterError);
      v31 = swift_allocError();
      sub_1E13614D0(v4, v32);
      (*(*(*(v29 + 16) + 24) + 24))(v31, v30);

      swift_unknownObjectRelease();
      sub_1E1361548(v4);
    }

    else
    {

      sub_1E1361548(v4);
    }
  }
}

uint64_t sub_1E13BE984(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;
    *(v1 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions) = *(result + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions);

    v4 = sub_1E16356A4();
    swift_beginAccess();
    sub_1E1728208(v4);
    swift_endAccess();
    v5 = sub_1E162A424();
    swift_beginAccess();
    sub_1E19B5970(v5);
    swift_endAccess();
    sub_1E13BFF54(v3 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, _);
    v6 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken;
    swift_beginAccess();
    sub_1E137F818(_, v2 + v6);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      *&_[24] = type metadata accessor for ArcadeSeeAllGamesPage();
      *&_[32] = &protocol witness table for BasePage;
      v15 = sub_1E13C049C(&qword_1ECEB3088, type metadata accessor for ArcadeSeeAllGamesPage);
      *_ = v3;
      sub_1E1383E78(_, v13);
      swift_beginAccess();

      sub_1E13891EC(v13, v8 + 40);
      swift_endAccess();
      sub_1E138B568();
      swift_unknownObjectRelease();
      sub_1E1308058(v13, &qword_1ECEB2588);
      __swift_destroy_boxed_opaque_existential_1(_);
    }

    v9 = *(v3 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 8);
    v10 = *(v3 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 16);
    v11 = *(v3 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 24);
    *_ = *(v3 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets);
    *&_[8] = v9;
    *&_[16] = v10;
    _[24] = v11;
    v12._rawValue = *(v3 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions);
    sub_1E13C0418(*_);
    PageFacetsPresenter.setFacets(_:selectedFacetOptions:)(_, v12);
    sub_1E13C045C(*_);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3060);
    sub_1E1AF690C();

    *(v2 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_selectedFacetOptions) = *_;
  }

  return result;
}

uint64_t sub_1E13BEC3C()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E13BEC80(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = v1 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  if (a1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v6 + 8) + 8))(ObjectType);
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v8 = *(v4 + 8);
    v9 = swift_getObjectType();
    (*(*(v8 + 8) + 16))(v9);
  }

  return swift_unknownObjectRelease();
}

void (*sub_1E13BED64(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_1E13BEDEC;
}

void sub_1E13BEDEC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    v5 = v4 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view;
    if (*(v4 + v3[7]) == 1)
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_8;
      }

      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 8) + 8);
    }

    else
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_8;
      }

      v9 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      v8 = (*(v9 + 8) + 16);
    }

    (*v8)(ObjectType);
    swift_unknownObjectRelease();
  }

LABEL_8:

  free(v3);
}

BOOL sub_1E13BEEE0()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken;
  swift_beginAccess();
  sub_1E13BFF54(v0 + v1, v4);
  v2 = v5 != 0;
  sub_1E1308058(v4, &qword_1ECEB2DF0);
  return v2;
}

uint64_t sub_1E13BEF54()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken;
  swift_beginAccess();
  sub_1E13BFF54(v0 + v1, &v11);
  if (!v12[1])
  {
    return sub_1E1308058(&v11, &qword_1ECEB2DF0);
  }

  sub_1E1301CF0(&v11, v13);
  v2 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  swift_beginAccess();
  if (*(v0 + v2))
  {
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  *(v0 + v2) = 1;
  v4 = v0 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v5 + 8) + 8))(ObjectType);
    swift_unknownObjectRelease();
  }

  sub_1E137A5C4(v13, v12);
  *&v11 = 0xD00000000000001FLL;
  *(&v11 + 1) = 0x80000001E1B5BD60;
  type metadata accessor for JSIntentDispatcher();
  v7 = *(v0 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_objectGraph);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E1369384(&v11, v7, "AppStoreKit/ArcadeSeeAllGamesContentPresenter.swift", 51, 2);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  v8 = sub_1E1361A80();

  v9 = sub_1E1AF68EC();
  v10[3] = v8;
  v10[4] = MEMORY[0x1E69AB720];
  v10[0] = v9;
  sub_1E1AF57FC();

  sub_1E13BFFD4(&v11);
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_1E13BF204(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_1E13BFF54(v1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, v9);
    v4 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken;
    swift_beginAccess();
    sub_1E137F818(v9, v3 + v4);
    swift_endAccess();
    sub_1E13BF43C(v1);
    v5 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
    swift_beginAccess();
    *(v3 + v5) = 0;
    v6 = v3 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v7 + 8) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1E13BF330()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
    swift_beginAccess();
    *(v1 + v2) = 0;
    v3 = v1 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v4 + 8) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }

    memset(v7, 0, sizeof(v7));
    v6 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken;
    swift_beginAccess();
    sub_1E137F818(v7, v1 + v6);
    swift_endAccess();
  }

  return result;
}

unint64_t sub_1E13BF43C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF00EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (v9 >> 62)
  {
    goto LABEL_16;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v11 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_18;
  }

LABEL_3:
  v24 = v5;
  v26 = MEMORY[0x1E69E7CC0];
  sub_1E13C049C(&unk_1EE1E22F8, MEMORY[0x1E6969B50]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3080);
  sub_1E13C03AC();
  sub_1E1AF6EEC();
  v27 = *(v2 + v8);

  result = sub_1E16356A4();
  a1 = result;
  v25 = v4;
  v23 = v2;
  if (result >> 62)
  {
    while (1)
    {
      result = sub_1E1AF71CC();
      v13 = result;
      if (!result)
      {
        break;
      }

LABEL_5:
      if (v13 < 1)
      {
        __break(1u);
        return result;
      }

      v4 = 0;
      v14 = v11 & ~(v11 >> 63);
      v2 = v14 + 1;
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E68FFD80](v4, a1);
        }

        else
        {
        }

        v5 = &v27;
        MEMORY[0x1E68FEF20](v15);
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22[1] = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1E1AF625C();
        }

        sub_1E1AF62AC();
        if ((v14 ^ v4) == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        ++v4;
        sub_1E1AF00AC();

        ++v2;
        if (v13 == v4)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_16:
      v16 = sub_1E1AF71CC();
      v11 = v16 - 1;
      if (!__OFSUB__(v16, 1))
      {
        goto LABEL_3;
      }

LABEL_18:
      __break(1u);
    }
  }

  else
  {
    v13 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_5;
    }
  }

LABEL_20:

  v17 = v23 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 8);
    swift_getObjectType();
    v19 = swift_allocObject();
    v20 = swift_weakInit();
    v21 = MEMORY[0x1EEE9AC00](v20);
    v22[-2] = v19;
    v22[-1] = &v27;
    (*(v18 + 32))(MEMORY[0x1E69E7CC0], v7, sub_1E13C0410, v21);
    swift_unknownObjectRelease();
    (v24[1])(v7, v25);
  }

  else
  {
    (v24[1])(v7, v25);
  }
}

uint64_t sub_1E13BF818(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *a2;
    v6 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
    swift_beginAccess();
    *(v4 + v6) = v5;

    sub_1E176F7A4(v7, 0);
  }

  return result;
}

uint64_t sub_1E13BF8CC()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    return sub_1E1AF71CC();
  }

  else
  {
    return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1E13BF934(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x1E68FFD80](a1, v5);

    return v6;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v6 = *(v5 + 8 * a1 + 32);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E13BF9E0(unint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v6 = *(v2 + v5);

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v2 + v5) = v6;
  if (!result || v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    result = sub_1E14E7234(v6);
    v6 = result;
    *(v2 + v5) = result;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = a2;
    *(v2 + v5) = v6;
    swift_endAccess();
  }

  __break(1u);
  return result;
}

BOOL sub_1E13BFAA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    v5 = sub_1E1AF71CC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 > a1;
}

unint64_t sub_1E13BFB24()
{
  v1 = sub_1E1AF019C();
  v2 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    if (v1 < sub_1E1AF71CC())
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_3:
  result = sub_1E1AF019C();
  v5 = *(v0 + v2);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v9 = result;

    v6 = MEMORY[0x1E68FFD80](v9, v5);

    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 8 * result + 32);

LABEL_7:
    v7 = *(v6 + 24);

    v8 = *(v7 + 16);

    return sub_1E1AF018C() < v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E13BFC78()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_pageUrl;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken, &qword_1ECEB2DF0);

  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view);
  v3 = v0 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_delegate;

  return sub_1E1337DEC(v3);
}

uint64_t ArcadeSeeAllGamesContentPresenter.deinit()
{
  v0 = BasePresenter.deinit();

  v1 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_pageUrl;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken, &qword_1ECEB2DF0);

  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view);
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_delegate);
  return v0;
}

uint64_t ArcadeSeeAllGamesContentPresenter.__deallocating_deinit()
{
  ArcadeSeeAllGamesContentPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E13BFF54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E13C0028(uint64_t a1)
{
  result = sub_1E13C049C(&qword_1ECEB3068, type metadata accessor for ArcadeSeeAllGamesContentPresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ArcadeSeeAllGamesContentPresenter()
{
  result = qword_1ECEB3070;
  if (!qword_1ECEB3070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E13C0138()
{
  result = sub_1E1AEFCCC();
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

unint64_t sub_1E13C03AC()
{
  result = qword_1EE1D2610;
  if (!qword_1EE1D2610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB3080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2610);
  }

  return result;
}

uint64_t sub_1E13C0418(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E13C045C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E13C049C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RibbonBarItemCellLayout.Metrics.init(artworkSize:interimSpacing:leadingSpacing:trailingSpacing:artworkBottomSpacing:artworkTopSpacing:labelBottomSpacing:labelTopSpacing:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, double *a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  *a8 = floor(a9);
  a8[1] = floor(a10);
  sub_1E1308EC0(a1, (a8 + 2));
  sub_1E1308EC0(a2, (a8 + 7));
  sub_1E1308EC0(a3, (a8 + 12));
  sub_1E1308EC0(a4, (a8 + 17));
  sub_1E1308EC0(a5, (a8 + 22));
  sub_1E1308EC0(a6, (a8 + 27));

  return sub_1E1308EC0(a7, (a8 + 32));
}

uint64_t sub_1E13C0718(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RibbonBarItemCellLayout.__allocating_init(metrics:artwork:titleLabel:)(const void *a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  memcpy((v6 + 16), a1, 0x128uLL);
  v7 = *(a2 + 16);
  *(v6 + 312) = *a2;
  *(v6 + 328) = v7;
  *(v6 + 344) = *(a2 + 32);
  sub_1E1308EC0(a3, v6 + 352);
  return v6;
}

uint64_t RibbonBarItemCellLayout.init(metrics:artwork:titleLabel:)(void *__src, uint64_t a2, __int128 *a3)
{
  memcpy((v3 + 16), __src, 0x128uLL);
  v6 = *(a2 + 16);
  *(v3 + 312) = *a2;
  *(v3 + 328) = v6;
  *(v3 + 344) = *(a2 + 32);
  sub_1E1308EC0(a3, v3 + 352);
  return v3;
}

uint64_t sub_1E13C0880@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_1E1AF1B9C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v43 = &v38 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - v11;
  v13 = sub_1E1AF15FC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - v18;
  sub_1E13C0718(v1 + 312, &v55);
  if (v56)
  {
    sub_1E1308EC0(&v55, v58);
    v42 = v17;
    sub_1E1AF15DC();
    sub_1E1300B24(v58, &v55);
    v20 = *(v1 + 16);
    v41 = v14;
    v21 = MEMORY[0x1E69E7DE0];
    v39 = v19;
    v22 = MEMORY[0x1E69AB858];
    *(v12 + 3) = MEMORY[0x1E69E7DE0];
    *(v12 + 4) = v22;
    *v12 = v20;
    v23 = *MEMORY[0x1E69ABB00];
    v40 = v13;
    v24 = *(v3 + 104);
    v24(v12, v23, v2);
    v25 = *(v1 + 24);
    *(v10 + 3) = v21;
    *(v10 + 4) = v22;
    *v10 = v25;
    v24(v10, v23, v2);
    v26 = *MEMORY[0x1E69ABB08];
    v24(v43, v26, v2);
    v24(v44, v26, v2);
    v53 = sub_1E1AF1BAC();
    v54 = MEMORY[0x1E69ABB10];
    __swift_allocate_boxed_opaque_existential_0(v52);
    sub_1E1AF1BBC();
    sub_1E1300B24(v1 + 192, v51);
    v27 = MEMORY[0x1E69E63B0];
    v28 = MEMORY[0x1E69ABBA8];
    v49 = MEMORY[0x1E69E63B0];
    v50 = MEMORY[0x1E69ABBA8];
    v48[0] = 0;
    sub_1E1300B24(v1 + 152, v47);
    sub_1E1300B24(v1 + 32, v46);
    v29 = sub_1E1AF1BEC();
    v56 = v29;
    v57 = MEMORY[0x1E69ABB40];
    v30 = MEMORY[0x1E69ABB40];
    __swift_allocate_boxed_opaque_existential_0(&v55);
    sub_1E1AF1BFC();
    v31 = v39;
    v32 = v1;
    v33 = v42;
    sub_1E1AF15EC();
    v34 = *(v41 + 8);
    v35 = v33;
    v36 = v40;
    v34(v35, v40);
    __swift_destroy_boxed_opaque_existential_1(&v55);
    sub_1E1300B24(v32 + 352, v52);
    sub_1E1300B24(v32 + 272, v51);
    v49 = v27;
    v50 = v28;
    v48[0] = 0;
    sub_1E1300B24(v32 + 232, v47);
    v46[3] = v27;
    v46[4] = v28;
    v46[0] = 0;
    v56 = v29;
    v57 = v30;
    __swift_allocate_boxed_opaque_existential_0(&v55);
    sub_1E1AF1BFC();
    v53 = v36;
    v54 = MEMORY[0x1E69AB968];
    __swift_allocate_boxed_opaque_existential_0(v52);
    sub_1E1AF15EC();
    v34(v31, v36);
    __swift_destroy_boxed_opaque_existential_1(&v55);
    v51[3] = v27;
    v51[4] = v28;
    v51[0] = 0;
    sub_1E1300B24(v32 + 72, v48);
    v47[3] = v27;
    v47[4] = v28;
    v47[0] = 0;
    sub_1E1300B24(v32 + 112, v46);
    v56 = v29;
    v57 = MEMORY[0x1E69ABB40];
    __swift_allocate_boxed_opaque_existential_0(&v55);
    sub_1E1AF1BFC();
    sub_1E1AF1B4C();
    sub_1E1AF1B6C();
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  else
  {
    sub_1E13C0E00(&v55);
    sub_1E1300B24(v1 + 352, &v55);
    sub_1E1300B24(v1 + 272, v52);
    sub_1E1300B24(v1 + 72, v51);
    sub_1E1300B24(v1 + 232, v48);
    sub_1E1300B24(v1 + 112, v47);
    v58[3] = sub_1E1AF1BEC();
    v58[4] = MEMORY[0x1E69ABB40];
    __swift_allocate_boxed_opaque_existential_0(v58);
    sub_1E1AF1BFC();
    sub_1E1AF1B4C();
    return sub_1E1AF1B6C();
  }
}

uint64_t sub_1E13C0E00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RibbonBarItemCellLayout.deinit()
{
  sub_1E13C0EC0(v0 + 16);
  sub_1E13C0E00(v0 + 312);
  __swift_destroy_boxed_opaque_existential_1(v0 + 352);
  return v0;
}

uint64_t RibbonBarItemCellLayout.__deallocating_deinit()
{
  sub_1E13C0EC0(v0 + 16);
  sub_1E13C0E00(v0 + 312);
  __swift_destroy_boxed_opaque_existential_1(v0 + 352);

  return swift_deallocClassInstance();
}

uint64_t sub_1E13C0FC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RibbonBarItemCellLayout();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E13C1054(uint64_t a1, uint64_t a2, double a3, double a4)
{
  WitnessTable = swift_getWitnessTable();
  v9.n128_f64[0] = a3;
  v10.n128_f64[0] = a4;

  return MEMORY[0x1EEE17F10](a1, a2, WitnessTable, v9, v10);
}

uint64_t sub_1E13C10CC(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  WitnessTable = swift_getWitnessTable();
  v13.n128_f64[0] = a3;
  v14.n128_f64[0] = a4;
  v15.n128_f64[0] = a5;
  v16.n128_f64[0] = a6;

  return MEMORY[0x1EEE17F08](a1, a2, WitnessTable, v13, v14, v15, v16);
}

uint64_t sub_1E13C115C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE17F00](a1, a2, WitnessTable);
}

uint64_t sub_1E13C121C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 296))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E13C1264(uint64_t result, int a2, int a3)
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
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}