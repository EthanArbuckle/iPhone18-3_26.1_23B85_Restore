uint64_t sub_23C65B830(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v97 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_107:
    v97 = *v97;
    if (!v97)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_139:
      result = sub_23C6473A0(v9);
      v9 = result;
    }

    v86 = v9 + 16;
    v87 = *(v9 + 2);
    if (v87 >= 2)
    {
      while (1)
      {
        v88 = *v6;
        if (!*v6)
        {
          goto LABEL_143;
        }

        v89 = &v9[16 * v87];
        v6 = *v89;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_23C65D198((v88 + 80 * *v89), (v88 + 80 * *v90), (v88 + 80 * v91), v97);
        if (v5)
        {
        }

        if (v91 < v6)
        {
          goto LABEL_131;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_132;
        }

        *v89 = v6;
        *(v89 + 1) = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_133;
        }

        v87 = *v86 - 1;
        result = memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        v6 = a3;
        if (v87 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *v6;
      v12 = (*v6 + 80 * v8);
      result = *v12;
      v13 = v12[1];
      v14 = (*v6 + 80 * v10);
      if (result == *v14 && v13 == v14[1])
      {
        v16 = 0;
      }

      else
      {
        result = sub_23C872014();
        v16 = result;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v17 = (v11 + 80 * v10 + 88);
        v18 = v17;
        do
        {
          result = v17[9];
          v20 = v18[10];
          v18 += 10;
          v19 = v20;
          if (result == *(v17 - 1) && v19 == *v17)
          {
            if (v16)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_23C872014();
            if ((v16 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v17 = v18;
        }

        while (v7 != v8);
        v8 = v7;
      }

LABEL_23:
      if (v16)
      {
LABEL_24:
        if (v8 < v10)
        {
          goto LABEL_136;
        }

        if (v10 < v8)
        {
          v22 = 80 * v8 - 80;
          v23 = v10;
          v24 = 80 * v10;
          v25 = v8;
          v94 = v23;
          do
          {
            if (v23 != --v25)
            {
              v27 = *v6;
              if (!*v6)
              {
                goto LABEL_142;
              }

              v26 = (v27 + v22);
              v103 = *(v27 + v24 + 32);
              *v105 = *(v27 + v24 + 48);
              *&v105[9] = *(v27 + v24 + 57);
              v99 = *(v27 + v24);
              v101 = *(v27 + v24 + 16);
              result = memmove((v27 + v24), (v27 + v22), 0x50uLL);
              v26[2] = v103;
              v26[3] = *v105;
              *(v26 + 57) = *&v105[9];
              *v26 = v99;
              v26[1] = v101;
            }

            ++v23;
            v22 -= 80;
            v24 += 80;
          }

          while (v23 < v25);
          v10 = v94;
        }
      }
    }

    v28 = v6[1];
    if (v8 < v28)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_135;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_56:
    if (v8 < v10)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23C584338(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v40 = *(v9 + 2);
    v39 = *(v9 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_23C584338((v39 > 1), v40 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v41;
    v42 = &v9[16 * v40];
    *(v42 + 4) = v10;
    *(v42 + 5) = v8;
    v43 = *v97;
    if (!*v97)
    {
      goto LABEL_144;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v9 + 4);
          v46 = *(v9 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_76:
          if (v48)
          {
            goto LABEL_122;
          }

          v61 = &v9[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_125;
          }

          v67 = &v9[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_128;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_129;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        v71 = &v9[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_90:
        if (v66)
        {
          goto LABEL_124;
        }

        v74 = &v9[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_127;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_97:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v6)
        {
          goto LABEL_141;
        }

        v83 = *&v9[16 * v82 + 32];
        v84 = *&v9[16 * v44 + 40];
        sub_23C65D198((*v6 + 80 * v83), (*v6 + 80 * *&v9[16 * v44 + 32]), (*v6 + 80 * v84), v43);
        if (v5)
        {
        }

        if (v84 < v83)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_23C6473A0(v9);
        }

        if (v82 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v85 = &v9[16 * v82];
        *(v85 + 4) = v83;
        *(v85 + 5) = v84;
        result = sub_23C647314(v44);
        v41 = *(v9 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v9[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_120;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_121;
      }

      v56 = &v9[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_123;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_126;
      }

      if (v60 >= v52)
      {
        v78 = &v9[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_130;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_76;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_137;
  }

  v93 = v5;
  if (v10 + a4 >= v28)
  {
    v5 = v6[1];
  }

  else
  {
    v5 = v10 + a4;
  }

  if (v5 < v10)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v8 == v5)
  {
LABEL_55:
    v5 = v93;
    goto LABEL_56;
  }

  v29 = *v6;
  v30 = *v6 + 80 * v8;
  v95 = v10;
  v31 = v10 - v8;
LABEL_44:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = (v33 - 80);
    v35 = *v33 == *(v33 - 80) && *(v33 + 8) == *(v33 - 72);
    if (v35 || (result = sub_23C872014(), (result & 1) == 0))
    {
LABEL_43:
      ++v8;
      v30 += 80;
      --v31;
      if (v8 != v5)
      {
        goto LABEL_44;
      }

      v8 = v5;
      v6 = a3;
      v10 = v95;
      goto LABEL_55;
    }

    if (!v29)
    {
      break;
    }

    v104 = *(v33 + 32);
    *v106 = *(v33 + 48);
    *&v106[9] = *(v33 + 57);
    v100 = *v33;
    v102 = *(v33 + 16);
    v36 = *(v33 - 32);
    *(v33 + 32) = *(v33 - 48);
    *(v33 + 48) = v36;
    *(v33 + 64) = *(v33 - 16);
    v37 = *(v33 - 64);
    *v33 = *v34;
    *(v33 + 16) = v37;
    v33 -= 80;
    *(v34 + 57) = *&v106[9];
    v34[2] = v104;
    v34[3] = *v106;
    *v34 = v100;
    v34[1] = v102;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_43;
    }
  }

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
  return result;
}

uint64_t sub_23C65BE80(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_104:
    v95 = *v95;
    if (!v95)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_136:
      result = sub_23C6473A0(v9);
      v9 = result;
    }

    v87 = v9 + 16;
    v88 = *(v9 + 2);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = &v9[16 * v88];
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        sub_23C65D3EC((*a3 + (*v89 << 6)), (*a3 + (*v91 << 6)), (*a3 + (v92 << 6)), v95);
        if (v4)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_128;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_129;
        }

        *v89 = v90;
        *(v89 + 1) = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_130;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_140;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v8++;
  if (v8 < v6)
  {
    v11 = *a3 + (v8 << 6);
    v12 = *(v11 + 48);
    v13 = *a3 + (v10 << 6);
    v14 = *(v13 + 48);
    if (*(v11 + 56))
    {
      v12 = 0.0;
    }

    if (*(v13 + 56))
    {
      v14 = 0.0;
    }

    v8 = v10 + 2;
    if (v10 + 2 < v6)
    {
      v15 = (v13 + 184);
      do
      {
        v16 = *(v15 - 1);
        if (*v15)
        {
          v16 = 0.0;
        }

        if (*(v15 - 64) == 1)
        {
          if (v12 < v14 == v16 >= 0.0)
          {
            goto LABEL_17;
          }
        }

        else if (v12 < v14 == v16 >= *(v15 - 9))
        {
          goto LABEL_17;
        }

        ++v8;
        v15 += 8;
      }

      while (v6 != v8);
      v8 = v6;
      if (v12 >= v14)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (v12 < v14)
    {
LABEL_18:
      if (v8 < v10)
      {
        goto LABEL_133;
      }

      if (v10 < v8)
      {
        v17 = (v8 << 6) - 64;
        v18 = v10 << 6;
        v19 = v8;
        v20 = v10;
        do
        {
          if (v20 != --v19)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_139;
            }

            v25 = (v24 + v18);
            v26 = (v24 + v17);
            v96 = *v25;
            v97 = v25[1];
            *v98 = v25[2];
            *&v98[9] = *(v25 + 41);
            if (v18 != v17 || v25 >= v26 + 4)
            {
              v21 = *v26;
              v22 = v26[1];
              v23 = v26[3];
              v25[2] = v26[2];
              v25[3] = v23;
              *v25 = v21;
              v25[1] = v22;
            }

            *v26 = v96;
            v26[1] = v97;
            v26[2] = *v98;
            *(v26 + 41) = *&v98[9];
          }

          ++v20;
          v17 -= 64;
          v18 += 64;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }
  }

LABEL_31:
  if (v8 >= v6)
  {
    goto LABEL_53;
  }

  if (__OFSUB__(v8, v10))
  {
    goto LABEL_132;
  }

  if (v8 - v10 >= v7)
  {
    goto LABEL_53;
  }

  if (__OFADD__(v10, v7))
  {
    goto LABEL_134;
  }

  if (v10 + v7 < v6)
  {
    v6 = v10 + v7;
  }

  if (v6 < v10)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v8 == v6)
  {
    goto LABEL_53;
  }

  v27 = *a3;
  v28 = *a3 + (v8 << 6) + 56;
  v29 = v10 - v8;
LABEL_41:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 - 1);
    if (*v31)
    {
      v32 = 0.0;
    }

    if (*(v31 - 8))
    {
      if (v32 >= 0.0)
      {
        goto LABEL_40;
      }
    }

    else if (v32 >= *(v31 - 9))
    {
      goto LABEL_40;
    }

    if (!v27)
    {
      break;
    }

    v33 = v31 - 7;
    v35 = v31 - 15;
    v34 = *(v31 - 5);
    *v99 = *(v31 - 3);
    *&v99[9] = *(v31 - 15);
    v36 = *(v31 - 7);
    v37 = *(v31 - 13);
    *v33 = *(v31 - 15);
    *(v33 + 1) = v37;
    v38 = *(v31 - 9);
    *(v33 + 2) = *(v31 - 11);
    *(v33 + 3) = v38;
    *(v35 + 41) = *&v99[9];
    *(v35 + 1) = v34;
    *(v35 + 2) = *v99;
    *v35 = v36;
    v31 -= 8;
    if (__CFADD__(v30++, 1))
    {
LABEL_40:
      ++v8;
      v28 += 64;
      --v29;
      if (v8 != v6)
      {
        goto LABEL_41;
      }

      v8 = v6;
LABEL_53:
      if (v8 < v10)
      {
        goto LABEL_131;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23C584338(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v41 = *(v9 + 2);
      v40 = *(v9 + 3);
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        result = sub_23C584338((v40 > 1), v41 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v42;
      v43 = &v9[16 * v41];
      *(v43 + 4) = v10;
      *(v43 + 5) = v8;
      v44 = *v95;
      if (!*v95)
      {
        goto LABEL_141;
      }

      if (v41)
      {
        while (1)
        {
          v45 = v42 - 1;
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v46 = *(v9 + 4);
            v47 = *(v9 + 5);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_73:
            if (v49)
            {
              goto LABEL_119;
            }

            v62 = &v9[16 * v42];
            v64 = *v62;
            v63 = *(v62 + 1);
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_122;
            }

            v68 = &v9[16 * v45 + 32];
            v70 = *v68;
            v69 = *(v68 + 1);
            v56 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v56)
            {
              goto LABEL_125;
            }

            if (__OFADD__(v66, v71))
            {
              goto LABEL_126;
            }

            if (v66 + v71 >= v48)
            {
              if (v48 < v71)
              {
                v45 = v42 - 2;
              }

              goto LABEL_94;
            }

            goto LABEL_87;
          }

          v72 = &v9[16 * v42];
          v74 = *v72;
          v73 = *(v72 + 1);
          v56 = __OFSUB__(v73, v74);
          v66 = v73 - v74;
          v67 = v56;
LABEL_87:
          if (v67)
          {
            goto LABEL_121;
          }

          v75 = &v9[16 * v45];
          v77 = *(v75 + 4);
          v76 = *(v75 + 5);
          v56 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v56)
          {
            goto LABEL_124;
          }

          if (v78 < v66)
          {
            goto LABEL_3;
          }

LABEL_94:
          v83 = v45 - 1;
          if (v45 - 1 >= v42)
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
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          if (!*a3)
          {
            goto LABEL_138;
          }

          v84 = *&v9[16 * v83 + 32];
          v85 = *&v9[16 * v45 + 40];
          sub_23C65D3EC((*a3 + (v84 << 6)), (*a3 + (*&v9[16 * v45 + 32] << 6)), (*a3 + (v85 << 6)), v44);
          if (v4)
          {
          }

          if (v85 < v84)
          {
            goto LABEL_115;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_23C6473A0(v9);
          }

          if (v83 >= *(v9 + 2))
          {
            goto LABEL_116;
          }

          v86 = &v9[16 * v83];
          *(v86 + 4) = v84;
          *(v86 + 5) = v85;
          result = sub_23C647314(v45);
          v42 = *(v9 + 2);
          if (v42 <= 1)
          {
            goto LABEL_3;
          }
        }

        v50 = &v9[16 * v42 + 32];
        v51 = *(v50 - 64);
        v52 = *(v50 - 56);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_117;
        }

        v55 = *(v50 - 48);
        v54 = *(v50 - 40);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_118;
        }

        v57 = &v9[16 * v42];
        v59 = *v57;
        v58 = *(v57 + 1);
        v56 = __OFSUB__(v58, v59);
        v60 = v58 - v59;
        if (v56)
        {
          goto LABEL_120;
        }

        v56 = __OFADD__(v48, v60);
        v61 = v48 + v60;
        if (v56)
        {
          goto LABEL_123;
        }

        if (v61 >= v53)
        {
          v79 = &v9[16 * v45 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v56 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v56)
          {
            goto LABEL_127;
          }

          if (v48 < v82)
          {
            v45 = v42 - 2;
          }

          goto LABEL_94;
        }

        goto LABEL_73;
      }

LABEL_3:
      v6 = a3[1];
      v7 = a4;
      if (v8 >= v6)
      {
        goto LABEL_104;
      }

      goto LABEL_4;
    }
  }

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
  return result;
}

uint64_t sub_23C65C4E8(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v95 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v92 = &v86 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v97 = &v86 - v15;
  MEMORY[0x28223BE20](v14);
  v96 = &v86 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v88 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v87 = &v86 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v90 = &v86 - v24;
  MEMORY[0x28223BE20](v23);
  v89 = &v86 - v25;
  v102 = type metadata accessor for TranscriptProtoEvent(0);
  v26 = *(*(v102 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v102);
  v98 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v86 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v101 = &v86 - v33;
  result = MEMORY[0x28223BE20](v32);
  v36 = &v86 - v35;
  v38 = *(v37 + 72);
  if (!v38)
  {
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v38 == -1)
  {
    goto LABEL_93;
  }

  v39 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v38 == -1)
  {
    goto LABEL_94;
  }

  v40 = (a2 - a1) / v38;
  v105 = a1;
  v104 = a4;
  if (v40 >= v39 / v38)
  {
    v42 = v39 / v38 * v38;
    if (a4 < a2 || a2 + v42 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v42 < 1)
    {
      v66 = a4 + v42;
    }

    else
    {
      v64 = -v38;
      v65 = (a4 + v42);
      v66 = a4 + v42;
      v99 = a4;
      v91 = v31;
      v93 = v64;
      while (2)
      {
        while (1)
        {
          v89 = v66;
          v67 = a2;
          a2 += v64;
          v100 = a2;
          v94 = v67;
          while (1)
          {
            if (v67 <= a1)
            {
              v105 = v67;
              v103 = v89;
              goto LABEL_91;
            }

            v69 = a3;
            v90 = v66;
            v97 = v65;
            v101 = &v65[v64];
            sub_23C5A4514(&v65[v64], v31);
            sub_23C5A4514(a2, v98);
            v70 = v92;
            sub_23C5855B0(&v31[*(v102 + 44)], v92, &qword_27E1F9950, &unk_23C87CFF0);
            v71 = type metadata accessor for TranscriptProtoPayload(0);
            v72 = *(*(v71 - 8) + 48);
            if (v72(v70, 1, v71) == 1)
            {
              sub_23C585C34(v70, &qword_27E1F9950, &unk_23C87CFF0);
              v96 = 0;
              v73 = 0xE000000000000000;
              v74 = v95;
            }

            else
            {
              v75 = v87;
              sub_23C5855B0(v70, v87, &qword_27E1F9958, &qword_23C873E10);
              sub_23C65E398(v70, type metadata accessor for TranscriptProtoPayload);
              v76 = type metadata accessor for TranscriptProtoPayloadEnum(0);
              if ((*(*(v76 - 8) + 48))(v75, 1, v76) == 1)
              {
                sub_23C585C34(v75, &qword_27E1F9958, &qword_23C873E10);
                v96 = 0;
                v73 = 0xE000000000000000;
              }

              else
              {
                v96 = TranscriptProtoPayloadEnum.eventTypeString.getter();
                v73 = v77;
                sub_23C65E398(v75, type metadata accessor for TranscriptProtoPayloadEnum);
              }

              v74 = v95;
            }

            sub_23C5855B0(v98 + *(v102 + 44), v74, &qword_27E1F9950, &unk_23C87CFF0);
            if (v72(v74, 1, v71) == 1)
            {
              sub_23C585C34(v74, &qword_27E1F9950, &unk_23C87CFF0);
              v78 = 0;
              v79 = 0xE000000000000000;
              v31 = v91;
            }

            else
            {
              v80 = v88;
              sub_23C5855B0(v74, v88, &qword_27E1F9958, &qword_23C873E10);
              sub_23C65E398(v74, type metadata accessor for TranscriptProtoPayload);
              v81 = type metadata accessor for TranscriptProtoPayloadEnum(0);
              v82 = (*(*(v81 - 8) + 48))(v80, 1, v81);
              v31 = v91;
              if (v82 == 1)
              {
                sub_23C585C34(v80, &qword_27E1F9958, &qword_23C873E10);
                v78 = 0;
                v79 = 0xE000000000000000;
              }

              else
              {
                v78 = TranscriptProtoPayloadEnum.eventTypeString.getter();
                v79 = v83;
                sub_23C65E398(v80, type metadata accessor for TranscriptProtoPayloadEnum);
              }
            }

            v64 = v93;
            if (v96 == v78 && v73 == v79)
            {
              v84 = 0;
            }

            else
            {
              v84 = sub_23C872014();
            }

            a2 = v100;

            a3 = &v69[v64];
            sub_23C65E398(v98, type metadata accessor for TranscriptProtoEvent);
            sub_23C65E398(v31, type metadata accessor for TranscriptProtoEvent);
            if (v84)
            {
              break;
            }

            v66 = v101;
            if (v69 < v97 || a3 >= v97)
            {
              swift_arrayInitWithTakeFrontToBack();
              v68 = v99;
            }

            else
            {
              v68 = v99;
              if (v69 != v97)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v65 = v66;
            v67 = v94;
            if (v101 <= v68)
            {
              a2 = v94;
              goto LABEL_90;
            }
          }

          if (v69 < v94 || a3 >= v94)
          {
            break;
          }

          v85 = v99;
          v66 = v90;
          v65 = v97;
          if (v69 != v94)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v65 <= v85)
          {
            goto LABEL_90;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v66 = v90;
        v65 = v97;
        if (v97 > v99)
        {
          continue;
        }

        break;
      }
    }

LABEL_90:
    v105 = a2;
    v103 = v66;
  }

  else
  {
    v41 = v40 * v38;
    if (a4 < a1 || a1 + v41 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v98 = a4 + v41;
    v103 = a4 + v41;
    if (v41 >= 1 && a2 < a3)
    {
      v94 = v38;
      v95 = a3;
      v93 = v36;
      do
      {
        sub_23C5A4514(a2, v36);
        v99 = a4;
        sub_23C5A4514(a4, v101);
        v44 = v96;
        sub_23C5855B0(&v36[*(v102 + 44)], v96, &qword_27E1F9950, &unk_23C87CFF0);
        v45 = type metadata accessor for TranscriptProtoPayload(0);
        v46 = *(*(v45 - 8) + 48);
        v47 = v46(v44, 1, v45);
        v100 = a2;
        if (v47 == 1)
        {
          sub_23C585C34(v44, &qword_27E1F9950, &unk_23C87CFF0);
          v48 = 0;
          v49 = 0xE000000000000000;
          v50 = v97;
        }

        else
        {
          v51 = v89;
          sub_23C5855B0(v44, v89, &qword_27E1F9958, &qword_23C873E10);
          sub_23C65E398(v44, type metadata accessor for TranscriptProtoPayload);
          v52 = type metadata accessor for TranscriptProtoPayloadEnum(0);
          if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
          {
            sub_23C585C34(v51, &qword_27E1F9958, &qword_23C873E10);
            v48 = 0;
            v49 = 0xE000000000000000;
          }

          else
          {
            v48 = TranscriptProtoPayloadEnum.eventTypeString.getter();
            v53 = v51;
            v49 = v54;
            sub_23C65E398(v53, type metadata accessor for TranscriptProtoPayloadEnum);
          }

          v50 = v97;
        }

        sub_23C5855B0(v101 + *(v102 + 44), v50, &qword_27E1F9950, &unk_23C87CFF0);
        if (v46(v50, 1, v45) == 1)
        {
          sub_23C585C34(v50, &qword_27E1F9950, &unk_23C87CFF0);
          v55 = 0xE000000000000000;
          v36 = v93;
          if (v48)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v56 = v90;
          sub_23C5855B0(v50, v90, &qword_27E1F9958, &qword_23C873E10);
          sub_23C65E398(v50, type metadata accessor for TranscriptProtoPayload);
          v57 = type metadata accessor for TranscriptProtoPayloadEnum(0);
          v58 = (*(*(v57 - 8) + 48))(v56, 1, v57);
          v36 = v93;
          if (v58 == 1)
          {
            sub_23C585C34(v56, &qword_27E1F9958, &qword_23C873E10);
            v59 = 0;
            v55 = 0xE000000000000000;
          }

          else
          {
            v59 = TranscriptProtoPayloadEnum.eventTypeString.getter();
            v55 = v60;
            sub_23C65E398(v56, type metadata accessor for TranscriptProtoPayloadEnum);
          }

          if (v48 != v59)
          {
            goto LABEL_36;
          }
        }

        if (v49 == v55)
        {

          sub_23C65E398(v101, type metadata accessor for TranscriptProtoEvent);
          sub_23C65E398(v36, type metadata accessor for TranscriptProtoEvent);
          v61 = v95;
          goto LABEL_41;
        }

LABEL_36:
        v62 = sub_23C872014();

        sub_23C65E398(v101, type metadata accessor for TranscriptProtoEvent);
        sub_23C65E398(v36, type metadata accessor for TranscriptProtoEvent);
        v61 = v95;
        if (v62)
        {
          v63 = v94;
          a2 = v100 + v94;
          if (a1 < v100 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v100)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v99;
          goto LABEL_49;
        }

LABEL_41:
        a2 = v100;
        v63 = v94;
        a4 = v99 + v94;
        if (a1 < v99 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v99)
        {
          swift_arrayInitWithTakeBackToFront();
          v104 = a4;
          goto LABEL_49;
        }

        v104 = a4;
LABEL_49:
        a1 += v63;
        v105 = a1;
      }

      while (a4 < v98 && a2 < v61);
    }
  }

LABEL_91:
  sub_23C6473B4(&v105, &v104, &v103);
  return 1;
}

uint64_t sub_23C65D198(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 80;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 80;
  if (v9 < v11)
  {
    v12 = 80 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 80)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (sub_23C872014() & 1) != 0)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 80;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 80;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 80;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v14, 0x50uLL);
    goto LABEL_9;
  }

  v16 = 80 * v11;
  if (a4 != __src || &__src[v16] <= a4)
  {
    memmove(a4, __src, 80 * v11);
  }

  v13 = &v4[v16];
  if (v10 >= 80 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 80;
    v5 -= 80;
    v18 = v13;
    do
    {
      v19 = *(v18 - 10);
      v20 = *(v18 - 9);
      v18 -= 80;
      v21 = v19 == *(v6 - 10) && v20 == *(v6 - 9);
      if (!v21 && (sub_23C872014() & 1) != 0)
      {
        if (v5 + 80 != v6)
        {
          memmove(v5, v6 - 80, 0x50uLL);
        }

        if (v13 <= v4 || (v6 -= 80, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if (v5 + 80 != v13)
      {
        memmove(v5, v18, 0x50uLL);
      }

      v5 -= 80;
      v13 = v18;
    }

    while (v18 > v4);
    v13 = v18;
  }

LABEL_39:
  v22 = 80 * ((v13 - v4) / 80);
  if (v6 != v4 || v6 >= &v4[v22])
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

uint64_t sub_23C65D3EC(double *__src, double *__dst, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 63;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 6;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 63;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 6;
  if (v10 < v13)
  {
    v14 = v10 << 6;
    if (a4 != __src || (__src + v14) <= a4)
    {
      memmove(a4, __src, v14);
    }

    v15 = &v4[v14];
    if (v8 < 64 || v6 >= v5)
    {
LABEL_44:
      v32 = v7;
      goto LABEL_46;
    }

    while (1)
    {
      v16 = v6[6];
      if (*(v6 + 56))
      {
        v16 = 0.0;
      }

      if (v4[56])
      {
        if (v16 >= 0.0)
        {
          goto LABEL_15;
        }
      }

      else if (v16 >= *(v4 + 6))
      {
LABEL_15:
        v17 = v4;
        v18 = v7 == v4;
        v4 += 64;
        if (v18)
        {
          goto LABEL_17;
        }

LABEL_16:
        v19 = *v17;
        v20 = v17[1];
        v21 = v17[3];
        *(v7 + 2) = v17[2];
        *(v7 + 3) = v21;
        *v7 = v19;
        *(v7 + 1) = v20;
        goto LABEL_17;
      }

      v17 = v6;
      v18 = v7 == v6;
      v6 += 8;
      if (!v18)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 8;
      if (v4 >= v15 || v6 >= v5)
      {
        goto LABEL_44;
      }
    }
  }

  v22 = v13 << 6;
  if (a4 != __dst || (__dst + v22) <= a4)
  {
    memmove(a4, __dst, v13 << 6);
  }

  v15 = &v4[v22];
  if (v11 < 64 || v6 <= v7)
  {
LABEL_45:
    v32 = v6;
    goto LABEL_46;
  }

  do
  {
    v23 = 0;
    v24 = v15;
    while (1)
    {
      v25 = &v24[v23];
      v26 = *&v24[v23 - 16];
      if (v24[v23 - 8])
      {
        v26 = 0.0;
      }

      if ((*(v6 - 1) & 1) == 0)
      {
        break;
      }

      if (v26 < 0.0)
      {
        goto LABEL_39;
      }

LABEL_37:
      if (&v5[v23 / 8] != v25)
      {
        v27 = &v5[v23 / 8 - 8];
        v29 = *(v25 - 4);
        v30 = *(v25 - 3);
        v28 = v25 - 8;
        v31 = *(v28 + 3);
        *(v27 + 2) = *(v28 + 2);
        *(v27 + 3) = v31;
        *v27 = v29;
        *(v27 + 1) = v30;
      }

      v23 -= 64;
      v15 = &v24[v23];
      if (&v24[v23] <= v4)
      {
        goto LABEL_45;
      }
    }

    if (v26 >= *(v6 - 2))
    {
      goto LABEL_37;
    }

LABEL_39:
    v32 = (v6 - 8);
    v33 = &v5[v23 / 8];
    v5 = &v5[v23 / 8 - 8];
    if (v33 != v6)
    {
      v34 = *v32;
      v35 = *(v6 - 3);
      v36 = *(v6 - 1);
      *(v5 + 2) = *(v6 - 2);
      *(v5 + 3) = v36;
      *v5 = v34;
      *(v5 + 1) = v35;
    }

    v15 = &v24[v23];
    if (&v24[v23] <= v4)
    {
      break;
    }

    v6 -= 8;
  }

  while (v32 > v7);
  v15 = &v24[v23];
LABEL_46:
  v37 = (v15 - v4 + (v15 - v4 < 0 ? 0x3FuLL : 0)) & 0xFFFFFFFFFFFFFFC0;
  if (v32 != v4 || v32 >= &v4[v37])
  {
    memmove(v32, v4, v37);
  }

  return 1;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23C65D6AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_23C65D6F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23C65D7B4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_23C65DD08(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_23C65D8AC(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v55 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v49 = a1;
    v50 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v48 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v49;
          v16 = v50;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v50 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v49;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v50 << 9) | (8 * v18)));
        v19 = *(v6 + 40);
        v20 = sub_23C8720E4();
        v21 = -1 << *(v6 + 32);
        v5 = v20 & ~v21;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0);
      v22 = *(v6 + 48);
      if (*(v22 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v21;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0)
        {
          break;
        }

        if (*(v22 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v52 = v48;
    v53 = v50;
    v54 = v11;
    v51[0] = v49;
    v51[1] = v8;
    v4 = (63 - v21) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v42 = swift_slowAlloc();
      memcpy(v42, (v6 + 56), v14);
      v43 = sub_23C65DDF8(v42, v4, v6, v5, v51);

      MEMORY[0x23EED8240](v42, -1, -1);
      v48 = v52;
      v50 = v53;
      v6 = v43;
      goto LABEL_43;
    }

LABEL_18:
    v45 = v4;
    v46 = &v44;
    MEMORY[0x28223BE20](v23);
    v5 = &v44 - v24;
    memcpy(&v44 - v24, (v6 + 56), v14);
    v25 = *(v6 + 16);
    *(v5 + 8 * v3) &= ~v2;
    v26 = v25 - 1;
    v14 = -1;
    v4 = 1;
    v2 = v49;
LABEL_19:
    v47 = v26;
    while (v11)
    {
LABEL_27:
      v30 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v50 << 9) | (8 * v30)));
      v31 = *(v6 + 40);
      v32 = sub_23C8720E4();
      v33 = -1 << *(v6 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = 1 << v34;
      if (((1 << v34) & *(v13 + 8 * (v34 >> 6))) != 0)
      {
        v37 = *(v6 + 48);
        if (*(v37 + 8 * v34) == v3)
        {
LABEL_20:
          v27 = *(v5 + 8 * v35);
          *(v5 + 8 * v35) = v27 & ~v36;
          if ((v27 & v36) != 0)
          {
            v26 = v47 - 1;
            if (__OFSUB__(v47, 1))
            {
              __break(1u);
            }

            if (v47 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v38 = ~v33;
          while (1)
          {
            v34 = (v34 + 1) & v38;
            v35 = v34 >> 6;
            v36 = 1 << v34;
            if (((1 << v34) & *(v13 + 8 * (v34 >> 6))) == 0)
            {
              break;
            }

            if (*(v37 + 8 * v34) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v28 = v50;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v29 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v29);
      ++v28;
      if (v11)
      {
        v50 = v29;
        goto LABEL_27;
      }
    }

    if (v12 <= v50 + 1)
    {
      v39 = v50 + 1;
    }

    else
    {
      v39 = v12;
    }

    v50 = v39 - 1;
    v6 = sub_23C667798(v5, v45, v47, v6);
LABEL_43:
    sub_23C56EF08();
  }

  else
  {

    v6 = MEMORY[0x277D84FA0];
  }

  v40 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_23C65DD08(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_23C8720E4();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_23C650FF4();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_23C65DFB4(v7);
  result = v13;
  *v1 = v14;
  return result;
}

uint64_t sub_23C65DDF8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_9:
    v18 = *(*(*a5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    v19 = *(a3 + 40);
    result = sub_23C8720E4();
    v20 = -1 << *(a3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v11 + 8 * (v21 >> 6))) != 0)
    {
      v24 = *(a3 + 48);
      if (*(v24 + 8 * v21) == v18)
      {
LABEL_2:
        v12 = v8[v22];
        v8[v22] = v12 & ~v23;
        if ((v12 & v23) != 0)
        {
          if (__OFSUB__(v10--, 1))
          {
LABEL_23:
            __break(1u);
            return result;
          }

          if (!v10)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v25 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v11 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          if (*(v24 + 8 * v21) == v18)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v16 = (a5[2] + 64) >> 6;
  v17 = a5[3];
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v16)
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v17;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= v13 + 1)
  {
    v27 = v13 + 1;
  }

  else
  {
    v27 = (a5[2] + 64) >> 6;
  }

  a5[3] = v27 - 1;
  a5[4] = 0;

  return sub_23C667798(v8, a2, v10, a3);
}

unint64_t sub_23C65DFB4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_23C871BC4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = sub_23C8720E4() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_23C65E138(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v31 = MEMORY[0x277D84F90];
  sub_23C592BA4(0, v2, 0);
  v3 = v31;
  v5 = -1 << *(a1 + 32);
  v28 = a1 + 56;
  v6 = sub_23C871BB4();
  v7 = *(a1 + 36);
  result = type metadata accessor for SpanGraph();
  if (v6 < 0 || v6 >= 1 << *(a1 + 32))
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v26 = v2;
    v9 = 1;
    while (1)
    {
      v10 = v6 >> 6;
      if ((*(v28 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        break;
      }

      result = sub_23C658780(*(*(a1 + 48) + 8 * v6), a2, 0, 0, v29);
      v31 = v3;
      v12 = *(v3 + 16);
      v11 = *(v3 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_23C592BA4((v11 > 1), v12 + 1, 1);
        v3 = v31;
      }

      *(v3 + 16) = v12 + 1;
      v13 = (v3 + (v12 << 6));
      v14 = v29[0];
      v15 = v29[1];
      v16 = v30[0];
      *(v13 + 73) = *(v30 + 9);
      v13[3] = v15;
      v13[4] = v16;
      v13[2] = v14;
      v17 = 1 << *(a1 + 32);
      if (v6 >= v17)
      {
        goto LABEL_25;
      }

      v18 = *(v28 + 8 * v10);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v6 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v20 = v26;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v20 = v26;
        v23 = (a1 + 64 + 8 * v10);
        while (v22 < (v17 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_23C606430(v6, v7, 0);
            v6 = __clz(__rbit64(v24)) + v21;
            goto LABEL_18;
          }
        }

        result = sub_23C606430(v6, v7, 0);
        v6 = v17;
      }

LABEL_18:
      if (v9 == v20)
      {
        return v3;
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        v7 = *(a1 + 36);
        ++v9;
        if (v6 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_23C65E398(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_23C65E41C()
{
  v0 = sub_23C871654();
  __swift_allocate_value_buffer(v0, qword_27E1FBF50);
  __swift_project_value_buffer(v0, qword_27E1FBF50);
  sub_23C588EAC();
  sub_23C871B54();
  return sub_23C871664();
}

uint64_t sub_23C65E4B0()
{
  if (qword_27E1F8348 != -1)
  {
    swift_once();
  }

  v0 = sub_23C871654();
  __swift_project_value_buffer(v0, qword_27E1FBF50);
  v1 = sub_23C871634();
  v2 = sub_23C871AC4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23C56D000, v1, v2, "checking for data vault entitlements", v3, 2u);
    MEMORY[0x23EED8240](v3, -1, -1);
  }

  v4 = xpc_copy_entitlement_for_self();
  if (!v4)
  {
    return 2;
  }

  v5 = v4;
  swift_unknownObjectRetain();
  v6 = sub_23C871634();
  v7 = sub_23C871AC4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = xpc_dictionary_get_count(v5);
    swift_unknownObjectRelease();
    _os_log_impl(&dword_23C56D000, v6, v7, "Got entitlement dictionary with %ld entries", v8, 0xCu);
    MEMORY[0x23EED8240](v8, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v10 = sub_23C8717E4();
  v11 = v10 + 32 + *(v10 + 16);
  sub_23C65E6A4((v10 + 32), v5, &v12);

  swift_unknownObjectRelease();
  return v12;
}

void sub_23C65E6A4(char *key@<X0>, xpc_object_t xdict@<X2>, _BYTE *a3@<X8>)
{
  if (key)
  {
    v4 = xpc_dictionary_get_BOOL(xdict, key);
    if (qword_27E1F8348 != -1)
    {
      swift_once();
    }

    v5 = sub_23C871654();
    __swift_project_value_buffer(v5, qword_27E1FBF50);
    v6 = sub_23C871634();
    v7 = sub_23C871AC4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v4;
      _os_log_impl(&dword_23C56D000, v6, v7, "Found value %{BOOL}d for data vault entitlement", v8, 8u);
      MEMORY[0x23EED8240](v8, -1, -1);
    }
  }

  else
  {
    LOBYTE(v4) = 2;
  }

  *a3 = v4;
}

uint64_t sub_23C65E7BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1F96A8, qword_23C873C40);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = sub_23C871784();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_23C65E890(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = result;
    if (qword_27E1F8348 != -1)
    {
      swift_once();
    }

    v4 = sub_23C871654();
    __swift_project_value_buffer(v4, qword_27E1FBF50);
    v5 = sub_23C871634();
    v6 = sub_23C871AC4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23C56D000, v5, v6, "Releasing Sandbox extension to SiriSELF data vault", v7, 2u);
      MEMORY[0x23EED8240](v7, -1, -1);
    }

    return MEMORY[0x282204FA0](v3);
  }

  return result;
}

uint64_t sub_23C65E9A4()
{
  if (qword_27E1F8348 != -1)
  {
    swift_once();
  }

  v1 = sub_23C871654();
  v0[20] = __swift_project_value_buffer(v1, qword_27E1FBF50);
  v2 = sub_23C871634();
  v3 = sub_23C871AC4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23C56D000, v2, v3, "Starting vending sandbox extension for Unified Message Stream", v4, 2u);
    MEMORY[0x23EED8240](v4, -1, -1);
  }

  v5 = objc_allocWithZone(MEMORY[0x277D552D8]);
  v6 = sub_23C871774();
  v7 = [v5 initWithMachServiceName_];
  v0[21] = v7;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23C65EBD0;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF68, &unk_23C87D0C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23C65E7BC;
  v0[13] = &block_descriptor_1;
  v0[14] = v8;
  [v7 vendSandboxExtensionWithResource:1 readonly:1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23C65EBD0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_23C65EFD0;
  }

  else
  {
    v3 = sub_23C65ECE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

char *sub_23C65ECE0()
{
  v29 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  sub_23C8717E4();
  v3 = sandbox_extension_consume();

  if (v3 < 0)
  {
    v11 = MEMORY[0x23EED6F60](v4);
    result = strerror(v11);
    if (result)
    {
      v12 = *(v0 + 160);

      v13 = sub_23C871764();
      v15 = v14;

      v16 = sub_23C871634();
      v17 = sub_23C871AD4();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v28 = v19;
        *v18 = 67109378;
        *(v18 + 4) = MEMORY[0x23EED6F60](v19);
        *(v18 + 8) = 2080;
        if (v15)
        {
          v20 = v13;
        }

        else
        {
          v20 = 0;
        }

        if (v15)
        {
          v21 = v15;
        }

        else
        {
          v21 = 0xE000000000000000;
        }

        v22 = sub_23C63C388(v20, v21, &v28);

        *(v18 + 10) = v22;
        _os_log_impl(&dword_23C56D000, v16, v17, "Error consuming sandbox extension: %d %s", v18, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x23EED8240](v19, -1, -1);
        MEMORY[0x23EED8240](v18, -1, -1);
      }

      v23 = *(v0 + 168);
      v24 = MEMORY[0x23EED6F60]();
      if (v15)
      {
        v25 = v15;
      }

      else
      {
        v13 = 0;
        v25 = 0xE000000000000000;
      }

      sub_23C65F058();
      swift_allocError();
      *v26 = v24;
      *(v26 + 8) = v13;
      *(v26 + 16) = v25;
      swift_willThrow();

      v27 = *(v0 + 8);

      return v27();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v5 = *(v0 + 160);

    v6 = sub_23C871634();
    v7 = sub_23C871AC4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v3;
      _os_log_impl(&dword_23C56D000, v6, v7, "Sandbox extension vended and consumed successfully. Handle: %lld", v8, 0xCu);
      MEMORY[0x23EED8240](v8, -1, -1);
    }

    v9 = *(v0 + 8);

    return v9(v3);
  }

  return result;
}

uint64_t sub_23C65EFD0()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[22];
  v4 = v0[1];

  return v4();
}

unint64_t sub_23C65F058()
{
  result = qword_27E1FBF70;
  if (!qword_27E1FBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBF70);
  }

  return result;
}

uint64_t sub_23C65F0AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23C65F0F4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_23C65F1AC()
{
  v1 = *v0;
  sub_23C871D14();
  MEMORY[0x23EED7100](0xD00000000000003CLL, 0x800000023C8ACBD0);
  swift_beginAccess();
  v9 = v0[2];
  v2 = v1[10];
  v3 = v1[14];
  sub_23C8716D4();
  swift_getWitnessTable();
  sub_23C871FE4();
  MEMORY[0x23EED7100](0xD000000000000015, 0x800000023C8ACC10);
  v10 = v0[4];
  v4 = v1[13];
  type metadata accessor for UndirectedUnweightedGraph();
  swift_getWitnessTable();
  sub_23C871FE4();
  MEMORY[0x23EED7100](0xD000000000000020, 0x800000023C8ACC30);
  swift_beginAccess();
  v8 = v0[5];
  sub_23C8716D4();
  swift_getWitnessTable();
  sub_23C871FE4();
  MEMORY[0x23EED7100](0xD00000000000001ALL, 0x800000023C8ACC60);
  swift_beginAccess();
  v7 = v0[3];
  v5 = v1[11];
  sub_23C871924();
  sub_23C8716D4();
  swift_getWitnessTable();
  sub_23C871FE4();
  MEMORY[0x23EED7100](0x202020202020200ALL, 0xEA00000000002920);
  return 0;
}

void *sub_23C65F45C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t sub_23C65F494()
{
  sub_23C65F45C();

  return swift_deallocClassInstance();
}

uint64_t static InstrumentationStreamsFactoryBridge.construct(filter:startTime:endTime:maxEvents:lastN:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23C662788;

  return sub_23C6607D4(a1, a2, a3, a4, a5);
}

uint64_t sub_23C65F788(void *a1, uint64_t a2, uint64_t a3, void *aBlock, double a5, double a6)
{
  v6[2] = a1;
  v6[3] = _Block_copy(aBlock);
  v12 = a1;
  v13 = swift_task_alloc();
  v6[4] = v13;
  *v13 = v6;
  v13[1] = sub_23C662784;

  return sub_23C6607D4(v12, a2, a3, a5, a6);
}

uint64_t static InstrumentationStreamsFactoryBridge.construct(filter:startTime:endTime:maxEvents:lastN:storageURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_23C662788;

  return sub_23C660DB0(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_23C65FB24(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, uint64_t a6, const void *a7)
{
  v7[2] = a1;
  v14 = sub_23C8709E4();
  v7[3] = v14;
  v15 = *(v14 - 8);
  v7[4] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v7[5] = v17;
  v7[6] = _Block_copy(a7);
  sub_23C8709C4();
  v18 = a1;
  v19 = swift_task_alloc();
  v7[7] = v19;
  *v19 = v7;
  v19[1] = sub_23C66277C;

  return sub_23C660DB0(v18, a2, a3, v17, a4, a5);
}

uint64_t static InstrumentationStreamsFactoryBridge.construct(filter:startTimeRelativeToNow:)(uint64_t a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C662788;

  return sub_23C6613E8(a1, a2);
}

uint64_t sub_23C65FEEC(void *a1, void *aBlock, double a3)
{
  v3[2] = a1;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_23C65FFBC;
  v8.n128_f64[0] = a3;

  return (sub_23C6613E8)(v6, v8);
}

uint64_t sub_23C65FFBC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_23C8709A4();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t static InstrumentationStreamsFactoryBridge.construct(filter:startTimeRelativeToNow:storageURL:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23C611704;
  v8.n128_f64[0] = a3;

  return (sub_23C661A1C)(a1, a2, v8);
}

uint64_t sub_23C6603B8(void *a1, double a2, uint64_t a3, const void *a4)
{
  v4[2] = a1;
  v8 = sub_23C8709E4();
  v4[3] = v8;
  v9 = *(v8 - 8);
  v4[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v4[5] = v11;
  v4[6] = _Block_copy(a4);
  sub_23C8709C4();
  v12 = a1;
  v13 = swift_task_alloc();
  v4[7] = v13;
  *v13 = v4;
  v13[1] = sub_23C660508;
  v14.n128_f64[0] = a2;

  return (sub_23C661A1C)(v12, v11, v14);
}

uint64_t sub_23C660508(void *a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 56);
  v8 = *v2;

  v9 = v5[6];
  v10 = v5[2];
  (*(v5[4] + 8))(v5[5], v5[3]);

  if (v3)
  {
    v11 = sub_23C8709A4();

    (v9)[2](v9, 0, v11);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v12 = v6[5];

  v13 = *(v8 + 8);

  return v13();
}

id InstrumentationStreamsFactoryBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InstrumentationStreamsFactoryBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstrumentationStreamsFactoryBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id InstrumentationStreamsFactoryBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstrumentationStreamsFactoryBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23C6607D4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 96) = a2;
  *(v5 + 104) = a3;
  *(v5 + 80) = a4;
  *(v5 + 88) = a5;
  *(v5 + 72) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020) - 8) + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB648, &qword_23C87B018);
  *(v5 + 120) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v5 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C6608B4, 0, 0);
}

uint64_t sub_23C6608B4()
{
  v1 = *(v0 + 112);
  v2 = sub_23C8709E4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  type metadata accessor for UnifiedSourceStream();
  v3 = swift_allocObject();
  *(v0 + 136) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 256;
  v4 = sub_23C65E4B0();
  if (v4 == 2 || (v4 & 1) == 0)
  {
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *v5 = v0;
    v5[1] = sub_23C660BF4;

    return sub_23C65E988();
  }

  else
  {
    *(v0 + 168) = 1;
    *(v0 + 144) = 0;

    return MEMORY[0x2822009F8](sub_23C660A00, 0, 0);
  }
}

uint64_t sub_23C660A00()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 72);
  *(v2 + 16) = *(v0 + 144);
  *(v2 + 24) = v1;
  v26 = v6 < 0;
  v25 = v6 & ~(v6 >> 63);
  v24 = v7 < 0;
  v11 = v7 & ~(v7 >> 63);
  v12 = v8 < 0.0;
  if (v8 >= 0.0)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = v9 < 0.0;
  if (v9 >= 0.0)
  {
    v15 = v9;
  }

  else
  {
    v15 = 0.0;
  }

  sub_23C60C610(v5, v3 + *(v4 + 56), &qword_27E1FB650, &qword_23C87B020);
  *v3 = v2;
  *(v3 + 8) = v10;
  *(v3 + 16) = v15;
  *(v3 + 24) = v14;
  *(v3 + 32) = v13;
  *(v3 + 40) = v12;
  *(v3 + 48) = v11;
  *(v3 + 56) = v24;
  *(v3 + 64) = v25;
  *(v3 + 72) = v26;
  v16 = (v3 + *(v4 + 60));
  *v16 = 0;
  v16[1] = 0;
  v17 = v10;
  *(v0 + 40) = v4;
  *(v0 + 48) = &off_284F30100;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_23C5855B0(v3, boxed_opaque_existential_1, &qword_27E1FB648, &qword_23C87B018);
  v19 = type metadata accessor for InstrumentationStreamsProviderBridge();
  v20 = objc_allocWithZone(v19);
  sub_23C5A9638(v0 + 16, v20 + OBJC_IVAR___ISStreamsProvider_provider);
  *(v0 + 56) = v20;
  *(v0 + 64) = v19;
  v21 = objc_msgSendSuper2((v0 + 56), sel_init);
  sub_23C585C34(v3, &qword_27E1FB648, &qword_23C87B018);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v22 = *(v0 + 8);

  return v22(v21);
}

uint64_t sub_23C660BF4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = sub_23C660D20;
  }

  else
  {
    *(v4 + 168) = 0;
    *(v4 + 144) = a1;
    v7 = sub_23C660A00;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23C660D20()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];

  sub_23C585C34(v3, &qword_27E1FB650, &qword_23C87B020);

  v4 = v0[1];
  v5 = v0[20];

  return v4();
}

uint64_t sub_23C660DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(v6 + 104) = a3;
  *(v6 + 112) = a4;
  *(v6 + 96) = a2;
  *(v6 + 80) = a5;
  *(v6 + 88) = a6;
  *(v6 + 72) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020) - 8) + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB648, &qword_23C87B018);
  *(v6 + 128) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C660E94, 0, 0);
}

uint64_t sub_23C660E94()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = sub_23C8709E4();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v2, v1, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  type metadata accessor for UnifiedSourceStream();
  v5 = swift_allocObject();
  *(v0 + 144) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = 256;
  v6 = sub_23C65E4B0();
  if (v6 == 2 || (v6 & 1) == 0)
  {
    v7 = swift_task_alloc();
    *(v0 + 160) = v7;
    *v7 = v0;
    v7[1] = sub_23C66122C;

    return sub_23C65E988();
  }

  else
  {
    *(v0 + 176) = 1;
    *(v0 + 152) = 0;

    return MEMORY[0x2822009F8](sub_23C661038, 0, 0);
  }
}

uint64_t sub_23C661038()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 72);
  *(v2 + 16) = *(v0 + 152);
  *(v2 + 24) = v1;
  v26 = v6 < 0;
  v25 = v6 & ~(v6 >> 63);
  v24 = v7 < 0;
  v11 = v7 & ~(v7 >> 63);
  v12 = v8 < 0.0;
  if (v8 >= 0.0)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = v9 < 0.0;
  if (v9 >= 0.0)
  {
    v15 = v9;
  }

  else
  {
    v15 = 0.0;
  }

  sub_23C60C610(v5, v3 + *(v4 + 56), &qword_27E1FB650, &qword_23C87B020);
  *v3 = v2;
  *(v3 + 8) = v10;
  *(v3 + 16) = v15;
  *(v3 + 24) = v14;
  *(v3 + 32) = v13;
  *(v3 + 40) = v12;
  *(v3 + 48) = v11;
  *(v3 + 56) = v24;
  *(v3 + 64) = v25;
  *(v3 + 72) = v26;
  v16 = (v3 + *(v4 + 60));
  *v16 = 0;
  v16[1] = 0;
  v17 = v10;
  *(v0 + 40) = v4;
  *(v0 + 48) = &off_284F30100;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_23C5855B0(v3, boxed_opaque_existential_1, &qword_27E1FB648, &qword_23C87B018);
  v19 = type metadata accessor for InstrumentationStreamsProviderBridge();
  v20 = objc_allocWithZone(v19);
  sub_23C5A9638(v0 + 16, v20 + OBJC_IVAR___ISStreamsProvider_provider);
  *(v0 + 56) = v20;
  *(v0 + 64) = v19;
  v21 = objc_msgSendSuper2((v0 + 56), sel_init);
  sub_23C585C34(v3, &qword_27E1FB648, &qword_23C87B018);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v22 = *(v0 + 8);

  return v22(v21);
}

uint64_t sub_23C66122C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_23C661358;
  }

  else
  {
    *(v4 + 176) = 0;
    *(v4 + 152) = a1;
    v7 = sub_23C661038;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23C661358()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];

  sub_23C585C34(v3, &qword_27E1FB650, &qword_23C87B020);

  v4 = v0[1];
  v5 = v0[21];

  return v4();
}

uint64_t sub_23C6613E8(uint64_t a1, double a2)
{
  *(v2 + 120) = a2;
  *(v2 + 112) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020) - 8) + 64) + 15;
  *(v2 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C661488, 0, 0);
}

uint64_t sub_23C661488()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);
  v3 = sub_23C8709E4();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB648, &qword_23C87B018);
  *(v0 + 136) = v4;
  *(v0 + 40) = v4;
  *(v0 + 48) = &off_284F30100;
  *(v0 + 144) = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  v5 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow_];
  [v5 timeIntervalSinceReferenceDate];
  *(v0 + 152) = v6;

  type metadata accessor for UnifiedSourceStream();
  v7 = swift_allocObject();
  *(v0 + 160) = v7;
  *(v7 + 16) = 0;
  *(v7 + 24) = 256;
  v8 = sub_23C65E4B0();
  if (v8 == 2 || (v8 & 1) == 0)
  {
    v9 = swift_task_alloc();
    *(v0 + 176) = v9;
    *v9 = v0;
    v9[1] = sub_23C661860;

    return sub_23C65E988();
  }

  else
  {
    *(v0 + 192) = 1;
    *(v0 + 168) = 0;

    return MEMORY[0x2822009F8](sub_23C66163C, 0, 0);
  }
}

uint64_t sub_23C66163C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 112);
  *(v2 + 16) = *(v0 + 168);
  *(v2 + 24) = v1;
  *(v2 + 25) = 0;
  sub_23C5855B0(v6, v5 + *(v4 + 56), &qword_27E1FB650, &qword_23C87B020);
  *v5 = v2;
  *(v5 + 8) = v7;
  *(v5 + 16) = v3;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *(v5 + 64) = 0;
  *(v5 + 72) = 1;
  v8 = (v5 + *(v4 + 60));
  *v8 = 0;
  v8[1] = 0;
  v9 = v7;
  sub_23C585C34(v6, &qword_27E1FB650, &qword_23C87B020);
  v10 = *(v0 + 40);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v10);
  v12 = *(v10 - 8);
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  (*(v12 + 16))(v14, v11, v10);
  *(v0 + 80) = v4;
  *(v0 + 88) = &off_284F30100;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_23C60C610(v14, boxed_opaque_existential_1, &qword_27E1FB648, &qword_23C87B018);
  v16 = type metadata accessor for InstrumentationStreamsProviderBridge();
  v17 = objc_allocWithZone(v16);
  sub_23C5A9638(v0 + 56, v17 + OBJC_IVAR___ISStreamsProvider_provider);
  *(v0 + 96) = v17;
  *(v0 + 104) = v16;
  v18 = objc_msgSendSuper2((v0 + 96), sel_init);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v19 = *(v0 + 8);

  return v19(v18);
}

uint64_t sub_23C661860(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v7 = sub_23C66198C;
  }

  else
  {
    *(v4 + 192) = 0;
    *(v4 + 168) = a1;
    v7 = sub_23C66163C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23C66198C()
{
  v1 = v0[20];
  v2 = v0[16];

  sub_23C585C34(v2, &qword_27E1FB650, &qword_23C87B020);
  __swift_deallocate_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_23C661A1C(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 128) = a2;
  *(v3 + 120) = a3;
  *(v3 + 112) = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020) - 8) + 64) + 15;
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C661AC0, 0, 0);
}

uint64_t sub_23C661AC0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = sub_23C8709E4();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v1, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB648, &qword_23C87B018);
  *(v0 + 144) = v6;
  *(v0 + 40) = v6;
  *(v0 + 48) = &off_284F30100;
  *(v0 + 152) = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  v7 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow_];
  [v7 timeIntervalSinceReferenceDate];
  *(v0 + 160) = v8;

  type metadata accessor for UnifiedSourceStream();
  v9 = swift_allocObject();
  *(v0 + 168) = v9;
  *(v9 + 16) = 0;
  *(v9 + 24) = 256;
  v10 = sub_23C65E4B0();
  if (v10 == 2 || (v10 & 1) == 0)
  {
    v11 = swift_task_alloc();
    *(v0 + 184) = v11;
    *v11 = v0;
    v11[1] = sub_23C661EE4;

    return sub_23C65E988();
  }

  else
  {
    *(v0 + 200) = 1;
    *(v0 + 176) = 0;

    return MEMORY[0x2822009F8](sub_23C661CC0, 0, 0);
  }
}

uint64_t sub_23C661CC0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  *(v2 + 16) = *(v0 + 176);
  *(v2 + 24) = v1;
  *(v2 + 25) = 0;
  sub_23C5855B0(v6, v5 + *(v4 + 56), &qword_27E1FB650, &qword_23C87B020);
  *v5 = v2;
  *(v5 + 8) = v7;
  *(v5 + 16) = v3;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *(v5 + 64) = 0;
  *(v5 + 72) = 1;
  v8 = (v5 + *(v4 + 60));
  *v8 = 0;
  v8[1] = 0;
  v9 = v7;
  sub_23C585C34(v6, &qword_27E1FB650, &qword_23C87B020);
  v10 = *(v0 + 40);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v10);
  v12 = *(v10 - 8);
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  (*(v12 + 16))(v14, v11, v10);
  *(v0 + 80) = v4;
  *(v0 + 88) = &off_284F30100;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_23C60C610(v14, boxed_opaque_existential_1, &qword_27E1FB648, &qword_23C87B018);
  v16 = type metadata accessor for InstrumentationStreamsProviderBridge();
  v17 = objc_allocWithZone(v16);
  sub_23C5A9638(v0 + 56, v17 + OBJC_IVAR___ISStreamsProvider_provider);
  *(v0 + 96) = v17;
  *(v0 + 104) = v16;
  v18 = objc_msgSendSuper2((v0 + 96), sel_init);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v19 = *(v0 + 8);

  return v19(v18);
}

uint64_t sub_23C661EE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = sub_23C662010;
  }

  else
  {
    *(v4 + 200) = 0;
    *(v4 + 176) = a1;
    v7 = sub_23C661CC0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23C662010()
{
  v1 = v0[21];
  v2 = v0[17];

  sub_23C585C34(v2, &qword_27E1FB650, &qword_23C87B020);
  __swift_deallocate_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];
  v4 = v0[24];

  return v3();
}

uint64_t sub_23C6620C4()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23C662190;

  return sub_23C6603B8(v2, v3, v4, v5);
}

uint64_t sub_23C662190()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23C662284()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23C662780;

  return sub_23C664C44(v2, v3, v5);
}

uint64_t sub_23C662344(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23C662780;

  return sub_23C664D2C(a1, v4, v5, v7);
}

uint64_t sub_23C662410()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v5 = *(v0 + 4);
  v4 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23C662780;

  return sub_23C65FEEC(v2, v5, v3);
}

uint64_t sub_23C6624D4()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  v9 = *(v0 + 9);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_23C662780;

  return sub_23C65FB24(v2, v5, v6, v3, v4, v7, v8);
}

uint64_t sub_23C6625C0()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v8 = *(v0 + 7);
  v7 = *(v0 + 8);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_23C662780;

  return sub_23C65F788(v2, v5, v6, v8, v3, v4);
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x23EED8240);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_23C66278C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF80, &unk_23C87D2F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB668, &qword_23C87B0B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = *(v0 + OBJC_IVAR___ISStreamsProvider_provider + 24);
  v12 = *(v0 + OBJC_IVAR___ISStreamsProvider_provider + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR___ISStreamsProvider_provider), v11);
  (*(v12 + 128))(v11, v12);
  type metadata accessor for TimestampedEventBridge();
  sub_23C66298C();
  sub_23C870BC4();
  v13 = sub_23C870B84();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
  return v13;
}

unint64_t sub_23C66298C()
{
  result = qword_27E1FB678;
  if (!qword_27E1FB678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1FB668, &qword_23C87B0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FB678);
  }

  return result;
}

uint64_t sub_23C662C20(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB688, &qword_23C87B190);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *(v1 + OBJC_IVAR___ISStreamsProvider_provider + 24);
  v9 = *(v1 + OBJC_IVAR___ISStreamsProvider_provider + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR___ISStreamsProvider_provider), v8);
  (*(v9 + 136))(v8, v9, a1);
  v10 = sub_23C870BE4();
  (*(v4 + 8))(v7, v3);
  return v10;
}

uint64_t sub_23C662EA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB688, &qword_23C87B190);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - v4;
  v6 = (v0 + OBJC_IVAR___ISStreamsProvider_provider);
  v7 = *(v0 + OBJC_IVAR___ISStreamsProvider_provider + 24);
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_0(v6, v7);
  InstrumentationStreamsProviderProtocol.eventGraphs()(v7, v8);
  v9 = sub_23C870BE4();
  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t sub_23C6630E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB688, &qword_23C87B190);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - v4;
  v6 = (v0 + OBJC_IVAR___ISStreamsProvider_provider);
  v7 = *(v0 + OBJC_IVAR___ISStreamsProvider_provider + 24);
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_0(v6, v7);
  InstrumentationStreamsProviderProtocol.connectedComponentGroups(windowLength:)(v7, v8);
  v9 = sub_23C870BE4();
  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t sub_23C663344()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6C0, &qword_23C87B180);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - v4;
  v6 = *(v0 + OBJC_IVAR___ISStreamsProvider_provider + 24);
  v7 = *(v0 + OBJC_IVAR___ISStreamsProvider_provider + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR___ISStreamsProvider_provider), v6);
  (*(v7 + 144))(v6, v7);
  v8 = sub_23C870BE4();
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t sub_23C6635A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF90, qword_23C87D300);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - v4;
  v6 = *(v0 + OBJC_IVAR___ISStreamsProvider_provider + 24);
  v7 = *(v0 + OBJC_IVAR___ISStreamsProvider_provider + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR___ISStreamsProvider_provider), v6);
  (*(v7 + 152))(v6, v7);
  v8 = sub_23C870BE4();
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t sub_23C663804(uint64_t a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  return MEMORY[0x2822009F8](sub_23C66382C, 0, 0);
}

uint64_t sub_23C66382C()
{
  v1 = *(v0 + 2);
  v2 = (*(v0 + 4) + OBJC_IVAR___ISStreamsProvider_provider);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v4);
  v5 = *(v1 + OBJC_IVAR___ISComponentIdentifier_componentIdentifier);
  v6 = swift_task_alloc();
  *(v0 + 5) = v6;
  *v6 = v0;
  v6[1] = sub_23C66390C;
  v7 = v0[3];

  return InstrumentationStreamsProviderProtocol.searchForEventGraph(componentIdentifier:windowLength:)(v5, v4, v3, v7);
}

uint64_t sub_23C66390C(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_23C663BA4(void *a1, void *aBlock, void *a3, double a4)
{
  *(v4 + 32) = a3;
  *(v4 + 24) = a4;
  *(v4 + 16) = a1;
  *(v4 + 40) = _Block_copy(aBlock);
  v7 = a1;
  v8 = a3;

  return MEMORY[0x2822009F8](sub_23C663C38, 0, 0);
}

uint64_t sub_23C663C38()
{
  v1 = *(v0 + 2);
  v2 = (*(v0 + 4) + OBJC_IVAR___ISStreamsProvider_provider);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v4);
  v5 = *(v1 + OBJC_IVAR___ISComponentIdentifier_componentIdentifier);
  v6 = swift_task_alloc();
  *(v0 + 6) = v6;
  *v6 = v0;
  v6[1] = sub_23C663D18;
  v7 = v0[3];

  return InstrumentationStreamsProviderProtocol.searchForEventGraph(componentIdentifier:windowLength:)(v5, v4, v3, v7);
}

uint64_t sub_23C663D18(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_23C663ED8;
  }

  else
  {
    *(v4 + 64) = a1;
    v7 = sub_23C663E40;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23C663E40()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23C663ED8()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  v4 = sub_23C8709A4();
  (v2)[2](v2, 0, v4);

  _Block_release(v2);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23C663F84(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23C663FA4, 0, 0);
}

uint64_t sub_23C663FA4()
{
  v1 = v0[2];
  v2 = (v0[3] + OBJC_IVAR___ISStreamsProvider_provider);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v4);
  v5 = *(v1 + OBJC_IVAR___ISComponentIdentifier_componentIdentifier);
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_23C66407C;

  return InstrumentationStreamsProviderProtocol.searchForEventGraph(componentIdentifier:)(v5, v4, v3);
}

uint64_t sub_23C66407C(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_23C664304(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_23C664390, 0, 0);
}

uint64_t sub_23C664390()
{
  v1 = v0[2];
  v2 = (v0[3] + OBJC_IVAR___ISStreamsProvider_provider);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v4);
  v5 = *(v1 + OBJC_IVAR___ISComponentIdentifier_componentIdentifier);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_23C664468;

  return InstrumentationStreamsProviderProtocol.searchForEventGraph(componentIdentifier:)(v5, v4, v3);
}

uint64_t sub_23C664468(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_23C664628;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_23C664590;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23C664590()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23C664628()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = sub_23C8709A4();
  (v2)[2](v2, 0, v4);

  _Block_release(v2);
  v5 = *(v0 + 8);

  return v5();
}

id InstrumentationStreamsProviderBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InstrumentationStreamsProviderBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstrumentationStreamsProviderBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of InstrumentationStreamsProviderBridge.searchForEventGraph(componentIdentifier:windowLength:)(uint64_t a1, double a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x90);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23C58898C;
  v9.n128_f64[0] = a2;

  return v11(a1, v9);
}

uint64_t dispatch thunk of InstrumentationStreamsProviderBridge.searchForEventGraph(componentIdentifier:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x98);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23C6655CC;

  return v8(a1);
}

uint64_t sub_23C664B90()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23C662780;

  return sub_23C664304(v2, v3, v4);
}

uint64_t sub_23C664C44(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_23C662780;

  return v7();
}

uint64_t sub_23C664D2C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_23C662190;

  return v8();
}

uint64_t sub_23C664E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_23C6650D0(a3, v25 - v11);
  v13 = sub_23C8719A4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_23C665140(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_23C871994();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_23C871934();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_23C8717E4() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_23C665140(a3);

    return v23;
  }

LABEL_8:
  sub_23C665140(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23C6650D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C665140(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23C6651A8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C6652A0;

  return v7(a1);
}

uint64_t sub_23C6652A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23C665398(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23C662780;

  return sub_23C6651A8(a1, v5);
}

uint64_t sub_23C665450(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23C662190;

  return sub_23C6651A8(a1, v5);
}

uint64_t sub_23C665508()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v5 = *(v0 + 4);
  v4 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23C662190;

  return sub_23C663BA4(v2, v5, v4, v3);
}

uint64_t sub_23C6655D0@<X0>(char a1@<W1>, char a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X6>, int a6@<W7>, uint64_t a7@<X8>)
{
  LODWORD(v57) = a6;
  v56 = a5;
  v47 = a4;
  v48 = a3;
  v54 = a7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB628, &unk_23C87AF70);
  v53 = *(v55 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v52 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v46 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v46 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - v22;
  v24 = swift_allocObject();
  v50 = v24;
  *(v24 + 16) = MEMORY[0x277D84F90];
  v49 = v24 + 16;
  if (a1)
  {
    v25 = sub_23C870AE4();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  }

  else
  {
    sub_23C870A54();
    v26 = sub_23C870AE4();
    (*(*(v26 - 8) + 56))(v23, 0, 1, v26);
  }

  if (a2)
  {
    v27 = 1;
  }

  else
  {
    sub_23C870A54();
    v27 = 0;
  }

  v28 = sub_23C870AE4();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v21, v27, 1, v28);
  sub_23C60D7E8(v23, v18);
  v51 = v21;
  sub_23C60D7E8(v21, v15);
  v30 = v48;
  if (v47)
  {
    v30 = 0;
  }

  v48 = v30;
  v31 = v56;
  if (v57)
  {
    v31 = 0;
  }

  v57 = v31;
  v32 = *(v29 + 48);
  v33 = 0;
  if (v32(v18, 1, v28) != 1)
  {
    v33 = sub_23C870A84();
    (*(v29 + 8))(v18, v28);
  }

  if (v32(v15, 1, v28) == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_23C870A84();
    (*(v29 + 8))(v15, v28);
  }

  v35 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v36 = [v35 initWithStartDate:v33 endDate:v34 maxEvents:v48 lastN:v57 reversed:0];

  sub_23C8714C4();
  sub_23C666050();

  v37 = v36;
  sub_23C871544();

  __swift_project_boxed_opaque_existential_0(v58, v58[3]);
  v38 = v50;

  sub_23C871684();

  __swift_destroy_boxed_opaque_existential_0(v58);
  v39 = v51;
  swift_beginAccess();
  v40 = *(v38 + 16);
  v41 = type metadata accessor for AnteroEvent();

  v42 = v52;
  sub_23C8718B4();

  sub_23C60D8B0();
  v43 = v55;
  v44 = sub_23C870BA4();
  MEMORY[0x23EED64F0](v44, v41);

  (*(v53 + 8))(v42, v43);
  sub_23C585C34(v39, &unk_27E2054F0, &unk_23C874DF0);
  sub_23C585C34(v23, &unk_27E2054F0, &unk_23C874DF0);
}

uint64_t sub_23C665C90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9290, &unk_23C8734D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = sub_23C871414();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_23C871374();
  v14 = objc_allocWithZone(type metadata accessor for AnteroEvent());
  AnteroEvent.init(telemetryEvent:writeTimestamp:)(v11, v7);
  v15 = swift_beginAccess();
  MEMORY[0x23EED7170](v15);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v17 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23C8718D4();
  }

  sub_23C871904();
  return swift_endAccess();
}

uint64_t sub_23C665E6C()
{
  v1 = OBJC_IVAR____TtC26AIMLInstrumentationStreams15TelemetryStream_logger;
  v2 = sub_23C871654();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TelemetryStream()
{
  result = qword_27E1FBF98;
  if (!qword_27E1FBF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23C665F5C()
{
  result = sub_23C871654();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_23C666050()
{
  result = qword_27E1FBFA8;
  if (!qword_27E1FBFA8)
  {
    sub_23C8714C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBFA8);
  }

  return result;
}

uint64_t sub_23C6660B0(uint64_t a1)
{
  v3 = sub_23C870B74();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_23C871C34();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v49 = MEMORY[0x277D84F90];
    sub_23C592B60(0, v8 & ~(v8 >> 63), 0);
    v44 = v49;
    if (v43)
    {
      result = sub_23C871BE4();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = sub_23C871BB4();
      v10 = *(a1 + 36);
    }

    v46 = result;
    v47 = v10;
    v48 = v43 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v39 = v8;
      v40 = v42 + 32;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v37 = a1 + 56;
      v38 = v13;
      v35[1] = v1;
      v36 = a1 + 64;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v46;
        v17 = v47;
        v18 = v48;
        sub_23C648EFC(v46, v47, v48, a1);
        v20 = v19;
        sub_23C870E24();

        v21 = v44;
        v49 = v44;
        v23 = *(v44 + 16);
        v22 = *(v44 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_23C592B60(v22 > 1, v23 + 1, 1);
          v21 = v49;
        }

        *(v21 + 16) = v23 + 1;
        v24 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = v21;
        result = (*(v42 + 32))(v21 + v24 + *(v42 + 72) * v23, v7, v41);
        if (v43)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          if (sub_23C871C04())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBDA0, &qword_23C87BE78);
          v14 = sub_23C871A04();
          sub_23C871C84();
          result = v14(v45, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_23C606430(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v25 = 1 << *(a1 + 32);
          if (v16 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v16 >> 6;
          v27 = *(v37 + 8 * (v16 >> 6));
          if (((v27 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(a1 + 36) != v17)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v16 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_23C606430(v16, v17, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_33;
              }
            }

            result = sub_23C606430(v16, v17, 0);
          }

LABEL_33:
          v34 = *(a1 + 36);
          v46 = v25;
          v47 = v34;
          v48 = 0;
          v8 = v39;
          if (v12 == v39)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_23C6664A0(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v36 = a1;
  v7 = sub_23C870B74();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  swift_beginAccess();
  v15 = *(v3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v3 + 24);
  v38 = v17;
  *(v4 + 24) = 0x8000000000000000;
  v19 = sub_23C5FFB04(a2);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
LABEL_19:
    sub_23C8718D4();
    goto LABEL_10;
  }

  v23 = v18;
  if (v17[3] >= v22)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23C6439A0();
      v17 = v38;
    }
  }

  else
  {
    sub_23C63DCF8(v22, isUniquelyReferenced_nonNull_native);
    v17 = v38;
    v24 = sub_23C5FFB04(a2);
    if ((v23 & 1) != (v25 & 1))
    {
      result = sub_23C872064();
      __break(1u);
      return result;
    }

    v19 = v24;
  }

  *(v4 + 24) = v17;
  if ((v23 & 1) == 0)
  {
    (*(v8 + 16))(v14, a2, v7);
    sub_23C642888(v19, v14, MEMORY[0x277D84F90], v17);
  }

  v26 = (v17[7] + 8 * v19);

  MEMORY[0x23EED7170](v27);
  if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_19;
  }

LABEL_10:
  sub_23C871904();
  swift_endAccess();
  (*(v8 + 16))(v12, a2, v7);
  swift_beginAccess();
  v28 = *(v4 + 16);
  if (*(v28 + 16))
  {
    v29 = *(v4 + 16);

    v30 = sub_23C5FFB04(a2);
    v31 = 0.0;
    if (v32)
    {
      v31 = *(*(v28 + 56) + 8 * v30);
    }
  }

  else
  {
    v31 = 0.0;
  }

  if (v31 > a3)
  {
    a3 = v31;
  }

  swift_beginAccess();
  v33 = *(v4 + 16);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_23C5942CC(v12, v34, a3);
  (*(v8 + 8))(v12, v7);
  *(v4 + 16) = v37;
  return swift_endAccess();
}

uint64_t sub_23C6667C8(double a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_beginAccess();
  v7 = *(v3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 24);
  *(v4 + 24) = 0x8000000000000000;
  v10 = sub_23C5FFA08(a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (!v14)
  {
    v16 = v11;
    if (v9[3] < v15)
    {
      sub_23C63D158(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_23C5FFA08(a3);
      if ((v16 & 1) == (v17 & 1))
      {
        goto LABEL_6;
      }

      sub_23C870E34();
      v10 = sub_23C872064();
      __break(1u);
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = v10;
      sub_23C64329C();
      v10 = v30;
      *(v4 + 24) = v9;
      if (v16)
      {
LABEL_8:
        v20 = (v9[7] + 8 * v10);

        MEMORY[0x23EED7170](v21);
        if (*((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }

LABEL_7:
      v18 = v10;
      sub_23C64BCC4(v10, a3, MEMORY[0x277D84F90], v9);
      v19 = a3;
      v10 = v18;
      goto LABEL_8;
    }

LABEL_6:
    *(v4 + 24) = v9;
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  __break(1u);
LABEL_18:
  sub_23C8718D4();
LABEL_9:
  sub_23C871904();
  swift_endAccess();
  swift_beginAccess();
  v22 = *(v4 + 16);
  if (*(v22 + 16))
  {
    v23 = *(v4 + 16);

    v24 = sub_23C5FFA08(a3);
    v25 = 0.0;
    if (v26)
    {
      v25 = *(*(v22 + 56) + 8 * v24);
    }
  }

  else
  {
    v25 = 0.0;
  }

  if (v25 > a1)
  {
    a1 = v25;
  }

  swift_beginAccess();
  v27 = *(v4 + 16);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_23C593F08(a3, v28, a1);
  *(v4 + 16) = v31;
  return swift_endAccess();
}

uint64_t sub_23C666A00(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v7 = type metadata accessor for EventTypeIdPair();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  swift_beginAccess();
  v14 = *(v3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v3 + 24);
  v37 = v16;
  *(v4 + 24) = 0x8000000000000000;
  v18 = sub_23C5FFA4C(a3);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_19;
  }

  v22 = v17;
  if (v16[3] >= v21)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + 24) = v16;
      if (v17)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_23C6434EC();
      v16 = v37;
      *(v4 + 24) = v37;
      if (v22)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_23C60C5AC(a3, v13);
    sub_23C642830(v18, v13, MEMORY[0x277D84F90], v16);
    goto LABEL_9;
  }

  sub_23C63D550(v21, isUniquelyReferenced_nonNull_native);
  v16 = v37;
  v23 = sub_23C5FFA4C(a3);
  if ((v22 & 1) != (v24 & 1))
  {
    result = sub_23C872064();
    __break(1u);
    return result;
  }

  v18 = v23;
  *(v4 + 24) = v16;
  if ((v22 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v25 = (v16[7] + 8 * v18);

  MEMORY[0x23EED7170](v26);
  if (*((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_19:
    sub_23C8718D4();
  }

  sub_23C871904();
  swift_endAccess();
  sub_23C60C5AC(a3, v11);
  swift_beginAccess();
  v27 = *(v4 + 16);
  if (*(v27 + 16))
  {
    v28 = *(v4 + 16);

    v29 = sub_23C5FFA4C(a3);
    v30 = 0.0;
    if (v31)
    {
      v30 = *(*(v27 + 56) + 8 * v29);
    }
  }

  else
  {
    v30 = 0.0;
  }

  if (v30 > a1)
  {
    a1 = v30;
  }

  swift_beginAccess();
  v32 = *(v4 + 16);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_23C594158(v11, v33, a1);
  sub_23C668C40(v11);
  *(v4 + 16) = v36;
  return swift_endAccess();
}

uint64_t sub_23C666CD0(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + 24);
  *(v5 + 24) = 0x8000000000000000;
  v13 = sub_23C5FF898(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (!v17)
  {
    v19 = v14;
    if (v12[3] < v18)
    {
      sub_23C63EFBC(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_23C5FF898(a2, a3);
      if ((v19 & 1) == (v20 & 1))
      {
        goto LABEL_6;
      }

      v13 = sub_23C872064();
      __break(1u);
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = v13;
      sub_23C644420();
      v13 = v32;
      *(v5 + 24) = v12;
      if (v19)
      {
LABEL_8:
        v22 = (v12[7] + 8 * v13);
        v23 = a1;
        MEMORY[0x23EED7170]();
        if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }

LABEL_7:
      v21 = v13;
      sub_23C64BCC8(v13, a2, a3, MEMORY[0x277D84F90], v12);

      v13 = v21;
      goto LABEL_8;
    }

LABEL_6:
    *(v5 + 24) = v12;
    if (v19)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  __break(1u);
LABEL_18:
  sub_23C8718D4();
LABEL_9:
  sub_23C871904();
  swift_endAccess();
  swift_beginAccess();
  v24 = *(v5 + 16);
  if (*(v24 + 16))
  {
    v25 = *(v5 + 16);

    v26 = sub_23C5FF898(a2, a3);
    v27 = 0.0;
    if (v28)
    {
      v27 = *(*(v24 + 56) + 8 * v26);
    }
  }

  else
  {
    v27 = 0.0;
  }

  if (v27 > a4)
  {
    a4 = v27;
  }

  swift_beginAccess();
  v29 = *(v5 + 16);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v5 + 16);
  *(v5 + 16) = 0x8000000000000000;
  sub_23C594770(a2, a3, v30, a4);
  *(v5 + 16) = v33;
  return swift_endAccess();
}

void sub_23C666F2C(unint64_t a1, void *a2, double a3)
{
  v5 = v3;
  if (a1 >> 62)
  {
    v8 = sub_23C871C34();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v3[6];
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3[6] = v11;
  swift_beginAccess();
  v12 = v3[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v3[3];
  v43[0] = v14;
  v5[3] = 0x8000000000000000;
  v8 = sub_23C5FFA08(a2);
  v16 = v14[2];
  v17 = (v15 & 1) == 0;
  v10 = __OFADD__(v16, v17);
  v18 = v16 + v17;
  if (v10)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = v15;
  if (v14[3] < v18)
  {
    sub_23C63D158(v18, isUniquelyReferenced_nonNull_native);
    v14 = v43[0];
    v8 = sub_23C5FFA08(a2);
    if ((v4 & 1) == (v19 & 1))
    {
      goto LABEL_9;
    }

    sub_23C870E34();
    v8 = sub_23C872064();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_9:
    v5[3] = v14;
    if (v4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_24:
  v40 = v8;
  sub_23C64329C();
  v8 = v40;
  v14 = v43[0];
  v5[3] = v43[0];
  if ((v4 & 1) == 0)
  {
LABEL_10:
    v20 = v8;
    sub_23C64BCC4(v8, a2, MEMORY[0x277D84F90], v14);
    v21 = a2;
    v8 = v20;
  }

LABEL_11:
  v22 = v14[7] + 8 * v8;

  sub_23C6360C8(v23);
  swift_endAccess();
  swift_beginAccess();
  v24 = v5[5];

  v25 = sub_23C6323B8(a2, v24);

  if (v25)
  {
  }

  else
  {
    v26 = v5[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23C874E20;
    *(inited + 32) = a2;
    v28 = a2;

    v29 = MEMORY[0x277D84FA0];
    do
    {
      while (1)
      {

        v29 = sub_23C64913C(v30, v29);

        v43[0] = v29;

        v31 = sub_23C649230(inited, v26);

        inited = sub_23C6495EC(v31, v43);

        if (inited >> 62)
        {
          break;
        }

        if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }
      }
    }

    while (sub_23C871C34());
LABEL_18:

    sub_23C5916F4(v29);
    v33 = v32;
    v43[0] = v32;
    MEMORY[0x28223BE20](v32);
    v41[2] = v5;
    v41[3] = v43;
    sub_23C63246C(sub_23C668C9C, v41, v29);
  }

  v34 = v5[5];

  v35 = sub_23C6323B8(a2, v34);
  if (v35)
  {
    v36 = v35;

    swift_beginAccess();
    v37 = v36;
    v38 = v5[2];
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v42 = v5[2];
    v5[2] = 0x8000000000000000;
    sub_23C593F08(v37, v39, a3);

    v5[2] = v42;
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23C6672DC()
{
  v0 = sub_23C871654();
  __swift_allocate_value_buffer(v0, qword_27E1FBFB0);
  __swift_project_value_buffer(v0, qword_27E1FBFB0);
  sub_23C588EAC();
  sub_23C871B54();
  return sub_23C871664();
}

void sub_23C6673A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_23C6675A4(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_23C667514(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_23C6673A8(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_23C6675A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBEA0, &qword_23C87BFE8);
  result = sub_23C871CF4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_23C871B24();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23C667798(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBEC0, &qword_23C87C020);
  result = sub_23C871CF4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    result = sub_23C8720E4();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23C667984(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v182 = a4;
  v187 = a3;
  v207 = a2;
  v213[3] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v183 = &v176 - v7;
  v181 = type metadata accessor for EventTypeIdPair();
  v8 = *(*(v181 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v181);
  v180 = (&v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v179 = (&v176 - v11);
  v191 = sub_23C870B74();
  v12 = *(v191 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v191);
  v16 = &v176 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v186 = &v176 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBFC8, &qword_23C87D420);
  inited = swift_initStackObject();
  v19 = MEMORY[0x277D84F90];
  *(inited + 16) = sub_23C595CB8(MEMORY[0x277D84F90]);
  v20 = inited + 16;
  v21 = sub_23C595DA8(v19);
  v188 = inited;
  *(inited + 24) = v21;
  v209 = (inited + 24);
  if (a1 >> 62)
  {
    goto LABEL_102;
  }

  v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v204 = v20;
  if (v22)
  {
    while (1)
    {
      v200 = a1 & 0xC000000000000001;
      v189 = a1 + 32;
      v190 = a1 & 0xFFFFFFFFFFFFFF8;
      v178 = (v12 + 48);
      v176 = (v12 + 32);
      v185 = (v12 + 8);
      v12 = 0;
      v203 = xmmword_23C874E20;
      v23 = MEMORY[0x277D84FA0];
      *(&v24 + 1) = 5;
      v197 = xmmword_23C87AC80;
      *&v24 = 136315906;
      v184 = v24;
      v177 = v16;
      v196 = a1;
      v199 = v22;
      while (1)
      {
        if (v200)
        {
          v26 = MEMORY[0x23EED7610](v12, a1);
          v27 = __OFADD__(v12++, 1);
          if (v27)
          {
            goto LABEL_100;
          }
        }

        else
        {
          if (v12 >= *(v190 + 16))
          {
            goto LABEL_101;
          }

          v26 = *(v189 + 8 * v12);

          v27 = __OFADD__(v12++, 1);
          if (v27)
          {
            goto LABEL_100;
          }
        }

        v208 = v12;
        v28 = *(v26 + 16);
        v29 = *(v26 + 24);
        v30 = OrderedEvent.linkedComponentIdentifiers()();
        v206 = v31;

        if (v30)
        {
          break;
        }

        v70 = *(v26 + 24);
        v71 = sub_23C870CA4();

        if (v71)
        {
          objc_opt_self();
          v72 = swift_dynamicCastObjCClass();
          if (v72 && (v73 = [v72 requestId]) != 0)
          {
            v74 = v73;
            objc_allocWithZone(sub_23C870E34());
            v16 = v74;
            v75 = sub_23C870E04();
            if (v75)
            {
              v76 = v75;
              sub_23C63534C(v26, v75, v28);

              goto LABEL_6;
            }
          }

          else
          {
            v16 = v71;
          }
        }

        v118 = *(v26 + 24);
        v119 = sub_23C870CA4();
        if (!v119)
        {
          goto LABEL_140;
        }

        v120 = v119;
        ObjCClassFromObject = swift_getObjCClassFromObject();

        v122 = [ObjCClassFromObject joinability];
        if (v122 > 2)
        {
          v126 = v191;
          if ((v122 - 3) > 1)
          {
            goto LABEL_98;
          }

          v127 = *(v26 + 24);
          v128 = sub_23C870CF4();
          if (!v128)
          {
            goto LABEL_141;
          }

          v129 = v128;
          v16 = v186;
          sub_23C870D94();

          sub_23C6664A0(v26, v16, v28);

          (*v185)(v16, v126);
        }

        else
        {
          if (v122 == 1)
          {
            v130 = *(v26 + 24);
            v131 = sub_23C870CA4();
            if (!v131)
            {
              goto LABEL_143;
            }

            v132 = v131;
            v16 = [v131 getComponentId];

            if (!v16)
            {
              goto LABEL_91;
            }

            v205 = v26;
            v133 = v183;
            sub_23C871AB4();
            v134 = v191;
            if ((*v178)(v133, 1, v191) == 1)
            {

              sub_23C5FE4E4(v133);

              goto LABEL_6;
            }

            v135 = v177;
            v206 = *v176;
            v206(v177, v133, v134);
            result = sub_23C870CA4();
            if (!result)
            {
              __break(1u);
              return result;
            }

            v137 = result;

            ObjectType = swift_getObjectType();
            v139 = v180;
            v206(v180 + *(v181 + 20), v135, v134);
            *v139 = ObjectType;
            v140 = v179;
            sub_23C668BDC(v139, v179);
            v16 = v205;
            sub_23C666A00(v28, v205, v140);

            sub_23C668C40(v140);
            goto LABEL_74;
          }

          if (v122 != 2)
          {
            goto LABEL_98;
          }

          v123 = *(v26 + 24);
          v124 = sub_23C870D04();
          if (!v124)
          {
LABEL_91:

            goto LABEL_6;
          }

          v125 = v124;
          sub_23C6667C8(v28, v26, v124);
        }

LABEL_6:
        v12 = v208;
        if (v208 == v199)
        {
          goto LABEL_103;
        }
      }

      v205 = v26;
      v32 = *(v207 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
      v33 = swift_initStackObject();
      *(v33 + 16) = v203;
      *(v33 + 32) = v30;

      v198 = v30;
      v34 = v30;
      v35 = v23;
      do
      {
        while (1)
        {

          v35 = sub_23C64913C(v36, v35);

          v213[0] = v35;

          v37 = sub_23C649230(v33, v32);

          v33 = sub_23C6495EC(v37, v213);

          if (v33 >> 62)
          {
            break;
          }

          if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }
        }
      }

      while (sub_23C871C34());
LABEL_19:

      v38 = *(v207 + 32);
      v39 = swift_initStackObject();
      *(v39 + 16) = v203;
      v40 = v206;
      *(v39 + 32) = v206;

      v16 = v40;
      v41 = v23;
      do
      {
        while (1)
        {

          v41 = sub_23C64913C(v42, v41);

          v213[0] = v41;

          v43 = sub_23C649230(v39, v38);

          v39 = sub_23C6495EC(v43, v213);

          if (v39 >> 62)
          {
            break;
          }

          if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }
        }
      }

      while (sub_23C871C34());
LABEL_24:

      sub_23C631F00(v41, v35);
      v45 = v44;
      v46 = swift_initStackObject();
      *(v46 + 16) = v197;
      *(v46 + 32) = v34;
      *(v46 + 40) = v16;
      v47 = v34;
      v48 = v16;
      v49 = sub_23C64913C(v46, v45);
      swift_setDeallocating();
      v50 = *(v46 + 16);
      v51 = swift_arrayDestroy();
      v201 = v47;
      v202 = v48;
      if ((v49 & 0xC000000000000001) != 0)
      {
        break;
      }

      v77 = *(v49 + 32);
      v78 = v77 & 0x3F;
      v12 = 1;
      v79 = (1 << v77) + 63;
      v80 = v79 >> 6;
      if (v78 <= 0xD)
      {
        goto LABEL_49;
      }

      v16 = 8 * (v79 >> 6);

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v141 = swift_slowAlloc();

        v55 = sub_23C667514(v141, v80, v49, sub_23C667374);
        swift_bridgeObjectRelease_n();
        MEMORY[0x23EED8240](v141, -1, -1);
        v20 = v204;
        v89 = v205;
        v23 = MEMORY[0x277D84FA0];
LABEL_68:
        v93 = sub_23C6660B0(v55);

        if (*(v93 + 16) <= 1uLL)
        {

          v25 = v201;
          v16 = v202;
          sub_23C6361F0(v89, v25, v16, v28);
        }

        else
        {
          if (qword_27E1F8350 != -1)
          {
            swift_once();
          }

          v94 = sub_23C871654();
          __swift_project_value_buffer(v94, qword_27E1FBFB0);
          v95 = v201;
          v96 = v202;
          v16 = v95;
          v97 = v96;

          v98 = sub_23C871634();
          v99 = sub_23C871AD4();
          if (os_log_type_enabled(v98, v99))
          {
            LODWORD(v195) = v99;
            v202 = v98;
            v100 = swift_slowAlloc();
            v101 = v89;
            v102 = swift_slowAlloc();
            v201 = swift_slowAlloc();
            v213[0] = v201;
            *v100 = v184;
            v103 = *(v101 + 24);
            v104 = sub_23C870CA4();

            if (!v104)
            {
              goto LABEL_142;
            }

            v105 = [v104 qualifiedMessageName];

            v106 = sub_23C871784();
            v108 = v107;

            v109 = sub_23C63C388(v106, v108, v213);

            *(v100 + 4) = v109;
            *(v100 + 12) = 2112;
            *(v100 + 14) = v16;
            *(v100 + 22) = 2112;
            *(v100 + 24) = v97;
            v110 = v206;
            *v102 = v198;
            v102[1] = v110;
            *(v100 + 32) = 2080;
            v111 = v16;
            v112 = v97;
            v113 = MEMORY[0x23EED71B0](v93, v191);
            v115 = v114;

            v116 = sub_23C63C388(v113, v115, v213);

            *(v100 + 34) = v116;
            v16 = v202;
            _os_log_impl(&dword_23C56D000, v202, v195, "Not ingesting linking event because it joins two ORCHESTRATOR Component Identifiers:\n%s\nwith links from %@\nto %@ joins into\nthese ORCH IDs: %s", v100, 0x2Au);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB640, &unk_23C87AF80);
            swift_arrayDestroy();
            MEMORY[0x23EED8240](v102, -1, -1);
            v117 = v201;
            swift_arrayDestroy();
            MEMORY[0x23EED8240](v117, -1, -1);
            MEMORY[0x23EED8240](v100, -1, -1);

            v20 = v204;
            a1 = v196;
LABEL_74:
            v23 = MEMORY[0x277D84FA0];
            goto LABEL_6;
          }

          swift_bridgeObjectRelease_n();
        }

        a1 = v196;
        goto LABEL_6;
      }

      v12 = 1;
LABEL_49:
      v192 = &v176;
      v193 = v80;
      MEMORY[0x28223BE20](v51);
      v194 = &v176 - ((v81 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v194, v81);
      v82 = 0;
      v20 = 0;
      a1 = v49 + 56;
      v83 = 1 << *(v49 + 32);
      if (v83 < 64)
      {
        v84 = ~(-1 << v83);
      }

      else
      {
        v84 = -1;
      }

      v85 = v84 & *(v49 + 56);
      v86 = (v83 + 63) >> 6;
LABEL_53:
      v195 = v82;
LABEL_54:
      if (v85)
      {
        v87 = __clz(__rbit64(v85));
        v85 &= v85 - 1;
        goto LABEL_61;
      }

      v88 = v20;
      v23 = MEMORY[0x277D84FA0];
      v89 = v205;
      while (1)
      {
        v20 = v88 + 1;
        if (__OFADD__(v88, 1))
        {
          break;
        }

        if (v20 >= v86)
        {
          v55 = sub_23C6675A4(v194, v193, v195, v49);
          v20 = v204;
          goto LABEL_68;
        }

        v90 = *(a1 + 8 * v20);
        ++v88;
        if (v90)
        {
          v87 = __clz(__rbit64(v90));
          v85 = (v90 - 1) & v90;
LABEL_61:
          v16 = v87 | (v20 << 6);
          v12 = *(*(v49 + 48) + 8 * v16);
          v91 = sub_23C870DF4();

          if (v91 == 1)
          {
            v92 = v195;
            *&v194[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
            v27 = __OFADD__(v92, 1);
            v82 = v92 + 1;
            if (!v27)
            {
              goto LABEL_53;
            }

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
          }

          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      v22 = sub_23C871C34();
      v204 = v20;
      if (!v22)
      {
        goto LABEL_103;
      }
    }

    v23 = MEMORY[0x277D84FA0];
    v213[0] = MEMORY[0x277D84FA0];
    sub_23C871BF4();
    v52 = sub_23C871C64();
    v20 = v204;
    if (v52)
    {
      v53 = v52;
      sub_23C870E34();
      v54 = v53;
      v55 = v23;
LABEL_29:
      v211 = v54;
      swift_dynamicCast();
      v56 = sub_23C870DF4();
      v57 = v212;
      if (v56 != 1)
      {

        goto LABEL_28;
      }

      v58 = *(v55 + 16);
      if (*(v55 + 24) <= v58)
      {
        sub_23C64EF1C(v58 + 1);
      }

      v55 = v213[0];
      v59 = *(v213[0] + 40);
      v60 = sub_23C871B24();
      v61 = v55 + 56;
      v62 = -1 << *(v55 + 32);
      v63 = v60 & ~v62;
      v64 = v63 >> 6;
      if (((-1 << v63) & ~*(v55 + 56 + 8 * (v63 >> 6))) != 0)
      {
        v65 = __clz(__rbit64((-1 << v63) & ~*(v55 + 56 + 8 * (v63 >> 6)))) | v63 & 0x7FFFFFFFFFFFFFC0;
        goto LABEL_42;
      }

      v66 = 0;
      v67 = (63 - v62) >> 6;
      while (++v64 != v67 || (v66 & 1) == 0)
      {
        v68 = v64 == v67;
        if (v64 == v67)
        {
          v64 = 0;
        }

        v66 |= v68;
        v69 = *(v61 + 8 * v64);
        if (v69 != -1)
        {
          v65 = __clz(__rbit64(~v69)) + (v64 << 6);
LABEL_42:
          *(v61 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
          *(*(v55 + 48) + 8 * v65) = v57;
          ++*(v55 + 16);
LABEL_28:
          v54 = sub_23C871C64();
          if (!v54)
          {
            goto LABEL_67;
          }

          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_98:

      goto LABEL_137;
    }

    v55 = v23;
LABEL_67:

    v89 = v205;
    goto LABEL_68;
  }

LABEL_103:
  v142 = sub_23C608CF4();
  v143 = v142;
  if (v142 >> 62)
  {
    v144 = sub_23C871C34();
    if (!v144)
    {
      goto LABEL_136;
    }
  }

  else
  {
    v144 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v144)
    {
      goto LABEL_136;
    }
  }

  if (v144 < 1)
  {
    __break(1u);
    goto LABEL_139;
  }

  v145 = v143 & 0xC000000000000001;
  swift_beginAccess();
  swift_beginAccess();
  v146 = 0;
  v205 = v143 & 0xC000000000000001;
  do
  {
    if (v145)
    {
      v147 = MEMORY[0x23EED7610](v146, v143);
    }

    else
    {
      v147 = *(v143 + 8 * v146 + 32);
    }

    v148 = v147;
    v149 = *v209;
    if (*(*v209 + 16))
    {
      v150 = *v209;

      v151 = sub_23C5FFA08(v148);
      if (v152)
      {
        v208 = *(*(v149 + 56) + 8 * v151);
      }

      else
      {
        v208 = 0;
      }
    }

    else
    {
      v208 = 0;
    }

    v153 = *v20;
    if (*(*v20 + 16))
    {
      v154 = *v20;

      v155 = sub_23C5FFA08(v148);
      v157 = 0.0;
      if (v156)
      {
        v157 = *(*(v153 + 56) + 8 * v155);
      }

      LODWORD(v206) = v156 ^ 1;
    }

    else
    {
      LODWORD(v206) = 1;
      v157 = 0.0;
    }

    swift_beginAccess();
    v158 = sub_23C5FFA08(v148);
    if (v159)
    {
      v160 = v158;
      v161 = v144;
      v162 = v143;
      v163 = v209;
      v164 = *v209;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v166 = *v163;
      v210 = *v163;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_23C64329C();
        v166 = v210;
      }

      v167 = *(*(v166 + 56) + 8 * v160);
      sub_23C64157C(v160, v166);

      *v163 = v166;
      v143 = v162;
      v144 = v161;
      v20 = v204;
      v145 = v205;
    }

    swift_endAccess();
    swift_beginAccess();
    v168 = sub_23C5FFA08(v148);
    v169 = v208;
    if (v170)
    {
      v171 = v168;
      v172 = *v20;
      v173 = swift_isUniquelyReferenced_nonNull_native();
      v174 = *v20;
      v210 = *v20;
      if (!v173)
      {
        sub_23C642FE0();
        v174 = v210;
      }

      sub_23C6413F0(v171, v174);
      *v20 = v174;
    }

    swift_endAccess();
    if (v169)
    {
      if ((v206 & 1) == 0)
      {
        sub_23C666F2C(v169, v148, v157);
      }
    }

    else
    {
    }

    ++v146;
  }

  while (v144 != v146);
LABEL_136:

LABEL_137:
  v175 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C668BDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventTypeIdPair();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C668C40(uint64_t a1)
{
  v2 = type metadata accessor for EventTypeIdPair();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TimestampedOrderedEvent.json(humanReadable:)(Swift::Bool humanReadable)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23C8717C4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (humanReadable)
  {
    v8 = objc_opt_self();
    TimestampedOrderedEvent.dictionaryRepresentation()();
    v9 = sub_23C8716A4();

    v24[0] = 0;
    v10 = [v8 dataWithJSONObject:v9 options:2 error:v24];

    v11 = v24[0];
    if (!v10)
    {
      v21 = v11;
      sub_23C8709B4();

      swift_willThrow();
      goto LABEL_8;
    }

    v12 = sub_23C870A34();
    v14 = v13;
  }

  else
  {
    v15 = sub_23C870964();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v10 = sub_23C870954();
    v24[0] = v1;
    type metadata accessor for TimestampedOrderedEvent();
    sub_23C668EC4();
    v12 = sub_23C870944();
    v14 = v18;

    if (v2)
    {
      goto LABEL_8;
    }
  }

  sub_23C8717B4();
  v19 = sub_23C8717A4();
  if (!v20)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v19;
  v10 = v20;
  sub_23C595090(v12, v14);
LABEL_8:
  v22 = *MEMORY[0x277D85DE8];
  v19 = v7;
  v20 = v10;
LABEL_10:
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

unint64_t sub_23C668EC4()
{
  result = qword_27E1F98B8;
  if (!qword_27E1F98B8)
  {
    type metadata accessor for TimestampedOrderedEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F98B8);
  }

  return result;
}

uint64_t sub_23C668F94()
{
  v0 = sub_23C871654();
  __swift_allocate_value_buffer(v0, qword_2814FAED8);
  __swift_project_value_buffer(v0, qword_2814FAED8);
  sub_23C588EAC();
  sub_23C871B54();
  return sub_23C871664();
}

uint64_t TimestampedOrderedEvent.__allocating_init(timestamp:orderedEvent:)(uint64_t a1, double a2)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a1;
  return result;
}

uint64_t TimestampedOrderedEvent.init(timestamp:orderedEvent:)(uint64_t a1, double a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return v2;
}

NSObject *TimestampedOrderedEvent.init(biomeStoreEvent:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v89 = &v80 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v80 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v80 - v14;
  v16 = sub_23C870B74();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v84 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v80 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v80 - v24;
  v26 = [a1 eventBody];
  if (!v26)
  {
    v27 = a1;
LABEL_12:

    type metadata accessor for TimestampedOrderedEvent();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v27 = v26;
  v87 = v13;
  v88 = v8;
  v85 = v17;
  v86 = v16;
  v28 = [v26 anyEventType];
  v29 = [v27 eventData];
  if (v29)
  {
    v30 = v29;
    v31 = sub_23C870A34();
    v32 = a1;
    v34 = v33;

    v35 = sub_23C870A14();
    v36 = v34;
    a1 = v32;
    sub_23C595090(v31, v36);
  }

  else
  {
    v35 = 0;
  }

  v37 = [objc_allocWithZone(MEMORY[0x277D5A790]) initWithAnyEventType:v28 payload:v35];

  v38 = [v37 unwrap];
  if (!v38)
  {
LABEL_11:

    goto LABEL_12;
  }

  v83 = v38;
  [a1 timestamp];
  v2[2].isa = v39;
  v40 = [v27 logicalTimestamp];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 timestampInNanoseconds];
    v43 = v88;
    if (v42 <= 0)
    {
      if (qword_27E1F8358 != -1)
      {
        swift_once();
      }

      v49 = sub_23C871654();
      __swift_project_value_buffer(v49, qword_2814FAED8);
      v82 = v41;
      v50 = sub_23C871634();
      v81 = sub_23C871AD4();
      if (os_log_type_enabled(v50, v81))
      {
        v51 = swift_slowAlloc();
        v80 = a1;
        v52 = v51;
        *v51 = 134217984;
        v53 = v82;
        *(v51 + 4) = [v82 timestampInNanoseconds];

        _os_log_impl(&dword_23C56D000, v50, v81, "Failed to convert timestamp in BMSiriSELFProcessedEvent: %lld", v52, 0xCu);
        v54 = v52;
        a1 = v80;
        MEMORY[0x23EED8240](v54, -1, -1);
      }

      else
      {

        v50 = v82;
      }
    }

    else if (([v41 timestampInNanoseconds] & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }

    v55 = [v41 clockIdentifier];
    if (v55)
    {
      v56 = v55;
      sub_23C870B54();

      v82 = v2;
      v48 = v85;
      v57 = *(v85 + 32);
      v58 = v25;
      v46 = v86;
      v57(v15, v58, v86);
      (*(v48 + 56))(v15, 0, 1, v46);
      v57(v23, v15, v46);
      v43 = v88;
      v2 = v82;
    }

    else
    {
      v48 = v85;
      v46 = v86;
      (*(v85 + 56))(v15, 1, 1, v86);
      sub_23C870B64();
      if ((*(v48 + 48))(v15, 1, v46) != 1)
      {
        sub_23C5FE4E4(v15);
      }
    }

    v59 = objc_allocWithZone(sub_23C870DE4());
    v45 = sub_23C870DB4();

    v47 = v87;
  }

  else
  {
    sub_23C870B64();
    v44 = objc_allocWithZone(sub_23C870DE4());
    v45 = sub_23C870DB4();
    v46 = v86;
    v47 = v87;
    v48 = v85;
    v43 = v88;
  }

  v60 = v45;
  v61 = [v27 messageUuid];
  v62 = v89;
  if (v61)
  {
    v63 = v61;
    sub_23C870B54();

    v64 = 0;
  }

  else
  {
    v64 = 1;
  }

  (*(v48 + 56))(v62, v64, 1, v46);
  sub_23C5AD03C(v62, v47);
  sub_23C5ACF58(v47, v43);
  v65 = objc_allocWithZone(sub_23C870D74());
  v66 = v83;
  v2[3].isa = sub_23C870CE4();
  v67 = [v27 clusterRepresentativeId];
  if (v67)
  {
    v68 = v67;
    [v67 componentName];
    v69 = [v68 uuid];
    if (v69)
    {
      v70 = v84;
      v71 = v69;
      sub_23C870B54();

      v72 = a1;
      v73 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v74 = sub_23C870B24();
      [v73 initWithNSUUID_];

      v75 = objc_allocWithZone(sub_23C870E34());
      a1 = v72;
      v76 = v87;
      sub_23C870E04();

      v77 = v70;
      v47 = v76;
      (*(v85 + 8))(v77, v86);
    }

    else
    {
    }
  }

  isa = v2[3].isa;
  sub_23C870D64();

  sub_23C5FE4E4(v47);
  return v2;
}

uint64_t TimestampedOrderedEvent.init(rawEvent:)(void *a1)
{
  v2 = v1;
  v4 = sub_23C870C54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 timestamp];
  *(v1 + 16) = v9;
  v10 = [a1 eventBody];
  if (!v10)
  {
    if (qword_27E1F8358 != -1)
    {
      swift_once();
    }

    v15 = sub_23C871654();
    __swift_project_value_buffer(v15, qword_2814FAED8);
    v16 = sub_23C871634();
    v17 = sub_23C871AD4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_23C56D000, v16, v17, "Empty message body", v18, 2u);
      MEMORY[0x23EED8240](v18, -1, -1);
    }

    goto LABEL_26;
  }

  v11 = v10;
  sub_23C870C44();

  if ((*(v5 + 88))(v8, v4) != *MEMORY[0x277D552A8])
  {
    if (qword_27E1F8358 != -1)
    {
      swift_once();
    }

    v19 = sub_23C871654();
    __swift_project_value_buffer(v19, qword_2814FAED8);
    v20 = sub_23C871634();
    v21 = sub_23C871AD4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_23C56D000, v20, v21, "Unknown event body type", v22, 2u);
      MEMORY[0x23EED8240](v22, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    goto LABEL_26;
  }

  (*(v5 + 96))(v8, v4);
  v12 = *v8;
  if ([*v8 anyEventType] != 6)
  {
    if (qword_27E1F8358 != -1)
    {
      swift_once();
    }

    v23 = sub_23C871654();
    __swift_project_value_buffer(v23, qword_2814FAED8);
    v24 = sub_23C871634();
    v25 = sub_23C871AD4();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_25;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Not an ordered any event, skipping";
    goto LABEL_24;
  }

  sub_23C870D74();
  v12 = v12;
  v13 = sub_23C870C94();
  if (!v13)
  {
    if (qword_27E1F8358 != -1)
    {
      swift_once();
    }

    v28 = sub_23C871654();
    __swift_project_value_buffer(v28, qword_2814FAED8);
    v24 = sub_23C871634();
    v25 = sub_23C871AD4();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_25;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Failed to convert ordered any event to ordered event";
LABEL_24:
    _os_log_impl(&dword_23C56D000, v24, v25, v27, v26, 2u);
    MEMORY[0x23EED8240](v26, -1, -1);
LABEL_25:

LABEL_26:
    type metadata accessor for TimestampedOrderedEvent();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v14 = v13;

  *(v2 + 24) = v14;
  return v2;
}

uint64_t sub_23C669CA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x456465726564726FLL;
  }

  else
  {
    v4 = 0x6D617473656D6974;
  }

  if (v3)
  {
    v5 = 0xE900000000000070;
  }

  else
  {
    v5 = 0xEC000000746E6576;
  }

  if (*a2)
  {
    v6 = 0x456465726564726FLL;
  }

  else
  {
    v6 = 0x6D617473656D6974;
  }

  if (*a2)
  {
    v7 = 0xEC000000746E6576;
  }

  else
  {
    v7 = 0xE900000000000070;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23C872014();
  }

  return v9 & 1;
}

uint64_t sub_23C669D58()
{
  v1 = *v0;
  sub_23C8720F4();
  sub_23C871804();

  return sub_23C872124();
}

uint64_t sub_23C669DE8()
{
  *v0;
  sub_23C871804();
}

uint64_t sub_23C669E64()
{
  v1 = *v0;
  sub_23C8720F4();
  sub_23C871804();

  return sub_23C872124();
}

uint64_t sub_23C669EF0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23C871EC4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_23C669F50(uint64_t *a1@<X8>)
{
  v2 = 0x6D617473656D6974;
  if (*v1)
  {
    v2 = 0x456465726564726FLL;
  }

  v3 = 0xE900000000000070;
  if (*v1)
  {
    v3 = 0xEC000000746E6576;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_23C669F9C()
{
  if (*v0)
  {
    result = 0x456465726564726FLL;
  }

  else
  {
    result = 0x6D617473656D6974;
  }

  *v0;
  return result;
}

uint64_t sub_23C669FE4@<X0>(char *a1@<X8>)
{
  v2 = sub_23C871EC4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_23C66A048(uint64_t a1)
{
  v2 = sub_23C66A77C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23C66A084(uint64_t a1)
{
  v2 = sub_23C66A77C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23C66A0C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBFD0, &qword_23C87D428);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C66A77C();
  sub_23C872154();
  v11 = *(v3 + 16);
  v15 = 0;
  sub_23C871F84();
  if (!v2)
  {
    v14 = *(v3 + 24);
    v13[15] = 1;
    sub_23C870D74();
    sub_23C66A864(&qword_27E1FBFE0, 255, MEMORY[0x277D566D8]);
    sub_23C871F94();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TimestampedOrderedEvent.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  TimestampedOrderedEvent.init(from:)(a1);
  return v2;
}

uint64_t TimestampedOrderedEvent.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBFE8, &qword_23C87D430);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23C66A77C();
  sub_23C872144();
  if (v2)
  {
    type metadata accessor for TimestampedOrderedEvent();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    sub_23C871F14();
    *(v1 + 16) = v10;
    sub_23C870D74();
    v13 = 1;
    sub_23C66A864(&qword_27E1FBFF0, 255, MEMORY[0x277D566D8]);
    sub_23C871F24();
    (*(v5 + 8))(v8, v4);
    *(v1 + 24) = v12[1];
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t static TimestampedOrderedEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  sub_23C870D74();
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  return sub_23C870D24() & 1;
}

BOOL static TimestampedOrderedEvent.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 != v3)
  {
    return v2 < v3;
  }

  sub_23C870D74();
  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  return sub_23C870D14() & 1;
}

uint64_t TimestampedOrderedEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

BOOL sub_23C66A610(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  v5 = *(*a2 + 16);
  if (v4 != v5)
  {
    return v4 < v5;
  }

  sub_23C870D74();
  v6 = *(v2 + 24);
  v7 = *(v3 + 24);
  return sub_23C870D14() & 1;
}

uint64_t sub_23C66A670@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 24);
  result = sub_23C870D34();
  *a1 = result;
  return result;
}

uint64_t sub_23C66A6A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for TimestampedOrderedEvent();
  v5 = swift_allocObject();
  result = TimestampedOrderedEvent.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_23C66A71C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(*a1 + 16) != *(*a2 + 16))
  {
    return 0;
  }

  sub_23C870D74();
  v4 = *(v2 + 24);
  v5 = *(v3 + 24);
  return sub_23C870D24() & 1;
}

unint64_t sub_23C66A77C()
{
  result = qword_27E1FBFD8;
  if (!qword_27E1FBFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBFD8);
  }

  return result;
}

uint64_t sub_23C66A864(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_23C66A9BC()
{
  result = qword_27E1FC008;
  if (!qword_27E1FC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FC008);
  }

  return result;
}

unint64_t sub_23C66AA14()
{
  result = qword_27E1FC010;
  if (!qword_27E1FC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FC010);
  }

  return result;
}

unint64_t sub_23C66AA6C()
{
  result = qword_27E1FC018;
  if (!qword_27E1FC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FC018);
  }

  return result;
}

uint64_t Google_Protobuf_FileOptions.ToolKitPrototoolKitProtoVersion.getter()
{
  if (qword_27E1F8368 != -1)
  {
    swift_once();
  }

  sub_23C716EF0(&qword_27E1FD4A0, MEMORY[0x277D215A8]);
  sub_23C870F54();
  if (v2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_23C66AB78@<X0>(_DWORD *a1@<X8>)
{
  if (qword_27E1F8368 != -1)
  {
    swift_once();
  }

  sub_23C716EF0(&qword_27E1FD4A0, MEMORY[0x277D215A8]);
  result = sub_23C870F54();
  v3 = v4;
  if (v5)
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_23C66AC3C(int *a1)
{
  v1 = *a1;
  if (qword_27E1F8368 != -1)
  {
    swift_once();
  }

  sub_23C716EF0(&qword_27E1FD4A0, MEMORY[0x277D215A8]);
  return sub_23C870F74();
}

uint64_t Google_Protobuf_FileOptions.ToolKitPrototoolKitProtoVersion.setter()
{
  if (qword_27E1F8368 != -1)
  {
    swift_once();
  }

  sub_23C716EF0(&qword_27E1FD4A0, MEMORY[0x277D215A8]);
  return sub_23C870F74();
}

void (*Google_Protobuf_FileOptions.ToolKitPrototoolKitProtoVersion.modify(void *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  if (qword_27E1F8368 != -1)
  {
    swift_once();
  }

  v4[1] = qword_27E1FC038;
  v4[2] = sub_23C716EF0(&qword_27E1FD4A0, MEMORY[0x277D215A8]);
  sub_23C870F54();
  v5 = *(v4 + 6);
  if (*(v4 + 28))
  {
    v5 = 0;
  }

  *(v4 + 8) = v5;
  return sub_23C66AEB4;
}

void sub_23C66AEB4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 8);
  v4 = v1[2];
  v5 = *v1;
  *(v1 + 6) = v2;
  sub_23C870F74();

  free(v1);
}

uint64_t Google_Protobuf_FileOptions.hasToolKitPrototoolKitProtoVersion.getter()
{
  if (qword_27E1F8368 != -1)
  {
    swift_once();
  }

  v0 = qword_27E1FC038;
  v1 = sub_23C716EF0(&qword_27E1FD4A0, MEMORY[0x277D215A8]);

  return MEMORY[0x28217E180](v0, v1);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearToolKitPrototoolKitProtoVersion()()
{
  if (qword_27E1F8368 != -1)
  {
    swift_once();
  }

  v0 = qword_27E1FC038;
  v1 = sub_23C716EF0(&qword_27E1FD4A0, MEMORY[0x277D215A8]);

  MEMORY[0x28217E190](v0, v1);
}

uint64_t sub_23C66B040()
{
  v0 = sub_23C870FA4();
  __swift_allocate_value_buffer(v0, qword_27E1FC020);
  __swift_project_value_buffer(v0, qword_27E1FC020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFE0, &qword_23C889BC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23C873D10;
  if (qword_27E1F8368 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1FC038;
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFE8, &qword_23C889BC8);
  *(v1 + 64) = sub_23C717068();
  *(v1 + 32) = v2;

  return sub_23C870F94();
}

uint64_t sub_23C66B168()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFE8, &qword_23C889BC8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_23C870F44();
  qword_27E1FC038 = result;
  return result;
}

uint64_t ToolKitProtoExtensions_ToolKitProtoVersion.getter()
{
  if (qword_27E1F8368 != -1)
  {
    swift_once();
  }
}

uint64_t sub_23C66B22C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC040);
  __swift_project_value_buffer(v0, qword_27E1FC040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875590;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RuntimePlatform_UNSPECIFIED";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RuntimePlatform_PHONE";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RuntimePlatform_PAD";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RuntimePlatform_MACINTOSH";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "RuntimePlatform_WATCH";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RuntimePlatform_TV";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "RuntimePlatform_VISION";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C66B5AC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC058);
  __swift_project_value_buffer(v0, qword_27E1FC058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "primitive";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "custom";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C66B7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB28, &unk_23C889C40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFA0, &qword_23C889B80);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FAB28, &unk_23C889C40);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAB28, &unk_23C889C40);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoTypeIdentifierKind);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E1FEFA0, &qword_23C889B80);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDA68, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEFA0, &qword_23C889B80);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEFA0, &qword_23C889B80);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEFA0, &qword_23C889B80);
    return sub_23C585C34(v36, &qword_27E1FEFA0, &qword_23C889B80);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEFA0, &qword_23C889B80);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAB28, &unk_23C889C40);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C66BDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB28, &unk_23C889C40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFD8, &qword_23C889BB8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FAB28, &unk_23C889C40);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAB28, &unk_23C889C40);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FEFD8, &qword_23C889BB8);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoTypeIdentifierKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDA90, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEFD8, &qword_23C889BB8);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEFD8, &qword_23C889BB8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEFD8, &qword_23C889BB8);
    return sub_23C585C34(v36, &qword_27E1FEFD8, &qword_23C889BB8);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEFD8, &qword_23C889BB8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAB28, &unk_23C889C40);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoTypeIdentifier.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB28, &unk_23C889C40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23C5855B0(v3, &v15 - v10, &qword_27E1FAB28, &unk_23C889C40);
  v12 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C66C72C(v3, a1, a2, a3);
  }

  else
  {
    sub_23C66C4F4(v3, a1, a2, a3);
  }

  result = sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for ToolKitProtoTypeIdentifier(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C66C4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB28, &unk_23C889C40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAB28, &unk_23C889C40);
  v13 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAB28, &unk_23C889C40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    sub_23C716EF0(&qword_27E1FDA68, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  __break(1u);
  return result;
}

uint64_t sub_23C66C72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB28, &unk_23C889C40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAB28, &unk_23C889C40);
  v13 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAB28, &unk_23C889C40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    sub_23C716EF0(&qword_27E1FDA90, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  __break(1u);
  return result;
}

uint64_t sub_23C66CA14(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEB30, type metadata accessor for ToolKitProtoTypeIdentifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C66CAB4()
{
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);

  return sub_23C8711F4();
}

uint64_t sub_23C66CB20()
{
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);

  return sub_23C871204();
}

uint64_t sub_23C66CBF0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC080);
  __swift_project_value_buffer(v0, qword_27E1FC080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_23C87D6D0;
  v4 = v44 + v3;
  v5 = v44 + v3 + v1[14];
  *(v44 + v3) = 1;
  *v5 = "none_p";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v44 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "BOOL";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21870];
  v8();
  v11 = (v44 + v3 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "int";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v8();
  v13 = (v44 + v3 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "number";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v8();
  v15 = (v44 + v3 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "decimal";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v8();
  v17 = (v44 + v3 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "string";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v8();
  v19 = (v44 + v3 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "date";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v8();
  v21 = (v44 + v3 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "dateComponents";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v8();
  v23 = v44 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v23 = "url";
  *(v23 + 8) = 3;
  *(v23 + 16) = 2;
  v8();
  v24 = (v44 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "dictionary";
  *(v25 + 1) = 10;
  v25[16] = 2;
  v8();
  v26 = (v44 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "attributedString";
  *(v27 + 1) = 16;
  v27[16] = 2;
  v8();
  v28 = (v44 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "measurement";
  *(v29 + 1) = 11;
  v29[16] = 2;
  v8();
  v30 = (v44 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "currencyAmount";
  *(v31 + 1) = 14;
  v31[16] = 2;
  v8();
  v32 = (v44 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "paymentMethod";
  *(v33 + 1) = 13;
  v33[16] = 2;
  v8();
  v34 = (v44 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "placemark";
  *(v35 + 1) = 9;
  v35[16] = 2;
  v8();
  v36 = (v44 + v3 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "person";
  *(v37 + 1) = 6;
  v37[16] = 2;
  v8();
  v38 = v44 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v38 = "file";
  *(v38 + 8) = 4;
  *(v38 + 16) = 2;
  v8();
  v39 = (v44 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "app";
  *(v40 + 1) = 3;
  v40[16] = 2;
  v8();
  v41 = (v44 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "searchableItem";
  *(v42 + 1) = 14;
  v42[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypeIdentifier.Primitive.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 23;
          goto LABEL_23;
        case 2:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 24;
          goto LABEL_23;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 25;
          goto LABEL_23;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 26;
          goto LABEL_23;
        case 5:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 27;
          goto LABEL_23;
        case 6:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 28;
          goto LABEL_23;
        case 7:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 29;
          goto LABEL_23;
        case 8:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 30;
          goto LABEL_23;
        case 9:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 31;
          goto LABEL_23;
        case 10:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 32;
          goto LABEL_23;
        case 11:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 33;
          goto LABEL_23;
        case 12:
          sub_23C66D6A8();
          break;
        case 13:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 34;
          goto LABEL_23;
        case 14:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 35;
          goto LABEL_23;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 36;
          goto LABEL_23;
        case 16:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 37;
          goto LABEL_23;
        case 17:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 38;
          goto LABEL_23;
        case 18:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 39;
          goto LABEL_23;
        case 19:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 40;
LABEL_23:
          sub_23C66D45C(v11, v12, v13, v14, v15);
          break;
        default:
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C66D45C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = sub_23C870E84();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v5)
  {
    return sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  }

  v21 = a2;
  sub_23C5855B0(v13, v11, &qword_27E1FEBC8, &qword_23C889840);
  v16 = (*(v15 + 48))(v11, 1, v14);
  sub_23C585C34(v11, &qword_27E1FEBC8, &qword_23C889840);
  if (v16 == 1)
  {
    return sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  }

  v17 = v21;
  if (*v21 != 41)
  {
    sub_23C871054();
  }

  v18 = v22;
  result = sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  *v17 = v18;
  return result;
}

uint64_t ToolKitProtoTypeIdentifier.Primitive.traverse<A>(visitor:)()
{
  switch(*v0)
  {
    case 0x17u:
      result = sub_23C66D9E4(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x18u:
      result = sub_23C66DB34(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x19u:
      result = sub_23C66DC84(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Au:
      result = sub_23C66DDD4(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Bu:
      result = sub_23C66DF24(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Cu:
      result = sub_23C66E074(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Du:
      result = sub_23C66E1C4(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Eu:
      result = sub_23C66E314(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x1Fu:
      result = sub_23C66E464(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x20u:
      result = sub_23C66E5B4(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x21u:
      result = sub_23C66E704(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x22u:
      result = sub_23C66E8D0(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x23u:
      result = sub_23C66EA20(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x24u:
      result = sub_23C66EB70(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x25u:
      result = sub_23C66ECC0(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x26u:
      result = sub_23C66EE10(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x27u:
      result = sub_23C66EF60(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x28u:
      result = sub_23C66F0B0(v0);
      if (!v1)
      {
        goto LABEL_5;
      }

      break;
    case 0x29u:
      goto LABEL_5;
    default:
      result = sub_23C66E854(v0);
      if (!v1)
      {
LABEL_5:
        v3 = &v0[*(type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0) + 20)];
        result = sub_23C870F14();
      }

      break;
  }

  return result;
}

uint64_t sub_23C66D9E4(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 23)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66DB34(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 24)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66DC84(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 25)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66DDD4(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 26)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66DF24(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 27)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66E074(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 28)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66E1C4(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 29)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66E314(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 30)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66E464(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 31)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66E5B4(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 32)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66E704(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 33)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_23C66E854(unsigned __int8 *result)
{
  if (*result - 23 < 0x13)
  {
    __break(1u);
  }

  else
  {
    sub_23C70BFFC();
    return sub_23C871254();
  }

  return result;
}

uint64_t sub_23C66E8D0(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 34)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66EA20(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 35)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66EB70(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 36)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66ECC0(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 37)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66EE10(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 38)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66EF60(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 39)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66F0B0(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 40)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C66F24C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_23C8720F4();
  a1(0);
  sub_23C716EF0(a2, a3);
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C66F2D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 41;
  v2 = &a2[*(a1 + 20)];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C66F354(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEB28, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C66F3F4()
{
  sub_23C716EF0(&qword_27E1FDA68, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);

  return sub_23C8711F4();
}

uint64_t sub_23C66F460()
{
  sub_23C716EF0(&qword_27E1FDA68, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);

  return sub_23C871204();
}

uint64_t sub_23C66F4E0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC098);
  __swift_project_value_buffer(v0, qword_27E1FC098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_23C8755B0;
  v4 = v51 + v3;
  v5 = v51 + v3 + v1[14];
  *(v51 + v3) = 0;
  *v5 = "MeasurementUnitType_UNSPECIFIED";
  *(v5 + 8) = 31;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v51 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "MeasurementUnitType_LENGTH";
  *(v9 + 8) = 26;
  *(v9 + 16) = 2;
  v8();
  v10 = (v51 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "MeasurementUnitType_MASS";
  *(v11 + 1) = 24;
  v11[16] = 2;
  v8();
  v12 = (v51 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "MeasurementUnitType_TEMPERATURE";
  *(v13 + 1) = 31;
  v13[16] = 2;
  v8();
  v14 = (v51 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "MeasurementUnitType_VOLUME";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v51 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "MeasurementUnitType_SPEED";
  *(v17 + 1) = 25;
  v17[16] = 2;
  v8();
  v18 = (v51 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "MeasurementUnitType_ENERGY";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v8();
  v20 = (v51 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "MeasurementUnitType_DURATION";
  *(v21 + 1) = 28;
  v21[16] = 2;
  v8();
  v22 = v51 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "MeasurementUnitType_ACCELERATION";
  *(v22 + 8) = 32;
  *(v22 + 16) = 2;
  v8();
  v23 = (v51 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "MeasurementUnitType_ANGLE";
  *(v24 + 1) = 25;
  v24[16] = 2;
  v8();
  v25 = (v51 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "MeasurementUnitType_AREA";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v8();
  v27 = (v51 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "MeasurementUnitType_CONCENTRATION_MASS";
  *(v28 + 1) = 38;
  v28[16] = 2;
  v8();
  v29 = (v51 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "MeasurementUnitType_DISPERSION";
  *(v30 + 1) = 30;
  v30[16] = 2;
  v8();
  v31 = (v51 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "MeasurementUnitType_ELECTRIC_CHARGE";
  *(v32 + 1) = 35;
  v32[16] = 2;
  v8();
  v33 = (v51 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "MeasurementUnitType_ELECTRIC_CURRENT";
  *(v34 + 1) = 36;
  v34[16] = 2;
  v8();
  v35 = (v51 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "MeasurementUnitType_ELECTRIC_POTENTIAL_DIFFERENCE";
  *(v36 + 1) = 49;
  v36[16] = 2;
  v8();
  v37 = v51 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "MeasurementUnitType_ELECTRIC_RESISTANCE";
  *(v37 + 8) = 39;
  *(v37 + 16) = 2;
  v8();
  v38 = (v51 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "MeasurementUnitType_FREQUENCY";
  *(v39 + 1) = 29;
  v39[16] = 2;
  v8();
  v40 = (v51 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "MeasurementUnitType_FUEL_EFFICIENCY";
  *(v41 + 1) = 35;
  v41[16] = 2;
  v8();
  v42 = (v51 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "MeasurementUnitType_ILLUMINANCE";
  *(v43 + 1) = 31;
  v43[16] = 2;
  v8();
  v44 = (v51 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "MeasurementUnitType_INFORMATION_STORAGE";
  *(v45 + 1) = 39;
  v45[16] = 2;
  v8();
  v46 = (v51 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "MeasurementUnitType_POWER";
  *(v47 + 1) = 25;
  v47[16] = 2;
  v8();
  v48 = (v51 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "MeasurementUnitType_PRESSURE";
  *(v49 + 1) = 28;
  v49[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t sub_23C66FC30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x23EED7100](a2, a3);
  *a4 = 0xD000000000000016;
  *a5 = 0x800000023C8ACF90;
  return result;
}

uint64_t sub_23C66FCC4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC0C0);
  __swift_project_value_buffer(v0, qword_27E1FC0C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeName";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C66FF98(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEB20, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C670038()
{
  sub_23C716EF0(&qword_27E1FDA90, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);

  return sub_23C8711F4();
}

uint64_t sub_23C6700A4()
{
  sub_23C716EF0(&qword_27E1FDA90, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);

  return sub_23C871204();
}

uint64_t sub_23C67013C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC0D8);
  __swift_project_value_buffer(v0, qword_27E1FC0D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_23C87D6E0;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "unknown";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "mailAccount";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "mailAddressee";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "mailMessage";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "mailbox";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "intentMessage";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "messageGroup";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "messageParticipants";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "uniqueEntity";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "intentUpdatableEntity";
  *(v24 + 1) = 21;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "urlRepresentable";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "visualSearch";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "visualSearchOcr";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "assistantSchema";
  *(v32 + 1) = 15;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "updatableEntity";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "persistentFileIdentifiable";
  *(v36 + 1) = 26;
  v36[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoSystemTypeProtocol.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 3;
          goto LABEL_5;
        case 2:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 4;
          goto LABEL_5;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 5;
          goto LABEL_5;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 6;
          goto LABEL_5;
        case 5:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 7;
          goto LABEL_5;
        case 6:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 8;
          goto LABEL_5;
        case 7:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 9;
          goto LABEL_5;
        case 8:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 10;
          goto LABEL_5;
        case 9:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 11;
          goto LABEL_5;
        case 10:
          sub_23C670DB4(v5, a1, a2, a3);
          break;
        case 11:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 12;
          goto LABEL_5;
        case 12:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 13;
          goto LABEL_5;
        case 13:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 14;
          goto LABEL_5;
        case 14:
          sub_23C671364(v5, a1, a2, a3);
          break;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 15;
LABEL_5:
          sub_23C670A2C(v11, v12, v13, v14, &qword_27E1FAC50, &qword_23C878FD8, type metadata accessor for ToolKitProtoSystemTypeProtocolKind, v15);
          break;
        case 16:
          sub_23C671920(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C670A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), int a8)
{
  v39 = a8;
  v37 = a7;
  v38 = a6;
  v40 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v34 - v19;
  v21 = sub_23C870E84();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v20, 1, 1, v21);
  sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  v23 = v41;
  sub_23C871094();
  v41 = v23;
  if (v23)
  {
    return sub_23C585C34(v20, &qword_27E1FEBC8, &qword_23C889840);
  }

  v34[1] = a4;
  v35 = v13;
  v36 = a5;
  sub_23C5855B0(v20, v18, &qword_27E1FEBC8, &qword_23C889840);
  v24 = (*(v22 + 48))(v18, 1, v21);
  sub_23C585C34(v18, &qword_27E1FEBC8, &qword_23C889840);
  if (v24 == 1)
  {
    return sub_23C585C34(v20, &qword_27E1FEBC8, &qword_23C889840);
  }

  v26 = v35;
  v27 = v36;
  v28 = v38;
  sub_23C5855B0(v40, v35, v36, v38);
  v29 = v37(0);
  v30 = *(v29 - 8);
  v31 = (*(v30 + 48))(v26, 1, v29);
  sub_23C585C34(v26, v27, v28);
  if (v31 != 1)
  {
    v32 = v41;
    sub_23C871054();
    if (v32)
    {
      return sub_23C585C34(v20, &qword_27E1FEBC8, &qword_23C889840);
    }
  }

  sub_23C585C34(v20, &qword_27E1FEBC8, &qword_23C889840);
  v33 = v40;
  sub_23C585C34(v40, v36, v28);
  swift_storeEnumTagMultiPayload();
  return (*(v30 + 56))(v33, 0, 1, v29);
}

uint64_t sub_23C670DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFC0, &qword_23C889BA0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FAC50, &qword_23C878FD8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC50, &qword_23C878FD8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E1FEFC0, &qword_23C889BA0);
      v35 = v43;
      sub_23C716FA0(v20, v43, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDAB8, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEFC0, &qword_23C889BA0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEFC0, &qword_23C889BA0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEFC0, &qword_23C889BA0);
    return sub_23C585C34(v36, &qword_27E1FEFC0, &qword_23C889BA0);
  }

  else
  {
    v39 = v44;
    sub_23C716FA0(v36, v44, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEFC0, &qword_23C889BA0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC50, &qword_23C878FD8);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}