unint64_t sub_223A06348(uint64_t a1)
{
  v82 = sub_223A20680();
  v3 = *(v82 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v82);
  v81 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC0, &unk_223A23780);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v63 - v11;
  v65 = v1;
  v13 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v14 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC8, &qword_223A23960);
  result = sub_223A216C0();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = *(v13 + 56);
    v64 = v13 + 56;
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v18;
    v63 = (v19 + 63) >> 6;
    v73 = v3 + 16;
    v80 = (v3 + 32);
    v77 = (v3 + 8);
    v66 = result + 56;
    v22 = &qword_27D0A4B60;
    v75 = v3;
    v74 = v10;
    v78 = v12;
    v68 = v13;
    v67 = result;
    while (v21)
    {
      v27 = __clz(__rbit64(v21));
      v69 = (v21 - 1) & v21;
LABEL_16:
      v70 = v17;
      v30 = *(*(v13 + 48) + 8 * (v27 | (v17 << 6)));
      v31 = v16[5];
      sub_223A21940();
      v32 = *(v30 + 64);
      v72 = v30 + 64;
      v33 = 1 << *(v30 + 32);
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      else
      {
        v34 = -1;
      }

      v35 = v34 & v32;
      v71 = (v33 + 63) >> 6;
      v76 = v30;
      result = swift_bridgeObjectRetain_n();
      v36 = 0;
      v37 = 0;
      v38 = v22;
      if (!v35)
      {
LABEL_21:
        if (v71 <= v37 + 1)
        {
          v40 = v37 + 1;
        }

        else
        {
          v40 = v71;
        }

        v41 = v40 - 1;
        while (1)
        {
          v39 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v39 >= v71)
          {
            v22 = v38;
            v62 = __swift_instantiateConcreteTypeFromMangledNameV2(v38, &qword_223A23760);
            (*(*(v62 - 8) + 56))(v10, 1, 1, v62);
            v35 = 0;
            goto LABEL_30;
          }

          v35 = *(v72 + 8 * v39);
          ++v37;
          if (v35)
          {
            v79 = v36;
            goto LABEL_29;
          }
        }

        __break(1u);
        goto LABEL_36;
      }

      while (1)
      {
        v79 = v36;
        v39 = v37;
LABEL_29:
        v42 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v43 = v42 | (v39 << 6);
        v44 = (*(v76 + 48) + 16 * v43);
        v46 = *v44;
        v45 = v44[1];
        v47 = v75;
        v49 = v81;
        v48 = v82;
        (*(v75 + 16))(v81, *(v76 + 56) + *(v75 + 72) * v43, v82);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v38, &qword_223A23760);
        v51 = *(v50 + 48);
        v52 = v74;
        *v74 = v46;
        *(v52 + 1) = v45;
        v53 = v49;
        v10 = v52;
        (*(v47 + 32))(&v52[v51], v53, v48);
        (*(*(v50 - 8) + 56))(v10, 0, 1, v50);

        v41 = v39;
        v22 = v38;
        v36 = v79;
LABEL_30:
        v54 = v78;
        sub_2239D0F08(v10, v78);
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, &qword_223A23760);
        if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
        {
          break;
        }

        v56 = *(v55 + 48);
        v57 = *v54;
        v58 = v54[1];
        v59 = v54 + v56;
        v61 = v81;
        v60 = v82;
        (*v80)(v81, v59, v82);
        v85 = v90;
        v86 = v91;
        v87 = v92;
        v83 = v88;
        v84 = v89;
        sub_223A21290();

        sub_2239DD36C(&qword_27D0A4BD0);
        sub_223A211A0();
        (*v77)(v61, v60);
        result = sub_223A21970();
        v36 ^= result;
        v37 = v41;
        v38 = v22;
        if (!v35)
        {
          goto LABEL_21;
        }
      }

      v23 = v36;
      v24 = v76;

      MEMORY[0x223DF0A30](v23);
      sub_223A21970();
      v16 = v67;
      v25 = -1 << *(v67 + 32);
      v26 = v66;
      result = sub_223A21660();
      *(v26 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(v16[6] + 8 * result) = v24;
      ++v16[2];
      v13 = v68;
      v17 = v70;
      v21 = v69;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v17 >= v63)
      {
        goto LABEL_34;
      }

      v29 = *(v64 + 8 * v17);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v69 = (v29 - 1) & v29;
        goto LABEL_16;
      }
    }

LABEL_36:
    __break(1u);
  }

  else
  {
LABEL_34:

    *v65 = v16;
  }

  return result;
}

uint64_t sub_223A069E4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_223A07274(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_223A06FC0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_223A218F0();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_223A218F0();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_223A07288(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_223A07288((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
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
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_223A06FC0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_223A07274(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_223A071E8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_223A218F0(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_223A06FC0(char *__dst, char *__src, char *a3, char *a4)
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
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_223A218F0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_223A218F0() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_223A071E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_223A07274(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_223A07288(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B70, &qword_223A23720);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_223A0738C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 40);
    do
    {
      v7 = *v6;
      v10[0] = *(v6 - 1);
      v10[1] = v7;

      v8 = a1(v10);

      if (v3)
      {
        break;
      }

      if (v8)
      {
        break;
      }

      v6 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void *sub_223A0742C(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v31 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 216 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v33[0] = *v18;
      v33[1] = v19;
      v20 = v18[5];
      v22 = v18[2];
      v21 = v18[3];
      v33[4] = v18[4];
      v33[5] = v20;
      v33[2] = v22;
      v33[3] = v21;
      v23 = v18[9];
      v25 = v18[6];
      v24 = v18[7];
      v33[8] = v18[8];
      v33[9] = v23;
      v33[6] = v25;
      v33[7] = v24;
      v27 = v18[11];
      v26 = v18[12];
      v28 = v18[10];
      v34 = *(v18 + 26);
      v33[11] = v27;
      v33[12] = v26;
      v33[10] = v28;
      memmove(v11, v18, 0xD8uLL);
      if (v14 == v10)
      {
        sub_2239EF1D4(v33, v32);
        goto LABEL_23;
      }

      v11 += 216;
      sub_2239EF1D4(v33, v32);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v30 = v12 + 1;
    }

    else
    {
      v30 = v13;
    }

    v12 = v30 - 1;
    v10 = result;
LABEL_23:
    v7 = v31;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_223A07600(__int128 *a1, uint64_t a2)
{
  v51 = a1;
  v55 = sub_223A20680();
  v3 = *(v55 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC0, &unk_223A23780);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v52 = (v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v11 = (v46 - v10);
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;
  v46[1] = v3 + 16;
  v17 = (v3 + 32);
  v48 = v3;
  v49 = a2;
  v50 = (v3 + 8);

  v19 = 0;
  v20 = 0;
  v47 = v11;
  v46[0] = v3 + 32;
  if (v15)
  {
    while (1)
    {
      v53 = v19;
      v21 = v20;
LABEL_13:
      v25 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v26 = v25 | (v21 << 6);
      v27 = v48;
      v28 = (*(v49 + 48) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v32 = v54;
      v31 = v55;
      (*(v48 + 16))(v54, *(v49 + 56) + *(v48 + 72) * v26, v55);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
      v34 = *(v33 + 48);
      v35 = v52;
      *v52 = v29;
      v35[1] = v30;
      v24 = v35;
      v36 = *(v27 + 32);
      v17 = v46[0];
      v36(v24 + v34, v32, v31);
      (*(*(v33 - 8) + 56))(v24, 0, 1, v33);

      v56 = v21;
      v11 = v47;
      v19 = v53;
LABEL_14:
      sub_2239D0F08(v24, v11);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
      if ((*(*(v37 - 8) + 48))(v11, 1, v37) == 1)
      {
        break;
      }

      v38 = *(v37 + 48);
      v39 = *v11;
      v40 = v11[1];
      v42 = v54;
      v41 = v55;
      (*v17)(v54, v11 + v38, v55);
      v43 = v51[3];
      v59 = v51[2];
      v60 = v43;
      v61 = *(v51 + 8);
      v44 = v51[1];
      v57 = *v51;
      v58 = v44;
      sub_223A21290();

      sub_2239DD36C(&qword_27D0A4BD0);
      sub_223A211A0();
      (*v50)(v42, v41);
      result = sub_223A21970();
      v19 ^= result;
      v20 = v56;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x223DF0A30](v19);
  }

  else
  {
LABEL_5:
    if (v16 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v16;
    }

    v23 = v22 - 1;
    v24 = v52;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v16)
      {
        v56 = v23;
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
        (*(*(v45 - 8) + 56))(v24, 1, 1, v45);
        v15 = 0;
        goto LABEL_14;
      }

      v15 = *(v12 + 8 * v21);
      ++v20;
      if (v15)
      {
        v53 = v19;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_223A07A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_223A20680();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC0, &unk_223A23780);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  result = MEMORY[0x28223BE20](v12);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v56 = (&v52 - v14);
  v57 = v15;
  v55 = v8;
  v16 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v52 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = (v63 + 8);
  while (1)
  {
    v22 = v57;
    if (!v20)
    {
      break;
    }

    v61 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v53 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v62;
    v31 = v63;
    (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v23, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
    v34 = *(v33 + 48);
    *v22 = v29;
    *(v22 + 1) = v30;
    (*(v31 + 32))(&v22[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);

LABEL_17:
    v35 = v56;
    sub_2239D0F08(v22, v56);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v58;
    v43 = v55;
    (*v60)(v55, v35 + v39, v4);
    v44 = sub_2239CDC74(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v54)(v43, v4);
      return 0;
    }

    v48 = v62;
    v47 = v63;
    (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
    sub_2239DD36C(&qword_2813336F8);
    v49 = sub_223A211E0();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v43, v4);
    v20 = v61;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
      (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
      v61 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v52 + 8 * v26);
    ++v16;
    if (v27)
    {
      v61 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t DurationSummaryWorker.__allocating_init(with:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return DurationSummaryWorker.init(with:)(a1);
}

Swift::Bool __swiftcall DurationSummaryWorker.start()()
{
  swift_beginAccess();
  *(v0 + 16) = 1;
  return 1;
}

uint64_t DurationSummaryWorker.summaryEvent.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t DurationSummaryWorker.workerConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t DurationSummaryWorker.workerConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_223A081B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_223A207D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_223A20680();
  v101 = *(v107 - 8);
  v10 = v101[8];
  MEMORY[0x28223BE20](v107);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C48, &unk_223A23950);
  v13 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v99 = &v77 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v95 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v97 = &v77 - v20;
  MEMORY[0x28223BE20](v19);
  v103 = &v77 - v21;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
  v22 = *(*(v106 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v106);
  v96 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v104 = &v77 - v26;
  MEMORY[0x28223BE20](v25);
  v105 = &v77 - v27;
  v28 = sub_223A20C40();

  v29 = sub_223A0A78C(v28, v3);

  if (*(v29 + 16) == *(*(v3 + OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_dynamicCreationKeys) + 16))
  {
    v100 = v28;
    v30 = OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_seenKeyValueCombinations;
    swift_beginAccess();
    v87 = v30;
    v31 = *(v3 + v30);

    v32 = sub_223A04538(v29, v31);

    if ((v32 & 1) == 0)
    {
      v86 = v12;
      v83 = v29;
      v78 = v6;
      v79 = v5;
      v81 = v9;
      v82 = a2;
      v80 = v3;
      v34 = *(v3 + OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_requiredDynamicCreationKeyValues);
      v35 = *(v34 + 64);
      v84 = v34 + 64;
      v36 = 1 << *(v34 + 32);
      v37 = -1;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      v38 = v37 & v35;
      v85 = (v36 + 63) >> 6;
      v93 = v101 + 2;
      v89 = (v101 + 7);
      v94 = (v101 + 4);
      v88 = (v101 + 6);
      v90 = (v101 + 1);
      v92 = v34;

      v39 = 0;
      v40 = v105;
      while (1)
      {
        if (!v38)
        {
          while (1)
          {
            v41 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              break;
            }

            if (v41 >= v85)
            {

              v70 = v80;
              swift_beginAccess();
              v71 = v83;

              sub_223A04D2C(&v109, v71);
              swift_endAccess();

              v72 = v70 + OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_summaryConfig;
              v73 = v81;
              (*(v78 + 16))(v81, v72, v79);
              sub_2239C8DE4(v82, v108);
              v74 = type metadata accessor for DurationSummaryState();
              v75 = *(v74 + 48);
              v76 = *(v74 + 52);
              swift_allocObject();
              return sub_2239CC684(v73, v108, v71);
            }

            v38 = *(v84 + 8 * v41);
            ++v39;
            if (v38)
            {
              v39 = v41;
              v40 = v105;
              goto LABEL_13;
            }
          }

          __break(1u);
          return result;
        }

LABEL_13:
        v42 = __clz(__rbit64(v38)) | (v39 << 6);
        v43 = (*(v92 + 48) + 16 * v42);
        v44 = *v43;
        v45 = v43[1];
        v46 = v101[9];
        v47 = v101[2];
        v47(&v40[*(v106 + 48)], *(v92 + 56) + v46 * v42, v107);
        *v40 = v44;
        *(v40 + 1) = v45;
        v48 = v104;
        sub_2239D8C48(v40, v104, &qword_27D0A4B60, &qword_223A23760);
        v49 = v48;
        v50 = *(v48 + 8);
        v51 = v100;
        if (!*(v100 + 16))
        {
          break;
        }

        v52 = *v49;

        v53 = sub_2239CDC74(v52, v50);
        LOBYTE(v52) = v54;

        if ((v52 & 1) == 0)
        {
          goto LABEL_17;
        }

        v47(v103, *(v51 + 56) + v53 * v46, v107);
        v55 = 0;
LABEL_18:
        v56 = v99;
        v38 &= v38 - 1;
        v57 = *v89;
        v58 = v103;
        v59 = v107;
        (*v89)(v103, v55, 1, v107);
        v60 = v96;
        sub_2239D8C48(v105, v96, &qword_27D0A4B60, &qword_223A23760);
        v61 = *(v60 + 8);

        v62 = v60 + *(v106 + 48);
        v63 = v97;
        v91 = *v94;
        v91(v97, v62, v59);
        v57(v63, 0, 1, v59);
        v64 = *(v98 + 48);
        sub_2239D8C48(v58, v56, &qword_27D0A4928, &qword_223A22B40);
        v102 = v64;
        sub_2239D8C48(v63, v56 + v64, &qword_27D0A4928, &qword_223A22B40);
        v65 = *v88;
        if ((*v88)(v56, 1, v59) == 1)
        {
          sub_2239CDCEC(v63, &qword_27D0A4928, &qword_223A22B40);
          sub_2239CDCEC(v58, &qword_27D0A4928, &qword_223A22B40);
          v40 = v105;
          sub_2239CDCEC(v105, &qword_27D0A4B60, &qword_223A23760);
          if (v65(v56 + v102, 1, v107) != 1)
          {
            goto LABEL_26;
          }

          sub_2239CDCEC(v56, &qword_27D0A4928, &qword_223A22B40);
          result = (*v90)(v104 + *(v106 + 48), v107);
        }

        else
        {
          v66 = v107;
          v67 = v95;
          sub_2239D8C48(v56, v95, &qword_27D0A4928, &qword_223A22B40);
          if (v65(v56 + v102, 1, v66) == 1)
          {
            sub_2239CDCEC(v63, &qword_27D0A4928, &qword_223A22B40);
            sub_2239CDCEC(v103, &qword_27D0A4928, &qword_223A22B40);
            sub_2239CDCEC(v105, &qword_27D0A4B60, &qword_223A23760);
            (*v90)(v67, v66);
LABEL_26:
            sub_2239CDCEC(v56, &qword_27D0A4C48, &unk_223A23950);
            (*v90)(v104 + *(v106 + 48), v107);
LABEL_27:

            goto LABEL_4;
          }

          v68 = v86;
          v91(v86, v56 + v102, v66);
          sub_2239DD36C(&qword_2813336F8);
          LODWORD(v102) = sub_223A211E0();
          v69 = *v90;
          (*v90)(v68, v66);
          sub_2239CDCEC(v63, &qword_27D0A4928, &qword_223A22B40);
          sub_2239CDCEC(v103, &qword_27D0A4928, &qword_223A22B40);
          v40 = v105;
          sub_2239CDCEC(v105, &qword_27D0A4B60, &qword_223A23760);
          v69(v95, v66);
          sub_2239CDCEC(v56, &qword_27D0A4928, &qword_223A22B40);
          result = v69(v104 + *(v106 + 48), v66);
          if ((v102 & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }

LABEL_17:
      v55 = 1;
      goto LABEL_18;
    }
  }

LABEL_4:

  return 0;
}

uint64_t sub_223A08C38()
{
  v1 = OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_summaryConfig;
  v2 = sub_223A207D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_dynamicCreationKeys);

  v4 = *(v0 + OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_requiredDynamicCreationKeyValues);

  v5 = *(v0 + OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_seenKeyValueCombinations);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t DurationSummaryWorker.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_workerConfig;
  v3 = sub_223A20BC0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_summaryStates);

  v5 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_dynamicSummaryConfigs);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_session));
  v6 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_config);

  v7 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_logger;
  v8 = sub_223A20FC0();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_223A08DF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C18, &qword_223A23910);
  v36 = a2;
  result = sub_223A217B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_2239DA0A8(v25, v37);
      }

      else
      {
        sub_2239D17A8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_223A21940();
      sub_223A21290();
      result = sub_223A21970();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_2239DA0A8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_223A090AC(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_223A203C0();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C50, &qword_223A23968);
  v43 = a2;
  result = sub_223A217B0();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v9;
    v42 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(*(v9 + 48) + 2 * v25);
      v28 = *(v42 + 72);
      v29 = v26 + v28 * v25;
      if (v43)
      {
        (*v19)(v44, v29, v45);
      }

      else
      {
        (*v40)(v44, v29, v45);
      }

      v30 = *(v12 + 40);
      sub_223A21940();
      sub_223A21960();
      result = sub_223A21970();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 2 * v21) = v27;
      result = (*v19)(*(v12 + 56) + v28 * v21, v44, v45);
      ++*(v12 + 16);
      v9 = v41;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_223A09410(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C38, &unk_223A23940);
  v37 = a2;
  result = sub_223A217B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_223A21940();
      sub_223A21290();
      result = sub_223A21970();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_223A096DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C18, &qword_223A23910);
  v2 = *v0;
  v3 = sub_223A217A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2239D17A8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2239DA0A8(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_223A09880()
{
  v1 = v0;
  v30 = sub_223A203C0();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C50, &qword_223A23968);
  v4 = *v0;
  v5 = sub_223A217A0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 2 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 2 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_223A09AE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C38, &unk_223A23940);
  v2 = *v0;
  v3 = sub_223A217A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_223A09C50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C20, &qword_223A23918);
  v2 = *v0;
  v3 = sub_223A217A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_2239D17A8(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_2239DA0A8(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_223A09DD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C30, &qword_223A23928);
  v2 = *v0;
  v3 = sub_223A217A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_223A09F54(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_223A217A0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

unint64_t *sub_223A0A0B0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_223A0A438(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t sub_223A0A14C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C00, "|=");
    v3 = sub_223A217C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2239CDC74(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_223A0A250(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C08, &unk_223A23900);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C10, &unk_223A249B0);
    v8 = sub_223A217C0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2239D8C48(v10, v6, &qword_27D0A4C08, &unk_223A23900);
      result = sub_2239F6CB8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_223A20850();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_223A0A438(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v52 = a4;
  v38 = a2;
  v39 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
  v7 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v50 = (&v37 - v8);
  v49 = sub_223A20680();
  v9 = *(*(v49 - 8) + 64);
  result = MEMORY[0x28223BE20](v49);
  v47 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v53 = a3;
  v14 = *(a3 + 64);
  v42 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v40 = 0;
  v41 = (v15 + 63) >> 6;
  v45 = v11 + 16;
  v46 = OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_dynamicCreationKeys;
  v48 = v11;
  v44 = v11 + 8;
  v18 = v11;
  while (v17)
  {
    v56 = v5;
    v19 = __clz(__rbit64(v17));
    v54 = (v17 - 1) & v17;
LABEL_11:
    v22 = v19 | (v13 << 6);
    v23 = v53[7];
    v24 = (v53[6] + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = *(v18 + 72);
    v43 = v22;
    v28 = *(v18 + 16);
    v29 = v47;
    v30 = v49;
    v28(v47, v23 + v27 * v22, v49);
    v32 = v50;
    v31 = v51;
    *v50 = v26;
    *(v32 + 8) = v25;
    v33 = (v28)(v32 + *(v31 + 48), v29, v30);
    v34 = *(v52 + v46);
    v55[0] = v26;
    v55[1] = v25;
    MEMORY[0x28223BE20](v33);
    *(&v37 - 2) = v55;
    swift_bridgeObjectRetain_n();
    v35 = v56;
    LOBYTE(v34) = sub_2239CF3F4(sub_2239D9880, (&v37 - 4), v34);
    v5 = v35;
    sub_2239CDCEC(v32, &qword_27D0A4B60, &qword_223A23760);
    (*(v18 + 8))(v29, v30);

    v17 = v54;
    if (v34)
    {
      *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      if (__OFADD__(v40++, 1))
      {
        __break(1u);
        return sub_2239D98A0(v39, v38, v40, v53);
      }
    }
  }

  v20 = v13;
  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v13 >= v41)
    {
      return sub_2239D98A0(v39, v38, v40, v53);
    }

    v21 = *(v42 + 8 * v13);
    ++v20;
    if (v21)
    {
      v56 = v5;
      v19 = __clz(__rbit64(v21));
      v54 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223A0A78C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v11 = sub_223A0A0B0(v14, v8, a1, a2);
      MEMORY[0x223DF1300](v14, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v10);
  bzero(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = sub_223A0A438((v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

char *_s22AudioAnalyticsExternal21DurationSummaryWorkerC23getNeededPreviousFields6configSaySSG0aB4Base6ConfigC_tFZ_0()
{
  v30 = sub_223A207D0();
  v0 = *(v30 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v30);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_223A20BD0();
  v5 = v4[2];
  if (v5)
  {
    v31 = MEMORY[0x277D84F90];
    sub_223A02E64(0, v5, 0);
    v6 = v31;
    v8 = *(v0 + 16);
    v7 = (v0 + 16);
    v9 = *(v7 + 64);
    v27[1] = v4;
    v10 = v4 + ((v9 + 32) & ~v9);
    v28 = v7[7];
    v29 = v8;
    v11 = (v7 - 1);
    do
    {
      v12 = v30;
      v4 = v7;
      v29(v3, v10, v30);
      v13 = sub_223A20750();
      (*v11)(v3, v12);
      v31 = v6;
      v15 = *(v6 + 2);
      v14 = *(v6 + 3);
      if (v15 >= v14 >> 1)
      {
        sub_223A02E64((v14 > 1), v15 + 1, 1);
        v6 = v31;
      }

      *(v6 + 2) = v15 + 1;
      *&v6[8 * v15 + 32] = v13;
      v10 += v28;
      --v5;
      v7 = v4;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v32 = MEMORY[0x277D84FA0];
  v16 = *(v6 + 2);
  if (!v16)
  {
LABEL_16:

    v22 = v32;
    v23 = *(v32 + 16);
    if (v23)
    {
      v24 = sub_2239D83E0(*(v32 + 16), 0);
      v25 = sub_2239D86F4(&v31, v24 + 4, v23, v22);

      sub_2239CE254();
      if (v25 == v23)
      {
LABEL_20:
        v31 = v24;
        sub_2239D8090(&v31);

        return v31;
      }

      __break(1u);
    }

    v24 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v17 = 0;
  while (v17 < *(v6 + 2))
  {
    v4 = *&v6[8 * v17 + 32];
    v18 = v4[2];

    if (v18)
    {
      v19 = v4 + 5;
      do
      {
        v21 = *(v19 - 1);
        v20 = *v19;

        sub_2239D8100(&v31, v21, v20);

        v19 += 2;
        --v18;
      }

      while (v18);
    }

    ++v17;

    if (v17 == v16)
    {
      goto LABEL_16;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_223A0AC88()
{
  result = sub_223A20BC0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_223A20FC0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_223A0ADB8()
{
  result = sub_223A207D0();
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

uint64_t sub_223A0AE58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006570;
  v3 = 0x79745F6575737369;
  v4 = a1;
  if (a1 <= 2u)
  {
    v7 = 0xE800000000000000;
    v8 = 0x656C6379635F6F69;
    if (a1 != 1)
    {
      v8 = 0x5F656761705F6F69;
      v7 = 0xEE0073746C756166;
    }

    if (a1)
    {
      v5 = v8;
    }

    else
    {
      v5 = 0x79745F6575737369;
    }

    if (v4)
    {
      v6 = v7;
    }

    else
    {
      v6 = 0xEA00000000006570;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    if (v4 == 5)
    {
      v6 = 0x8000000223A24B10;
    }

    else
    {
      v6 = 0x8000000223A24B30;
    }
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x61776572705F7369;
    }

    else
    {
      v5 = 0x766F6365725F7369;
    }

    if (v4 == 3)
    {
      v6 = 0xED0000676E696D72;
    }

    else
    {
      v6 = 0xED0000676E697265;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v5 != 0x656C6379635F6F69)
        {
          goto LABEL_45;
        }

        goto LABEL_42;
      }

      v3 = 0x5F656761705F6F69;
      v2 = 0xEE0073746C756166;
    }

    if (v5 != v3)
    {
LABEL_45:
      v10 = sub_223A218F0();
      goto LABEL_46;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v9 = 0xD000000000000015;
    }

    else
    {
      v9 = 0xD000000000000016;
    }

    if (a2 == 5)
    {
      v2 = 0x8000000223A24B10;
    }

    else
    {
      v2 = 0x8000000223A24B30;
    }

    if (v5 != v9)
    {
      goto LABEL_45;
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xED0000676E696D72;
    if (v5 != 0x61776572705F7369)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v2 = 0xED0000676E697265;
    if (v5 != 0x766F6365725F7369)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v6 != v2)
  {
    goto LABEL_45;
  }

  v10 = 1;
LABEL_46:

  return v10 & 1;
}

uint64_t sub_223A0B0B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000074;
  if (a1 == 5)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x6F68736B63617453;
  }

  if (a1 == 5)
  {
    v4 = 0x8000000223A24AB0;
  }

  v6 = 0x8000000223A24A60;
  v7 = 0xD000000000000018;
  if (a1 != 3)
  {
    v7 = 0xD000000000000021;
    v6 = 0x8000000223A24A80;
  }

  if (a1 > 4u)
  {
    v7 = v5;
    v6 = v4;
  }

  v8 = 0x8000000223A24A20;
  v9 = 0xD000000000000014;
  if (v2 != 1)
  {
    v9 = 0xD000000000000015;
    v8 = 0x8000000223A24A40;
  }

  if (v2)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E55;
  }

  if (v2 <= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0x8000000223A24A20;
        if (v10 != 0xD000000000000014)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v12 = 0x8000000223A24A40;
        if (v10 != 0xD000000000000015)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E55)
      {
        goto LABEL_42;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0x8000000223A24AB0;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v12 = 0xE900000000000074;
      if (v10 != 0x6F68736B63617453)
      {
LABEL_42:
        v13 = sub_223A218F0();
        goto LABEL_43;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0x8000000223A24A60;
    if (v10 != 0xD000000000000018)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v12 = 0x8000000223A24A80;
    if (v10 != 0xD000000000000021)
    {
      goto LABEL_42;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_42;
  }

  v13 = 1;
LABEL_43:

  return v13 & 1;
}

uint64_t sub_223A0B2B4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for OverloadOptions(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_name;
  v12 = *MEMORY[0x277CEF8A0];
  v13 = sub_223A20850();
  (*(*(v13 - 8) + 104))(v3 + v11, v12, v13);
  v14 = (v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_tailspinRequest);
  *v14 = sub_223A0D534;
  v14[1] = 0;
  v14[2] = sub_223A0D584;
  v14[3] = 0;
  v15 = OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_state;
  type metadata accessor for TailspinCaseState();
  v16 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4938, &unk_223A22B80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v16 + 16) = v17;
  *(v16 + 24) = 0;
  *(v16 + 32) = 1;
  *(v3 + v15) = v16;
  sub_223A20F90();
  v18 = *&a2;
  if (a3)
  {
    v19 = 0;
  }

  else
  {
    v19 = a1;
  }

  if (a3)
  {
    v18 = 0.0;
  }

  *(v3 + 16) = v19;
  *(v3 + 20) = (a3 | BYTE4(a1)) & 1;
  *(v3 + 24) = v18;
  if (qword_281333380 != -1)
  {
    swift_once();
  }

  v20 = *(qword_281335A60 + 24);

  sub_223A20F10();

  sub_223A0EACC(v10, v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_overloadOptions, type metadata accessor for OverloadOptions);
  return v3;
}

uint64_t sub_223A0B4DC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_223A20680();
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = *(v80 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v76 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = &v73 - v10;
  v11 = sub_223A20CA0();
  v79 = *(v11 - 8);
  v12 = *(v79 + 64);
  MEMORY[0x28223BE20](v11);
  v78 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OverloadOptions(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v19 = sub_223A20950();
  v20 = OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_overloadOptions;
  sub_223A0DE20(&v2[OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_overloadOptions], v17);
  v21 = v14[6];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  sub_223A205F0();
  sub_223A0ECF0(v17, type metadata accessor for OverloadOptions);
  if (v82 == 1)
  {
    v74 = v11;
    v22 = v17;
    v23 = v20;
    v24 = v14;
    v25 = a1;
    v26 = v3;
    v27 = v19;
    v28 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v19 = v27;
    v3 = v26;
    a1 = v25;
    v14 = v24;
    v20 = v23;
    v17 = v22;
    v29 = v74;
    if (sub_223A20940() & 1) != 0 || (v30 = v78, sub_223A20CE0(), v31 = sub_223A20C60(), (*(v79 + 8))(v30, v29), (v31))
    {
      v32 = sub_223A20FB0();
      v33 = sub_223A214C0();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        *(v34 + 4) = v19;
        v35 = "Ignoring overload: Message from sendSingleMessage. { reporterID=%lld }";
LABEL_24:
        v56 = v33;
        v57 = v32;
        v58 = v34;
        v59 = 12;
        goto LABEL_25;
      }

      goto LABEL_27;
    }
  }

  sub_223A0DE20(&v3[v20], v17);
  v36 = v14[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C98, &qword_223A239F0);
  sub_223A205F0();
  sub_223A0ECF0(v17, type metadata accessor for OverloadOptions);
  v37 = v82;
  v38 = sub_223A20C40();
  if (*(v38 + 16) && (v39 = sub_2239CDC74(0xD00000000000001ALL, 0x8000000223A25880), (v40 & 1) != 0))
  {
    v78 = v37;
    v79 = v19;
    v42 = v80;
    v41 = v81;
    v43 = v77;
    (*(v80 + 16))(v77, *(v38 + 56) + *(v80 + 72) * v39, v81);

    if ((*(v42 + 88))(v43, v41) == *MEMORY[0x277CEF840])
    {
      (*(v42 + 96))(v43, v41);
      v44 = *v43;
      v45 = v78;
      v19 = v79;
      if (v44 < v78)
      {
        v32 = sub_223A20FB0();
        v46 = sub_223A214C0();
        if (!os_log_type_enabled(v32, v46))
        {
          goto LABEL_27;
        }

        v34 = swift_slowAlloc();
        *v34 = 134218496;
        *(v34 + 4) = v44;
        *(v34 + 12) = 1024;
        *(v34 + 14) = v45;
        *(v34 + 18) = 2048;
        *(v34 + 20) = v19;
        v35 = "Ignoring overload: IO buffer size invalid { ioBufferSize=%lld, ioBufferSizeThreshold=%u, reporterID=%lld }";
LABEL_19:
        v56 = v46;
        v57 = v32;
        v58 = v34;
        v59 = 28;
LABEL_25:
        _os_log_impl(&dword_2239C7000, v57, v56, v35, v58, v59);
LABEL_26:
        MEMORY[0x223DF1300](v34, -1, -1);
        goto LABEL_27;
      }
    }

    else
    {
      (*(v42 + 8))(v43, v41);
      v19 = v79;
    }
  }

  else
  {
  }

  sub_223A0DE20(&v3[v20], v17);
  sub_223A205F0();
  sub_223A0ECF0(v17, type metadata accessor for OverloadOptions);
  v47 = v82;
  v48 = sub_223A20C40();
  if (*(v48 + 16) && (v49 = sub_2239CDC74(0x656C6379635F6F69, 0xE800000000000000), (v50 & 1) != 0))
  {
    v79 = v47;
    v52 = v80;
    v51 = v81;
    v53 = v76;
    (*(v80 + 16))(v76, *(v48 + 56) + *(v80 + 72) * v49, v81);

    if ((*(v52 + 88))(v53, v51) == *MEMORY[0x277CEF840])
    {
      (*(v52 + 96))(v53, v51);
      v54 = *v53;
      v55 = v79;
      if (v54 < v79)
      {
        v32 = sub_223A20FB0();
        v46 = sub_223A214C0();
        if (!os_log_type_enabled(v32, v46))
        {
          goto LABEL_27;
        }

        v34 = swift_slowAlloc();
        *v34 = 134218496;
        *(v34 + 4) = v54;
        *(v34 + 12) = 1024;
        *(v34 + 14) = v55;
        *(v34 + 18) = 2048;
        *(v34 + 20) = v19;
        v35 = "Ignoring overload: IO cycle invalid { ioCycle=%lld, ioCycleThreshold=%u, reporterID=%lld }";
        goto LABEL_19;
      }
    }

    else
    {
      (*(v52 + 8))(v53, v51);
    }
  }

  else
  {
  }

  if (sub_223A0BF4C(a1))
  {
    v32 = sub_223A20FB0();
    v33 = sub_223A214C0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      *(v34 + 4) = v19;
      v35 = "Ignoring overload: Overload occurs on explicitly ignored device. { reporterID=%lld }";
      goto LABEL_24;
    }

LABEL_27:

    return 0;
  }

  v61 = sub_223A0E404();
  if (v61)
  {
    v73 = v20;
    v74 = v14;
    v76 = a1;
    v77 = v61;
    v78 = v3;
    v79 = v19;
    v62 = (v61 + 32);
    v63 = *(v61 + 16);
    v80 = 0x8000000223A24AB0;
    v81 = 0x8000000223A24A80;
    while (1)
    {
      if (!v63)
      {

        v3 = v78;
        v19 = v79;
        v20 = v73;
        v14 = v74;
        goto LABEL_37;
      }

      if (*v62 > 5u)
      {
        break;
      }

      v64 = sub_223A218F0();

      ++v62;
      --v63;
      if (v64)
      {
        goto LABEL_43;
      }
    }

LABEL_43:
    v66 = v77;

    v32 = sub_223A20FB0();
    v67 = sub_223A214C0();

    if (!os_log_type_enabled(v32, v67))
    {

      goto LABEL_27;
    }

    v34 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v82 = v68;
    *v34 = 136315394;
    v69 = MEMORY[0x223DF0470](v66, &type metadata for HALOverloadCase.OverloadCause);
    v71 = v70;

    v72 = sub_2239E1910(v69, v71, &v82);

    *(v34 + 4) = v72;
    *(v34 + 12) = 2048;
    *(v34 + 14) = v79;
    _os_log_impl(&dword_2239C7000, v32, v67, "Ignoring overload: Overload cause list contains Stackshot { overloadCauses=%s, reporterID=%lld }", v34, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x223DF1300](v68, -1, -1);
    goto LABEL_26;
  }

LABEL_37:
  sub_223A0DE20(&v3[v20], v17);
  v65 = &v17[v14[9]];
  sub_223A205F0();
  sub_223A0ECF0(v17, type metadata accessor for OverloadOptions);
  if (v82 == 1 && sub_223A0E6C8())
  {
    v32 = sub_223A20FB0();
    v33 = sub_223A214C0();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_27;
    }

    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v19;
    v35 = "Ignoring overload: Client output is silent. { reporterID=%lld }";
    goto LABEL_24;
  }

  return 1;
}

uint64_t sub_223A0BF4C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OverloadOptions(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_223A20680();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (v69 - v14);
  v16 = sub_223A20C40();
  if (*(v16 + 16) && (v17 = sub_2239CDC74(0xD000000000000015, 0x8000000223A24B10), (v18 & 1) != 0))
  {
    (*(v9 + 16))(v15, *(v16 + 56) + *(v9 + 72) * v17, v8);

    if ((*(v9 + 88))(v15, v8) == *MEMORY[0x277CEF860])
    {
      v69[1] = a1;
      v70 = v13;
      (*(v9 + 96))(v15, v8);
      v19 = *v15;
      v20 = v15[1];
      v21 = sub_223A21260();
      v75 = v22;

      v74 = v2;
      sub_223A0DE20(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_overloadOptions, v7);
      v71 = v4;
      v23 = *(v4 + 28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CA8, &unk_223A23A00);
      sub_223A205F0();
      v72 = v7;
      sub_223A0ECF0(v7, type metadata accessor for OverloadOptions);
      v24 = sub_223A21260();
      v26 = v25;

      v78 = v24;
      v79 = v26;
      v76 = 44;
      v77 = 0xE100000000000000;
      sub_2239D1804();
      v27 = sub_223A21600();

      v73 = v27;
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = (v73 + 40);
        while (1)
        {
          v31 = *(v29 - 1);
          v30 = *v29;
          v78 = v21;
          v79 = v75;
          v76 = v31;
          v77 = v30;

          if (sub_223A21630())
          {
            break;
          }

          v29 += 2;
          if (!--v28)
          {
            goto LABEL_8;
          }
        }

        v50 = v73;

        v51 = sub_223A20FB0();
        v52 = sub_223A214C0();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v78 = v54;
          *v53 = 136315394;
          v55 = sub_2239E1910(v31, v30, &v78);

          *(v53 + 4) = v55;
          *(v53 + 12) = 2080;
          v56 = MEMORY[0x223DF0470](v50, MEMORY[0x277D837D0]);
          v58 = v57;

          v59 = sub_2239E1910(v56, v58, &v78);

          *(v53 + 14) = v59;
          _os_log_impl(&dword_2239C7000, v51, v52, "Ignoring overload: Ignored device was active. { inputDevice=%s, ignoredInputDevices=%s }", v53, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DF1300](v54, -1, -1);
          MEMORY[0x223DF1300](v53, -1, -1);
        }

        else
        {
        }

        return 1;
      }

LABEL_8:

      v2 = v74;
      v4 = v71;
      v7 = v72;
      v13 = v70;
    }

    else
    {
      (*(v9 + 8))(v15, v8);
    }
  }

  else
  {
  }

  v32 = sub_223A20C40();
  if (!*(v32 + 16))
  {
    goto LABEL_18;
  }

  v33 = sub_2239CDC74(0xD000000000000016, 0x8000000223A24B30);
  if ((v34 & 1) == 0)
  {
    goto LABEL_18;
  }

  (*(v9 + 16))(v13, *(v32 + 56) + *(v9 + 72) * v33, v8);

  if ((*(v9 + 88))(v13, v8) != *MEMORY[0x277CEF860])
  {
    (*(v9 + 8))(v13, v8);
    return 0;
  }

  (*(v9 + 96))(v13, v8);
  v35 = *v13;
  v36 = v13[1];
  v37 = sub_223A21260();
  v39 = v38;

  v74 = v2;
  sub_223A0DE20(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_overloadOptions, v7);
  v40 = *(v4 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CA8, &unk_223A23A00);
  sub_223A205F0();
  sub_223A0ECF0(v7, type metadata accessor for OverloadOptions);
  v41 = sub_223A21260();
  v43 = v42;

  v78 = v41;
  v79 = v43;
  v76 = 44;
  v77 = 0xE100000000000000;
  sub_2239D1804();
  v44 = sub_223A21600();

  v45 = *(v44 + 16);
  if (!v45)
  {
LABEL_17:

LABEL_18:

    return 0;
  }

  v46 = (v44 + 40);
  while (1)
  {
    v48 = *(v46 - 1);
    v47 = *v46;
    v78 = v37;
    v79 = v39;
    v76 = v48;
    v77 = v47;

    if (sub_223A21630())
    {
      break;
    }

    v46 += 2;
    if (!--v45)
    {
      goto LABEL_17;
    }
  }

  v60 = sub_223A20FB0();
  v61 = sub_223A214C0();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v78 = v63;
    *v62 = 136315394;
    v64 = sub_2239E1910(v48, v47, &v78);

    *(v62 + 4) = v64;
    *(v62 + 12) = 2080;
    v65 = MEMORY[0x223DF0470](v44, MEMORY[0x277D837D0]);
    v67 = v66;

    v68 = sub_2239E1910(v65, v67, &v78);

    *(v62 + 14) = v68;
    _os_log_impl(&dword_2239C7000, v60, v61, "Ignoring overload: Ignored device was active. { outputDevice=%s, ignoredOutputDevices=%s }", v62, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DF1300](v63, -1, -1);
    MEMORY[0x223DF1300](v62, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_223A0C79C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v58 = a1;
  v55 = a2;
  v52 = sub_223A20810();
  v50 = *(v52 - 8);
  v2 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_223A20350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CB0, &unk_223A23A30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v54 = &v45 - v11;
  v53 = type metadata accessor for HALOverloadCase.OverloadInfo(0);
  v12 = *(v53 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v53);
  v16 = (&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v49 = (&v45 - v17);
  v47 = sub_223A0CD84();
  sub_223A20D00();
  sub_223A21400();
  v18 = sub_223A213F0();
  v20 = v19;

  v46 = sub_223A20C30();
  v22 = v21;
  v23 = sub_223A20CF0();
  v25 = v24;
  v56 = v5;
  v57 = v4;
  v48 = *(v5 + 16);
  v48(v8, v58, v4);
  v26 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v26 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    goto LABEL_10;
  }

  v27 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v27 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v27 && (v28 = v23, (sub_223A202B0() & 1) != 0))
  {
    *v16 = v18;
    v16[1] = v20;
    if (v22)
    {
      v29 = v53;
      v30 = v46;
    }

    else
    {
      v30 = sub_223A20D30();
      v22 = v44;
      v29 = v53;
    }

    v16[2] = v30;
    v16[3] = v22;
    v16[4] = v28;
    v16[5] = v25;
    (*(v56 + 32))(v16 + *(v29 + 28), v8, v57);
    *(v16 + *(v29 + 32)) = v47;
    v32 = v54;
    sub_223A0EACC(v16, v54, type metadata accessor for HALOverloadCase.OverloadInfo);
    v31 = 0;
  }

  else
  {
LABEL_10:
    (*(v56 + 8))(v8, v57);

    v31 = 1;
    v29 = v53;
    v32 = v54;
  }

  (*(v12 + 56))(v32, v31, 1, v29);
  if ((*(v12 + 48))(v32, 1, v29) == 1)
  {
    sub_223A0EA64(v32);
    v33 = 1;
    v34 = v55;
  }

  else
  {
    v35 = v49;
    sub_223A0EACC(v32, v49, type metadata accessor for HALOverloadCase.OverloadInfo);
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_223A21700();

    v59 = 91;
    v60 = 0xE100000000000000;
    v36 = sub_223A208B0();
    MEMORY[0x223DF0390](v36);

    MEMORY[0x223DF0390](0xD000000000000019, 0x8000000223A25A30);
    MEMORY[0x223DF0390](v35[2], v35[3]);
    sub_223A0EB80(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BA8, &unk_223A23A20);
    v37 = *(v56 + 72);
    v38 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_223A23280;
    v48((v39 + v38), v58, v57);
    if (qword_27D0A47E8 != -1)
    {
      swift_once();
    }

    v40 = v52;
    v41 = __swift_project_value_buffer(v52, qword_27D0A4C60);
    (*(v50 + 16))(v51, v41, v40);
    v34 = v55;
    sub_223A20620();
    sub_223A0ECF0(v35, type metadata accessor for HALOverloadCase.OverloadInfo);
    v33 = 0;
  }

  v42 = sub_223A20630();
  return (*(*(v42 - 8) + 56))(v34, v33, 1, v42);
}

uint64_t sub_223A0CD84()
{
  v0 = sub_223A20680();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_223A20C40();
  if (*(v5 + 16))
  {
    v6 = sub_2239CDC74(0x5F656761705F6F69, 0xEE0073746C756166);
    if (v7)
    {
      (*(v1 + 16))(v4, *(v5 + 56) + *(v1 + 72) * v6, v0);

      if ((*(v1 + 88))(v4, v0) != *MEMORY[0x277CEF840])
      {
        (*(v1 + 8))(v4, v0);
        return 0;
      }

      (*(v1 + 96))(v4, v0);
      result = *v4;
      if ((*v4 & 0x8000000000000000) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  return 0;
}

uint64_t sub_223A0CF0C(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for HALOverloadCase.OverloadInfo(0) + 32)))
  {
    sub_223A21700();
    MEMORY[0x223DF0390](0xD000000000000014, 0x8000000223A25B30);
    v1 = sub_223A218E0();
    MEMORY[0x223DF0390](v1);

    MEMORY[0x223DF0390](0xD00000000000002DLL, 0x8000000223A25B50);
  }

  return 0;
}

void sub_223A0CFEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_223A20350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = [objc_opt_self() defaultWorkspace];
  if (v7)
  {
    v8 = v7;
    v18 = a2;
    v9 = sub_223A202F0();
    v10 = sub_223A211F0();
    sub_2239DC6E4(MEMORY[0x277D84F90]);
    v11 = sub_223A21100();

    v12 = [v8 operationToOpenResource:v9 usingApplication:v10 userInfo:v11];

    if (v12)
    {
      (*(v5 + 16))(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
      v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = v18;
      (*(v5 + 32))(v14 + v13, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      aBlock[4] = sub_223A0E9E0;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2239EC158;
      aBlock[3] = &block_descriptor_3;
      v15 = _Block_copy(aBlock);
      v16 = v12;

      [v16 setCompletionBlock_];
      _Block_release(v15);
    }

    [v12 start];
  }
}

uint64_t sub_223A0D290(uint64_t a1, uint64_t a2)
{
  v3 = sub_223A20350();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_223A20FC0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223A20F90();
  (*(v4 + 16))(v7, a2, v3);
  v13 = sub_223A20FB0();
  v14 = sub_223A21500();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = v8;
    v16 = v15;
    v17 = swift_slowAlloc();
    v25 = v9;
    v18 = v17;
    v27 = v17;
    *v16 = 136380675;
    v19 = sub_223A20310();
    v21 = v20;
    (*(v4 + 8))(v7, v3);
    v22 = sub_2239E1910(v19, v21, &v27);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_2239C7000, v13, v14, "Finished opening URL in the Files app. { tailspinPath=%{private}s }", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223DF1300](v18, -1, -1);
    MEMORY[0x223DF1300](v16, -1, -1);

    return (*(v25 + 8))(v12, v26);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_223A0D584@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_223A20350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = type metadata accessor for HALOverloadCase(0);
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  sub_223A20A10();
  sub_223A20A00();
  v10 = sub_223A20A20();
  return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
}

uint64_t sub_223A0D7A8()
{
  v0 = sub_223A20810();
  __swift_allocate_value_buffer(v0, qword_27D0A4C60);
  __swift_project_value_buffer(v0, qword_27D0A4C60);
  return sub_223A20800();
}

uint64_t sub_223A0D838()
{
  *v0;
  sub_223A21290();
}

uint64_t sub_223A0D960@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_223A0EB34();
  *a2 = result;
  return result;
}

void sub_223A0D990(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE700000000000000;
    v9 = 0x8000000223A24A20;
    v10 = 0xD000000000000015;
    if (v2 == 1)
    {
      v10 = 0xD000000000000014;
    }

    else
    {
      v9 = 0x8000000223A24A40;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x6E776F6E6B6E55;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x8000000223A24AB0;
    v4 = 0x6F68736B63617453;
    if (v2 == 5)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xE900000000000074;
    }

    v5 = 0x8000000223A24A60;
    v6 = 0xD000000000000021;
    if (v2 == 3)
    {
      v6 = 0xD000000000000018;
    }

    else
    {
      v5 = 0x8000000223A24A80;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_223A0DA84()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_name;
  v2 = sub_223A20850();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_tailspinRequest + 8);
  v4 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_tailspinRequest + 16);
  v5 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_tailspinRequest + 24);
  sub_2239E9D64(*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_tailspinRequest));
  sub_2239E9D64(v4);
  v6 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_state);

  sub_223A0ECF0(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_overloadOptions, type metadata accessor for OverloadOptions);
  v7 = OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_logger;
  v8 = sub_223A20FC0();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_223A0DBE8()
{
  result = sub_223A20850();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for OverloadOptions(319);
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_223A20FC0();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_223A0DD48@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_name;
  v4 = sub_223A20850();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_223A0DDC0()
{
  v1 = v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_tailspinRequest;
  v2 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_tailspinRequest);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_tailspinRequest + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_2239E9D54(v2);
  sub_2239E9D54(v4);
  return v2;
}

uint64_t sub_223A0DE20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverloadOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_223A0DE84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CC0, &qword_223A23A48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_223A0DF88(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B90, &qword_223A23740);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_223A0E0B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CA0, &qword_223A239F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_223A0E1A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CB8, &qword_223A23A40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_223A0E2D0()
{
  v0 = sub_223A20FC0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223A20F90();
  v5 = sub_223A20FB0();
  v6 = sub_223A21500();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2239C7000, v5, v6, "Successfully surfaced customer overload notification.", v7, 2u);
    MEMORY[0x223DF1300](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_223A0E404()
{
  v0 = sub_223A20680();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_223A20C40();
  if (!*(v5 + 16) || (v6 = sub_2239CDC74(0x6573756163, 0xE500000000000000), (v7 & 1) == 0))
  {

    return 0;
  }

  (*(v1 + 16))(v4, *(v5 + 56) + *(v1 + 72) * v6, v0);

  if ((*(v1 + 88))(v4, v0) != *MEMORY[0x277CEF860])
  {
    (*(v1 + 8))(v4, v0);
    return 0;
  }

  (*(v1 + 96))(v4, v0);
  v8 = *v4;
  v9 = v4[1];
  v27 = v8;
  v28 = v9;
  v25 = 44;
  v26 = 0xE100000000000000;
  sub_2239D1804();
  v10 = sub_223A21600();

  v12 = 0;
  v13 = *(v10 + 16);
  v14 = MEMORY[0x277D84F90];
LABEL_5:
  v15 = (v10 + 40 + 16 * v12);
  while (1)
  {
    if (v13 == v12)
    {

      return v14;
    }

    if (v12 >= *(v10 + 16))
    {
      break;
    }

    ++v12;
    v16 = v15 + 2;
    v17 = *(v15 - 1);
    v18 = *v15;

    v19 = sub_223A217E0();

    v15 = v16;
    if (v19 < 7)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_223A0E0B0(0, *(v14 + 16) + 1, 1, v14);
        v14 = result;
      }

      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v24 = v21 + 1;
        result = sub_223A0E0B0((v20 > 1), v21 + 1, 1, v14);
        v22 = v24;
        v14 = result;
      }

      *(v14 + 16) = v22;
      *(v14 + v21 + 32) = v19;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_223A0E6C8()
{
  v0 = sub_223A20680();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = (v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = (v21 - v6);
  v8 = sub_223A20C40();
  if (!*(v8 + 16))
  {
    goto LABEL_9;
  }

  v9 = sub_2239CDC74(0xD00000000000001FLL, 0x8000000223A258A0);
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

  v11 = *(v1 + 72);
  v12 = *(v8 + 56) + v11 * v9;
  v23 = *(v1 + 16);
  v23(v7, v12, v0);

  v13 = *(v1 + 88);
  v14 = v13(v7, v0);
  if (v14 != *MEMORY[0x277CEF840])
  {
    (*(v1 + 8))(v7, v0);
    return 0;
  }

  v22 = v14;
  v21[0] = *(v1 + 96);
  v21[1] = v1 + 96;
  (v21[0])(v7, v0);
  v15 = *v7;
  v16 = sub_223A20C40();
  if (!*(v16 + 16) || (v17 = sub_2239CDC74(0xD000000000000020, 0x8000000223A258C0), (v18 & 1) == 0))
  {
LABEL_9:

    return 0;
  }

  v23(v5, *(v16 + 56) + v17 * v11, v0);

  v19 = v13(v5, v0);
  if (v19 != v22)
  {
    (*(v1 + 8))(v5, v0);
    return 0;
  }

  (v21[0])(v5, v0);
  return v15 > 0 || *v5 == 1;
}

void sub_223A0E954()
{
  v1 = *(sub_223A20350() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_223A0CFEC(v0 + v2, v3);
}

uint64_t sub_223A0E9E0()
{
  v1 = *(sub_223A20350() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_223A0D290(v2, v3);
}

uint64_t sub_223A0EA64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CB0, &unk_223A23A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223A0EACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_223A0EB34()
{
  v0 = sub_223A217E0();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_223A0EB80(void *a1)
{
  v2 = sub_223A0CF0C(a1);
  v4 = v3;
  sub_223A21700();
  MEMORY[0x223DF0390](0x4954204555535349, 0xEC000000203A454DLL);
  MEMORY[0x223DF0390](*a1, a1[1]);
  MEMORY[0x223DF0390](0xD00000000000001BLL, 0x8000000223A25A90);
  v5 = sub_223A208B0();
  MEMORY[0x223DF0390](v5);

  MEMORY[0x223DF0390](0x7465642073617720, 0xEF202E6465746365);
  MEMORY[0x223DF0390](v2, v4);

  MEMORY[0x223DF0390](0xD000000000000052, 0x8000000223A25AB0);
  MEMORY[0x223DF0390](a1[4], a1[5]);
  MEMORY[0x223DF0390](0xD000000000000016, 0x8000000223A25B10);
  v6 = sub_223A16670();
  MEMORY[0x223DF0390](v6);

  return 0;
}

uint64_t sub_223A0ECF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_223A0ED78()
{
  result = sub_223A20350();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HALOverloadCase.OverloadCause(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HALOverloadCase.OverloadCause(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_223A0EF58()
{
  result = qword_27D0A4CD8;
  if (!qword_27D0A4CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4CD8);
  }

  return result;
}

uint64_t sub_223A0EFAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v22 = a1;
  v23 = a2;
  v2 = sub_223A20810();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_223A20C30();
  if (!v8)
  {
    v7 = sub_223A20D30();
  }

  v9 = v7;
  v10 = v8;
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_223A21700();

  v24 = 91;
  v25 = 0xE100000000000000;
  v11 = sub_223A208B0();
  MEMORY[0x223DF0390](v11);

  MEMORY[0x223DF0390](0xD00000000000001DLL, 0x8000000223A25BE0);
  MEMORY[0x223DF0390](v9, v10);

  v21[1] = v24;
  sub_223A0F6D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BA8, &unk_223A23A20);
  v12 = sub_223A20350();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_223A23280;
  (*(v13 + 16))(v16 + v15, v22, v12);
  if (qword_27D0A47F0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v2, qword_27D0A4CE0);
  (*(v3 + 16))(v6, v17, v2);
  v18 = v23;
  sub_223A20620();
  v19 = sub_223A20630();
  return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
}

uint64_t sub_223A0F2E8()
{
  v0 = sub_223A20810();
  __swift_allocate_value_buffer(v0, qword_27D0A4CE0);
  __swift_project_value_buffer(v0, qword_27D0A4CE0);
  return sub_223A20800();
}

uint64_t sub_223A0F360()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_name;
  v2 = sub_223A20850();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_tailspinRequest + 8);
  v4 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_tailspinRequest + 16);
  v5 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_tailspinRequest + 24);
  sub_2239E9D64(*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_tailspinRequest));
  sub_2239E9D64(v4);
  v6 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_state);

  v7 = OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_logger;
  v8 = sub_223A20FC0();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HALTimecodeIssueCase()
{
  result = qword_27D0A4D00;
  if (!qword_27D0A4D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A0F4CC()
{
  result = sub_223A20850();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_223A20FC0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_223A0F5FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_name;
  v4 = sub_223A20850();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_223A0F674()
{
  v1 = v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_tailspinRequest;
  v2 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_tailspinRequest);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_tailspinRequest + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_2239E9D54(v2);
  sub_2239E9D54(v4);
  return v2;
}

uint64_t sub_223A0F6D4()
{
  sub_223A21700();
  MEMORY[0x223DF0390](0x4954204555535349, 0xEC000000203A454DLL);
  sub_223A20D00();
  sub_223A21400();
  v0 = sub_223A213F0();
  v2 = v1;

  MEMORY[0x223DF0390](v0, v2);

  MEMORY[0x223DF0390](0xD000000000000018, 0x8000000223A25C30);
  v3 = sub_223A208B0();
  MEMORY[0x223DF0390](v3);

  MEMORY[0x223DF0390](0xD00000000000005DLL, 0x8000000223A25C50);
  v4 = sub_223A20CF0();
  MEMORY[0x223DF0390](v4);

  MEMORY[0x223DF0390](0xD000000000000016, 0x8000000223A25B10);
  v5 = sub_223A16670();
  MEMORY[0x223DF0390](v5);

  return 0;
}

uint64_t sub_223A0F840(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D18, "R;");
    v2 = sub_223A217C0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_2239E7EF4(0, &qword_2813326F8, 0x277CCABB0);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2239DA0A8(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2239DA0A8(v32, v33);
    v17 = *(v2 + 40);
    result = sub_223A21680();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_2239DA0A8(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

_BYTE *InferenceSummaryWorker.__allocating_init(with:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return InferenceSummaryWorker.init(with:)(a1);
}

Swift::Bool __swiftcall InferenceSummaryWorker.start()()
{
  swift_beginAccess();
  *(v0 + 16) = 1;
  return 1;
}

uint64_t InferenceSummaryWorker.workerConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t InferenceSummaryWorker.workerConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t InferenceSummaryWorker.neededPreviousFields.getter()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_neededPreviousFields;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t InferenceSummaryWorker.neededPreviousFields.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_neededPreviousFields;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t InferenceSummaryWorker.deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_neededPreviousFields);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_session));
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_logger;
  v5 = sub_223A20FC0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_2239D62FC(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_summaryState, type metadata accessor for InferenceSummaryState);
  return v0;
}

uint64_t sub_223A0FF20(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = a3;
  v51 = sub_223A20FC0();
  v7 = *(v51 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v51);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for CPUVoltageCalculator();
  v11 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v49 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_223A20680();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = a1;
  v55 = a1;
  v56 = a2;
  v53 = 95;
  v54 = 0xE100000000000000;
  MEMORY[0x223DF0390](*(v4 + 11), *(v4 + 12));
  MEMORY[0x223DF0390](95, 0xE100000000000000);
  sub_2239D1804();
  v18 = sub_223A21600();

  if (v18[2] == 2)
  {
    v20 = v18[4];
    v19 = v18[5];
    v21 = v18[6];
    v22 = v18[7];

    v23 = *(v4 + 1);

    *v4 = v20;
    *(v4 + 1) = v19;
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_223A21700();
    v24 = sub_223A21250();
    v26 = v25;

    v55 = v24;
    v56 = v26;
    MEMORY[0x223DF0390](0xD000000000000011, 0x8000000223A25E10);
    v28 = v55;
    v27 = v56;
    (*(v14 + 16))(v17, v50, v13);
    if ((*(v14 + 88))(v17, v13) == *MEMORY[0x277CEF860])
    {
      (*(v14 + 96))(v17, v13);
      v29 = *v17;
      v30 = v17[1];
      v31 = v48;
      v32 = v49;
      v33 = &v49[*(v48 + 20)];
      sub_223A20F70();
      v34 = *(v31 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B28, &qword_223A23468);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AC0, &qword_223A233C0);
      sub_223A10830();
      sub_223A20580();
      *v32 = v29;
      v32[1] = v30;
      v35 = v52;
      sub_2239FB7D4();
      if (v35)
      {
        sub_2239D62FC(v32, type metadata accessor for CPUVoltageCalculator);
      }

      else
      {
        v44 = *(v4 + 5);
        v45 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = *(v4 + 5);
        sub_223A1316C(v28, v27, isUniquelyReferenced_nonNull_native, v45);

        result = sub_2239D62FC(v32, type metadata accessor for CPUVoltageCalculator);
        *(v4 + 5) = v55;
      }
    }

    else
    {

      return (*(v14 + 8))(v17, v13);
    }
  }

  else
  {

    v38 = type metadata accessor for InferenceSummaryState(0);
    v39 = v51;
    (*(v7 + 16))(v10, &v4[*(v38 + 56)], v51);

    v40 = sub_223A20FB0();
    v41 = sub_223A214E0();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v55 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_2239E1910(v47, a2, &v55);
      _os_log_impl(&dword_2239C7000, v40, v41, "Invalid number of fields for input string %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x223DF1300](v43, -1, -1);
      MEMORY[0x223DF1300](v42, -1, -1);
    }

    return (*(v7 + 8))(v10, v39);
  }

  return result;
}

uint64_t sub_223A10484@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_2239D17A8((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_223A104F8()
{
  result = sub_223A20BC0();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_223A20FC0();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for InferenceSummaryState(319);
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_223A10670()
{
  sub_223A107E4(319, &qword_281333768);
  if (v0 <= 0x3F)
  {
    sub_223A10784();
    if (v1 <= 0x3F)
    {
      sub_223A20FC0();
      if (v2 <= 0x3F)
      {
        sub_223A107E4(319, &qword_281333760);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_223A10784()
{
  if (!qword_281333770)
  {
    v0 = sub_223A21180();
    if (!v1)
    {
      atomic_store(v0, &qword_281333770);
    }
  }
}

void sub_223A107E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_223A215D0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_223A10830()
{
  result = qword_281333728;
  if (!qword_281333728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0A4AC0, &qword_223A233C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281333728);
  }

  return result;
}

uint64_t sub_223A10894@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v2 = sub_223A20810();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_223A21700();

  v22 = 91;
  v23 = 0xE100000000000000;
  v7 = sub_223A208B0();
  MEMORY[0x223DF0390](v7);

  MEMORY[0x223DF0390](0xD000000000000018, 0x8000000223A25E80);
  v8 = sub_223A20C30();
  if (!v9)
  {
    v8 = sub_223A20D30();
  }

  MEMORY[0x223DF0390](v8);

  v19[1] = v22;
  sub_223A10F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BA8, &unk_223A23A20);
  v10 = sub_223A20350();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_223A23280;
  (*(v11 + 16))(v14 + v13, v20, v10);
  if (qword_27D0A47F8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v2, qword_27D0A4D20);
  (*(v3 + 16))(v6, v15, v2);
  v16 = v21;
  sub_223A20620();
  v17 = sub_223A20630();
  return (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
}

uint64_t sub_223A10BC8()
{
  v0 = sub_223A20810();
  __swift_allocate_value_buffer(v0, qword_27D0A4D20);
  __swift_project_value_buffer(v0, qword_27D0A4D20);
  return sub_223A20800();
}

uint64_t sub_223A10C4C()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_name;
  v2 = sub_223A20850();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_tailspinRequest + 8);
  v4 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_tailspinRequest + 16);
  v5 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_tailspinRequest + 24);
  sub_2239E9D64(*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_tailspinRequest));
  sub_2239E9D64(v4);
  v6 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_state);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PHASEIssueCase()
{
  result = qword_27D0A4D38;
  if (!qword_27D0A4D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A10D78()
{
  result = sub_223A20850();
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

uint64_t sub_223A10E44@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_name;
  v4 = sub_223A20850();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_223A10EBC()
{
  v1 = v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_tailspinRequest;
  v2 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_tailspinRequest);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_tailspinRequest + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_2239E9D54(v2);
  sub_2239E9D54(v4);
  return v2;
}

uint64_t sub_223A10F1C()
{
  sub_223A21700();
  MEMORY[0x223DF0390](0x4954204555535349, 0xEC000000203A454DLL);
  sub_223A20D00();
  sub_223A21400();
  v0 = sub_223A213F0();
  v2 = v1;

  MEMORY[0x223DF0390](v0, v2);

  MEMORY[0x223DF0390](0xD000000000000017, 0x8000000223A25ED0);
  v3 = sub_223A208B0();
  MEMORY[0x223DF0390](v3);

  MEMORY[0x223DF0390](0xD00000000000005DLL, 0x8000000223A25C50);
  v4 = sub_223A20CF0();
  MEMORY[0x223DF0390](v4);

  MEMORY[0x223DF0390](0xD000000000000016, 0x8000000223A25B10);
  v5 = sub_223A16670();
  MEMORY[0x223DF0390](v5);

  return 0;
}

uint64_t PowerLogWorker.__allocating_init(with:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return PowerLogWorker.init(with:)(a1);
}

Swift::Bool __swiftcall PowerLogWorker.start()()
{
  swift_beginAccess();
  *(v0 + 16) = 1;
  return 1;
}

Swift::Void __swiftcall PowerLogWorker.stop()()
{
  v1 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  if ((sub_223A20940() & 1) == 0)
  {
    sub_2239E2D20(1886352499, 0xE400000000000000);
  }

  swift_beginAccess();
  *(v0 + 16) = 0;
}

unint64_t sub_223A11188(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_rmsState;
  v11 = *(v6 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_rmsState);
  if (*(v11 + 16) <= 0 && *(v11 + 24) <= 0 && *(v11 + 32) < 1 || (*(v11 + 72) & 1) != 0)
  {

    v12 = sub_223A20FB0();
    v13 = sub_223A214E0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      v15 = v6[7];
      __swift_project_boxed_opaque_existential_1(v6 + 3, v6[6]);
      *(v14 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v12, v13, "Failed to build RMS message. { reporterID=%lld }", v14, 0xCu);
      MEMORY[0x223DF1300](v14, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    v16 = *(v11 + 64) + -10.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E8, &unk_223A22E10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_223A23D30;
    *(inited + 32) = 0x6D69547472617453;
    *(inited + 40) = 0xE900000000000065;
    v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v19 = sub_2239DC698();
    *(inited + 48) = v18;
    *(inited + 72) = v19;
    *(inited + 80) = 0x746163696C707041;
    v20 = MEMORY[0x277D837D0];
    *(inited + 88) = 0xEF656D614E6E6F69;
    *(inited + 96) = a1;
    *(inited + 104) = a2;
    *(inited + 120) = v20;
    *(inited + 128) = 0x736D5278616DLL;
    *(inited + 136) = 0xE600000000000000;
    LODWORD(v16) = *(*(v6 + v10) + 44);
    v21 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    LODWORD(v22) = LODWORD(v16);
    *(inited + 144) = [v21 initWithFloat_];
    *(inited + 168) = v19;
    *(inited + 176) = 0x736D526E696DLL;
    *(inited + 184) = 0xE600000000000000;
    LODWORD(v16) = *(*(v6 + v10) + 40);
    v23 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    LODWORD(v24) = LODWORD(v16);
    *(inited + 192) = [v23 initWithFloat_];
    *(inited + 216) = v19;
    *(inited + 224) = 0x65636E656C6973;
    *(inited + 232) = 0xE700000000000000;
    *(inited + 240) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(inited + 264) = v19;
    *(inited + 272) = 0x7465697571;
    *(inited + 280) = 0xE500000000000000;
    *(inited + 288) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(inited + 312) = v19;
    *(inited + 320) = 0x656C6269647561;
    *(inited + 328) = 0xE700000000000000;
    *(inited + 336) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(inited + 360) = v19;
    *(inited + 368) = 1701080942;
    *(inited + 376) = 0xE400000000000000;
    v25 = *(v6 + v10);
    v26 = *(v25 + 56);
    *(inited + 384) = *(v25 + 48);
    *(inited + 392) = v26;
    v27 = MEMORY[0x277D837D0];
    *(inited + 408) = MEMORY[0x277D837D0];
    *(inited + 416) = 6580592;
    *(inited + 424) = 0xE300000000000000;
    *(inited + 432) = a3;
    *(inited + 456) = v19;
    *(inited + 464) = 0x726574726F706572;
    *(inited + 472) = 0xEA00000000004449;
    v28 = v6[7];
    __swift_project_boxed_opaque_existential_1(v6 + 3, v6[6]);

    v29 = a3;
    *(inited + 480) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    *(inited + 504) = v19;
    *(inited + 512) = 0x6E6F73616572;
    *(inited + 520) = 0xE600000000000000;
    *(inited + 552) = v27;
    *(inited + 528) = a4;
    *(inited + 536) = a5;

    v30 = sub_2239DC6E4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48F0, &qword_223A22810);
    swift_arrayDestroy();
    return v30;
  }
}

uint64_t sub_223A11628()
{
  v1 = v0;
  v2 = sub_223A20680();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v48 - v9);
  MEMORY[0x28223BE20](v8);
  v12 = (&v48 - v11);
  v13 = sub_223A20C40();
  if (!*(v13 + 16))
  {
    goto LABEL_13;
  }

  v14 = sub_2239CDC74(7564658, 0xE300000000000000);
  if ((v15 & 1) == 0)
  {
    goto LABEL_13;
  }

  v16 = *(v13 + 56) + *(v3 + 72) * v14;
  v17 = *(v3 + 16);
  v54 = *(v3 + 72);
  v55 = v17;
  v17(v12, v16, v2);

  v18 = *(v3 + 88);
  v19 = v18(v12, v2);
  if (v19 != *MEMORY[0x277CEF860])
  {
    (*(v3 + 8))(v12, v2);
    goto LABEL_14;
  }

  v53 = v19;
  v20 = *(v3 + 96);
  v51 = v3 + 96;
  v52 = v18;
  v50 = v20;
  v20(v12, v2);
  v21 = *v12;
  v22 = v12[1];
  v49 = v21;
  v23 = sub_223A20C40();
  if (!*(v23 + 16) || (v24 = sub_2239CDC74(1801545072, 0xE400000000000000), (v25 & 1) == 0))
  {

    goto LABEL_13;
  }

  v55(v10, *(v23 + 56) + v24 * v54, v2);

  v26 = v52(v10, v2);
  if (v26 != v53)
  {

    (*(v3 + 8))(v10, v2);
    goto LABEL_14;
  }

  v50(v10, v2);
  v27 = *v10;
  v28 = v10[1];
  v29 = sub_223A11ED8(v49, v22);

  if ((v29 & 0x100000000) != 0)
  {
    goto LABEL_13;
  }

  v30 = sub_223A11ED8(v27, v28);

  if ((v30 & 0x100000000) != 0)
  {
    goto LABEL_14;
  }

  v32 = v29;
  if (*&v29 >= -110.0)
  {
    v33 = v1;
    if (*&v29 < -50.0)
    {
      v44 = *(v1 + 24);
      v33 = (v1 + 24);
      v36 = v44 + 10;
      if (!__OFADD__(v44, 10))
      {
        goto LABEL_32;
      }

      __break(1u);
    }

    v45 = v33[4];
    v33 += 4;
    v36 = v45 + 10;
    if (__OFADD__(v45, 10))
    {
      goto LABEL_41;
    }

    goto LABEL_32;
  }

  v33 = (v1 + 16);
  v34 = *(v1 + 16);
  v35 = __OFADD__(v34, 10);
  v36 = v34 + 10;
  if (v35)
  {
    __break(1u);
LABEL_13:

    goto LABEL_14;
  }

LABEL_32:
  v46 = v30;
  *v33 = v36;
  if (*(v1 + 40) <= *&v29)
  {
    v32 = *(v1 + 40);
  }

  if (*(v1 + 44) > *&v30)
  {
    v46 = *(v1 + 44);
  }

  *(v1 + 40) = v32;
  *(v1 + 44) = v46;
  if (*(v1 + 72))
  {
    sub_223A20D00();
  }

  else
  {
    v47 = *(v1 + 64);
  }

  *(v1 + 64) = v47;
  *(v1 + 72) = 0;
LABEL_14:
  v37 = sub_223A20C40();
  if (*(v37 + 16))
  {
    v38 = sub_2239CDC74(1701080942, 0xE400000000000000);
    if (v39)
    {
      (*(v3 + 16))(v7, *(v37 + 56) + *(v3 + 72) * v38, v2);

      if ((*(v3 + 88))(v7, v2) != *MEMORY[0x277CEF860])
      {
        result = (*(v3 + 8))(v7, v2);
        goto LABEL_19;
      }

      (*(v3 + 96))(v7, v2);
      v40 = v7[1];
      v41 = *(v1 + 56);
      *(v1 + 48) = *v7;
      *(v1 + 56) = v40;
    }
  }

LABEL_19:
  v42 = *(v1 + 80);
  v35 = __OFADD__(v42, 1);
  v43 = v42 + 1;
  if (!v35)
  {
    *(v1 + 80) = v43;
    return result;
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_223A11A94()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xFF7FFFFF7F7FFFFFLL;
  v1 = *(v0 + 56);
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;

  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  return result;
}

uint64_t PowerLogWorker.workerConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t PowerLogWorker.workerConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t PowerLogWorker.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_logger;
  v2 = sub_223A20FC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_rmsState);

  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_workerConfig;
  v5 = sub_223A20BC0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t type metadata accessor for PowerLogWorker()
{
  result = qword_281334218;
  if (!qword_281334218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A11DA8()
{
  result = sub_223A20FC0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_223A20BC0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_223A11ED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AF0, &qword_223A23430);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v36 - v7;
  v37 = a1;
  v38 = a2;
  sub_223A20570();
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_223A021FC();
  sub_223A02250();
  sub_223A12298();
  sub_223A214B0();
  v9 = *(v5 + 8);
  v9(v8, v4);
  v37 = v39;
  v38 = v40;
  sub_223A20570();
  sub_2239E4C38();
  v10 = sub_223A211B0();
  v9(v8, v4);

  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = 0;
    for (i = MEMORY[0x277D84F90]; ; *(i + 4 * v23 + 32) = v21)
    {
      v15 = (v10 + 56 + 32 * v13);
      do
      {
        if (v12 == v13)
        {
          v24 = *(i + 16);
          v25 = *(v10 + 16);

          if (v24 != v25)
          {
            goto LABEL_16;
          }

          v26 = *(i + 16);
          if (v26)
          {
            if (v26 <= 7)
            {
              v27 = 0;
              v28 = 0.0;
              goto LABEL_21;
            }

            v27 = v26 & 0x7FFFFFFFFFFFFFF8;
            v31 = i + 48;
            v28 = 0.0;
            v32 = v26 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v28 = (((((((v28 + COERCE_FLOAT(*(v31 - 16))) + COERCE_FLOAT(HIDWORD(*(v31 - 16)))) + COERCE_FLOAT(*(v31 - 8))) + COERCE_FLOAT(HIDWORD(*(v31 - 16)))) + COERCE_FLOAT(*v31)) + COERCE_FLOAT(HIDWORD(*v31))) + COERCE_FLOAT(*(v31 + 8))) + COERCE_FLOAT(HIDWORD(*v31));
              v31 += 32;
              v32 -= 8;
            }

            while (v32);
            if (v26 != v27)
            {
LABEL_21:
              v33 = v26 - v27;
              v34 = (i + 4 * v27 + 32);
              do
              {
                v35 = *v34++;
                v28 = v28 + v35;
                --v33;
              }

              while (v33);
            }
          }

          else
          {
            v28 = 0.0;
          }

          v30 = 0;
          v29 = COERCE_UNSIGNED_INT(v28 / v24);
          goto LABEL_24;
        }

        if (v13 >= *(v10 + 16))
        {
          __break(1u);
          return result;
        }

        ++v13;
        v16 = v15 + 4;
        v18 = *(v15 - 1);
        v17 = *v15;
        v20 = *(v15 - 3);
        v19 = *(v15 - 2);

        result = sub_223A21480();
        v15 = v16;
      }

      while ((result & 0x100000000) != 0);
      v21 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_223A0E1A4(0, *(i + 16) + 1, 1, i);
        i = result;
      }

      v23 = *(i + 16);
      v22 = *(i + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_223A0E1A4((v22 > 1), v23 + 1, 1, i);
        i = result;
      }

      *(i + 16) = v23 + 1;
    }
  }

LABEL_16:

  v29 = 0;
  v30 = 1;
LABEL_24:
  LOBYTE(v39) = v30;
  return v29 | (v30 << 32);
}

unint64_t sub_223A12298()
{
  result = qword_281333730;
  if (!qword_281333730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0A4AF0, &qword_223A23430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281333730);
  }

  return result;
}

uint64_t sub_223A122FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2239DA0A8(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_223A1301C(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_2239CDCEC(a1, &qword_27D0A49B0, &qword_223A22C68);
    sub_223A1289C(a2, a3, v10);

    return sub_2239CDCEC(v10, &qword_27D0A49B0, &qword_223A22C68);
  }

  return result;
}

void *RTCWorker.__allocating_init(with:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return RTCWorker.init(with:)(a1);
}

uint64_t sub_223A12408()
{
  v1 = (v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker____lazy_storage___timeFuzzer);
  if (*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker____lazy_storage___timeFuzzer + 25))
  {
    result = 0;
    *v1 = xmmword_223A23EC0;
    v1[2] = 0;
    *(v1 + 12) = 1;
  }

  else
  {
    v3 = v1[2];
    v4 = *(v1 + 2);
    result = *v1;
    v5 = *(v1 + 24);
  }

  return result;
}

uint64_t RTCWorker.workerConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_workerConfig;
  v4 = sub_223A20BC0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RTCWorker.isStarted.getter()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_isStarted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RTCWorker.summaryEvent.getter()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvent;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_223A12570()
{
  v0 = sub_223A20B90();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AA0, &unk_223A23390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A23280;
  (*(v1 + 104))(v4, *MEMORY[0x277CEF8E0], v0);
  v6 = sub_223A20B80();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  v9 = sub_2239D8250(inited);
  swift_setDeallocating();
  result = sub_223A13B14(inited + 32);
  qword_27D0A4E70 = v9;
  return result;
}

uint64_t RTCWorker.deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvent);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session));
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_logger;
  v5 = sub_223A20FC0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcConfig;
  v7 = sub_223A20DA0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvents);

  return v0;
}

uint64_t sub_223A127F4()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_isStarted;
  swift_beginAccess();
  return *(v1 + v2);
}

double sub_223A1283C(uint64_t a1)
{
  if ((v1[8] & 1) == 0)
  {
    return *v1;
  }

  sub_2239C9920(a1, 0.0, 120000.0);
  result = v2 / -1000.0 + 60.0;
  *v1 = result;
  v1[8] = 0;
  return result;
}

double sub_223A1289C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2239CDC74(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_223A096DC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_2239DA0A8((*(v12 + 56) + 32 * v9), a3);
    sub_223A12AB0(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_223A12940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2239CDC74(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2239DAF30();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_223A20680();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_223A12E30(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_223A20680();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_223A12AB0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_223A21650() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_223A21940();

      sub_223A21290();
      v14 = sub_223A21970();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_223A12C60(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_223A21650() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 2 * v6);
      sub_223A21940();
      sub_223A21960();
      result = sub_223A21970();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 2 * v3);
      v14 = (v12 + 2 * v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_223A203C0() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_223A12E30(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_223A21650() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_223A21940();

      sub_223A21290();
      v13 = sub_223A21970();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_223A20680() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_223A1301C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2239CDC74(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_223A096DC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_223A08DF4(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2239CDC74(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_223A21910();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_2239DA0A8(a1, v23);
  }

  else
  {
    sub_223A132F4(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_223A1316C(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2239CDC74(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_223A09410(v16, a3 & 1);
      v20 = *v5;
      result = sub_2239CDC74(a1, a2);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_223A21910();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_223A09AE8();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a4;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a1;
  v23[1] = a2;
  *(v22[7] + 8 * result) = a4;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

_OWORD *sub_223A132F4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2239DA0A8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_223A13360(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_2239DA0A8(a3, (a4[7] + 32 * a1));
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

uint64_t sub_223A133C8(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_223A13528(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_223A13764(v9, v4, v2);
  result = MEMORY[0x223DF1300](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_223A13528(uint64_t result, uint64_t a2, uint64_t a3)
{
  v26 = result;
  v27 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v30 = (v7 - 1) & v7;
LABEL_13:
    v28 = v9 | (v3 << 6);
    v12 = (*(a3 + 48) + 16 * v28);
    v14 = *v12;
    v13 = v12[1];
    v15 = qword_27D0A4800;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = qword_27D0A4E70;
    if (*(qword_27D0A4E70 + 16) && (v17 = *(qword_27D0A4E70 + 40), sub_223A21940(), sub_223A21290(), v18 = sub_223A21970(), v19 = -1 << *(v16 + 32), v20 = v18 & ~v19, ((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = (*(v16 + 48) + 16 * v20);
        v23 = *v22 == v14 && v22[1] == v13;
        if (v23 || (sub_223A218F0() & 1) != 0)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v7 = v30;
    }

    else
    {
LABEL_24:

      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v24 = __OFADD__(v27++, 1);
      v7 = v30;
      if (v24)
      {
        goto LABEL_29;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_2239D98A0(v26, a2, v27, a3);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v30 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void *sub_223A13764(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_223A13528(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_223A137DC(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_2239D9C20(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t sub_223A1387C()
{
  result = qword_281332778[0];
  if (!qword_281332778[0])
  {
    type metadata accessor for RTCWorker();
    result = swift_getWitnessTable();
    atomic_store(result, qword_281332778);
  }

  return result;
}

uint64_t type metadata accessor for RTCWorker()
{
  result = qword_281333878;
  if (!qword_281333878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A13928()
{
  result = sub_223A20BC0();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_223A20FC0();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_223A20DA0();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_223A13AB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223A13AD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_223A13B68()
{
  sub_223A21940();
  sub_223A21290();

  return sub_223A21970();
}

uint64_t sub_223A13C9C()
{
  sub_223A21940();
  sub_223A21290();

  return sub_223A21970();
}

uint64_t SessionSummaryWorker.__allocating_init(with:)(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return SessionSummaryWorker.init(with:)(a1);
}

Swift::Bool __swiftcall SessionSummaryWorker.start()()
{
  swift_beginAccess();
  *(v0 + 16) = 1;
  return 1;
}

uint64_t sub_223A13E5C()
{
  v0 = sub_223A20680();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = (&v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (&v55 - v7);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v55 - v10);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v55 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v55 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = (&v55 - v18);
  v20 = sub_223A20C40();
  if (!*(v20 + 16) || (v21 = sub_2239CDC74(0x656C6379635F6F69, 0xE800000000000000), (v22 & 1) == 0))
  {
  }

  v23 = *(v20 + 56);
  v61 = *(v1 + 72);
  v62 = *(v1 + 16);
  v63 = v1 + 16;
  v62(v19, v23 + v61 * v21, v0);

  v60 = *(v1 + 88);
  v24 = v60(v19, v0);
  if (v24 != *MEMORY[0x277CEF840])
  {
    return (*(v1 + 8))(v19, v0);
  }

  v56 = v24;
  v25 = *(v1 + 96);
  v58 = v1 + 96;
  v59 = v1 + 88;
  v57 = v25;
  result = (v25)(v19, v0);
  if (*v19 < 3)
  {
    return result;
  }

  v27 = sub_223A20C40();
  if (*(v27 + 16) && (v28 = sub_2239CDC74(0xD000000000000015, 0x8000000223A24B10), (v29 & 1) != 0))
  {
    v62(v17, *(v27 + 56) + v28 * v61, v0);

    if (v60(v17, v0) == *MEMORY[0x277CEF860])
    {
      v57(v17, v0);
      v30 = *v17;
      v31 = v17[1];
      v55 = v30;
      v67 = v30;
      v68 = v31;
      v65 = 0x676E696B776148;
      v66 = 0xE700000000000000;
      sub_2239D1804();
      if (sub_223A21630())
      {
      }

      v67 = v55;
      v68 = v31;
      v65 = 5263169;
      v66 = 0xE300000000000000;
      if (sub_223A21630())
      {
      }

      v67 = v55;
      v68 = v31;
      v65 = 0x72656B63696C46;
      v66 = 0xE700000000000000;
      v54 = sub_223A21630();

      if (v54)
      {
        return result;
      }
    }

    else
    {
      (*(v1 + 8))(v17, v0);
    }
  }

  else
  {
  }

  v32 = sub_223A20C40();
  if (*(v32 + 16) && (v33 = sub_2239CDC74(0xD000000000000016, 0x8000000223A24B30), (v34 & 1) != 0))
  {
    v62(v14, *(v32 + 56) + v33 * v61, v0);

    if (v60(v14, v0) == *MEMORY[0x277CEF860])
    {
      v57(v14, v0);
      v36 = *v14;
      v35 = v14[1];
      v67 = v36;
      v68 = v35;
      v65 = 0x726F746175746341;
      v66 = 0xE800000000000000;
      sub_2239D1804();
      if (sub_223A21630())
      {
      }

      v67 = v36;
      v68 = v35;
      v65 = 0x6E65676F6C6148;
      v66 = 0xE700000000000000;
      v53 = sub_223A21630();

      if (v53)
      {
        return result;
      }
    }

    else
    {
      (*(v1 + 8))(v14, v0);
    }
  }

  else
  {
  }

  v37 = sub_223A20C40();
  if (*(v37 + 16) && (v38 = sub_2239CDC74(0x61776572705F7369, 0xED0000676E696D72), (v39 & 1) != 0))
  {
    v62(v11, *(v37 + 56) + v38 * v61, v0);

    if (v60(v11, v0) == *MEMORY[0x277CEF848])
    {
      result = (v57)(v11, v0);
      if (*v11)
      {
        return result;
      }
    }

    else
    {
      (*(v1 + 8))(v11, v0);
    }
  }

  else
  {
  }

  v40 = sub_223A20C40();
  if (*(v40 + 16) && (v41 = sub_2239CDC74(0x766F6365725F7369, 0xED0000676E697265), (v42 & 1) != 0))
  {
    v62(v8, *(v40 + 56) + v41 * v61, v0);

    if (v60(v8, v0) == *MEMORY[0x277CEF848])
    {
      result = (v57)(v8, v0);
      if (*v8)
      {
        return result;
      }
    }

    else
    {
      result = (*(v1 + 8))(v8, v0);
    }
  }

  else
  {
  }

  v43 = *(v64 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_audibleOverloadCount);
  v44 = __CFADD__(v43, 1);
  v45 = v43 + 1;
  if (v44)
  {
    __break(1u);
LABEL_53:
    __break(1u);
    return result;
  }

  *(v64 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_audibleOverloadCount) = v45;
  v46 = sub_223A20C40();
  if (!*(v46 + 16))
  {
  }

  v47 = sub_2239CDC74(0x5F656761705F6F69, 0xEE0073746C756166);
  if ((v48 & 1) == 0)
  {
  }

  v62(v5, *(v46 + 56) + v47 * v61, v0);

  v49 = v60(v5, v0);
  if (v49 != v56)
  {
    return (*(v1 + 8))(v5, v0);
  }

  result = (v57)(v5, v0);
  v50 = *v5;
  if (*v5 >= 1)
  {
    v51 = *(v64 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_audiblePageFaultCount);
    v44 = __CFADD__(v51, v50);
    v52 = v51 + v50;
    if (!v44)
    {
      *(v64 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_audiblePageFaultCount) = v52;
      return result;
    }

    goto LABEL_53;
  }

  return result;
}

uint64_t SessionSummaryWorker.SessionSummaryKeys.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x656C6379635F6F69;
    if (v1 != 1)
    {
      v5 = 0x5F656761705F6F69;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x79745F6575737369;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (v1 != 5)
    {
      v2 = 0xD000000000000016;
    }

    v3 = 0x61776572705F7369;
    if (v1 != 3)
    {
      v3 = 0x766F6365725F7369;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t SessionSummaryWorker.summaryEvent.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t SessionSummaryWorker.workerConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t SessionSummaryWorker.workerConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t SessionSummaryWorker.neededPreviousFields.getter()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_neededPreviousFields;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t SessionSummaryWorker.neededPreviousFields.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_neededPreviousFields;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

AudioAnalyticsExternal::SessionSummaryWorker::SessionSummaryKeys_optional __swiftcall SessionSummaryWorker.SessionSummaryKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223A217E0();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_223A14B1C()
{
  if (*v0 > 2u)
  {
    *v0;
  }

  *v0;
  sub_223A21290();
}

void sub_223A14C5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v9 = 0xEA00000000006570;
    v10 = 0xE800000000000000;
    v11 = 0x656C6379635F6F69;
    if (v2 != 1)
    {
      v11 = 0x5F656761705F6F69;
      v10 = 0xEE0073746C756166;
    }

    v12 = v2 == 0;
    if (*v1)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0x79745F6575737369;
    }

    if (!v12)
    {
      v9 = v10;
    }

    *a1 = v13;
    a1[1] = v9;
  }

  else
  {
    v3 = 0xD000000000000015;
    v4 = 0x8000000223A24B10;
    if (v2 != 5)
    {
      v3 = 0xD000000000000016;
      v4 = 0x8000000223A24B30;
    }

    v5 = 0x61776572705F7369;
    v6 = 0xED0000676E696D72;
    if (v2 != 3)
    {
      v5 = 0x766F6365725F7369;
      v6 = 0xED0000676E697265;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    if (*v1 <= 4u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    *a1 = v7;
    a1[1] = v8;
  }
}

uint64_t SessionSummaryWorker.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_workerConfig;
  v3 = sub_223A20BC0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_neededPreviousFields);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_session));
  v5 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_logger;
  v6 = sub_223A20FC0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

unint64_t sub_223A14E28()
{
  result = qword_27D0A4D50;
  if (!qword_27D0A4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4D50);
  }

  return result;
}

uint64_t type metadata accessor for SessionSummaryWorker()
{
  result = qword_281333CD8;
  if (!qword_281333CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A14ED0()
{
  result = sub_223A20BC0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_223A20FC0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_223A15018@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v74 = *MEMORY[0x277D85DE8];
  v5 = sub_223A20810();
  v60 = *(v5 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v5);
  v61 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D98, &qword_223A24278);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  v12 = sub_223A20350();
  v63 = *(v12 - 8);
  v13 = *(v63 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v70 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  MEMORY[0x28223BE20](v16);
  v58 = &v53 - v19;
  v59 = a1;
  v20 = sub_223A20C30();
  v62 = v5;
  if (!v21)
  {
    v20 = sub_223A20D30();
  }

  v22 = v20;
  v23 = v21;
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_223A21700();

  v72 = 91;
  v73 = 0xE100000000000000;
  v24 = sub_223A208B0();
  MEMORY[0x223DF0390](v24);

  MEMORY[0x223DF0390](0xD000000000000026, 0x8000000223A26490);
  MEMORY[0x223DF0390](v22, v23);

  v25 = v72;
  v56 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BA8, &unk_223A23A20);
  v26 = v63;
  v27 = *(v63 + 72);
  v28 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_223A23280;
  v30 = *(v26 + 16);
  v66 = v28;
  v67 = v30;
  v68 = v26 + 16;
  v30((v29 + v28), v69, v12);
  v72 = v29;
  if (qword_27D0A4808 != -1)
  {
LABEL_33:
    swift_once();
  }

  v31 = __swift_project_value_buffer(v8, qword_27D0A4D58);
  sub_223A15D0C(v31, v11);
  v32 = (*(v26 + 48))(v11, 1, v12);
  v57 = v25;
  if (v32 == 1)
  {
    sub_223A15D7C(v11);
    goto LABEL_29;
  }

  v65 = v27;
  v55 = a3;
  v69 = *(v26 + 32);
  v69(v58, v11, v12);
  v27 = [objc_opt_self() defaultManager];
  v33 = sub_223A202F0();
  v71 = 0;
  v34 = [v27 contentsOfDirectoryAtURL:v33 includingPropertiesForKeys:0 options:4 error:&v71];

  v35 = v71;
  if (v34)
  {
    a3 = sub_223A21380();
    v36 = v35;

    v64 = *(a3 + 16);
    if (v64)
    {
      v25 = 0;
      v8 = a3 + v66;
      v54 = (v63 + 8);
      v11 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v25 >= *(a3 + 16))
        {
          __break(1u);
          goto LABEL_33;
        }

        v67(v18, v8, v12);
        sub_223A202D0();
        v26 = v37;
        v38 = sub_223A21250();
        v40 = v39;

        if (v38 == 6709603 && v40 == 0xE300000000000000)
        {
          break;
        }

        if ((sub_223A218F0() & 1) != 0 || v38 == 0x6E6970736C696174 && v40 == 0xE800000000000000)
        {
          break;
        }

        v27 = sub_223A218F0();

        if (v27)
        {
          goto LABEL_16;
        }

        (*v54)(v18, v12);
        v43 = v65;
LABEL_21:
        ++v25;
        v8 += v43;
        if (v64 == v25)
        {
          goto LABEL_27;
        }
      }

LABEL_16:
      v69(v70, v18, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_223A02E84(0, *(v11 + 2) + 1, 1);
        v11 = v71;
      }

      v26 = *(v11 + 2);
      v42 = *(v11 + 3);
      v27 = v26 + 1;
      if (v26 >= v42 >> 1)
      {
        sub_223A02E84(v42 > 1, v26 + 1, 1);
        v11 = v71;
      }

      *(v11 + 2) = v27;
      v43 = v65;
      v69(&v11[v66 + v26 * v65], v70, v12);
      goto LABEL_21;
    }

    v11 = MEMORY[0x277D84F90];
LABEL_27:

    v26 = v63;
  }

  else
  {
    v44 = v71;
    v45 = sub_223A202A0();

    swift_willThrow();
    v11 = MEMORY[0x277D84F90];
  }

  sub_223A15F50(v11);
  (*(v26 + 8))(v58, v12);
  a3 = v55;
LABEL_29:
  v47 = v61;
  v46 = v62;
  v48 = v60;
  sub_223A15DE4();
  if (qword_27D0A4810 != -1)
  {
    swift_once();
  }

  v49 = __swift_project_value_buffer(v46, qword_27D0A4D70);
  (*(v48 + 16))(v47, v49, v46);
  sub_223A20620();
  v50 = sub_223A20630();
  result = (*(*(v50 - 8) + 56))(a3, 0, 1, v50);
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_223A157F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D98, &qword_223A24278);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = sub_223A202C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v0, qword_27D0A4D58);
  v9 = __swift_project_value_buffer(v0, qword_27D0A4D58);
  (*(v5 + 104))(v8, *MEMORY[0x277CC91C0], v4);
  v10 = sub_223A20350();
  v11 = *(*(v10 - 8) + 56);
  v11(v3, 1, 1, v10);
  sub_223A20320();
  return (v11)(v9, 0, 1, v10);
}

uint64_t sub_223A159CC()
{
  v0 = sub_223A20810();
  __swift_allocate_value_buffer(v0, qword_27D0A4D70);
  __swift_project_value_buffer(v0, qword_27D0A4D70);
  return sub_223A20800();
}

uint64_t sub_223A15A44()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_name;
  v2 = sub_223A20850();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_tailspinRequest + 8);
  v4 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_tailspinRequest + 16);
  v5 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_tailspinRequest + 24);
  sub_2239E9D64(*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_tailspinRequest));
  sub_2239E9D64(v4);
  v6 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_state);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SiriTTSCase()
{
  result = qword_27D0A4D88;
  if (!qword_27D0A4D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A15B70()
{
  result = sub_223A20850();
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

uint64_t sub_223A15C34@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_name;
  v4 = sub_223A20850();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_223A15CAC()
{
  v1 = v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_tailspinRequest;
  v2 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_tailspinRequest);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_tailspinRequest + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_2239E9D54(v2);
  sub_2239E9D54(v4);
  return v2;
}

uint64_t sub_223A15D0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D98, &qword_223A24278);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223A15D7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D98, &qword_223A24278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223A15DE4()
{
  sub_223A21700();
  MEMORY[0x223DF0390](0x4954204555535349, 0xEC000000203A454DLL);
  sub_223A20D00();
  sub_223A21400();
  v0 = sub_223A213F0();
  v2 = v1;

  MEMORY[0x223DF0390](v0, v2);

  MEMORY[0x223DF0390](0xD000000000000025, 0x8000000223A26510);
  v3 = sub_223A208B0();
  MEMORY[0x223DF0390](v3);

  MEMORY[0x223DF0390](0xD00000000000005DLL, 0x8000000223A25C50);
  v4 = sub_223A20CF0();
  MEMORY[0x223DF0390](v4);

  MEMORY[0x223DF0390](0xD000000000000016, 0x8000000223A25B10);
  v5 = sub_223A16670();
  MEMORY[0x223DF0390](v5);

  return 0;
}

uint64_t sub_223A15F7C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
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
  v10 = *v3;
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
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *SummaryDecoratorWorker.__allocating_init(with:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return SummaryDecoratorWorker.init(with:)(a1);
}

Swift::Bool __swiftcall SummaryDecoratorWorker.start()()
{
  swift_beginAccess();
  *(v0 + 16) = 1;
  return 1;
}

uint64_t SummaryDecoratorWorker.summaryEvent.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t SummaryDecoratorWorker.workerConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t SummaryDecoratorWorker.workerConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t SummaryDecoratorWorker.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_workerConfig;
  v3 = sub_223A20BC0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_session));
  v4 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_config);

  v5 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_summaryDecoratorStates);

  v6 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_logger;
  v7 = sub_223A20FC0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t sub_223A16444(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SummaryDecoratorWorker()
{
  result = qword_281333998;
  if (!qword_281333998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A164E0()
{
  result = sub_223A20BC0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_223A20FC0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_223A16604()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_223A16670()
{
  v0 = MEMORY[0x223DEF9B0]();
  sub_223A208A0();
  v1 = sub_223A208E0();
  v3 = v2;
  v4 = sub_223A20890();
  sub_223A21700();
  MEMORY[0x223DF0390](0xD000000000000011, 0x8000000223A26640);
  if (v0)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v0)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x223DF0390](v5, v6);

  MEMORY[0x223DF0390](0xD000000000000010, 0x8000000223A26660);
  MEMORY[0x223DF0390](v1, v3);

  MEMORY[0x223DF0390](0x776F5020776F4C0ALL, 0xEC000000203A7265);
  if (v4)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v4)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x223DF0390](v7, v8);

  return 0;
}

uint64_t sub_223A167D0()
{
  v0 = type metadata accessor for TailspinManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_223A16810();
  qword_281335A60 = result;
  return result;
}

uint64_t sub_223A16810()
{
  v1 = v0;
  v67 = sub_223A21520();
  v2 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v66 = v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_223A21540();
  v4 = *(v63 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v63);
  v65 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_223A21090();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for OverloadOptions(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TailspinOptions(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(aBlock) = 0;
  sub_223A20610();
  v18 = v14[7];
  LOBYTE(aBlock) = 1;
  sub_223A20610();
  v19 = v14[8];
  LOBYTE(aBlock) = 0;
  sub_223A20610();
  v20 = v14[9];
  v17[v20] = sub_223A20E90() & 1;
  v21 = v14[10];
  v17[v21] = sub_223A20E20() & 1;
  v22 = v14[11];
  LOBYTE(aBlock) = 0;
  sub_223A20610();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DC0, &qword_223A245B0);
  v24 = *(v23 + 52);
  v25 = (*(v23 + 48) + 3) & 0x1FFFFFFFCLL;
  v26 = swift_allocObject();
  *(v26 + ((*(*v26 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v27 = MEMORY[0x277D841D0];
  sub_223A19A8C(v17, v26 + *(*v26 + *MEMORY[0x277D841D0] + 16), type metadata accessor for TailspinOptions);
  *(v1 + 16) = v26;
  sub_223A1AAA0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DC8, &qword_223A245B8);
  v29 = *(v28 + 52);
  v30 = (*(v28 + 48) + 3) & 0x1FFFFFFFCLL;
  v31 = swift_allocObject();
  *(v31 + ((*(*v31 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_223A19A8C(v12, v31 + *(*v31 + *v27 + 16), type metadata accessor for OverloadOptions);
  *(v1 + 24) = v31;
  type metadata accessor for TailspinStatus();
  swift_allocObject();
  *(v1 + 32) = sub_223A19FC4();
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  v60[1] = sub_2239E7EF4(0, &qword_281332718, 0x277D85C78);
  sub_223A21060();
  v61 = *MEMORY[0x277D85268];
  v32 = *(v4 + 104);
  v62 = v4 + 104;
  v64 = v32;
  v33 = v65;
  v32(v65);
  aBlock = MEMORY[0x277D84F90];
  v60[0] = sub_223A19AF4(&qword_281332720, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4818, &qword_223A224B0);
  sub_2239C9B30(&qword_281332738, &qword_27D0A4818, &qword_223A224B0);
  sub_223A21640();
  *(v1 + 56) = sub_223A21570();
  sub_223A21060();
  v64(v33, v61, v63);
  aBlock = MEMORY[0x277D84F90];
  sub_223A21640();
  *(v1 + 64) = sub_223A21570();
  sub_223A21470();
  *(v1 + 72) = v34;
  sub_223A21470();
  *(v1 + 80) = v35;
  sub_223A1945C();
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_defaultsChangedToken) = 0;
  sub_223A20F90();
  v36 = OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_fileManager;
  *(v1 + v36) = [objc_opt_self() defaultManager];
  v37 = OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_tailspinDumpOutputOptions;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DD0, &unk_223A24A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A22B70;
  v39 = *MEMORY[0x277D82CC0];
  *(inited + 32) = sub_223A21220();
  *(inited + 40) = v40;
  sub_2239E7EF4(0, &qword_2813326F8, 0x277CCABB0);
  *(inited + 48) = sub_223A21580();
  v41 = *MEMORY[0x277D82D18];
  *(inited + 56) = sub_223A21220();
  *(inited + 64) = v42;
  *(inited + 72) = sub_223A21580();
  v43 = sub_223A0A14C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DD8, &unk_223A245C0);
  swift_arrayDestroy();
  *(v1 + v37) = v43;
  v44 = OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_tailspin;
  v45 = type metadata accessor for VerboseTailspin();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  *(v1 + v44) = sub_223A1F548();
  v48 = OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_periodicTailspinVerificationClosure;
  sub_223A20930();
  sub_223A21420();
  *(v1 + v48) = sub_223A20910();
  v49 = *(v1 + 32);
  sub_223A19AF4(&qword_281333370, type metadata accessor for TailspinManager);
  v50 = *(v49 + 16);

  sub_223A20870();

  v51 = *(v1 + 64);
  v52 = swift_allocObject();
  *(v52 + 16) = sub_223A19B54;
  *(v52 + 24) = v1;
  v72 = sub_223A19B58;
  v73 = v52;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v70 = sub_2239CA2AC;
  v71 = &block_descriptor_30;
  v53 = _Block_copy(&aBlock);

  dispatch_sync(v51, v53);
  _Block_release(v53);
  LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();

  if (v51)
  {
    __break(1u);
  }

  else
  {
    v55 = *(v1 + 64);
    v56 = swift_allocObject();
    swift_weakInit();
    v72 = sub_223A19B3C;
    v73 = v56;
    aBlock = MEMORY[0x277D85DD0];
    v69 = 1107296256;
    v70 = sub_223A176A8;
    v71 = &block_descriptor_36_0;
    v57 = _Block_copy(&aBlock);
    v58 = v55;

    v59 = OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_defaultsChangedToken;
    swift_beginAccess();
    notify_register_dispatch("com.apple.coreaudio.audioanalytics.tailspin.defaultsChanged", (v1 + v59), v58, v57);
    swift_endAccess();
    _Block_release(v57);

    return v1;
  }

  return result;
}

uint64_t sub_223A17274()
{
  v0 = sub_223A21040();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_223A21090();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_223A20FC0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v30 = v5;
    v31 = v1;
    sub_223A20F90();
    v17 = sub_223A20FB0();
    v18 = sub_223A214D0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v29 = v9;
      v20 = v4;
      v21 = v0;
      v22 = v6;
      v23 = v19;
      *v19 = 0;
      _os_log_impl(&dword_2239C7000, v17, v18, "Tailspin Defaults Changed Notification received. Re-reading user defaults.", v19, 2u);
      v24 = v23;
      v6 = v22;
      v0 = v21;
      v4 = v20;
      v9 = v29;
      MEMORY[0x223DF1300](v24, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    sub_2239CA2D4();
    v25 = *(v16 + 32);

    v26 = sub_2239C9DF4();

    if (v26)
    {
      v29 = *(v16 + 56);
      aBlock[4] = sub_223A19B6C;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2239EC158;
      aBlock[3] = &block_descriptor_39;
      v27 = _Block_copy(aBlock);

      sub_223A21050();
      v32 = MEMORY[0x277D84F90];
      sub_223A19AF4(&qword_27D0A48C8, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48D0, &qword_223A22BE0);
      sub_2239C9B30(&qword_27D0A48D8, &qword_27D0A48D0, &qword_223A22BE0);
      sub_223A21640();
      MEMORY[0x223DF0640](0, v9, v4, v27);
      _Block_release(v27);
      (*(v31 + 8))(v4, v0);
      (*(v6 + 8))(v9, v30);
    }
  }

  return result;
}

uint64_t sub_223A176A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_223A176FC()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_defaultsChangedToken;
  swift_beginAccess();
  notify_cancel(*(v0 + v1));
  v2 = *(v0 + 16);

  v3 = *(v0 + 24);

  v4 = *(v0 + 32);

  v5 = OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_tailspinDirectory;
  v6 = sub_223A20350();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_logger;
  v8 = sub_223A20FC0();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  v9 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_tailspinDumpOutputOptions);

  v10 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_tailspin);

  v11 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_periodicTailspinVerificationClosure);

  return v0;
}

uint64_t sub_223A17830()
{
  sub_223A176FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TailspinManager()
{
  result = qword_281333360;
  if (!qword_281333360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A178DC()
{
  result = sub_223A20350();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_223A20FC0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_223A17A10(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, void (*a7)(uint64_t, uint64_t), uint64_t a8, uint64_t a9, char *a10, uint64_t a11)
{
  v80 = a7;
  v81 = a8;
  v79 = a6;
  v78 = a5;
  v15 = a10;
  v83 = a9;
  v84 = a11;
  v16 = sub_223A21040();
  v88 = *(v16 - 8);
  v17 = *(v88 + 64);
  MEMORY[0x28223BE20](v16);
  v87 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_223A21090();
  v86 = *(v19 - 8);
  v20 = *(v86 + 64);
  MEMORY[0x28223BE20](v19);
  v85 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D98, &qword_223A24278);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v75 - v24;
  v26 = sub_223A20350();
  v27 = *(v26 - 8);
  v89 = v26;
  v90 = v27;
  isa = v27[8].isa;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v75 - v32;
  v34 = *(a1 + 40);
  if (*(a1 + 48))
  {
    v35 = 0.0;
  }

  else
  {
    v35 = *(a1 + 40);
  }

  v82 = a2;
  sub_223A20D00();
  v37 = v35 - v36;
  if (v37 <= 0.0)
  {
    v77 = v19;
    v41 = *(a1 + 16);
    swift_getKeyPath();

    sub_223A20F20();

    v42 = LOBYTE(aBlock[0]);
    if ((sub_223A208C0() & 1) != 0 && v42)
    {
      notify_post("com.apple.coreaudio.audiocapturer.notification");
      v43 = sub_223A20FB0();
      v44 = sub_223A214E0();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v76 = a10;
        v46 = v33;
        v47 = v16;
        v48 = v45;
        *v45 = 0;
        _os_log_impl(&dword_2239C7000, v43, v44, "Overload detected - audio capturer notification posted.", v45, 2u);
        v49 = v48;
        v16 = v47;
        v33 = v46;
        v15 = v76;
        MEMORY[0x223DF1300](v49, -1, -1);
      }
    }

    sub_223A18324(a3, a4, v25);
    v51 = v89;
    v50 = v90;
    if ((v90[6].isa)(v25, 1, v89) == 1)
    {
      sub_2239CDCEC(v25, &qword_27D0A4D98, &qword_223A24278);
      sub_223A21410();
      *(a1 + 40) = v52 + *(a1 + 80);
      *(a1 + 48) = 0;
    }

    else
    {
      (v50[4].isa)(v33, v25, v51);
      v53 = sub_223A20FB0();
      v54 = sub_223A21500();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_2239C7000, v53, v54, "Dropped tailspin.", v55, 2u);
        MEMORY[0x223DF1300](v55, -1, -1);
      }

      sub_223A21410();
      *(a1 + 40) = v56 + *(a1 + 72);
      *(a1 + 48) = 0;
      notify_post("com.apple.coreaudio.audioanalytics.tailspin.dropped-tailspin");
      v57 = *(a1 + 16);
      swift_getKeyPath();

      sub_223A20F20();

      if (LOBYTE(aBlock[0]) == 1)
      {
        v58 = v33;
        v59 = v90;
        v60 = v90[2].isa;
        v76 = v58;
        (v60)(v31);
        v61 = sub_223A20FB0();
        v62 = sub_223A21500();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          aBlock[0] = v64;
          *v63 = 136380675;
          v65 = sub_223A20310();
          v75 = v16;
          v67 = v66;
          (v59[1].isa)(v31, v89);
          v68 = sub_2239E1910(v65, v67, aBlock);
          v16 = v75;

          *(v63 + 4) = v68;
          _os_log_impl(&dword_2239C7000, v61, v62, "Submitting tailspin via diagnostic request. { path=%{private}s }", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v64);
          MEMORY[0x223DF1300](v64, -1, -1);
          MEMORY[0x223DF1300](v63, -1, -1);
        }

        else
        {

          (v59[1].isa)(v31, v51);
        }

        v33 = v76;
        sub_223A18CFC();
      }

      v69 = *(a1 + 16);
      swift_getKeyPath();

      sub_223A20F20();

      if (aBlock[0] & 1) == 0 && (sub_223A18FD0(v78, v79, v80, v81, v82, v33))
      {
        notify_post("com.apple.coreaudio.audioanalytics.tailspin.surfaced-notification");
      }

      v70 = swift_allocObject();
      v71 = v84;
      *(v70 + 16) = v15;
      *(v70 + 24) = v71;
      aBlock[4] = sub_2239CAA60;
      aBlock[5] = v70;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2239EC158;
      aBlock[3] = &block_descriptor_4;
      v72 = _Block_copy(aBlock);

      v73 = v85;
      sub_223A21050();
      v91 = MEMORY[0x277D84F90];
      sub_223A19AF4(&qword_27D0A48C8, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48D0, &qword_223A22BE0);
      sub_2239C9B30(&qword_27D0A48D8, &qword_27D0A48D0, &qword_223A22BE0);
      v74 = v87;
      sub_223A21640();
      MEMORY[0x223DF0640](0, v73, v74, v72);
      _Block_release(v72);
      (*(v88 + 8))(v74, v16);
      (*(v86 + 8))(v73, v77);
      (v90[1].isa)(v33, v89);
    }
  }

  else
  {
    v90 = sub_223A20FB0();
    v38 = sub_223A21500();
    if (os_log_type_enabled(v90, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = v37;
      _os_log_impl(&dword_2239C7000, v90, v38, "Not dropping tailspin: Issue occurred before latest tailspin dump. { lateness=%f }", v39, 0xCu);
      MEMORY[0x223DF1300](v39, -1, -1);
    }

    v40 = v90;
  }
}

uint64_t sub_223A18324@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v79 = a1;
  v80 = a2;
  v84 = a3;
  v87[2] = *MEMORY[0x277D85DE8];
  v5 = sub_223A20E00();
  v77 = *(v5 - 8);
  v78 = v5;
  v6 = *(v77 + 64);
  MEMORY[0x28223BE20](v5);
  v75 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_223A20E10();
  v74 = *(v76 - 8);
  v8 = *(v74 + 64);
  MEMORY[0x28223BE20](v76);
  v73 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_223A21010();
  v82 = *(v10 - 8);
  v83 = v10;
  v11 = *(v82 + 8);
  MEMORY[0x28223BE20](v10);
  v81 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_223A202C0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_223A20350();
  v85 = *(v18 - 8);
  v86 = v18;
  v19 = v85[8];
  v20 = MEMORY[0x28223BE20](v18);
  v72 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v72 - v22;
  v24 = *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_fileManager);
  v25 = sub_223A202F0();
  sub_223A20ED0();
  type metadata accessor for FileAttributeKey(0);
  sub_223A19AF4(&qword_27D0A4918, type metadata accessor for FileAttributeKey);
  v26 = sub_223A21100();

  v87[0] = 0;
  LODWORD(v24) = [v24 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:v26 error:v87];

  v27 = v87[0];
  if (v24)
  {
    v87[0] = v79;
    v87[1] = v80;
    (*(v14 + 104))(v17, *MEMORY[0x277CC91D8], v13);
    sub_2239D1804();
    v28 = v27;
    sub_223A20330();
    (*(v14 + 8))(v17, v13);
    v29 = sub_223A20310();
    v30 = v81;
    v31 = MEMORY[0x223DF0100](v29);
    MEMORY[0x28223BE20](v31);
    *(&v72 - 2) = 0x20000000002;
    *(&v72 - 2) = 16777654;
    sub_223A21000();
    v32 = v4;
    (*(v82 + 1))(v30, v83);
    LODWORD(v83) = v87[0];
    v48 = v85;
    v47 = v86;
    v49 = v85[2];
    v50 = v72;
    v82 = v23;
    v79 = v49;
    v80 = v85 + 2;
    v49(v72, v23, v86);
    v51 = sub_223A20FB0();
    v52 = sub_223A21500();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = v32;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v87[0] = v55;
      *v54 = 136380675;
      v56 = sub_223A20310();
      v58 = v57;
      v81 = v85[1];
      (v81)(v50, v86);
      v59 = sub_2239E1910(v56, v58, v87);
      v48 = v85;

      *(v54 + 4) = v59;
      _os_log_impl(&dword_2239C7000, v51, v52, "Dropping tailspin using tailspin_dump_output api. { path=%{private}s }", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      v60 = v55;
      v47 = v86;
      MEMORY[0x223DF1300](v60, -1, -1);
      v61 = v54;
      v32 = v53;
      MEMORY[0x223DF1300](v61, -1, -1);
    }

    else
    {

      v81 = v48[1];
      (v81)(v50, v47);
    }

    v62 = v74;
    v63 = v73;
    v64 = v76;
    (*(v74 + 104))(v73, *MEMORY[0x277CEFA18], v76);
    sub_223A20DF0();
    sub_223A20DC0();
    sub_223A20DD0();
    sub_223A20DE0();
    v65 = v75;
    sub_223A20DB0();
    sub_223A20BA0();
    (*(v77 + 8))(v65, v78);
    (*(v62 + 8))(v63, v64);
    v66 = *(v32 + OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_tailspin);
    v67 = sub_223A1EFB8();
    sub_223A0F840(v67);

    v68 = sub_223A21100();

    LODWORD(v66) = tailspin_dump_output_with_options_sync();

    if (v66)
    {
      v69 = v84;
      v70 = v82;
      (v79)(v84, v82, v47);
      v71 = 0;
    }

    else
    {
      v71 = 1;
      v69 = v84;
      v70 = v82;
    }

    (v48[7])(v69, v71, 1, v47);
    sub_223A196D8();
    result = (v81)(v70, v47);
  }

  else
  {
    v33 = v87[0];
    v34 = sub_223A202A0();

    swift_willThrow();
    v36 = v85;
    v35 = v86;
    v37 = v34;
    v38 = sub_223A20FB0();
    v39 = sub_223A214E0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v87[0] = v41;
      *v40 = 136380675;
      swift_getErrorValue();
      v42 = sub_223A21920();
      v44 = sub_2239E1910(v42, v43, v87);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_2239C7000, v38, v39, "TailspinManager failed to drop tailspin. { error=%{private}s }", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x223DF1300](v41, -1, -1);
      MEMORY[0x223DF1300](v40, -1, -1);
    }

    else
    {
    }

    result = (v36[7])(v84, 1, 1, v35);
  }

  v46 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_223A18C94@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for TailspinOptions(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  result = sub_223A205F0();
  *a1 = v4;
  return result;
}

void sub_223A18CFC()
{
  v10 = *MEMORY[0x277D85DE8];
  sub_223A20C30();
  if (!v0)
  {
    sub_223A20D30();
  }

  v1 = sub_223A20C10();
  v2 = sub_223A211F0();
  v3 = sub_223A211F0();
  v4 = sub_223A211F0();

  sub_2239D6C54(v1);

  v5 = sub_223A21100();

  v6 = sub_223A211F0();
  sub_223A20300();
  v7 = sub_223A211F0();

  v9 = 0;
  DRSubmitLog();

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_223A18FD0(void (*a1)(uint64_t, uint64_t), uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32[2] = a4;
  v33 = a5;
  v34 = a6;
  v32[3] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DA8, &qword_223A24568);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v32 - v10;
  v12 = sub_223A20A20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DB0, &unk_223A24570);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v32 - v19;
  v21 = sub_223A20630();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_223A208C0())
  {
    if (a1)
    {
      v26 = a1;

      if ((sub_223A20690() & 1) == 0)
      {
        v27 = sub_223A20FB0();
        v28 = sub_223A214E0();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          v30 = "TapToRadarKit is not available.";
          goto LABEL_12;
        }

LABEL_13:
        sub_2239E9D64(v26);

        return 0;
      }

      a1(v33, v34);
      if ((*(v22 + 48))(v20, 1, v21) == 1)
      {
        sub_2239CDCEC(v20, &qword_27D0A4DB0, &unk_223A24570);
        v27 = sub_223A20FB0();
        v28 = sub_223A214E0();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          v30 = "RadarDraft object is nil. Not surfacing notification.";
LABEL_12:
          _os_log_impl(&dword_2239C7000, v27, v28, v30, v29, 2u);
          MEMORY[0x223DF1300](v29, -1, -1);
          goto LABEL_13;
        }

        goto LABEL_13;
      }

      (*(v22 + 32))(v25, v20, v21);
      sub_223A20B50();
      sub_223A20B40();
      sub_223A20B30();
      sub_2239E9D64(a1);

      (*(v22 + 8))(v25, v21);
    }
  }

  else if (a3)
  {

    a3(v33, v34);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_2239E9D64(a3);
      sub_2239CDCEC(v11, &qword_27D0A4DA8, &qword_223A24568);
      return 0;
    }

    (*(v13 + 32))(v16, v11, v12);
    sub_223A20B50();
    sub_223A20B40();
    sub_223A20B20();
    sub_2239E9D64(a3);

    (*(v13 + 8))(v16, v12);
  }

  return 1;
}

uint64_t sub_223A1945C()
{
  v0 = sub_223A202C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_223A20350();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_223A208C0())
  {

    return MEMORY[0x2821423F8]();
  }

  else
  {
    v13 = [objc_opt_self() defaultManager];
    v10 = NSTemporaryDirectory();
    sub_223A21220();

    sub_223A202E0();

    v14 = 0x6E6970736C696154;
    v15 = 0xE900000000000073;
    (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
    sub_2239D1804();
    sub_223A20340();

    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_223A196CC(uint64_t result)
{
  if (result)
  {
    return sub_2239C9B84();
  }

  return result;
}

uint64_t sub_223A196D8()
{
  v0 = sub_223A20FC0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_223A20FF0();
  if ((result & 0x100000000) != 0)
  {
    LODWORD(v18) = result;
    v6 = result;
    sub_223A199C8();
    swift_willThrowTypedImpl();
    v7 = swift_allocError();
    *v8 = v6;
    sub_223A20F90();
    v9 = v7;
    v10 = sub_223A20FB0();
    v11 = sub_223A214E0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136380675;
      swift_getErrorValue();
      v14 = sub_223A21920();
      v16 = sub_2239E1910(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_2239C7000, v10, v11, "Failed to close file descriptor. { error=%{private}s }", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DF1300](v13, -1, -1);
      MEMORY[0x223DF1300](v12, -1, -1);
    }

    else
    {
    }

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_223A1990C@<X0>(_DWORD *a1@<X8>)
{
  result = sub_223A20FE0();
  if ((result & 0x100000000) != 0)
  {
    v3 = result;
    sub_223A199C8();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v4 = v3;
  }

  else
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_223A19994@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 20);
  v4 = *(v1 + 24) | (*(v1 + 26) << 16);
  v5 = *(v1 + 27);
  return sub_223A1990C(a1);
}

unint64_t sub_223A199C8()
{
  result = qword_27D0A4DB8;
  if (!qword_27D0A4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4DB8);
  }

  return result;
}

uint64_t sub_223A19A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_223A19AF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_223A19B70(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  sub_223A20A80();
  sub_223A20A90();
  sub_223A20A70();

  v3 = *(v1 + 32);
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v5));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  sub_223A205C0();
  os_unfair_lock_unlock((v3 + v5));
}

char *sub_223A19D10()
{
  result = sub_223A19D30();
  qword_2813336D8 = result;
  return result;
}

char *sub_223A19D30()
{
  v3 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AA0, &unk_223A23390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A22B70;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x8000000223A26A20;
  *(inited + 48) = 0xD000000000000019;
  *(inited + 56) = 0x8000000223A26A40;
  result = sub_2239E1804(1, 3, 1, inited);
  *(result + 2) = 3;
  *(result + 8) = 0xD000000000000010;
  *(result + 9) = 0x8000000223A26A60;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static TailspinKeys.all.getter()
{
  if (qword_2813336D0 != -1)
  {
    swift_once();
  }
}

uint64_t getEnumTagSinglePayload for TailspinKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TailspinKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}