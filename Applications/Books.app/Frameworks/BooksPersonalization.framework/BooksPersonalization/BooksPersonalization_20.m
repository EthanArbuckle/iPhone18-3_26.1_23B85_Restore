uint64_t sub_152D5C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v87 = a3;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_90:
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_52E40(v7);
      v7 = result;
    }

    v75 = v7 + 2;
    v76 = v7[2];
    if (v76 >= 2)
    {
      while (*v87)
      {
        v77 = &v7[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1542A8((*v87 + 568 * *v77), (*v87 + 568 * *v79), (*v87 + 568 * v80), v85);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_116;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_117;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_118;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_128;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*v87 + 568 * v6);
      v10 = 568 * v8;
      v11 = (*v87 + 568 * v8);
      v12 = *v11;
      v13 = v8 + 2;
      v14 = v11 + 71;
      while (v5 != v13)
      {
        v15 = v14[71];
        v16 = *v14;
        v14 += 71;
        ++v13;
        if (v9 < v12 == v15 >= v16)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_121;
      }

      if (v8 < v6)
      {
        v17 = 568 * v6 - 568;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v20 = *v87;
            if (!*v87)
            {
              goto LABEL_127;
            }

            memcpy(__dst, (v20 + v10), sizeof(__dst));
            memmove((v20 + v10), (v20 + v17), 0x238uLL);
            result = memcpy((v20 + v17), __dst, 0x231uLL);
          }

          ++v19;
          v17 -= 568;
          v10 += 568;
        }

        while (v19 < v18);
        v5 = v87[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_120;
      }

      if (v6 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v6 < v8)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v28 = v7[2];
    v27 = v7[3];
    v29 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      result = sub_32F04((v27 > 1), v28 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v29;
    v30 = v7 + 4;
    v31 = &v7[2 * v28 + 4];
    *v31 = v8;
    v31[1] = v6;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_129;
    }

    if (v28)
    {
      while (1)
      {
        v32 = v29 - 1;
        if (v29 >= 4)
        {
          break;
        }

        if (v29 == 3)
        {
          v33 = v7[4];
          v34 = v7[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_59:
          if (v36)
          {
            goto LABEL_106;
          }

          v49 = &v7[2 * v29];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_108;
          }

          v55 = &v30[2 * v32];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_113;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v32 = v29 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v29 < 2)
        {
          goto LABEL_114;
        }

        v59 = &v7[2 * v29];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_74:
        if (v54)
        {
          goto LABEL_110;
        }

        v62 = &v30[2 * v32];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_112;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_81:
        if (v32 - 1 >= v29)
        {
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
          goto LABEL_123;
        }

        if (!*v87)
        {
          goto LABEL_126;
        }

        v70 = &v30[2 * v32 - 2];
        v71 = *v70;
        v72 = &v30[2 * v32];
        v73 = v72[1];
        sub_1542A8((*v87 + 568 * *v70), (*v87 + 568 * *v72), (*v87 + 568 * v73), v85);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_101;
        }

        if (v32 > v7[2])
        {
          goto LABEL_102;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v7[2];
        if (v32 >= v74)
        {
          goto LABEL_103;
        }

        v29 = v74 - 1;
        result = memmove(&v30[2 * v32], v72 + 2, 16 * (v74 - 1 - v32));
        v7[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v30[2 * v29];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_104;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_105;
      }

      v44 = &v7[2 * v29];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_107;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_109;
      }

      if (v48 >= v40)
      {
        v66 = &v30[2 * v32];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_115;
        }

        if (v35 < v69)
        {
          v32 = v29 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_3:
    v5 = v87[1];
    if (v6 >= v5)
    {
      goto LABEL_90;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_122;
  }

  v85 = v7;
  if (v8 + a4 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = (v8 + a4);
  }

  if (v7 < v8)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v6 == v7)
  {
LABEL_38:
    v7 = v85;
    goto LABEL_39;
  }

  v21 = *v87;
  v22 = *v87 + 568 * v6;
  v82 = v8;
  v23 = v8 - v6;
LABEL_31:
  v24 = v23;
  v25 = v22;
  while (1)
  {
    if (*v25 >= *(v25 - 71))
    {
LABEL_30:
      ++v6;
      v22 += 568;
      --v23;
      if (v6 != v7)
      {
        goto LABEL_31;
      }

      v6 = v7;
      v8 = v82;
      goto LABEL_38;
    }

    if (!v21)
    {
      break;
    }

    memcpy(__dst, v25, sizeof(__dst));
    memcpy(v25, v25 - 71, 0x238uLL);
    result = memcpy(v25 - 71, __dst, 0x231uLL);
    v25 -= 71;
    if (__CFADD__(v24++, 1))
    {
      goto LABEL_30;
    }
  }

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
  return result;
}

uint64_t sub_153340(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v97 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_108:
    v97 = *v97;
    if (!v97)
    {
      goto LABEL_146;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_110;
  }

  v6 = a4;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v5)
    {
      ++v7;
      goto LABEL_34;
    }

    v11 = (*a3 + 24 * v10);
    v12 = v11[2];
    v13 = (*a3 + 24 * v7);
    v14 = v13[2];
    if (v12 >= v14)
    {
      v16 = *v13;
      v17 = v12 != v14 || *v11 >= v16;
      v15 = !v17;
    }

    else
    {
      v15 = 1;
    }

    v7 += 2;
    if (v9 + 2 < v5)
    {
      v10 = v5 - 1;
      v18 = *v11;
      v19 = (*a3 + 24 * v9 + 64);
      do
      {
        v20 = v12;
        v21 = *(v19 - 2);
        v12 = *v19;
        if (*v19 < v20)
        {
          if ((v15 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else if (*v19 == v20)
        {
          if (((v15 ^ (v21 >= v18)) & 1) == 0)
          {
            v10 = v7 - 1;
            if ((v15 & 1) == 0)
            {
              goto LABEL_34;
            }

LABEL_26:
            if (v7 >= v9)
            {
              if (v9 <= v10)
              {
                v22 = 24 * v7 - 8;
                v23 = 24 * v9;
                v24 = v7;
                v25 = v9;
                do
                {
                  if (v25 != --v24)
                  {
                    v26 = *a3;
                    if (!*a3)
                    {
                      goto LABEL_143;
                    }

                    v27 = (v26 + v23);
                    v28 = (v26 + v22);
                    v29 = *v27;
                    v30 = *(v27 + 2);
                    v31 = *v28;
                    *v27 = *(v28 - 1);
                    *(v27 + 2) = v31;
                    *(v28 - 1) = v29;
                    *v28 = v30;
                  }

                  ++v25;
                  v22 -= 24;
                  v23 += 24;
                }

                while (v25 < v24);
                v5 = a3[1];
              }

              goto LABEL_34;
            }

LABEL_139:
            __break(1u);
LABEL_140:
            result = sub_52E40(v8);
            v8 = result;
LABEL_110:
            v89 = v8 + 16;
            v90 = *(v8 + 2);
            if (v90 >= 2)
            {
              while (*a3)
              {
                v91 = &v8[16 * v90];
                v92 = *v91;
                v93 = &v89[2 * v90];
                v94 = v93[1];
                sub_154508((*a3 + 24 * *v91), (*a3 + 24 * *v93), *a3 + 24 * v94, v97);
                if (v4)
                {
                }

                if (v94 < v92)
                {
                  goto LABEL_132;
                }

                if (v90 - 2 >= *v89)
                {
                  goto LABEL_133;
                }

                *v91 = v92;
                *(v91 + 1) = v94;
                v95 = *v89 - v90;
                if (*v89 < v90)
                {
                  goto LABEL_134;
                }

                v90 = *v89 - 1;
                result = memmove(v93, v93 + 2, 16 * v95);
                *v89 = v90;
                if (v90 <= 1)
                {
                }
              }

              goto LABEL_144;
            }
          }
        }

        else if (v15)
        {
          v10 = v7 - 1;
          goto LABEL_26;
        }

        v19 += 3;
        ++v7;
        v18 = v21;
      }

      while (v5 != v7);
      v7 = v5;
    }

    if (v15)
    {
      goto LABEL_26;
    }

LABEL_34:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_136;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_137;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v43 = *(v8 + 2);
    v42 = *(v8 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_32F04((v42 > 1), v43 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v44;
    v45 = &v8[16 * v43];
    *(v45 + 4) = v9;
    *(v45 + 5) = v7;
    v46 = *v97;
    if (!*v97)
    {
      goto LABEL_145;
    }

    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v8 + 4);
          v49 = *(v8 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_75:
          if (v51)
          {
            goto LABEL_123;
          }

          v64 = &v8[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_126;
          }

          v70 = &v8[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_130;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v74 = &v8[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_89:
        if (v69)
        {
          goto LABEL_125;
        }

        v77 = &v8[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_128;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_96:
        v85 = v47 - 1;
        if (v47 - 1 >= v44)
        {
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_142;
        }

        v86 = *&v8[16 * v85 + 32];
        v87 = *&v8[16 * v47 + 40];
        sub_154508((*a3 + 24 * v86), (*a3 + 24 * *&v8[16 * v47 + 32]), *a3 + 24 * v87, v46);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_52E40(v8);
        }

        if (v85 >= *(v8 + 2))
        {
          goto LABEL_120;
        }

        v88 = &v8[16 * v85];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        result = sub_52DB4(v47);
        v44 = *(v8 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v8[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_121;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_122;
      }

      v59 = &v8[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_124;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_127;
      }

      if (v63 >= v55)
      {
        v81 = &v8[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_131;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_108;
    }
  }

  v32 = *a3;
  v33 = *a3 + 24 * v7;
  v34 = v9 - v7;
LABEL_44:
  v35 = *(v32 + 24 * v7 + 16);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = *(v37 - 1);
    if (v35 >= v38 && (v35 != v38 || *v37 >= *(v37 - 3)))
    {
LABEL_43:
      ++v7;
      v33 += 24;
      --v34;
      if (v7 != v5)
      {
        goto LABEL_44;
      }

      v7 = v5;
      goto LABEL_55;
    }

    if (!v32)
    {
      break;
    }

    v40 = *v37;
    v41 = v37[1];
    *v37 = *(v37 - 3);
    v37[2] = *(v37 - 1);
    *(v37 - 2) = v41;
    *(v37 - 1) = v35;
    *(v37 - 3) = v40;
    v37 -= 3;
    v17 = __CFADD__(v36++, 1);
    if (v17)
    {
      goto LABEL_43;
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
  return result;
}

uint64_t sub_153964(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 136;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 136;
  if (v9 < v11)
  {
    v12 = 136 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 136)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 136;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 136;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 136;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v14, 0x88uLL);
    goto LABEL_9;
  }

  v16 = 136 * v11;
  if (a4 != __src || &__src[v16] <= a4)
  {
    memmove(a4, __src, 136 * v11);
  }

  v13 = &v4[v16];
  if (v10 >= 136 && v6 > v7)
  {
LABEL_20:
    v17 = v6 - 136;
    v5 -= 136;
    v18 = v13;
    do
    {
      v19 = v5 + 136;
      v20 = *(v18 - 17);
      v18 -= 136;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          memmove(v5, v6 - 136, 0x88uLL);
        }

        if (v13 <= v4 || (v6 -= 136, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v19 != v13)
      {
        memmove(v5, v18, 0x88uLL);
      }

      v5 -= 136;
      v13 = v18;
    }

    while (v18 > v4);
    v13 = v18;
  }

LABEL_31:
  v21 = 136 * ((v13 - v4) / 136);
  if (v6 != v4 || v6 >= &v4[v21])
  {
    memmove(v6, v4, v21);
  }

  return 1;
}

uint64_t sub_153B94(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 568;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 568;
  if (v9 >= v11)
  {
    v40 = 568 * v11;
    if (a4 != __src || &__src[v40] <= a4)
    {
      memmove(a4, __src, 568 * v11);
    }

    v13 = &v4[v40];
    if (v10 < 568 || v6 <= v7)
    {
      goto LABEL_74;
    }

    v73 = v7;
    __srcb = v4;
LABEL_39:
    v68 = v6;
    v41 = v6 - 568;
    v42 = v13;
    v70 = v6 - 568;
    while (1)
    {
      v43 = v5;
      v84 = v42;
      v42 -= 568;
      memcpy(__dsta, v42, 0x231uLL);
      result = memcpy(v83, v41, 0x231uLL);
      v44 = __dsta[18];
      if (__dsta[18] >> 1 == 0xFFFFFFFFLL)
      {
        goto LABEL_80;
      }

      v45 = __dsta[12];
      v46 = __dsta[13];
      v47 = __dsta[14];
      v48 = __dsta[15];
      v49 = __dsta[16];
      v50 = __dsta[17];
      v71 = v43;
      if ((__dsta[18] >> 62) > 2)
      {
        v51 = __dsta[12];
      }

      else
      {
        sub_2B0C(&qword_229488, &qword_1BC520);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1BCA80;
        *(v51 + 32) = v45;
        *(v51 + 40) = v46;
        *(v51 + 48) = v47;
        *(v51 + 56) = v48;
        *(v51 + 64) = v49;
        *(v51 + 72) = v50;
        *(v51 + 80) = v44 & 1;
      }

      sub_4299C(__dsta, &v77);
      sub_4299C(v83, &v77);
      sub_43050(&__dsta[12], &v77, &qword_22A4E0, &unk_1C01D0);
      v52 = COERCE_DOUBLE(Array<A>.affinity.getter(v51));
      v54 = v53;

      if (v54)
      {
        v55 = 0.0;
      }

      else
      {
        v55 = v52;
      }

      v79 = v83[8];
      v80 = v83[9];
      v81 = *&v83[10];
      v77 = v83[6];
      v78 = v83[7];
      v56 = v83[9];
      if (*&v83[9] >> 1 == 0xFFFFFFFFLL)
      {
LABEL_81:
        __break(1u);
        return result;
      }

      v57 = v77;
      v58 = v78;
      v59 = v79;
      if ((*&v83[9] >> 62) > 2)
      {
        v60 = v77;
      }

      else
      {
        sub_2B0C(&qword_229488, &qword_1BC520);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1BCA80;
        *(v60 + 32) = v57;
        *(v60 + 48) = v58;
        *(v60 + 64) = v59;
        *(v60 + 80) = v56 & 1;
      }

      sub_42CD4(&v77, v76);
      v61 = COERCE_DOUBLE(Array<A>.affinity.getter(v60));
      v63 = v62;

      sub_2601C(v83);
      sub_2601C(__dsta);
      v41 = v70;
      if (v63)
      {
        v4 = __srcb;
        v64 = v71;
        if (v55 == 0.0)
        {
          goto LABEL_58;
        }

        v65 = 0.0;
      }

      else
      {
        v65 = v61;
        v39 = v55 == v61;
        v4 = __srcb;
        v64 = v71;
        if (v39)
        {
LABEL_58:
          v5 = v64 - 568;
          v13 = v84;
          if (__dsta[0] < *&v83[0])
          {
            goto LABEL_65;
          }

          goto LABEL_61;
        }
      }

      v13 = v84;
      v5 = v64 - 568;
      if (v65 < v55)
      {
LABEL_65:
        if (v64 < v68 || v5 >= v68)
        {
          memmove(v5, v70, 0x238uLL);
          v66 = v73;
        }

        else
        {
          v66 = v73;
          if (v64 != v68)
          {
            memmove(v5, v70, 0x238uLL);
          }
        }

        if (v13 <= v4 || (v6 = v70, v70 <= v66))
        {
          v6 = v70;
          goto LABEL_74;
        }

        goto LABEL_39;
      }

LABEL_61:
      if (v64 < v13 || v5 >= v13 || v13 != v64)
      {
        memmove(v5, v42, 0x238uLL);
      }

      if (v42 <= v4)
      {
        v13 = v42;
        v6 = v68;
        goto LABEL_74;
      }
    }
  }

  v12 = 568 * v9;
  if (a4 != __dst || &__dst[v12] <= a4)
  {
    memmove(a4, __dst, v12);
  }

  v13 = &v4[v12];
  if (v8 >= 568 && v6 < v5)
  {
    v84 = v13;
    v69 = v5;
    do
    {
      v72 = v7;
      v14 = v6;
      memcpy(__dsta, v6, 0x231uLL);
      result = memcpy(v83, v4, 0x231uLL);
      v16 = __dsta[18];
      if (__dsta[18] >> 1 == 0xFFFFFFFFLL)
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v17 = __dsta[12];
      v18 = __dsta[13];
      v19 = __dsta[14];
      v20 = __dsta[15];
      v21 = __dsta[16];
      v22 = __dsta[17];
      __srca = v4;
      if ((__dsta[18] >> 62) > 2)
      {
        v23 = __dsta[12];
      }

      else
      {
        sub_2B0C(&qword_229488, &qword_1BC520);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1BCA80;
        *(v23 + 32) = v17;
        *(v23 + 40) = v18;
        *(v23 + 48) = v19;
        *(v23 + 56) = v20;
        *(v23 + 64) = v21;
        *(v23 + 72) = v22;
        *(v23 + 80) = v16 & 1;
      }

      sub_4299C(__dsta, &v77);
      sub_4299C(v83, &v77);
      sub_43050(&__dsta[12], &v77, &qword_22A4E0, &unk_1C01D0);
      v24 = COERCE_DOUBLE(Array<A>.affinity.getter(v23));
      v26 = v25;

      if (v26)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v24;
      }

      v79 = v83[8];
      v80 = v83[9];
      v81 = *&v83[10];
      v77 = v83[6];
      v78 = v83[7];
      v28 = v83[9];
      if (*&v83[9] >> 1 == 0xFFFFFFFFLL)
      {
        goto LABEL_79;
      }

      v29 = v77;
      v30 = v78;
      v31 = v79;
      if ((*&v83[9] >> 62) > 2)
      {
        v32 = v77;
      }

      else
      {
        sub_2B0C(&qword_229488, &qword_1BC520);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1BCA80;
        *(v32 + 32) = v29;
        *(v32 + 48) = v30;
        *(v32 + 64) = v31;
        *(v32 + 80) = v28 & 1;
      }

      sub_42CD4(&v77, v76);
      v33 = COERCE_DOUBLE(Array<A>.affinity.getter(v32));
      v35 = v34;

      sub_2601C(v83);
      sub_2601C(__dsta);
      v13 = v84;
      if (v35)
      {
        v4 = __srca;
        if (v27 == 0.0)
        {
          goto LABEL_23;
        }

        v36 = 0.0;
      }

      else
      {
        v36 = v33;
        v4 = __srca;
        if (v27 == v33)
        {
LABEL_23:
          v6 = v14;
          v37 = v72;
          if (__dsta[0] >= *&v83[0])
          {
            goto LABEL_28;
          }

          goto LABEL_24;
        }
      }

      v6 = v14;
      v37 = v72;
      if (v36 >= v27)
      {
LABEL_28:
        v38 = v4;
        v39 = v37 == v4;
        v4 += 568;
        if (v39)
        {
          goto LABEL_30;
        }

LABEL_29:
        memmove(v37, v38, 0x238uLL);
        goto LABEL_30;
      }

LABEL_24:
      v38 = v6;
      v39 = v37 == v6;
      v6 += 568;
      if (!v39)
      {
        goto LABEL_29;
      }

LABEL_30:
      v7 = v37 + 568;
    }

    while (v4 < v13 && v6 < v69);
  }

  v6 = v7;
LABEL_74:
  v67 = 568 * ((v13 - v4) / 568);
  if (v6 != v4 || v6 >= &v4[v67])
  {
    memmove(v6, v4, v67);
  }

  return 1;
}

uint64_t sub_1542A8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 568;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 568;
  if (v9 >= v11)
  {
    v16 = 568 * v11;
    if (a4 != __src || &__src[v16] <= a4)
    {
      memmove(a4, __src, 568 * v11);
    }

    v13 = &v4[v16];
    if (v10 >= 568 && v6 > v7)
    {
LABEL_21:
      v17 = v6 - 568;
      v5 -= 568;
      do
      {
        v18 = v5 + 568;
        v19 = (v13 - 568);
        if (*(v13 - 71) < *v17)
        {
          if (v18 != v6)
          {
            memmove(v5, v6 - 568, 0x238uLL);
          }

          if (v13 <= v4 || (v6 -= 568, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_33;
          }

          goto LABEL_21;
        }

        if (v18 != v13)
        {
          memmove(v5, v13 - 568, 0x238uLL);
        }

        v5 -= 568;
        v13 -= 568;
      }

      while (v19 > v4);
      v13 = v19;
    }
  }

  else
  {
    v12 = 568 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 568)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while (*v6 < *v4)
        {
          v14 = v6;
          v15 = v7 == v6;
          v6 += 568;
          if (!v15)
          {
            goto LABEL_12;
          }

LABEL_13:
          v7 += 568;
          if (v4 >= v13 || v6 >= v5)
          {
            goto LABEL_15;
          }
        }

        v14 = v4;
        v15 = v7 == v4;
        v4 += 568;
        if (v15)
        {
          goto LABEL_13;
        }

LABEL_12:
        memmove(v7, v14, 0x238uLL);
        goto LABEL_13;
      }

LABEL_15:
      v6 = v7;
    }
  }

LABEL_33:
  v20 = 568 * ((v13 - v4) / 568);
  if (v6 != v4 || v6 >= &v4[v20])
  {
    memmove(v6, v4, v20);
  }

  return 1;
}

uint64_t sub_154508(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *(v6 + 2);
      v17 = *(v4 + 2);
      if (v16 >= v17 && (v16 != v17 || *v6 >= *v4))
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_25:
    v19 = v6 - 24;
    v5 -= 24;
    do
    {
      v20 = (v5 + 24);
      v21 = *(v12 - 1);
      v22 = *(v6 - 1);
      if (v21 < v22 || ((v23 = v12 - 24, v21 == v22) ? (v24 = *(v12 - 3) >= *v19) : (v24 = 1), !v24))
      {
        if (v20 != v6)
        {
          v26 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v26;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_41;
        }

        goto LABEL_25;
      }

      if (v20 != v12)
      {
        v25 = *v23;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v25;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v23 > v4);
    v12 = v23;
  }

LABEL_41:
  v27 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v28 = (v27 >> 2) + (v27 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v28])
  {
    memmove(v6, v4, 24 * v28);
  }

  return 1;
}

uint64_t sub_15476C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_229360, &qword_1BC400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1547DC()
{
  v1 = (type metadata accessor for SeedBasedRecommendationRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = v0 + v3;
  v8 = sub_1B40F4();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + v1[7]);

  v10 = *(v7 + v1[8] + 8);

  v11 = *(v7 + v1[9] + 8);

  v12 = *(v7 + v1[14]);

  v13 = *(v0 + v4);

  v14 = (v0 + v5);
  v15 = *(v0 + v5 + 80);

  v16 = *(v0 + v5 + 416);

  v17 = *(v0 + v5 + 456);

  v18 = *(v0 + v5 + 464);

  v19 = *(v0 + v5 + 472);

  v20 = *(v0 + v5 + 512);

  v21 = *(v0 + v5 + 536);

  v22 = *(v0 + v5 + 544);

  v23 = *(v0 + v5 + 560);

  v24 = *(v0 + v5 + 568);

  v25 = *(v0 + v5 + 576);

  v26 = *(v0 + v5 + 584);

  v27 = *(v0 + v5 + 592);

  v28 = *(v0 + v5 + 632);

  v29 = *(v0 + v5 + 648);

  v30 = *(v0 + v5 + 696);

  v31 = *(v0 + v5 + 712);

  v32 = *(v0 + v5 + 720);

  if (*(v0 + v5 + 904))
  {

    v33 = v14[114];
  }

  if (v14[116])
  {

    v34 = v14[118];

    v35 = v14[120];
  }

  if (v14[124])
  {

    v36 = v14[126];
  }

  v37 = v14[130];

  if (v14[134])
  {

    v38 = v14[136];

    v39 = v14[138];
  }

  return _swift_deallocObject(v0, v5 + 1120, v2 | 7);
}

uint64_t sub_154A10(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SeedBasedRecommendationRequest(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_226C;

  return sub_14C4E0(a1, v9, v10, v1 + v6, v11, v1 + v8);
}

void *sub_154B48(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a2;
  v7 = a1;
  v8 = 0;
  v9 = a1;
  while (1)
  {
    v10 = v9 <= a2;
    if (a3 > 0)
    {
      v10 = v9 >= a2;
    }

    if (v10)
    {
      break;
    }

    v11 = __OFADD__(v9, a3);
    v9 += a3;
    if (v11)
    {
      v9 = (v9 >> 63) ^ 0x8000000000000000;
    }

    v11 = __OFADD__(v8++, 1);
    if (v11)
    {
      __break(1u);
      break;
    }
  }

  sub_37728(0, v8, 0);
  v32 = v6;
  if (v8)
  {
    result = a5;
    v30 = a5 + 4;
    v31 = a5[2];
    while (1)
    {
      v14 = v7 <= v6;
      if (a3 > 0)
      {
        v14 = v7 >= v6;
      }

      if (v14)
      {
        break;
      }

      if (__OFADD__(v7, a3))
      {
        v15 = ((v7 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v15 = v7 + a3;
      }

      if (__OFADD__(v7, a4))
      {
        goto LABEL_50;
      }

      if (v31 >= v7 + a4)
      {
        v16 = v7 + a4;
      }

      else
      {
        v16 = v31;
      }

      if (v16 < v7)
      {
        goto LABEL_51;
      }

      if (v7 < 0)
      {
        goto LABEL_52;
      }

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      v19 = result;

      if (v18 >= v17 >> 1)
      {
        sub_37728((v17 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      v20 = &_swiftEmptyArrayStorage[4 * v18];
      v20[4] = v19;
      v20[5] = v30;
      v20[6] = v7;
      v20[7] = (2 * v16) | 1;
      v7 = v15;
      --v8;
      result = v19;
      v6 = v32;
      if (!v8)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {
    v15 = v7;
    result = a5;
LABEL_29:
    v21 = v15 <= v6;
    if (a3 > 0)
    {
      v21 = v15 >= v6;
    }

    if (v21)
    {
      return _swiftEmptyArrayStorage;
    }

    v22 = result + 4;
    while (1)
    {
      v23 = __OFADD__(v15, a3) ? ((v15 + a3) >> 63) ^ 0x8000000000000000 : v15 + a3;
      if (__OFADD__(v15, a4))
      {
        break;
      }

      if (result[2] >= v15 + a4)
      {
        v24 = v15 + a4;
      }

      else
      {
        v24 = result[2];
      }

      if (v24 < v15)
      {
        goto LABEL_54;
      }

      if (v15 < 0)
      {
        goto LABEL_55;
      }

      v26 = _swiftEmptyArrayStorage[2];
      v25 = _swiftEmptyArrayStorage[3];
      v27 = result;

      if (v26 >= v25 >> 1)
      {
        sub_37728((v25 > 1), v26 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v26 + 1;
      v28 = &_swiftEmptyArrayStorage[4 * v26];
      v28[4] = v27;
      v28[5] = v22;
      v28[6] = v15;
      v28[7] = (2 * v24) | 1;
      v29 = v23 <= v32;
      if (a3 > 0)
      {
        v29 = v23 >= v32;
      }

      v15 = v23;
      result = v27;
      if (v29)
      {
        return _swiftEmptyArrayStorage;
      }
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

void sub_154DD4(uint64_t a1, uint64_t a2, void *a3, const void *a4, char a5, double a6)
{
  v78 = a2;
  v77 = a4;
  v10 = sub_2B0C(&qword_22E188, &qword_1D1540);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  (*(v13 + 16))(&v67 - v12, a1, v10);
  sub_42094(&qword_22E190, &qword_22E188, &qword_1D1540);
  sub_1B4974();
  v14 = a5 & 1;
  v15 = v87;
  v16 = v87 + 40;
  v17 = *(v87 + 16);
  *(&v18 + 1) = 2;
  v76 = xmmword_1BCA80;
  *&v18 = 134217984;
  v75 = v18;
LABEL_2:
  v19 = v88;
  v20 = (v16 + 24 * v88);
  v21 = v88;
  while (1)
  {
    if (v17 == v21)
    {

      return;
    }

    if (v19 < 0)
    {
      break;
    }

    if (v21 >= *(v15 + 16))
    {
      goto LABEL_39;
    }

    v22 = *(v20 - 1);
    v23 = *v20;
    v88 = ++v21;
    v20 += 3;
    if (*(v23 + 16))
    {

      v24 = sub_3AFEC(0, 0);
      if ((v25 & 1) == 0)
      {

        goto LABEL_2;
      }

      v26 = (*(*(v23 + 56) + 8 * v24) + *(v78 + 352)) / (*(v78 + 352) + 1.0);
      v74 = v16;
      if (v26 <= 0.0)
      {
        if (qword_228358 != -1)
        {
          swift_once();
        }

        v40 = sub_1B4644();
        sub_50E58(v40, qword_260C80);
        v41 = sub_1B4624();
        v42 = sub_1B4D94();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v73 = v14;
          *v43 = v75;
          *(v43 + 4) = v22;
          _os_log_impl(&dword_0, v41, v42, "received negative conditional score for %llu. ignoring", v43, 0xCu);
          v14 = v73;
        }

        goto LABEL_35;
      }

      v27 = *a3;
      v28 = 0uLL;
      v29 = 0.0;
      if (!*(*a3 + 16))
      {
        v31 = 0uLL;
        v32 = 0uLL;
        goto LABEL_20;
      }

      v30 = sub_43124(v22);
      v28 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      if ((v33 & 1) == 0)
      {
        goto LABEL_20;
      }

      v34 = (*(v27 + 56) + (v30 << 6));
      v36 = v34[2];
      v35 = v34[3];
      v37 = v34[1];
      v80 = *v34;
      v81 = v37;
      *v82 = v36;
      *&v82[16] = v35;
      v70 = v37;
      v71 = v80;
      v38 = v36;
      v69 = *&v82[8];
      v29 = *(&v35 + 1);
      sub_42BA4(&v80, v83);
      v32 = v69;
      v31 = v70;
      v28 = v71;
      v39 = v29;
      if (!v38)
      {
LABEL_20:
        v38 = 0;
        v39 = 0.0;
      }

      v83[0] = v28;
      v83[1] = v31;
      v84 = v38;
      v85 = v32;
      v86 = v29;
      sub_42F48(v83, &qword_22BC40, &unk_1C5DC0);
      v44 = *a3;
      v45 = *(*a3 + 16);
      v72 = a3;
      v73 = v14;
      if (v45)
      {
        v46 = sub_43124(v22);
        if (v47)
        {
          v48 = (*(v44 + 56) + (v46 << 6));
          v50 = v48[2];
          v49 = v48[3];
          v51 = v48[1];
          v80 = *v48;
          v81 = v51;
          *v82 = v50;
          *&v82[16] = v49;
          v53 = *(&v80 + 1);
          v52 = v80;
          *&v71 = *(&v51 + 1);
          v54 = v51;
          *&v70 = *(&v50 + 1);
          v55 = v49;
          v68 = v50;
          *&v69 = *(&v49 + 1);
          sub_42BA4(&v80, &v79);
          if (v68)
          {
            v80 = __PAIR128__(v53, v52);
            *&v81 = v54;
            *(&v81 + 1) = v71;
            *v82 = v68;
            *&v82[8] = v70;
            *&v82[16] = v55;
            *&v82[24] = v69;

            sub_42F48(&v80, &qword_22BC40, &unk_1C5DC0);
            if (v55)
            {
              if (!*(v55 + 16))
              {
LABEL_33:
                v60 = _swiftEmptyArrayStorage;
                goto LABEL_34;
              }

LABEL_31:
              v58 = sub_3AB0C(0);
              if ((v59 & 1) == 0)
              {
                goto LABEL_33;
              }

              v60 = *(*(v55 + 56) + 8 * v58);

LABEL_34:
              sub_2B0C(&qword_229218, &unk_1C0210);
              v61 = swift_allocObject();
              *(v61 + 16) = v76;
              v62 = v77;
              memcpy((v61 + 32), v77, 0x231uLL);
              v79 = v60;
              sub_4299C(v62, &v80);
              sub_5FE24(v61);
              v63 = v79;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v80 = v55;
              sub_54CDC(v63, 0, isUniquelyReferenced_nonNull_native);
              *&v89 = v22;
              v14 = v73;
              BYTE8(v89) = v73;
              v90 = 0;
              v91 = -1;
              v92 = _swiftEmptyArrayStorage;
              v93 = v26;
              v94 = v80;
              v95 = v26 * a6 + v39;

              a3 = v72;
              v65 = *v72;
              v66 = swift_isUniquelyReferenced_nonNull_native();
              *&v80 = *a3;
              *a3 = 0x8000000000000000;
              sub_540BC(&v89, v22, v66);
              *a3 = v80;

LABEL_35:
              v16 = v74;
              goto LABEL_2;
            }

LABEL_30:
            v55 = sub_130214(_swiftEmptyArrayStorage);

            if (!*(v55 + 16))
            {
              goto LABEL_33;
            }

            goto LABEL_31;
          }

          v45 = v69;
          v56 = v70;
          v57 = v71;
LABEL_29:
          *&v80 = v52;
          *(&v80 + 1) = v53;
          *&v81 = v54;
          *(&v81 + 1) = v57;
          *v82 = 0;
          *&v82[8] = v56;
          *&v82[16] = v55;
          *&v82[24] = v45;
          sub_42F48(&v80, &qword_22BC40, &unk_1C5DC0);
          goto LABEL_30;
        }

        v45 = 0;
      }

      v55 = 0;
      v56 = 0;
      v57 = 0;
      v54 = 0;
      v53 = 0;
      v52 = 0;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_1553FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v48 = a5;
  v46 = a3;
  v47 = a4;
  v59 = a2;
  v6 = sub_2B0C(&qword_22E188, &qword_1D1540);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v55 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v58 = &v40 - v11;
  v12 = a1 + 56;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  v53 = v10 + 32;
  v54 = v10 + 16;
  v56 = v10;
  v52 = (v10 + 8);

  v18 = 0;
  v50 = xmmword_1BCA80;
  v57 = v6;
  while (v15)
  {
LABEL_9:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    result = memcpy(v61, (*(a1 + 48) + 568 * (v20 | (v18 << 6))), sizeof(v61));
    if (*(v59 + 16))
    {
      result = sub_43124(*v61);
      if (v21)
      {
        v22 = a1;
        v24 = v55;
        v23 = v56;
        (*(v56 + 16))(v55, *(v59 + 56) + *(v56 + 72) * result, v6);
        (*(v23 + 32))(v58, v24, v6);
        v62 = *&v61[96];
        v63 = *&v61[112];
        v64 = *&v61[128];
        v65 = *&v61[144];
        v66 = *&v61[160];
        v25 = v61[144];
        if (*&v61[144] >> 1 == 0xFFFFFFFFLL)
        {
          sub_4299C(v61, v60);
          a1 = v22;
        }

        else
        {
          v26 = v62;
          v49 = v22;
          if ((*&v61[144] >> 62) > 1)
          {
            if (*&v61[144] >> 62 == 2)
            {
              v44 = *(&v64 + 1);
              v45 = *(&v63 + 1);
              v42 = v64;
              v43 = v63;
              v31 = *(&v62 + 1);
              sub_2B0C(&qword_229488, &qword_1BC520);
              v27 = swift_allocObject();
              *(v27 + 16) = v50;
              *(v27 + 32) = v26;
              *(v27 + 40) = v31;
              v32 = v45;
              *(v27 + 48) = v43;
              *(v27 + 56) = v32;
              v33 = v44;
              *(v27 + 64) = v42;
              *(v27 + 72) = v33;
              *(v27 + 80) = v25 & 1;
            }

            else
            {
              v27 = v62;
            }
          }

          else
          {
            v41 = *(&v62 + 1);
            v42 = v64;
            v43 = v63;
            v44 = *(&v64 + 1);
            v45 = *(&v63 + 1);
            sub_2B0C(&qword_229488, &qword_1BC520);
            v27 = swift_allocObject();
            *(v27 + 16) = v50;
            v28 = v41;
            *(v27 + 32) = v26;
            *(v27 + 40) = v28;
            v29 = v45;
            *(v27 + 48) = v43;
            *(v27 + 56) = v29;
            v30 = v44;
            *(v27 + 64) = v42;
            *(v27 + 72) = v30;
            *(v27 + 80) = v25;
          }

          sub_4299C(v61, v60);
          sub_43050(&v62, v60, &qword_22A4E0, &unk_1C01D0);
          v34 = COERCE_DOUBLE(Array<A>.affinity.getter(v27));
          v36 = v35;

          if (v36)
          {
            a1 = v49;
          }

          else
          {
            v37 = v34;
            a1 = v49;
            if (v34 > 0.0)
            {
              sub_4299C(v61, v60);
              v38 = v46;
              sub_71C74(v46, v60);
              v39 = v51;
              sub_154DD4(v58, v38, v47, v61, v48 & 1, v37);
              v51 = v39;
              sub_2601C(v61);
              sub_71DC0(v38);
            }
          }
        }

        v6 = v57;
        (*v52)(v58, v57);
        result = sub_2601C(v61);
      }
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
    }

    v15 = *(v12 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_155848(uint64_t a1)
{
  v2 = type metadata accessor for SeedBasedRecommendationRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1558A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  result = type metadata accessor for SeedBasedRecommendationRequest(0);
  v7 = *(v4 + *(result + 32));
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  *(a2 + 24) = -1;
  *(a2 + 32) = _swiftEmptyArrayStorage;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_155914(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7A038;

  return sub_F44D0(a1, a2, v6);
}

uint64_t sub_155A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 - 1 < 3)
  {
  }

  if (!a7)
  {
  }

  return result;
}

uint64_t sub_155AD4(uint64_t a1)
{
  if ((*(a1 + 8) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_155AF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 9))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 8);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_155B38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_155B7C(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 8) = a2;
  return result;
}

void *sub_155BA4(double (*a1)(__int128 *), uint64_t a2, void (*a3)(__int128 *__return_ptr, _OWORD *, double), uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v8 = *(a5 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_37708(0, v8, 0);
    v9 = _swiftEmptyArrayStorage;
    v40 = v8;
    v41 = v5;
    for (i = (v5 + 32); ; i += 4)
    {
      --v8;
      v11 = i[1];
      v49 = *i;
      v50 = v11;
      v12 = i[3];
      v14 = *i;
      v13 = i[1];
      v51 = i[2];
      v52 = v12;
      v45 = v14;
      v46 = v13;
      v15 = i[3];
      v47 = i[2];
      v48 = v15;
      sub_42BA4(&v49, v44);
      v16 = a1(&v45);
      sub_43FF4(&v49);
      v42 = v9;
      v18 = v9[2];
      v17 = v9[3];
      if (v18 >= v17 >> 1)
      {
        sub_37708((v17 > 1), v18 + 1, 1);
        v9 = v42;
      }

      v9[2] = v18 + 1;
      *&v9[v18 + 4] = fabs(v16);
      if (!v8)
      {
        break;
      }
    }

    v8 = v40;
    v5 = v41;
  }

  v19 = v9[2];
  if (v19)
  {
    v20 = *(v9 + 4);
    v21 = v19 - 1;
    if (v21)
    {
      v22 = (v9 + 5);
      do
      {
        v23 = *v22++;
        v24 = v23;
        if (v20 < v23)
        {
          v20 = v24;
        }

        --v21;
      }

      while (v21);
    }

    v25 = _swiftEmptyArrayStorage;
    if (v8 && v20 != 0.0)
    {
      v43 = _swiftEmptyArrayStorage;
      sub_375F8(0, v8, 0);
      v25 = _swiftEmptyArrayStorage;
      for (j = (v5 + 32); ; j += 4)
      {
        --v8;
        v27 = j[1];
        v45 = *j;
        v46 = v27;
        v28 = j[3];
        v30 = *j;
        v29 = j[1];
        v47 = j[2];
        v48 = v28;
        v44[0] = v30;
        v44[1] = v29;
        v31 = j[3];
        v44[2] = j[2];
        v44[3] = v31;
        sub_42BA4(&v45, &v42);
        v32 = a1(v44);
        a3(&v49, v44, v32 / v20);
        sub_43FF4(&v45);
        v43 = v25;
        v34 = v25[2];
        v33 = v25[3];
        if (v34 >= v33 >> 1)
        {
          sub_375F8((v33 > 1), v34 + 1, 1);
          v25 = v43;
        }

        v25[2] = v34 + 1;
        v35 = &v25[8 * v34];
        v36 = v49;
        v37 = v50;
        v38 = v52;
        v35[4] = v51;
        v35[5] = v38;
        v35[2] = v36;
        v35[3] = v37;
        if (!v8)
        {
          break;
        }
      }
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v25;
}

void *Array<A>.positionScored()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_375F8(0, v1, 0);
  v3 = (a1 + 80);
  for (i = v1 - 1; ; --i)
  {
    v16 = *(v3 - 6);
    v15 = *(v3 - 40);
    v5 = *(v3 - 4);
    v6 = *(v3 - 24);
    v8 = *(v3 - 2);
    v7 = *(v3 - 1);
    v9 = *v3;
    sub_43688(v5, v6);

    sub_43688(v5, v6);

    sub_43CE0(v5, v6);

    v20 = *v18;
    HIBYTE(v20) = v18[3];
    v19 = *v17;
    HIBYTE(v19) = v17[3];
    v11 = _swiftEmptyArrayStorage[2];
    v10 = _swiftEmptyArrayStorage[3];
    if (v11 >= v10 >> 1)
    {
      sub_375F8((v10 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v12 = &_swiftEmptyArrayStorage[8 * v11];
    v12[4] = v16;
    *(v12 + 40) = v15;
    *(v12 + 41) = v20;
    *(v12 + 11) = *&v18[3];
    v12[6] = v5;
    *(v12 + 56) = v6;
    *(v12 + 15) = *&v17[3];
    *(v12 + 57) = v19;
    v12[8] = v8;
    v12[9] = v7;
    v12[10] = v9;
    *(v12 + 11) = i;
    if (!i)
    {
      break;
    }

    v3 += 7;
  }

  v13 = sub_155BA4(sub_43354, 0, sub_4335C, 0, _swiftEmptyArrayStorage);

  return v13;
}

uint64_t sub_156010@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2B0C(&qword_22A518, &qword_1C0220);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v74 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v73 = &v72 - v13;
  v14 = __chkstk_darwin(v12);
  v72 = (&v72 - v15);
  __chkstk_darwin(v14);
  v17 = &v72 - v16;
  v18 = sub_1B4414();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v80 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v79 = &v72 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v72 - v25;
  __chkstk_darwin(v24);
  v85 = a4;
  sub_1B45C4();
  v84 = a2;
  v86 = a2;
  v87 = a3;

  v88._countAndFlagsBits = 0x44496D6164612ELL;
  v88._object = 0xE700000000000000;
  sub_1B48D4(v88);
  sub_1B43F4();
  v27 = *(a1 + 16);
  v77 = a3;
  v78 = v27;
  v75 = v26;
  v76 = a1;
  if (v27)
  {
    v86 = _swiftEmptyArrayStorage;
    sub_3747C(0, v27, 0);
    v28 = v86;
    v29 = (a1 + 40);
    do
    {
      v30 = *(v29 - 1);
      v31 = *v29;
      v86 = v28;
      v33 = v28[2];
      v32 = v28[3];

      if (v33 >= v32 >> 1)
      {
        sub_3747C((v32 > 1), v33 + 1, 1);
        v28 = v86;
      }

      v28[2] = v33 + 1;
      v34 = &v28[2 * v33];
      v34[4] = v30;
      v34[5] = v31;
      v29 += 5;
      --v27;
    }

    while (v27);
    a3 = v77;
    v27 = v78;
    a1 = v76;
  }

  sub_1B4574();
  v35 = sub_1B4594();
  v36 = *(v35 - 8);
  v37 = v36;
  v82 = *(v36 + 56);
  v83 = v35;
  v81 = v36 + 56;
  v82(v17, 0, 1);
  sub_1B45F4();
  v86 = v84;
  v87 = a3;

  v89._countAndFlagsBits = 0x6F6964754173692ELL;
  v89._object = 0xEC0000006B6F6F42;
  sub_1B48D4(v89);
  sub_1B43F4();
  v38 = _swiftEmptyArrayStorage;
  if (v27)
  {
    v86 = _swiftEmptyArrayStorage;
    sub_377EC(0, v27, 0);
    v38 = v86;
    v39 = v86[2];
    v40 = (a1 + 48);
    v41 = v27;
    do
    {
      v43 = *v40;
      v40 += 10;
      v42 = v43;
      v86 = v38;
      v44 = v38[3];
      if (v39 >= v44 >> 1)
      {
        sub_377EC((v44 > 1), v39 + 1, 1);
        v38 = v86;
      }

      v38[2] = v39 + 1;
      *(v38 + v39++ + 8) = v42;
      --v41;
    }

    while (v41);
  }

  v45 = v72;
  *v72 = v38;
  v46 = v83;
  (*(v37 + 104))(v45, enum case for Feature.int32List(_:), v83);
  (v82)(v45, 0, 1, v46);
  sub_1B45F4();
  v86 = v84;
  v87 = a3;

  v90._countAndFlagsBits = 0x444965726E65672ELL;
  v90._object = 0xE900000000000073;
  sub_1B48D4(v90);
  sub_1B43F4();
  v47 = _swiftEmptyArrayStorage;
  if (v27)
  {
    v48 = (a1 + 64);
    v49 = v27;
    do
    {
      v50 = *(v48 - 3);
      v51 = *v48;
      v86 = *(v48 - 1);

      sub_2B0C(&qword_228590, &qword_1B6590);
      sub_76824();
      v52 = sub_1B4764();
      v54 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_3301C(0, *(v47 + 2) + 1, 1, v47);
      }

      v56 = *(v47 + 2);
      v55 = *(v47 + 3);
      if (v56 >= v55 >> 1)
      {
        v47 = sub_3301C((v55 > 1), v56 + 1, 1, v47);
      }

      *(v47 + 2) = v56 + 1;
      v57 = &v47[16 * v56];
      *(v57 + 4) = v52;
      *(v57 + 5) = v54;
      v48 += 5;
      --v49;
    }

    while (v49);
  }

  v58 = v73;
  sub_1B4574();
  (v82)(v58, 0, 1, v83);
  sub_1B45F4();
  v86 = v84;
  v87 = v77;

  v91._countAndFlagsBits = 0x49726F687475612ELL;
  v91._object = 0xEA00000000007344;
  sub_1B48D4(v91);
  sub_1B43F4();
  v59 = v78;
  if (v78)
  {
    v60 = (v76 + 64);
    v61 = _swiftEmptyArrayStorage;
    do
    {
      v62 = *(v60 - 3);
      v63 = *(v60 - 1);
      v86 = *v60;

      sub_2B0C(&qword_228590, &qword_1B6590);
      sub_76824();
      v64 = sub_1B4764();
      v66 = v65;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_3301C(0, *(v61 + 2) + 1, 1, v61);
      }

      v68 = *(v61 + 2);
      v67 = *(v61 + 3);
      if (v68 >= v67 >> 1)
      {
        v61 = sub_3301C((v67 > 1), v68 + 1, 1, v61);
      }

      *(v61 + 2) = v68 + 1;
      v69 = &v61[16 * v68];
      *(v69 + 4) = v64;
      *(v69 + 5) = v66;
      v60 += 5;
      --v59;
    }

    while (v59);
  }

  v70 = v74;
  sub_1B4574();
  (v82)(v70, 0, 1, v83);
  return sub_1B45F4();
}

uint64_t sub_156794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_935CC;

  return (sub_15685C)(a1, a4, a5);
}

uint64_t sub_15685C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_1B3B64();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_156920, 0, 0);
}

uint64_t sub_156920()
{
  v1 = v0[7];
  v2 = sub_1B3B34();
  v0[14] = v2;
  v0[15] = v3;
  if (v3 >> 60 == 15)
  {
    v20 = (v0[8] + *v0[8]);
    v4 = *(v0[8] + 4);
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_156D74;
    v6 = v0[9];
    v7 = v0[7];
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v10 = *sub_2698((v0[10] + 16), *(v0[10] + 40));
    v11 = sub_75F44(v8, v9);
    v13 = v12;
    v14 = v0[8];
    v15 = v11;
    (*(v0[12] + 16))(v0[13], v0[7], v0[11]);
    v23._object = 0x80000000001D8420;
    v22.value._countAndFlagsBits = v15;
    v22.value._object = v13;
    v23._countAndFlagsBits = 0xD000000000000017;
    sub_1B3B54(v22, v23);

    v20 = (v14 + *v14);
    v16 = v14[1];
    v17 = swift_task_alloc();
    v0[16] = v17;
    *v17 = v0;
    v17[1] = sub_156BAC;
    v7 = v0[13];
    v18 = v0[9];
  }

  return v20(v7);
}

uint64_t sub_156BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = v3;
  v7 = v5[16];
  v10 = *v4;
  v6[17] = v3;

  if (v3)
  {
    v8 = sub_156EB8;
  }

  else
  {
    v8 = sub_156CCC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_156CCC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_85D94(v0[14], v0[15]);
  (*(v2 + 8))(v1, v3);
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[5];
  v7 = v0[13];

  v8 = v0[1];

  return v8(v5, v4, v6);
}

uint64_t sub_156D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 144);
  v10 = *v4;

  v11 = *(v8 + 104);

  v15 = *(v10 + 8);
  if (!v3)
  {
    v12 = a1;
    v13 = a2;
    v14 = a3;
  }

  return v15(v12, v13, v14);
}

uint64_t sub_156EB8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_85D94(v0[14], v0[15]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[17];
  v5 = v0[13];

  v6 = v0[1];

  return v6();
}

uint64_t Sequence<>.grouped<A>(by:)()
{
  return Sequence<>.grouped<A>(by:)();
}

{
  swift_getAssociatedTypeWitness();
  sub_1B4CF4();
  sub_1B4664();
  sub_1B4724();
  sub_1B49F4();
  swift_getWitnessTable();
  sub_1B43B4();
  v0 = sub_1B46D4();

  return v0;
}

uint64_t Sequence.grouped<A>(by:)()
{
  return Sequence.grouped<A>(by:)();
}

{
  swift_getAssociatedTypeWitness();
  sub_1B4B94();
  sub_1B4664();
  sub_1B4724();
  sub_1B49F4();
  swift_getWitnessTable();
  sub_1B43B4();
  v0 = sub_1B46D4();

  return v0;
}

uint64_t sub_156FDC(uint64_t a1)
{
  v1 = sub_157268(a1);
  if (v1[2])
  {
    sub_2B0C(&qword_229700, &qword_1BCB58);
    v2 = sub_1B52B4();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v4 = v2;
  sub_15BE9C(v1, 1, &v4);

  return v4;
}

uint64_t sub_157084(uint64_t a1)
{
  v1 = sub_1573E8(a1);
  if (*(v1 + 16))
  {
    sub_2B0C(&qword_22E250, &qword_1D14F0);
    v2 = sub_1B52B4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v2;
  sub_15C2D8(v1, 1, &v4);

  return v4;
}

uint64_t Sequence.hashedUniquely<A>(by:)(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a1;
  v17 = a2;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = sub_15767C(sub_15AC08, v11, a3, TupleTypeMetadata2, &type metadata for Never, a5, &protocol witness table for Never, v9);
  sub_1B4B94();
  swift_getWitnessTable();
  return sub_1B4734();
}

void *sub_157268(uint64_t a1)
{
  v2 = *(a1 + 16);
  v43 = _swiftEmptyArrayStorage;
  sub_37594(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = a1 + 32;
    for (i = v2 - 1; ; --i)
    {
      v6 = *(v4 + 80);
      v7 = *(v4 + 112);
      v31 = *(v4 + 96);
      v32 = v7;
      v8 = *(v4 + 16);
      v9 = *(v4 + 48);
      v27 = *(v4 + 32);
      v28 = v9;
      v10 = *(v4 + 48);
      v11 = *(v4 + 80);
      v29 = *(v4 + 64);
      v30 = v11;
      v12 = *(v4 + 16);
      v26[0] = *v4;
      v26[1] = v12;
      v13 = *(v4 + 112);
      v40 = v31;
      v41 = v13;
      v36 = v27;
      v37 = v10;
      v38 = v29;
      v39 = v6;
      v33 = *(v4 + 128);
      v14 = *&v26[0];
      v42 = *(v4 + 128);
      v34 = v26[0];
      v35 = v8;
      sub_429F8(v26, v25);
      v43 = v3;
      v16 = v3[2];
      v15 = v3[3];
      if (v16 >= v15 >> 1)
      {
        sub_37594((v15 > 1), v16 + 1, 1);
        v3 = v43;
      }

      v3[2] = v16 + 1;
      v17 = &v3[18 * v16];
      v17[4] = v14;
      *(v17 + 5) = v34;
      v18 = v35;
      v19 = v36;
      v20 = v37;
      *(v17 + 13) = v38;
      *(v17 + 11) = v20;
      *(v17 + 9) = v19;
      *(v17 + 7) = v18;
      v21 = v39;
      v22 = v40;
      v23 = v41;
      *(v17 + 168) = v42;
      *(v17 + 19) = v23;
      *(v17 + 17) = v22;
      *(v17 + 15) = v21;
      if (!i)
      {
        break;
      }

      v4 += 136;
    }
  }

  return v3;
}

uint64_t sub_1573E8(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v29 = _swiftEmptyArrayStorage;
  sub_37978(0, v2, 0);
  v3 = v1 + 56;
  v4 = _swiftEmptyArrayStorage;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 56);
  v8 = (63 - v6) >> 6;
  v24 = v2;
  v25 = v1;
  if (v2)
  {

    v10 = 0;
    v11 = 0;
    while (v7)
    {
LABEL_10:
      v13 = (*(v1 + 48) + 568 * (__clz(__rbit64(v7)) | (v10 << 6)));
      memcpy(__dst, v13, 0x231uLL);
      v14 = __dst[0];
      memcpy(__src, v13, sizeof(__src));
      sub_4299C(__dst, v26);
      v29 = v4;
      v16 = v4[2];
      v15 = v4[3];
      if (v16 >= v15 >> 1)
      {
        sub_37978((v15 > 1), v16 + 1, 1);
        v4 = v29;
      }

      ++v11;
      v7 &= v7 - 1;
      v4[2] = v16 + 1;
      v17 = &v4[72 * v16];
      v17[4] = v14;
      result = memcpy(v17 + 5, __src, 0x231uLL);
      v1 = v25;
      if (v11 == v24)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_26;
      }

      v7 = *(v3 + 8 * v12);
      ++v10;
      if (v7)
      {
        v10 = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {

    v10 = 0;
LABEL_15:
    if (v7)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v18 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v18 >= v8)
      {

        return v4;
      }

      v7 = *(v3 + 8 * v18);
      ++v10;
      if (v7)
      {
        v10 = v18;
        do
        {
LABEL_20:
          v19 = (*(v1 + 48) + 568 * (__clz(__rbit64(v7)) | (v10 << 6)));
          memcpy(__dst, v19, 0x231uLL);
          v20 = __dst[0];
          memcpy(__src, v19, sizeof(__src));
          sub_4299C(__dst, v26);
          v29 = v4;
          v22 = v4[2];
          v21 = v4[3];
          if (v22 >= v21 >> 1)
          {
            sub_37978((v21 > 1), v22 + 1, 1);
            v4 = v29;
          }

          v7 &= v7 - 1;
          v4[2] = v22 + 1;
          v23 = &v4[72 * v22];
          v23[4] = v20;
          result = memcpy(v23 + 5, __src, 0x231uLL);
          v1 = v25;
        }

        while (v7);
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_15767C(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = __chkstk_darwin(AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = __chkstk_darwin(v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v64 = &v49 - v21;
  v22 = sub_1B4EA4();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = __chkstk_darwin(v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = __chkstk_darwin(v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  __chkstk_darwin(v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  __chkstk_darwin(v69);
  v38 = &v49 - v37;
  v39 = sub_1B49A4();
  v70 = sub_1B51D4();
  v65 = sub_1B51E4();
  sub_1B5194(v39);
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_1B4974();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1B4ED4();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_1B51C4();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_1B4ED4();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_1B51C4();
      sub_1B4ED4();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t sub_157D70(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + (__clz(__rbit64(v9)) | (v13 << 6)));
      result = a1(&v14);
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_157E64(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
      result = a1(&v14);
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Sequence.mappedUniquely<A>(by:)()
{
  sub_1B4684();
  sub_1B4CF4();
  sub_1B49F4();
  return v1;
}

uint64_t Sequence<>.uniqued()()
{
  swift_getAssociatedTypeWitness();
  sub_1B4684();
  sub_1B4CF4();
  sub_1B49F4();
  return v1;
}

uint64_t sub_1580D0(uint64_t a1)
{
  v2 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v38 - v4;
  v44 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v6 = *(*(v44 - 8) + 64);
  v7 = __chkstk_darwin(v44);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v38 - v10;
  v42 = &_swiftEmptyDictionarySingleton;
  v47 = &_swiftEmptyDictionarySingleton;
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v43 = (v9 + 48);
  v38 = v9;
  v40 = (v9 + 32);
  v45 = a1;

  v17 = 0;
  while (1)
  {
    v18 = v17;
    if (!v14)
    {
      break;
    }

LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = (v17 << 9) | (8 * v19);
    v21 = *(*(v45 + 48) + v20);
    v46 = *(*(v45 + 56) + v20);

    sub_2B0C(&qword_229710, &unk_1D32C0);
    sub_42094(&qword_229718, &qword_229710, &unk_1D32C0);
    sub_1B43C4();
    if ((*v43)(v5, 1, v44) == 1)
    {
      result = sub_42F48(v5, &qword_229708, &unk_1BCB60);
    }

    else
    {
      v22 = v39;
      v23 = *v40;
      (*v40)(v39, v5, v44);
      v23(v41, v22, v44);
      v24 = v42;
      v25 = v42[2];
      if (v42[3] <= v25)
      {
        sub_17DB3C(v25 + 1, 1);
        v24 = v47;
      }

      v26 = v24[5];
      v27 = v24;
      result = sub_1B57E4();
      v28 = v27 + 8;
      v42 = v27;
      v29 = -1 << *(v27 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~v27[(v30 >> 6) + 8]) == 0)
      {
        v33 = 0;
        v34 = (63 - v29) >> 6;
        while (++v31 != v34 || (v33 & 1) == 0)
        {
          v35 = v31 == v34;
          if (v31 == v34)
          {
            v31 = 0;
          }

          v33 |= v35;
          v36 = v28[v31];
          if (v36 != -1)
          {
            v32 = __clz(__rbit64(~v36)) + (v31 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v32 = __clz(__rbit64((-1 << v30) & ~v27[(v30 >> 6) + 8])) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v28 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      v37 = v42;
      *(v42[6] + 8 * v32) = v21;
      result = (v23)(v37[7] + *(v38 + 72) * v32, v41, v44);
      ++v37[2];
    }
  }

  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      return v42;
    }

    v14 = *(v11 + 8 * v17);
    ++v18;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1584E0(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22E258, &qword_1CF5A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v38 - v4;
  v44 = sub_2B0C(&qword_22E188, &qword_1D1540);
  v6 = *(*(v44 - 8) + 64);
  v7 = __chkstk_darwin(v44);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v38 - v10;
  v42 = _swiftEmptyDictionarySingleton;
  v47 = _swiftEmptyDictionarySingleton;
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v43 = (v9 + 48);
  v38 = v9;
  v40 = (v9 + 32);
  v45 = a1;

  v17 = 0;
  while (1)
  {
    v18 = v17;
    if (!v14)
    {
      break;
    }

LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = (v17 << 9) | (8 * v19);
    v21 = *(*(v45 + 48) + v20);
    v46 = *(*(v45 + 56) + v20);

    sub_2B0C(&qword_22E260, &qword_1CF5A8);
    sub_42094(&qword_22E268, &qword_22E260, &qword_1CF5A8);
    sub_1B43C4();
    if ((*v43)(v5, 1, v44) == 1)
    {
      result = sub_42F48(v5, &qword_22E258, &qword_1CF5A0);
    }

    else
    {
      v22 = v39;
      v23 = *v40;
      (*v40)(v39, v5, v44);
      v23(v41, v22, v44);
      v24 = v42;
      v25 = v42[2];
      if (v42[3] <= v25)
      {
        sub_182C98(v25 + 1, 1);
        v24 = v47;
      }

      v26 = v24[5];
      v27 = v24;
      result = sub_1B57E4();
      v28 = v27 + 8;
      v42 = v27;
      v29 = -1 << *(v27 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~v27[(v30 >> 6) + 8]) == 0)
      {
        v33 = 0;
        v34 = (63 - v29) >> 6;
        while (++v31 != v34 || (v33 & 1) == 0)
        {
          v35 = v31 == v34;
          if (v31 == v34)
          {
            v31 = 0;
          }

          v33 |= v35;
          v36 = v28[v31];
          if (v36 != -1)
          {
            v32 = __clz(__rbit64(~v36)) + (v31 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v32 = __clz(__rbit64((-1 << v30) & ~v27[(v30 >> 6) + 8])) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v28 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      v37 = v42;
      *(v42[6] + 8 * v32) = v21;
      result = (v23)(v37[7] + *(v38 + 72) * v32, v41, v44);
      ++v37[2];
    }
  }

  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      return v42;
    }

    v14 = *(v11 + 8 * v17);
    ++v18;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_158920(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v25 = a2;
  v38 = &_swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v26 = xmmword_1BCA80;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = *(a1 + 56) + 136 * (__clz(__rbit64(v6)) | (v10 << 6));
      v30[0] = *v11;
      v12 = *(v11 + 64);
      v14 = *(v11 + 16);
      v13 = *(v11 + 32);
      v32 = *(v11 + 48);
      v33 = v12;
      v30[1] = v14;
      v31 = v13;
      v16 = *(v11 + 96);
      v15 = *(v11 + 112);
      v17 = *(v11 + 80);
      v37 = *(v11 + 128);
      v35 = v16;
      v36 = v15;
      v34 = v17;
      v18 = v33;
      v28[6] = v16;
      v28[7] = v15;
      v29 = v37;
      v28[2] = v31;
      v28[3] = v32;
      v28[4] = v33;
      v28[5] = v17;
      v28[0] = v30[0];
      v28[1] = v14;
      sub_2B0C(&qword_229238, &qword_1C09C0);
      inited = swift_initStackObject();
      *(inited + 16) = v26;
      sub_429F8(v30, &v27);
      result = sub_2070(v18);
      if (v20)
      {
        break;
      }

      v6 &= v6 - 1;
      *(inited + 32) = result;
      v21 = sub_9EE2C(inited);
      v22 = swift_setDeallocating();
      __chkstk_darwin(v22);
      v24[2] = &v38;
      v24[3] = v28;
      sub_157E64(v25, v24, v21);

      result = sub_5C740(v30);
      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        v23 = sub_1580D0(v38);

        return v23;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_158B60(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v25 = a2;
  v38 = &_swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v26 = xmmword_1BCA80;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = *(a1 + 56) + 136 * (__clz(__rbit64(v6)) | (v10 << 6));
      v30[0] = *v11;
      v12 = *(v11 + 64);
      v14 = *(v11 + 16);
      v13 = *(v11 + 32);
      v32 = *(v11 + 48);
      v33 = v12;
      v30[1] = v14;
      v31 = v13;
      v16 = *(v11 + 96);
      v15 = *(v11 + 112);
      v17 = *(v11 + 80);
      v37 = *(v11 + 128);
      v35 = v16;
      v36 = v15;
      v34 = v17;
      v18 = *(&v33 + 1);
      v28[6] = v16;
      v28[7] = v15;
      v29 = v37;
      v28[2] = v31;
      v28[3] = v32;
      v28[4] = v33;
      v28[5] = v17;
      v28[0] = v30[0];
      v28[1] = v14;
      sub_2B0C(&qword_229238, &qword_1C09C0);
      inited = swift_initStackObject();
      *(inited + 16) = v26;
      sub_429F8(v30, &v27);
      result = sub_2070(v18);
      if (v20)
      {
        break;
      }

      v6 &= v6 - 1;
      *(inited + 32) = result;
      v21 = sub_9EE2C(inited);
      v22 = swift_setDeallocating();
      __chkstk_darwin(v22);
      v24[2] = &v38;
      v24[3] = v28;
      sub_157E64(v25, v24, v21);

      result = sub_5C740(v30);
      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        v23 = sub_1580D0(v38);

        return v23;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_158D88(uint64_t a1)
{
  v2 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v62 = &v54 - v4;
  v63 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v58 = *(v63 - 8);
  v5 = *(v58 + 64);
  v6 = __chkstk_darwin(v63);
  v56 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v57 = &v54 - v8;
  v76 = &_swiftEmptyDictionarySingleton;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + 32;
    v64 = xmmword_1BCA80;
    do
    {
      v11 = *(v10 + 80);
      v12 = *(v10 + 112);
      v73 = *(v10 + 96);
      v74 = v12;
      v13 = *(v10 + 16);
      v14 = *(v10 + 48);
      v69 = *(v10 + 32);
      v70 = v14;
      v15 = *(v10 + 48);
      v16 = *(v10 + 80);
      v71 = *(v10 + 64);
      v72 = v16;
      v17 = *(v10 + 16);
      v68[0] = *v10;
      v68[1] = v17;
      v18 = *(v10 + 112);
      v66[6] = v73;
      v66[7] = v18;
      v66[0] = v68[0];
      v66[1] = v13;
      v66[2] = v69;
      v66[3] = v15;
      v75 = *(v10 + 128);
      v67 = *(v10 + 128);
      v66[4] = v71;
      v66[5] = v11;
      v19 = BYTE8(v68[0]);
      sub_2B0C(&qword_2293B8, &qword_1BC458);
      inited = swift_initStackObject();
      *(inited + 16) = v64;
      *(inited + 32) = v19;
      sub_429F8(v68, &v65);
      v21 = sub_9EABC(inited);
      v22 = swift_setDeallocating();
      __chkstk_darwin(v22);
      *(&v54 - 2) = &v76;
      *(&v54 - 1) = v66;
      sub_157D70(sub_15BE48, (&v54 - 4), v21);

      sub_5C740(v68);
      v10 += 136;
      --v9;
    }

    while (v9);
    v23 = v76;
  }

  else
  {
    v23 = &_swiftEmptyDictionarySingleton;
  }

  v59 = &_swiftEmptyDictionarySingleton;
  *&v66[0] = &_swiftEmptyDictionarySingleton;
  v24 = v23 + 64;
  v25 = 1 << v23[32];
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(v23 + 8);
  v28 = (v25 + 63) >> 6;
  *&v64 = v58 + 48;
  v55 = (v58 + 32);

  v30 = 0;
  v61 = v23;
  if (v27)
  {
    while (1)
    {
      v31 = v30;
LABEL_14:
      v32 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v33 = v32 | (v31 << 6);
      v34 = *(v23 + 7);
      v60 = *(*(v23 + 6) + v33);
      *&v68[0] = *(v34 + 8 * v33);
      swift_bridgeObjectRetain_n();
      sub_2B0C(&qword_229710, &unk_1D32C0);
      sub_42094(&qword_229718, &qword_229710, &unk_1D32C0);
      v35 = v62;
      sub_1B43C4();
      if ((*v64)(v35, 1, v63) == 1)
      {

        result = sub_42F48(v35, &qword_229708, &unk_1BCB60);
      }

      else
      {
        v36 = *v55;
        v37 = v35;
        v38 = v63;
        (*v55)(v57, v37, v63);
        v54 = v36;
        v36(v56, v57, v38);
        v39 = v59;
        v40 = v59[2];
        if (v59[3] <= v40)
        {
          sub_17DEAC(v40 + 1, 1);
          v39 = *&v66[0];
        }

        v41 = v39[5];
        sub_1B57F4();
        v42 = v60;
        sub_1B4884();

        result = sub_1B5844();
        v43 = v39 + 8;
        v59 = v39;
        v44 = -1 << *(v39 + 32);
        v45 = result & ~v44;
        v46 = v45 >> 6;
        if (((-1 << v45) & ~v39[(v45 >> 6) + 8]) == 0)
        {
          v48 = 0;
          v49 = (63 - v44) >> 6;
          while (++v46 != v49 || (v48 & 1) == 0)
          {
            v50 = v46 == v49;
            if (v46 == v49)
            {
              v46 = 0;
            }

            v48 |= v50;
            v51 = v43[v46];
            if (v51 != -1)
            {
              v47 = __clz(__rbit64(~v51)) + (v46 << 6);
              goto LABEL_30;
            }
          }

LABEL_33:
          __break(1u);
          return result;
        }

        v47 = __clz(__rbit64((-1 << v45) & ~v39[(v45 >> 6) + 8])) | v45 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
        *(v43 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
        v52 = v58;
        v53 = v59;
        *(v59[6] + v47) = v42;
        v54((v53[7] + *(v52 + 72) * v47), v56, v63);
        ++v53[2];
      }

      v30 = v31;
      v23 = v61;
      if (!v27)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v31 >= v28)
    {
      break;
    }

    v27 = *&v24[8 * v31];
    ++v30;
    if (v27)
    {
      goto LABEL_14;
    }
  }

  return v59;
}

uint64_t sub_159364(uint64_t a1)
{
  v1 = _swiftEmptyDictionarySingleton;
  v14 = _swiftEmptyDictionarySingleton;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 48);
    v12 = xmmword_1BCA80;
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v13[0] = *(v3 - 2);
      v13[1] = v4;
      v13[2] = v5;
      sub_2B0C(&qword_229238, &qword_1C09C0);
      inited = swift_initStackObject();
      *(inited + 16) = v12;
      *(inited + 32) = v5;
      v7 = sub_9EE2C(inited);
      v8 = swift_setDeallocating();
      __chkstk_darwin(v8);
      v11[2] = &v14;
      v11[3] = v13;

      sub_157E64(sub_15C5AC, v11, v7);

      v3 += 3;
      --v2;
    }

    while (v2);
    v1 = v14;
  }

  v9 = sub_1584E0(v1);

  return v9;
}

void *sub_159614(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_FEA58(a5, a5);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = *(*(a5 - 8) + 72);
  v15 = *(*(a5 - 8) + 80);
  swift_allocObject();
  v16 = sub_1B4AF4();
  a2(a1);
  v17 = sub_77558(v16);
  if (sub_1B4B84())
  {
    v18 = sub_FED9C(v17, a5, a7);
  }

  else
  {
    v18 = _swiftEmptySetSingleton;
  }

  return v18;
}

uint64_t sub_159728(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_1B4CF4();
  swift_getWitnessTable();
  sub_1B4A14();
}

uint64_t sub_159818(char a1, char **a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v4;
  v8 = v34;
  *v4 = 0x8000000000000000;
  v9 = a1 & 1;
  v11 = sub_3A9D8(a1 & 1);
  v12 = *(v8 + 2);
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10;
  if (*(v8 + 3) >= v14)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1858B0();
      v8 = v34;
    }
  }

  else
  {
    sub_17E278(v14, isUniquelyReferenced_nonNull_native);
    v8 = v34;
    v16 = sub_3A9D8(v9);
    if ((v15 & 1) != (v17 & 1))
    {
LABEL_17:
      result = sub_1B5784();
      __break(1u);
      return result;
    }

    v11 = v16;
  }

  v18 = *v4;
  *v4 = v8;

  v19 = *v4;
  if (v15)
  {
    goto LABEL_10;
  }

  *&v19[8 * (v11 >> 6) + 64] |= 1 << v11;
  *(*(v19 + 6) + v11) = v9;
  *(*(v19 + 7) + 8 * v11) = _swiftEmptyArrayStorage;
  v20 = *(v19 + 2);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v19 + 2) = v22;
LABEL_10:
  v4 = *(v19 + 7);
  v8 = v4[v11];
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v4[v11] = v8;
  if ((v23 & 1) == 0)
  {
LABEL_15:
    v8 = sub_33358(0, *(v8 + 2) + 1, 1, v8);
    v4[v11] = v8;
  }

  v25 = *(v8 + 2);
  v24 = *(v8 + 3);
  if (v25 >= v24 >> 1)
  {
    v8 = sub_33358((v24 > 1), v25 + 1, 1, v8);
    v4[v11] = v8;
  }

  *(v8 + 2) = v25 + 1;
  v26 = &v8[136 * v25];
  *(v26 + 2) = *a3;
  v27 = *(a3 + 16);
  v28 = *(a3 + 32);
  v29 = *(a3 + 64);
  *(v26 + 5) = *(a3 + 48);
  *(v26 + 6) = v29;
  *(v26 + 3) = v27;
  *(v26 + 4) = v28;
  v30 = *(a3 + 80);
  v31 = *(a3 + 96);
  v32 = *(a3 + 112);
  v26[160] = *(a3 + 128);
  *(v26 + 8) = v31;
  *(v26 + 9) = v32;
  *(v26 + 7) = v30;
  return sub_429F8(a3, &v34);
}

uint64_t sub_159A3C(uint64_t a1, char **a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v4;
  v8 = v33;
  *v4 = 0x8000000000000000;
  v10 = sub_43124(a1);
  v11 = *(v8 + 2);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  if (*(v8 + 3) >= v13)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1856BC();
      v8 = v33;
    }
  }

  else
  {
    sub_17DB60(v13, isUniquelyReferenced_nonNull_native);
    v8 = v33;
    v15 = sub_43124(a1);
    if ((v14 & 1) != (v16 & 1))
    {
LABEL_17:
      result = sub_1B5784();
      __break(1u);
      return result;
    }

    v10 = v15;
  }

  v17 = *v4;
  *v4 = v8;

  v18 = *v4;
  if (v14)
  {
    goto LABEL_10;
  }

  *&v18[8 * (v10 >> 6) + 64] |= 1 << v10;
  *(*(v18 + 6) + 8 * v10) = a1;
  *(*(v18 + 7) + 8 * v10) = _swiftEmptyArrayStorage;
  v19 = *(v18 + 2);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v18 + 2) = v21;
LABEL_10:
  v4 = *(v18 + 7);
  v8 = v4[v10];
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v4[v10] = v8;
  if ((v22 & 1) == 0)
  {
LABEL_15:
    v8 = sub_33358(0, *(v8 + 2) + 1, 1, v8);
    v4[v10] = v8;
  }

  v24 = *(v8 + 2);
  v23 = *(v8 + 3);
  if (v24 >= v23 >> 1)
  {
    v8 = sub_33358((v23 > 1), v24 + 1, 1, v8);
    v4[v10] = v8;
  }

  *(v8 + 2) = v24 + 1;
  v25 = &v8[136 * v24];
  *(v25 + 2) = *a3;
  v26 = *(a3 + 16);
  v27 = *(a3 + 32);
  v28 = *(a3 + 64);
  *(v25 + 5) = *(a3 + 48);
  *(v25 + 6) = v28;
  *(v25 + 3) = v26;
  *(v25 + 4) = v27;
  v29 = *(a3 + 80);
  v30 = *(a3 + 96);
  v31 = *(a3 + 112);
  v25[160] = *(a3 + 128);
  *(v25 + 8) = v30;
  *(v25 + 9) = v31;
  *(v25 + 7) = v29;
  return sub_429F8(a3, &v33);
}

uint64_t sub_159C44(uint64_t a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a2;
  v31 = *a2;
  *a2 = 0x8000000000000000;
  v14 = sub_43124(a1);
  v15 = *(v12 + 2);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  if (*(v12 + 3) >= v17)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_187C60();
      v12 = v31;
    }
  }

  else
  {
    sub_183008(v17, isUniquelyReferenced_nonNull_native);
    v12 = v31;
    v19 = sub_43124(a1);
    if ((v18 & 1) != (v20 & 1))
    {
LABEL_17:
      result = sub_1B5784();
      __break(1u);
      return result;
    }

    v14 = v19;
  }

  v21 = *a2;
  *a2 = v12;

  v22 = *a2;
  if (v18)
  {
    goto LABEL_10;
  }

  *&v22[8 * (v14 >> 6) + 64] |= 1 << v14;
  *(*(v22 + 6) + 8 * v14) = a1;
  *(*(v22 + 7) + 8 * v14) = _swiftEmptyArrayStorage;
  v23 = *(v22 + 2);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v22 + 2) = v25;
LABEL_10:
  a1 = *(v22 + 7);
  v12 = *(a1 + 8 * v14);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 8 * v14) = v12;
  if ((v26 & 1) == 0)
  {
LABEL_15:
    v12 = sub_3427C(0, *(v12 + 2) + 1, 1, v12);
    *(a1 + 8 * v14) = v12;
  }

  v28 = *(v12 + 2);
  v27 = *(v12 + 3);
  if (v28 >= v27 >> 1)
  {
    v12 = sub_3427C((v27 > 1), v28 + 1, 1, v12);
    *(a1 + 8 * v14) = v12;
  }

  *(v12 + 2) = v28 + 1;
  v29 = &v12[24 * v28];
  *(v29 + 4) = a3;
  *(v29 + 5) = a4;
  *(v29 + 6) = a5;
}

uint64_t sub_159E28(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a3;
  v49 = a1;
  v46 = *(a5 - 8);
  v12 = *(v46 + 64);
  __chkstk_darwin(a1);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v18 = &v43 - v17;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v20 = *(v15 + 16);
  v47 = v18;
  v20(v18, v48, AssociatedTypeWitness);
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = sub_15C6A4;
  v21[7] = v19;
  v22 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *a2;
  v24 = v50;
  v48 = a2;
  *a2 = 0x8000000000000000;
  v25 = a7;
  v44 = sub_15B790(v49, a5, a7);
  v27 = *(v24 + 16);
  v28 = (v26 & 1) == 0;
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
    __break(1u);
    goto LABEL_10;
  }

  v30 = v26;
  sub_1B4B94();
  sub_1B5224();
  v31 = sub_1B5204(isUniquelyReferenced_nonNull_native, v29);
  v32 = v50;
  if (!v31)
  {
    v35 = v44;
    goto LABEL_6;
  }

  v33 = sub_15B790(v49, a5, v25);
  if ((v30 & 1) != (v34 & 1))
  {
LABEL_10:
    result = sub_1B5784();
    __break(1u);
    return result;
  }

  v35 = v33;
LABEL_6:
  v36 = v48;
  v37 = *v48;
  *v48 = v32;

  v39 = *v36;
  if ((v30 & 1) == 0)
  {
    v40 = v21[7];
    v50 = (v21[6])(v38);
    (*(v46 + 16))(v45, v49, a5);
    sub_1B5214();
  }

  v41 = *(v39 + 56) + 8 * v35;
  sub_1B4B64();
}

uint64_t sub_15A15C(uint64_t *a1)
{
  v2 = *a1;
  swift_getAssociatedTypeWitness();
  sub_1B4B94();

  swift_getWitnessTable();
  return sub_1B43C4();
}

uint64_t sub_15A208@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  a2(a1);
  return (*(*(AssociatedTypeWitness - 8) + 16))(a3 + v7, a1, AssociatedTypeWitness);
}

uint64_t sub_15A2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  v13(v12);
  sub_1B4CF4();
  sub_1B4CE4();
  return (*(v7 + 8))(v11, a6);
}

uint64_t sub_15A450(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = sub_2B0C(&qword_22E240, &qword_1CF598);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v63 = &v55[-v6];
  v64 = sub_2B0C(&qword_228460, &qword_1B6370);
  v60 = *(v64 - 8);
  v7 = *(v60 + 64);
  v8 = __chkstk_darwin(v64);
  v59 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v57 = &v55[-v10];
  v61 = &_swiftEmptyDictionarySingleton;
  v70 = &_swiftEmptyDictionarySingleton;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  v66 = 0;
  v65 = xmmword_1BCA80;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_9:
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      memcpy(v69, (*(a1 + 56) + 568 * (v18 | (v17 << 6))), 0x231uLL);
      memcpy(v68, v69, 0x231uLL);
      v19 = v68[1];
      sub_2B0C(&qword_2293B8, &qword_1BC458);
      v20 = swift_allocObject();
      *(v20 + 16) = v65;
      *(v20 + 32) = v19;
      sub_4299C(v69, &v67);
      v21 = sub_9EABC(v20);
      swift_setDeallocating();
      v22 = swift_deallocClassInstance();
      __chkstk_darwin(v22);
      *&v55[-16] = &v70;
      *&v55[-8] = v68;
      v23 = v66;
      sub_157D70(a2, &v55[-32], v21);
      v66 = v23;

      result = sub_2601C(v69);
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v17 >= v14)
    {
      break;
    }

    v13 = *(a1 + 64 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_9;
    }
  }

  v68[0] = &_swiftEmptyDictionarySingleton;
  v24 = v70 + 64;
  v25 = 1 << v70[32];
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(v70 + 8);
  v28 = (v25 + 63) >> 6;
  v62 = (v60 + 48);
  v58 = (v60 + 32);
  *&v65 = v70;

  v29 = 0;
  while (v27)
  {
    v30 = v29;
LABEL_20:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v32 = v31 | (v30 << 6);
    v33 = *(*(v65 + 48) + v32);
    v69[0] = *(*(v65 + 56) + 8 * v32);
    swift_bridgeObjectRetain_n();
    sub_2B0C(&qword_229300, &qword_1BC3B8);
    sub_42094(&qword_22E248, &qword_229300, &qword_1BC3B8);
    v34 = v63;
    sub_1B43C4();
    if ((*v62)(v34, 1, v64) == 1)
    {

      result = sub_42F48(v34, &qword_22E240, &qword_1CF598);
      v29 = v30;
    }

    else
    {
      v56 = v33;
      v35 = v57;
      v36 = *v58;
      v37 = v34;
      v38 = v64;
      (*v58)(v57, v37, v64);
      v36(v59, v35, v38);
      v39 = v61;
      v40 = v61[2];
      if (v61[3] <= v40)
      {
        sub_17D838(v40 + 1, 1);
        v39 = v68[0];
      }

      v41 = v39[5];
      v42 = v39;
      sub_1B57F4();
      v43 = v56;
      sub_1B4884();

      result = sub_1B5844();
      v44 = v42 + 8;
      v61 = v42;
      v45 = -1 << *(v42 + 32);
      v46 = result & ~v45;
      v47 = v46 >> 6;
      if (((-1 << v46) & ~v42[(v46 >> 6) + 8]) == 0)
      {
        v49 = 0;
        v50 = (63 - v45) >> 6;
        while (++v47 != v50 || (v49 & 1) == 0)
        {
          v51 = v47 == v50;
          if (v47 == v50)
          {
            v47 = 0;
          }

          v49 |= v51;
          v52 = v44[v47];
          if (v52 != -1)
          {
            v48 = __clz(__rbit64(~v52)) + (v47 << 6);
            goto LABEL_34;
          }
        }

        goto LABEL_38;
      }

      v48 = __clz(__rbit64((-1 << v46) & ~v42[(v46 >> 6) + 8])) | v46 & 0x7FFFFFFFFFFFFFC0;
LABEL_34:
      *(v44 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      v53 = v60;
      v54 = v61;
      *(v61[6] + v48) = v43;
      v36((v54[7] + *(v53 + 72) * v48), v59, v64);
      ++v54[2];

      v29 = v30;
    }
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v28)
    {

      return v61;
    }

    v27 = *&v24[8 * v30];
    ++v29;
    if (v27)
    {
      goto LABEL_20;
    }
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_15AC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 56);
  return sub_15A208(a1, *(v2 + 48), a2);
}

uint64_t sub_15AC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1, AssociatedTypeWitness);
}

uint64_t sub_15ACE4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_1B4CF4();
  swift_getWitnessTable();
  sub_1B4A14();
}

uint64_t sub_15ADDC(char a1, void *a2, const void *a3)
{
  v7 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  __src[0] = *a2;
  v9 = __src[0];
  *a2 = 0x8000000000000000;
  v10 = a1 & 1;
  v12 = sub_3A9D8(v10);
  v13 = *(v9 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v11;
  if (*(v9 + 24) >= v15)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_11:
    sub_1854D0();
    v9 = __src[0];
    goto LABEL_6;
  }

  sub_17D530(v15, isUniquelyReferenced_nonNull_native);
  v9 = __src[0];
  v16 = sub_3A9D8(v10);
  if ((v3 & 1) != (v17 & 1))
  {
    goto LABEL_13;
  }

  v12 = v16;
LABEL_6:
  v18 = *a2;
  *a2 = v9;

  v19 = *a2;
  if (v3)
  {
LABEL_9:
    v23 = v19[7] + 8 * v12;
    sub_4299C(a3, __src);
    sub_111DC0(__src, a3);
    memcpy(v25, __src, 0x231uLL);
    return sub_2601C(v25);
  }

  v19[(v12 >> 6) + 8] |= 1 << v12;
  *(v19[6] + v12) = v10;
  *(v19[7] + 8 * v12) = &_swiftEmptySetSingleton;
  v20 = v19[2];
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    v19[2] = v22;
    goto LABEL_9;
  }

  __break(1u);
LABEL_13:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_15AF70(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = a3;
  v57 = a8;
  v58 = a2;
  v59 = a1;
  v52 = *(a5 - 8);
  v12 = *(v52 + 64);
  __chkstk_darwin(a1);
  v51 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v54 = &v49 - v20;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v22 = a6;
  v23 = v56;
  v24 = v57;
  v21[6] = v57;
  v55 = v15;
  v25 = *(v15 + 16);
  v53 = v19;
  v25(v19, v23, AssociatedTypeWitness);
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = v22;
  v26[5] = a7;
  v26[6] = v24;
  v26[7] = sub_15C60C;
  v26[8] = v21;
  v27 = v58;
  v28 = *v58;
  LODWORD(v56) = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  v29 = v60;
  *v27 = 0x8000000000000000;
  v50 = sub_15B790(v59, a5, a7);
  v31 = *(v29 + 16);
  v32 = (v30 & 1) == 0;
  v33 = v31 + v32;
  if (__OFADD__(v31, v32))
  {
    __break(1u);
    goto LABEL_10;
  }

  v34 = v30;
  v57 = sub_1B4CF4();
  sub_1B5224();
  v35 = sub_1B5204(v56, v33);
  v36 = v60;
  if (!v35)
  {
    v40 = AssociatedTypeWitness;
    v39 = v50;
    goto LABEL_6;
  }

  v37 = sub_15B790(v59, a5, a7);
  if ((v34 & 1) != (v38 & 1))
  {
LABEL_10:
    result = sub_1B5784();
    __break(1u);
    return result;
  }

  v39 = v37;
  v40 = AssociatedTypeWitness;
LABEL_6:
  v41 = v58;
  v42 = *v58;
  *v58 = v36;

  v44 = *v41;
  if ((v34 & 1) == 0)
  {
    v45 = v26[8];
    v60 = (v26[7])(v43);
    (*(v52 + 16))(v51, v59, a5);
    sub_1B5214();
  }

  v46 = *(v44 + 56) + 8 * v39;
  v47 = v54;
  sub_1B4CE4();
  (*(v55 + 8))(v47, v40);
}

uint64_t sub_15B30C(uint64_t *a1)
{
  v2 = *a1;
  swift_getAssociatedTypeWitness();
  sub_1B4CF4();

  swift_getWitnessTable();
  return sub_1B43C4();
}

uint64_t sub_15B3C0(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v12 - v9;
  (*(v4 + 16))(v8, a2, AssociatedTypeWitness);
  sub_1B4CF4();
  sub_1B4CE4();
  return (*(v4 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_15B518(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_15B3C0(a1, a2);
}

uint64_t sub_15B590(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_15A15C(a1);
}

uint64_t sub_15B5B0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 64);
  v9 = *(v2 + 48);
  return sub_15ACE4(a1, a2, *(v2 + 56));
}

uint64_t sub_15B5E4(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_15B30C(a1);
}

unint64_t sub_15B608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  __chkstk_darwin(a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_1B4784();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_15B790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1B4744();

  return sub_15B608(a1, v9, a2, a3);
}

uint64_t sub_15B7EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B4204();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_1B41D4();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_15B8E0(unint64_t a1, uint64_t a2, void *__src, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = memcpy((a4[7] + 384 * a1), __src, 0x179uLL);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_15B958(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = (a4[7] + (result << 6));
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  v6 = a3[3];
  v4[2] = a3[2];
  v4[3] = v6;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

uint64_t sub_15B9AC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_15BA68(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1B40F4();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_15BB28(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *sub_15BB6C(unint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  result = memcpy((a4[6] + 568 * a1), a2, 0x231uLL);
  *(a4[7] + 8 * a1) = a3;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_15BBE8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_15BC2C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_15BC84(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = (a4[7] + 48 * result);
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  v4[2] = a3[2];
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_15BCE0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_15BD28(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void *sub_15BD78(unint64_t a1, uint64_t a2, void *__src, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = memcpy((a4[7] + 568 * a1), __src, 0x231uLL);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_15BDE8(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_15BE48(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *(v3 + 112);
  v10[6] = *(v3 + 96);
  v10[7] = v5;
  v11 = *(v3 + 128);
  v6 = *(v3 + 48);
  v10[2] = *(v3 + 32);
  v10[3] = v6;
  v7 = *(v3 + 80);
  v10[4] = *(v3 + 64);
  v10[5] = v7;
  v8 = *(v3 + 16);
  v10[0] = *v3;
  v10[1] = v8;
  return sub_159818(v4, v2, v10);
}

uint64_t sub_15BE9C(uint64_t a1, char a2, uint64_t *a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v91 = a1 + 32;
  v7 = v6 == 0;
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (v7)
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    v52 = (v91 + 144 * v5);
    v53 = v52[5];
    v54 = v52[7];
    v88 = v52[6];
    v89[0] = v54;
    *(v89 + 9) = *(v52 + 121);
    v55 = v52[1];
    v56 = v52[3];
    v84 = v52[2];
    v85 = v56;
    v57 = v52[3];
    v58 = v52[5];
    v86 = v52[4];
    v87 = v58;
    v59 = v52[1];
    v82 = *v52;
    v83 = v59;
    v60 = v52[7];
    *&v90[96] = v88;
    *&v90[112] = v60;
    *&v90[121] = *(v52 + 121);
    *&v90[32] = v84;
    *&v90[48] = v57;
    *&v90[64] = v86;
    *&v90[80] = v53;
    *v90 = v82;
    *&v90[16] = v55;
    v14 = __OFADD__(v5++, 1);
    if (!v14)
    {
      AuthorRecommendationSource.id.getter(v90);
      sub_43050(&v82, &v73, &qword_229248, &qword_1BC328);
      while (1)
      {
        v88 = *&v90[96];
        v89[0] = *&v90[112];
        *(v89 + 9) = *&v90[121];
        v84 = *&v90[32];
        v85 = *&v90[48];
        v86 = *&v90[64];
        v87 = *&v90[80];
        v82 = *v90;
        v83 = *&v90[16];
        result = sub_15C2A4(&v82);
        if (result == 1)
        {
          return result;
        }

        v8 = *v90;
        v79 = *&v90[104];
        v80 = *&v90[120];
        v81 = v90[136];
        v75 = *&v90[40];
        v76 = *&v90[56];
        v77 = *&v90[72];
        v78 = *&v90[88];
        v73 = *&v90[8];
        v74 = *&v90[24];
        v9 = *a3;
        v10 = sub_43124(*v90);
        v12 = *(v9 + 16);
        v13 = (v11 & 1) == 0;
        v14 = __OFADD__(v12, v13);
        v15 = v12 + v13;
        if (v14)
        {
          __break(1u);
          goto LABEL_21;
        }

        v16 = v11;
        if (*(v9 + 24) < v15)
        {
          break;
        }

        if (a2)
        {
          goto LABEL_8;
        }

        v41 = v10;
        sub_1856D0();
        v10 = v41;
        if (v16)
        {
LABEL_9:
          v19 = *a3;
          v20 = 136 * v10;
          v21 = *(*a3 + 56) + 136 * v10;
          v62 = *v21;
          v22 = *(v21 + 64);
          v24 = *(v21 + 16);
          v23 = *(v21 + 32);
          v65 = *(v21 + 48);
          v66 = v22;
          v63 = v24;
          v64 = v23;
          v26 = *(v21 + 96);
          v25 = *(v21 + 112);
          v27 = *(v21 + 80);
          v70 = *(v21 + 128);
          v68 = v26;
          v69 = v25;
          v67 = v27;
          sub_429F8(&v62, v71);
          sub_5C740(&v73);
          v28 = *(v19 + 56) + v20;
          v29 = *(v28 + 80);
          v30 = *(v28 + 96);
          v31 = *(v28 + 112);
          v72 = *(v28 + 128);
          v71[6] = v30;
          v71[7] = v31;
          v71[5] = v29;
          v33 = *(v28 + 16);
          v32 = *(v28 + 32);
          v34 = *(v28 + 64);
          v71[3] = *(v28 + 48);
          v71[4] = v34;
          v71[0] = *v28;
          v71[1] = v33;
          v71[2] = v32;
          *v28 = v62;
          v35 = v63;
          v36 = v64;
          v37 = v66;
          *(v28 + 48) = v65;
          *(v28 + 64) = v37;
          *(v28 + 16) = v35;
          *(v28 + 32) = v36;
          v38 = v67;
          v39 = v68;
          v40 = v69;
          *(v28 + 128) = v70;
          *(v28 + 96) = v39;
          *(v28 + 112) = v40;
          *(v28 + 80) = v38;
          sub_5C740(v71);
          goto LABEL_13;
        }

LABEL_11:
        v42 = *a3;
        *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
        *(v42[6] + 8 * v10) = v8;
        v43 = v42[7] + 136 * v10;
        *v43 = v73;
        v44 = v74;
        v45 = v75;
        v46 = v77;
        *(v43 + 48) = v76;
        *(v43 + 64) = v46;
        *(v43 + 16) = v44;
        *(v43 + 32) = v45;
        v47 = v78;
        v48 = v79;
        v49 = v80;
        *(v43 + 128) = v81;
        *(v43 + 96) = v48;
        *(v43 + 112) = v49;
        *(v43 + 80) = v47;
        v50 = v42[2];
        v14 = __OFADD__(v50, 1);
        v51 = v50 + 1;
        if (v14)
        {
          goto LABEL_23;
        }

        v42[2] = v51;
LABEL_13:
        a2 = 1;
        v7 = v5 >= v6;
        if (v5 != v6)
        {
          goto LABEL_14;
        }

LABEL_17:
        sub_15C2BC(&v82);
        *&v90[96] = v88;
        *&v90[112] = v89[0];
        *&v90[121] = *(v89 + 9);
        *&v90[32] = v84;
        *&v90[48] = v85;
        *&v90[64] = v86;
        *&v90[80] = v87;
        v5 = v6;
        *v90 = v82;
        *&v90[16] = v83;
      }

      sub_17DB74(v15, a2 & 1);
      v17 = *a3;
      v10 = sub_43124(v8);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_24;
      }

LABEL_8:
      if (v16)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_15C250(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *(v3 + 112);
  v10[6] = *(v3 + 96);
  v10[7] = v5;
  v11 = *(v3 + 128);
  v6 = *(v3 + 48);
  v10[2] = *(v3 + 32);
  v10[3] = v6;
  v7 = *(v3 + 80);
  v10[4] = *(v3 + 64);
  v10[5] = v7;
  v8 = *(v3 + 16);
  v10[0] = *v3;
  v10[1] = v8;
  return sub_159A3C(v4, v2, v10);
}

uint64_t sub_15C2A4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_15C2BC(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_15C2D8(uint64_t a1, char a2, uint64_t *a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = a1 + 32;
  v8 = v6 == 0;
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (v8)
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    memcpy(v31, (v7 + 576 * v5), 0x239uLL);
    memcpy(v32, (v7 + 576 * v5), 0x239uLL);
    v15 = __OFADD__(v5++, 1);
    if (!v15)
    {
      AuthorRecommendationSource.id.getter(v32);
      sub_43050(v31, __dst, &qword_229288, &qword_1BC350);
      while (1)
      {
        memcpy(v31, v32, 0x239uLL);
        result = sub_72A74(v31);
        if (result == 1)
        {
          return result;
        }

        v9 = v32[0];
        memcpy(__dst, &v32[1], 0x231uLL);
        v10 = *a3;
        v11 = sub_43124(v32[0]);
        v13 = *(v10 + 16);
        v14 = (v12 & 1) == 0;
        v15 = __OFADD__(v13, v14);
        v16 = v13 + v14;
        if (v15)
        {
          __break(1u);
          goto LABEL_21;
        }

        v17 = v12;
        if (*(v10 + 24) < v16)
        {
          break;
        }

        if (a2)
        {
          goto LABEL_8;
        }

        v23 = v11;
        sub_187328();
        v11 = v23;
        if (v17)
        {
LABEL_9:
          v20 = *a3;
          v21 = 568 * v11;
          memcpy(__src, (*(*a3 + 56) + 568 * v11), 0x231uLL);
          sub_4299C(__src, v29);
          sub_2601C(__dst);
          v22 = *(v20 + 56);
          memcpy(v29, (v22 + v21), 0x231uLL);
          memcpy((v22 + v21), __src, 0x231uLL);
          sub_2601C(v29);
          goto LABEL_13;
        }

LABEL_11:
        v24 = *a3;
        *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
        *(v24[6] + 8 * v11) = v9;
        memcpy((v24[7] + 568 * v11), __dst, 0x231uLL);
        v25 = v24[2];
        v15 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v15)
        {
          goto LABEL_23;
        }

        v24[2] = v26;
LABEL_13:
        a2 = 1;
        v8 = v5 >= v6;
        if (v5 != v6)
        {
          goto LABEL_14;
        }

LABEL_17:
        sub_15C54C(v31);
        memcpy(v32, v31, 0x239uLL);
        v5 = v6;
      }

      sub_17D114(v16, a2 & 1);
      v18 = *a3;
      v11 = sub_43124(v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_24;
      }

LABEL_8:
      if (v17)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_15C554(char *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  memcpy(__dst, v2, 0x231uLL);
  return sub_15ADDC(v4, v3, __dst);
}

uint64_t sub_15C60C()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[6];
  swift_getAssociatedTypeWitness();

  return sub_1B4684();
}

uint64_t sub_15C6A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_getAssociatedTypeWitness();

  return sub_1B4B24();
}

uint64_t sub_15C718(uint64_t result)
{
  v1 = *(result + 80);
  v2 = *(result + 40) & 1;
  v3 = *(result + 544) | 0x6000000000000000;
  *(result + 8) &= 1uLL;
  *(result + 40) = v2;
  *(result + 80) = v1;
  *(result + 544) = v3;
  return result;
}

uint64_t sub_15C760(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v19 = _swiftEmptySetSingleton;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; result = sub_5EE90(v18))
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * v14)));
    LOBYTE(v14) = *(a2 + 8);
    __src[0] = v15;
    LOBYTE(__src[1]) = v14 & 1;
    a3(__src);
    memcpy(__dst, __src, 0x231uLL);
    sub_1127B0(v16, __dst);
    memcpy(v18, v16, 0x231uLL);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v19;
    }

    v9 = *(v6 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_15C8AC(uint64_t result)
{
  v1 = *(result + 80);
  v2 = *(result + 40) & 1;
  v3 = *(result + 544) | 0x8000000000000000;
  *(result + 8) &= 1uLL;
  *(result + 40) = v2;
  *(result + 80) = v1;
  *(result + 544) = v3;
  return result;
}

__n128 WorkServiceConfiguration.init(version:packageBaseURLString:packageAssetIDs:mlComputeUnits:eventAggregationConfiguration:genreRecommendationConfiguration:bookSuggestionsConfiguration:bookScoringConfiguration:seedBookRecommendationConfiguration:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, __int128 *a11, _OWORD *a12, uint64_t a13)
{
  v13 = &_swiftEmptyArrayStorage;
  v14 = 0x4649434550534E55;
  if (a2)
  {
    v14 = a1;
  }

  v15 = 0xEB00000000444549;
  if (a2)
  {
    v15 = a2;
  }

  *a9 = v14;
  *(a9 + 8) = v15;
  v16 = 0x80000000001D5A20;
  v17 = 0xD000000000000023;
  if (a4)
  {
    v17 = a3;
    v16 = a4;
  }

  *(a9 + 16) = v17;
  *(a9 + 24) = v16;
  if (a5)
  {
    v13 = a5;
  }

  if (a7)
  {
    v18 = 0;
  }

  else
  {
    v18 = a6;
  }

  *(a9 + 32) = v13;
  *(a9 + 40) = v18;
  v19 = *(a8 + 144);
  *(a9 + 176) = *(a8 + 128);
  *(a9 + 192) = v19;
  *(a9 + 208) = *(a8 + 160);
  *(a9 + 224) = *(a8 + 176);
  v20 = *(a8 + 80);
  *(a9 + 112) = *(a8 + 64);
  *(a9 + 128) = v20;
  v21 = *(a8 + 112);
  *(a9 + 144) = *(a8 + 96);
  *(a9 + 160) = v21;
  v22 = *(a8 + 16);
  *(a9 + 48) = *a8;
  *(a9 + 64) = v22;
  v23 = *(a8 + 48);
  *(a9 + 80) = *(a8 + 32);
  *(a9 + 96) = v23;
  v24 = a10[1];
  *(a9 + 232) = *a10;
  *(a9 + 248) = v24;
  v25 = *a11;
  v26 = a11[1];
  *(a9 + 264) = a10[2];
  *(a9 + 280) = v25;
  v27 = a11[2];
  *(a9 + 296) = v26;
  *(a9 + 312) = v27;
  v28 = a12[1];
  *(a9 + 328) = *a12;
  *(a9 + 344) = v28;
  result = *a13;
  v30 = *(a13 + 16);
  v31 = *(a13 + 32);
  v32 = *(a13 + 48);
  *(a9 + 424) = *(a13 + 64);
  *(a9 + 392) = v31;
  *(a9 + 408) = v32;
  *(a9 + 360) = result;
  *(a9 + 376) = v30;
  return result;
}

uint64_t WorkServiceConfiguration.init(with:)()
{

  sub_15CA70();
  swift_allocError();
  *v0 = 1;
  return swift_willThrow();
}

unint64_t sub_15CA70()
{
  result = qword_22E270;
  if (!qword_22E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E270);
  }

  return result;
}

uint64_t sub_15CAC4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E6F6973726576;
    v6 = 0x416567616B636170;
    if (a1 != 2)
    {
      v6 = 0x7475706D6F436C6DLL;
    }

    if (a1)
    {
      v5 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD00000000000001CLL;
    v2 = 0xD000000000000018;
    if (a1 != 7)
    {
      v2 = 0xD000000000000023;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000020;
    if (a1 == 4)
    {
      v3 = 0xD00000000000001DLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_15CC14()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1269AC();
  return sub_1B5844();
}

Swift::Int sub_15CC64()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1269AC();
  return sub_1B5844();
}

uint64_t sub_15CCA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_15E51C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_15CCD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_15CAC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_15CD20@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_15E51C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_15CD54(uint64_t a1)
{
  v2 = sub_15D4F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15CD90(uint64_t a1)
{
  v2 = sub_15D4F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WorkServiceConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22E278, &unk_1CF5B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v32 - v6;
  v8 = *v1;
  v48 = v1[1];
  v49 = v8;
  v9 = v1[2];
  v46 = v1[3];
  v47 = v9;
  v10 = v1[4];
  v44 = v1[5];
  v45 = v10;
  v11 = *(v1 + 12);
  v80 = *(v1 + 11);
  v81 = v11;
  v82 = *(v1 + 13);
  v12 = v1[29];
  v83 = v1[28];
  v13 = *(v1 + 8);
  v76 = *(v1 + 7);
  v77 = v13;
  v14 = *(v1 + 10);
  v78 = *(v1 + 9);
  v79 = v14;
  v15 = *(v1 + 4);
  v72 = *(v1 + 3);
  v73 = v15;
  v16 = *(v1 + 6);
  v74 = *(v1 + 5);
  v75 = v16;
  v17 = v1[30];
  v18 = v1[31];
  *&v38 = v12;
  *(&v38 + 1) = v17;
  v19 = v1[33];
  v41 = v1[32];
  v42 = v18;
  v20 = v1[35];
  v39 = v1[34];
  v40 = v19;
  v43 = v20;
  v21 = v1[37];
  v34 = v1[36];
  v35 = v21;
  v22 = v1[38];
  v36 = v1[39];
  v37 = v22;
  v23 = v1[40];
  v24 = *(v1 + 43);
  v32 = *(v1 + 41);
  v33 = v24;
  v25 = *(v1 + 51);
  v86 = *(v1 + 49);
  v87 = v25;
  v88 = v1[53];
  v26 = *(v1 + 47);
  v84 = *(v1 + 45);
  v85 = v26;
  v27 = a1[4];
  sub_2698(a1, a1[3]);
  sub_15D4F0();
  sub_1B5884();
  LOBYTE(v60) = 0;
  v28 = v50;
  sub_1B54F4();
  if (!v28)
  {
    v29 = v45;
    v50 = v23;
    v30 = v43;
    LOBYTE(v60) = 1;
    sub_1B54F4();
    *&v60 = v29;
    LOBYTE(v58[0]) = 2;
    sub_2B0C(&qword_228590, &qword_1B6590);
    sub_122D64(&qword_228598);
    sub_1B5544();
    LOBYTE(v60) = 3;
    sub_1B5534();
    v68 = v80;
    v69 = v81;
    v70 = v82;
    v71 = v83;
    v64 = v76;
    v65 = v77;
    v66 = v78;
    v67 = v79;
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v63 = v75;
    v90 = 4;
    sub_43050(&v72, v58, &qword_22A610, &qword_1CF5C0);
    sub_2B0C(&qword_22A610, &qword_1CF5C0);
    sub_15D694(&qword_22E288, &qword_22A610, &qword_1CF5C0, sub_15D544);
    sub_1B5544();
    v58[8] = v68;
    v58[9] = v69;
    v58[10] = v70;
    v59 = v71;
    v58[4] = v64;
    v58[5] = v65;
    v58[6] = v66;
    v58[7] = v67;
    v58[0] = v60;
    v58[1] = v61;
    v58[2] = v62;
    v58[3] = v63;
    sub_42F48(v58, &qword_22A610, &qword_1CF5C0);
    v53 = v38;
    *&v54 = v42;
    *(&v54 + 1) = v41;
    *&v55 = v40;
    *(&v55 + 1) = v39;
    LOBYTE(v51[0]) = 5;
    sub_E7E30(v38, *(&v38 + 1));
    sub_2B0C(&qword_22E298, &qword_1CF5C8);
    sub_15D694(&qword_22E2A0, &qword_22E298, &qword_1CF5C8, sub_15D598);
    sub_1B5544();
    sub_E7ED4(v53, *(&v53 + 1));
    *&v53 = v30;
    *(&v53 + 1) = v34;
    *&v54 = v35;
    *(&v54 + 1) = v37;
    *&v55 = v36;
    *(&v55 + 1) = v50;
    LOBYTE(v51[0]) = 6;
    sub_9ADC4(v30, v34, v35, v37);
    sub_2B0C(&qword_22E2B0, &qword_1CF5D0);
    sub_15D694(&qword_22E2B8, &qword_22E2B0, &qword_1CF5D0, sub_15D5EC);
    sub_1B5544();
    sub_9AE5C(v53, *(&v53 + 1), v54, *(&v54 + 1));
    v53 = v32;
    v54 = v33;
    LOBYTE(v51[0]) = 7;

    sub_2B0C(&qword_22E2C8, &unk_1CF5D8);
    sub_15D694(&qword_22E2D0, &qword_22E2C8, &unk_1CF5D8, sub_15D640);
    sub_1B5544();

    v55 = v86;
    v56 = v87;
    v57 = v88;
    v53 = v84;
    v54 = v85;
    v89 = 8;
    sub_43050(&v84, v51, &qword_22A4E8, &unk_1C01E0);
    sub_2B0C(&qword_22A4E8, &unk_1C01E0);
    sub_15D694(&qword_22E2E0, &qword_22A4E8, &unk_1C01E0, sub_15D710);
    sub_1B5544();
    v51[2] = v55;
    v51[3] = v56;
    v52 = v57;
    v51[0] = v53;
    v51[1] = v54;
    sub_42F48(v51, &qword_22A4E8, &unk_1C01E0);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_15D4F0()
{
  result = qword_22E280;
  if (!qword_22E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E280);
  }

  return result;
}

unint64_t sub_15D544()
{
  result = qword_22E290;
  if (!qword_22E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E290);
  }

  return result;
}

unint64_t sub_15D598()
{
  result = qword_22E2A8;
  if (!qword_22E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E2A8);
  }

  return result;
}

unint64_t sub_15D5EC()
{
  result = qword_22E2C0;
  if (!qword_22E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E2C0);
  }

  return result;
}

unint64_t sub_15D640()
{
  result = qword_22E2D8;
  if (!qword_22E2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E2D8);
  }

  return result;
}

uint64_t sub_15D694(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_15D710()
{
  result = qword_22E2E8;
  if (!qword_22E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E2E8);
  }

  return result;
}

uint64_t WorkServiceConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22E2F0, &qword_1CF5E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v50 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v72 = a1;
  sub_2698(a1, v10);
  sub_15D4F0();
  sub_1B5864();
  if (!v2)
  {
    v12 = v6;
    v71 = a2;
    LOBYTE(v111) = 0;
    v13 = v5;
    v14 = sub_1B5324();
    v16 = v15;
    LOBYTE(v111) = 1;
    v17 = sub_1B5324();
    v19 = v18;
    v70 = v17;
    sub_2B0C(&qword_228590, &qword_1B6590);
    LOBYTE(v111) = 2;
    sub_122D64(&qword_2285C0);
    sub_1B5374();
    v69 = v19;
    v20 = v123;
    LOBYTE(v111) = 3;
    v21 = sub_1B5364();
    v66 = v23;
    v67 = v21;
    v68 = v20;
    v110 = 4;
    sub_15DE00();
    sub_1B5374();
    v106 = v119;
    v107 = v120;
    v108 = v121;
    v109 = v122;
    v102 = v115;
    v103 = v116;
    v104 = v117;
    v105 = v118;
    v98 = v111;
    v99 = v112;
    v100 = v113;
    v101 = v114;
    LOBYTE(v79) = 5;
    sub_15DE54();
    sub_1B5374();
    v24 = v69;
    v60 = v92;
    v61 = v93;
    v62 = v94;
    v63 = v95;
    v64 = v96;
    v65 = v97;
    LOBYTE(v79) = 6;
    sub_15DEA8();
    sub_1B5374();
    v54 = v86;
    v55 = v87;
    v56 = v88;
    v57 = v89;
    v58 = v90;
    v59 = v91;
    LOBYTE(v79) = 7;
    sub_15DEFC();
    sub_1B5374();
    v52 = v84;
    v53 = v85;
    v78 = 8;
    sub_15DF50();
    sub_1B5374();
    v75 = v81;
    v76 = v82;
    v77 = v83;
    v73 = v79;
    v74 = v80;
    if (v16)
    {
      v25 = v14;
    }

    else
    {
      v25 = 0x4649434550534E55;
    }

    v26 = 0xEB00000000444549;
    if (v16)
    {
      v26 = v16;
    }

    v50 = v26;
    v51 = v25;
    if (v24)
    {
      v27 = v70;
    }

    else
    {
      v27 = 0xD000000000000023;
    }

    if (v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = 0x80000000001D5A20;
    }

    v29 = v13;
    if (v68)
    {
      v30 = v68;
    }

    else
    {
      v30 = _swiftEmptyArrayStorage;
    }

    (*(v12 + 8))(v9, v29);
    v31 = v67;
    if (v66)
    {
      v31 = 0;
    }

    v32 = v71;
    v33 = v50;
    *v71 = v51;
    v32[1] = v33;
    v32[2] = v27;
    v32[3] = v28;
    v32[4] = v30;
    v32[5] = v31;
    v34 = v107;
    *(v32 + 11) = v106;
    *(v32 + 12) = v34;
    *(v32 + 13) = v108;
    v35 = v109;
    v36 = v103;
    *(v32 + 7) = v102;
    *(v32 + 8) = v36;
    v37 = v105;
    *(v32 + 9) = v104;
    *(v32 + 10) = v37;
    v38 = v99;
    *(v32 + 3) = v98;
    *(v32 + 4) = v38;
    v39 = v101;
    *(v32 + 5) = v100;
    *(v32 + 6) = v39;
    v41 = v60;
    v40 = v61;
    v32[28] = v35;
    v32[29] = v41;
    v32[30] = v40;
    v42 = v63;
    v32[31] = v62;
    v32[32] = v42;
    v43 = v65;
    v32[33] = v64;
    v32[34] = v43;
    v44 = v55;
    v32[35] = v54;
    v32[36] = v44;
    v45 = v57;
    v32[37] = v56;
    v32[38] = v45;
    v46 = v59;
    v32[39] = v58;
    v32[40] = v46;
    v47 = v53;
    *(v32 + 41) = v52;
    *(v32 + 43) = v47;
    v48 = v76;
    *(v32 + 49) = v75;
    *(v32 + 51) = v48;
    v32[53] = v77;
    v49 = v74;
    *(v32 + 45) = v73;
    *(v32 + 47) = v49;
  }

  return sub_2BF8(v72);
}

unint64_t sub_15DE00()
{
  result = qword_22E2F8;
  if (!qword_22E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E2F8);
  }

  return result;
}

unint64_t sub_15DE54()
{
  result = qword_22E300;
  if (!qword_22E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E300);
  }

  return result;
}

unint64_t sub_15DEA8()
{
  result = qword_22E308;
  if (!qword_22E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E308);
  }

  return result;
}

unint64_t sub_15DEFC()
{
  result = qword_22E310;
  if (!qword_22E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E310);
  }

  return result;
}

unint64_t sub_15DF50()
{
  result = qword_22E318;
  if (!qword_22E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E318);
  }

  return result;
}

uint64_t WorkServiceConfiguration.computeUnits.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = sub_1B4424();
  v5 = *(*(v4 - 8) + 104);
  if ((v3 - 1) > 2)
  {
    v6 = &enum case for ComputeUnits.cpuOnly(_:);
  }

  else
  {
    v6 = *(&off_220710 + v3 - 1);
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t WorkServiceConfiguration.mlComputeUnits.getter()
{
  if ((*(v0 + 40) - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return *(v0 + 40);
  }
}

unint64_t sub_15E084()
{
  result = qword_22E320;
  if (!qword_22E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E320);
  }

  return result;
}

unint64_t sub_15E0DC()
{
  result = qword_22E328;
  if (!qword_22E328)
  {
    type metadata accessor for Package();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E328);
  }

  return result;
}

uint64_t sub_15E154(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 432))
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

uint64_t sub_15E19C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 424) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 432) = 1;
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

    *(result + 432) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkServiceConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkServiceConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_15E3C0()
{
  result = qword_22E330;
  if (!qword_22E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E330);
  }

  return result;
}

unint64_t sub_15E418()
{
  result = qword_22E338;
  if (!qword_22E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E338);
  }

  return result;
}

unint64_t sub_15E470()
{
  result = qword_22E340;
  if (!qword_22E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E340);
  }

  return result;
}

unint64_t sub_15E4C8()
{
  result = qword_22E348;
  if (!qword_22E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E348);
  }

  return result;
}

uint64_t sub_15E51C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_213A58;
  v6._object = a2;
  v4 = sub_1B52E4(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_15E56C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1B47C4();
  }

  sub_768DC();
  result = sub_1B4E94();
  qword_22E350 = result;
  return result;
}

uint64_t sub_15E644()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1B47C4();
  }

  sub_768DC();
  result = sub_1B4E94();
  qword_22E358 = result;
  return result;
}

uint64_t sub_15E71C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1B47C4();
  }

  sub_768DC();
  result = sub_1B4E94();
  qword_22E360 = result;
  return result;
}

uint64_t sub_15E7F4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1B47C4();
  }

  sub_768DC();
  result = sub_1B4E94();
  qword_22E368 = result;
  return result;
}

uint64_t sub_15E8CC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1B47C4();
  }

  sub_768DC();
  result = sub_1B4E94();
  qword_22E370 = result;
  return result;
}

uint64_t sub_15E9A4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1B47C4();
  }

  sub_768DC();
  result = sub_1B4E94();
  qword_22E378 = result;
  return result;
}

BooksPersonalization::CollectionSource_optional __swiftcall CollectionSource.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_213B50;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t CollectionSource.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x495041616964656DLL;
  v3 = 0x747369486B6F6F62;
  v4 = 0xD000000000000022;
  if (v1 != 3)
  {
    v4 = 1768055156;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

unint64_t sub_15EB9C()
{
  result = qword_22E380;
  if (!qword_22E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E380);
  }

  return result;
}

Swift::Int sub_15EBF0()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_15ECE0()
{
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_15EDBC()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_15EEB4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x495041616964656DLL;
  v5 = 0xEB0000000079726FLL;
  v6 = 0x747369486B6F6F62;
  v7 = 0x80000000001D4700;
  v8 = 0xD000000000000022;
  if (v2 != 3)
  {
    v8 = 1768055156;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000000001D45F0;
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

unint64_t sub_15EF64()
{
  result = qword_22E388;
  if (!qword_22E388)
  {
    sub_1CC1C(&qword_22E390, &qword_1CFAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E388);
  }

  return result;
}

unint64_t sub_15EFDC()
{
  result = qword_22E398;
  if (!qword_22E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E398);
  }

  return result;
}

uint64_t sub_15F0F0(uint64_t a1, char *a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 2704) = v4;
  *(v5 + 2696) = a3;
  *(v5 + 2688) = a1;
  v6 = *a2;
  *(v5 + 2720) = *(a2 + 8);
  *(v5 + 2736) = *(a2 + 24);
  *(v5 + 2752) = *(a2 + 40);
  v7 = *(a2 + 56);
  v10 = *(a2 + 1);
  v8 = a2 + 1;
  v9 = v10;
  LOWORD(v10) = *(v8 + 2);
  *(v5 + 2953) = v6;
  *(v5 + 2712) = v9;
  *(v5 + 2716) = v10;
  *(v5 + 2718) = v8[6];
  *(v5 + 2768) = v7;
  *(v5 + 2954) = *(a3 + 32);
  *(v5 + 2962) = *(a3 + 40);
  *(v5 + 2963) = *(a3 + 48);
  *(v5 + 2964) = *(a3 + 64);
  *(v5 + 2965) = *a4;
  return _swift_task_switch(sub_15F184, 0, 0);
}

uint64_t sub_15F184()
{
  v1 = *(*(v0 + 2704) + 16);
  v2 = swift_task_alloc();
  *(v0 + 2784) = v2;
  *v2 = v0;
  v2[1] = sub_15F234;

  return sub_EC9EC(v0 + 2952);
}

uint64_t sub_15F234()
{
  v2 = *(*v1 + 2784);
  v5 = *v1;
  *(*v1 + 2792) = v0;

  if (v0)
  {
    v3 = sub_1608AC;
  }

  else
  {
    v3 = sub_15F348;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_15F348()
{
  v119 = v0;
  v1 = *(v0 + 2952);
  if (v1 != 4)
  {
    sub_1610A4();
    swift_allocError();
    *v17 = v1;
    swift_willThrow();
    goto LABEL_45;
  }

  v2 = *(v0 + 2760);
  v3 = v2 >> 61;
  if ((v2 >> 61) <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        LODWORD(v18) = *(v0 + 2965);
        if (v18 == 5)
        {
          v18 = 0x401030200uLL >> (8 * *(v0 + 2954));
        }

        v19 = *(v0 + 2720);
        *(v0 + 2966) = v18;
        v20 = *(v0 + 2792);
        v21 = *(v0 + 2704);
        v118[0] = v18;
        sub_160B1C(v118, v21, v0 + 2528);
        if (v20)
        {
          goto LABEL_45;
        }

        v22 = *(v0 + 2954);
        v23 = *(v0 + 2728);
        v24 = *(v0 + 2953);
        v25 = *(v0 + 2552);
        v26 = *(v0 + 2560);
        sub_2698((v0 + 2528), v25);
        *(v0 + 2648) = v24 & 1;
        *(v0 + 2656) = v19;
        *(v0 + 2664) = v23;
        *(v0 + 2950) = v22;
        v27 = *(v26 + 8);
        v108 = (v27 + *v27);
        v28 = v27[1];
        v29 = swift_task_alloc();
        *(v0 + 2800) = v29;
        *v29 = v0;
        v29[1] = sub_15FF04;

        return v108(v0 + 2648, v0 + 2950, v25, v26);
      }

      else
      {
        LODWORD(v52) = *(v0 + 2965);
        if (v52 == 5)
        {
          v52 = 0x401030200uLL >> (8 * *(v0 + 2957));
        }

        v53 = *(v0 + 2720);
        *(v0 + 2967) = v52;
        v54 = *(v0 + 2792);
        v55 = *(v0 + 2704);
        v117 = v52;
        sub_160BE8(&v117, v55, v0 + 2488);
        if (v54)
        {
          goto LABEL_45;
        }

        v56 = *(v0 + 2957);
        v57 = *(v0 + 2728);
        v58 = *(v0 + 2953);
        v59 = *(v0 + 2512);
        v60 = *(v0 + 2520);
        sub_2698((v0 + 2488), v59);
        *(v0 + 2624) = v58 & 1;
        *(v0 + 2632) = v53;
        *(v0 + 2640) = v57;
        *(v0 + 2948) = v56;
        v61 = *(v60 + 8);
        v110 = (v61 + *v61);
        v62 = v61[1];
        v63 = swift_task_alloc();
        *(v0 + 2824) = v63;
        *v63 = v0;
        v63[1] = sub_1600A0;

        return v110(v0 + 2624, v0 + 2948, v59, v60);
      }
    }

    else
    {
      v49 = *(v0 + 2688);
      v50 = Array<A>.positionScored()((*(v0 + 2712) << 8) | ((*(v0 + 2716) | (*(v0 + 2718) << 16)) << 40) | *(v0 + 2953));
      *v49 = 2;
      v51 = *(v0 + 8);

      return v51(v50);
    }
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        LODWORD(v4) = *(v0 + 2965);
        if (v4 == 5)
        {
          v4 = 0x401030200uLL >> (8 * *(v0 + 2959));
        }

        v5 = *(v0 + 2720);
        *(v0 + 2968) = v4;
        v6 = *(v0 + 2792);
        v7 = *(v0 + 2704);
        v116 = v4;
        sub_160CB8(&v116, v7, v0 + 2448);
        if (!v6)
        {
          v8 = *(v0 + 2959);
          v9 = *(v0 + 2728);
          v10 = *(v0 + 2953);
          v11 = *(v0 + 2472);
          v12 = *(v0 + 2480);
          sub_2698((v0 + 2448), v11);
          *(v0 + 2600) = v10 & 1;
          *(v0 + 2608) = v5;
          *(v0 + 2616) = v9;
          *(v0 + 2946) = v8;
          v13 = *(v12 + 8);
          v107 = (v13 + *v13);
          v14 = v13[1];
          v15 = swift_task_alloc();
          *(v0 + 2848) = v15;
          *v15 = v0;
          v15[1] = sub_16023C;

          return v107(v0 + 2600, v0 + 2946, v11, v12);
        }

        goto LABEL_45;
      }

      LODWORD(v64) = *(v0 + 2965);
      if (v64 == 5)
      {
        v64 = 0x401030200uLL >> (8 * *(v0 + 2961));
      }

      v65 = *(v0 + 2718);
      v66 = *(v0 + 2716);
      v67 = *(v0 + 2712);
      v68 = *(v0 + 2953);
      *(v0 + 2969) = v64;
      v69 = *(v0 + 2792);
      v70 = *(v0 + 2704);
      v115 = v64;
      sub_160D88(&v115, v70, v0 + 2408);
      if (!v69)
      {
        v71 = v68 | ((v67 | ((v66 | (v65 << 16)) << 32)) << 8);
        v72 = *(v0 + 2961);
        v73 = *(v0 + 2720);
        v74 = *(v0 + 2432);
        v75 = *(v0 + 2440);
        sub_2698((v0 + 2408), v74);
        *(v0 + 2672) = v71;
        *(v0 + 2680) = v73;
        *(v0 + 2944) = v72;
        v76 = *(v75 + 8);
        v111 = (v76 + *v76);
        v77 = v76[1];
        v78 = swift_task_alloc();
        *(v0 + 2872) = v78;
        *v78 = v0;
        v78[1] = sub_1603D8;

        return v111(v0 + 2672, v0 + 2944, v74, v75);
      }

LABEL_45:
      v82 = *(v0 + 8);

      return v82();
    }

    if (v3 == 5)
    {
      LODWORD(v30) = *(v0 + 2965);
      if (v30 == 5)
      {
        v30 = 0x401030200uLL >> (8 * *(v0 + 2963));
      }

      v31 = *(v0 + 2728);
      *(v0 + 2970) = v30;
      v32 = *(v0 + 2792);
      v33 = *(v0 + 2704);
      v114 = v30;
      sub_160E58(&v114, v33, v0 + 2368);
      if (v32)
      {
        goto LABEL_45;
      }

      v34 = *(v0 + 2964);
      v35 = *(v0 + 2963);
      v36 = *(v0 + 2962);
      v37 = *(v0 + 2736);
      v38 = *(v0 + 2720);
      v39 = *(v0 + 2696);
      v109 = *(v0 + 2392);
      v40 = *(v0 + 2400);
      v41 = *(v0 + 2953) & 1;
      v42 = *(v0 + 2954);
      sub_2698((v0 + 2368), v109);
      *(v0 + 2568) = v41;
      *(v0 + 2576) = v38;
      *(v0 + 2584) = v31;
      *(v0 + 2592) = v37;
      v43 = *(v39 + 16);
      *(v0 + 1136) = *v39;
      *(v0 + 1152) = v43;
      *(v0 + 1168) = v42;
      *(v0 + 1176) = v36;
      v44 = *(v39 + 41);
      *(v0 + 1180) = *(v39 + 44);
      *(v0 + 1177) = v44;
      *(v0 + 1184) = v35;
      v45 = *(v39 + 56);
      *(v0 + 1185) = *(v39 + 49);
      *(v0 + 1192) = v45;
      *(v0 + 1200) = v34;
      memcpy((v0 + 1201), (v39 + 65), 0x41FuLL);
      v46 = *(v40 + 8);
      v104 = (v46 + *v46);
      v47 = v46[1];
      v48 = swift_task_alloc();
      *(v0 + 2896) = v48;
      *v48 = v0;
      v48[1] = sub_160574;

      return v104(v0 + 2568, v0 + 1136, v109, v40);
    }

    else
    {
      LODWORD(v79) = *(v0 + 2965);
      if (v79 == 5)
      {
        v79 = 0x401030200uLL >> (8 * *(v0 + 2964));
      }

      *(v0 + 2971) = v79;
      v80 = *(v0 + 2792);
      v81 = *(v0 + 2704);
      v113 = v79;
      sub_160F28(&v113, v81, v0 + 2328);
      if (v80)
      {
        goto LABEL_45;
      }

      v100 = v2 & 0x1FFFFFFFFFFFFFFFLL;
      v105 = *(v0 + 2964);
      v103 = *(v0 + 2963);
      v101 = *(v0 + 2962);
      v83 = *(v0 + 2776);
      v84 = *(v0 + 2768);
      v85 = *(v0 + 2752);
      v86 = *(v0 + 2712);
      v87 = *(v0 + 2716);
      v88 = *(v0 + 2953);
      v89 = *(v0 + 2696);
      v90 = *(v0 + 2718);
      v112 = *(v0 + 2352);
      v102 = *(v0 + 2360);
      v91 = *(v0 + 2954);
      v98 = *(v0 + 2736);
      v99 = *(v0 + 2720);
      sub_2698((v0 + 2328), v112);
      *(v0 + 2256) = v88;
      *(v0 + 2263) = v90;
      *(v0 + 2261) = v87;
      *(v0 + 2257) = v86;
      *(v0 + 2280) = v98;
      *(v0 + 2264) = v99;
      *(v0 + 2296) = v85;
      *(v0 + 2304) = v100;
      *(v0 + 2312) = v84;
      *(v0 + 2320) = v83;
      v92 = *(v89 + 16);
      *(v0 + 16) = *v89;
      *(v0 + 32) = v92;
      *(v0 + 48) = v91;
      *(v0 + 56) = v101;
      v93 = *(v89 + 41);
      *(v0 + 60) = *(v89 + 44);
      *(v0 + 57) = v93;
      *(v0 + 64) = v103;
      v94 = *(v89 + 56);
      *(v0 + 65) = *(v89 + 49);
      *(v0 + 72) = v94;
      *(v0 + 80) = v105;
      memcpy((v0 + 81), (v89 + 65), 0x41FuLL);
      v95 = *(v102 + 8);
      v106 = (v95 + *v95);
      v96 = v95[1];
      v97 = swift_task_alloc();
      *(v0 + 2920) = v97;
      *v97 = v0;
      v97[1] = sub_160710;

      return v106(v0 + 2256, v0 + 16, v112, v102);
    }
  }
}

uint64_t sub_15FF04(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2800);
  v6 = *v2;
  *(*v2 + 2808) = v1;

  if (v1)
  {
    v7 = sub_1608C4;
  }

  else
  {
    *(v4 + 2816) = a1;
    v7 = sub_16002C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_16002C()
{
  **(v0 + 2688) = *(v0 + 2966);
  sub_2BF8((v0 + 2528));
  v1 = *(v0 + 2816);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1600A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2824);
  v6 = *v2;
  *(*v2 + 2832) = v1;

  if (v1)
  {
    v7 = sub_160928;
  }

  else
  {
    *(v4 + 2840) = a1;
    v7 = sub_1601C8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1601C8()
{
  **(v0 + 2688) = *(v0 + 2967);
  sub_2BF8((v0 + 2488));
  v1 = *(v0 + 2840);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_16023C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2848);
  v6 = *v2;
  *(*v2 + 2856) = v1;

  if (v1)
  {
    v7 = sub_16098C;
  }

  else
  {
    *(v4 + 2864) = a1;
    v7 = sub_160364;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_160364()
{
  **(v0 + 2688) = *(v0 + 2968);
  sub_2BF8((v0 + 2448));
  v1 = *(v0 + 2864);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1603D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2872);
  v6 = *v2;
  *(*v2 + 2880) = v1;

  if (v1)
  {
    v7 = sub_1609F0;
  }

  else
  {
    *(v4 + 2888) = a1;
    v7 = sub_160500;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_160500()
{
  **(v0 + 2688) = *(v0 + 2969);
  sub_2BF8((v0 + 2408));
  v1 = *(v0 + 2888);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_160574(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2896);
  v6 = *v2;
  *(*v2 + 2904) = v1;

  if (v1)
  {
    v7 = sub_160A54;
  }

  else
  {
    *(v4 + 2912) = a1;
    v7 = sub_16069C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_16069C()
{
  **(v0 + 2688) = *(v0 + 2970);
  sub_2BF8((v0 + 2368));
  v1 = *(v0 + 2912);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_160710(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2920);
  v6 = *v2;
  *(*v2 + 2928) = v1;

  if (v1)
  {
    v7 = sub_160AB8;
  }

  else
  {
    *(v4 + 2936) = a1;
    v7 = sub_160838;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_160838()
{
  **(v0 + 2688) = *(v0 + 2971);
  sub_2BF8((v0 + 2328));
  v1 = *(v0 + 2936);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1608C4()
{
  sub_2BF8(v0 + 316);
  v1 = v0[351];
  v2 = v0[1];

  return v2();
}

uint64_t sub_160928()
{
  sub_2BF8(v0 + 311);
  v1 = v0[354];
  v2 = v0[1];

  return v2();
}

uint64_t sub_16098C()
{
  sub_2BF8(v0 + 306);
  v1 = v0[357];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1609F0()
{
  sub_2BF8(v0 + 301);
  v1 = v0[360];
  v2 = v0[1];

  return v2();
}

uint64_t sub_160A54()
{
  sub_2BF8(v0 + 296);
  v1 = v0[363];
  v2 = v0[1];

  return v2();
}

uint64_t sub_160AB8()
{
  sub_2BF8(v0 + 291);
  v1 = v0[366];
  v2 = v0[1];

  return v2();
}

uint64_t sub_160B1C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (*(v6 + 16) && (v7 = sub_3B20C(v5), (v8 & 1) != 0))
  {
    sub_404C4(*(v6 + 56) + 40 * v7, v11);
    sub_264B8(v11, a3);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1610F8();
    swift_allocError();
    *v10 = v5;
    return swift_willThrow();
  }
}

uint64_t sub_160BE8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = *(a2 + 32);
  if (*(v6 + 16) && (v7 = sub_3B20C(v5), (v8 & 1) != 0))
  {
    sub_404C4(*(v6 + 56) + 40 * v7, v11);
    sub_264B8(v11, a3);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1610F8();
    swift_allocError();
    *v10 = v5 | 0x20;
    return swift_willThrow();
  }
}

uint64_t sub_160CB8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = *(a2 + 40);
  if (*(v6 + 16) && (v7 = sub_3B20C(v5), (v8 & 1) != 0))
  {
    sub_404C4(*(v6 + 56) + 40 * v7, v11);
    sub_264B8(v11, a3);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1610F8();
    swift_allocError();
    *v10 = v5 | 0x40;
    return swift_willThrow();
  }
}

uint64_t sub_160D88@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = *(a2 + 48);
  if (*(v6 + 16) && (v7 = sub_3B20C(v5), (v8 & 1) != 0))
  {
    sub_404C4(*(v6 + 56) + 40 * v7, v11);
    sub_264B8(v11, a3);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1610F8();
    swift_allocError();
    *v10 = v5 | 0x60;
    return swift_willThrow();
  }
}

uint64_t sub_160E58@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = *(a2 + 56);
  if (*(v6 + 16) && (v7 = sub_3B20C(v5), (v8 & 1) != 0))
  {
    sub_404C4(*(v6 + 56) + 40 * v7, v11);
    sub_264B8(v11, a3);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1610F8();
    swift_allocError();
    *v10 = v5 | 0x80;
    return swift_willThrow();
  }
}

uint64_t sub_160F28@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = *(a2 + 64);
  if (*(v6 + 16) && (v7 = sub_3B20C(v5), (v8 & 1) != 0))
  {
    sub_404C4(*(v6 + 56) + 40 * v7, v11);
    sub_264B8(v11, a3);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1610F8();
    swift_allocError();
    *v10 = v5 | 0xA0;
    return swift_willThrow();
  }
}

void *sub_160FFC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  return v0;
}

uint64_t sub_16104C()
{
  sub_160FFC();

  return swift_deallocClassInstance();
}

unint64_t sub_1610A4()
{
  result = qword_22E470;
  if (!qword_22E470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E470);
  }

  return result;
}

unint64_t sub_1610F8()
{
  result = qword_22E478;
  if (!qword_22E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E478);
  }

  return result;
}

unint64_t sub_16114C()
{
  result = qword_22E480;
  if (!qword_22E480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E480);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DelegatingCollectionService.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1B)
  {
    goto LABEL_17;
  }

  if (a2 + 229 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 229) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 229;
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

      return (*a1 | (v4 << 8)) - 229;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 229;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x18 | (*a1 >> 5)) ^ 0x1F;
  if (v6 >= 0x1A)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for DelegatingCollectionService.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 229 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 229) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1B)
  {
    v4 = 0;
  }

  if (a2 > 0x1A)
  {
    v5 = ((a2 - 27) >> 8) + 1;
    *result = a2 - 27;
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
    *result = 8 * (((-a2 >> 3) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_161338(__int128 *a1, const void *a2)
{
  v4 = *a1;
  *(v3 + 2272) = a1[1];
  v5 = a1[3];
  *(v3 + 2288) = a1[2];
  *(v3 + 2304) = v5;
  *(v3 + 2440) = v2;
  *(v3 + 2320) = *(a1 + 8);
  *(v3 + 2256) = v4;
  memcpy((v3 + 16), a2, 0x460uLL);

  return _swift_task_switch(sub_1613C8, 0, 0);
}

void sub_1613C8()
{
  v1 = *(*(v0 + 2440) + 16);
  *(v0 + 2448) = v1;
  v2 = *(v1 + 16);
  *(v0 + 2456) = v2;
  if (v2)
  {
    *(v0 + 2464) = 0;
    if (*(v1 + 16))
    {
      sub_404C4(v1 + 32, v0 + 2400);
      v3 = *(v0 + 2424);
      v4 = *(v0 + 2432);
      sub_2698((v0 + 2400), v3);
      v5 = *(v0 + 2304);
      *(v0 + 2360) = *(v0 + 2288);
      *(v0 + 2376) = v5;
      *(v0 + 2392) = *(v0 + 2320);
      v6 = *(v0 + 2272);
      *(v0 + 2328) = *(v0 + 2256);
      *(v0 + 2344) = v6;
      memcpy((v0 + 1136), (v0 + 16), 0x460uLL);
      v7 = *(v4 + 8);
      v11 = (v7 + *v7);
      v8 = v7[1];
      v9 = swift_task_alloc();
      *(v0 + 2472) = v9;
      *v9 = v0;
      v9[1] = sub_1615AC;

      v11(v0 + 2328, v0 + 1136, v3, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v10 = *(v0 + 8);

    v10(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1615AC(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[309];
  v7 = *v2;
  v3[310] = a1;
  v3[311] = v1;

  sub_2BF8(v3 + 300);
  if (v1)
  {
    v5 = sub_1618D8;
  }

  else
  {
    v5 = sub_1616D0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1616D0()
{
  v1 = *(v0 + 2480);
  if (v1[2])
  {
LABEL_4:
    v5 = *(v0 + 8);

    return v5(v1);
  }

  v2 = *(v0 + 2464);
  v3 = *(v0 + 2456);

  if (v2 + 1 == v3)
  {
    v1 = _swiftEmptyArrayStorage;
    goto LABEL_4;
  }

  v6 = *(v0 + 2464) + 1;
  *(v0 + 2464) = v6;
  v7 = *(v0 + 2448);
  if (v6 >= *(v7 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_404C4(v7 + 40 * v6 + 32, v0 + 2400);
    v8 = *(v0 + 2424);
    v9 = *(v0 + 2432);
    sub_2698((v0 + 2400), v8);
    v10 = *(v0 + 2304);
    *(v0 + 2360) = *(v0 + 2288);
    *(v0 + 2376) = v10;
    *(v0 + 2392) = *(v0 + 2320);
    v11 = *(v0 + 2272);
    *(v0 + 2328) = *(v0 + 2256);
    *(v0 + 2344) = v11;
    memcpy((v0 + 1136), (v0 + 16), 0x460uLL);
    v12 = *(v9 + 8);
    v15 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 2472) = v14;
    *v14 = v0;
    v14[1] = sub_1615AC;

    return v15(v0 + 2328, v0 + 1136, v8, v9);
  }

  return result;
}

uint64_t sub_161914(__int128 *a1, const void *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_91B58;

  return sub_161338(a1, a2);
}

uint64_t sub_1619BC(void *a1)
{
  v2 = sub_1B44C4();
  v70 = *(v2 - 8);
  v71 = v2;
  v3 = *(v70 + 64);
  __chkstk_darwin(v2);
  v69 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1B44B4();
  v66 = *(v68 - 8);
  v5 = *(v66 + 64);
  __chkstk_darwin(v68);
  v67 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1B4524();
  v62 = *(v63 - 8);
  v7 = *(v62 + 64);
  __chkstk_darwin(v63);
  v61[0] = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B4544();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v61[1] = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B44D4();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v65 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2B0C(&qword_22E5E0, &qword_1CFD58);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v64 = v61 - v17;
  v18 = sub_2B0C(&qword_22C1F8, &qword_1CFD60);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = v61 - v24;
  __chkstk_darwin(v23);
  v27 = v61 - v26;
  v28 = sub_1B3F34();
  v29 = *(v28 - 8);
  v30 = v29[8];
  v31 = __chkstk_darwin(v28);
  v72 = v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v74 = v61 - v34;
  __chkstk_darwin(v33);
  v75 = v61 - v35;
  v36 = a1[4];
  sub_2698(a1, a1[3]);
  v37 = type metadata accessor for WorkServiceConfigurationManager();
  result = sub_1B4254();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v39 = result;
  v83 = v37;
  v84 = sub_163E94(&qword_22E5E8, type metadata accessor for WorkServiceConfigurationManager);
  v82 = v39;
  v40 = a1[3];
  v41 = a1[4];
  v73 = a1;
  sub_2698(a1, v40);
  v42 = type metadata accessor for UserFeaturesFeatureResolver();
  result = sub_1B4254();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v43 = result;
  v80 = v42;
  v81 = sub_163E94(&qword_22E5F0, type metadata accessor for UserFeaturesFeatureResolver);
  v79 = v43;
  v44 = type metadata accessor for PackageService();
  sub_170BA0(v27);
  v45 = v29[6];
  result = v45(v27, 1, v28);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B3EC4();
  v46 = v29[1];
  v46(v27, v28);
  sub_170BA0(v25);
  result = v45(v25, 1, v28);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1B3EC4();
  v46(v25, v28);
  sub_170BA0(v22);
  result = v45(v22, 1, v28);
  v47 = v73;
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1B3EC4();
  v46(v22, v28);
  v48 = sub_2B0C(&qword_22E5F8, &qword_1CFD68);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  sub_1B4604();
  v51 = v47[4];
  sub_2698(v47, v47[3]);
  result = sub_1B4254();
  if (result)
  {
    v52 = result;
    v77 = v44;
    v78 = sub_163E94(&qword_22E600, type metadata accessor for PackageService);
    v76 = v52;
    v53 = sub_1B4494();
    (*(*(v53 - 8) + 56))(v64, 1, 1, v53);
    v54 = v61[0];
    *v61[0] = 50;
    (*(v62 + 104))(v54, enum case for ComputeServiceDataSettings.RequestDataPolicy.include(_:), v63);
    sub_1B4534();
    (*(v66 + 104))(v67, enum case for ComputeServiceSettings.StorageMode.readWrite(_:), v68);
    (*(v70 + 104))(v69, enum case for ComputeServiceSettings.UnloadPolicy.immediate(_:), v71);
    sub_1B44A4();
    v55 = sub_1B4564();
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();
    sub_1B4554();
    v58 = sub_2B0C(&qword_22E5C0, &unk_1CFD20);
    v59 = *(v58 + 48);
    v60 = *(v58 + 52);
    swift_allocObject();
    return sub_1B4434();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_162268(void *a1)
{
  v1 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22E5C8, &qword_1D0BC0);
  result = sub_1B4264();
  v3 = v20;
  if (v20)
  {
    v4 = sub_40474(v19, v20);
    v5 = *(*(v3 - 8) + 64);
    __chkstk_darwin(v4);
    v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = *v7;
    v10 = type metadata accessor for UserEncodingInputFeaturesService();
    v18[3] = v10;
    v18[4] = &off_218EB0;
    v18[0] = v9;
    type metadata accessor for UserFeaturesFeatureResolver();
    v11 = swift_allocObject();
    v12 = sub_40474(v18, v10);
    v13 = *(*(v10 - 8) + 64);
    __chkstk_darwin(v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v11[5] = v10;
    v11[6] = &off_218EB0;
    v11[2] = v17;
    sub_2BF8(v18);
    sub_2BF8(v19);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_162470@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22E5C0, &unk_1CFD20);
  result = sub_1B4254();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for WorkServiceGenreRecommendationService();
    v7 = objc_allocWithZone(v6);
    if (qword_228320 != -1)
    {
      swift_once();
    }

    sub_1B4D84();
    sub_1B4614();
    *&v7[OBJC_IVAR____TtC20BooksPersonalization37WorkServiceGenreRecommendationService_computeService] = v5;
    v8.receiver = v7;
    v8.super_class = v6;
    result = objc_msgSendSuper2(&v8, "init");
    a2[3] = v6;
    a2[4] = &protocol witness table for WorkServiceGenreRecommendationService;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_162594@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A100, &qword_1D1440);
  result = sub_1B4264();
  if (!v12[3])
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22E5C0, &unk_1CFD20);
  result = sub_1B4254();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = type metadata accessor for WorkServiceSuggestionsService();
  v9 = objc_allocWithZone(v8);
  if (qword_228310 != -1)
  {
    swift_once();
  }

  sub_1B4DB4();
  sub_1B4614();
  *&v9[OBJC_IVAR____TtC20BooksPersonalization29WorkServiceSuggestionsService_computeService] = v7;
  sub_404C4(v12, &v9[OBJC_IVAR____TtC20BooksPersonalization29WorkServiceSuggestionsService_bookMetadataService]);
  v11.receiver = v9;
  v11.super_class = v8;
  v10 = objc_msgSendSuper2(&v11, "init");
  result = sub_2BF8(v12);
  a2[3] = v8;
  a2[4] = &protocol witness table for WorkServiceSuggestionsService;
  *a2 = v10;
  return result;
}

uint64_t sub_162724@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_2698(a1, a1[3]);
  v5 = type metadata accessor for WorkServiceSeedBasedRecommendationService();
  result = sub_1B4254();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = v5;
  v17 = &protocol witness table for WorkServiceSeedBasedRecommendationService;
  *&v15 = result;
  v7 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A778, &unk_1C0560);
  result = sub_1B4244();
  if (!v14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A100, &qword_1D1440);
  result = sub_1B4264();
  if (v12)
  {
    v9 = type metadata accessor for CombinedSeedBasedRecommendationService();
    v10 = swift_allocObject();
    sub_264B8(&v15, v10 + 16);
    sub_264B8(&v13, v10 + 56);
    result = sub_264B8(&v11, v10 + 96);
    a2[3] = v9;
    a2[4] = &off_221340;
    *a2 = v10;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1628A0(void *a1)
{
  v2 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A100, &qword_1D1440);
  result = sub_1B4264();
  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22E5C0, &unk_1CFD20);
  result = sub_1B4254();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = result;
  type metadata accessor for WorkServiceBookScorer();
  v6 = swift_allocObject();
  if (qword_228310 != -1)
  {
    swift_once();
  }

  sub_1B4DB4();
  sub_1B4614();
  sub_264B8(&v7, v6 + 24);
  *(v6 + 16) = v5;
  return v6;
}

uint64_t sub_1629EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_2698(a1, a1[3]);
  v4 = type metadata accessor for WorkServiceBookScorer();
  result = sub_1B4254();
  if (result)
  {
    a2[3] = v4;
    a2[4] = &protocol witness table for WorkServiceBookScorer;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_162A60(void *a1)
{
  v1 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A308, &unk_1C65B0);
  result = sub_1B4264();
  if (v5)
  {
    type metadata accessor for WorkServiceConfigurationManager();
    v3 = swift_allocObject();
    sub_264B8(&v4, v3 + 16);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_162AF8(void *a1)
{
  v1 = a1[4];
  sub_2698(a1, a1[3]);
  type metadata accessor for WorkServiceConfigurationManager();
  result = sub_1B4254();
  if (result)
  {
    v3 = result;
    type metadata accessor for PackageService();
    result = swift_allocObject();
    *(result + 16) = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_162B68(void *a1)
{
  v2 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A100, &qword_1D1440);
  result = sub_1B4264();
  if (!v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22E5C0, &unk_1CFD20);
  result = sub_1B4254();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v6 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A778, &unk_1C0560);
  result = sub_1B4244();
  if (!v9)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  type metadata accessor for WorkServiceSeedBasedRecommendationService();
  v7 = swift_allocObject();
  if (qword_228318 != -1)
  {
    swift_once();
  }

  sub_1B4DB4();
  sub_1B4614();
  *(v7 + 16) = v5;
  sub_264B8(&v10, v7 + 24);
  sub_264B8(&v8, v7 + 64);
  return v7;
}

uint64_t sub_162D18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v30 = sub_1B3E84();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B3F34();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7D0, &qword_1C05D0);
  sub_1B4264();
  if (!v37[3])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A760, &qword_1CFD50);
  sub_1B4264();
  if (!v36[3])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A100, &qword_1D1440);
  sub_1B4264();
  if (!v35[3])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A308, &unk_1C65B0);
  sub_1B4264();
  if (!v34[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = type metadata accessor for UserEncodingInputFeaturesService();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  sub_404C4(v37, v22 + 16);
  sub_404C4(v36, v22 + 56);
  sub_404C4(v35, v22 + 96);
  sub_404C4(v34, v22 + 136);
  v23 = [objc_opt_self() defaultManager];
  v24 = [v23 URLsForDirectory:13 inDomains:1];

  v25 = sub_1B4AC4();
  if (*(v25 + 16))
  {

    if (*(v25 + 16))
    {
      (*(v8 + 16))(v12, v25 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

      v32 = 0xD00000000000001ALL;
      v33 = 0x80000000001D8700;
      v26 = v30;
      (*(v3 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v30);
      sub_402F4();
      sub_1B3F24();
      (*(v3 + 8))(v6, v26);
      (*(v8 + 8))(v12, v7);
      sub_2BF8(v34);
      sub_2BF8(v35);
      sub_2BF8(v36);
      sub_2BF8(v37);
      result = (*(v8 + 32))(v22 + OBJC_IVAR____TtC20BooksPersonalization32UserEncodingInputFeaturesService_cachePath, v14, v7);
      v28 = v31;
      v31[3] = v19;
      v28[4] = &off_218EB0;
      *v28 = v22;
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_13:

  __break(1u);
  return result;
}

uint64_t sub_1631A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22E5C0, &unk_1CFD20);
  result = sub_1B4254();
  if (result)
  {
    v6 = result;
    v7 = a1[4];
    sub_2698(a1, a1[3]);
    sub_2B0C(&qword_22E5C8, &qword_1D0BC0);
    result = sub_1B4264();
    v8 = v26;
    if (v26)
    {
      v9 = sub_40474(v25, v26);
      v10 = *(*(v8 - 8) + 64);
      __chkstk_darwin(v9);
      v12 = (v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v12);
      v14 = *v12;
      v15 = type metadata accessor for UserEncodingInputFeaturesService();
      v24[3] = v15;
      v24[4] = &off_218EB0;
      v24[0] = v14;
      v16 = type metadata accessor for UserEncodingService();
      v17 = swift_allocObject();
      v18 = sub_40474(v24, v15);
      v19 = *(*(v15 - 8) + 64);
      __chkstk_darwin(v18);
      v21 = (v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21);
      v23 = *v21;
      v17[6] = v15;
      v17[7] = &off_218EB0;
      v17[2] = v6;
      v17[3] = v23;
      sub_2BF8(v24);
      result = sub_2BF8(v25);
      a2[3] = v16;
      a2[4] = &protocol witness table for UserEncodingService;
      *a2 = v17;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_163414(uint64_t a1)
{
  sub_404C4(a1, v3);
  type metadata accessor for BooksWorkServiceStartupTask();
  v1 = swift_allocObject();
  sub_264B8(v3, v1 + 16);
  return v1;
}

uint64_t sub_163468(uint64_t a1, void *a2)
{
  v2 = a2[4];
  sub_2698(a2, a2[3]);
  v3 = type metadata accessor for BooksWorkServiceStartupTask();
  result = sub_1B4254();
  if (result)
  {
    v5 = result;
    v6[3] = v3;
    v6[4] = sub_163E94(&qword_22E5D8, type metadata accessor for BooksWorkServiceStartupTask);
    v6[0] = v5;
    sub_1B42D4();
    return sub_2BF8(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_163558()
{
  v0 = sub_1B4274();
  v16 = *(v0 - 8);
  v17 = v0;
  v1 = *(v16 + 64);
  __chkstk_darwin(v0);
  v15 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B4344();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4284();
  sub_2B0C(&qword_22E5C0, &unk_1CFD20);
  sub_1B42F4();

  v8 = enum case for Scope.singleton(_:);
  v9 = v4[13];
  v9(v7, enum case for Scope.singleton(_:), v3);
  sub_1B4214();

  v10 = v4[1];
  v10(v7, v3);
  sub_1B4284();
  type metadata accessor for UserFeaturesFeatureResolver();
  sub_1B42F4();

  v9(v7, v8, v3);
  sub_1B4214();

  v10(v7, v3);
  sub_1B4284();
  sub_2B0C(&qword_22DFF0, &unk_1CEC10);
  sub_1B4304();

  v9(v7, v8, v3);
  sub_1B4214();

  v10(v7, v3);
  sub_1B4284();
  sub_2B0C(&qword_2291F8, &unk_1CFD30);
  sub_1B4304();

  v9(v7, v8, v3);
  sub_1B4214();

  v10(v7, v3);
  sub_1B4284();
  sub_2B0C(&qword_22A778, &unk_1C0560);
  sub_1B4304();

  v9(v7, v8, v3);
  sub_1B4214();

  v10(v7, v3);
  sub_1B4284();
  type metadata accessor for WorkServiceBookScorer();
  sub_1B42F4();

  v9(v7, v8, v3);
  sub_1B4214();

  v10(v7, v3);
  sub_1B4284();
  sub_2B0C(&qword_22A790, &qword_1C0580);
  sub_1B4304();

  v9(v7, v8, v3);
  sub_1B4214();

  v10(v7, v3);
  sub_1B4294();
  type metadata accessor for WorkServiceConfigurationManager();
  sub_1B42F4();

  v9(v7, v8, v3);
  sub_1B4214();

  v10(v7, v3);
  sub_1B4294();
  type metadata accessor for PackageService();
  sub_1B42F4();

  v9(v7, v8, v3);
  sub_1B4214();

  v10(v7, v3);
  sub_1B4294();
  type metadata accessor for WorkServiceSeedBasedRecommendationService();
  sub_1B42F4();

  v9(v7, v8, v3);
  sub_1B4214();

  v10(v7, v3);
  sub_1B4294();
  sub_2B0C(&qword_22E5C8, &qword_1D0BC0);
  sub_1B4304();

  v9(v7, v8, v3);
  sub_1B4214();

  v10(v7, v3);
  sub_1B4284();
  sub_2B0C(&qword_22E5D0, &unk_1CFD40);
  sub_1B4304();

  v9(v7, v8, v3);
  sub_1B4214();

  v10(v7, v3);
  sub_1B4294();
  type metadata accessor for BooksWorkServiceStartupTask();
  sub_1B42F4();

  sub_1B42A4();
  sub_2698(v18, v18[3]);
  sub_1B42E4();
  v12 = v15;
  v11 = v16;
  v13 = v17;
  (*(v16 + 104))(v15, enum case for CallbackScope.any(_:), v17);
  sub_1B4314();
  (*(v11 + 8))(v12, v13);
  return sub_2BF8(v18);
}

uint64_t sub_163E94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ClientCurrency.Response.init(statusCode:headers:body:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a2;
  *a5 = result;
  a5[1] = v5;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ClientCurrency.Request.init(url:method:headers:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a4;
  v14 = type metadata accessor for ClientCurrency.Request();
  v15 = a7 + v14[7];
  *v15 = xmmword_1C6AD0;
  v16 = sub_1B3F34();
  (*(*(v16 - 8) + 32))(a7, a1, v16);
  v17 = (a7 + v14[5]);
  *v17 = a2;
  v17[1] = a3;
  *(a7 + v14[6]) = v13;
  result = sub_85D94(*v15, *(v15 + 8));
  *v15 = a5;
  *(v15 + 8) = a6;
  return result;
}