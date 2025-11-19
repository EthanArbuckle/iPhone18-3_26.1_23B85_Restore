char *sub_21B22E1C8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

uint64_t sub_21B22E2D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = *(v1 + 112);
  v91 = *(v1 + 96);
  v92 = v4;
  v5 = *(v1 + 16);
  v6 = *(v1 + 48);
  v87 = *(v1 + 32);
  v88 = v6;
  v7 = *(v1 + 48);
  v8 = *(v1 + 80);
  v89 = *(v1 + 64);
  v90 = v8;
  v9 = *(v1 + 16);
  v86[0] = *v1;
  v86[1] = v9;
  v10 = *(v1 + 112);
  v83 = v91;
  v84 = v10;
  v79 = v87;
  v80 = v7;
  v81 = v89;
  v82 = v3;
  v93 = *(v1 + 128);
  v11 = v93;
  v73 = v91;
  v12 = v92;
  v85 = *(v1 + 128);
  v77 = v86[0];
  v78 = v5;
  v13 = sub_21B2D026C();
  v94[6] = v91;
  v94[7] = v84;
  v95 = v85;
  v94[2] = v87;
  v94[3] = v80;
  v94[4] = v89;
  v94[5] = v82;
  v94[0] = v86[0];
  v94[1] = v78;
  sub_21B2D0468(v86, v76);
  sub_21B233734(v94);
  v75 = v2;
  v96 = v13;
  *(v2 + 120) = v13;
  v14 = v11;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_90;
  }

  for (i = v11; ; i = result)
  {
    v18 = *(i + 16);
    v17 = *(i + 24);
    v19 = v75;
    v20 = v96;
    if (v18 >= v17 >> 1)
    {
      result = sub_21B22E2C4((v17 > 1), v18 + 1, 1, i);
      v21 = v12;
      v19 = v75;
      i = result;
      v20 = v96;
    }

    else
    {
      v21 = v12;
    }

    v22 = BYTE8(v88);
    v14 = BYTE9(v88);
    v23 = BYTE10(v88);
    v24 = BYTE11(v88);
    v25 = BYTE12(v88);
    v26 = *(&v89 + 1);
    v12 = v89;
    v27 = v90;
    *(i + 16) = v18 + 1;
    *(i + 8 * v18 + 32) = v27;
    *(v19 + 128) = i;
    *(v19 + 88) = 0;
    if (v27 == v26)
    {
      v28 = 0;
      v14 = *(i + 16);
      if (v14)
      {
        goto LABEL_73;
      }

      goto LABEL_78;
    }

    v29 = v20 - 1;
    result = __OFSUB__(v20, 1);
    v30 = v22;
LABEL_12:
    v28 = 0;
    v31 = v21 * v20;
    v32 = (v21 * v20) >> 64 != (v21 * v20) >> 63;
LABEL_13:
    v33 = 0;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v34 = 0;
          ++v27;
LABEL_15:
          v35 = *(v12 + v27 - 1);
          if (((v35 == 34) & v14) != 1)
          {
            break;
          }

          v33 = v33 ^ 1;
          if (v26 == v27)
          {
            goto LABEL_30;
          }
        }

        if (((v25 == v35) & v23) == 1)
        {
          while (v26 != v27)
          {
            v34 ^= 1u;
            ++v27;
            if ((v34 & 1) == 0)
            {
              goto LABEL_15;
            }
          }

LABEL_30:
          v51 = v28;
          *(v19 + 80) = v26;
          v27 = v26;
          if ((v33 & 1) == 0)
          {
            goto LABEL_31;
          }

LABEL_67:
          v52 = v21;
          sub_21B27A934();
          swift_allocError();
          *v53 = v52;
          *(v53 + 8) = v51;
          *(v53 + 24) = 0;
          *(v53 + 32) = 0;
          *(v53 + 16) = 0;
          v54 = 2;
          goto LABEL_84;
        }

        if ((v33 & 1) == 0)
        {
          break;
        }

        v33 = 1;
        if (v26 == v27)
        {
          v51 = v28;
          *(v19 + 80) = v26;
          goto LABEL_67;
        }
      }

      if (v24 == v35)
      {
        *(v19 + 80) = v27;
        v42 = __OFADD__(v28++, 1);
        if (v42)
        {
          goto LABEL_97;
        }

        *(v19 + 88) = v28;
        v44 = *(i + 16);
        v43 = *(i + 24);
        v45 = v44 + 1;
        if (v44 >= v43 >> 1)
        {
          v63 = v30;
          v65 = result;
          v62 = v31;
          v71 = v21;
          v67 = v22;
          v69 = v24;
          v59 = v28;
          v60 = *(i + 16);
          v61 = v32;
          v46 = sub_21B22E2C4((v43 > 1), v44 + 1, 1, i);
          v28 = v59;
          v44 = v60;
          v32 = v61;
          v31 = v62;
          v22 = v67;
          v24 = v69;
          v21 = v71;
          v19 = v75;
          i = v46;
          v30 = v63;
          result = v65;
          v20 = v96;
        }

        *(i + 16) = v45;
        *(i + 8 * v44 + 32) = v27;
        goto LABEL_45;
      }

      if (v35 == 13)
      {
        break;
      }

      if (v35 == 10)
      {
        v51 = v28;
LABEL_55:
        *(v19 + 80) = v27;
        goto LABEL_31;
      }

      v33 = 0;
      if (v26 == v27)
      {
        v51 = v28;
        v27 = v26;
        goto LABEL_55;
      }
    }

    *(v19 + 80) = v27;
    if (v27 >= v26)
    {
      v51 = v28;
    }

    else
    {
      v33 = *(v12 + v27);
      v51 = v28;
      if (v33 == 10)
      {
        ++v27;
        goto LABEL_55;
      }
    }

LABEL_31:
    if (v30)
    {
      break;
    }

    v30 = 0;
    if ((result & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    result = sub_21B22E2C4(0, *(v14 + 16) + 1, 1, v14);
  }

  if (v32)
  {
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if ((v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_86;
  }

  v33 = *(i + 16);
  if (v31 >= v33)
  {
    goto LABEL_87;
  }

  if (v51)
  {
    goto LABEL_58;
  }

  v36 = *(i + 32 + 8 * v31);
  v37 = v27 - v36;
  if (v27 < v36)
  {
    goto LABEL_88;
  }

  if (v27 == v36)
  {
LABEL_44:
    v28 = 0;
    *(i + 32 + 8 * v33 - 8) = v27;
    v30 = v22;
LABEL_45:
    *(v19 + 128) = i;
    if (v27 != v26)
    {
      goto LABEL_13;
    }

LABEL_72:
    v14 = *(i + 16);
    if (v14)
    {
LABEL_73:
      v55 = *(i + 24 + 8 * v14);
      if (v55 >= 1 && *(v73 + v55 - 1) == v24)
      {
        v33 = *(i + 24);
        v25 = v14 + 1;
        if (v14 < v33 >> 1)
        {
          goto LABEL_76;
        }

        goto LABEL_95;
      }
    }

LABEL_78:
    if (!v28)
    {
      goto LABEL_81;
    }

    v33 = v20 - 1;
    if (__OFSUB__(v20, 1))
    {
      goto LABEL_93;
    }

    if (v28 == v33)
    {
LABEL_81:
      v56 = *(v19 + 112);
      *a1 = *(v19 + 96);
      *(a1 + 16) = v56;
      *(a1 + 32) = i;
      return result;
    }

    v14 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_94;
    }

    goto LABEL_83;
  }

  v38 = (v12 + v36);
  while (1)
  {
    v39 = *v38++;
    v40 = (1 << v39) & 0x100002600;
    if (v39 > 0x20 || v40 == 0)
    {
      break;
    }

    if (!--v37)
    {
      goto LABEL_44;
    }
  }

  v51 = 0;
LABEL_58:
  v30 = v22;
  if (result)
  {
    goto LABEL_89;
  }

LABEL_59:
  if (v51 != v29)
  {
    v14 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
      goto LABEL_71;
    }

LABEL_83:
    v57 = v21;
    sub_21B27A934();
    swift_allocError();
    *v53 = v57;
    *(v53 + 8) = v14;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0;
    *(v53 + 16) = v96;
    v54 = 3;
LABEL_84:
    *(v53 + 40) = v54;
    return swift_willThrow();
  }

  v42 = __OFADD__(v21++, 1);
  if (!v42)
  {
    *(v19 + 112) = v21;
    *(v19 + 88) = 0;
    v48 = *(i + 16);
    v47 = *(i + 24);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      v64 = v30;
      v66 = result;
      v72 = v21;
      v68 = v22;
      v70 = v24;
      v50 = sub_21B22E2C4((v47 > 1), v49, 1, i);
      v49 = v48 + 1;
      v22 = v68;
      v24 = v70;
      v21 = v72;
      v19 = v75;
      i = v50;
      v30 = v64;
      result = v66;
      v20 = v96;
    }

    *(i + 16) = v49;
    *(i + 8 * v48 + 32) = v27;
    *(v19 + 128) = i;
    if (v27 == v26)
    {
LABEL_71:
      v28 = 0;
      goto LABEL_72;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  v58 = v21;
  result = sub_21B22E2C4((v33 > 1), v25, 1, i);
  v21 = v58;
  v19 = v75;
  i = result;
LABEL_76:
  *(i + 16) = v25;
  *(i + 8 * v14 + 32) = v26;
  *(v19 + 128) = i;
  if (!__OFADD__(v21, 1))
  {
    *(v19 + 112) = v21 + 1;
    *(v19 + 88) = 0;
    goto LABEL_81;
  }

  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

uint64_t sub_21B22E8E4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  result = swift_beginAccess();
  v7 = *(v5 + 16);
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = *(v7 + 8);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v13 = *(v12 + 16);
    if (v13)
    {
      if (*v13 < v9)
      {
        sub_21B2B3534(v9, 1);
      }

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  result = swift_beginAccess();
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = *v14;
    if (*v14 >= v9)
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
      v16 = swift_allocObject();
      v17 = *(v12 + 24);
      sub_21B2AEFEC(v14, v15, &v19);
      *(v16 + 16) = v19;

      *v2 = v16;
      v12 = v16;
LABEL_14:
      swift_beginAccess();
      v18 = *(v12 + 24);
      return sub_21B22EEB8(a1, a2, *(v12 + 16));
    }

    if (v15 + 0x4000000000000000 >= 0)
    {
      if (2 * v15 <= v9)
      {
        v15 = v9;
      }

      else
      {
        v15 *= 2;
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21B22EA68(uint64_t a1, uint64_t a2)
{
  v5 = sub_21B34AD44();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_21B22F054(a1, a2);
  v7 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_21B2318E8(0, *(v7 + 2) + 1, 1, v7);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_21B2318E8((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v7[v9 + 32] = 0;
  *v2 = v7;
  sub_21B34AD34();
  return sub_21B34ACD4();
}

uint64_t sub_21B22EBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B23094C(a1, a2);
  v6 = *(a3 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = 0;
  v8 = (result + v5);
  if (!result)
  {
    v8 = 0;
  }

LABEL_7:
  v9 = 0;
  v10 = *(a3 + 32 + 8 * v7++);
  v11 = *(v10 + 16);
  v12 = v10 + 32;
  v13 = result;
  while (1)
  {
    if (v9 == v11)
    {
      v14 = 0;
      v15 = v11;
      if (!v13)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }

    if (v9 >= v11)
    {
      break;
    }

    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_21;
    }

    v14 = *(v12 + v9);
    if (!v13)
    {
LABEL_5:
      if (v9 == v11)
      {
        return 1;
      }

LABEL_6:
      if (v7 == v6)
      {
        return 0;
      }

      goto LABEL_7;
    }

LABEL_14:
    if (v13 == v8)
    {
      goto LABEL_5;
    }

    if (v9 != v11)
    {
      v16 = *v13++;
      v9 = v15;
      if (v14 == v16)
      {
        continue;
      }
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21B22EC70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21B23472C(&v21, a1, a2, &qword_27CD7E158, &unk_21B3526B0, sub_21B25DFE0, sub_21B2FD5CC);
  v6 = v5;
  result = sub_21B2348E0(v2 + 216, v2 + 288);
  if (v4 == v6)
  {
LABEL_2:
    v8 = v21;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E158, &unk_21B3526B0);
    v20 = &off_282CAA128;
    v17 = v8;
    v18 = v22;
    sub_21B2339B4(&v17, v3 + 288);
    return 1;
  }

  else
  {
    if (v6 >= v4)
    {
      v9 = *(v2 + 256);
      v10 = *(v2 + 80);
      v23 = *(v2 + 64);
      v24 = v10;
      v11 = *(v2 + 104);
      v25 = *(v2 + 96);
      while (v4 < v6)
      {
        v12 = sub_21B23087C(v4, v9);
        v14 = v13;
        if (sub_21B22EBA0(v12, v13, v11))
        {
          result = sub_21B22E8E4(0, 0);
        }

        else
        {
          v15 = sub_21B22EA68(v12, v14);
          if (!v16)
          {

            return 0;
          }

          sub_21B22E8E4(v15, v16);
        }

        if (v6 == ++v4)
        {
          goto LABEL_2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

char *sub_21B22EE14(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_21B22EEB8(uint64_t result, uint64_t a2, void *a3)
{
  if (a2)
  {
    if (!a3)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v3 = *a3 + 7;
    if (__OFADD__(*a3, 7))
    {
      goto LABEL_20;
    }

    if (v3 < 0)
    {
      v3 = *a3 + 14;
    }

    v4 = v3 >> 3;
    v6 = v4 - 1;
    v5 = v4 < 1;
    v7 = v4 + 62;
    if (!v5)
    {
      v7 = v6;
    }

    v8 = &a3[2 * a3[1]] + (v7 & 0xFFFFFFFFFFFFFFC0);
    *(v8 + 128) = result;
    *(v8 + 136) = a2;
    v9 = a3[1];
    v10 = v9 + 7;
    if (v9 >= 0)
    {
      v10 = a3[1];
    }

    v11 = v9 - (v10 & 0xFFFFFFFFFFFFFFF8);
    if (v11 >= 0)
    {
      v12 = 1 << v11;
    }

    else
    {
      v12 = 0;
    }

    *(a3 + (v10 >> 3) + 64) |= v12;
LABEL_17:
    v16 = a3[1];
    v14 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (!v14)
    {
      a3[1] = v17;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a3)
  {
    v13 = a3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    a3[2] = v15;
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_21B22EF78(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_21B22F054(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = sub_21B22EB74(0, *(v7 + 16));
    if (a2 < 1)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (*(v7 + 24) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3F8, &qword_21B351CF8);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = 0;
    v9[3] = 2 * v10 - 64;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  *v2 = v9;
  if (a2 >= 1)
  {
LABEL_8:
    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *(a1 + v13);
      if (v11)
      {
        break;
      }

      if (v12 & 1) == 0 && v14 == 34 && (*(v2 + 57))
      {
        v11 = 0;
        v12 = 1;
        v15 = __OFADD__(v13++, 1);
        if (v15)
        {
          goto LABEL_41;
        }

        goto LABEL_35;
      }

      if (*(v2 + 60) == v14 && (*(v2 + 58) & 1) != 0)
      {
        v11 = 1;
        v15 = __OFADD__(v13++, 1);
        if (v15)
        {
          goto LABEL_41;
        }

        goto LABEL_35;
      }

      if ((v12 & (v14 == 34)) != 1)
      {
        break;
      }

      v16 = v13 + 1;
      if (v13 + 1 < a2 && *(a1 + v16) == 34)
      {
        v17 = *v2;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21B2318E8(0, *(v17 + 16) + 1, 1, v17);
          v17 = result;
        }

        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        v20 = v19 + 1;
        v12 = 1;
        if (v19 >= v18 >> 1)
        {
          result = sub_21B2318E8((v18 > 1), v19 + 1, 1, v17);
          v17 = result;
        }

        LOBYTE(v14) = 34;
        goto LABEL_34;
      }

      v11 = 0;
      v12 = 0;
      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
LABEL_41:
        __break(1u);
        return result;
      }

LABEL_35:
      if (v13 >= a2)
      {
        return result;
      }
    }

    v17 = *v2;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21B2318E8(0, *(v17 + 16) + 1, 1, v17);
      v17 = result;
    }

    v19 = *(v17 + 16);
    v21 = *(v17 + 24);
    v20 = v19 + 1;
    if (v19 >= v21 >> 1)
    {
      result = sub_21B2318E8((v21 > 1), v19 + 1, 1, v17);
      v17 = result;
    }

    v16 = v13;
LABEL_34:
    v11 = 0;
    *(v17 + 16) = v20;
    *(v17 + v19 + 32) = v14;
    *v2 = v17;
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

  return result;
}

uint64_t sub_21B22F2CC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v171 = a5;
  v172 = a3;
  v163 = a7;
  v11 = sub_21B34A544();
  v164 = *(v11 - 8);
  v12 = *(v164 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[5];
  v186 = a1[4];
  v187 = v15;
  v188 = *(a1 + 12);
  v16 = a1[1];
  v182 = *a1;
  v183 = v16;
  v17 = a1[3];
  v184 = a1[2];
  v185 = v17;
  v19 = a6[1];
  v18 = a6[2];
  v20 = *(a6 + 45);
  v189 = *a6;
  *&v191[13] = v20;
  v190 = v19;
  *v191 = v18;
  v21 = v192;
  result = sub_21B2343D8(a2, v172, a4 & 1, v187, v189);
  if (v21)
  {
    return result;
  }

  v24 = result;
  v165 = v14;
  v166 = v11;
  v192 = 0;
  v25 = v171;
  v26 = *(v171 + 16);
  v27 = MEMORY[0x277D84F90];
  v169 = result;
  v170 = v23;
  if (!v26)
  {
LABEL_63:
    v131 = v163;
    v38 = v164;

    sub_21B31703C(MEMORY[0x277D84FA0], 0x2EuLL, 0xE100000000000000, v178);
    v31 = *(v27 + 16);

    v30 = v166;
    if (!v31)
    {
      goto LABEL_94;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v170;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_65;
  }

  v175[0] = MEMORY[0x277D84F90];
  v28 = v23;
  sub_21B233424(0, v26, 0);
  v167 = v28 - v24;
  v29 = __OFSUB__(v28, v24);
  LODWORD(v168) = v29;
  v27 = v175[0];
  v30 = (v25 + 56);
  v31 = &v173;
  while (1)
  {
    v32 = *(v30 - 2);
    v171 = *(v30 - 3);
    v172 = v27;
    v33 = *(v30 - 1);
    v34 = *v30;
    if (v34 > 3)
    {
      break;
    }

    if (*v30 > 1u)
    {
      if (v34 == 2)
      {
        v180 = &type metadata for FloatColumnProcessor;
        v181 = &off_282CACC40;
        v27 = swift_allocObject();
        *&v179 = v27;
        v57 = v187;
        *(v27 + 80) = v186;
        *(v27 + 96) = v57;
        *(v27 + 112) = v188;
        v58 = v183;
        *(v27 + 16) = v182;
        *(v27 + 32) = v58;
        v59 = v185;
        *(v27 + 48) = v184;
        *(v27 + 64) = v59;
        v38 = *(&v189 + 1);
        swift_bridgeObjectRetain_n();
        sub_21B23325C(&v182, v178);
        sub_21B232090(&v189, v178);
        v60 = v192;
        v61 = sub_21B2A16DC(v38);
        v192 = v60;
        v62 = v190;
        *(v27 + 136) = v189;
        *(v27 + 120) = v61;
        v63 = MEMORY[0x277D84F90];
        *(v27 + 128) = MEMORY[0x277D84F90];
        *(v27 + 152) = v62;
        *(v27 + 168) = *v191;
        *(v27 + 181) = *&v191[13];
        *(v27 + 192) = v33;
        *(v27 + 200) = v24;
        *(v27 + 208) = v170;
        *(v27 + 216) = 0;
        if (v168)
        {
          goto LABEL_108;
        }

        sub_21B25FEE8(v63);
        v38 = v64;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E498, &unk_21B354490);
          v119 = swift_allocObject();
          swift_beginAccess();
          v123 = *(v38 + 24);
          sub_21B2AF858(*(v38 + 16), v167, v178);
          goto LABEL_58;
        }

        swift_beginAccess();
        v65 = *(v38 + 24);
        sub_21B2B0360(*(v38 + 16), v167, v178);
        result = *(v38 + 16);
        if (!result)
        {
          goto LABEL_117;
        }

        if ((*(result + 8) & 0x8000000000000000) != 0)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v180 = &type metadata for DoubleColumnProcessor;
        v181 = &off_282CACCA0;
        v27 = swift_allocObject();
        *&v179 = v27;
        v93 = v187;
        *(v27 + 80) = v186;
        *(v27 + 96) = v93;
        *(v27 + 112) = v188;
        v94 = v183;
        *(v27 + 16) = v182;
        *(v27 + 32) = v94;
        v95 = v185;
        *(v27 + 48) = v184;
        *(v27 + 64) = v95;
        v38 = *(&v189 + 1);
        swift_bridgeObjectRetain_n();
        sub_21B23325C(&v182, v178);
        sub_21B232090(&v189, v178);
        v96 = v192;
        v97 = sub_21B2A16DC(v38);
        v192 = v96;
        v98 = v190;
        *(v27 + 136) = v189;
        *(v27 + 120) = v97;
        v99 = MEMORY[0x277D84F90];
        *(v27 + 128) = MEMORY[0x277D84F90];
        *(v27 + 152) = v98;
        *(v27 + 168) = *v191;
        *(v27 + 181) = *&v191[13];
        *(v27 + 192) = v33;
        *(v27 + 200) = v24;
        *(v27 + 208) = v170;
        *(v27 + 216) = 0;
        if (v168)
        {
          goto LABEL_110;
        }

        sub_21B25E224(v99);
        v38 = v100;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E490, &unk_21B354C80);
          v119 = swift_allocObject();
          swift_beginAccess();
          v128 = *(v38 + 24);
          sub_21B2AEE64(*(v38 + 16), v167, v178);
          goto LABEL_58;
        }

        swift_beginAccess();
        v101 = *(v38 + 24);
        sub_21B235334(*(v38 + 16), v167, v178);
        result = *(v38 + 16);
        if (!result)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          return result;
        }

        if ((*(result + 8) & 0x8000000000000000) != 0)
        {
          goto LABEL_112;
        }
      }

LABEL_43:
      MEMORY[0x21CEEEA30]();
      *(v38 + 16) = v178[0];
      goto LABEL_44;
    }

    if (!*v30)
    {
      v180 = &type metadata for IntegerColumnProcessor;
      v181 = &off_282CAA9E8;
      v27 = swift_allocObject();
      *&v179 = v27;
      v35 = v187;
      *(v27 + 80) = v186;
      *(v27 + 96) = v35;
      *(v27 + 112) = v188;
      v36 = v183;
      *(v27 + 16) = v182;
      *(v27 + 32) = v36;
      v37 = v185;
      *(v27 + 48) = v184;
      *(v27 + 64) = v37;
      v38 = *(&v189 + 1);
      swift_bridgeObjectRetain_n();
      sub_21B23325C(&v182, v178);
      sub_21B232090(&v189, v178);
      v39 = v192;
      v40 = sub_21B2A16DC(v38);
      v192 = v39;
      v41 = v190;
      *(v27 + 136) = v189;
      *(v27 + 120) = v40;
      v42 = MEMORY[0x277D84F90];
      *(v27 + 128) = MEMORY[0x277D84F90];
      *(v27 + 152) = v41;
      *(v27 + 168) = *v191;
      *(v27 + 181) = *&v191[13];
      *(v27 + 192) = v33;
      *(v27 + 200) = v24;
      *(v27 + 208) = v170;
      *(v27 + 216) = 0;
      if (v168)
      {
        goto LABEL_106;
      }

      sub_21B234EF8(v42);
      v38 = v43;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        swift_beginAccess();
        v44 = *(v38 + 24);
        sub_21B235334(*(v38 + 16), v167, v178);
        result = *(v38 + 16);
        if (!result)
        {
          goto LABEL_119;
        }

        if ((*(result + 8) & 0x8000000000000000) != 0)
        {
          goto LABEL_114;
        }

        goto LABEL_43;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E488, &unk_21B3544A0);
      v119 = swift_allocObject();
      swift_beginAccess();
      v120 = *(v38 + 24);
      sub_21B2AECDC(*(v38 + 16), v167, v178);
LABEL_58:
      *(v119 + 16) = v178[0];

      v38 = v119;
LABEL_59:
      *(v27 + 224) = v171;
      *(v27 + 232) = v32;
      *(v27 + 240) = v38;
      goto LABEL_60;
    }

    v180 = &type metadata for BooleanColumnProcessor;
    v181 = &off_282CAAA48;
    v27 = swift_allocObject();
    *&v179 = v27;
    v75 = v187;
    *(v27 + 80) = v186;
    *(v27 + 96) = v75;
    *(v27 + 112) = v188;
    v76 = v183;
    *(v27 + 16) = v182;
    *(v27 + 32) = v76;
    v77 = v185;
    *(v27 + 48) = v184;
    *(v27 + 64) = v77;
    v38 = *(&v189 + 1);
    swift_bridgeObjectRetain_n();
    sub_21B23325C(&v182, v178);
    sub_21B232090(&v189, v178);
    v78 = v192;
    *(v27 + 120) = sub_21B2A16DC(v38);
    *(v27 + 128) = sub_21B2A16DC(v190);
    v79 = sub_21B2A16DC(*(&v190 + 1));
    v192 = v78;
    v80 = v190;
    *(v27 + 152) = v189;
    *(v27 + 136) = v79;
    v81 = MEMORY[0x277D84F90];
    *(v27 + 144) = MEMORY[0x277D84F90];
    *(v27 + 168) = v80;
    *(v27 + 184) = *v191;
    *(v27 + 197) = *&v191[13];
    *(v27 + 208) = v33;
    *(v27 + 216) = v24;
    *(v27 + 224) = v170;
    *(v27 + 232) = 0;
    if (v168)
    {
      goto LABEL_105;
    }

    sub_21B260114(v81);
    v38 = v82;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      v83 = *(v38 + 24);
      sub_21B2B0190(*(v38 + 16), v167, v178);
      result = *(v38 + 16);
      if (!result)
      {
        goto LABEL_118;
      }

      if ((*(result + 8) & 0x8000000000000000) != 0)
      {
        goto LABEL_113;
      }

      MEMORY[0x21CEEEA30]();
      *(v38 + 16) = v178[0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A8, &unk_21B354C90);
      v125 = swift_allocObject();
      swift_beginAccess();
      v126 = *(v38 + 24);
      sub_21B2AF39C(*(v38 + 16), v167, v178);
      *(v125 + 16) = v178[0];

      v38 = v125;
    }

    *(v27 + 240) = v171;
    *(v27 + 248) = v32;
    *(v27 + 256) = v38;
LABEL_60:
    v27 = v172;
    v175[0] = v172;
    v130 = *(v172 + 16);
    v129 = *(v172 + 24);
    if (v130 >= v129 >> 1)
    {
      sub_21B233424((v129 > 1), v130 + 1, 1);
      v27 = v175[0];
    }

    v30 += 32;
    *(v27 + 16) = v130 + 1;
    sub_21B234878(&v179, v27 + 40 * v130 + 32);
    --v26;
    v31 = &v173;
    if (!v26)
    {
      goto LABEL_63;
    }
  }

  if (*v30 > 5u)
  {
    if (v34 != 6)
    {
      v180 = &type metadata for InferringColumnProcessor;
      v181 = &off_282CA9EE0;
      v102 = swift_allocObject();
      *&v179 = v102;
      swift_bridgeObjectRetain_n();
      sub_21B23325C(&v182, v178);
      v103 = MEMORY[0x277D84F90];
      sub_21B233050(MEMORY[0x277D84F90]);
      v105 = v104;
      *(v102 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7B0, &qword_21B352730);
      *(v102 + 264) = &off_282CAA128;
      *(v102 + 232) = 0;
      *(v102 + 240) = 0xE000000000000000;
      *(v102 + 248) = v105;
      v106 = v187;
      *(v102 + 80) = v186;
      *(v102 + 96) = v106;
      *(v102 + 112) = v188;
      v107 = v183;
      *(v102 + 16) = v182;
      *(v102 + 32) = v107;
      v108 = v185;
      *(v102 + 48) = v184;
      *(v102 + 64) = v108;
      v109 = v192;
      *(v102 + 120) = sub_21B2A16DC(*(&v189 + 1));
      *(v102 + 128) = sub_21B2A16DC(v190);
      v110 = sub_21B2A16DC(*(&v190 + 1));
      v192 = v109;
      v111 = v190;
      *(v102 + 152) = v189;
      *(v102 + 136) = v110;
      *(v102 + 144) = v103;
      *(v102 + 168) = v111;
      *(v102 + 184) = *v191;
      *(v102 + 197) = *&v191[13];
      *(v102 + 205) = v191[0];
      *(v102 + 208) = *&v191[8];
      *(v102 + 216) = 0;
      *(v102 + 224) = 1;
      *(v102 + 344) = v171;
      *(v102 + 352) = v32;
      v113 = v169;
      v112 = v170;
      *(v102 + 272) = v33;
      *(v102 + 280) = v113;
      *(v102 + 288) = v112;
      *(v102 + 296) = 0;

      sub_21B232090(&v189, v178);

      v114 = sub_21B25DFE0(v103);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        swift_beginAccess();
        v115 = *(v114 + 24);
        sub_21B2AFD1C(*(v114 + 16), 0, v178);
        v116 = *(v114 + 24);
        sub_21B2B0954(*(v114 + 16));
        *(v114 + 16) = v178[0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
        v117 = swift_allocObject();
        swift_beginAccess();
        v118 = *(v114 + 24);
        sub_21B2AEFEC(*(v114 + 16), 0, v178);
        *(v117 + 16) = v178[0];

        v114 = v117;
      }

      *(v102 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E158, &unk_21B3526B0);
      *(v102 + 336) = &off_282CAA128;

      *(v102 + 304) = v171;
      *(v102 + 312) = v32;
      *(v102 + 320) = v114;
      v24 = v169;
      goto LABEL_60;
    }

    v180 = &type metadata for BinaryColumnProcessor;
    v181 = &off_282CAAB08;
    v27 = swift_allocObject();
    *&v179 = v27;
    v66 = v187;
    *(v27 + 80) = v186;
    *(v27 + 96) = v66;
    *(v27 + 112) = v188;
    v67 = v183;
    *(v27 + 16) = v182;
    *(v27 + 32) = v67;
    v68 = v185;
    *(v27 + 48) = v184;
    *(v27 + 64) = v68;
    v38 = *(&v189 + 1);
    swift_bridgeObjectRetain_n();
    sub_21B23325C(&v182, v178);
    sub_21B232090(&v189, v178);
    v69 = v192;
    v70 = sub_21B2A16DC(v38);
    v192 = v69;
    v71 = v190;
    *(v27 + 136) = v189;
    *(v27 + 120) = v70;
    v72 = MEMORY[0x277D84F90];
    *(v27 + 128) = MEMORY[0x277D84F90];
    *(v27 + 152) = v71;
    *(v27 + 168) = *v191;
    *(v27 + 181) = *&v191[13];
    *(v27 + 192) = v33;
    *(v27 + 200) = v24;
    *(v27 + 208) = v170;
    *(v27 + 216) = 0;
    if (v168)
    {
      goto LABEL_109;
    }

    v38 = sub_21B26032C(v72);
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4B0, &unk_21B354470);
      v119 = swift_allocObject();
      swift_beginAccess();
      v124 = *(v38 + 24);
      sub_21B2AF9E0(*(v38 + 16), v167, v178);
      goto LABEL_58;
    }

    swift_beginAccess();
    v73 = *(v38 + 24);
    sub_21B2AFD1C(*(v38 + 16), v167, v178);
    v74 = *(v38 + 24);
    sub_21B2B0B34(*(v38 + 16));
LABEL_38:
    *(v38 + 16) = v178[0];
LABEL_44:

    goto LABEL_59;
  }

  if (v34 == 4)
  {
    v180 = &type metadata for DateColumnProcessor;
    v181 = &off_282CABC70;
    v27 = swift_allocObject();
    *&v179 = v27;
    v45 = v187;
    *(v27 + 80) = v186;
    *(v27 + 96) = v45;
    *(v27 + 112) = v188;
    v46 = v183;
    *(v27 + 16) = v182;
    *(v27 + 32) = v46;
    v47 = v185;
    *(v27 + 48) = v184;
    *(v27 + 64) = v47;
    v48 = *(&v189 + 1);
    swift_bridgeObjectRetain_n();
    sub_21B23325C(&v182, v178);
    v49 = v192;
    v50 = sub_21B2A16DC(v48);
    v192 = v49;
    v51 = v190;
    *(v27 + 136) = v189;
    *(v27 + 120) = v50;
    v52 = v24;
    v53 = MEMORY[0x277D84F90];
    *(v27 + 128) = MEMORY[0x277D84F90];
    *(v27 + 152) = v51;
    *(v27 + 168) = *v191;
    *(v27 + 181) = *&v191[13];
    v38 = *&v191[8];
    *(v27 + 192) = *&v191[8];
    *(v27 + 200) = 0;
    *(v27 + 208) = 1;
    *(v27 + 216) = v33;
    *(v27 + 224) = v52;
    *(v27 + 232) = v170;
    *(v27 + 240) = 0;
    if (v168)
    {
      goto LABEL_107;
    }

    sub_21B232090(&v189, v178);

    v54 = sub_21B260568(v53);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      v55 = *(v54 + 24);
      sub_21B2AFF0C(*(v54 + 16), v167, v178);
      v56 = *(v54 + 24);
      sub_21B2B0A2C(*(v54 + 16));
      *(v54 + 16) = v178[0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4B8, &unk_21B354C70);
      v121 = swift_allocObject();
      swift_beginAccess();
      v122 = *(v54 + 24);
      sub_21B2AF188(*(v54 + 16), v167, v178);
      *(v121 + 16) = v178[0];

      v54 = v121;
    }

    v24 = v169;
    *(v27 + 248) = v171;
    *(v27 + 256) = v32;
    *(v27 + 264) = v54;
    goto LABEL_60;
  }

  v180 = &type metadata for StringColumnProcessor;
  v181 = &off_282CAAAA8;
  v27 = swift_allocObject();
  *&v179 = v27;
  v84 = v187;
  *(v27 + 80) = v186;
  *(v27 + 96) = v84;
  *(v27 + 112) = v188;
  v85 = v183;
  *(v27 + 16) = v182;
  *(v27 + 32) = v85;
  v86 = v185;
  *(v27 + 48) = v184;
  *(v27 + 64) = v86;
  v38 = *(&v189 + 1);
  swift_bridgeObjectRetain_n();
  sub_21B23325C(&v182, v178);
  sub_21B232090(&v189, v178);
  v87 = v192;
  v88 = sub_21B2A16DC(v38);
  v192 = v87;
  v89 = v190;
  *(v27 + 136) = v189;
  *(v27 + 120) = v88;
  v90 = MEMORY[0x277D84F90];
  *(v27 + 128) = MEMORY[0x277D84F90];
  *(v27 + 152) = v89;
  *(v27 + 168) = *v191;
  *(v27 + 181) = *&v191[13];
  *(v27 + 192) = v33;
  *(v27 + 200) = v24;
  *(v27 + 208) = v170;
  *(v27 + 216) = 0;
  if ((v168 & 1) == 0)
  {
    v38 = sub_21B25DFE0(v90);
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
      v119 = swift_allocObject();
      swift_beginAccess();
      v127 = *(v38 + 24);
      sub_21B2AEFEC(*(v38 + 16), v167, v178);
      goto LABEL_58;
    }

    swift_beginAccess();
    v91 = *(v38 + 24);
    sub_21B2AFD1C(*(v38 + 16), v167, v178);
    v92 = *(v38 + 24);
    sub_21B2B0954(*(v38 + 16));
    goto LABEL_38;
  }

  while (2)
  {
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
    v27 = sub_21B23A358(v27);
LABEL_65:
    v133 = 0;
    v134 = v27 + 32;
    v171 = v38 + 8;
    v172 = v27;
    v164 = v32 - v169;
    v135 = __OFSUB__(v32, v169);
    LODWORD(v167) = v135;
    v168 = v31;
LABEL_71:
    if (v31 == v133)
    {
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      continue;
    }

    break;
  }

  if (v133 >= *(v27 + 16))
  {
    goto LABEL_100;
  }

  sub_21B233A10(v134, &v179);
  v136 = v180;
  v137 = v181;
  __swift_project_boxed_opaque_existential_1(&v179, v180);
  (v137[3])(v175, v136, v137);
  v139 = v176;
  v138 = v177;
  __swift_project_boxed_opaque_existential_1(v175, v176);
  v140 = (*(*(v138 + 8) + 8))(v139);
  v142 = v141;
  sub_21B233960(v175);
  __swift_destroy_boxed_opaque_existential_1Tm(&v179);
  *&v179 = v140;
  *(&v179 + 1) = v142;
  v143 = v165;
  sub_21B34A534();
  sub_21B233B24();
  v144 = sub_21B34B4E4();
  v146 = v145;
  (*v171)(v143, v30);

  v147 = HIBYTE(v146) & 0xF;
  if ((v146 & 0x2000000000000000) == 0)
  {
    v147 = v144 & 0xFFFFFFFFFFFFLL;
  }

  if (v147)
  {

    v148 = v140;
    v38 = v142;
  }

  else
  {
    *&v179 = 0x206E6D756C6F43;
    *(&v179 + 1) = 0xE700000000000000;
    v175[0] = v133;
    v149 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v149);

    v38 = *(&v179 + 1);
    v148 = v179;
  }

  v31 = v170;
  v30 = sub_21B233B78(v148, v38);
  v32 = v150;

  if (v30 == v140 && v32 == v142)
  {

    goto LABEL_85;
  }

  v38 = sub_21B34B9F4();

  if (v38)
  {
LABEL_85:

    v27 = v172;
  }

  else
  {
    v27 = v172;
    if (v133 >= *(v172 + 16))
    {
      goto LABEL_103;
    }

    v38 = *(v134 + 24);
    v152 = *(v134 + 32);
    v153 = __swift_mutable_project_boxed_opaque_existential_1(v134, v38);
    v154 = v32;
    v32 = v153;
    (*(v152 + 40))(v30, v154, v38, v152);
  }

  v30 = v166;
  if (v169 == v31)
  {
    v31 = v168;
  }

  else
  {
    v31 = v168;
    if (v167)
    {
      goto LABEL_101;
    }

    if (v133 >= *(v27 + 16))
    {
      goto LABEL_102;
    }

    v38 = *(v134 + 24);
    v155 = *(v134 + 32);
    v32 = __swift_mutable_project_boxed_opaque_existential_1(v134, v38);
    v156 = v192;
    (*(v155 + 80))(v164, v38, v155);
    v192 = v156;
    if (v156)
    {
    }
  }

  v133 = (v133 + 1);
  v134 += 40;
  if (v31 != v133)
  {
    goto LABEL_71;
  }

  v131 = v163;
LABEL_94:

  *&v173 = MEMORY[0x277D84F90];
  *(&v173 + 1) = MEMORY[0x277D84F90];
  v174 = sub_21B25DC2C(MEMORY[0x277D84F90]);
  v157 = *(v27 + 16);
  if (v157)
  {
    v158 = v27 + 32;
    do
    {
      sub_21B233A10(v158, &v179);
      v159 = v180;
      v160 = v181;
      __swift_project_boxed_opaque_existential_1(&v179, v180);
      (v160[3])(v175, v159, v160);
      DataFrame.append(column:)(v175);
      sub_21B233960(v175);
      __swift_destroy_boxed_opaque_existential_1Tm(&v179);
      v158 += 40;
      --v157;
    }

    while (v157);
  }

  v161 = v174;
  *v131 = v173;
  *(v131 + 16) = v161;
  return result;
}

uint64_t sub_21B230654()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  v6 = v0[14];

  v7 = v0[15];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[19];

  v11 = v0[20];

  v12 = v0[22];

  v13 = v0[24];

  v14 = v0[32];

  v15 = v0[33];

  return MEMORY[0x2821FE8E8](v0, 272, 7);
}

uint64_t sub_21B2306FC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  v6 = v0[14];

  v7 = v0[15];

  v8 = v0[16];

  v9 = v0[17];

  v10 = v0[18];

  v11 = v0[20];

  v12 = v0[21];

  v13 = v0[22];

  v14 = v0[24];

  v15 = v0[31];

  v16 = v0[32];

  return MEMORY[0x2821FE8E8](v0, 264, 7);
}

uint64_t sub_21B2307AC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  v6 = v0[14];

  v7 = v0[15];

  v8 = v0[16];

  v9 = v0[17];

  v10 = v0[18];

  v11 = v0[20];

  v12 = v0[21];

  v13 = v0[22];

  v14 = v0[24];

  v15 = v0[26];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 29);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 38);
  v16 = v0[44];

  return MEMORY[0x2821FE8E8](v0, 360, 7);
}

uint64_t sub_21B23087C(uint64_t result, uint64_t a2)
{
  v3 = v2[3];
  v4 = result * v3;
  if ((result * v3) >> 64 != (result * v3) >> 63)
  {
    __break(1u);
    goto LABEL_21;
  }

  v5 = __OFADD__(v4, a2);
  v6 = v4 + a2;
  if (v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = v2[4];
  v8 = *(v7 + 16);
  if (v6 >= v8)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 + 1 >= v8)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = v7 + 32;
  v11 = *(v10 + 8 * v6);
  v12 = *(v10 + 8 * (v6 + 1));
  if (v9 == a2)
  {
    v13 = *v2;
    if (v11 < v12)
    {
      while (1)
      {
        v14 = *(v13 - 1 + v12);
        if (v14 != 13 && v14 != 10)
        {
          break;
        }

        if (v11 >= --v12)
        {
          v12 = v11;
          break;
        }
      }
    }
  }

  else
  {
    v12 -= v11 < v12;
    v13 = *v2;
  }

  if (!v13)
  {
    goto LABEL_27;
  }

  if (!__OFSUB__(v12, v11))
  {
    return v13 + v11;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21B23094C(uint64_t result, uint64_t a2)
{
  if (a2 < 1)
  {
    v2 = 0;
    v7 = a2 - 1;
    if (!__OFSUB__(a2, 1))
    {
      goto LABEL_10;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(result + v2);
    v4 = v3 > 0x20;
    v5 = (1 << v3) & 0x100002600;
    if (v4 || v5 == 0)
    {
      break;
    }

    if (a2 == ++v2)
    {
      v2 = a2;
      break;
    }
  }

  v7 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    goto LABEL_23;
  }

LABEL_10:
  if (v2 < v7)
  {
    while (1)
    {
      v8 = *(result + v7);
      v4 = v8 > 0x20;
      v9 = (1 << v8) & 0x100002600;
      if (v4 || v9 == 0)
      {
        break;
      }

      if (v2 >= --v7)
      {
        v7 = v2;
        break;
      }
    }
  }

  if (!result)
  {
    goto LABEL_26;
  }

  v11 = __OFSUB__(v7, v2);
  v12 = v7 - v2;
  if (!v11)
  {
    if (!__OFADD__(v12, 1))
    {
      result += v2;
      return result;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21B230A08(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = a3[1];
  if (v8 < 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v10 = MEMORY[0x277D84F90];
LABEL_173:
    v142 = *a1;
    if (!*a1)
    {
      goto LABEL_217;
    }

    swift_bridgeObjectRetain_n();
    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_175;
    }

    goto LABEL_209;
  }

  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
LABEL_4:
  v11 = v9;
  v12 = (v9 + 1);
  if (v9 + 1 >= v8)
  {
    goto LABEL_64;
  }

  v13 = *a3;
  LODWORD(v142) = sub_21B232308(*(*a3 + 8 * v12), *(*a3 + 8 * v9), a5, a6, a7, a8 & 1);
  if (v146)
  {
LABEL_171:

    swift_bridgeObjectRelease_n();
  }

  v14 = (v11 + 2);
  if (v11 + 2 >= v8)
  {
    goto LABEL_53;
  }

  v12 = (v11 + 2);
  v133 = v11;
  v15 = (v13 + 8 * v11 + 16);
  __dst = v8;
  do
  {
    v16 = *v15;
    if ((*v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_218;
    }

    v17 = *(v15 - 1);
    swift_beginAccess();
    v18 = *(a7 + 16);
    if (!v18)
    {
      goto LABEL_213;
    }

    v19 = v18[1];
    if (v16 >= v19)
    {
      goto LABEL_218;
    }

    v20 = v18 + 8;
    if ((*(v18 + (v16 >> 3) + 64) >> (v16 & 7)))
    {
      v21 = *v18 + 7;
      if (__OFADD__(*v18, 7))
      {
        goto LABEL_199;
      }

      if (v21 < 0)
      {
        v21 = *v18 + 14;
      }

      v22 = v21 >> 3;
      v24 = v22 - 1;
      v23 = v22 < 1;
      v25 = v22 + 62;
      if (!v23)
      {
        v25 = v24;
      }

      v26 = &v20[2 * v16] + (v25 & 0xFFFFFFFFFFFFFFC0);
      v27 = *(v26 + 64);
      v28 = *(v26 + 72);

      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_218;
      }
    }

    else
    {
      v27 = 0;
      v28 = 0;
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_218;
      }
    }

    if (v17 >= v19)
    {
      goto LABEL_218;
    }

    if (((*(v20 + (v17 >> 3)) >> (v17 & 7)) & 1) == 0)
    {
      if (!v28)
      {
        goto LABEL_8;
      }

LABEL_38:

      if ((v142 & 1) == 0)
      {
        v11 = v133;
        goto LABEL_64;
      }

      goto LABEL_9;
    }

    v29 = *v18 + 7;
    if (__OFADD__(*v18, 7))
    {
      goto LABEL_200;
    }

    if (v29 < 0)
    {
      v29 = *v18 + 14;
    }

    v30 = v29 >> 3;
    v31 = v30 - 1;
    v23 = v30 < 1;
    v32 = v30 + 62;
    if (!v23)
    {
      v32 = v31;
    }

    v33 = &v20[2 * v17] + (v32 & 0xFFFFFFFFFFFFFFC0);
    v34 = *(v33 + 64);
    v35 = *(v33 + 72);

    if (!v28)
    {
      if (!v35)
      {
LABEL_8:
        if (v142)
        {
          goto LABEL_50;
        }

        goto LABEL_9;
      }

      goto LABEL_49;
    }

    if (!v35)
    {
      goto LABEL_38;
    }

    if (a8)
    {
      if (v34 == v27 && v28 == v35)
      {
        goto LABEL_48;
      }
    }

    else if (v27 == v34 && v28 == v35)
    {
LABEL_48:

LABEL_49:

      if (v142)
      {
LABEL_50:
        v14 = v12;
        v11 = v133;
        goto LABEL_54;
      }

      goto LABEL_9;
    }

    v38 = sub_21B34B9F4();

    if ((v142 ^ v38))
    {
      v14 = v12;
      goto LABEL_52;
    }

LABEL_9:
    ++v15;
    ++v12;
  }

  while (__dst != v12);
  v14 = __dst;
LABEL_52:
  v11 = v133;
LABEL_53:
  if (v142)
  {
LABEL_54:
    if (v14 >= v11)
    {
      if (v11 < v14)
      {
        v12 = v14;
        v39 = v14 - 1;
        v40 = v11;
        while (1)
        {
          if (v40 != v39)
          {
            v42 = *a3;
            if (!*a3)
            {
              goto LABEL_214;
            }

            v41 = *(v42 + 8 * v40);
            *(v42 + 8 * v40) = *(v42 + 8 * v39);
            *(v42 + 8 * v39) = v41;
          }

          v23 = ++v40 < v39--;
          if (!v23)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
    goto LABEL_208;
  }

LABEL_63:
  v12 = v14;
LABEL_64:
  v43 = a3[1];
  if (v12 >= v43)
  {
    v45 = v12;
    if (v12 < v11)
    {
      goto LABEL_204;
    }

    goto LABEL_75;
  }

  if (__OFSUB__(v12, v11))
  {
    goto LABEL_205;
  }

  if (&v12[-v11] >= a4)
  {
    goto LABEL_72;
  }

  v44 = (v11 + a4);
  if (__OFADD__(v11, a4))
  {
    goto LABEL_207;
  }

  if (v44 >= v43)
  {
    v44 = a3[1];
  }

  if (v44 < v11)
  {
LABEL_208:
    __break(1u);
LABEL_209:
    v10 = sub_21B23A330(v10);
LABEL_175:
    v125 = *(v10 + 2);
    if (v125 >= 2)
    {
      do
      {
        v126 = *a3;
        if (!*a3)
        {
          goto LABEL_215;
        }

        v127 = *&v10[16 * v125];
        v128 = *&v10[16 * v125 + 24];
        v129 = (v126 + 8 * v127);
        v130 = (v126 + 8 * *&v10[16 * v125 + 16]);
        v131 = (v126 + 8 * v128);

        sub_21B2324A8(v129, v130, v131, v142, a5, a6, a7, a8 & 1, sub_21B232308);
        if (v146)
        {
          break;
        }

        if (v128 < v127)
        {
          goto LABEL_202;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_21B23A330(v10);
        }

        if (v125 - 2 >= *(v10 + 2))
        {
          goto LABEL_203;
        }

        v132 = &v10[16 * v125];
        *v132 = v127;
        *(v132 + 1) = v128;
        sub_21B2327F4(v125 - 1);
        v125 = *(v10 + 2);
      }

      while (v125 > 1);
    }

    return swift_bridgeObjectRelease_n();
  }

  if (v12 == v44)
  {
LABEL_72:
    v45 = v12;
    if (v12 < v11)
    {
      goto LABEL_204;
    }

    goto LABEL_75;
  }

  v96 = *a3;
  v97 = *a3 + 8 * v12 - 8;
  v134 = v11;
  v98 = v11 - v12;
  v137 = v44;
LABEL_128:
  __dstb = v97;
  v142 = v12;
  v99 = *(v96 + 8 * v12);
  v138 = v98;
  v100 = v97;
  while (2)
  {
    if ((v99 & 0x8000000000000000) != 0)
    {
      goto LABEL_218;
    }

    v101 = *v100;
    swift_beginAccess();
    v102 = *(a7 + 16);
    if (v102)
    {
      v103 = v102[1];
      if (v99 >= v103)
      {
        goto LABEL_218;
      }

      v104 = v102 + 8;
      if (((*(v102 + (v99 >> 3) + 64) >> (v99 & 7)) & 1) == 0)
      {
        v110 = 0;
        v111 = 0;
        if ((v101 & 0x8000000000000000) != 0)
        {
          goto LABEL_218;
        }

        goto LABEL_141;
      }

      v105 = *v102 + 7;
      if (__OFADD__(*v102, 7))
      {
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
        goto LABEL_206;
      }

      if (v105 < 0)
      {
        v105 = *v102 + 14;
      }

      v106 = v105 >> 3;
      v107 = v106 - 1;
      v23 = v106 < 1;
      v108 = v106 + 62;
      if (!v23)
      {
        v108 = v107;
      }

      v109 = &v104[2 * v99] + (v108 & 0xFFFFFFFFFFFFFFC0);
      v110 = *(v109 + 64);
      v111 = *(v109 + 72);

      if ((v101 & 0x8000000000000000) != 0)
      {
        goto LABEL_218;
      }

LABEL_141:
      if (v101 >= v103)
      {
        goto LABEL_218;
      }

      if (((*(v104 + (v101 >> 3)) >> (v101 & 7)) & 1) == 0)
      {
        if (!v111)
        {
          goto LABEL_127;
        }

        goto LABEL_157;
      }

      v112 = *v102 + 7;
      if (__OFADD__(*v102, 7))
      {
        goto LABEL_185;
      }

      if (v112 < 0)
      {
        v112 = *v102 + 14;
      }

      v113 = v112 >> 3;
      v114 = v113 - 1;
      v23 = v113 < 1;
      v115 = v113 + 62;
      if (!v23)
      {
        v115 = v114;
      }

      v116 = &v104[2 * v101] + (v115 & 0xFFFFFFFFFFFFFFC0);
      v117 = *(v116 + 64);
      v118 = *(v116 + 72);

      if (v111)
      {
        if (v118)
        {
          if (a8)
          {
            if (v117 == v110 && v111 == v118)
            {
              goto LABEL_125;
            }
          }

          else if (v110 == v117 && v111 == v118)
          {
LABEL_125:

LABEL_126:

            goto LABEL_127;
          }

          v121 = sub_21B34B9F4();

          if ((v121 & 1) == 0)
          {
            goto LABEL_127;
          }

          goto LABEL_163;
        }

LABEL_157:

LABEL_163:
        if (!v96)
        {
          goto LABEL_211;
        }

        v122 = *v100;
        v99 = v100[1];
        *v100 = v99;
        v100[1] = v122;
        --v100;
        if (__CFADD__(v98++, 1))
        {
          goto LABEL_127;
        }

        continue;
      }

      if (v118)
      {
        goto LABEL_126;
      }

LABEL_127:
      v12 = v142 + 1;
      v97 = __dstb + 8;
      v98 = v138 - 1;
      if (v142 + 1 != v137)
      {
        goto LABEL_128;
      }

      v45 = v137;
      v11 = v134;
      if (v137 < v134)
      {
        goto LABEL_204;
      }

LABEL_75:
      v142 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_21B2356AC(0, *(v10 + 2) + 1, 1, v10);
      }

      v47 = *(v10 + 2);
      v46 = *(v10 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v10 = sub_21B2356AC((v46 > 1), v47 + 1, 1, v10);
      }

      *(v10 + 2) = v48;
      v49 = &v10[16 * v47];
      *(v49 + 4) = v11;
      *(v49 + 5) = v142;
      __dsta = *a1;
      if (!*a1)
      {
        goto LABEL_216;
      }

      if (v47)
      {
        while (1)
        {
          v50 = v48 - 1;
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v51 = *(v10 + 4);
            v52 = *(v10 + 5);
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_94:
            if (v54)
            {
              goto LABEL_191;
            }

            v67 = &v10[16 * v48];
            v69 = *v67;
            v68 = *(v67 + 1);
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_194;
            }

            v73 = &v10[16 * v50 + 32];
            v75 = *v73;
            v74 = *(v73 + 1);
            v61 = __OFSUB__(v74, v75);
            v76 = v74 - v75;
            if (v61)
            {
              goto LABEL_197;
            }

            if (__OFADD__(v71, v76))
            {
              goto LABEL_198;
            }

            if (v71 + v76 >= v53)
            {
              if (v53 < v76)
              {
                v50 = v48 - 2;
              }

              goto LABEL_115;
            }

            goto LABEL_108;
          }

          v77 = &v10[16 * v48];
          v79 = *v77;
          v78 = *(v77 + 1);
          v61 = __OFSUB__(v78, v79);
          v71 = v78 - v79;
          v72 = v61;
LABEL_108:
          if (v72)
          {
            goto LABEL_193;
          }

          v80 = &v10[16 * v50];
          v82 = *(v80 + 4);
          v81 = *(v80 + 5);
          v61 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v61)
          {
            goto LABEL_196;
          }

          if (v83 < v71)
          {
            goto LABEL_3;
          }

LABEL_115:
          v88 = v50 - 1;
          if (v50 - 1 >= v48)
          {
            goto LABEL_186;
          }

          v89 = *a3;
          if (!*a3)
          {
            goto LABEL_212;
          }

          v90 = *&v10[16 * v88 + 32];
          v91 = *&v10[16 * v50 + 40];
          v92 = (v89 + 8 * v90);
          v93 = (v89 + 8 * *&v10[16 * v50 + 32]);
          v94 = (v89 + 8 * v91);

          sub_21B2324A8(v92, v93, v94, __dsta, a5, a6, a7, a8 & 1, sub_21B232308);
          if (v146)
          {
            goto LABEL_171;
          }

          if (v91 < v90)
          {
            goto LABEL_187;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_21B23A330(v10);
          }

          if (v88 >= *(v10 + 2))
          {
            goto LABEL_188;
          }

          v95 = &v10[16 * v88];
          *(v95 + 4) = v90;
          *(v95 + 5) = v91;
          sub_21B2327F4(v50);
          v48 = *(v10 + 2);
          if (v48 <= 1)
          {
            goto LABEL_3;
          }
        }

        v55 = &v10[16 * v48 + 32];
        v56 = *(v55 - 64);
        v57 = *(v55 - 56);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_189;
        }

        v60 = *(v55 - 48);
        v59 = *(v55 - 40);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_190;
        }

        v62 = &v10[16 * v48];
        v64 = *v62;
        v63 = *(v62 + 1);
        v61 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v61)
        {
          goto LABEL_192;
        }

        v61 = __OFADD__(v53, v65);
        v66 = v53 + v65;
        if (v61)
        {
          goto LABEL_195;
        }

        if (v66 >= v58)
        {
          v84 = &v10[16 * v50 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v61 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v61)
          {
            goto LABEL_201;
          }

          if (v53 < v87)
          {
            v50 = v48 - 2;
          }

          goto LABEL_115;
        }

        goto LABEL_94;
      }

LABEL_3:
      v8 = a3[1];
      v9 = v142;
      if (v142 >= v8)
      {
        goto LABEL_173;
      }

      goto LABEL_4;
    }

    break;
  }

  __break(1u);
LABEL_211:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_212:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_215:

  __break(1u);
LABEL_216:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_217:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_218:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t DataFrame.init(csvData:columns:rows:types:options:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = a2;
  v17 = *(a8 + 16);
  v73 = *a8;
  v74 = v17;
  v19 = *a8;
  v18 = *(a8 + 16);
  v75[0] = *(a8 + 32);
  *(v75 + 13) = *(a8 + 45);
  v64[0] = v19;
  v64[1] = v18;
  *v65 = *(a8 + 32);
  *&v65[13] = *(a8 + 45);
  sub_21B260DC0(a1, a2);
  sub_21B232090(&v73, &v57);
  sub_21B2320EC(a1, v14, v64, &v66);
  if (v9)
  {
    v76 = v9;

    sub_21B234324(a1, v14);
    return sub_21B233788(&v73);
  }

  else
  {
    v43 = a5;
    v44 = a1;
    v61 = v70;
    v62 = v71;
    v63 = v72;
    v57 = v66;
    v58 = v67;
    v59 = v68;
    v60 = v69;
    v54 = v70;
    v55 = v71;
    v56 = v72;
    v50 = v66;
    v51 = v67;
    v52 = v68;
    v53 = v69;
    v42 = a4;
    v21 = sub_21B233444(&v50, v73);
    v22 = sub_21B231C40(v21, a3);
    v76 = 0;
    v23 = v22;

    v24 = *(v23 + 16);
    v25 = a7;
    if (v24)
    {
      v40 = a9;
      v41 = v14;
      v26 = 0;
      v27 = 0;
      while (v27 < *(v23 + 16))
      {
        v29 = *(v23 + v26 + 32);
        v28 = *(v23 + v26 + 40);
        v30 = *(v23 + v26 + 48);
        v31 = *(v25 + 16);

        if (v31)
        {
          v32 = sub_21B24B534(v29, v28);
          if (v33)
          {
            v34 = *(*(v25 + 56) + v32);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_21B23A36C(v23);
              v23 = result;
            }

            if (v27 >= *(v23 + 16))
            {
              goto LABEL_18;
            }

            v35 = v23 + v26;
            v36 = *(v23 + v26 + 40);
            *(v35 + 32) = v29;
            *(v35 + 40) = v28;
            *(v35 + 48) = v30;
            *(v35 + 56) = v34;
          }
        }

        ++v27;

        v26 += 32;
        if (v24 == v27)
        {

          a9 = v40;
          v14 = v41;
          v37 = v43;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }

    else
    {

      v37 = v43;
LABEL_15:
      v54 = v61;
      v55 = v62;
      v56 = v63;
      v50 = v57;
      v51 = v58;
      v52 = v59;
      v53 = v60;
      v46[0] = v73;
      v46[1] = v74;
      v47[0] = v75[0];
      *(v47 + 13) = *(v75 + 13);
      v38 = v76;
      sub_21B22F2CC(&v50, v42, v37, a6 & 1, v23, v46, &v48);
      v76 = v38;
      sub_21B234324(v44, v14);
      sub_21B233788(&v73);
      sub_21B299E64(&v57);

      if (!v38)
      {
        v39 = v49;
        *a9 = v48;
        *(a9 + 16) = v39;
      }
    }
  }

  return result;
}

char *sub_21B2318C8(char *a1, int64_t a2, char a3)
{
  result = sub_21B232FF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B2318E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3F8, &qword_21B351CF8);
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

uint64_t sub_21B2319DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = a2;
  v6 = result;
  v30 = *(a3 + 16);
  if (v30 >= v3)
  {
    v7 = a2 - result;
  }

  else
  {
    v7 = *(a3 + 16);
  }

  v33 = MEMORY[0x277D84F90];
  result = sub_21B2318C8(0, v7 & ~(v7 >> 63), 0);
  if (v3 < 0)
  {
    goto LABEL_41;
  }

  v28 = v6;
  v29 = v7;
  v26 = a3;
  if (v7)
  {
    if (v5 < v6)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v8 = (a3 + 40);
    v9 = v30;
    v10 = v6;
    v11 = v7;
    v31 = v5;
    while (v5 != v10)
    {
      if (v10 >= v5)
      {
        goto LABEL_34;
      }

      if (!v9)
      {
        goto LABEL_35;
      }

      v13 = *(v8 - 1);
      v12 = *v8;
      v15 = *(v33 + 16);
      v14 = *(v33 + 24);

      if (v15 >= v14 >> 1)
      {
        result = sub_21B2318C8((v14 > 1), v15 + 1, 1);
      }

      *(v33 + 16) = v15 + 1;
      v16 = v33 + 32 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      *(v16 + 48) = v10;
      *(v16 + 56) = 7;
      v8 += 2;
      --v9;
      ++v10;
      --v11;
      v5 = v31;
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v10 = v6;
LABEL_17:
  if (v10 == v5)
  {
    return v33;
  }

  v17 = v28;
  if (v5 >= v28)
  {
    v18 = 0;
    v27 = v10 - v5;
    if (v10 <= v5)
    {
      v19 = v5;
    }

    else
    {
      v19 = v10;
    }

    v32 = v19 - v10;
    v20 = (v26 + 16 * v29 + 40);
    while (v10 >= v17)
    {
      if (v32 == v18)
      {
        goto LABEL_37;
      }

      if (v30 - v29 == v18)
      {
        return v33;
      }

      if (v29 + v18 >= v30)
      {
        goto LABEL_38;
      }

      if (__OFADD__(v29 + v18, 1))
      {
        goto LABEL_39;
      }

      v22 = *(v20 - 1);
      v21 = *v20;
      v23 = *(v33 + 16);
      v24 = *(v33 + 24);

      if (v23 >= v24 >> 1)
      {
        result = sub_21B2318C8((v24 > 1), v23 + 1, 1);
      }

      *(v33 + 16) = v23 + 1;
      v25 = v33 + 32 * v23;
      *(v25 + 32) = v22;
      *(v25 + 40) = v21;
      *(v25 + 48) = v10 + v18;
      *(v25 + 56) = 7;
      ++v18;
      v20 += 2;
      v17 = v28;
      if (!(v27 + v18))
      {
        return v33;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_21B231C40(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return sub_21B2319DC(0, *(a1 + 16), a1);
  }

  v4 = *(a2 + 16);
  v5 = sub_21B24A964(0, v4, 0, MEMORY[0x277D84F90]);
  v23 = v4;
  if (v4)
  {
    v6 = 0;
    v7 = *(a1 + 16);
    v8 = a2 + 32;
    v9 = (a1 + 40);
    v22 = a1 + 40;
    while (1)
    {
      v10 = (v8 + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      if (!v7)
      {
        break;
      }

      v13 = 0;
      ++v6;
      v14 = v9;
      while (1)
      {
        v15 = *(v14 - 1) == v11 && *v14 == v12;
        if (v15 || (sub_21B34B9F4() & 1) != 0)
        {
          break;
        }

        ++v13;
        v14 += 2;
        if (v7 == v13)
        {
          goto LABEL_18;
        }
      }

      v16 = v8;
      v17 = *(v5 + 2);
      v18 = *(v5 + 3);

      if (v17 >= v18 >> 1)
      {
        v5 = sub_21B24A964((v18 > 1), v17 + 1, 1, v5);
      }

      *(v5 + 2) = v17 + 1;
      v19 = &v5[32 * v17];
      *(v19 + 4) = v11;
      *(v19 + 5) = v12;
      *(v19 + 6) = v13;
      v19[56] = 7;
      v8 = v16;
      v9 = v22;
      if (v6 == v23)
      {
        return v5;
      }
    }

LABEL_18:

    sub_21B27A934();
    swift_allocError();
    *v21 = v11;
    *(v21 + 8) = v12;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 16) = 0;
    *(v21 + 40) = 5;
    swift_willThrow();
  }

  return v5;
}

char *sub_21B231E04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D8, &qword_21B356260);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B231F10(char *a1, int64_t a2, char a3)
{
  result = sub_21B231E04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B231F84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D8, &qword_21B356260);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21B2320EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a3 + 16);
  v32[0] = *a3;
  v32[1] = v9;
  v33[0] = *(a3 + 32);
  *(v33 + 13) = *(a3 + 45);
  sub_21B260DC0(a1, a2);
  v10 = sub_21B2D062C(a1, a2);
  v11 = *(a3 + 16);
  v18 = *a3;
  v19 = v11;
  *v20 = *(a3 + 32);
  *&v20[13] = *(a3 + 45);
  sub_21B232090(v32, v26);
  sub_21B232090(v32, v26);

  sub_21B2CFEEC(v12, &v18, v27);
  if (v4)
  {
    sub_21B233788(v32);
    sub_21B234324(a1, a2);

    v13 = *(a3 + 16);
    v18 = *a3;
    v19 = v13;
    *v20 = *(a3 + 32);
    *&v20[13] = *(a3 + 45);
    return sub_21B233788(&v18);
  }

  else
  {
    sub_21B22E2D8(v30);

    sub_21B233788(v32);
    sub_21B234324(a1, a2);
    v23 = v27[6];
    v24 = v27[7];
    v25 = v28;
    *v20 = v27[2];
    *&v20[16] = v27[3];
    v21 = v27[4];
    v22 = v27[5];
    v18 = v27[0];
    v19 = v27[1];
    result = sub_21B233734(&v18);
    *(v29 + 3) = v30[0];
    *(&v29[1] + 3) = v30[1];
    *(&v29[2] + 3) = v31;
    *a4 = v10;
    v15 = *(a3 + 16);
    *(a4 + 8) = *a3;
    *(a4 + 24) = v15;
    *(a4 + 40) = *(a3 + 32);
    *(a4 + 53) = *(a3 + 45);
    v16 = v29[0];
    v17 = v29[1];
    *(a4 + 88) = *(&v29[1] + 11);
    *(a4 + 77) = v17;
    *(a4 + 61) = v16;
  }

  return result;
}

uint64_t sub_21B232308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v10 = *(a5 + 16);
    if (v10)
    {
      v11 = *(v10 + 8);
      if (v11 > a1)
      {
        v12 = *(a5 + 24);
        v13 = sub_21B232880(a1, *(a5 + 16), v11);
        if ((a2 & 0x8000000000000000) == 0)
        {
          v15 = *(v10 + 8);
          if (v15 > a2)
          {
            v16 = v13;
            v17 = v14;
            v18 = *(a5 + 24);
            v19 = sub_21B232880(a2, *(a5 + 16), v15);
            if (v17)
            {
              if (!v20)
              {
                v21 = 1;
LABEL_20:

                return v21 & 1;
              }

              if (a6)
              {
                if (v19 != v16 || v20 != v17)
                {
LABEL_19:
                  v21 = sub_21B34B9F4();

                  goto LABEL_20;
                }
              }

              else if (v16 != v19 || v17 != v20)
              {
                goto LABEL_19;
              }
            }

            else if (!v20)
            {
              v21 = 0;
              return v21 & 1;
            }

            v21 = 0;
            goto LABEL_20;
          }
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2324A8(char *__src, char *a2, char *a3, char *__dst, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t (*a9)(uint64_t, void, uint64_t, uint64_t, uint64_t, void))
{
  v10 = __dst;
  v11 = a3;
  v12 = a2;
  v13 = __src;
  v14 = a2 - __src;
  v15 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v15 = a2 - __src;
  }

  v16 = v15 >> 3;
  v17 = a3 - a2;
  v18 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v18 = a3 - a2;
  }

  v19 = v18 >> 3;
  if (v16 >= v18 >> 3)
  {
    if (__dst != a2 || &a2[8 * v19] <= __dst)
    {
      memmove(__dst, a2, 8 * v19);
    }

    v20 = (v10 + 8 * v19);
    if (v17 < 8 || v12 <= v13)
    {
      goto LABEL_53;
    }

    v24 = -v10;
    while (1)
    {
      v25 = v12 - 8;
      v26 = &v20[v24];
      v11 -= 8;
      v27 = v20;
      while (1)
      {
        v28 = *(v27 - 1);
        v27 -= 8;
        v29 = a9(v28, *v25, a5, a6, a7, a8 & 1);
        if (v9)
        {
          if (v26 >= 0)
          {
            v32 = v26;
          }

          else
          {
            v32 = v26 + 7;
          }

          v33 = v32 >> 3;
          if (v12 < v10 || v12 >= v10 + (v32 & 0xFFFFFFFFFFFFFFF8))
          {
            memmove(v12, v10, 8 * v33);
            goto LABEL_60;
          }

          if (v12 == v10)
          {
            goto LABEL_60;
          }

          goto LABEL_58;
        }

        v30 = v11 + 8;
        if (v29)
        {
          break;
        }

        if (v30 != v20)
        {
          *v11 = *v27;
        }

        v26 -= 8;
        v11 -= 8;
        v20 = v27;
        if (v27 <= v10)
        {
          v20 = v27;
          goto LABEL_53;
        }
      }

      if (v30 != v12)
      {
        *v11 = *v25;
      }

      if (v20 > v10)
      {
        v12 -= 8;
        v24 = -v10;
        if (v25 > v13)
        {
          continue;
        }
      }

      v12 = v25;
      goto LABEL_53;
    }
  }

  if (__dst != __src || &__src[8 * v16] <= __dst)
  {
    memmove(__dst, __src, 8 * v16);
  }

  v20 = (v10 + 8 * v16);
  if (v14 < 8)
  {
    v12 = v13;
    goto LABEL_53;
  }

  if (v12 >= v11)
  {
LABEL_20:
    v12 = v13;
LABEL_53:
    v34 = &v20[-v10 + 7];
    if (&v20[-v10] >= 0)
    {
      v34 = &v20[-v10];
    }

    v33 = v34 >> 3;
    if (v12 >= v10 && v12 < v10 + (v34 & 0xFFFFFFFFFFFFFFF8) && v12 == v10)
    {
      goto LABEL_60;
    }

LABEL_58:
    v35 = 8 * v33;
    v36 = v12;
LABEL_59:
    memmove(v36, v10, v35);
    goto LABEL_60;
  }

  while (1)
  {
    v21 = a9(*v12, *v10, a5, a6, a7, a8 & 1);
    if (v9)
    {
      break;
    }

    if ((v21 & 1) == 0)
    {
      v22 = v10;
      v23 = v13 == v10;
      v10 += 8;
      if (v23)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v13 = *v22;
      goto LABEL_18;
    }

    v22 = v12;
    v23 = v13 == v12;
    v12 += 8;
    if (!v23)
    {
      goto LABEL_17;
    }

LABEL_18:
    v13 += 8;
    if (v10 >= v20 || v12 >= v11)
    {
      goto LABEL_20;
    }
  }

  v31 = &v20[-v10 + 7];
  if (&v20[-v10] >= 0)
  {
    v31 = &v20[-v10];
  }

  if (v13 < v10 || v13 >= v10 + (v31 & 0xFFFFFFFFFFFFFFF8) || v13 != v10)
  {
    v35 = 8 * (v31 >> 3);
    v36 = v13;
    goto LABEL_59;
  }

LABEL_60:

  return 1;
}

uint64_t sub_21B2327F4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21B23A330(v3);
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

uint64_t sub_21B232880@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = result - (a3 & 0xFFFFFFFFFFFFFFF8);
    if (v3 >= 0)
    {
      v4 = 1 << v3;
    }

    else
    {
      LOBYTE(v4) = 0;
    }

    if ((v4 & *(a2 + result / 8 + 64)) == 0)
    {
      return 0;
    }

    v5 = *a2 + 7;
    if (!__OFADD__(*a2, 7))
    {
      if (v5 < 0)
      {
        v5 = *a2 + 14;
      }

      v6 = v5 >> 3;
      v8 = v6 - 1;
      v7 = v6 < 1;
      v9 = v6 + 62;
      if (!v7)
      {
        v9 = v8;
      }

      v10 = &a2[2 * result + 8] + (v9 & 0xFFFFFFFFFFFFFFC0);
      v11 = *(v10 + 64);
      v12 = *(v10 + 72);

      return v11;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_21B23293C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_21B232A48(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F708, &qword_21B358148);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7E0, &qword_21B352760);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21B232B7C(int64_t a1, void *a2, char **a3, uint64_t a4, uint64_t *a5)
{
  v54 = a5;
  v10 = sub_21B34AD44();
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x28223BE20](v10 - 8);
  v60 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[10];
  if (v14 <= a1)
  {
LABEL_43:
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000019, 0x800000021B34C9B0);
    v55[0] = a1;
    v44 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v44);

    MEMORY[0x21CEED5E0](0xD000000000000011, 0x800000021B34C9D0);
    v55[0] = v14;
    v45 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v45);

    MEMORY[0x21CEED5E0](0x2E73776F7220, 0xE600000000000000);
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v15 = a2[11];
  if (v15 < 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v47 = a4;
  v48 = v5;
  if (!v15)
  {
    return result;
  }

  v16 = a1 * v15;
  if ((a1 * v15) >> 64 != (a1 * v15) >> 63)
  {
    goto LABEL_41;
  }

  v17 = 0;
  v18 = a2[8];
  v19 = a2[12];
  v52 = v15 - 1;
  v53 = v19;
  v50 = v15;
  v51 = v19 + 32;
  v49 = a1 * v15;
  while (1)
  {
    if (v16 < 0)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v20 = v16 + v17;
    v21 = *(v53 + 16);
    if (v20 >= v21)
    {
      goto LABEL_37;
    }

    v22 = v20 + 1;
    if (v20 + 1 >= v21)
    {
      goto LABEL_38;
    }

    v23 = *(v51 + 8 * v20);
    v24 = *(v51 + 8 * v22);
    if (v17 == v52)
    {
      if (v23 < v24)
      {
        while (1)
        {
          v25 = *(v18 - 1 + v24);
          if (v25 != 13 && v25 != 10)
          {
            break;
          }

          if (v23 >= --v24)
          {
            v24 = v23;
            break;
          }
        }
      }
    }

    else
    {
      v24 -= v23 < v24;
    }

    if (!v18)
    {
      goto LABEL_42;
    }

    a1 = v24 - v23;
    if (__OFSUB__(v24, v23))
    {
      goto LABEL_39;
    }

    v27 = v23 + v18;
    sub_21B22F054(v23 + v18, v24 - v23);
    v28 = *a3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_21B2318E8(0, *(v28 + 2) + 1, 1, v28);
    }

    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    if (v30 >= v29 >> 1)
    {
      v28 = sub_21B2318E8((v29 > 1), v30 + 1, 1, v28);
    }

    *(v28 + 2) = v30 + 1;
    v28[v30 + 32] = 0;
    *a3 = v28;
    sub_21B34AD34();
    v31 = sub_21B34ACD4();
    if (!v32)
    {
      break;
    }

    v33 = v31;
    v34 = v32;
    v35 = v54;
    a1 = *v54;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v35 = a1;
    if ((result & 1) == 0)
    {
      result = sub_21B231F84(0, *(a1 + 16) + 1, 1, a1);
      a1 = result;
      *v54 = result;
    }

    v14 = *(a1 + 16);
    v36 = *(a1 + 24);
    if (v14 >= v36 >> 1)
    {
      result = sub_21B231F84((v36 > 1), v14 + 1, 1, a1);
      a1 = result;
      *v54 = result;
    }

    ++v17;
    *(a1 + 16) = v14 + 1;
    v37 = a1 + 16 * v14;
    *(v37 + 32) = v33;
    *(v37 + 40) = v34;
    v16 = v49;
    if (v17 == v50)
    {
      return result;
    }
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7F0, &qword_21B355E70);
  v58 = v38;
  v59 = sub_21B27A8D0();
  v56 = v27;
  v57 = a1;
  v39 = __swift_project_boxed_opaque_existential_1(&v56, v38);
  if (*v39)
  {
    v40 = (v39[1] + *v39);
  }

  else
  {
    v40 = 0;
  }

  sub_21B273F78(*v39, v40, v55);
  v41 = v55[0];
  v42 = v55[1];
  __swift_destroy_boxed_opaque_existential_1Tm(&v56);
  sub_21B27A934();
  swift_allocError();
  *v43 = v47;
  *(v43 + 8) = v17;
  *(v43 + 16) = v41;
  *(v43 + 24) = v42;
  *(v43 + 32) = 0;
  *(v43 + 40) = 0;
  return swift_willThrow();
}

void *sub_21B233014(void *a1, int64_t a2, char a3)
{
  result = sub_21B232A48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_21B233050(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7D8, &qword_21B352758);
  v2 = swift_allocObject();
  sub_21B233034(&v24, v1);
  v22 = v24;
  *(v2 + 16) = v24;
  swift_beginAccess();
  if (v1)
  {
    v3 = 0;
    v4 = v22;
    while (v3 < v1)
    {
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_34;
      }

      if (!v4)
      {
        goto LABEL_41;
      }

      v6 = *v4;
      v7 = v4[1];
      if (v7 >= *v4)
      {
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_36;
        }

        if (v6 < v12)
        {
          if (v6 + 0x4000000000000000 < 0)
          {
            goto LABEL_40;
          }

          if (2 * v6 <= v12)
          {
            v6 = v7 + 1;
          }

          else
          {
            v6 *= 2;
          }
        }

        v13 = *(v2 + 16);
        sub_21B2B0190(v13, v6, &v23);
        if (!v13)
        {
          goto LABEL_42;
        }

        if ((*(v13 + 8) & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        MEMORY[0x21CEEEA30](v13, -1, -1);
        v14 = v23;
        *(v2 + 16) = v23;
        v4 = v14;
        if (!v14)
        {
          goto LABEL_43;
        }

        if (*v14 > 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_38;
        }

        v15 = v14[1];
        v16 = v15 + 7;
        if (v15 >= 0)
        {
          v16 = v14[1];
        }

        v17 = v15 - (v16 & 0xFFFFFFFFFFFFFFF8);
        v18 = v14 + (v16 >> 3);
        if (v17 >= 0)
        {
          v19 = 1 << v17;
        }

        else
        {
          v19 = 0;
        }

        v18[64] |= v19;
        v20 = __OFADD__(v15, 1);
        v21 = v15 + 1;
        if (v20)
        {
          goto LABEL_39;
        }

        v14[1] = v21;
        v3 = v5;
        if (v5 == v1)
        {
          return;
        }
      }

      else
      {
        if (v6 > 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_35;
        }

        v8 = v7 + 7;
        if (v7 >= 0)
        {
          v8 = v4[1];
        }

        v9 = v8 >> 3;
        v10 = v7 - (v8 & 0xFFFFFFFFFFFFFFF8);
        if (v10 >= 0)
        {
          v11 = 1 << v10;
        }

        else
        {
          v11 = 0;
        }

        *(v4 + v9 + 64) |= v11;
        v4[1] = v7 + 1;
        ++v3;
        if (v5 == v1)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
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
  }
}

void *sub_21B2332B8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_21B233424(void *a1, int64_t a2, char a3)
{
  result = sub_21B233400(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_21B233444(__int128 *a1, char a2)
{
  v4 = a1[5];
  v35[4] = a1[4];
  v36 = v4;
  v37 = *(a1 + 12);
  v5 = a1[1];
  v35[0] = *a1;
  v35[1] = v5;
  v6 = a1[3];
  v35[2] = a1[2];
  v35[3] = v6;
  if ((a2 & 1) != 0 && v36 >= 1)
  {
    *v34 = MEMORY[0x277D84F90];
    *&v34[8] = *(a1 + 8);
    *&v34[24] = *(a1 + 24);
    *&v34[40] = *(a1 + 40);
    *&v34[53] = *(a1 + 53);
    v21[0] = MEMORY[0x277D84F90];
    v7 = a1[3];
    v8 = a1[5];
    v30 = a1[4];
    v31 = v8;
    v32 = *(a1 + 12);
    v9 = a1[1];
    v26 = *a1;
    v27 = v9;
    v28 = a1[2];
    v29 = v7;
    sub_21B232090(v35 + 8, &v23);
    sub_21B232B7C(0, &v26, v34, 0, v21);
    if (!v2)
    {
      v3 = v21[0];
      v23 = *v34;
      v24 = *&v34[16];
      v25[0] = *&v34[32];
      *(v25 + 13) = *&v34[45];
      sub_21B231F30(&v23);
      return v3;
    }

    goto LABEL_7;
  }

  v3 = MEMORY[0x277D84F90];
  if (v36 >= 1)
  {
    v33 = MEMORY[0x277D84F90];
    *v34 = MEMORY[0x277D84F90];
    *&v34[8] = *(a1 + 8);
    *&v34[24] = *(a1 + 24);
    *&v34[40] = *(a1 + 40);
    *&v34[53] = *(a1 + 53);
    v10 = a1[3];
    v11 = a1[5];
    v30 = a1[4];
    v31 = v11;
    v32 = *(a1 + 12);
    v12 = a1[1];
    v26 = *a1;
    v27 = v12;
    v28 = a1[2];
    v29 = v10;
    sub_21B232090(v35 + 8, &v23);
    sub_21B232B7C(0, &v26, v34, 0, &v33);
    if (v2)
    {
LABEL_7:

      v23 = *v34;
      v24 = *&v34[16];
      v25[0] = *&v34[32];
      *(v25 + 13) = *&v34[45];
      sub_21B231F30(&v23);
      return v3;
    }

    v13 = v33;
    v23 = *v34;
    v24 = *&v34[16];
    v25[0] = *&v34[32];
    *(v25 + 13) = *&v34[45];
    sub_21B231F30(&v23);
    v14 = *(v13 + 16);

    if (v14)
    {
      v38 = 0;
      v22 = v3;
      sub_21B231F10(0, v14, 0);
      v15 = 0;
      do
      {
        v21[0] = 0x206E6D756C6F43;
        v21[1] = 0xE700000000000000;
        v16 = sub_21B34B944();
        MEMORY[0x21CEED5E0](v16);

        v22 = v3;
        v18 = *(v3 + 16);
        v17 = *(v3 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_21B231F10((v17 > 1), v18 + 1, 1);
          v3 = v22;
        }

        ++v15;
        *(v3 + 16) = v18 + 1;
        v19 = v3 + 16 * v18;
        *(v19 + 32) = 0x206E6D756C6F43;
        *(v19 + 40) = 0xE700000000000000;
      }

      while (v14 != v15);
    }
  }

  return v3;
}

uint64_t sub_21B2337DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_21B34BBC4();
  sub_21B34AD94();
  v7 = sub_21B34BC24();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_21B34B9F4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_21B233928()
{
  v0 = sub_21B233AD0();

  return v0;
}

uint64_t sub_21B233A10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21B233AD0()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_21B233B24()
{
  result = qword_280C83780[0];
  if (!qword_280C83780[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C83780);
  }

  return result;
}

uint64_t sub_21B233B78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v6 = v2[1];
  if (*(v6 + 16))
  {
    v7 = sub_21B24B534(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      v22 = 0;
      v23 = 0xE000000000000000;
      MEMORY[0x21CEED5E0](v5, v4);
      v10 = v3[3];
      v11 = v3[4];
      sub_21B34AB14();
      v12 = __OFADD__(v9, 1);
      v13 = v9 + 1;
      if (!v12)
      {
        goto LABEL_8;
      }

      __break(1u);
    }
  }

  if ((sub_21B2337DC(v5, v4, *v3) & 1) == 0)
  {
    swift_bridgeObjectRetain_n();
    goto LABEL_10;
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  MEMORY[0x21CEED5E0](v5, v4);
  v14 = v3[3];
  v15 = v3[4];
  sub_21B34AB14();
  v13 = v3[2];
LABEL_8:
  v16 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v16);

  v18 = v22;
  v17 = v23;

  v19 = v3[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v3[1];
  sub_21B23A60C(v13, v5, v4, isUniquelyReferenced_nonNull_native);
  v3[1] = v22;
  v5 = v18;
  v4 = v17;
LABEL_10:
  sub_21B233D18(&v22, v5, v4);

  return v5;
}

uint64_t sub_21B233D18(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_21B34BBC4();
  sub_21B34AD94();
  v9 = sub_21B34BC24();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_21B34B9F4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_21B2341A4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_21B233E68(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1 + 7;
  if (__OFADD__(a1, 7))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = a1 + 14;
  if (v2 >= 0)
  {
    v5 = a1 + 7;
  }

  v6 = v5 >> 3;
  v8 = v6 - 1;
  v7 = v6 < 1;
  v9 = v6 + 62;
  if (!v7)
  {
    v9 = v8;
  }

  v10 = v9 & 0xFFFFFFFFFFFFFFC0;
  v11 = (v9 & 0xFFFFFFFFFFFFFFC0) + 128;
  v12 = v11 + a1;
  if (__OFADD__(v11, a1))
  {
    goto LABEL_12;
  }

  v13 = swift_slowAlloc();
  v13[1] = 0;
  v13[2] = 0;
  *v13 = a1;
  if (v2 < -1015)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v14 = v13;
  if (v10 != -64)
  {
    bzero(v13 + 8, v10 + 64);
  }

  *a2 = v14;
  a2[1] = v14 + v12;
}

uint64_t sub_21B233F44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3C8, &qword_21B351CD0);
  result = sub_21B34B5E4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_21B34BBC4();
      sub_21B34AD94();
      result = sub_21B34BC24();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_21B2341A4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21B233F44(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21B2563C8();
      goto LABEL_16;
    }

    sub_21B2571F4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_21B34BBC4();
  sub_21B34AD94();
  result = sub_21B34BC24();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_21B34B9F4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_21B34BA74();
  __break(1u);
  return result;
}

uint64_t sub_21B234324(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
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

uint64_t sub_21B2343D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v5 = a5 & 1;
  if (a3)
  {
    return a5 & 1;
  }

  v7 = __OFADD__(a1, v5);
  result = a1 + v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = __OFADD__(a2, v5);
  v8 = a2 + v5;
  if (v7)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = v8;
  }

  if (v9 < result)
  {
    v10 = result;
    sub_21B27A934();
    swift_allocError();
    *v12 = v10;
    *(v12 + 8) = a4;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 16) = 0;
    *(v12 + 40) = 6;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_21B234488(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21B23472C(&v16, a1, a2, &qword_27CD7E158, &unk_21B3526B0, sub_21B25DFE0, sub_21B2FD5CC);
  v6 = v5;
  result = sub_21B2348E0(v2 + 216, v2 + 288);
  if (v4 == v6)
  {
LABEL_6:
    v11 = v16;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E158, &unk_21B3526B0);
    v15 = &off_282CAA128;
    v12 = v11;
    v13 = v17;
    sub_21B2339B4(&v12, v3 + 288);
    return 1;
  }

  else
  {
    if (v6 >= v4)
    {
      while (v6 != v4)
      {
        v8 = *(v2 + 80);
        v18 = *(v2 + 64);
        v19 = v8;
        v20 = *(v2 + 96);
        v9 = sub_21B23087C(v4, *(v2 + 256));
        if ((sub_21B22EBA0(v9, v10, *(v2 + 104)) & 1) == 0)
        {

          return 0;
        }

        ++v4;
        result = sub_21B22E8E4(0, 0);
        if (v6 == v4)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B2345E0(uint64_t result)
{
  v2 = *(v1 + 264);
  v3 = *(v1 + 280);
  v4 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    __break(1u);
    goto LABEL_21;
  }

  if (__OFADD__(v4, result))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (*(v1 + 272) >= v4 + result)
  {
    v5 = v4 + result;
  }

  else
  {
    v5 = *(v1 + 272);
  }

  v6 = v5 - v4;
  if (v5 < v4)
  {
    goto LABEL_22;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = __OFADD__(v3, v6);
  v8 = v3 + v6;
  if (v7)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  *(v1 + 280) = v8;
  result = sub_21B234488(v4, v5);
  if ((result & 1) == 0)
  {
    result = sub_21B234B98(v4, v5);
    if ((result & 1) == 0)
    {
      result = sub_21B27D3F4(v4, v5);
      if ((result & 1) == 0)
      {
        if (*(v1 + 189) == 2)
        {
          result = sub_21B27D598(v4, v5);
          if (result)
          {
            return result;
          }
        }

        else
        {
          result = sub_21B27D798(v4, v5);
          if (result)
          {
            return result;
          }
        }

        result = sub_21B27D988(v4, v5);
        if ((result & 1) == 0)
        {
          result = sub_21B22EC70(v4, v5);
          if ((result & 1) == 0)
          {
            return sub_21B27DD4C(v4, v5);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_21B23472C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t))
{
  sub_21B233A74((v7 + 36), &v25);
  sub_21B234878(&v25, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  result = swift_dynamicCast();
  if (result)
  {
    v17 = v21;
    v16 = v22;
    v18 = v23;
LABEL_6:
    *a1 = v17;
    a1[1] = v16;
    a1[2] = v18;
    return a2;
  }

  a2 = v7[33];
  v19 = v7[34];
  v20 = v19 - a2;
  if (__OFSUB__(v19, a2))
  {
    __break(1u);
  }

  else
  {
    v17 = v7[41];
    v16 = v7[42];

    v26 = a6(MEMORY[0x277D84F90]);
    result = a7(v20);
    if (a2 <= a3)
    {
      v18 = v26;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B234878(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21B234890()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t PackedOptionalsStorage.__deallocating_deinit()
{
  PackedOptionalsStorage.deinit();

  return swift_deallocClassInstance();
}

void *PackedOptionalsStorage.deinit()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  v5 = *(v1 + 1);
  v3 = *(v2 + 80);
  type metadata accessor for PackedOptionalsBuffer();
  PackedOptionalsBuffer.deallocate()();
  return v1;
}

Swift::Void __swiftcall PackedOptionalsBuffer.deallocate()()
{
  v2 = *v1;
  if (!*v1)
  {
    goto LABEL_19;
  }

  if (__OFADD__(*v2, 7))
  {
    __break(1u);
  }

  else
  {
    if (*v2 + 7 < 0)
    {
      v3 = *v2 + 14;
    }

    v4 = v2[1];
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = v0;
      if (v4)
      {
        for (i = 0; i != v4; ++i)
        {
          if ((*(PackedOptionalsBuffer.nilBitmapBuffer.getter() + (i >> 3)) >> (i & 7)))
          {
            v7 = *(*(*(v5 + 16) - 8) + 72);
            sub_21B34B454();
          }
        }
      }

      if (!PackedOptionalsBuffer.nilBitmapBuffer.getter())
      {
        goto LABEL_20;
      }

      if (*v2 < 0x7FFFFFFFFFFFFFF9)
      {
        v8 = *(v5 + 16);
        type metadata accessor for PackedOptionalsBuffer.Header();
        sub_21B34B454();

LABEL_21:
        JUMPOUT(0x21CEEEA30);
      }

      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  goto LABEL_21;
}

void *PackedOptionalsBuffer.nilBitmapBuffer.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    goto LABEL_7;
  }

  if (__OFADD__(*v1, 7))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (*v1 + 7 < 0)
  {
    v2 = *v1 + 14;
  }

  return v1 + 8;
}

uint64_t sub_21B234B98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21B23472C(&v49, a1, a2, &qword_27CD7E170, &unk_21B3526E0, sub_21B234EF8, sub_21B2351E8);
  v6 = v5;
  result = sub_21B2348E0((v2 + 27), (v2 + 36));
  if (v4 == v6)
  {
LABEL_2:
    v8 = v49;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E170, &unk_21B3526E0);
    v48 = &off_282CAA128;
    v45 = v8;
    v46 = v50;
    sub_21B2339B4(&v45, (v3 + 36));
    return 1;
  }

  if (v6 < v4)
  {
    goto LABEL_61;
  }

  v9 = v2[11];
  v10 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    goto LABEL_62;
  }

  v11 = v2[32];
  v12 = v2[8];
  v13 = v2[12];
  v14 = v12 - 1;
  v44 = v13 + 32;
  v43 = v13;
  while (1)
  {
    if (v4 >= v6)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v16 = v4 * v9;
    if ((v4 * v9) >> 64 != (v4 * v9) >> 63)
    {
      goto LABEL_54;
    }

    v17 = __OFADD__(v16, v11);
    v18 = v16 + v11;
    if (v17)
    {
      goto LABEL_55;
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_56;
    }

    v19 = *(v13 + 16);
    if (v18 >= v19)
    {
      goto LABEL_57;
    }

    if (v18 + 1 >= v19)
    {
      goto LABEL_58;
    }

    v20 = *(v44 + 8 * v18);
    v21 = *(v44 + 8 * (v18 + 1));
    if (v11 == v10)
    {
      if (v20 < v21)
      {
        while (1)
        {
          v22 = *(v14 + v21);
          if (v22 != 13 && v22 != 10)
          {
            break;
          }

          if (v20 >= --v21)
          {
            v21 = v20;
            break;
          }
        }
      }
    }

    else
    {
      v21 -= v20 < v21;
    }

    if (!v12)
    {
      goto LABEL_63;
    }

    v24 = v21 - v20;
    if (__OFSUB__(v21, v20))
    {
      goto LABEL_59;
    }

    if (v24)
    {
      break;
    }

LABEL_43:
    if (sub_21B22EBA0(v12 + v20, v24, v3[13]))
    {
      result = 0;
      v15 = 1;
LABEL_8:
      result = sub_21B235528(result, v15);
    }

    else
    {
      v33 = v11;
      v34 = v6;
      v35 = v10;
      v36 = v9;
      v37 = v3;
      v38 = sub_21B22EA68(v12 + v20, v24);
      if (!v39 || (v40 = sub_21B2D27BC(v38, v39), v42 = v41, , (v42 & 1) != 0))
      {

        return 0;
      }

      result = sub_21B235528(v40, 0);
      v3 = v37;
      v9 = v36;
      v10 = v35;
      v6 = v34;
      v11 = v33;
      v13 = v43;
    }

    ++v4;
    v14 = v12 - 1;
    if (v4 == v6)
    {
      goto LABEL_2;
    }
  }

  if (v24 >= 1)
  {
    v25 = *(v12 + v20);
    if (v25 == 43)
    {
      v26 = 0;
      goto LABEL_35;
    }

    if (v25 == 45)
    {
      v26 = 1;
LABEL_35:
      v27 = 1;
      goto LABEL_36;
    }
  }

  v26 = 0;
  v27 = 0;
LABEL_36:
  result = 0;
  v28 = v27 + v20;
  v29 = (v12 + v27 + v20);
  v30 = v28 - v21;
  while (v30)
  {
    if ((*v29 - 58) < 0xF6u)
    {
      goto LABEL_43;
    }

    v31 = 10 * result;
    if ((result * 10) >> 64 != (10 * result) >> 63)
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v32 = *v29 - 48;
    result = v31 + v32;
    ++v29;
    ++v30;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_52;
    }
  }

  if ((v26 & 1) == 0 || (v17 = __OFSUB__(0, result), result = -result, !v17))
  {
    v15 = 0;
    goto LABEL_8;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

void sub_21B234EF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E488, &unk_21B3544A0);
  v3 = swift_allocObject();
  sub_21B235124(v2, &v31);
  v29 = v31;
  *(v3 + 16) = v31;
  swift_beginAccess();
  if (!v2)
  {
    return;
  }

  v4 = 0;
  v5 = v29;
  v6 = a1 + 40;
  while (2)
  {
    for (i = (v6 + 16 * v4); ; i += 16)
    {
      if (v4 >= v2)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_36;
      }

      if (!v5)
      {
        goto LABEL_43;
      }

      v9 = *(i - 1);
      v10 = *i;
      v11 = *v5;
      v12 = v5[1];
      if (v12 >= *v5)
      {
        break;
      }

      if (*i)
      {
        v13 = v5[2];
        v14 = __OFADD__(v13, 1);
        v15 = v13 + 1;
        if (v14)
        {
          goto LABEL_38;
        }

        v5[2] = v15;
      }

      else
      {
        v16 = v11 + 7;
        if (__OFADD__(v11, 7))
        {
          goto LABEL_39;
        }

        if (v16 < 0)
        {
          v16 = v11 + 14;
        }

        v17 = v16 >> 3;
        v19 = v17 - 1;
        v18 = v17 < 1;
        v20 = v17 + 62;
        if (!v18)
        {
          v20 = v19;
        }

        *(&v5[v12 + 16] + (v20 & 0xFFFFFFFFFFFFFFC0)) = v9;
        v21 = v5[1];
        v22 = v21 + 7;
        if (v21 >= 0)
        {
          v22 = v5[1];
        }

        v23 = v21 - (v22 & 0xFFFFFFFFFFFFFFF8);
        if (v23 >= 0)
        {
          v24 = 1 << v23;
        }

        else
        {
          v24 = 0;
        }

        *(v5 + (v22 >> 3) + 64) |= v24;
        v12 = v5[1];
      }

      v14 = __OFADD__(v12, 1);
      v25 = v12 + 1;
      if (v14)
      {
        goto LABEL_37;
      }

      v5[1] = v25;
      ++v4;
      if (v8 == v2)
      {
        return;
      }
    }

    v26 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v11 >= v26)
    {
      goto LABEL_31;
    }

    if (v11 + 0x4000000000000000 < 0)
    {
      goto LABEL_42;
    }

    if (2 * v11 <= v26)
    {
      v11 = v12 + 1;
    }

    else
    {
      v11 *= 2;
    }

LABEL_31:
    v27 = *(v3 + 16);
    sub_21B235334(v27, v11, v30);
    if (!v27)
    {
LABEL_44:
      __break(1u);
      return;
    }

    if ((*(v27 + 8) & 0x8000000000000000) != 0)
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    MEMORY[0x21CEEEA30](v27, -1, -1);
    v5 = v30[0];
    v28 = v30[1];
    *(v3 + 16) = v30[0];
    *(v3 + 24) = v28;
    sub_21B2357B0(v9, v10, v5);
    v4 = v8;
    if (v8 != v2)
    {
      continue;
    }

    break;
  }
}

void sub_21B235124(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1 + 7;
  if (__OFADD__(a1, 7))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = a1 + 14;
  if (v2 >= 0)
  {
    v5 = a1 + 7;
  }

  v6 = v5 >> 3;
  v8 = v6 - 1;
  v7 = v6 < 1;
  v9 = v6 + 62;
  if (!v7)
  {
    v9 = v8;
  }

  if ((a1 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_13;
  }

  v10 = v9 & 0xFFFFFFFFFFFFFFC0;
  v11 = (v9 & 0xFFFFFFFFFFFFFFC0) + 128;
  v12 = v11 + 8 * a1;
  if (__OFADD__(v11, 8 * a1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = swift_slowAlloc();
  v13[1] = 0;
  v13[2] = 0;
  *v13 = a1;
  if (v2 < -1015)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v14 = v13;
  if (v10 != -64)
  {
    bzero(v13 + 8, v10 + 64);
  }

  *a2 = v14;
  a2[1] = v14 + v12;
}

uint64_t sub_21B235224(uint64_t a1, void (*a2)(__int128 *__return_ptr, void, void, uint64_t), uint64_t *a3, uint64_t *a4, void (*a5)(__int128 *__return_ptr, void, void, uint64_t))
{
  v11 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v5;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    a2(&v16, *(v13 + 16), *(v13 + 24), a1);
    result = *(v13 + 16);
    if (result)
    {
      if ((*(result + 8) & 0x8000000000000000) == 0)
      {
        result = MEMORY[0x21CEEEA30]();
        *(v13 + 16) = v16;
        return result;
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v15 = swift_allocObject();
    swift_beginAccess();
    a5(&v16, *(v13 + 16), *(v13 + 24), a1);
    *(v15 + 16) = v16;

    *v5 = v15;
  }

  return result;
}

void sub_21B235334(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_37;
  }

  if (*a1 > a2)
  {
    __break(1u);
    goto LABEL_30;
  }

  v6 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v6 < 0)
  {
    v6 = a2 + 14;
  }

  v7 = v6 >> 3;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (!v8)
  {
    v10 = v9;
  }

  if ((a2 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_31;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFC0;
  v12 = (v10 & 0xFFFFFFFFFFFFFFC0) + 128;
  v13 = v12 + 8 * a2;
  if (__OFADD__(v12, 8 * a2))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = swift_slowAlloc();
  v15 = *(a1 + 8);
  *v14 = a2;
  *(v14 + 8) = v15;
  v16 = *a1 + 7;
  if (__OFADD__(*a1, 7))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v17 = v14;
  v27 = a3;
  v18 = v14 + 64;
  v19 = v16 / 8 + 62;
  if (v16 / 8 - 1 >= 0)
  {
    v19 = v16 / 8 - 1;
  }

  v20 = v19 & 0xFFFFFFFFFFFFFFC0;
  v21 = (v19 & 0xFFFFFFFFFFFFFFC0) + 64;
  memcpy((v14 + 64), (a1 + 64), v21);
  if ((v11 - v20) < 0)
  {
    goto LABEL_34;
  }

  if (v11 != v20)
  {
    bzero((v18 + v20 + 64), v11 - v20);
  }

  v22 = *(v17 + 8);
  if ((v22 & 0x8000000000000000) == 0)
  {
    if (v22)
    {
      v23 = 0;
      v24 = 0;
      v25 = v17 + v12;
      v26 = a1 + v20;
      do
      {
        if (((*(v18 + (v24 >> 3)) >> (v24 & 7)) & 1) != 0 && (v25 != a1 + 64 + v20 + 64 || v25 + v23 >= v26 + v23 + 136))
        {
          *(v25 + 8 * v24) = *(v26 + 8 * v24 + 128);
        }

        ++v24;
        v23 += 8;
      }

      while (v22 != v24);
    }

    if (!v21)
    {
      goto LABEL_28;
    }

    if (v16 >= -503)
    {
      bzero((a1 + 64), v21);
LABEL_28:
      *(a1 + 16) = *(v17 + 8);
      *v27 = v17;
      v27[1] = v17 + v13;
      return;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_21B235528(uint64_t a1, char a2)
{
  v5 = *v2;
  result = swift_beginAccess();
  v7 = *(v5 + 16);
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = *(v7 + 8);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v13 = *(v12 + 16);
    if (v13)
    {
      if (*v13 < v9)
      {
        sub_21B2B3508(v9, 1);
      }

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  result = swift_beginAccess();
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = *v14;
    if (*v14 >= v9)
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E488, &unk_21B3544A0);
      v16 = swift_allocObject();
      v17 = *(v12 + 24);
      sub_21B2AECDC(v14, v15, &v19);
      *(v16 + 16) = v19;

      *v2 = v16;
      v12 = v16;
LABEL_14:
      swift_beginAccess();
      v18 = *(v12 + 24);
      return sub_21B2357B0(a1, a2 & 1, *(v12 + 16));
    }

    if (v15 + 0x4000000000000000 >= 0)
    {
      if (2 * v15 <= v9)
      {
        v15 = v9;
      }

      else
      {
        v15 *= 2;
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

char *sub_21B2356AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E190, &qword_21B351AC0);
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

uint64_t sub_21B2357B0(uint64_t result, char a2, void *a3)
{
  if (a2)
  {
    if (!a3)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v3 = a3[2];
    v4 = __OFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      goto LABEL_20;
    }

    a3[2] = v5;
LABEL_17:
    v15 = a3[1];
    v4 = __OFADD__(v15, 1);
    v16 = v15 + 1;
    if (!v4)
    {
      a3[1] = v16;
      return result;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a3)
  {
    v6 = *a3 + 7;
    if (__OFADD__(*a3, 7))
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v6 < 0)
    {
      v6 = *a3 + 14;
    }

    v7 = v6 >> 3;
    v9 = v7 - 1;
    v8 = v7 < 1;
    v10 = v7 + 62;
    if (!v8)
    {
      v10 = v9;
    }

    *(&a3[a3[1] + 16] + (v10 & 0xFFFFFFFFFFFFFFC0)) = result;
    v11 = a3[1];
    v12 = v11 + 7;
    if (v11 >= 0)
    {
      v12 = a3[1];
    }

    v13 = v11 - (v12 & 0xFFFFFFFFFFFFFFF8);
    if (v13 >= 0)
    {
      v14 = 1 << v13;
    }

    else
    {
      v14 = 0;
    }

    *(a3 + (v12 >> 3) + 64) |= v14;
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_21B23588C(__int128 *a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  return DataFrame.subscript.getter(*a2, a2[1]);
}

_OWORD *sub_21B235934(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21B235950()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B235988()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21B235A08@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_21B27D2EC;
  a2[1] = v5;
}

uint64_t sub_21B235A78()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 sub_21B235ACC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21B235B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21B235BA0()
{
  swift_getWitnessTable();

  return sub_21B34B154();
}

uint64_t sub_21B235C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

void *sub_21B235CE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *a3;
  v7 = type metadata accessor for Column();
  return sub_21B28E8DC(a1, v6, v7);
}

__n128 sub_21B235D78(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_21B235D8C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_21B23A9F4(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_21B235DD8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21B235E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21B235EA0()
{
  swift_getWitnessTable();

  return sub_21B34B154();
}

uint64_t sub_21B235F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21B235FA4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21B236040(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *a3;
  v7 = type metadata accessor for ColumnSlice();
  return sub_21B29318C(a1, v6, v7);
}

uint64_t sub_21B2360B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_21B23A9F4(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_21B236104(void *a1, void *a2)
{
  v2 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B23611C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21B2361A0()
{
  swift_getWitnessTable();

  return sub_21B34B154();
}

uint64_t sub_21B236240@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  result = PackedOptionalsBuffer.count.getter();
  *a2 = result;
  return result;
}

uint64_t sub_21B2362CC@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  result = PackedOptionalsBuffer.nilCount.getter();
  *a2 = result;
  return result;
}

uint64_t sub_21B236368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21B2363EC()
{
  swift_getWitnessTable();

  return sub_21B34B154();
}

uint64_t sub_21B236470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21B2364F8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 216);

  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return result;
}

__n128 sub_21B23655C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_21B23657C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_21B236588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21B34B6B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B236634(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21B34B6B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B236740()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_21B23A9F4(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

void *sub_21B2367CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *a3;
  v7 = type metadata accessor for DiscontiguousColumnSlice();
  return sub_21B2D8534(a1, v6, v7);
}

__n128 sub_21B236850(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_21B23686C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21B2368F0()
{
  swift_getWitnessTable();

  return sub_21B34B154();
}

uint64_t sub_21B236974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21B236A04()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B236A3C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[8];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21B236A90()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  v3 = v0[12];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_21B236B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21B34B6E4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21B236BBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21B34B6E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21B236C68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_21B334EF8(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_21B236CBC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(*(v3 + 8) + 8))(v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21B236D18(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(*(v4 + 8) + 128))(v2, v3);
}

uint64_t sub_21B236D90(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  return (*(*(v5 + 8) + 144))(v2, v3, v4);
}

uint64_t sub_21B236E34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  v7 = type metadata accessor for FilledColumn();
  result = FilledColumn.name.getter(v7);
  *a3 = result;
  a3[1] = v9;
  return result;
}

__n128 sub_21B236E80(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21B236E8C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21B236ECC()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21B236F4C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B236F84@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_21B2FADD0;
  a2[1] = v5;
}

uint64_t sub_21B236FF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B237034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21B2370B8()
{
  swift_getWitnessTable();

  return sub_21B34B154();
}

uint64_t sub_21B23713C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21B2371B0()
{
  v1 = sub_21B34A8B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_21B34A8A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

Swift::Int sub_21B2372F8@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X1>, Swift::Int *a3@<X8>)
{
  v6 = *v3;
  *v7 = v3[1];
  *&v7[9] = *(v3 + 25);
  result = sub_21B30B2A8(*a1, a2);
  *a3 = result;
  return result;
}

Swift::Int sub_21B237344(Swift::Int *a1, Swift::Int *a2)
{
  v4 = *v2;
  *v5 = v2[1];
  *&v5[9] = *(v2 + 25);
  return sub_21B30B388(*a1, *a2);
}

uint64_t sub_21B2373D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = a3[1];
  v8[0] = *a3;
  v8[1] = v6;

  return sub_21B30EAA4(a1, v8);
}

uint64_t sub_21B237474(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  sub_21B2832C0(a1, v5);
  return DataFrame.Row.subscript.setter(v5, v3);
}

uint64_t sub_21B2374E0()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21B237530()
{
  v1 = v0[11];

  v2 = v0[13];

  v3 = v0[15];

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_21B237588()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21B2375C0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21B237608()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B237684(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  sub_21B34B474();
  sub_21B34B474();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for Tuple2();
  type metadata accessor for ColumnBuilder2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for CustomGrouping();
  return swift_getWitnessTable();
}

uint64_t sub_21B2377C8(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[5];
  v6 = a1[1];
  v4 = a1[7];
  sub_21B34B474();
  sub_21B34B474();
  sub_21B34B474();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for Tuple3();
  type metadata accessor for ColumnBuilder3();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for CustomGrouping();
  return swift_getWitnessTable();
}

uint64_t sub_21B237958()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void *sub_21B2379B8@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + a2;
  }

  return result;
}

uint64_t sub_21B2379D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_21B32C864(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_21B237A44()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21B237A84()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_21B23A9F4(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_21B237AD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_21B334EFC(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_21B237B38(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(*(v4 + 8) + 128))(v2, v3);
}

uint64_t sub_21B237BB0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  return (*(*(v5 + 8) + 144))(v2, v3, v4);
}

uint64_t sub_21B237C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for FormattingOptions() + 48);
  v5 = sub_21B34A784();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t sub_21B237CE0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for FormattingOptions() + 48);
  v5 = sub_21B34A784();
  v6 = *(*(v5 - 8) + 24);

  return v6(a2 + v4, a1, v5);
}

uint64_t sub_21B237D68(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = a3[10];
LABEL_9:
    v15 = *(v12 + 48);

    return v15(a1 + v13, a2, v11);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v11 = v14;
    v12 = *(v14 - 8);
    v13 = a3[11];
    goto LABEL_9;
  }

  v16 = sub_21B34A784();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[12];

  return v17(v18, a2, v16);
}

uint64_t sub_21B237EEC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = a2 + 1;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = sub_21B34A784();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_21B238098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21B23811C()
{
  swift_getWitnessTable();

  return sub_21B34B154();
}

uint64_t sub_21B2381A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21B238214()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void *sub_21B23825C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_21B238274(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

unint64_t sub_21B23828C(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1)++;
  v3 = v2 >> 1;
  if (v2)
  {
    v4 = v1[1];
    *a1 = v1 + 2;
    v3 = (v2 >> 2) | (v4 << 6);
    if ((v2 & 3) != 1)
    {
      v5 = v1[2];
      *a1 = v1 + 3;
      v3 = (v3 >> 1) | (v5 << 13);
      if ((v2 & 7) != 3)
      {
        v6 = v1[3];
        *a1 = v1 + 4;
        v3 = (v3 >> 1) | (v6 << 20);
        if ((v2 & 0xF) != 7)
        {
          v7 = v1[4];
          *a1 = v1 + 5;
          v3 = (v3 >> 1) | (v7 << 27);
          if ((v2 & 0x1F) != 0xF)
          {
            v8 = v1[5];
            *a1 = v1 + 6;
            v3 = (v3 >> 1) | (v8 << 34);
            if ((v2 & 0x3F) != 0x1F)
            {
              v9 = v1[6];
              *a1 = v1 + 7;
              v3 = (v3 >> 1) | (v9 << 41);
              if ((v2 & 0x7F) != 0x3F)
              {
                v10 = (v3 >> 1) | (v1[7] << 48);
                *a1 = v1 + 9;
                return v10 | (v1[8] << 56);
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

char *sub_21B238388(uint64_t *a1, uint64_t a2)
{
  v5 = a2;
  if (a2 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 + 7;
  }

  v8 = a2 - (v7 & 0xFFFFFFFFFFFFFFF8);
  v9 = sub_21B2498C0(0, a2 & ~(a2 >> 63), 0, MEMORY[0x277D84F90]);
  v11 = v9;
  if (v8 < 1)
  {
    goto LABEL_25;
  }

  v12 = *(*a1)++;
  v3 = v12 >> (-v8 & 7);
  v4 = *(v9 + 2);
  v10 = *(v9 + 3);
  v2 = v4 + 1;
  if (v4 >= v10 >> 1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v10 = v3 & 1;
    *(v11 + 2) = v2;
    *&v11[8 * v4 + 32] = v10;
    if (v8 != 1)
    {
      v13 = *(v11 + 3);
      v14 = v4 + 2;
      if (v2 >= v13 >> 1)
      {
        v11 = sub_21B2498C0((v13 > 1), v4 + 2, 1, v11);
      }

      v10 = (v3 >> 1) & 1;
      *(v11 + 2) = v14;
      *&v11[8 * v2 + 32] = v10;
      if (v8 != 2)
      {
        v15 = *(v11 + 3);
        v2 = v4 + 3;
        if (v14 >= v15 >> 1)
        {
          v11 = sub_21B2498C0((v15 > 1), v4 + 3, 1, v11);
        }

        v10 = (v3 >> 2) & 1;
        *(v11 + 2) = v2;
        *&v11[8 * v14 + 32] = v10;
        if (v8 != 3)
        {
          v16 = *(v11 + 3);
          v17 = v4 + 4;
          if (v2 >= v16 >> 1)
          {
            v11 = sub_21B2498C0((v16 > 1), v4 + 4, 1, v11);
          }

          v10 = (v3 >> 3) & 1;
          *(v11 + 2) = v17;
          *&v11[8 * v2 + 32] = v10;
          if (v8 != 4)
          {
            v18 = *(v11 + 3);
            v2 = v4 + 5;
            if (v17 >= v18 >> 1)
            {
              v11 = sub_21B2498C0((v18 > 1), v4 + 5, 1, v11);
            }

            v10 = (v3 >> 4) & 1;
            *(v11 + 2) = v2;
            *&v11[8 * v17 + 32] = v10;
            if (v8 != 5)
            {
              v19 = *(v11 + 3);
              v20 = v4 + 6;
              if (v2 >= v19 >> 1)
              {
                v11 = sub_21B2498C0((v19 > 1), v4 + 6, 1, v11);
              }

              v10 = (v3 >> 5) & 1;
              *(v11 + 2) = v20;
              *&v11[8 * v2 + 32] = v10;
              if (v8 != 6)
              {
                v21 = *(v11 + 3);
                v2 = v4 + 7;
                if (v20 >= v21 >> 1)
                {
                  v11 = sub_21B2498C0((v21 > 1), v4 + 7, 1, v11);
                }

                v10 = (v3 >> 6) & 1;
                *(v11 + 2) = v2;
                *&v11[8 * v20 + 32] = v10;
              }
            }
          }
        }
      }
    }

LABEL_25:
    if (v5 >= -7)
    {
      break;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    v11 = sub_21B2498C0((v10 > 1), v2, 1, v11);
  }

  v10 = v5 + 7;
  if ((v5 + 7) >= 0xF)
  {
    v22 = v7 >> 3;
    v7 = *a1;
    while (v22)
    {
      v8 = *v7;
      v3 = *(v11 + 2);
      v23 = *(v11 + 3);
      v24 = v23 >> 1;
      v25 = v3 + 1;
      if (v23 >> 1 <= v3)
      {
        v11 = sub_21B2498C0((v23 > 1), v3 + 1, 1, v11);
        v23 = *(v11 + 3);
        v24 = v23 >> 1;
      }

      *(v11 + 2) = v25;
      *&v11[8 * v3 + 32] = v8 & 1;
      v26 = v3 + 2;
      if (v24 < (v3 + 2))
      {
        v11 = sub_21B2498C0((v23 > 1), v3 + 2, 1, v11);
      }

      *(v11 + 2) = v26;
      *&v11[8 * v25 + 32] = (v8 >> 1) & 1;
      v27 = *(v11 + 3);
      v28 = v3 + 3;
      if ((v3 + 3) > (v27 >> 1))
      {
        v11 = sub_21B2498C0((v27 > 1), v3 + 3, 1, v11);
      }

      *(v11 + 2) = v28;
      *&v11[8 * v26 + 32] = (v8 >> 2) & 1;
      v29 = *(v11 + 3);
      v30 = v3 + 4;
      if ((v3 + 4) > (v29 >> 1))
      {
        v11 = sub_21B2498C0((v29 > 1), v3 + 4, 1, v11);
      }

      *(v11 + 2) = v30;
      *&v11[8 * v28 + 32] = (v8 >> 3) & 1;
      v31 = *(v11 + 3);
      v32 = v3 + 5;
      if ((v3 + 5) > (v31 >> 1))
      {
        v11 = sub_21B2498C0((v31 > 1), v3 + 5, 1, v11);
      }

      *(v11 + 2) = v32;
      *&v11[8 * v30 + 32] = (v8 >> 4) & 1;
      v33 = *(v11 + 3);
      v34 = v3 + 6;
      if ((v3 + 6) > (v33 >> 1))
      {
        v11 = sub_21B2498C0((v33 > 1), v3 + 6, 1, v11);
      }

      *(v11 + 2) = v34;
      *&v11[8 * v32 + 32] = (v8 >> 5) & 1;
      v35 = *(v11 + 3);
      v5 = v3 + 7;
      if ((v3 + 7) > (v35 >> 1))
      {
        v11 = sub_21B2498C0((v35 > 1), v3 + 7, 1, v11);
      }

      *(v11 + 2) = v5;
      *&v11[8 * v34 + 32] = (v8 >> 6) & 1;
      v36 = *(v11 + 3);
      v2 = v3 + 8;
      if ((v3 + 8) > (v36 >> 1))
      {
        v11 = sub_21B2498C0((v36 > 1), v3 + 8, 1, v11);
      }

      ++v7;
      v10 = v8 >> 7;
      *(v11 + 2) = v2;
      *&v11[8 * v5 + 32] = v10;
      if (!--v22)
      {
        *a1 = v7;
        return v11;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

  return v11;
}

char *sub_21B238818(unsigned __int8 **a1, uint64_t a2)
{
  if (a2 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 + 3;
  }

  v8 = a2 - (v7 & 0xFFFFFFFFFFFFFFFCLL);
  v9 = sub_21B2498C0(0, a2 & ~(a2 >> 63), 0, MEMORY[0x277D84F90]);
  v11 = v9;
  if (v8 < 1)
  {
    goto LABEL_13;
  }

  v12 = *(*a1)++;
  v3 = v12 >> (2 * ((3 * v8) & 3));
  v4 = *(v9 + 2);
  v10 = *(v9 + 3);
  v2 = v4 + 1;
  if (v4 >= v10 >> 1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v10 = v3 & 3;
    *(v11 + 2) = v2;
    *&v11[8 * v4 + 32] = v10;
    if (v8 != 1)
    {
      v13 = *(v11 + 3);
      v14 = v4 + 2;
      if (v2 >= v13 >> 1)
      {
        v11 = sub_21B2498C0((v13 > 1), v4 + 2, 1, v11);
      }

      v10 = (v3 >> 2) & 3;
      *(v11 + 2) = v14;
      *&v11[8 * v2 + 32] = v10;
      if (v8 != 2)
      {
        v15 = *(v11 + 3);
        v2 = v4 + 3;
        if (v14 >= v15 >> 1)
        {
          v11 = sub_21B2498C0((v15 > 1), v4 + 3, 1, v11);
        }

        v10 = (v3 >> 4) & 3;
        *(v11 + 2) = v2;
        *&v11[8 * v14 + 32] = v10;
      }
    }

LABEL_13:
    if (a2 >= -3)
    {
      break;
    }

    __break(1u);
LABEL_28:
    v11 = sub_21B2498C0((v10 > 1), v2, 1, v11);
  }

  if ((a2 + 3) >= 7)
  {
    v16 = v7 >> 2;
    v17 = *a1;
    do
    {
      v18 = *v17;
      v20 = *(v11 + 2);
      v19 = *(v11 + 3);
      v21 = v19 >> 1;
      v22 = v20 + 1;
      if (v19 >> 1 <= v20)
      {
        v11 = sub_21B2498C0((v19 > 1), v20 + 1, 1, v11);
        v19 = *(v11 + 3);
        v21 = v19 >> 1;
      }

      *(v11 + 2) = v22;
      *&v11[8 * v20 + 32] = v18 & 3;
      v23 = v20 + 2;
      if (v21 < (v20 + 2))
      {
        v11 = sub_21B2498C0((v19 > 1), v20 + 2, 1, v11);
      }

      *(v11 + 2) = v23;
      *&v11[8 * v22 + 32] = (v18 >> 2) & 3;
      v24 = *(v11 + 3);
      v25 = v20 + 3;
      if ((v20 + 3) > (v24 >> 1))
      {
        v11 = sub_21B2498C0((v24 > 1), v20 + 3, 1, v11);
      }

      *(v11 + 2) = v25;
      *&v11[8 * v23 + 32] = (v18 >> 4) & 3;
      v26 = *(v11 + 3);
      if ((v20 + 4) > (v26 >> 1))
      {
        v11 = sub_21B2498C0((v26 > 1), v20 + 4, 1, v11);
      }

      ++v17;
      *(v11 + 2) = v20 + 4;
      *&v11[8 * v25 + 32] = v18 >> 6;
      --v16;
    }

    while (v16);
    *a1 = v17;
  }

  return v11;
}

char *sub_21B238AA0(unsigned __int8 **a1, uint64_t a2)
{
  v7 = sub_21B2498C0(0, a2 & ~(a2 >> 63), 0, MEMORY[0x277D84F90]);
  v9 = v7;
  if ((a2 & 1) == 0)
  {
    goto LABEL_4;
  }

  v3 = *(*a1)++;
  v4 = *(v7 + 2);
  v8 = *(v7 + 3);
  v2 = v4 + 1;
  if (v4 >= v8 >> 1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v8 = v3 >> 4;
    *(v9 + 2) = v2;
    *&v9[8 * v4 + 32] = v3 >> 4;
LABEL_4:
    if (a2 >= -1)
    {
      break;
    }

    __break(1u);
LABEL_15:
    v9 = sub_21B2498C0((v8 > 1), v2, 1, v9);
  }

  if ((a2 + 1) >= 3)
  {
    v10 = a2 / 2;
    v11 = *a1;
    do
    {
      v12 = *v11;
      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      v15 = v13 >> 1;
      v16 = v14 + 1;
      if (v13 >> 1 <= v14)
      {
        v9 = sub_21B2498C0((v13 > 1), v14 + 1, 1, v9);
        v13 = *(v9 + 3);
        v15 = v13 >> 1;
      }

      *(v9 + 2) = v16;
      *&v9[8 * v14 + 32] = v12 & 0xF;
      v17 = v14 + 2;
      if (v15 < v17)
      {
        v9 = sub_21B2498C0((v13 > 1), v17, 1, v9);
      }

      ++v11;
      *(v9 + 2) = v17;
      *&v9[8 * v16 + 32] = v12 >> 4;
      --v10;
    }

    while (v10);
    *a1 = v11;
  }

  return v9;
}

char *sub_21B238C00(unsigned __int8 **a1, uint64_t a2)
{
  v2 = a2;
  result = sub_21B2498C0(0, a2 & ~(a2 >> 63), 0, MEMORY[0x277D84F90]);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (v2)
    {
      v6 = *a1;
      v7 = *(result + 2);
      do
      {
        v8 = *v6;
        v9 = *(v5 + 3);
        if (v7 >= v9 >> 1)
        {
          v5 = sub_21B2498C0((v9 > 1), v7 + 1, 1, v5);
        }

        ++v6;
        *(v5 + 2) = v7 + 1;
        *&v5[8 * v7++ + 32] = v8;
        --v2;
      }

      while (v2);
      *a1 = v6;
    }

    return v5;
  }

  return result;
}

char *sub_21B238CBC(unsigned __int16 **a1, uint64_t a2)
{
  v2 = a2;
  result = sub_21B2498C0(0, a2 & ~(a2 >> 63), 0, MEMORY[0x277D84F90]);
  v5 = result;
  v6 = *a1;
  if (*a1)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      if (v2)
      {
        v10 = *(result + 2);
        do
        {
          v11 = *v6;
          v12 = *(v5 + 3);
          if (v10 >= v12 >> 1)
          {
            v5 = sub_21B2498C0((v12 > 1), v10 + 1, 1, v5);
          }

          ++v6;
          *(v5 + 2) = v10 + 1;
          *&v5[8 * v10++ + 32] = v11;
          --v2;
        }

        while (v2);
        goto LABEL_15;
      }

      return v5;
    }
  }

  else
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      if (v2)
      {
        v7 = *(result + 2);
        do
        {
          v8 = *v6;
          v9 = *(v5 + 3);
          if (v7 >= v9 >> 1)
          {
            v5 = sub_21B2498C0((v9 > 1), v7 + 1, 1, v5);
          }

          ++v6;
          *(v5 + 2) = v7 + 1;
          *&v5[8 * v7++ + 32] = v8;
          --v2;
        }

        while (v2);
LABEL_15:
        *a1 = v6;
        return v5;
      }

      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_21B238DDC(unint64_t *a1, uint64_t a2)
{
  v2 = a2;
  result = sub_21B2498C0(0, a2 & ~(a2 >> 63), 0, MEMORY[0x277D84F90]);
  v5 = result;
  v6 = *a1;
  if ((*a1 & 3) != 0)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      if (v2)
      {
        v7 = *(result + 2);
        do
        {
          v8 = *v6;
          v9 = *(v5 + 3);
          if (v7 >= v9 >> 1)
          {
            v5 = sub_21B2498C0((v9 > 1), v7 + 1, 1, v5);
          }

          ++v6;
          *(v5 + 2) = v7 + 1;
          *&v5[8 * v7++ + 32] = v8;
          --v2;
        }

        while (v2);
LABEL_15:
        *a1 = v6;
        return v5;
      }

      return v5;
    }

    __break(1u);
  }

  else if ((v2 & 0x8000000000000000) == 0)
  {
    if (v2)
    {
      v10 = *(result + 2);
      do
      {
        v11 = *v6;
        v12 = *(v5 + 3);
        if (v10 >= v12 >> 1)
        {
          v5 = sub_21B2498C0((v12 > 1), v10 + 1, 1, v5);
        }

        ++v6;
        *(v5 + 2) = v10 + 1;
        *&v5[8 * v10++ + 32] = v11;
        --v2;
      }

      while (v2);
      goto LABEL_15;
    }

    return v5;
  }

  __break(1u);
  return result;
}

char *sub_21B238F00(void **a1, uint64_t a2)
{
  v2 = a2;
  result = sub_21B2498C0(0, a2 & ~(a2 >> 63), 0, MEMORY[0x277D84F90]);
  v5 = result;
  v6 = *a1;
  if ((*a1 & 7) != 0)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      if (v2)
      {
        v7 = *(result + 2);
        do
        {
          v8 = *v6;
          v9 = *(v5 + 3);
          if (v7 >= v9 >> 1)
          {
            v5 = sub_21B2498C0((v9 > 1), v7 + 1, 1, v5);
          }

          ++v6;
          *(v5 + 2) = v7 + 1;
          *&v5[8 * v7++ + 32] = v8;
          --v2;
        }

        while (v2);
LABEL_15:
        *a1 = v6;
        return v5;
      }

      return v5;
    }

    __break(1u);
  }

  else if ((v2 & 0x8000000000000000) == 0)
  {
    if (v2)
    {
      v10 = *(result + 2);
      do
      {
        v11 = *v6;
        v12 = *(v5 + 3);
        if (v10 >= v12 >> 1)
        {
          v5 = sub_21B2498C0((v12 > 1), v10 + 1, 1, v5);
        }

        ++v6;
        *(v5 + 2) = v10 + 1;
        *&v5[8 * v10++ + 32] = v11;
        --v2;
      }

      while (v2);
      goto LABEL_15;
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B239024(unsigned __int8 **a1, uint64_t a2)
{
  result = MEMORY[0x277D84F90];
  if (a2)
  {
    v7 = a2;
    if (a2 > 128)
    {
      sub_21B239564();
      swift_allocError();
      *v8 = 0xD000000000000029;
      *(v8 + 8) = 0x800000021B34C2E0;
      *(v8 + 16) = 0;
      return swift_willThrow();
    }

    v10 = (*a1 + 1);
    v9 = **a1;
    *a1 = v10;
    v11 = v9 & 3;
    if (v11 == 3)
    {
      goto LABEL_76;
    }

    if (v9 > 3)
    {
      v4 = 1 << ((v9 >> 2) - 1);
      v43 = result;
      v15 = result;
      v3 = sub_21B23828C(a1);
      result = v15;
      if ((v11 - 1) > 1)
      {
        goto LABEL_12;
      }

      result = sub_21B2498C0(0, 1, 1, MEMORY[0x277D84F90]);
      v9 = *(result + 16);
      v2 = *(result + 24);
      v10 = v9 + 1;
      if (v9 >= v2 >> 1)
      {
        goto LABEL_77;
      }

      goto LABEL_11;
    }

    result = sub_21B23828C(a1);
    if ((v7 & 0x8000000000000000) != 0)
    {
      while (1)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        v41 = v9;
        v42 = v10;
        result = sub_21B2498C0((v2 > 1), v10, 1, result);
        v9 = v41;
        v10 = v42;
LABEL_11:
        *(result + 16) = v10;
        *(result + 8 * v9 + 32) = v3;
        v43 = result;
LABEL_12:
        if (v4 <= 7)
        {
          switch(v4)
          {
            case 1:
              v24 = *(result + 16);
              if (__OFSUB__(v7, v24))
              {
                __break(1u);
LABEL_82:
                __break(1u);
LABEL_83:
                __break(1u);
LABEL_84:
                __break(1u);
LABEL_85:
                __break(1u);
LABEL_86:
                __break(1u);
LABEL_87:
                __break(1u);
                return result;
              }

              v17 = sub_21B238388(a1, v7 - v24);
              break;
            case 2:
              v29 = *(result + 16);
              if (__OFSUB__(v7, v29))
              {
                goto LABEL_87;
              }

              v17 = sub_21B238818(a1, v7 - v29);
              break;
            case 4:
              v22 = *(result + 16);
              if (__OFSUB__(v7, v22))
              {
                goto LABEL_86;
              }

              v17 = sub_21B238AA0(a1, v7 - v22);
              break;
            default:
              goto LABEL_35;
          }
        }

        else if (v4 > 31)
        {
          if (v4 == 32)
          {
            v28 = *(result + 16);
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_83;
            }

            v17 = sub_21B238DDC(a1, v7 - v28);
          }

          else
          {
            if (v4 != 64)
            {
LABEL_35:
              sub_21B34B634();

              v25 = sub_21B34B944();
              MEMORY[0x21CEED5E0](v25);

              sub_21B239564();
              swift_allocError();
              *v26 = 0xD00000000000001CLL;
              *(v26 + 8) = 0x800000021B34C2C0;
              *(v26 + 16) = 4;
              swift_willThrow();
            }

            v23 = *(result + 16);
            if (__OFSUB__(v7, v23))
            {
              goto LABEL_85;
            }

            v17 = sub_21B238F00(a1, v7 - v23);
          }
        }

        else if (v4 == 8)
        {
          v27 = *(result + 16);
          if (__OFSUB__(v7, v27))
          {
            goto LABEL_82;
          }

          v17 = sub_21B238C00(a1, v7 - v27);
        }

        else
        {
          if (v4 != 16)
          {
            goto LABEL_35;
          }

          v16 = *(result + 16);
          if (__OFSUB__(v7, v16))
          {
            goto LABEL_84;
          }

          v17 = sub_21B238CBC(a1, v7 - v16);
        }

        sub_21B270AC4(v17);
        result = v43;
        a1 = *(v43 + 16);
        if (!v11)
        {
          break;
        }

        if (v11 == 1)
        {
          v7 = a1 - 1;
          if (a1 == 1)
          {
            return result;
          }

          if (!a1)
          {
            __break(1u);
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          v3 = v43;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_21B23A344(v43);
          }

          v9 = 0;
          result = v3;
          while (1)
          {
            v10 = *(v3 + 16);
            if (v9 >= v10)
            {
              break;
            }

            v30 = v3 + 8 * v9;
            v2 = *(v30 + 40) + *(v30 + 32);
            *(v30 + 40) = v2;
            if (v7 == ++v9)
            {
              return result;
            }
          }

          __break(1u);
        }

        else
        {
          v7 = a1 - 1;
          if (a1 == 1)
          {
            return result;
          }

          if (!a1)
          {
            goto LABEL_79;
          }

          v3 = v43;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_21B23A344(v43);
          }

          v9 = 0;
          result = v3;
          while (1)
          {
            v10 = *(v3 + 16);
            if (v9 >= v10)
            {
              break;
            }

            v10 = v3 + 8 * v9;
            v32 = *(v10 + 32);
            v33 = -(*(v10 + 40) & 1) ^ (*(v10 + 40) >> 1);
            v34 = __OFADD__(v33, v32);
            v2 = v33 + v32;
            if (v34)
            {
              goto LABEL_74;
            }

            *(v10 + 40) = v2;
            if (v7 == ++v9)
            {
              return result;
            }
          }
        }

        __break(1u);
LABEL_74:
        __break(1u);
      }

      if (!a1)
      {
        return result;
      }

      v7 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_80:
        v7 = sub_21B23A344(v7);
      }

      result = v7;
      if (a1 >= 4)
      {
        v31 = a1 & 0x7FFFFFFFFFFFFFFCLL;
        v35 = vdupq_n_s64(v3);
        v36 = (v7 + 48);
        v37 = a1 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v38 = vaddq_s64(*v36, v35);
          v36[-1] = vaddq_s64(v36[-1], v35);
          *v36 = v38;
          v36 += 2;
          v37 -= 4;
        }

        while (v37);
        if (a1 == v31)
        {
          return result;
        }
      }

      else
      {
        v31 = 0;
      }

      v39 = a1 - v31;
      v40 = 8 * v31 + 32;
      do
      {
        *(v7 + v40) += v3;
        v40 += 8;
        --v39;
      }

      while (v39);
      return result;
    }

    v12 = result;
    result = sub_21B34AFE4();
    *(result + 16) = v7;
    v13 = (result + 32);
    if (v7 < 4)
    {
      v14 = 0;
LABEL_21:
      v21 = v7 - v14;
      do
      {
        *v13++ = v12;
        --v21;
      }

      while (v21);
      return result;
    }

    v14 = v7 & 0x7FFFFFFFFFFFFFFCLL;
    v13 += v7 & 0x7FFFFFFFFFFFFFFCLL;
    v18 = vdupq_n_s64(v12);
    v19 = (result + 48);
    v20 = v7 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v19[-1] = v18;
      *v19 = v18;
      v19 += 2;
      v20 -= 4;
    }

    while (v20);
    if (v14 != v7)
    {
      goto LABEL_21;
    }
  }

  return result;
}

unint64_t sub_21B239564()
{
  result = qword_27CD7E0C0;
  if (!qword_27CD7E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E0C0);
  }

  return result;
}

Swift::Void __swiftcall DataFrame.renameColumn(_:to:)(Swift::String _, Swift::String to)
{
  v3 = v2;
  object = to._object;
  countAndFlagsBits = to._countAndFlagsBits;
  v6 = _._object;
  v7 = _._countAndFlagsBits;
  v20 = *v2;
  v22 = v2[1];
  v24 = v2[2];

  v8 = sub_21B23AC94(v7, v6);

  v9 = *v2;
  v23 = v2[1];
  v25 = v2[2];

  v18 = object;
  v19 = countAndFlagsBits;
  v10._countAndFlagsBits = countAndFlagsBits;
  v10._object = object;
  v26 = DataFrame.indexOfColumn(_:)(v10);
  value = v26.value;
  is_nil = v26.is_nil;

  if (!is_nil && value != v8)
  {
    goto LABEL_10;
  }

  sub_21B23992C(v7, v6, countAndFlagsBits, object);

  sub_21B239B24(0, 1, v7, v6);
  v13 = v3[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v3[2];
  sub_21B23A60C(v8, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);
  v3[2] = v21;

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = sub_21B23A2F4(v9);
    if ((v8 & 0x8000000000000000) == 0)
    {
LABEL_5:
      if (v8 < *(v9 + 2))
      {
        v15 = &v9[40 * v8];
        v16 = *(v15 + 7);
        v17 = *(v15 + 8);
        __swift_mutable_project_boxed_opaque_existential_1((v15 + 32), v16);
        (*(*(v17 + 8) + 16))(v19, v18, v16);
        *v3 = v9;
        return;
      }

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  sub_21B34B634();
  MEMORY[0x21CEED5E0](0xD000000000000021, 0x800000021B34C350);
  MEMORY[0x21CEED5E0](countAndFlagsBits, object);
  MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34C380);
  sub_21B34B824();
  __break(1u);
}

uint64_t sub_21B23992C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (v4 + 8);
  v7 = *(v4 + 8);
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v7 + 40);
    do
    {
      v12 = v10 + 1;
      v13 = *(v11 - 1) == a3 && *v11 == a4;
      if (v13 || (sub_21B34B9F4() & 1) != 0)
      {
        sub_21B248A60(v10, v10 + 1);
      }

      v11 += 4;
      ++v10;
    }

    while (v9 != v12);
  }

  sub_21B23DD58(0, 0, 2);
  sub_21B23A9F4(0, 0, 2);
  v14 = *v8;
  v15 = *(*v8 + 16);
  if (v15)
  {
    v31 = a3;
    v32 = a4;
    v30 = (v4 + 8);
    v35 = MEMORY[0x277D84F90];
    sub_21B254054(0, v15, 0);
    v16 = v35;
    v17 = (v14 + 56);
    do
    {
      v18 = *(v17 - 3);
      v19 = *(v17 - 2);
      v20 = *(v17 - 1);
      v21 = *v17;
      v22 = v20 == a1 && v21 == a2;
      if (v22 || (v23 = *(v17 - 1), v24 = *v17, (sub_21B34B9F4() & 1) != 0))
      {
        v20 = v31;
        v21 = v32;
      }

      v26 = *(v35 + 16);
      v25 = *(v35 + 24);

      if (v26 >= v25 >> 1)
      {
        sub_21B254054((v25 > 1), v26 + 1, 1);
      }

      *(v35 + 16) = v26 + 1;
      v27 = (v35 + 32 * v26);
      v27[4] = v18;
      v27[5] = v19;
      v27[6] = v20;
      v27[7] = v21;
      v17 += 4;
      --v15;
    }

    while (v15);

    v8 = v30;
  }

  else
  {
    v29 = *v8;

    v16 = MEMORY[0x277D84F90];
  }

  *v8 = v16;
  return result;
}

uint64_t sub_21B239B24(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v4;
  if (a2)
  {
    v9 = sub_21B24B534(a3, a4);
    v11 = v10;

    if (v11)
    {
      v13 = *v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v19 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_21B25201C();
        v15 = v19;
      }

      v16 = *(*(v15 + 48) + 16 * v9 + 8);

      result = sub_21B23A45C(v9, v15);
      *v5 = v15;
    }
  }

  else
  {
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v5;
    sub_21B23A60C(a1, a3, a4, v18);

    *v5 = v20;
  }

  return result;
}

uint64_t DataFrame.replaceColumn(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v10 = v3[1];
  v11 = v3[2];

  v7 = sub_21B23AC94(a1, a2);

  return sub_21B239CC0(v7, a3);
}

uint64_t sub_21B239CC0(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v2 = v3;
  v4 = a1;
  if (*(*v3 + 16) <= a1)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    result = sub_21B23A2F4(v3);
    v3 = result;
    goto LABEL_18;
  }

  sub_21B233A74(*v3 + 40 * a1 + 32, v57);
  v7 = v58;
  v6 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v8 = (*(*(v6 + 8) + 8))(v7);
  v10 = v9;
  sub_21B233960(v57);
  sub_21B233A74(a2, v57);
  sub_21B23B2EC(v57);
  v12 = v58;
  v11 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  if ((*(*(v11 + 8) + 8))(v12) == v8 && v13 == v10)
  {
  }

  else
  {
    v15 = sub_21B34B9F4();

    if (v15)
    {
    }

    else
    {
      v16 = *v2;
      v17 = *(*v2 + 16);
      v18 = MEMORY[0x277D84F90];
      if (v17)
      {
        v50 = v8;
        v51 = v10;
        v56 = MEMORY[0x277D84F90];
        sub_21B231F10(0, v17, 0);
        v18 = v56;
        v19 = v16 + 32;
        do
        {
          sub_21B233A74(v19, &v53);
          v21 = v54;
          v20 = v55;
          __swift_project_boxed_opaque_existential_1(&v53, v54);
          v22 = (*(*(v20 + 8) + 8))(v21);
          v24 = v23;
          sub_21B233960(&v53);
          v56 = v18;
          v26 = *(v18 + 16);
          v25 = *(v18 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_21B231F10((v25 > 1), v26 + 1, 1);
            v18 = v56;
          }

          *(v18 + 16) = v26 + 1;
          v27 = v18 + 16 * v26;
          *(v27 + 32) = v22;
          *(v27 + 40) = v24;
          v19 += 40;
          --v17;
        }

        while (v17);
        v8 = v50;
        v10 = v51;
      }

      v28 = sub_21B25DE78(v18);

      v56 = v28;
      sub_21B2643B0(v8, v10);

      sub_21B31703C(v56, 0x2EuLL, 0xE100000000000000, &v53);
      v30 = v58;
      v29 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v31 = (*(*(v29 + 8) + 8))(v30);
      v33 = sub_21B233B78(v31, v32);
      v35 = v34;

      v37 = v58;
      v36 = v59;
      __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
      (*(*(v36 + 8) + 16))(v33, v35, v37);
      v39 = v58;
      v38 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v40 = (*(*(v38 + 8) + 8))(v39);
      sub_21B23992C(v8, v10, v40, v41);

      sub_21B239B24(0, 1, v8, v10);
      v43 = v58;
      v42 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v44 = (*(*(v42 + 8) + 8))(v43);
      v46 = v45;
      v47 = v2[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v2[2];
      sub_21B23A60C(v4, v44, v46, isUniquelyReferenced_nonNull_native);

      v2[2] = v52;
    }
  }

  v3 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  if (v3[2] <= v4)
  {
    __break(1u);
  }

  else
  {
    sub_21B2348E0(v57, &v3[5 * v4 + 4]);
    *v2 = v3;
    return sub_21B233960(v57);
  }

  return result;
}

uint64_t DataFrame.replaceColumn<A>(_:with:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v8 = *v2;
  v9 = v2[1];
  v10 = v2[2];

  v6 = sub_21B23AC94(v4, v5);

  return sub_21B239CC0(v6, a2);
}

uint64_t DataFrame.replaceColumn<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = *a3;
  v11 = *(a3 + 1);
  v6 = type metadata accessor for Column();
  Column.eraseToAnyColumn()(v6, v13);
  v10 = *v3;
  v12 = *(v3 + 1);

  v7 = sub_21B23AC94(a1, a2);

  sub_21B239CC0(v7, v13);
  return sub_21B233960(v13);
}

uint64_t DataFrame.replaceColumn<A, B>(_:with:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v8[0] = *a1;
  v8[1] = v2;
  v6 = *(a2 + 1);
  v4 = type metadata accessor for Column();
  Column.eraseToAnyColumn()(v4, v7);
  DataFrame.replaceColumn<A>(_:with:)(v8, v7);
  return sub_21B233960(v7);
}

uint64_t sub_21B23A45C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21B34B584() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_21B34BBC4();

      sub_21B34AD94();
      v13 = sub_21B34BC24();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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

unint64_t sub_21B23A60C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_21B24B534(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_21B25201C();
      result = v19;
      goto LABEL_8;
    }

    sub_21B24BE68(v16, a4 & 1);
    v20 = *v5;
    result = sub_21B24B534(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_21B34BA84();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
  }

  else
  {
    sub_21B24FCB0(result, a2, a3, a1, v22);
  }

  return result;
}

uint64_t sub_21B23A73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21B24B534(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_21B253254();
      v13 = v21;
      goto LABEL_8;
    }

    sub_21B24DE88(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_21B24B534(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_21B34BA84();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_21B24FD50(v13, a3, a4, a1, a2, v24);
  }
}

uint64_t sub_21B23A88C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_21B24B884(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_21B253580();
      result = v17;
      goto LABEL_8;
    }

    sub_21B24E410(v14, a3 & 1);
    v18 = *v4;
    result = sub_21B24B884(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0C8, &qword_21B3518B0);
      result = sub_21B34BA84();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    *(v20[7] + 8 * result) = a1;
  }

  else
  {
    sub_21B24FDA0(result, a2, a1, v20);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21B23A9F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

void *sub_21B23AA08(void *result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_27;
  }

  v4 = *(a2 - 8);
  v3 = a2 - 8;
  v5 = -v4;
  if (__OFSUB__(0, v4))
  {
    goto LABEL_25;
  }

  v7 = (v3 + v5 + 8);
  v6 = *(v3 + v5);
  v8 = *(v2 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v6 > v8[3] >> 1)
  {
    if (v8[2] <= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8[2];
    }

    result = sub_21B249C54(result, v9, 0, v8);
    v8 = result;
  }

  *(v2 + 16) = v8;
  if (v6 < 0)
  {
    goto LABEL_26;
  }

  if (v6)
  {
    v27 = v2;
    v10 = 0;
    v28 = v6;
    while (1)
    {
      v11 = *v7;
      result = sub_21B249B44(0, *v7 & ~(*v7 >> 63), 0, MEMORY[0x277D84F90]);
      if (v11 < 0)
      {
        break;
      }

      ++v7;
      if (v11)
      {
        v12 = 0;
        v13 = result[2];
        v14 = 6 * v13;
        do
        {
          v15 = *&v7[v12];
          v16 = *&v7[v12 + 2];
          v17 = v7[v12 + 4];
          v18 = v7[v12 + 5];
          v19 = result[3];
          v20 = v13 + 1;
          if (v13 >= v19 >> 1)
          {
            v25 = *&v7[v12 + 2];
            v26 = *&v7[v12];
            result = sub_21B249B44((v19 > 1), v20, 1, result);
            v16 = v25;
            v15 = v26;
          }

          result[2] = v20;
          v21 = &result[v14 + v12];
          *(v21 + 2) = v15;
          *(v21 + 3) = v16;
          v21[8] = v17;
          *(v21 + 72) = v18;
          v12 += 6;
          v13 = v20;
          --v11;
        }

        while (v11);
        v7 = (v7 + v12 * 8);
        v6 = v28;
      }

      v23 = v8[2];
      v22 = v8[3];
      if (v23 >= v22 >> 1)
      {
        v24 = result;
        v8 = sub_21B249C54((v22 > 1), v23 + 1, 1, v8);
        result = v24;
      }

      ++v10;
      v8[2] = v23 + 1;
      v8[v23 + 4] = result;
      if (v10 == v6)
      {
        *(v27 + 16) = v8;
        return result;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_21B23ABFC(uint64_t a1, int a2)
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

uint64_t sub_21B23AC44(uint64_t result, int a2, int a3)
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

uint64_t sub_21B23AC94(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 2);
  if (*(v6 + 16))
  {
    v7 = *(v2 + 2);
    v8 = sub_21B24B5D0(a1, a2, MEMORY[0x277D83758], sub_21B24FDE4);
    if (v9)
    {
      v10 = v8;
      return *(*(v6 + 56) + 8 * v10);
    }
  }

  v11 = DataFrame.columnNames(forAlias:)(a1, a2);
  v12 = v11[2];
  if (v12)
  {
    v13 = v11;
    v14 = v11[5];
    if (v12 == 1)
    {
      v15 = v11[4];
      v16 = *(v6 + 16);
      v17 = v11[5];

      if (v16)
      {
        v18 = sub_21B24B5D0(v15, v14, MEMORY[0x277D83758], sub_21B24FDE4);
        if (v19)
        {
          v10 = v18;

          return *(*(v6 + 56) + 8 * v10);
        }
      }

      sub_21B34B634();
      MEMORY[0x21CEED5E0](0xD00000000000001ALL, 0x800000021B34C410);
      MEMORY[0x21CEED5E0](a1, a2);
      MEMORY[0x21CEED5E0](0x2720726F2027, 0xE600000000000000);
      MEMORY[0x21CEED5E0](v15, v14);
      MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34C380);
    }

    else
    {

      sub_21B34B634();
      MEMORY[0x21CEED5E0](0xD00000000000001ALL, 0x800000021B34C410);
      MEMORY[0x21CEED5E0](a1, a2);
      MEMORY[0x21CEED5E0](0xD000000000000027, 0x800000021B34C6F0);
      v21 = MEMORY[0x21CEED760](v13, MEMORY[0x277D837D0]);
      MEMORY[0x21CEED5E0](v21);

      MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    }
  }

  else
  {
    sub_21B34B634();

    MEMORY[0x21CEED5E0](a1, a2);
    MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34C380);
  }

  result = sub_21B34B824();
  __break(1u);
  return result;
}