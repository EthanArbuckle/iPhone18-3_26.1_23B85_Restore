uint64_t sub_230F94B70(void **a1, void **a2, char *a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88320, &qword_230FE2E90);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v99 = (&v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v97 = &v91 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v100 = &v91 - v15;
  MEMORY[0x28223BE20](v14);
  v98 = &v91 - v16;
  v17 = sub_230FDB58C();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v96 = (&v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v104 = &v91 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v95 = (&v91 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v105 = &v91 - v26;
  MEMORY[0x28223BE20](v25);
  v103 = &v91 - v28;
  v29 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v29 = a2 - a1;
  }

  v30 = v29 >> 3;
  v31 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v31 = a3 - a2;
  }

  v32 = v31 >> 3;
  if (v30 < v31 >> 3)
  {
    if (a4 != a1 || &a1[v30] <= a4)
    {
      v33 = v27;
      memmove(a4, a1, 8 * v30);
      v27 = v33;
    }

    v94 = &a4[v30];
    if (a2 - a1 < 8)
    {
      a2 = a1;
    }

    else
    {
      v34 = a1;
      if (a2 < a3)
      {
        v99 = (v27 + 32);
        v104 = (v27 + 56);
        v96 = (v27 + 48);
        v97 = (v27 + 8);
        v35 = v94;
        while (1)
        {
          v102 = a2;
          v36 = *a2;
          v106 = a4;
          v37 = *a4;
          v38 = v36;
          v39 = v37;
          v101 = v38;
          v40 = [v38 creationDate];
          if (v40)
          {
            v41 = v40;
            v42 = v105;
            sub_230FDB56C();

            v43 = v98;
            v44 = *v99;
            (*v99)(v98, v42, v17);
            v45 = *v104;
            (*v104)(v43, 0, 1, v17);
            v44(v103, v43, v17);
          }

          else
          {
            v45 = *v104;
            v46 = v98;
            (*v104)(v98, 1, 1, v17);
            sub_230FDB57C();
            if ((*v96)(v46, 1, v17) != 1)
            {
              sub_230F802C4(v46, &qword_27DB88320, &qword_230FE2E90);
            }
          }

          v47 = [v39 creationDate];
          if (v47)
          {
            v48 = v34;
            v49 = v105;
            v50 = v47;
            sub_230FDB56C();

            v51 = v100;
            v52 = *v99;
            v53 = v49;
            v34 = v48;
            v35 = v94;
            (*v99)(v100, v53, v17);
            v45(v51, 0, 1, v17);
            v54 = v95;
            v52(v95, v51, v17);
          }

          else
          {
            v55 = v100;
            v45(v100, 1, 1, v17);
            v54 = v95;
            sub_230FDB57C();
            if ((*v96)(v55, 1, v17) != 1)
            {
              sub_230F802C4(v100, &qword_27DB88320, &qword_230FE2E90);
            }
          }

          v56 = v103;
          v57 = sub_230FDB55C();
          v58 = v54;
          v59 = *v97;
          (*v97)(v58, v17);
          v59(v56, v17);

          if ((v57 & 1) == 0)
          {
            break;
          }

          v60 = v102;
          a2 = v102 + 1;
          a4 = v106;
          if (v34 != v102)
          {
            goto LABEL_24;
          }

LABEL_25:
          ++v34;
          if (a4 >= v35 || a2 >= a3)
          {
            a2 = v34;
            goto LABEL_56;
          }
        }

        v60 = v106;
        a4 = v106 + 1;
        a2 = v102;
        if (v34 == v106)
        {
          goto LABEL_25;
        }

LABEL_24:
        *v34 = *v60;
        goto LABEL_25;
      }

      a2 = a1;
    }

    v35 = v94;
    goto LABEL_56;
  }

  v92 = a1;
  if (a4 != a2 || &a2[v32] <= a4)
  {
    v61 = v27;
    memmove(a4, a2, 8 * v32);
    v27 = v61;
  }

  v35 = &a4[v32];
  if (a3 - a2 >= 8 && a2 > v92)
  {
    v98 = (v27 + 32);
    v103 = (v27 + 56);
    v93 = (v27 + 48);
    v94 = (v27 + 8);
    v106 = a4;
    do
    {
      v102 = a2;
      v62 = a2 - 1;
      a3 -= 8;
      v63 = v35;
      v95 = v62;
      while (1)
      {
        v64 = *--v63;
        v65 = *v62;
        v66 = v64;
        v67 = v65;
        v68 = [v66 creationDate];
        v101 = v66;
        if (v68)
        {
          v69 = v68;
          v70 = v105;
          sub_230FDB56C();

          v71 = v97;
          v72 = *v98;
          (*v98)(v97, v70, v17);
          v73 = *v103;
          (*v103)(v71, 0, 1, v17);
          v72(v104, v71, v17);
        }

        else
        {
          v73 = *v103;
          v74 = v97;
          (*v103)(v97, 1, 1, v17);
          sub_230FDB57C();
          if ((*v93)(v74, 1, v17) != 1)
          {
            sub_230F802C4(v74, &qword_27DB88320, &qword_230FE2E90);
          }
        }

        v100 = v67;
        v75 = [v67 creationDate];
        if (v75)
        {
          v76 = a3;
          v77 = v35;
          v78 = v105;
          v79 = v75;
          sub_230FDB56C();

          v80 = v99;
          v81 = *v98;
          v82 = v78;
          v35 = v77;
          a3 = v76;
          (*v98)(v99, v82, v17);
          v73(v80, 0, 1, v17);
          v83 = v96;
          v81(v96, v80, v17);
        }

        else
        {
          v84 = v99;
          v73(v99, 1, 1, v17);
          v83 = v96;
          sub_230FDB57C();
          if ((*v93)(v84, 1, v17) != 1)
          {
            sub_230F802C4(v99, &qword_27DB88320, &qword_230FE2E90);
          }
        }

        v85 = v104;
        v86 = sub_230FDB55C();
        v87 = *v94;
        (*v94)(v83, v17);
        v87(v85, v17);

        v88 = (a3 + 8);
        if (v86)
        {
          break;
        }

        a4 = v106;
        v62 = v95;
        if (v88 != v35)
        {
          *a3 = *v63;
        }

        a3 -= 8;
        v35 = v63;
        if (v63 <= a4)
        {
          v35 = v63;
          a2 = v102;
          goto LABEL_56;
        }
      }

      a4 = v106;
      v89 = v95;
      if (v88 != v102)
      {
        *a3 = *v95;
      }

      if (v35 <= a4)
      {
        break;
      }

      a2 = v89;
    }

    while (v89 > v92);
    a2 = v89;
  }

LABEL_56:
  if (a2 != a4 || a2 >= (a4 + ((v35 - a4 + (v35 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v35 - a4));
  }

  return 1;
}

uint64_t sub_230F954E4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_230F95570(v3);
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

char *sub_230F95584(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88328, &qword_230FE2E98);
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

uint64_t sub_230F95688(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_230FDBB3C();

    if (v9)
    {

      sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_230FDBB2C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_230F9DA0C(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_230F9DBFC(v22 + 1);
    }

    v20 = v8;
    sub_230F9DE24(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
  v11 = *(v6 + 40);
  v12 = sub_230FDBA5C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_230F958C0(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_230FDBA6C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

void sub_230F958C0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_230F9DBFC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_230F9DEA8();
      goto LABEL_12;
    }

    sub_230F95A30(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_230FDBA5C();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_230FDBA6C();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_230FDBE3C();
  __break(1u);
}

uint64_t sub_230F95A30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88318, &qword_230FE30E0);
  result = sub_230FDBBDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_230FDBA5C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t *sub_230F95C44(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_230F96770(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void (*sub_230F95CE0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2319216B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_230F95D60;
  }

  __break(1u);
  return result;
}

uint64_t sub_230F95D68(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_230FDBB2C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_230FDBB2C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_230F97274();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88510, &qword_230FE2E78);
            v9 = sub_230F95CE0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_230F95F0C(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2821FCF40](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_230F96184(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = sub_230FDBA5C();
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = sub_230FDBA6C();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

void sub_230F96184(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_230FDBB2C())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_230FDBB7C();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_230F96284(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_230FDBB2C())
  {
    v4 = sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
    v5 = sub_230F972D8();
    result = MEMORY[0x231921470](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2319216B0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_230F95688(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_230FDBB2C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_230F963C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_230F96488;

  return sub_230F922B0(a1, v4, v5, v6, v7);
}

uint64_t sub_230F96488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t objectdestroy_27Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_230F965E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_230F80154;

  return sub_230F92714(a1, v5, v4);
}

uint64_t sub_230F96694(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_230F85280;

  return sub_230F8C9E8(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_230F96770(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = a4 & 0xC000000000000001;
  v37 = a4 + 56;
  v31 = a4 & 0xC000000000000001;
  while (v10)
  {
    v17 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_13:
    v36 = v17 | (v6 << 6);
    v20 = *(*(v4 + 48) + 8 * v36);
    if (v12)
    {
      v13 = v20;
      v14 = v4;
      v15 = v13;
      v16 = sub_230FDBB7C();

      v4 = v14;
      if ((v16 & 1) == 0)
      {
LABEL_20:
        *(a1 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      if (!*(a4 + 16))
      {
        goto LABEL_20;
      }

      v34 = v10;
      v35 = v5;
      sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
      v21 = *(a4 + 40);
      v22 = v20;
      v23 = sub_230FDBA5C();
      v24 = -1 << *(a4 + 32);
      v25 = v23 & ~v24;
      if (((*(v37 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
LABEL_19:

        v12 = v31;
        v4 = a3;
        v10 = v34;
        v5 = v35;
        goto LABEL_20;
      }

      v26 = ~v24;
      while (1)
      {
        v27 = *(*(a4 + 48) + 8 * v25);
        v28 = sub_230FDBA6C();

        if (v28)
        {
          break;
        }

        v25 = (v25 + 1) & v26;
        if (((*(v37 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v12 = v31;
      v4 = a3;
      v10 = v34;
      v5 = v35;
    }
  }

  v18 = v6;
  while (1)
  {
    v6 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      sub_230F9E534(a1, a2, v5, v4);
      return;
    }

    v19 = *(v7 + 8 * v6);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v10 = (v19 - 1) & v19;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_230F969D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v50 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (2)
  {
    v39 = v8;
    v40 = v3;
    v38[1] = v38;
    MEMORY[0x28223BE20](v10);
    v42 = v38 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v42, v9);
    v11 = 0;
    v12 = 0;
    v8 = v5 + 56;
    v13 = 1 << *(v5 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v5 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v17 = a2;
    }

    v45 = v17;
    v48 = a2 & 0xC000000000000001;
    v49 = a2 + 56;
    v47 = v5;
    v41 = (v13 + 63) >> 6;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_16:
      v23 = v20 | (v12 << 6);
      v24 = *(v5 + 48);
      v46 = v23;
      v3 = *(v24 + 8 * v23);
      if (v48)
      {
        v18 = v15;
        v9 = v3;
        v19 = sub_230FDBB7C();

        v15 = v18;
        v5 = v47;
        if ((v19 & 1) == 0)
        {
LABEL_23:
          *&v42[(v46 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v46;
          if (__OFADD__(v11++, 1))
          {
            __break(1u);
            goto LABEL_32;
          }
        }
      }

      else
      {
        if (!*(a2 + 16))
        {
          goto LABEL_23;
        }

        v43 = v15;
        v44 = v11;
        v9 = sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
        v25 = *(a2 + 40);
        v26 = v3;
        v27 = sub_230FDBA5C();
        v28 = -1 << *(a2 + 32);
        v3 = v27 & ~v28;
        if (((*(v49 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) == 0)
        {
LABEL_22:

          v5 = v47;
          v15 = v43;
          v11 = v44;
          v16 = v41;
          goto LABEL_23;
        }

        v29 = ~v28;
        while (1)
        {
          v30 = a2;
          v31 = *(*(a2 + 48) + 8 * v3);
          v32 = sub_230FDBA6C();

          if (v32)
          {
            break;
          }

          v3 = (v3 + 1) & v29;
          a2 = v30;
          if (((*(v49 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        a2 = v30;
        v5 = v47;
        v15 = v43;
        v11 = v44;
        v16 = v41;
      }
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v16)
      {
        v34 = sub_230F9E534(v42, v39, v11, v5);

        goto LABEL_28;
      }

      v22 = *(v8 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_30:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

LABEL_32:
  v37 = swift_slowAlloc();

  v34 = sub_230F95C44(v37, v8, v5, a2);

  MEMORY[0x231922900](v37, -1, -1);

LABEL_28:
  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t sub_230F96D74(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_230F969D4(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v27 = MEMORY[0x277D84FA0];

  sub_230FDBAEC();
  if (sub_230FDBB6C())
  {
    sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
    v4 = a2 + 56;
    do
    {
      swift_dynamicCast();
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = v26;
        v6 = sub_230FDBB7C();

        if ((v6 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (!*(a2 + 16) || (v7 = *(a2 + 40), v8 = sub_230FDBA5C(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, ((*(v4 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0))
        {
LABEL_14:
          v14 = *(v3 + 16);
          if (*(v3 + 24) <= v14)
          {
            sub_230F9DBFC(v14 + 1);
          }

          v3 = v27;
          v15 = *(v27 + 40);
          result = sub_230FDBA5C();
          v17 = v27 + 56;
          v18 = -1 << *(v27 + 32);
          v19 = result & ~v18;
          v20 = v19 >> 6;
          if (((-1 << v19) & ~*(v27 + 56 + 8 * (v19 >> 6))) != 0)
          {
            v21 = __clz(__rbit64((-1 << v19) & ~*(v27 + 56 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v22 = 0;
            v23 = (63 - v18) >> 6;
            do
            {
              if (++v20 == v23 && (v22 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v24 = v20 == v23;
              if (v20 == v23)
              {
                v20 = 0;
              }

              v22 |= v24;
              v25 = *(v17 + 8 * v20);
            }

            while (v25 == -1);
            v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          }

          *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
          *(*(v27 + 48) + 8 * v21) = v26;
          ++*(v27 + 16);
          continue;
        }

        v11 = ~v9;
        while (1)
        {
          v12 = *(*(a2 + 48) + 8 * v10);
          v13 = sub_230FDBA6C();

          if (v13)
          {
            break;
          }

          v10 = (v10 + 1) & v11;
          if (((*(v4 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
          {
            goto LABEL_14;
          }
        }
      }
    }

    while (sub_230FDBB6C());
  }

  return v3;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_230F9707C()
{
  result = sub_230FDB63C();
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_230F971BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88580, &qword_230FE2460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230F9722C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_230F97274()
{
  result = qword_27DB882F8;
  if (!qword_27DB882F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB88510, &qword_230FE2E78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB882F8);
  }

  return result;
}

unint64_t sub_230F972D8()
{
  result = qword_27DB88310;
  if (!qword_27DB88310)
  {
    sub_230F80DF8(255, &qword_27DB884B0, off_2788F7570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB88310);
  }

  return result;
}

uint64_t sub_230F97360()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
}

uint64_t sub_230F9739C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

uint64_t sub_230F973FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_230F80154;

  return sub_230F8F2BC(a1, v4, v5, v6);
}

uint64_t objectdestroy_52Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_230F974F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_230F85280;

  return sub_230F902EC(a1, v4, v5, v6);
}

void sub_230F975A4(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_230F975B8(a1, a2);
  }
}

void sub_230F975B8(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    if (a2 != 1 && a2 != 2)
    {
      return;
    }

LABEL_8:

    return;
  }

  if (a2 == 3)
  {
    goto LABEL_8;
  }

  if (a2 == 4)
  {
  }
}

id sub_230F97614(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    if (a2 != 1 && a2 != 2)
    {
      return result;
    }
  }

  if (a2 == 3)
  {
  }

  if (a2 == 4)
  {
    return result;
  }

  return result;
}

uint64_t SHSignature.Slices.makeAsyncIterator()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88340, &qword_230FE2ED0);

  return sub_230FDB8EC();
}

uint64_t SHSignature.Slices.Iterator.next()()
{
  v1 = *(MEMORY[0x277D858C0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88348, &qword_230FE2EE0);
  *v2 = v0;
  v2[1] = sub_230F97788;

  return MEMORY[0x2822005B0](v0 + 16, v3);
}

uint64_t sub_230F97788()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_230F978B8;
  }

  else
  {
    v3 = sub_230F9789C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230F978D0(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = *(MEMORY[0x277D858C0] + 4);
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88348, &qword_230FE2EE0);
  *v3 = v1;
  v3[1] = sub_230F97984;

  return MEMORY[0x2822005B0](v1 + 16, v4);
}

uint64_t sub_230F97984()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_230F97AB8;
  }

  else
  {
    v3 = sub_230F97A98;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230F97AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v9 = *(MEMORY[0x277D856D0] + 4);
  v10 = swift_task_alloc();
  v6[8] = v10;
  *v10 = v6;
  v10[1] = sub_230F97B88;

  return MEMORY[0x282200308](v6 + 2, a5, a6);
}

uint64_t sub_230F97B88()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 40);
  v15 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 40);
      v6 = *(v2 + 48);
      swift_getObjectType();
      v7 = sub_230FDB83C();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_230F97D3C;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 40);
      v12 = *(v2 + 48);
      swift_getObjectType();
      v7 = sub_230FDB83C();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_230F97D18;
  }

  return MEMORY[0x2822009F8](v10, v7, v9);
}

uint64_t sub_230F97D3C()
{
  v1 = v0[9];
  v2 = v0[7];
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88290, &qword_230FE2C18);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_230F97DDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88340, &qword_230FE2ED0);
  sub_230FDB8EC();

  return sub_230F993C4(v0);
}

id SHSignature.slices(from:duration:stride:)@<X0>(double a1@<X0>, char a2@<W1>, double a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v49[0] = a1;
  v49[1] = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88350, &qword_230FE2EE8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v49 - v11;
  v13 = sub_230FDB3EC();
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88358, &qword_230FE2EF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  *&v20 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v22 = v49 - v21;
  if (a5 <= 0.0)
  {
    sub_230FDB3DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88360, &qword_230FE2EF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_230FE19D0;
    v24 = inited + 32;
    v29 = *MEMORY[0x277CCA068];
    v52 = sub_230FDB78C();
    v53 = v30;
    v31 = MEMORY[0x277D837D0];
    sub_230FDBBBC();
    *(inited + 96) = v31;
    *(inited + 72) = 0xD000000000000022;
    v28 = "Duration must be greater than zero";
    goto LABEL_5;
  }

  if (a4 < 0.0)
  {
    sub_230FDB3DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88360, &qword_230FE2EF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_230FE19D0;
    v24 = inited + 32;
    v25 = *MEMORY[0x277CCA068];
    v52 = sub_230FDB78C();
    v53 = v26;
    v27 = MEMORY[0x277D837D0];
    sub_230FDBBBC();
    *(inited + 96) = v27;
    *(inited + 72) = 0xD00000000000002BLL;
    v28 = "Start must be greater than or equal to zero";
LABEL_5:
    *(inited + 80) = (v28 - 32) | 0x8000000000000000;
    sub_230F98FF0(inited);
    swift_setDeallocating();
    sub_230F802C4(v24, &qword_27DB88368, qword_230FE2F00);
    v32 = sub_230FDB52C();
    (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
    sub_230FDB3FC();

    sub_230F802C4(v12, &qword_27DB88350, &qword_230FE2EE8);
    (*(v50 + 8))(v16, v51);
    return swift_willThrow();
  }

  result = [v5 duration];
  if (v34 <= a4)
  {
    sub_230FDB3DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88360, &qword_230FE2EF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_230FE19D0;
    v24 = inited + 32;
    v36 = *MEMORY[0x277CCA068];
    v52 = sub_230FDB78C();
    v53 = v37;
    v38 = MEMORY[0x277D837D0];
    sub_230FDBBBC();
    *(inited + 96) = v38;
    *(inited + 72) = 0xD000000000000033;
    v28 = "Start must be smaller than the signature's duration";
    goto LABEL_5;
  }

  if ((a2 & 1) == 0)
  {
    v39 = v49[0];
    v40 = v49[0];
    if (v49[0] <= 0.0)
    {
      sub_230FDB3DC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88360, &qword_230FE2EF8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_230FE19D0;
      v24 = inited + 32;
      v46 = *MEMORY[0x277CCA068];
      v52 = sub_230FDB78C();
      v53 = v47;
      v48 = MEMORY[0x277D837D0];
      sub_230FDBBBC();
      *(inited + 96) = v48;
      *(inited + 72) = 0xD000000000000041;
      v28 = "Stride must be greater than zero and less than the total duration";
      goto LABEL_5;
    }

    v41 = [v5 duration];
    if (v42 < v40)
    {
      sub_230FDB3DC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88360, &qword_230FE2EF8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_230FE19D0;
      v24 = inited + 32;
      v43 = *MEMORY[0x277CCA068];
      v52 = sub_230FDB78C();
      v53 = v44;
      v45 = MEMORY[0x277D837D0];
      sub_230FDBBBC();
      *(inited + 96) = v45;
      *(inited + 72) = 0xD00000000000004DLL;
      v28 = "Stride must be greater than or equal to zero and less than the total duration";
      goto LABEL_5;
    }

    MEMORY[0x28223BE20](v41);
    *&v49[-4] = v5;
    v49[-3] = a4;
    v49[-2] = a5;
    v49[-1] = v39;
    sub_230F99138();
    (*(v18 + 104))(v22, *MEMORY[0x277D858A0], v17);
    return sub_230FDB9DC();
  }

  if (a4 + a5 >= a4)
  {
    *&v35 = MEMORY[0x28223BE20](result).n128_u64[0];
    *&v49[-4] = v5;
    v49[-3] = a4;
    v49[-2] = v35;
    sub_230F99138();
    (*(v18 + 104))(v22, *MEMORY[0x277D858A0], v17);
    return sub_230FDB9DC();
  }

  __break(1u);
  return result;
}

void sub_230F984CC(double a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB883B0, &qword_230FE2FC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  v10 = sub_230F98644(a1, a2);
  v9 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB883B8, &qword_230FE2FD0);
  sub_230FDB99C();
  (*(v5 + 8))(v8, v4);
  v10 = 0;
  sub_230FDB9AC();
}

id sub_230F98644(double a1, double a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a2 - a1;
  v5 = objc_opt_self();
  v6 = [v2 dataRepresentation];
  v7 = sub_230FDB54C();
  v9 = v8;

  v10 = sub_230FDB53C();
  sub_230F86B5C(v7, v9);
  v20[0] = 0;
  v11 = [v5 cropSignature:v10 atPosition:v20 withDuration:a1 error:v4];

  v12 = v20[0];
  if (v11)
  {
    v13 = sub_230FDB54C();
    v15 = v14;

    v16 = objc_allocWithZone(SHSignature);
    v17 = sub_230F994D4();
    sub_230F86B5C(v13, v15);
  }

  else
  {
    v17 = v12;
    sub_230FDB4FC();

    swift_willThrow();
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t sub_230F987C0(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v46 = a1;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB883B0, &qword_230FE2FC8);
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB883B8, &qword_230FE2FD0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v45 - v16;
  v18 = [a2 dataRepresentation];
  v48 = sub_230FDB54C();
  v20 = v19;

  if (a3 > 0.0)
  {
    [a2 duration];
    if (v21 < a3)
    {
      __break(1u);
    }

    v22 = sub_230F98644(a3, v21);
    v23 = [v22 dataRepresentation];

    v24 = sub_230FDB54C();
    v26 = v25;

    sub_230F86B5C(v48, v20);
    v48 = v24;
    v20 = v26;
  }

  v27 = *(v12 + 16);
  v27(v17, v46, v11);
  v28 = v47;
  v27(v47, v17, v11);
  v29 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v30 = swift_allocObject();
  (*(v12 + 32))(v30 + v29, v17, v11);
  v31 = objc_opt_self();
  v32 = v48;
  v33 = sub_230FDB53C();
  v34 = swift_allocObject();
  v34[2] = sub_230F99420;
  v34[3] = v30;
  aBlock[4] = sub_230F994B4;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_230F98F4C;
  aBlock[3] = &block_descriptor_2;
  v35 = _Block_copy(aBlock);

  aBlock[0] = 0;
  LODWORD(v31) = [v31 cropSignature:v33 toDuration:aBlock stride:v35 error:a4 callback:a5];
  _Block_release(v35);

  if (v31)
  {
    v36 = aBlock[0];
    sub_230F86B5C(v32, v20);
  }

  else
  {
    v37 = aBlock[0];
    v38 = sub_230FDB4FC();

    swift_willThrow();
    v39 = objc_opt_self();
    v40 = sub_230FDB4EC();
    v41 = [v39 errorWithCode:200 underlyingError:v40];

    aBlock[0] = v41;
    v42 = v41;
    sub_230FDB9AC();
    sub_230F86B5C(v32, v20);
  }

  result = (*(v12 + 8))(v28, v11);
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230F98CD0(void *a1, __int16 a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB883B0, &qword_230FE2FC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  if ((a2 & 0x100) != 0)
  {
    v13 = a1;
    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB883B8, &qword_230FE2FD0);
  }

  else
  {
    v13 = a1;
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB883B8, &qword_230FE2FD0);
    sub_230FDB99C();
    result = (*(v5 + 8))(v8, v4);
    if ((a2 & 1) == 0)
    {
      return result;
    }

    v13 = 0;
  }

  return sub_230FDB9AC();
}

void sub_230F98E1C(uint64_t a1, unint64_t a2, char a3, uint64_t a4, void (*a5)(id, void))
{
  sub_230FDB97C();
  v9 = objc_allocWithZone(SHSignature);
  sub_230F99594(a1, a2);
  v10 = sub_230F994D4();
  sub_230F86B5C(a1, a2);
  v11 = v10;
  a5(v10, a3 & 1);
}

uint64_t sub_230F98F4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a2;
  v10 = sub_230FDB54C();
  v12 = v11;

  v8(v10, v12, a3, a4);
  sub_230F86B5C(v10, v12);
}

unint64_t sub_230F98FF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88228, &qword_230FE2980);
    v3 = sub_230FDBD2C();
    v4 = a1 + 32;

    while (1)
    {
      sub_230F84FBC(v4, v13, &qword_27DB88368, qword_230FE2F00);
      result = sub_230F86210(v13);
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
      result = sub_230F84F80(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_230F99138()
{
  result = qword_27DB88370;
  if (!qword_27DB88370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DB88370);
  }

  return result;
}

unint64_t sub_230F991A4()
{
  result = qword_27DB88378;
  if (!qword_27DB88378)
  {
    type metadata accessor for SHSignature.Slices.Iterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB88378);
  }

  return result;
}

void sub_230F992CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t, void))
{
  sub_230F99340(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_230F99340(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_230F99138();
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB88290, &qword_230FE2C18);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_230F993C4(uint64_t a1)
{
  v2 = type metadata accessor for SHSignature.Slices(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230F99420(void *a1, __int16 a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB883B8, &qword_230FE2FD0) - 8) + 80);

  return sub_230F98CD0(a1, a2 & 0x1FF);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_230F994D4()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_230FDB53C();
  v7[0] = 0;
  v2 = [v0 initWithDataRepresentation:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_230FDB4FC();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_230F99594(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_230F995E8(uint64_t a1)
{
  v45 = sub_230FDB5DC();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_230FDBB2C();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  if (v6)
  {
    v53 = MEMORY[0x277D84F90];
    sub_230F9D3FC(0, v6 & ~(v6 >> 63), 0);
    v48 = v53;
    if (v46)
    {
      v7 = sub_230FDBADC();
    }

    else
    {
      v9 = -1 << *(a1 + 32);
      v7 = sub_230FDBAAC();
      v8 = *(a1 + 36);
    }

    v50 = v7;
    v51 = v8;
    v52 = v46 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v42 = v6;
      v43 = (v3 + 8);
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v40 = a1 + 56;
      v41 = v11;
      v38 = v1;
      v39 = a1 + 64;
      while (v10 < v6)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v50;
        v15 = v52;
        v47 = v51;
        v16 = a1;
        sub_230F9F310(v50, v51, v52, a1);
        v18 = v17;
        v19 = [v18 identifier];
        v20 = v44;
        sub_230FDB5CC();

        v21 = sub_230FDB5AC();
        v23 = v22;
        (*v43)(v20, v45);

        v24 = v48;
        v53 = v48;
        v26 = *(v48 + 16);
        v25 = *(v48 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_230F9D3FC((v25 > 1), v26 + 1, 1);
          v24 = v53;
        }

        *(v24 + 16) = v26 + 1;
        v27 = v24 + 16 * v26;
        *(v27 + 32) = v21;
        *(v27 + 40) = v23;
        v48 = v24;
        if (v46)
        {
          if (!v15)
          {
            goto LABEL_42;
          }

          a1 = v16;
          if (sub_230FDBAFC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB884D8, &qword_230FE3100);
          v12 = sub_230FDB9FC();
          sub_230FDBB8C();
          v12(v49, 0);
          if (v10 == v6)
          {
LABEL_34:
            sub_230FA1C4C(v50, v51, v52);
            return;
          }
        }

        else
        {
          if (v15)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v16;
          v28 = 1 << *(v16 + 32);
          if (v14 >= v28)
          {
            goto LABEL_38;
          }

          v29 = v14 >> 6;
          v30 = *(v40 + 8 * (v14 >> 6));
          if (((v30 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v16 + 36) != v47)
          {
            goto LABEL_40;
          }

          v31 = v30 & (-2 << (v14 & 0x3F));
          if (v31)
          {
            v28 = __clz(__rbit64(v31)) | v14 & 0x7FFFFFFFFFFFFFC0;
            v6 = v42;
          }

          else
          {
            v32 = v29 << 6;
            v33 = v29 + 1;
            v34 = (v39 + 8 * v29);
            v6 = v42;
            while (v33 < (v28 + 63) >> 6)
            {
              v36 = *v34++;
              v35 = v36;
              v32 += 64;
              ++v33;
              if (v36)
              {
                sub_230FA1C4C(v14, v47, 0);
                v28 = __clz(__rbit64(v35)) + v32;
                goto LABEL_33;
              }
            }

            sub_230FA1C4C(v14, v47, 0);
          }

LABEL_33:
          v37 = *(v16 + 36);
          v50 = v28;
          v51 = v37;
          v52 = 0;
          if (v10 == v6)
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
}

uint64_t sub_230F99A08()
{
  v1[12] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88488, &qword_230FE3008);
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88498, &qword_230FE30D0) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230F99B24, 0, 0);
}

uint64_t sub_230F99B24()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(*(v0 + 96) + OBJC_IVAR____TtC9ShazamKit14SHAsyncLibrary_syncDelegate);
  v4 = OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_updatesContinuation;
  *(v0 + 152) = v3;
  *(v0 + 160) = v4;
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v0 + 168) = v5;
  *(v0 + 176) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = 1;
  if (!v5(v3 + v4, 1, v1))
  {
    v7 = *(v0 + 144);
    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    v10 = *(v0 + 104);
    (*(v9 + 16))(v8, v3 + v4, v10);
    *(v0 + 72) = 1;
    *(v0 + 80) = 0;
    sub_230FDB8CC();
    (*(v9 + 8))(v8, v10);
    v6 = 0;
  }

  v11 = *(v0 + 144);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB884A0, &qword_230FE30D8);
  (*(*(v12 - 8) + 56))(v11, v6, 1, v12);
  sub_230F802C4(v11, &qword_27DB88498, &qword_230FE30D0);
  v13 = *(MEMORY[0x277D85A40] + 4);
  v14 = swift_task_alloc();
  *(v0 + 184) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88510, &qword_230FE2E78);
  *v14 = v0;
  v14[1] = sub_230F99D4C;
  v16 = *(v0 + 96);

  return MEMORY[0x2822008A0](v0 + 88, 0, 0, 0x29286863746566, 0xE700000000000000, sub_230FA1D34, v16, v15);
}

uint64_t sub_230F99D4C()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_230F9A0E8;
  }

  else
  {
    v3 = sub_230F99E60;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230F99E60()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  if ((*(v0 + 168))(v3 + v2, 1, v4))
  {

    v6 = 1;
  }

  else
  {
    v7 = *(v0 + 136);
    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    (*(v9 + 16))(v8, v3 + v2, v4);
    *(v0 + 56) = v5;
    *(v0 + 64) = 1;
    sub_230FDB8CC();
    (*(v9 + 8))(v8, v4);
    v6 = 0;
  }

  v11 = *(v0 + 168);
  v10 = *(v0 + 176);
  v13 = *(v0 + 152);
  v12 = *(v0 + 160);
  v14 = *(v0 + 136);
  v15 = *(v0 + 104);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB884A0, &qword_230FE30D8);
  v17 = 1;
  (*(*(v16 - 8) + 56))(v14, v6, 1, v16);
  sub_230F802C4(v14, &qword_27DB88498, &qword_230FE30D0);
  if (!v11(v13 + v12, 1, v15))
  {
    v18 = *(v0 + 120);
    v19 = *(v0 + 104);
    v20 = *(v0 + 112);
    (*(v20 + 16))(v18, *(v0 + 152) + *(v0 + 160), v19);
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    sub_230FDB8CC();
    (*(v20 + 8))(v18, v19);
    v17 = 0;
  }

  v22 = *(v0 + 136);
  v21 = *(v0 + 144);
  v24 = *(v0 + 120);
  v23 = *(v0 + 128);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB884A0, &qword_230FE30D8);
  (*(*(v25 - 8) + 56))(v23, v17, 1, v25);
  sub_230F802C4(v23, &qword_27DB88498, &qword_230FE30D0);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_230F9A0E8()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];

  v5 = v0[1];
  v6 = v0[24];

  return v5();
}

uint64_t sub_230F9A170(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_230F9A190, 0, 0);
}

uint64_t sub_230F9A190()
{
  v1 = v0[4];
  v33 = MEMORY[0x277D84F90];
  v31 = v1 >> 62;
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_22:
    v3 = sub_230FDBB2C();
    v4 = v0[4];
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[4];
  }

  v5 = 0;
  v30 = v1;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x277D84F90];
  v0 = &selRef_decodeBoolForKey_;
  while (v3 != v5)
  {
    if (v6)
    {
      v8 = MEMORY[0x2319216B0](v5, v32[4]);
    }

    else
    {
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_21;
      }

      v8 = *&v7[8 * v5];
    }

    v9 = v8;
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v11 = [objc_allocWithZone(SHMediaLibraryTrack) initWithMediaItem_];

    ++v5;
    if (v11)
    {
      MEMORY[0x231921270]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_230FDB80C();
      }

      sub_230FDB82C();
      v1 = v33;
      v5 = v10;
    }
  }

  if (!(v1 >> 62))
  {
    v13 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v32;
    if (!v31)
    {
      goto LABEL_16;
    }

LABEL_24:
    v18 = v14[4];
    if (v30 < 0)
    {
      v19 = v14[4];
    }

    if (v13 != sub_230FDBB2C())
    {
      goto LABEL_17;
    }

LABEL_27:
    v20 = [objc_allocWithZone(SHMediaLibrarySnapshot) init];
    v14[6] = v20;
    if (v1 >> 62)
    {
      v21 = sub_230FDBB2C();
      if (!v21)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v21 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
LABEL_39:
        v26 = v14[5];

        v27 = swift_task_alloc();
        v14[7] = v27;
        v27[2] = v26;
        v27[3] = v20;
        v27[4] = @"UserAction";
        v28 = *(MEMORY[0x277D85A40] + 4);
        v29 = swift_task_alloc();
        v14[8] = v29;
        *v29 = v14;
        v29[1] = sub_230F9A5B8;

        return MEMORY[0x2822008A0]();
      }
    }

    v22 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x2319216B0](v22, v1);
      }

      else
      {
        if (v22 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v23 = *(v1 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      [v20 addItem_];

      ++v22;
      if (v25 == v21)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
    return MEMORY[0x2822008A0]();
  }

  v13 = sub_230FDBB2C();
  v14 = v32;
  if (v31)
  {
    goto LABEL_24;
  }

LABEL_16:
  if (v13 == *(v2 + 16))
  {
    goto LABEL_27;
  }

LABEL_17:

  type metadata accessor for SHError(0);
  v14[3] = 400;
  sub_230F84350(MEMORY[0x277D84F90]);
  sub_230FA1C58(&unk_27DB88530, type metadata accessor for SHError);
  sub_230FDB4DC();
  v15 = v14[2];
  swift_willThrow();
  v16 = v14[1];

  return v16();
}

uint64_t sub_230F9A5B8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_230FA2038;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_230FA2070;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230F9A6D4(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_230F9A6F4, 0, 0);
}

uint64_t sub_230F9A6F4()
{
  v1 = v0[4];
  v40 = MEMORY[0x277D84F90];
  v38 = v1 >> 62;
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_22:
    v3 = sub_230FDBB2C();
    v4 = v0[4];
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[4];
  }

  v5 = 0;
  v37 = v1;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x277D84F90];
  v0 = &selRef_decodeBoolForKey_;
  while (v3 != v5)
  {
    if (v6)
    {
      v8 = MEMORY[0x2319216B0](v5, v39[4]);
    }

    else
    {
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_21;
      }

      v8 = *&v7[8 * v5];
    }

    v9 = v8;
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v11 = [objc_allocWithZone(SHMediaLibraryTrack) initWithMediaItem_];

    ++v5;
    if (v11)
    {
      MEMORY[0x231921270]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_230FDB80C();
      }

      sub_230FDB82C();
      v1 = v40;
      v5 = v10;
    }
  }

  if (!(v1 >> 62))
  {
    v13 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v39;
    if (!v38)
    {
      goto LABEL_16;
    }

LABEL_24:
    v18 = v14[4];
    if (v37 < 0)
    {
      v19 = v14[4];
    }

    if (v13 != sub_230FDBB2C())
    {
      goto LABEL_17;
    }

LABEL_27:
    v20 = [objc_allocWithZone(SHMediaLibrarySnapshot) init];
    v14[6] = v20;
    if (v1 >> 62)
    {
      v21 = sub_230FDBB2C();
      if (!v21)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v21 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
LABEL_39:
        v26 = v14[4];
        v27 = v14[5];

        v28 = *(v27 + OBJC_IVAR____TtC9ShazamKit14SHAsyncLibrary_syncDelegate);
        v29 = *(v28 + OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_lock);
        v30 = swift_task_alloc();
        *(v30 + 16) = v28;
        *(v30 + 24) = v26;
        v31 = swift_task_alloc();
        *(v31 + 16) = sub_230FA1E70;
        *(v31 + 24) = v30;
        os_unfair_lock_lock(v29 + 4);
        sub_230FA2058(v32);
        os_unfair_lock_unlock(v29 + 4);

        v33 = v14[5];

        v34 = swift_task_alloc();
        v14[7] = v34;
        v34[2] = v33;
        v34[3] = v20;
        v34[4] = @"UserAction";
        v35 = *(MEMORY[0x277D85A40] + 4);
        v36 = swift_task_alloc();
        v14[8] = v36;
        *v36 = v14;
        v36[1] = sub_230F9ABB4;

        return MEMORY[0x2822008A0]();
      }
    }

    v22 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x2319216B0](v22, v1);
      }

      else
      {
        if (v22 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v23 = *(v1 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      [v20 removeItem_];

      ++v22;
      if (v25 == v21)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
    return MEMORY[0x2822008A0]();
  }

  v13 = sub_230FDBB2C();
  v14 = v39;
  if (v38)
  {
    goto LABEL_24;
  }

LABEL_16:
  if (v13 == *(v2 + 16))
  {
    goto LABEL_27;
  }

LABEL_17:

  type metadata accessor for SHError(0);
  v14[3] = 400;
  sub_230F84350(MEMORY[0x277D84F90]);
  sub_230FA1C58(&unk_27DB88530, type metadata accessor for SHError);
  sub_230FDB4DC();
  v15 = v14[2];
  swift_willThrow();
  v16 = v14[1];

  return v16();
}

uint64_t sub_230F9ABB4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_230F9AD34;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_230F9ACD0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230F9ACD0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230F9AD34()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[9];
  v4 = v0[1];

  return v4();
}

uint64_t sub_230F9AD9C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9ShazamKit14SHAsyncLibrary_subscriptions;
  swift_beginAccess();
  v25 = v2;
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *(v1 + v2);
    }

    swift_unknownObjectRetain();
    sub_230FDBAEC();
    sub_230FDB6CC();
    sub_230FA1C58(&unk_27DB884F0, MEMORY[0x277CBCDA8]);
    result = sub_230FDBA0C();
    v7 = v27;
    v6 = v28;
    v8 = v29;
    v9 = v30;
    v10 = v31;
  }

  else
  {
    v11 = -1 << *(v3 + 32);
    v6 = v3 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v3 + 56);
    result = swift_bridgeObjectRetain_n();
    v9 = 0;
    v7 = v3;
  }

  v14 = (v8 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v15 = v9;
    v16 = v10;
    v17 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
LABEL_20:
      sub_230F973D8();

      v20 = *(v1 + v25);
      *(v1 + v25) = MEMORY[0x277D84FA0];

      v21 = OBJC_IVAR____TtC9ShazamKit14SHAsyncLibrary_asyncStream;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88330, &qword_230FE2EC0);
      (*(*(v22 - 8) + 8))(v1 + v21, v22);
      v23 = *(v1 + OBJC_IVAR____TtC9ShazamKit14SHAsyncLibrary_syncLock);

      v24 = *(v1 + v25);

      return v1;
    }

    while (1)
    {
      sub_230FDB6BC();

      v9 = v17;
      v10 = v18;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_230FDBB6C())
      {
        sub_230FDB6CC();
        swift_dynamicCast();
        v17 = v9;
        v18 = v10;
        if (v26)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_20;
    }

    v16 = *(v6 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230F9B060()
{
  sub_230F9AD9C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_230F9B0E0()
{
  sub_230F9B198();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_230F9B198()
{
  if (!qword_27DB883F0)
  {
    v0 = sub_230FDB92C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DB883F0);
    }
  }
}

void sub_230F9B1E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_lock);
  os_unfair_lock_lock(v2 + 4);
  sub_230FA2058(v3);
  os_unfair_lock_unlock(v2 + 4);
}

__CFString *sub_230F9B258@<X0>(__CFString **a1@<X8>)
{
  v2 = sub_230FDB46C();
  v3 = sub_230FDB78C();
  v5 = v4;
  if (v3 == sub_230FDB78C() && v5 == v6)
  {

    goto LABEL_8;
  }

  v8 = sub_230FDBDFC();

  if (v8)
  {

LABEL_8:
    v9 = SHMediaLibrarySyncStartConditionUserAction;
    goto LABEL_9;
  }

  v11 = sub_230FDB78C();
  v13 = v12;
  if (v11 == sub_230FDB78C() && v13 == v14)
  {

    goto LABEL_17;
  }

  v16 = sub_230FDBDFC();

  if (v16)
  {

LABEL_17:
    v9 = SHMediaLibrarySyncStartConditionRemotePush;
    goto LABEL_9;
  }

  v17 = sub_230FDB78C();
  v19 = v18;
  if (v17 == sub_230FDB78C() && v19 == v20)
  {

    v9 = SHMediaLibrarySyncStartConditionInitialFetch;
  }

  else
  {
    v21 = sub_230FDBDFC();

    v9 = SHMediaLibrarySyncStartConditionUserAction;
    if (v21)
    {
      v9 = SHMediaLibrarySyncStartConditionInitialFetch;
    }
  }

LABEL_9:
  result = *v9;
  *a1 = result;
  return result;
}

uint64_t sub_230F9B44C(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88580, &qword_230FE2460);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = *a1;
  v7 = sub_230FDB8AC();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = v6;
  v10 = v6;
  sub_230F8D968(0, 0, v5, &unk_230FE3190, v9);
}

uint64_t sub_230F9B580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_230F9B5A0, 0, 0);
}

uint64_t sub_230F9B5A0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_230F9B688;

    return sub_230F99A08();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_230F9B688()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_230F9BABC;
  }

  else
  {
    v3 = sub_230F9B79C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230F9B79C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = [objc_allocWithZone(SHMediaLibrarySnapshot) init];
  v0[10] = v3;
  v4 = swift_task_alloc();
  v0[11] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_230F9B8BC;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000025, 0x8000000231008F70, sub_230F9765C, v4, v7);
}

uint64_t sub_230F9B8BC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_230F9BA48;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_230F9B9D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230F9B9D8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_230F9BA48()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 104);
  v3 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230F9BABC()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

void sub_230F9BB20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC9ShazamKit14SHAsyncLibrary_syncLock);
  os_unfair_lock_lock((v2 + 24));
  sub_230FA1D3C((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

void sub_230F9BB7C(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88518, &qword_230FE3140);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = *a1;
  v10 = [objc_allocWithZone(SHMediaLibraryQueryParameters) initWithResultsLimit:0x7FFFFFFFFFFFFFFFLL filterOptions:1 ascending:0 shouldUpdate:1 excludeCloudMetadata:1];
  (*(v5 + 16))(v8, a2, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_230FA1DDC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_230F9BF0C;
  aBlock[3] = &block_descriptor_20;
  v13 = _Block_copy(aBlock);

  [v9 _queryLibraryWithParameters_completionHandler_];
  _Block_release(v13);
}

uint64_t sub_230F9BD78(unint64_t a1, int a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88518, &qword_230FE3140);
    return sub_230FDB84C();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v6 = a1 >> 62 ? sub_230FDBB2C() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_13;
  }

  v12 = MEMORY[0x277D84F90];
  result = sub_230FDBC8C();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2319216B0](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = [v8 mediaItemValue];

      sub_230FDBC6C();
      v11 = *(v12 + 16);
      sub_230FDBC9C();
      sub_230FDBCAC();
      sub_230FDBC7C();
    }

    while (v6 != v7);
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88518, &qword_230FE3140);
    return sub_230FDB85C();
  }

  __break(1u);
  return result;
}

uint64_t sub_230F9BF0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_230F80DF8(0, &qword_27DB88528, off_2788F75C8);
    v6 = sub_230FDB7FC();
  }

  if (a3)
  {
    sub_230F80DF8(0, &qword_27DB88520, off_2788F7598);
    a3 = sub_230FDB7FC();
  }

  v9 = a4;
  v8(v6, a3, a4);
}

void sub_230F9BFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88508, &qword_230FE3128);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  v13 = *(a2 + OBJC_IVAR____TtC9ShazamKit14SHAsyncLibrary_syncLock);
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);
  (*(v9 + 16))(v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v12, v8);
  aBlock[4] = sub_230FA1CA0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_230F9C248;
  aBlock[3] = &block_descriptor_3;
  v17 = _Block_copy(aBlock);

  [v14 _synchronizeSnapshot_startCondition_completionHandler_];
  _Block_release(v17);
  os_unfair_lock_unlock((v13 + 24));
}

uint64_t sub_230F9C1D4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88508, &qword_230FE3128);
    return sub_230FDB84C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88508, &qword_230FE3128);
    return sub_230FDB85C();
  }
}

void sub_230F9C248(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_230F9C2B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB884E8, &unk_230FE3110);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88488, &qword_230FE3008);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a2, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_updatesContinuation;
  swift_beginAccess();
  sub_230FA1FC0(v7, a1 + v10);
  return swift_endAccess();
}

size_t sub_230F9C3F4(uint64_t a1, unint64_t a2)
{
  v46 = sub_230FDB5DC();
  v4 = *(v46 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v46);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88488, &qword_230FE3008);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v40 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88498, &qword_230FE30D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - v14;
  v16 = OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_inflightItems;
  v17 = *(a1 + OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_inflightItems);

  v19 = sub_230F9FBB0(v18, v17);
  v41 = a2;

  v20 = *(a1 + v16);
  *(a1 + v16) = v19;

  v21 = OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_updatesContinuation;
  swift_beginAccess();
  v22 = 1;
  if ((*(v9 + 48))(a1 + v21, 1, v8))
  {
    goto LABEL_15;
  }

  v39 = v15;
  v23 = v40;
  (*(v9 + 16))(v40, a1 + v21, v8);
  if (v41 >> 62)
  {
    v24 = sub_230FDBB2C();
  }

  else
  {
    v24 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = v39;
  v38 = v9;
  v25 = MEMORY[0x277D84F90];
  if (!v24)
  {
LABEL_14:
    v44 = v25;
    v45 = 3;
    sub_230FDB8CC();
    (*(v38 + 8))(v23, v8);
    v22 = 0;
LABEL_15:
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB884A0, &qword_230FE30D8);
    (*(*(v35 - 8) + 56))(v15, v22, 1, v35);
    return sub_230F802C4(v15, &qword_27DB88498, &qword_230FE30D0);
  }

  v37 = v8;
  v44 = MEMORY[0x277D84F90];
  result = sub_230F9D3DC(0, v24 & ~(v24 >> 63), 0);
  v43 = v24;
  if ((v24 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v25 = v44;
    v28 = v41;
    v42 = v41 & 0xC000000000000001;
    v29 = v41;
    do
    {
      if (v42)
      {
        v30 = MEMORY[0x2319216B0](v27);
      }

      else
      {
        v30 = *(v28 + 8 * v27 + 32);
      }

      v31 = v30;
      v32 = [v30 identifier];
      sub_230FDB5CC();

      v44 = v25;
      v34 = *(v25 + 16);
      v33 = *(v25 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_230F9D3DC(v33 > 1, v34 + 1, 1);
        v25 = v44;
      }

      ++v27;
      *(v25 + 16) = v34 + 1;
      (*(v4 + 32))(v25 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v34, v7, v46);
      v28 = v29;
    }

    while (v43 != v27);
    v8 = v37;
    v15 = v39;
    v23 = v40;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_230F9C834(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88488, &qword_230FE3008);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88498, &qword_230FE30D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  v13 = OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_inflightItems;
  v14 = *(a1 + OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_inflightItems);

  v16 = sub_230FA02DC(v15, a2);

  v17 = *(a1 + v13);

  v18 = sub_230F9CAD4(v16, v17);
  v19 = *(a1 + v13);
  *(a1 + v13) = v18;

  v20 = OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_updatesContinuation;
  swift_beginAccess();
  if ((*(v5 + 48))(a1 + v20, 1, v4))
  {

    v21 = 1;
  }

  else
  {
    (*(v5 + 16))(v8, a1 + v20, v4);
    v22 = sub_230F93750(v16);

    v25[1] = v22;
    v26 = 2;
    sub_230FDB8CC();
    (*(v5 + 8))(v8, v4);
    v21 = 0;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB884A0, &qword_230FE30D8);
  (*(*(v23 - 8) + 56))(v12, v21, 1, v23);
  return sub_230F802C4(v12, &qword_27DB88498, &qword_230FE30D0);
}

uint64_t sub_230F9CAD4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_230FDBB2C();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_230F9E728(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_230FDBB2C() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_230FDBB2C();
  v2 = sub_230F9DA0C(v5, v6);
LABEL_10:

  return sub_230F9E948(a1, v2);
}

uint64_t sub_230F9CBC8(uint64_t a1)
{
  if (MEMORY[0x277D84F90] >> 62)
  {
    v4 = a1;
    if (sub_230FDBB2C())
    {
      sub_230FA0630(MEMORY[0x277D84F90]);
      v1 = v5;
    }

    else
    {
      v1 = MEMORY[0x277D84FA0];
    }

    a1 = v4;
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  v2 = *(a1 + OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_inflightItems);
  *(a1 + OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_inflightItems) = v1;
}

uint64_t sub_230F9CC54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_inflightItems);

  sub_230F995E8(v4);
  v6 = v5;

  *a2 = v6;
  return result;
}

void sub_230F9CDE8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_unknownObjectRetain();
  v6 = a1;
  a4();
  swift_unknownObjectRelease();
}

void sub_230F9CFD0()
{
  sub_230F9D07C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_230F9D07C()
{
  if (!qword_27DB88480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB88488, &qword_230FE3008);
    v0 = sub_230FDBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DB88480);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_230F9D100(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_230F9D148(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

size_t sub_230F9D1A4(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB884D0, &qword_230FE30F8);
  v10 = *(sub_230FDB5DC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_230FDB5DC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_230F9D37C(char *a1, int64_t a2, char a3)
{
  result = sub_230F9D41C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230F9D39C(char *a1, int64_t a2, char a3)
{
  result = sub_230F9D520(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230F9D3BC(char *a1, int64_t a2, char a3)
{
  result = sub_230F9D624(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_230F9D3DC(size_t a1, int64_t a2, char a3)
{
  result = sub_230F9D728(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230F9D3FC(char *a1, int64_t a2, char a3)
{
  result = sub_230F9D900(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230F9D41C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88500, &qword_230FE3120);
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

char *sub_230F9D520(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB88590, &qword_230FE31A0);
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

char *sub_230F9D624(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88588, &qword_230FE3198);
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

size_t sub_230F9D728(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB884D0, &qword_230FE30F8);
  v10 = *(sub_230FDB5DC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_230FDB5DC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_230F9D900(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB884E0, &qword_230FE3108);
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

uint64_t sub_230F9DA0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88318, &qword_230FE30E0);
    v2 = sub_230FDBBEC();
    v16 = v2;
    sub_230FDBAEC();
    if (sub_230FDBB6C())
    {
      sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_230F9DBFC(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_230FDBA5C();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_230FDBB6C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_230F9DBFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88318, &qword_230FE30E0);
  result = sub_230FDBBDC();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_230FDBA5C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_230F9DE24(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_230FDBA5C();
  v5 = -1 << *(a2 + 32);
  result = sub_230FDBACC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

id sub_230F9DEA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88318, &qword_230FE30E0);
  v2 = *v0;
  v3 = sub_230FDBBCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_230F9DFF8(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_230FDBB7C();

    if (v7)
    {
      v8 = sub_230F9E190();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
  v11 = *(v3 + 40);
  v12 = sub_230FDBA5C();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_230FDBA6C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_230F9DEA8();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_230F9E2F8(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_230F9E190()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_230FDBB2C();
  v4 = swift_unknownObjectRetain();
  v5 = sub_230F9DA0C(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_230FDBA5C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_230FDBA6C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_230F9E2F8(v9);
  result = sub_230FDBA6C();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_230F9E2F8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_230FDBABC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_230FDBA5C();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t *sub_230F9E498(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_230F9FCA4(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_230F9E534(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88318, &qword_230FE30E0);
  result = sub_230FDBBFC();
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
    result = sub_230FDBA5C();
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

void sub_230F9E728(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!sub_230FDBB2C())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_230FDBAEC();
    sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
    sub_230F972D8();
    sub_230FDBA0C();
    a1 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_24:
      sub_230F973D8();
      return;
    }

    while (1)
    {
      v18 = sub_230F9DFF8(v17);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_230FDBB6C())
      {
        sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_230F9E948(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v86 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v3 = MEMORY[0x277D84FA0];
    goto LABEL_63;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_230FDBAEC();
    sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
    sub_230F972D8();
    sub_230FDBA0C();
    v4 = v81;
    v6 = v82;
    v7 = v83;
    v8 = v84;
    v9 = v85;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v76 = v4;
  v77 = v6;
  v78 = v7;
  v79 = v8;
  v67 = v7;
  v13 = (v7 + 64) >> 6;
  v73 = (v3 + 56);
  v80 = v9;
  v70 = v6;
  v71 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = sub_230FDBB6C();
      if (!v21)
      {
        goto LABEL_62;
      }

      v74 = v21;
      sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
      swift_dynamicCast();
      v19 = v75;
      v17 = v8;
      v2 = v9;
      if (!v75)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        v16 = v13 <= (v8 + 1) ? v8 + 1 : v13;
        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_66;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v76 = v4;
      v77 = v6;
      v78 = v67;
      v79 = v17;
      v80 = v2;
      if (!v19)
      {
        goto LABEL_62;
      }
    }

    v22 = *(v3 + 40);
    v23 = v19;
    v24 = sub_230FDBA5C();
    v25 = -1 << *(v3 + 32);
    v8 = v24 & ~v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v73[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v70;
    v4 = v71;
  }

  v26 = ~v25;
  v27 = sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
  v28 = *(*(v3 + 48) + 8 * v8);
  v72 = v27;
  while (1)
  {
    v29 = sub_230FDBA6C();

    if (v29)
    {
      break;
    }

    v8 = (v8 + 1) & v26;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v73[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v28 = *(*(v3 + 48) + 8 * v8);
  }

  v31 = *(v3 + 32);
  v64 = ((1 << v31) + 63) >> 6;
  v5 = 8 * v64;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v65 = &v63;
    MEMORY[0x28223BE20](v30);
    v33 = &v63 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v73, v32);
    v34 = *&v33[8 * v4] & ~v15;
    v35 = *(v3 + 16);
    v66 = v33;
    *&v33[8 * v4] = v34;
    v4 = v35 - 1;
    v37 = v70;
    v36 = v71;
    v38 = i;
LABEL_33:
    v68 = v4;
    while (v36 < 0)
    {
      v39 = sub_230FDBB6C();
      if (!v39)
      {
        goto LABEL_61;
      }

      v74 = v39;
      swift_dynamicCast();
      v40 = v75;
      if (!v75)
      {
        goto LABEL_61;
      }

LABEL_50:
      v45 = *(v3 + 40);
      v46 = sub_230FDBA5C();
      v47 = v3;
      v48 = -1 << *(v3 + 32);
      v49 = v46 & ~v48;
      v50 = v49 >> 6;
      v51 = 1 << v49;
      if (((1 << v49) & v73[v49 >> 6]) != 0)
      {
        v52 = ~v48;
        while (1)
        {
          v8 = *(*(v47 + 48) + 8 * v49);
          v53 = sub_230FDBA6C();

          if (v53)
          {
            break;
          }

          v49 = (v49 + 1) & v52;
          v50 = v49 >> 6;
          v51 = 1 << v49;
          if (((1 << v49) & v73[v49 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v54 = v66[v50];
        v66[v50] = v54 & ~v51;
        v55 = (v54 & v51) == 0;
        v3 = v47;
        v37 = v70;
        v36 = v71;
        v4 = v68;
        v38 = i;
        if (!v55)
        {
          v4 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            v3 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v47;
        v37 = v70;
        v36 = v71;
        v4 = v68;
        v38 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v43 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v40 = *(*(v36 + 48) + ((v15 << 9) | (8 * v43)));
      v44 = v40;
      v42 = v15;
LABEL_49:
      v76 = v36;
      v77 = v37;
      v78 = v67;
      v79 = v42;
      v17 = v42;
      v80 = v2;
      if (!v40)
      {
LABEL_61:
        v3 = sub_230F9E534(v66, v64, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v38 <= v17 + 1)
    {
      v41 = v17 + 1;
    }

    else
    {
      v41 = v38;
    }

    v42 = v41 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v38)
      {
        v40 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v37 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v58 = v5;

    v59 = v58;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v60 = swift_slowAlloc();
  memcpy(v60, v73, v59);
  sub_230F9EFC8(v60, v64, v3, v8, &v76);
  v62 = v61;

  MEMORY[0x231922900](v60, -1, -1);
  v3 = v62;
LABEL_62:
  sub_230F973D8();
LABEL_63:
  v56 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_230F9EFC8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v34 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_230FDBB6C())
          {
            goto LABEL_30;
          }

          sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
          swift_dynamicCast();
          v12 = v35;
          if (!v35)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_230F9E534(a1, a2, v31, a3);
            return;
          }
        }

        v18 = *(a3 + 40);
        v19 = sub_230FDBA5C();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
        v24 = *(*(a3 + 48) + 8 * v21);
        v25 = sub_230FDBA6C();

        if (v25)
        {
          break;
        }

        v26 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          v27 = *(*(a3 + 48) + 8 * v21);
          v28 = sub_230FDBA6C();

          if (v28)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:

      v29 = a1[v22];
      a1[v22] = v29 & ~v23;
      v5 = a5;
    }

    while ((v29 & v23) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v31 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_230F9F264(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_230F9F310(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x2319215D0](a1, a2, v7);
      sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
    if (sub_230FDBB0C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_230FDBB1C();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_230FDBA5C();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_230FDBA6C();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

uint64_t sub_230F9F534(void *a1)
{
  v2 = v1;
  v48 = sub_230FDBA3C();
  v4 = *(*(v48 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v48);
  v45 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v43[2] = v43 - v8;
  MEMORY[0x28223BE20](v7);
  v43[1] = v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88540, &qword_230FE3160);
  v11 = *(v10 - 8);
  v46 = v10;
  v47 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88548, &qword_230FE3168);
  v16 = *(v15 - 8);
  v49 = v15;
  v50 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v44 = v43 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88550, &qword_230FE3170);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v43 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88330, &qword_230FE2EC0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v43 - v27;
  v29 = OBJC_IVAR____TtC9ShazamKit14SHAsyncLibrary_syncDelegate;
  v30 = [objc_allocWithZone(type metadata accessor for SHAsyncLibrary.SHAsyncLibraryDelegate(0)) init];
  *(v2 + v29) = v30;
  *(v2 + OBJC_IVAR____TtC9ShazamKit14SHAsyncLibrary_subscriptions) = MEMORY[0x277D84FA0];
  [a1 setDelegate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88558, &unk_230FE3178);
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 16) = a1;
  *(v2 + OBJC_IVAR____TtC9ShazamKit14SHAsyncLibrary_syncLock) = v31;
  v32 = *(v2 + v29);
  v51 = v32;
  (*(v20 + 104))(v23, *MEMORY[0x277D85778], v19);
  v33 = a1;
  v34 = v32;
  sub_230FDB93C();

  (*(v25 + 32))(v2 + OBJC_IVAR____TtC9ShazamKit14SHAsyncLibrary_asyncStream, v28, v24);
  v35 = [objc_opt_self() defaultCenter];
  sub_230FDBA4C();

  sub_230F80DF8(0, &qword_27DB88560, 0x277CCA9A0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v37 = [ObjCClassFromMetadata defaultCenter];
  sub_230FDBA4C();

  v38 = [ObjCClassFromMetadata defaultCenter];
  sub_230FDBA4C();

  sub_230FA1C58(&qword_27DB88568, MEMORY[0x277CC9DB0]);
  sub_230FDB69C();
  type metadata accessor for SHMediaLibrarySyncStartCondition(0);
  sub_230FA1E9C(&qword_27DB88570, &qword_27DB88540, &qword_230FE3160);
  v39 = v44;
  v40 = v46;
  sub_230FDB6DC();
  (*(v47 + 8))(v14, v40);
  sub_230FA1E9C(&qword_27DB88578, &qword_27DB88548, &qword_230FE3168);

  v41 = v49;
  sub_230FDB6EC();

  (*(v50 + 8))(v39, v41);
  swift_beginAccess();
  sub_230FDB6AC();
  swift_endAccess();

  return v2;
}

id sub_230F9FBB0(unint64_t a1, id a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x2319216B0](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * i + 32);
        }

        a2 = v5;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_230F95688(&v10, v5);

        if (v6 == v3)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a2;
      v9 = sub_230FDBB2C();
      a2 = v8;
      v3 = v9;
    }

    while (v9);
  }

  return a2;
}

void sub_230F9FCA4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v35 = sub_230FDB5DC();
  v5 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v37 = a3;
  v11 = *(a3 + 56);
  v10 = a3 + 56;
  v9 = v11;
  v12 = 1 << *(v10 - 24);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v32 = 0;
  v33 = (v6 + 8);
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v19 = v16 | (v8 << 6);
    v20 = *(*(v37 + 48) + 8 * v19);
    v21 = [v20 identifier];
    v22 = v34;
    sub_230FDB5CC();

    v23 = sub_230FDB5AC();
    v25 = v24;
    v26 = (*v33)(v22, v35);
    v38[0] = v23;
    v38[1] = v25;
    MEMORY[0x28223BE20](v26);
    *(&v30 - 2) = v38;
    v27 = v39;
    LOBYTE(v23) = sub_230F9F264(sub_230FA203C, (&v30 - 4), v36);
    v39 = v27;

    if (v23)
    {
      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_15:
        v29 = v37;

        sub_230F9E534(v31, v30, v32, v29);
        return;
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_15;
    }

    v18 = *(v10 + 8 * v8);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_230F9FF28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v44[2] = *MEMORY[0x277D85DE8];
  v40 = sub_230FDB5DC();
  v6 = *(v40 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v40);
  v39 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v35 = ((1 << v8) + 63) >> 6;
  v10 = 8 * v35;
  v42 = a2;

  if (v9 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v43 = v3;
    v34[1] = v34;
    MEMORY[0x28223BE20](v11);
    v36 = v34 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v10);
    v12 = 0;
    v41 = a1;
    v14 = *(a1 + 56);
    a1 += 56;
    v13 = v14;
    v15 = 1 << *(a1 - 24);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v13;
    v18 = (v15 + 63) >> 6;
    v37 = 0;
    v38 = v6 + 1;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_12:
      v3 = v19 | (v12 << 6);
      v6 = *(*(v41 + 48) + 8 * v3);
      v22 = [v6 identifier];
      v23 = v39;
      sub_230FDB5CC();

      v24 = sub_230FDB5AC();
      v10 = v25;
      v26 = (*v38)(v23, v40);
      v44[0] = v24;
      v44[1] = v10;
      MEMORY[0x28223BE20](v26);
      v34[-2] = v44;
      v27 = v43;
      LOBYTE(v24) = sub_230F9F264(sub_230FA203C, &v34[-4], v42);
      v43 = v27;

      if (v24)
      {
        *&v36[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
        if (__OFADD__(v37++, 1))
        {
          __break(1u);
LABEL_16:
          v29 = sub_230F9E534(v36, v35, v37, v41);

          goto LABEL_17;
        }
      }
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(a1 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v32 = swift_slowAlloc();
  v33 = v42;

  v29 = sub_230F9E498(v32, v35, a1, v33);

  MEMORY[0x231922900](v32, -1, -1);

LABEL_17:
  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t sub_230FA02DC(uint64_t a1, uint64_t a2)
{
  v34 = sub_230FDB5DC();
  v6 = *(v34 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v34);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x277D84FA0];
    v38 = MEMORY[0x277D84FA0];
    v35 = a2;

    sub_230FDBAEC();
    v10 = sub_230FDBB6C();
    if (v10)
    {
      v11 = v10;
      sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
      v12 = v11;
      v13 = (v6 + 8);
      do
      {
        v36[0] = v12;
        swift_dynamicCast();
        v14 = [v37 identifier];
        sub_230FDB5CC();

        v15 = sub_230FDB5AC();
        v17 = v16;
        v18 = (*v13)(v9, v34);
        v36[0] = v15;
        v36[1] = v17;
        MEMORY[0x28223BE20](v18);
        *(&v33 - 2) = v36;
        LOBYTE(v15) = sub_230F9F264(sub_230FA1B78, (&v33 - 4), v35);

        v19 = v37;
        if (v15)
        {
          v20 = *(v3 + 16);
          if (*(v3 + 24) <= v20)
          {
            sub_230F9DBFC(v20 + 1);
          }

          v3 = v38;
          v21 = *(v38 + 40);
          result = sub_230FDBA5C();
          v23 = v3 + 56;
          v24 = -1 << *(v3 + 32);
          v25 = result & ~v24;
          v26 = v25 >> 6;
          if (((-1 << v25) & ~*(v3 + 56 + 8 * (v25 >> 6))) != 0)
          {
            v27 = __clz(__rbit64((-1 << v25) & ~*(v3 + 56 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v28 = 0;
            v29 = (63 - v24) >> 6;
            do
            {
              if (++v26 == v29 && (v28 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v30 = v26 == v29;
              if (v26 == v29)
              {
                v26 = 0;
              }

              v28 |= v30;
              v31 = *(v23 + 8 * v26);
            }

            while (v31 == -1);
            v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          }

          *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
          *(*(v3 + 48) + 8 * v27) = v19;
          ++*(v3 + 16);
        }

        else
        {
        }

        v12 = sub_230FDBB6C();
      }

      while (v12);
    }
  }

  else
  {
    v32 = sub_230F9FF28(a1, a2);
    if (!v2)
    {
      return v32;
    }
  }

  return v3;
}

void sub_230FA0630(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_230FDBB2C())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88318, &qword_230FE30E0);
      v3 = sub_230FDBBFC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_230FDBB2C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x2319216B0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_230FDBA5C();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_230FDBA6C();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_230FDBA5C();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_230F80DF8(0, &qword_27DB884B0, off_2788F7570);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_230FDBA6C();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_230FA0920()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88488, &qword_230FE3008);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88498, &qword_230FE30D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v14 - v8;
  v10 = OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_updatesContinuation;
  swift_beginAccess();
  v11 = 1;
  if (!(*(v2 + 48))(v0 + v10, 1, v1))
  {
    (*(v2 + 16))(v5, v0 + v10, v1);
    v14[1] = 1;
    v15 = 0;
    sub_230FDB8CC();
    (*(v2 + 8))(v5, v1);
    v11 = 0;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB884A0, &qword_230FE30D8);
  (*(*(v12 - 8) + 56))(v9, v11, 1, v12);
  return sub_230F802C4(v9, &qword_27DB88498, &qword_230FE30D0);
}

uint64_t sub_230FA0B2C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB884C0, &qword_230FE30E8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v91 - v4);
  v102 = sub_230FDB5DC();
  v97 = *(v102 - 8);
  v6 = *(v97 + 64);
  MEMORY[0x28223BE20](v102);
  v100 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88488, &qword_230FE3008);
  v94 = *(v8 - 8);
  v95 = v8;
  v9 = *(v94 + 64);
  MEMORY[0x28223BE20](v8);
  v91 = &v91 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88498, &qword_230FE30D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v92 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v91 - v16;
  v98 = a1;
  v18 = [a1 trackChanges];
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB884C8, &qword_230FE30F0);
  v19 = sub_230FDB7FC();

  v107 = MEMORY[0x277D84F90];
  if (v19 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_230FDBB2C())
  {
    v21 = MEMORY[0x277D84F90];
    v101 = v5;
    if (!i)
    {
      break;
    }

    v22 = 0;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x2319216B0](v22, v19);
      }

      else
      {
        if (v22 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v23 = *(v19 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if ([v23 changeType] == 1)
      {
        v5 = &v107;
        sub_230FDBC6C();
        v26 = *(v107 + 16);
        sub_230FDBC9C();
        sub_230FDBCAC();
        sub_230FDBC7C();
      }

      else
      {
      }

      ++v22;
      if (v25 == i)
      {
        v27 = v107;
        v21 = MEMORY[0x277D84F90];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_16:

  if ((v27 & 0x8000000000000000) != 0 || (v27 & 0x4000000000000000) != 0)
  {
    v28 = sub_230FDBB2C();
    if (v28)
    {
      goto LABEL_19;
    }

LABEL_30:

    v36 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v28 = *(v27 + 16);
  if (!v28)
  {
    goto LABEL_30;
  }

LABEL_19:
  v107 = v21;
  result = sub_230FDBC8C();
  if (v28 < 0)
  {
    __break(1u);
    return result;
  }

  v30 = 0;
  do
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x2319216B0](v30, v27);
    }

    else
    {
      v31 = *(v27 + 8 * v30 + 32);
    }

    v32 = v31;
    ++v30;
    v33 = [v31 libraryItem];
    v34 = [v33 mediaItemValue];

    sub_230FDBC6C();
    v35 = *(v107 + 16);
    sub_230FDBC9C();
    sub_230FDBCAC();
    sub_230FDBC7C();
  }

  while (v28 != v30);

  v36 = v107;
LABEL_31:
  v37 = v96;
  if (v36 >> 62)
  {
    v38 = v21;
    if (sub_230FDBB2C())
    {
      goto LABEL_33;
    }
  }

  else
  {
    v38 = v21;
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_33:
      v39 = OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_updatesContinuation;
      swift_beginAccess();
      v41 = v94;
      v40 = v95;
      if ((*(v94 + 48))(&v37[v39], 1, v95))
      {

        v42 = 1;
      }

      else
      {
        v43 = &v37[v39];
        v44 = v91;
        (*(v41 + 16))(v91, v43, v40);
        v105 = v36;
        LOBYTE(v106) = 2;
        sub_230FDB8CC();
        (*(v41 + 8))(v44, v40);
        v42 = 0;
      }

      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB884A0, &qword_230FE30D8);
      (*(*(v45 - 8) + 56))(v17, v42, 1, v45);
      v46 = sub_230F802C4(v17, &qword_27DB88498, &qword_230FE30D0);
      goto LABEL_39;
    }
  }

LABEL_39:
  v47 = *&v37[OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_lock];
  MEMORY[0x28223BE20](v46);
  *(&v91 - 2) = v37;
  MEMORY[0x28223BE20](v48);
  *(&v91 - 2) = sub_230FA1B94;
  *(&v91 - 1) = v49;
  os_unfair_lock_lock(v47 + 4);
  sub_230FA1BB0(&v105);
  os_unfair_lock_unlock(v47 + 4);
  v99 = v105;
  v50 = [v98 trackChanges];
  v51 = sub_230FDB7FC();

  v103 = v38;
  if (v51 >> 62)
  {
    goto LABEL_57;
  }

  for (j = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_230FDBB2C())
  {
    v53 = 0;
    v54 = v51 & 0xC000000000000001;
    v55 = v51 & 0xFFFFFFFFFFFFFF8;
    v98 = v51;
    while (1)
    {
      if (v54)
      {
        v56 = MEMORY[0x2319216B0](v53, v51);
      }

      else
      {
        if (v53 >= *(v55 + 16))
        {
          goto LABEL_56;
        }

        v56 = *(v51 + 8 * v53 + 32);
      }

      v57 = v56;
      v58 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if ([v56 changeType] == 3)
      {
        v59 = j;
        v60 = [v57 libraryItem];
        v61 = [v60 identifier];

        v62 = sub_230FDB78C();
        v64 = v63;

        v105 = v62;
        v106 = v64;
        MEMORY[0x28223BE20](v65);
        *(&v91 - 2) = &v105;
        LOBYTE(v62) = sub_230F9F264(sub_230FA203C, (&v91 - 4), v99);

        if (v62)
        {
        }

        else
        {
          sub_230FDBC6C();
          v66 = *(v103 + 2);
          sub_230FDBC9C();
          sub_230FDBCAC();
          sub_230FDBC7C();
        }

        j = v59;
        v51 = v98;
      }

      else
      {
      }

      ++v53;
      if (v58 == j)
      {
        v67 = v103;
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v67 = MEMORY[0x277D84F90];
LABEL_59:

  if ((v67 & 0x8000000000000000) != 0 || (v67 & 0x4000000000000000) != 0)
  {
    goto LABEL_78;
  }

  for (k = *(v67 + 16); k; k = sub_230FDBB2C())
  {
    v69 = 0;
    v70 = (v97 + 48);
    v98 = (v97 + 32);
    v99 = v67 & 0xC000000000000001;
    v71 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v99)
      {
        v72 = MEMORY[0x2319216B0](v69, v67);
      }

      else
      {
        if (v69 >= *(v67 + 16))
        {
          goto LABEL_77;
        }

        v72 = *(v67 + 8 * v69 + 32);
      }

      v73 = v72;
      v74 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      v75 = [v72 libraryItem];
      v76 = [v75 identifier];

      sub_230FDB78C();
      v77 = v101;
      sub_230FDB59C();

      v78 = v102;
      if ((*v70)(v77, 1, v102) == 1)
      {
        sub_230F802C4(v77, &qword_27DB884C0, &qword_230FE30E8);
      }

      else
      {
        v79 = *v98;
        (*v98)(v100, v77, v78);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_230F9D1A4(0, *(v71 + 2) + 1, 1, v71);
        }

        v81 = *(v71 + 2);
        v80 = *(v71 + 3);
        if (v81 >= v80 >> 1)
        {
          v71 = sub_230F9D1A4(v80 > 1, v81 + 1, 1, v71);
        }

        *(v71 + 2) = v81 + 1;
        v79(&v71[((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v81], v100);
      }

      ++v69;
      if (v74 == k)
      {
        goto LABEL_80;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    ;
  }

  v71 = MEMORY[0x277D84F90];
LABEL_80:

  if (!*(v71 + 2))
  {
  }

  v82 = OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_updatesContinuation;
  v83 = v96;
  swift_beginAccess();
  v85 = v94;
  v84 = v95;
  if ((*(v94 + 48))(&v83[v82], 1, v95))
  {

    v86 = 1;
    v87 = v92;
  }

  else
  {
    v88 = &v83[v82];
    v89 = v91;
    (*(v85 + 16))(v91, v88, v84);
    v103 = v71;
    v104 = 3;
    v87 = v92;
    sub_230FDB8CC();
    (*(v85 + 8))(v89, v84);
    v86 = 0;
  }

  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB884A0, &qword_230FE30D8);
  (*(*(v90 - 8) + 56))(v87, v86, 1, v90);
  return sub_230F802C4(v87, &qword_27DB88498, &qword_230FE30D0);
}

uint64_t sub_230FA1684(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88488, &qword_230FE3008);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88498, &qword_230FE30D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22[-v13];
  v15 = *(v3 + OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_lock);
  v26 = v3;
  v27 = a2;
  v23 = sub_230FA1B5C;
  v24 = &v25;
  os_unfair_lock_lock(v15 + 4);
  sub_230FA2058(v16);
  os_unfair_lock_unlock(v15 + 4);
  v17 = OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_updatesContinuation;
  swift_beginAccess();
  v18 = 1;
  if (!(*(v7 + 48))(v3 + v17, 1, v6))
  {
    (*(v7 + 16))(v10, v3 + v17, v6);
    v28 = a1;
    v29 = 4;
    v19 = a1;
    sub_230FDB8CC();
    (*(v7 + 8))(v10, v6);
    v18 = 0;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB884A0, &qword_230FE30D8);
  (*(*(v20 - 8) + 56))(v14, v18, 1, v20);
  return sub_230F802C4(v14, &qword_27DB88498, &qword_230FE30D0);
}

uint64_t sub_230FA18F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88488, &qword_230FE3008);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88498, &qword_230FE30D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17[-v9];
  v11 = *(v0 + OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_lock);
  v21 = v0;
  v18 = sub_230FA1B40;
  v19 = &v20;
  os_unfair_lock_lock(v11 + 4);
  sub_230F80084(v12);
  os_unfair_lock_unlock(v11 + 4);
  v13 = OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_updatesContinuation;
  swift_beginAccess();
  v14 = 1;
  if (!(*(v3 + 48))(v1 + v13, 1, v2))
  {
    (*(v3 + 16))(v6, v1 + v13, v2);
    v22 = 0;
    v23 = 0;
    sub_230FDB8CC();
    (*(v3 + 8))(v6, v2);
    v14 = 0;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB884A0, &qword_230FE30D8);
  (*(*(v15 - 8) + 56))(v10, v14, 1, v15);
  return sub_230F802C4(v10, &qword_27DB88498, &qword_230FE30D0);
}

void *sub_230FA1BB0@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_230FA1BF4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_230FDBDFC() & 1;
  }
}

uint64_t sub_230FA1C4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_230FA1C58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_230FA1CA0(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88508, &qword_230FE3128) - 8) + 80);

  return sub_230F9C1D4(a1);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_230FA1DDC(unint64_t a1, int a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88518, &qword_230FE3140) - 8) + 80);

  return sub_230F9BD78(a1, a2, a3);
}

uint64_t sub_230FA1E9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230FA1EE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_230F80154;

  return sub_230F9B580(a1, v4, v5, v7, v6);
}

uint64_t sub_230FA1FC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB884E8, &unk_230FE3110);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void shazam::unpack_signature<shazam::basic_signature<(shazam::signature_density)16>>(uint64_t a1@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v8 = 0;
  std::vector<std::vector<shazam::spectral_peak_t>>::resize((a1 + 32), 4uLL);
  v7 = 0;
  __p = 0;
  v5 = 0;
  v6 = 0;
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v9 = 0;
  operator new();
}

void sub_230FA2364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19)
{
  __cxa_free_exception(v19);
  a19 = &a10;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void shazam::unpack_signature<shazam::basic_signature<(shazam::signature_density)24>>(uint64_t a1@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v8 = 0;
  std::vector<std::vector<shazam::spectral_peak_t>>::resize((a1 + 32), 4uLL);
  v7 = 0;
  __p = 0;
  v5 = 0;
  v6 = 0;
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v9 = 0;
  operator new();
}

void sub_230FA26E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19)
{
  __cxa_free_exception(v19);
  a19 = &a10;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void shazam::unpack_signature<shazam::basic_signature<(shazam::signature_density)2147483647>>(uint64_t a1@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v8 = 0;
  std::vector<std::vector<shazam::spectral_peak_t>>::resize((a1 + 32), 4uLL);
  v7 = 0;
  __p = 0;
  v5 = 0;
  v6 = 0;
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v9 = 0;
  operator new();
}

void sub_230FA2A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19)
{
  __cxa_free_exception(v19);
  a19 = &a10;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

uint64_t shazam::unpack_signature<shazam::freebird_signature>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) != 1342177285)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x85);
    MEMORY[0x231921D00](exception, error_code, v7);
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1115701264;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v11[0] = &unk_2845C5A18;
  v11[1] = a2;
  v11[3] = v11;
  shazam::packed_signature_view::headers(a1, v11);
  result = std::__function::__value_func<void ()(shazam::signature_header)>::~__value_func[abi:ne200100](v11);
  if (*(a2 + 28) != (*(a2 + 8) - *a2) >> 5)
  {
    v8 = __cxa_allocate_exception(0x20uLL);
    v9 = shazam::make_error_code(0x85);
    MEMORY[0x231921D00](v8, v9, v10);
    __cxa_throw(v8, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_230FA2C64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<shazam::freebird_tensor>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t shazam::unpack_time(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = (v1 + 1);
  if ((v1 + 1) > v2)
  {
    goto LABEL_6;
  }

  v4 = *v1;
  *(a1 + 16) = v3;
  if (v4 == 255)
  {
    v5 = v1 + 5;
    if (v5 <= v2)
    {
      v4 = *v3;
      *(a1 + 16) = v5;
      return v4;
    }

LABEL_6:
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Reading out of bounds of buffer!");
    __cxa_throw(exception, off_2788F7B98, MEMORY[0x277D825F8]);
  }

  return v4;
}

uint64_t shazam::io::read_unaligned<unsigned short,0>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1 + 1;
  if ((v1 + 1) > *(a1 + 8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Reading out of bounds of buffer!");
    __cxa_throw(exception, off_2788F7B98, MEMORY[0x277D825F8]);
  }

  v3 = *v1;
  *(a1 + 16) = v2;
  return v3;
}

uint64_t shazam::unpack_signature<std::tuple<shazam::basic_signature<(shazam::signature_density)2147483647>,shazam::freebird_signature>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) != 1342177286)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x85);
    MEMORY[0x231921D00](exception, error_code, v7);
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  v11 = xmmword_230FE31C0;
  v12 = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 80) = 1115701264;
  *(a2 + 96) = 0;
  v13[0] = &unk_2845C5A98;
  v13[1] = a2;
  v13[2] = &v11;
  v13[3] = v13;
  shazam::packed_signature_view::headers(a1, v13);
  result = std::__function::__value_func<void ()(shazam::signature_header)>::~__value_func[abi:ne200100](v13);
  if (!*(a2 + 96) || !*(a2 + 8))
  {
    v8 = __cxa_allocate_exception(0x20uLL);
    v9 = shazam::make_error_code(0x66);
    MEMORY[0x231921D00](v8, v9, v10);
    __cxa_throw(v8, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void std::vector<shazam::freebird_tensor>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<shazam::freebird_tensor>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<shazam::freebird_tensor>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::tuple<shazam::basic_signature<(shazam::signature_density)2147483647>,shazam::freebird_signature>::~tuple(uint64_t a1)
{
  v3 = (a1 + 56);
  std::vector<shazam::freebird_tensor>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 32);
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<shazam::spectral_peak_t>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<shazam::spectral_peak_t>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::vector<std::vector<shazam::spectral_peak_t>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<shazam::spectral_peak_t>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<std::vector<shazam::spectral_peak_t>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<shazam::spectral_peak_t>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<shazam::spectral_peak_t>>::~__split_buffer(v18);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2788F7B90, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<shazam::spectral_peak_t>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t std::__split_buffer<std::vector<shazam::spectral_peak_t>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<shazam::spectral_peak_t>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<shazam::spectral_peak_t>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::signature_header_type>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__function::__func<shazam::basic_signature<(shazam::signature_density)16> anonymous namespace::parse<(shazam::signature_density)16>(shazam::packed_signature_view const&)::{lambda(shazam::signature_header const&)#1},std::allocator<shazam::basic_signature<(shazam::signature_density)16> anonymous namespace::parse<(shazam::signature_density)16>(shazam::packed_signature_view const&)::{lambda(shazam::signature_header const&)#1}>,void ()(shazam::signature_header)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2845C5858;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<shazam::basic_signature<(shazam::signature_density)16> anonymous namespace::parse<(shazam::signature_density)16>(shazam::packed_signature_view const&)::{lambda(shazam::signature_header const&)#1},std::allocator<shazam::basic_signature<(shazam::signature_density)16> anonymous namespace::parse<(shazam::signature_density)16>(shazam::packed_signature_view const&)::{lambda(shazam::signature_header const&)#1}>,void ()(shazam::signature_header)>::operator()(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*a2 <= 1610809407)
  {
    if (v4 > 1610809344)
    {
      if ((v4 - 1610809345) < 3)
      {
        if ((**(a1 + 16) & 1) == 0)
        {
          v5 = (v4 - 1610809345);
          goto LABEL_28;
        }
      }

      else if ((v4 - 1610809348) < 3)
      {
        **(a1 + 16) = 1;
        v5 = (v4 - 1610809348);
LABEL_28:
        v25 = *(a1 + 24);
        if (v5 + 1 > *v25)
        {
          v26 = v5 + 1;
        }

        else
        {
          v26 = *v25;
        }

        *v25 = v26;
        std::vector<std::vector<shazam::spectral_peak_t>>::resize(*(a1 + 32), v26);
        std::vector<shazam::signature_header_type>::resize(*(a1 + 40), **(a1 + 24));
        *(**(a1 + 40) + 4 * v5) = *a2;
        v27 = **(a1 + 32);
        v28 = *(a2 + 8);
        v29 = shazam::reinterpret_safer<shazam::ancient_dead_sig_point_t const*,0>((a2 + 8));
        v30 = *MEMORY[0x277D85DE8];

        std::vector<shazam::ancient_dead_sig_point_t>::__assign_with_size[abi:ne200100]<shazam::ancient_dead_sig_point_t const*,shazam::ancient_dead_sig_point_t const*>((v27 + 24 * v5), v29, &v29[v28 & 0xFFFFFFFFFFFFFFF0], v28 >> 4);
        return;
      }

      goto LABEL_41;
    }

    switch(v4)
    {
      case 1342177281:
        v32 = shazam::reinterpret_safer<shazam::legacy_sig_info const*,0>((a2 + 8));
        shazam::signature_info::convert(v32, v43);
        if (v44 != 1)
        {
          exception = __cxa_allocate_exception(0x20uLL);
          error_code = shazam::make_error_code(*v43);
          MEMORY[0x231921D00](exception, error_code, v38);
          __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
        }

        break;
      case 1342177282:
        v33 = shazam::reinterpret_safer<shazam::LegacyFatSigInfo const*,0>((a2 + 8));
        shazam::signature_info::convert(v33, v43);
        if (v44 != 1)
        {
          v39 = __cxa_allocate_exception(0x20uLL);
          v40 = shazam::make_error_code(*v43);
          MEMORY[0x231921D00](v39, v40, v41);
          __cxa_throw(v39, MEMORY[0x277D82718], MEMORY[0x277D82650]);
        }

        break;
      case 1342177283:
        v21 = shazam::reinterpret_safer<shazam::SumoSigInfo const*,0>((a2 + 8));
        shazam::signature_info::signature_info(v43, v21);
        v22 = *(a1 + 8);
        v23 = *v43;
        v24 = *&v43[12];
LABEL_40:
        *(v22 + 12) = v24;
        *v22 = v23;
        goto LABEL_41;
      default:
        goto LABEL_41;
    }

    v34 = tl::expected<shazam::signature_info,shazam::sig_error>::value<shazam::signature_info,(void *)0>(v43);
    v22 = *(a1 + 8);
    v23 = *v34;
    v24 = *(v34 + 3);
    goto LABEL_40;
  }

  if ((v4 - 1610809408) < 4)
  {
    v14 = (v4 - 1610809408);
    v15 = *(a1 + 24);
    if (v14 + 1 > *v15)
    {
      v16 = v14 + 1;
    }

    else
    {
      v16 = *v15;
    }

    *v15 = v16;
    if (*(a2 + 8) >= 5uLL)
    {
      v17 = *(a2 + 8);
      v18 = shazam::reinterpret_safer<shazam::spectral_peak_compact_t const*,0>((a2 + 8));
      v19 = *(*(a1 + 8) + 32) + 24 * v14;
      v20 = *v19;
      if (*v19)
      {
        *(v19 + 8) = v20;
        operator delete(v20);
        *v19 = 0;
        *(v19 + 8) = 0;
        *(v19 + 16) = 0;
      }

      *v19 = *v43;
      *(v19 + 16) = *&v43[16];
    }

    goto LABEL_41;
  }

  v6 = (v4 - 1610809600);
  if (v6 >= 4)
  {
    if (v4 == 1610874935)
    {
      v31 = *(a1 + 8);
      std::vector<std::vector<shazam::spectral_peak_t>>::__vdeallocate((v31 + 32));
      *(v31 + 32) = *v43;
      *(v31 + 48) = *&v43[16];
      v42 = v43;
      memset(v43, 0, 24);
      std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v42);
      **(a1 + 24) = 4;
    }

    goto LABEL_41;
  }

  v7 = *(a1 + 24);
  if (v6 + 1 > *v7)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = *v7;
  }

  *v7 = v8;
  v9 = *(a2 + 8);
  if (v9 < 8)
  {
LABEL_41:
    v35 = *MEMORY[0x277D85DE8];
    return;
  }

  v10 = shazam::reinterpret_safer<shazam::spectral_peak_t const*,0>((a2 + 8));
  v11 = *MEMORY[0x277D85DE8];
  v12 = v10;
  v13 = (*(*(a1 + 8) + 32) + 24 * v6);

  std::vector<shazam::spectral_peak_t>::__assign_with_size[abi:ne200100]<shazam::spectral_peak_t const*,shazam::spectral_peak_t const*>(v13, v12, &v12[v9 & 0xFFFFFFFFFFFFFFF8], v9 >> 3);
}

uint64_t std::__function::__func<shazam::basic_signature<(shazam::signature_density)16> anonymous namespace::parse<(shazam::signature_density)16>(shazam::packed_signature_view const&)::{lambda(shazam::signature_header const&)#1},std::allocator<shazam::basic_signature<(shazam::signature_density)16> anonymous namespace::parse<(shazam::signature_density)16>(shazam::packed_signature_view const&)::{lambda(shazam::signature_header const&)#1}>,void ()(shazam::signature_header)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t shazam::reinterpret_safer<shazam::legacy_sig_info const*,0>(void *a1)
{
  result = a1[1];
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x64);
    MEMORY[0x231921D00](exception, error_code, v5);
    goto LABEL_6;
  }

  if (*a1 <= 0x17uLL)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = shazam::make_error_code(0x69);
    MEMORY[0x231921D00](exception, v6, v7);
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

int *tl::expected<shazam::signature_info,shazam::sig_error>::value<shazam::signature_info,(void *)0>(int *result)
{
  if ((result[8] & 1) == 0)
  {
    v1 = *result;
    v2 = &unk_2845C58E0;
    v3 = v1;
    tl::detail::throw_exception<tl::bad_expected_access<shazam::sig_error>>(&v2);
  }

  return result;
}

uint64_t shazam::reinterpret_safer<shazam::LegacyFatSigInfo const*,0>(void *a1)
{
  result = a1[1];
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x64);
    MEMORY[0x231921D00](exception, error_code, v5);
    goto LABEL_6;
  }

  if (*a1 <= 0x2FuLL)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = shazam::make_error_code(0x69);
    MEMORY[0x231921D00](exception, v6, v7);
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

uint64_t shazam::reinterpret_safer<shazam::SumoSigInfo const*,0>(void *a1)
{
  result = a1[1];
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x64);
    MEMORY[0x231921D00](exception, error_code, v5);
    goto LABEL_6;
  }

  if (*a1 <= 0x1BuLL)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = shazam::make_error_code(0x69);
    MEMORY[0x231921D00](exception, v6, v7);
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

uint64_t shazam::reinterpret_safer<shazam::spectral_peak_compact_t const*,0>(void *a1)
{
  result = a1[1];
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x64);
    MEMORY[0x231921D00](exception, error_code, v5);
    goto LABEL_6;
  }

  if (*a1 <= 4uLL)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = shazam::make_error_code(0x69);
    MEMORY[0x231921D00](exception, v6, v7);
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

int8x16_t *anonymous namespace::decode_peaks@<X0>(gsl::details *a1@<X0>, gsl::details *a2@<X1>, int a3@<W2>, char a4@<W3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v16.i64[0] = 0;
  v16.i64[1] = a5;
  if (a3 == 0x7FFFFFFF)
  {
    v5 = -1;
  }

  else
  {
    v5 = a3;
  }

  v6 = 256;
  if (a4 == 15)
  {
    v6 = 211;
  }

  v17 = v5;
  v18 = v6;
  v7 = gsl::make_span<shazam::spectral_peak_compact_t const>(a1, a2);
  v9 = v8;
  v10 = 0;
  v11 = v8 + 5 * v7;
  v19 = v8;
  v20 = v11;
  v21 = v8;
  while (v21 != v11)
  {
    v12 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v19);
    v13 = *v12;
    if (v13 == 255)
    {
      v10 = *(v12 + 1);
    }

    else
    {
      v10 += v13;
      v22 = v10;
      v24 = *(v12 + 1);
      v23 = *(v12 + 3);
      shazam::density_filter<shazam::spectral_peak_t>::operator<<(&v16, &v22);
    }

    v14 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator++(&v19);
    if (v19 != v9 || v20 != v11)
    {
      gsl::details::terminate(v14);
    }
  }

  shazam::density_filter<shazam::spectral_peak_t>::flush(&v16);
  return shazam::density_filter<shazam::spectral_peak_t>::flush(&v16);
}

void sub_230FA4064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9)
{
  shazam::density_filter<shazam::spectral_peak_t>::flush(&a9);
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t shazam::reinterpret_safer<shazam::spectral_peak_t const*,0>(void *a1)
{
  result = a1[1];
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x64);
    MEMORY[0x231921D00](exception, error_code, v5);
    goto LABEL_6;
  }

  if (*a1 <= 7uLL)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = shazam::make_error_code(0x69);
    MEMORY[0x231921D00](exception, v6, v7);
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

void std::vector<shazam::signature_header_type>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<shazam::signature_header_type>::__append(this, __sz - v2);
  }
}

void anonymous namespace::inflate_basic_sumo_peak_data(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned __int8 a4@<W3>, uint64_t *a5@<X8>)
{
  v33 = a4;
  v32 = a3;
  std::vector<std::vector<shazam::spectral_peak_t>>::vector[abi:ne200100](a5, 4uLL);
  v8 = a2 + a1;
  v29 = a2;
  v30 = a2 + a1;
  v31 = a2;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  std::vector<shazam::density_filter<shazam::spectral_peak_t>>::reserve(&v26, 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 3));
  v9 = *a5;
  v10 = a5[1];
  if (*a5 != v10)
  {
    v11 = v27;
    do
    {
      if (v11 >= v28)
      {
        v11 = std::vector<shazam::density_filter<shazam::spectral_peak_t>>::__emplace_back_slow_path<std::vector<shazam::spectral_peak_t> &,shazam::signature_density const&,std::chrono::duration<unsigned char,std::ratio<1l,125l>> const&>(&v26, v9, &v32, &v33);
      }

      else
      {
        v12 = v32;
        v13 = v33;
        v11->i64[0] = 0;
        v11->i64[1] = v9;
        if (v12 == 0x7FFFFFFF)
        {
          v12 = -1;
        }

        if (v13 == 15)
        {
          v14 = 211;
        }

        else
        {
          v14 = 256;
        }

        v11[1].i64[0] = v12;
        v11[1].i64[1] = v14;
        v11 += 2;
      }

      v27 = v11;
      v9 += 24;
    }

    while (v9 != v10);
    v8 = v30;
    a2 = v31;
  }

  if (a2 != v8)
  {
    v15 = 0;
    do
    {
      v16 = shazam::unpack_time(&v29);
      v17 = shazam::io::read_unaligned<unsigned short,0>(&v29);
      v18 = shazam::io::read_unaligned<unsigned short,0>(&v29);
      if (v31 + 48 > v30)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Reading out of bounds of buffer!");
        exception->__vftable = (MEMORY[0x277D828E8] + 16);
        __cxa_throw(exception, off_2788F7B98, MEMORY[0x277D825F8]);
      }

      v19 = v18;
      v15 += v16;
      v31 += 48;
      peak_band = shazam::get_peak_band(v18, (v17 * 7.8125) * 0.015625);
      if (v21)
      {
        LODWORD(v34) = v15;
        WORD2(v34) = v17;
        HIWORD(v34) = v19;
        shazam::density_filter<shazam::spectral_peak_t>::operator<<(&v26[2 * peak_band], &v34);
      }
    }

    while (v31 != v30);
  }

  v22 = v26;
  v23 = v27;
  if (v26 != v27)
  {
    do
    {
      shazam::density_filter<shazam::spectral_peak_t>::flush(v22);
      v22 += 2;
    }

    while (v22 != v23);
    if (v31 != v30)
    {
      v25 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v25, "Sumo decoding read more bytes than expected! Can't unpack this sig.");
      __cxa_throw(v25, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  v34 = &v26;
  std::vector<shazam::density_filter<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v34);
}

void sub_230FA4400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16)
{
  __cxa_free_exception(v16);
  a16 = &a9;
  std::vector<shazam::density_filter<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&a16);
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void tl::detail::throw_exception<tl::bad_expected_access<shazam::sig_error>>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_2845C58E0;
  exception[2] = *(a1 + 8);
}

void tl::bad_expected_access<shazam::sig_error>::~bad_expected_access(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x231921F20);
}

int8x16_t *shazam::density_filter<shazam::spectral_peak_t>::flush(int8x16_t *result)
{
  v1 = result;
  v2 = result->i64[1];
  v4 = *v2;
  v3 = v2[1];
  v5 = (v3->i64 - *v2) >> 3;
  if ((v5 - result->i64[0]) > result[1].i64[0])
  {
    v6 = v4 + 8 * result->i64[0];
    v7 = 126 - 2 * __clz((v3->i64 - v6) >> 3);
    if (v3 == v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    std::__introsort<std::_ClassicAlgPolicy,shazam::$_3 &,shazam::spectral_peak_t *,false>(v6, v3, v8, 1);
    std::vector<shazam::spectral_peak_t>::resize(v1->i64[1], v1[1].i64[0] + v1->i64[0]);
    v9 = v1->i64[1];
    v10 = v9[1];
    v11 = (*v9 + 8 * v1->i64[0]);
    v12 = 126 - 2 * __clz((v10 - v11) >> 3);
    if (v10 == v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *,false>(v11, v10, &v14, v13, 1);
    v5 = (*(v1->i64[1] + 8) - *v1->i64[1]) >> 3;
  }

  v1->i64[0] = v5;
  return result;
}

gsl::details *gsl::make_span<shazam::spectral_peak_compact_t const>(gsl::details *a1, gsl::details *this)
{
  if (this == -1 || !a1 && this)
  {
    gsl::details::terminate(a1);
  }

  return this;
}

gsl::details *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(gsl::details *result)
{
  v1 = *result;
  if (!*result || (v2 = *(result + 1)) == 0 || ((result = *(result + 2), v1 <= result) ? (v3 = result >= v2) : (v3 = 1), v3))
  {
    gsl::details::terminate(result);
  }

  return result;
}

gsl::details *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator++(gsl::details *result)
{
  if (!*result || (v1 = *(result + 2)) == 0 || (v2 = *(result + 1)) == 0 || v1 >= v2)
  {
    gsl::details::terminate(result);
  }

  *(result + 2) = v1 + 5;
  return result;
}

int8x16_t *shazam::density_filter<shazam::spectral_peak_t>::operator<<(int8x16_t *a1, unsigned int *a2)
{
  v4 = a1->i64[1];
  v5 = *(v4 + 8);
  v6 = *a2;
  if (*v4 != v5)
  {
    v7 = *(v5 - 2);
    if (v7 == v6 && *(v5 - 2) == *(a2 + 2))
    {
      if (*(v5 - 1) == *(a2 + 3))
      {
        return a1;
      }
    }

    else if (v6 < v7)
    {
      return a1;
    }
  }

  if (a1[1].i64[1] <= v6)
  {
    do
    {
      shazam::density_filter<shazam::spectral_peak_t>::flush(a1);
      v8 = a1[1].i64[1] + 256;
      a1[1].i64[1] = v8;
    }

    while (v8 <= *a2);
    v4 = a1->i64[1];
    v5 = *(v4 + 8);
  }

  v9 = *(v4 + 16);
  if (v5 >= v9)
  {
    v11 = (v5 - *v4) >> 3;
    if ((v11 + 1) >> 61)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v12 = v9 - *v4;
    v13 = v12 >> 2;
    if (v12 >> 2 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::spectral_peak_t>>(v4, v14);
    }

    v15 = (8 * v11);
    *v15 = *a2;
    v10 = 8 * v11 + 8;
    v16 = *(v4 + 8) - *v4;
    v17 = v15 - v16;
    memcpy(v15 - v16, *v4, v16);
    v18 = *v4;
    *v4 = v17;
    *(v4 + 8) = v10;
    *(v4 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v5 = *a2;
    v10 = (v5 + 1);
  }

  *(v4 + 8) = v10;
  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::spectral_peak_t>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<shazam::spectral_peak_t>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<shazam::spectral_peak_t>::__append(a1, a2 - v2);
  }
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,shazam::$_3 &,shazam::spectral_peak_t *,false>(unint64_t result, int8x16_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v164 = a2[-1].u16[7];
      v165 = v8->u16[3];
      v166 = v164 == v165;
      v167 = v164 > v165;
      if (v166)
      {
        v167 = a2[-1].u16[6] > v8->u16[2];
      }

      if (v167)
      {
        v168 = v8->i64[0];
        goto LABEL_200;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v178 = &v8->u64[1];
      v180 = v8 == a2 || v178 == a2;
      if (a4)
      {
        if (!v180)
        {
          v181 = 0;
          v182 = v8;
          do
          {
            v183 = v182->u16[7];
            v184 = v182->u16[3];
            v185 = v182->u16[6];
            v186 = v182->u16[2];
            v182 = v178;
            v187 = v185 > v186;
            v166 = v183 == v184;
            v188 = v183 > v184;
            if (!v166)
            {
              v187 = v188;
            }

            if (v187)
            {
              v189 = v182->i64[0];
              v190 = HIWORD(v182->i64[0]);
              v191 = HIDWORD(v182->i64[0]);
              v192 = v181;
              while (1)
              {
                v193 = &v8->i8[v192];
                *(&v8->i64[1] + v192) = *(v8->i64 + v192);
                if (!v192)
                {
                  break;
                }

                v194 = *(v193 - 1);
                v195 = *(v193 - 2) < v191;
                v166 = v194 == v190;
                v196 = v194 < v190;
                if (!v166)
                {
                  v195 = v196;
                }

                v192 -= 8;
                if (!v195)
                {
                  v197 = (&v8->i64[1] + v192);
                  goto LABEL_224;
                }
              }

              v197 = v8;
LABEL_224:
              *v197 = v189;
            }

            v178 = &v182->u64[1];
            v181 += 8;
          }

          while (&v182->u64[1] != a2);
        }
      }

      else if (!v180)
      {
        do
        {
          v250 = v7->u16[7];
          v251 = v7->u16[3];
          v252 = v7->u16[6];
          v253 = v7->u16[2];
          v7 = v178;
          v166 = v250 == v251;
          v254 = v250 > v251;
          if (v166)
          {
            v254 = v252 > v253;
          }

          if (v254)
          {
            v255 = v178->i64[0];
            v256 = HIWORD(v178->i64[0]);
            v257 = HIDWORD(v178->i64[0]);
            v258 = v7;
            do
            {
              v259 = v258;
              v260 = *--v258;
              *v259 = v260;
              v261 = *(v259 - 5);
              v262 = *(v259 - 6) < v257;
              v166 = v261 == v256;
              v263 = v261 < v256;
              if (!v166)
              {
                v262 = v263;
              }
            }

            while (v262);
            *v258 = v255;
          }

          v178 = &v7->u64[1];
        }

        while (&v7->u64[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v198 = (v9 - 2) >> 1;
        v199 = v198;
        do
        {
          v200 = v199;
          if (v198 >= v199)
          {
            v201 = (2 * v199) | 1;
            v202 = &v8->i8[8 * v201];
            if (2 * v200 + 2 < v9)
            {
              v203 = *(v202 + 3);
              v204 = *(v202 + 7);
              v166 = v203 == v204;
              v205 = v203 > v204;
              if (v166)
              {
                v205 = *(v202 + 2) > *(v202 + 6);
              }

              v206 = !v205;
              if (v205)
              {
                v207 = 8;
              }

              else
              {
                v207 = 0;
              }

              v202 += v207;
              if (!v206)
              {
                v201 = 2 * v200 + 2;
              }
            }

            v208 = &v8->i8[8 * v200];
            v209 = *(v202 + 3);
            v210 = *(v208 + 3);
            result = *(v208 + 2);
            v166 = v209 == v210;
            v211 = v209 > v210;
            if (v166)
            {
              v211 = *(v202 + 2) > result;
            }

            if (!v211)
            {
              v212 = *v208;
              v213 = HIWORD(*v208);
              do
              {
                v214 = v208;
                v208 = v202;
                *v214 = *v202;
                if (v198 < v201)
                {
                  break;
                }

                v215 = (2 * v201) | 1;
                v202 = &v8->i8[8 * v215];
                v216 = 2 * v201 + 2;
                if (v216 < v9)
                {
                  v217 = *(v202 + 3);
                  v218 = *(v202 + 7);
                  v166 = v217 == v218;
                  v219 = v217 > v218;
                  if (v166)
                  {
                    v219 = *(v202 + 2) > *(v202 + 6);
                  }

                  v220 = !v219;
                  if (v219)
                  {
                    v221 = 8;
                  }

                  else
                  {
                    v221 = 0;
                  }

                  v202 += v221;
                  if (!v220)
                  {
                    v215 = v216;
                  }
                }

                v222 = *(v202 + 3);
                v166 = v222 == v213;
                LODWORD(result) = v222 > v213;
                result = v166 ? *(v202 + 2) > WORD2(v212) : result;
                v201 = v215;
              }

              while (result != 1);
              *v208 = v212;
            }
          }

          v199 = v200 - 1;
        }

        while (v200);
        do
        {
          v223 = 0;
          v224 = v8->i64[0];
          v225 = v8;
          do
          {
            v226 = &v225[v223];
            v227 = (v226 + 4);
            v228 = (2 * v223) | 1;
            v223 = 2 * v223 + 2;
            if (v223 >= v9)
            {
              v223 = v228;
            }

            else
            {
              v229 = v226[7];
              v230 = v226[11];
              result = v226[6] > v226[10];
              v166 = v229 == v230;
              v231 = v229 > v230;
              if (v166)
              {
                v231 = v226[6] > v226[10];
              }

              v232 = v226 + 8;
              if (v231)
              {
                v227 = v232;
              }

              else
              {
                v223 = v228;
              }
            }

            *v225 = v227->i64[0];
            v225 = v227;
          }

          while (v223 <= ((v9 - 2) >> 1));
          a2 = (a2 - 8);
          if (v227 == a2)
          {
            v227->i64[0] = v224;
          }

          else
          {
            v227->i64[0] = a2->i64[0];
            a2->i64[0] = v224;
            v233 = (v227 - v8 + 8) >> 3;
            v234 = v233 < 2;
            v235 = v233 - 2;
            if (!v234)
            {
              v236 = v235 >> 1;
              v237 = (v8 + 8 * v236);
              v238 = v237->u16[3];
              v239 = v227->u16[3];
              v166 = v238 == v239;
              v240 = v238 > v239;
              if (v166)
              {
                v240 = v237->u16[2] > v227->u16[2];
              }

              if (v240)
              {
                v241 = v227->i64[0];
                v242 = HIWORD(v227->i64[0]);
                do
                {
                  v243 = v227;
                  v227 = v237;
                  *v243 = v237->i64[0];
                  if (!v236)
                  {
                    break;
                  }

                  v236 = (v236 - 1) >> 1;
                  v237 = (v8 + 8 * v236);
                  v244 = v237->u16[3];
                  v245 = v237->u16[2] > WORD2(v241);
                  v166 = v244 == v242;
                  v246 = v244 > v242;
                  if (!v166)
                  {
                    v245 = v246;
                  }
                }

                while (v245);
                v227->i64[0] = v241;
              }
            }
          }

          v234 = v9-- <= 2;
        }

        while (!v234);
      }

      return result;
    }

    v10 = &v8->i8[8 * (v9 >> 1)];
    v11 = a2[-1].u16[7];
    v12 = a2[-1].u16[6];
    if (v9 >= 0x81)
    {
      v13 = *(v10 + 3);
      v14 = v8->u16[3];
      v15 = *(v10 + 2);
      v166 = v13 == v14;
      v16 = v13 > v14;
      if (v166)
      {
        v16 = v15 > v8->u16[2];
      }

      v17 = v12 > v15;
      v166 = v11 == v13;
      v18 = v11 > v13;
      if (v166)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      if (v16)
      {
        v20 = v8->i64[0];
        if (v19)
        {
          v8->i64[0] = a2[-1].i64[1];
          goto LABEL_43;
        }

        v8->i64[0] = *v10;
        *v10 = v20;
        v37 = a2[-1].u16[7];
        v166 = v37 == HIWORD(v20);
        v38 = v37 > HIWORD(v20);
        if (v166)
        {
          v38 = a2[-1].u16[6] > WORD2(v20);
        }

        if (v38)
        {
          *v10 = a2[-1].i64[1];
LABEL_43:
          a2[-1].i64[1] = v20;
        }
      }

      else if (v19)
      {
        v29 = *v10;
        *v10 = a2[-1].i64[1];
        a2[-1].i64[1] = v29;
        LODWORD(v29) = *(v10 + 3);
        v30 = v8->u16[3];
        v166 = v29 == v30;
        v31 = v29 > v30;
        if (v166)
        {
          v31 = *(v10 + 2) > v8->u16[2];
        }

        if (v31)
        {
          v32 = v8->i64[0];
          v8->i64[0] = *v10;
          *v10 = v32;
        }
      }

      v39 = (v10 - 8);
      v40 = *(v10 - 1);
      v41 = v8->u16[7];
      v42 = *(v10 - 2);
      v43 = v42 > v8->u16[6];
      v166 = v40 == v41;
      v44 = v40 > v41;
      if (!v166)
      {
        v43 = v44;
      }

      v45 = a2[-1].u16[3];
      v46 = a2[-1].u16[2] > v42;
      v166 = v45 == v40;
      v47 = v45 > v40;
      if (v166)
      {
        v48 = v46;
      }

      else
      {
        v48 = v47;
      }

      if (v43)
      {
        v49 = v8->u64[1];
        if (v48)
        {
          v8->i64[1] = a2[-1].i64[0];
          goto LABEL_66;
        }

        v8->i64[1] = *v39;
        *v39 = v49;
        v56 = a2[-1].u16[3];
        v166 = v56 == HIWORD(v49);
        v57 = v56 > HIWORD(v49);
        if (v166)
        {
          v57 = a2[-1].u16[2] > WORD2(v49);
        }

        if (v57)
        {
          *v39 = a2[-1].i64[0];
LABEL_66:
          a2[-1].i64[0] = v49;
        }
      }

      else if (v48)
      {
        v50 = *v39;
        *v39 = a2[-1].i64[0];
        a2[-1].i64[0] = v50;
        LODWORD(v50) = *(v10 - 1);
        v51 = v8->u16[7];
        v166 = v50 == v51;
        v52 = v50 > v51;
        if (v166)
        {
          v52 = *(v10 - 2) > v8->u16[6];
        }

        if (v52)
        {
          v53 = v8->i64[1];
          v8->i64[1] = *v39;
          *v39 = v53;
        }
      }

      v58 = *(v10 + 7);
      v59 = v8[1].u16[3];
      v60 = *(v10 + 6);
      v61 = v60 > v8[1].u16[2];
      v166 = v58 == v59;
      v62 = v58 > v59;
      if (!v166)
      {
        v61 = v62;
      }

      v63 = a2[-2].u16[7];
      v64 = a2[-2].u16[6] > v60;
      v166 = v63 == v58;
      v65 = v63 > v58;
      if (v166)
      {
        v66 = v64;
      }

      else
      {
        v66 = v65;
      }

      if (v61)
      {
        v67 = v8[1].u64[0];
        if (v66)
        {
          v8[1].i64[0] = a2[-2].i64[1];
          goto LABEL_84;
        }

        v8[1].i64[0] = *(v10 + 1);
        *(v10 + 1) = v67;
        v72 = a2[-2].u16[7];
        v166 = v72 == HIWORD(v67);
        v73 = v72 > HIWORD(v67);
        if (v166)
        {
          v73 = a2[-2].u16[6] > WORD2(v67);
        }

        if (v73)
        {
          *(v10 + 1) = a2[-2].i64[1];
LABEL_84:
          a2[-2].i64[1] = v67;
        }
      }

      else if (v66)
      {
        v68 = *(v10 + 1);
        *(v10 + 1) = a2[-2].i64[1];
        a2[-2].i64[1] = v68;
        LODWORD(v68) = *(v10 + 7);
        v69 = v8[1].u16[3];
        v166 = v68 == v69;
        v70 = v68 > v69;
        if (v166)
        {
          v70 = *(v10 + 6) > v8[1].u16[2];
        }

        if (v70)
        {
          v71 = v8[1].i64[0];
          v8[1].i64[0] = *(v10 + 1);
          *(v10 + 1) = v71;
        }
      }

      v74 = *(v10 + 3);
      v75 = *(v10 - 1);
      v76 = *(v10 + 2);
      v77 = *(v10 - 2);
      if (v74 == v75)
      {
        v78 = v76 > v77;
      }

      else
      {
        v78 = v74 > v75;
      }

      v79 = *(v10 + 7);
      v80 = *(v10 + 6);
      v81 = v80 > v76;
      v166 = v79 == v74;
      v82 = v79 > v74;
      if (!v166)
      {
        v81 = v82;
      }

      if (v78)
      {
        v83 = *v39;
        if (v81)
        {
          *v39 = *(v10 + 1);
          *(v10 + 1) = v83;
          v83 = *v10;
        }

        else
        {
          *v39 = *v10;
          *v10 = v83;
          v87 = v79 > HIWORD(v83);
          if (v79 == HIWORD(v83))
          {
            v87 = v80 > WORD2(v83);
          }

          if (v87)
          {
            v88 = *(v10 + 1);
            *v10 = v88;
            *(v10 + 1) = v83;
            v83 = v88;
          }
        }
      }

      else
      {
        v83 = *v10;
        if (v81)
        {
          v84 = *(v10 + 1);
          *v10 = v84;
          *(v10 + 1) = v83;
          v85 = v77 < WORD2(v84);
          v86 = v75 < HIWORD(v84);
          if (v75 == HIWORD(v84))
          {
            v86 = v85;
          }

          if (v86)
          {
            v83 = *v39;
            *v39 = v84;
            *v10 = v83;
          }

          else
          {
            v83 = v84;
          }
        }
      }

      v89 = v8->i64[0];
      v8->i64[0] = v83;
      *v10 = v89;
      goto LABEL_104;
    }

    v21 = v8->u16[3];
    v22 = *(v10 + 3);
    v23 = v8->u16[2];
    v166 = v21 == v22;
    v24 = v21 > v22;
    if (v166)
    {
      v24 = v23 > *(v10 + 2);
    }

    v25 = v12 > v23;
    v166 = v11 == v21;
    v26 = v11 > v21;
    if (v166)
    {
      v27 = v25;
    }

    else
    {
      v27 = v26;
    }

    if (!v24)
    {
      if (v27)
      {
        v33 = v8->i64[0];
        v8->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v33;
        LODWORD(v33) = v8->u16[3];
        v34 = *(v10 + 3);
        v166 = v33 == v34;
        v35 = v33 > v34;
        if (v166)
        {
          v35 = v8->u16[2] > *(v10 + 2);
        }

        if (v35)
        {
          v36 = *v10;
          *v10 = v8->i64[0];
          v8->i64[0] = v36;
        }
      }

      goto LABEL_104;
    }

    v28 = *v10;
    if (v27)
    {
      *v10 = a2[-1].i64[1];
    }

    else
    {
      *v10 = v8->i64[0];
      v8->i64[0] = v28;
      v54 = a2[-1].u16[7];
      v166 = v54 == HIWORD(v28);
      v55 = v54 > HIWORD(v28);
      if (v166)
      {
        v55 = a2[-1].u16[6] > WORD2(v28);
      }

      if (!v55)
      {
        goto LABEL_104;
      }

      v8->i64[0] = a2[-1].i64[1];
    }

    a2[-1].i64[1] = v28;
LABEL_104:
    --a3;
    if (a4)
    {
      v90 = v8->i64[0];
LABEL_110:
      v95 = 0;
      v96 = HIWORD(v90);
      do
      {
        v97 = v8->u16[v95 + 7];
        v98 = v8->u16[v95 + 6] > WORD2(v90);
        v166 = v97 == v96;
        v99 = v97 > v96;
        if (!v166)
        {
          v98 = v99;
        }

        v95 += 4;
      }

      while (v98);
      v100 = &v8->i8[v95 * 2];
      v101 = a2;
      if (v95 == 4)
      {
        v106 = a2;
        while (v100 < v106)
        {
          v102 = (v106 - 8);
          v107 = v106[-1].u16[7];
          v108 = v106[-1].u16[6] > WORD2(v90);
          v166 = v107 == v96;
          v109 = v107 > v96;
          if (v166)
          {
            v109 = v108;
          }

          v106 = v102;
          if (v109)
          {
            goto LABEL_126;
          }
        }

        v102 = v106;
      }

      else
      {
        do
        {
          v102 = (v101 - 8);
          v103 = v101[-1].u16[7];
          v104 = v101[-1].u16[6] > WORD2(v90);
          v166 = v103 == v96;
          v105 = v103 > v96;
          if (v166)
          {
            v105 = v104;
          }

          v101 = v102;
        }

        while (!v105);
      }

LABEL_126:
      if (v100 >= v102)
      {
        v121 = v100 - 8;
      }

      else
      {
        v110 = v100;
        v111 = v102;
        do
        {
          v112 = *v110;
          *v110 = *v111;
          *v111 = v112;
          do
          {
            v113 = *(v110 + 14);
            v114 = *(v110 + 12);
            v110 += 8;
            v115 = v114 > WORD2(v90);
            v166 = v113 == v96;
            v116 = v113 > v96;
            if (v166)
            {
              v116 = v115;
            }
          }

          while (v116);
          do
          {
            v117 = *(v111 - 1);
            v118 = *(v111-- - 2);
            v119 = v118 > WORD2(v90);
            v166 = v117 == v96;
            v120 = v117 > v96;
            if (v166)
            {
              v120 = v119;
            }
          }

          while (!v120);
        }

        while (v110 < v111);
        v121 = (v110 - 8);
      }

      if (v121 != v8)
      {
        v8->i64[0] = *v121;
      }

      *v121 = v90;
      if (v100 < v102)
      {
        goto LABEL_143;
      }

      v122 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,shazam::$_3 &,shazam::spectral_peak_t *>(v8, v121);
      v8 = (v121 + 8);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,shazam::$_3 &,shazam::spectral_peak_t *>((v121 + 8), a2);
      if (result)
      {
        a2 = v121;
        if (!v122)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v122)
      {
LABEL_143:
        result = std::__introsort<std::_ClassicAlgPolicy,shazam::$_3 &,shazam::spectral_peak_t *,false>(v7, v121, a3, a4 & 1);
        a4 = 0;
        v8 = (v121 + 8);
      }
    }

    else
    {
      v91 = v8[-1].u16[7];
      v92 = v8->u16[3];
      v166 = v91 == v92;
      v93 = v91 > v92;
      if (v166)
      {
        v94 = v8[-1].u16[6] > v8->u16[2];
      }

      else
      {
        v94 = v93;
      }

      v90 = v8->i64[0];
      if (v94)
      {
        goto LABEL_110;
      }

      v123 = HIWORD(v90);
      v124 = a2[-1].u16[7];
      v125 = a2[-1].u16[6] < WORD2(v90);
      v166 = v124 == HIWORD(v90);
      v126 = v124 < HIWORD(v90);
      if (!v166)
      {
        v125 = v126;
      }

      if (v125)
      {
        v127 = v8;
        do
        {
          v8 = &v127->u64[1];
          v128 = v127->u16[7];
          v129 = v127->u16[6] < WORD2(v90);
          v166 = v128 == v123;
          v130 = v128 < v123;
          if (v166)
          {
            v130 = v129;
          }

          v127 = v8;
        }

        while (!v130);
      }

      else
      {
        v131 = &v8->u64[1];
        do
        {
          v8 = v131;
          if (v131 >= a2)
          {
            break;
          }

          v132 = v131->u16[3];
          v133 = v8->u16[2] < WORD2(v90);
          v166 = v132 == v123;
          v134 = v132 < v123;
          if (!v166)
          {
            v133 = v134;
          }

          v131 = &v8->u64[1];
        }

        while (!v133);
      }

      v135 = a2;
      if (v8 < a2)
      {
        v136 = a2;
        do
        {
          v135 = (v136 - 8);
          v137 = v136[-1].u16[7];
          v138 = v136[-1].u16[6] < WORD2(v90);
          v166 = v137 == v123;
          v139 = v137 < v123;
          if (v166)
          {
            v139 = v138;
          }

          v136 = v135;
        }

        while (v139);
      }

      while (v8 < v135)
      {
        v140 = v8->i64[0];
        v8->i64[0] = v135->i64[0];
        v135->i64[0] = v140;
        do
        {
          v141 = v8->u16[7];
          v142 = v8->u16[6];
          v8 = (v8 + 8);
          v143 = v142 < WORD2(v90);
          v166 = v141 == v123;
          v144 = v141 < v123;
          if (v166)
          {
            v144 = v143;
          }
        }

        while (!v144);
        do
        {
          v145 = v135[-1].u16[7];
          v146 = v135[-1].u16[6];
          v135 = (v135 - 8);
          v147 = v146 < WORD2(v90);
          v166 = v145 == v123;
          v148 = v145 < v123;
          if (v166)
          {
            v148 = v147;
          }
        }

        while (v148);
      }

      v149 = &v8[-1].i64[1];
      if (&v8[-1].u64[1] != v7)
      {
        v7->i64[0] = *v149;
      }

      a4 = 0;
      *v149 = v90;
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,shazam::$_3 &,shazam::spectral_peak_t *,0>(v8, &v8->u64[1], &v8[1], &a2[-1].u64[1]);
    }

    if (v9 == 5)
    {
      result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,shazam::$_3 &,shazam::spectral_peak_t *,0>(v8, &v8->u64[1], &v8[1], &v8[1].u64[1]);
      v150 = a2[-1].u16[7];
      v151 = v8[1].u16[7];
      v166 = v150 == v151;
      v152 = v150 > v151;
      if (v166)
      {
        v152 = a2[-1].u16[6] > v8[1].u16[6];
      }

      if (v152)
      {
        v153 = v8[1].i64[1];
        v8[1].i64[1] = a2[-1].i64[1];
        a2[-1].i64[1] = v153;
        LODWORD(v153) = v8[1].u16[7];
        v154 = v8[1].u16[3];
        v166 = v153 == v154;
        v155 = v153 > v154;
        if (v166)
        {
          v155 = v8[1].u16[6] > v8[1].u16[2];
        }

        if (v155)
        {
          v157 = v8[1].i64[0];
          v156 = v8[1].u64[1];
          v8[1].i64[0] = v156;
          v8[1].i64[1] = v157;
          v158 = HIWORD(v156);
          v159 = v8->u16[7];
          v166 = v159 == HIWORD(v156);
          v160 = v159 < HIWORD(v156);
          if (v166)
          {
            v160 = v8->u16[6] < WORD2(v156);
          }

          if (v160)
          {
            v161 = v8->i64[1];
            v8->i64[1] = v156;
            v8[1].i64[0] = v161;
            LODWORD(v161) = v8->u16[3];
            v166 = v161 == v158;
            v162 = v161 < v158;
            if (v166)
            {
              v162 = v8->u16[2] < WORD2(v156);
            }

            if (v162)
            {
              v163 = v8->i64[0];
              v8->i64[0] = v156;
              v8->i64[1] = v163;
            }
          }
        }
      }

      return result;
    }

    goto LABEL_10;
  }

  v169 = v8->u16[7];
  v170 = v8->u16[3];
  v171 = v8->u16[6];
  v172 = v171 > v8->u16[2];
  v166 = v169 == v170;
  v173 = v169 > v170;
  if (!v166)
  {
    v172 = v173;
  }

  v174 = a2[-1].u16[7];
  v175 = a2[-1].u16[6] > v171;
  v166 = v174 == v169;
  v176 = v174 > v169;
  if (v166)
  {
    v177 = v175;
  }

  else
  {
    v177 = v176;
  }

  if (v172)
  {
    v168 = v8->i64[0];
    if (v177)
    {
LABEL_200:
      v8->i64[0] = a2[-1].i64[1];
    }

    else
    {
      v8->i64[0] = v8->i64[1];
      v8->i64[1] = v168;
      v264 = a2[-1].u16[7];
      v166 = v264 == HIWORD(v168);
      v265 = v264 > HIWORD(v168);
      if (v166)
      {
        v265 = a2[-1].u16[6] > WORD2(v168);
      }

      if (!v265)
      {
        return result;
      }

      v8->i64[1] = a2[-1].i64[1];
    }

    a2[-1].i64[1] = v168;
    return result;
  }

  if (v177)
  {
    v247 = v8->i64[1];
    v8->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v247;
    LODWORD(v247) = v8->u16[7];
    v248 = v8->u16[3];
    v166 = v247 == v248;
    v249 = v247 > v248;
    if (v166)
    {
      v249 = v8->u16[6] > v8->u16[2];
    }

    if (v249)
    {
      *v8 = vextq_s8(*v8, *v8, 8uLL);
    }
  }

  return result;
}