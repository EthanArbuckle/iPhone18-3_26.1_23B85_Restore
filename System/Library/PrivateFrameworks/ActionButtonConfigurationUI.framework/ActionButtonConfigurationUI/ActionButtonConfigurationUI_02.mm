char *sub_23DDF3C98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326B90, &qword_23DE09358);
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

void *sub_23DDF3D9C(void *a1, int64_t a2, char a3)
{
  result = sub_23DDF3E1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23DDF3DBC(char *a1, int64_t a2, char a3)
{
  result = sub_23DDF3F64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23DDF3DDC(char *a1, int64_t a2, char a3)
{
  result = sub_23DDF4080(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23DDF3DFC(char *a1, int64_t a2, char a3)
{
  result = sub_23DDF418C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23DDF3E1C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A80, &qword_23DE09268);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A88, &qword_23DE09270);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23DDF3F64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A58, &qword_23DE09238);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23DDF4080(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A18, &unk_23DE091E0);
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

char *sub_23DDF418C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A60, &qword_23DE09240);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23DDF42AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A70, &qword_23DE09250);
  v37 = a2;
  result = sub_23DE06248();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 32 * v22);
      v38 = v26[1];
      v39 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      sub_23DE063A8();
      sub_23DE05A88();
      result = sub_23DE063C8();
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
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v8 + 56) + 32 * v16);
      *v18 = v39;
      v18[1] = v38;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
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

uint64_t sub_23DDF4558(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A28, &qword_23DE09200);
  result = sub_23DE06248();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_23DE05DB8();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23DDF47DC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_23DE06248();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_23DE063A8();
      sub_23DE05A88();
      result = sub_23DE063C8();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_23DDF4A78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A10, &qword_23DE091D8);
  v37 = a2;
  result = sub_23DE06248();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v17 = __clz(__rbit64(v13));
      v38 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_23DE05A48();
      sub_23DE063A8();
      sub_23DE05A88();
      v26 = sub_23DE063C8();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v36;
      v13 = v38;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void sub_23DDF4D40(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23DE06008() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_23DE05A48();
      sub_23DE063A8();
      v11 = v10;
      sub_23DE05A88();
      v12 = sub_23DE063C8();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_23DDF4F08(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v16 = *v7;
  result = sub_23DE016E8(a1, a2);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a3 & 1) == 0)
  {
    if (v24 < v22 || (a3 & 1) != 0)
    {
      sub_23DDF42AC(v22, a3 & 1);
      v26 = *v8;
      result = sub_23DE016E8(a1, a2);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_16:
        result = sub_23DE06358();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = result;
      sub_23DDF5510();
      result = v25;
    }
  }

  v28 = *v8;
  if (v23)
  {
    v29 = (v28[7] + 32 * result);
    *v29 = a4;
    v29[1] = a5;
    v29[2] = a6;
    v29[3] = a7;
    return result;
  }

  v28[(result >> 6) + 8] |= 1 << result;
  v30 = (v28[6] + 16 * result);
  *v30 = a1;
  v30[1] = a2;
  v31 = (v28[7] + 32 * result);
  *v31 = a4;
  v31[1] = a5;
  v31[2] = a6;
  v31[3] = a7;
  v32 = v28[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v28[2] = v33;
}

uint64_t sub_23DDF508C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23DE016E8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_23DDF47DC(v16, a4 & 1, &qword_27E326A68, &qword_23DE09248);
      v20 = *v5;
      v11 = sub_23DE016E8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_23DE06358();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_23DDF57FC(&qword_27E326A68, &qword_23DE09248);
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_23DDF5228(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_23DE01698(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_23DDF4558(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_23DE01698(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_23DDC91D0(0, &unk_2812184F8, 0x277D7A118);
        result = sub_23DE06358();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_23DDF5684();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

id sub_23DDF53A4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_23DDCA864(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_23DDF4A78(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_23DDCA864(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for WFStaccatoActionSectionIdentifier(0);
        result = sub_23DE06358();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_23DDF5958();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

void *sub_23DDF5510()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A70, &qword_23DE09250);
  v2 = *v0;
  v3 = sub_23DE06238();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = (*(v4 + 48) + v18);
        v24 = *v22;
        v25 = v22[1];
        *v23 = v21;
        v23[1] = v20;
        v26 = (*(v4 + 56) + v17);
        *v26 = v24;
        v26[1] = v25;
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

void *sub_23DDF5684()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A28, &qword_23DE09200);
  v2 = *v0;
  v3 = sub_23DE06238();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

id sub_23DDF57FC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23DE06238();
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

void *sub_23DDF5958()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A10, &qword_23DE091D8);
  v2 = *v0;
  v3 = sub_23DE06238();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void sub_23DDF5AD0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23DDF69AC(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_23DDF5B3C(v4);
  *a1 = v2;
}

void sub_23DDF5B3C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23DE06308();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_23DE05B28();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_23DDF5D80(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_23DDF5C34(0, v2, 1, a1);
  }
}

void sub_23DDF5C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v20 = *a4;
    v4 = *a4 + 24 * a3;
    v5 = a1 - a3;
LABEL_5:
    v18 = v4;
    v19 = a3;
    v17 = v5;
    v6 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = *(v4 + 8);
      v9 = *(v6 - 24);
      v6 -= 24;
      v10 = *(v4 - 16);
      v11 = *(v4 + 16);
      v12 = *(v4 - 8);
      sub_23DDD6F58(*v4, v8, v11);
      sub_23DDD6F58(v9, v10, v12);
      v21 = sub_23DE01E74(v7, v8, v11, v9, v10, v12);
      sub_23DDD6FDC(v9, v10, v12);
      sub_23DDD6FDC(v7, v8, v11);
      if (!v21)
      {
LABEL_4:
        a3 = v19 + 1;
        v4 = v18 + 24;
        v5 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v20)
      {
        break;
      }

      v13 = *(v4 + 16);
      v14 = *v4;
      *v4 = *v6;
      *(v4 + 16) = *(v6 + 16);
      *(v4 - 24) = v14;
      *(v4 - 8) = v13;
      v4 = v6;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_23DDF5D80(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v5 = sub_23DDF6918(v5);
    }

    v101 = *(v5 + 16);
    if (v101 >= 2)
    {
      do
      {
        v102 = *v7;
        if (!*v7)
        {
          goto LABEL_125;
        }

        v7 = (v101 - 1);
        v103 = *(v5 + 16 * v101);
        v104 = *(v5 + 16 * (v101 - 1) + 40);
        sub_23DDF64E4((v102 + 24 * v103), (v102 + 24 * *(v5 + 16 * (v101 - 1) + 32)), v102 + 24 * v104, v10);
        if (v6)
        {
          break;
        }

        if (v104 < v103)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_23DDF6918(v5);
        }

        if (v101 - 2 >= *(v5 + 16))
        {
          goto LABEL_115;
        }

        v105 = (v5 + 16 * v101);
        *v105 = v103;
        v105[1] = v104;
        sub_23DDF688C(v7);
        v101 = *(v5 + 16);
        v7 = a3;
      }

      while (v101 > 1);
    }

LABEL_99:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    v112 = v11;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v107 = v10;
      v109 = v6;
      v13 = *v7 + 24 * v12;
      v5 = *v13;
      v14 = *(v13 + 8);
      v120 = 24 * v11;
      v15 = *v7 + 24 * v11;
      v17 = *v15;
      v16 = *(v15 + 8);
      v18 = *(v13 + 16);
      v19 = *(v15 + 16);
      sub_23DDD6F58(*v13, v14, v18);
      sub_23DDD6F58(v17, v16, v19);
      v122 = sub_23DE01E74(v5, v14, v18, v17, v16, v19);
      sub_23DDD6FDC(v17, v16, v19);
      sub_23DDD6FDC(v5, v14, v18);
      v20 = v11 + 2;
      v21 = (v15 + 64);
      v118 = v8;
      while (v8 != v20)
      {
        v22 = *(v21 - 2);
        v23 = *(v21 - 1);
        v24 = *(v21 - 5);
        v5 = *(v21 - 4);
        v25 = *v21;
        v26 = *(v21 - 24);
        sub_23DDD6F58(v22, v23, *v21);
        sub_23DDD6F58(v24, v5, v26);
        v27 = sub_23DE01E74(v22, v23, v25, v24, v5, v26);
        sub_23DDD6FDC(v24, v5, v26);
        sub_23DDD6FDC(v22, v23, v25);
        ++v20;
        v21 += 24;
        v28 = v122 == v27;
        v8 = v118;
        if (!v28)
        {
          v8 = v20 - 1;
          break;
        }
      }

      v10 = v107;
      v6 = v109;
      v11 = v112;
      v7 = a3;
      v29 = v120;
      if (v122)
      {
        if (v8 < v112)
        {
          goto LABEL_118;
        }

        if (v112 < v8)
        {
          v30 = 0;
          v31 = 24 * v8;
          v32 = v112;
          do
          {
            if (v32 != v8 + v30 - 1)
            {
              v38 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = (v38 + v29);
              v34 = v38 + v31;
              v35 = *(v33 + 16);
              v36 = *v33;
              v37 = *(v34 - 8);
              *v33 = *(v34 - 24);
              *(v33 + 2) = v37;
              *(v34 - 24) = v36;
              *(v34 - 8) = v35;
            }

            ++v32;
            --v30;
            v31 -= 24;
            v29 += 24;
          }

          while (v32 < v8 + v30);
        }
      }
    }

    v39 = v7[1];
    if (v8 < v39)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_117;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_119;
        }

        if (v11 + a4 >= v39)
        {
          v40 = v7[1];
        }

        else
        {
          v40 = v11 + a4;
        }

        if (v40 < v11)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v8 != v40)
        {
          break;
        }
      }
    }

    v41 = v8;
    if (v8 < v11)
    {
      goto LABEL_116;
    }

LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_23DDF3C98(0, *(v10 + 2) + 1, 1, v10);
    }

    v43 = *(v10 + 2);
    v42 = *(v10 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      v10 = sub_23DDF3C98((v42 > 1), v43 + 1, 1, v10);
    }

    *(v10 + 2) = v44;
    v45 = &v10[16 * v43];
    *(v45 + 4) = v112;
    *(v45 + 5) = v41;
    v46 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v114 = v41;
    if (v43)
    {
      while (1)
      {
        v5 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v47 = *(v10 + 4);
          v48 = *(v10 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_48:
          if (v50)
          {
            goto LABEL_105;
          }

          v63 = &v10[16 * v44];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_108;
          }

          v69 = &v10[16 * v5 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_112;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v5 = v44 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v73 = &v10[16 * v44];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_62:
        if (v68)
        {
          goto LABEL_107;
        }

        v76 = &v10[16 * v5];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_110;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_69:
        v84 = v5 - 1;
        if (v5 - 1 >= v44)
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
          goto LABEL_120;
        }

        if (!*v7)
        {
          goto LABEL_123;
        }

        v85 = *&v10[16 * v84 + 32];
        v86 = *&v10[16 * v5 + 40];
        sub_23DDF64E4((*v7 + 24 * v85), (*v7 + 24 * *&v10[16 * v5 + 32]), *v7 + 24 * v86, v46);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v86 < v85)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_23DDF6918(v10);
        }

        if (v84 >= *(v10 + 2))
        {
          goto LABEL_102;
        }

        v87 = &v10[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        sub_23DDF688C(v5);
        v44 = *(v10 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v10[16 * v44 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_103;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_104;
      }

      v58 = &v10[16 * v44];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_106;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_109;
      }

      if (v62 >= v54)
      {
        v80 = &v10[16 * v5 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v49 < v83)
        {
          v5 = v44 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v114;
    if (v114 >= v8)
    {
      goto LABEL_89;
    }
  }

  v108 = v10;
  v110 = v6;
  v121 = *v7;
  v88 = *v7 + 24 * v8;
  v89 = v11 - v8;
  v115 = v40;
LABEL_80:
  v117 = v88;
  v119 = v8;
  v116 = v89;
  v90 = v89;
  v91 = v88;
  v92 = v88;
  while (1)
  {
    v93 = *v91;
    v94 = *(v91 + 8);
    v95 = *(v92 - 24);
    v92 -= 24;
    v96 = *(v91 - 16);
    v5 = *(v91 + 16);
    v97 = *(v91 - 8);
    sub_23DDD6F58(*v91, v94, *(v91 + 16));
    sub_23DDD6F58(v95, v96, v97);
    v123 = sub_23DE01E74(v93, v94, v5, v95, v96, v97);
    sub_23DDD6FDC(v95, v96, v97);
    sub_23DDD6FDC(v93, v94, v5);
    if (!v123)
    {
LABEL_79:
      v8 = v119 + 1;
      v88 = v117 + 24;
      v41 = v115;
      v89 = v116 - 1;
      if (v119 + 1 != v115)
      {
        goto LABEL_80;
      }

      v10 = v108;
      v6 = v110;
      v7 = a3;
      if (v115 < v112)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v121)
    {
      break;
    }

    v98 = *(v91 + 16);
    v99 = *v91;
    *v91 = *v92;
    *(v91 + 16) = *(v92 + 16);
    *(v91 - 24) = v99;
    *(v91 - 8) = v98;
    v91 = v92;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_79;
    }
  }

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
}

uint64_t sub_23DDF64E4(id *__src, id *a2, unint64_t a3, id *a4)
{
  v4 = a4;
  v5 = __src;
  v6 = a2 - __src;
  v7 = (a2 - __src) / 24;
  v53 = a3;
  v8 = a3 - a2;
  v9 = (a3 - a2) / 24;
  if (v7 >= v9)
  {
    v26 = 3 * v9;
    if (a4 != a2 || &a2[v26] <= a4)
    {
      v27 = a2;
      memmove(a4, a2, 24 * v9);
      a2 = v27;
    }

    v12 = &v4[v26];
    if (v8 < 24 || a2 <= v5)
    {
      v25 = a2;
    }

    else
    {
      v45 = v4;
      v52 = v5;
LABEL_22:
      v28 = 0;
      v29 = v12;
      v42 = a2 - 3;
      v43 = v12;
      v44 = a2;
      do
      {
        v30 = &v29[v28];
        v31 = (v53 + v28);
        v33 = &v29[v28 - 24];
        v32 = *v33;
        v46 = (v53 + v28 - 24);
        v47 = *&v29[v28 - 16];
        v34 = *(a2 - 3);
        v35 = *(a2 - 2);
        v36 = v29[v28 - 8];
        v37 = *(a2 - 8);
        v50 = *v33;
        sub_23DDD6F58(*v33, v47, v36);
        sub_23DDD6F58(v34, v35, v37);
        v48 = sub_23DE01E74(v32, v47, v36, v34, v35, v37);
        sub_23DDD6FDC(v34, v35, v37);
        sub_23DDD6FDC(v50, v47, v36);
        if (v48)
        {
          v25 = v42;
          if (v31 != v44)
          {
            v39 = *v42;
            *(v53 + v28 - 8) = v42[2];
            *v46 = v39;
          }

          if (v30 <= v45 || (v12 = v30, v53 = v53 + v28 - 24, a2 = v42, v42 <= v52))
          {
            v12 = &v43[v28];
            goto LABEL_34;
          }

          goto LABEL_22;
        }

        if (v31 != v30)
        {
          v38 = *v33;
          *(v53 + v28 - 8) = *(v33 + 16);
          *v46 = v38;
        }

        v28 -= 24;
        v29 = v43;
        a2 = v44;
        v12 = &v43[v28];
      }

      while (&v43[v28] > v45);
      v25 = v44;
LABEL_34:
      v4 = v45;
    }
  }

  else
  {
    v10 = 3 * v7;
    if (a4 != __src || &__src[v10] <= a4)
    {
      v11 = a2;
      memmove(a4, __src, v10 * 8);
      a2 = v11;
    }

    v12 = &v4[v10];
    if (v6 >= 24 && a2 < v53)
    {
      v49 = &v4[v10];
      while (1)
      {
        v51 = v5;
        v13 = *a2;
        v14 = a2[1];
        v15 = *v4;
        v16 = v4[1];
        v17 = *(a2 + 16);
        v18 = *(v4 + 16);
        v19 = a2;
        sub_23DDD6F58(*a2, v14, v17);
        sub_23DDD6F58(v15, v16, v18);
        v20 = sub_23DE01E74(v13, v14, v17, v15, v16, v18);
        sub_23DDD6FDC(v15, v16, v18);
        sub_23DDD6FDC(v13, v14, v17);
        if (!v20)
        {
          break;
        }

        v21 = v19;
        a2 = v19 + 3;
        v22 = v51;
        if (v51 != v19)
        {
          goto LABEL_12;
        }

LABEL_13:
        v5 = v22 + 3;
        v12 = v49;
        if (v4 >= v49 || a2 >= v53)
        {
          goto LABEL_15;
        }
      }

      v21 = v4;
      v22 = v51;
      v23 = v51 == v4;
      v4 += 3;
      a2 = v19;
      if (v23)
      {
        goto LABEL_13;
      }

LABEL_12:
      v24 = *v21;
      v22[2] = v21[2];
      *v22 = v24;
      goto LABEL_13;
    }

LABEL_15:
    v25 = v5;
  }

  v40 = 3 * ((v12 - v4) / 24);
  if (v25 != v4 || v25 >= &v4[v40])
  {
    memmove(v25, v4, v40 * 8);
  }

  return 1;
}

uint64_t sub_23DDF688C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23DDF6918(v3);
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

void (*sub_23DDF692C(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EF00A60](a2, a3);
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
    return sub_23DDF763C;
  }

  __break(1u);
  return result;
}

unint64_t sub_23DDF69C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A10, &qword_23DE091D8);
    v3 = sub_23DE06258();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_23DDCA864(v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23DDF6AB8(uint64_t a1, char a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A90, &qword_23DE09278);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A98, &qword_23DE09280);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v6 + 24) = sub_23DE05418();
  *(v2 + 16) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326AA0, &qword_23DE09288);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = -1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326AA8, &qword_23DE09290);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v10 + 40) = sub_23DE05418();
  *(v2 + 24) = v10;
  v14 = MEMORY[0x277D84F90];
  v15 = sub_23DDC7764(MEMORY[0x277D84F90], &qword_27E326A28, &qword_23DE09200, sub_23DE01698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326AB0, &qword_23DE09298);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326AB8, &unk_23DE092A0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  *(v16 + 24) = sub_23DE05418();
  *(v3 + 32) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3260C0, &qword_23DE08CB0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326088, &unk_23DE091C0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v20 + 24) = sub_23DE05418();
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 40) = v20;
  *(v3 + 64) = -1;
  *(v3 + 72) = MEMORY[0x277D84FA0];
  *(v3 + 80) = 0;
  v24 = 0;
  *(v3 + 88) = sub_23DDF69C0(v14);
  *(v3 + 96) = 0;
  *(v3 + 104) = a1;
  if ((a2 & 1) == 0)
  {
    v24 = @"SilentMode";
    v25 = @"SilentMode";
  }

  *(v3 + 112) = v24;
  *(v3 + 120) = a2 & 1;

  sub_23DDECBDC();
  return v3;
}

unint64_t sub_23DDF6D28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A70, &qword_23DE09250);
    v3 = sub_23DE06258();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = i[1];
      v15 = *i;

      result = sub_23DE016E8(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23DDF6E38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A78, &unk_23DE09258);
    v3 = sub_23DE06258();
    v4 = a1 + 32;

    while (1)
    {
      sub_23DDD2850(v4, &v11, &unk_27E326640, &unk_23DE08B90);
      v5 = v11;
      result = sub_23DDCA864(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23DDF74BC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_23DDF6F9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326880, &qword_23DE08ED8);
    v3 = sub_23DE06258();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_23DDCA864(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23DDF70B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_23DE06258();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_23DE016E8(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23DDF71AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326990, &qword_23DE09158);
    v3 = sub_23DE06258();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_23DE01648(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

id sub_23DDF72A4(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_23DDD6F58(result, a2, a3);
  }

  return result;
}

void sub_23DDF72B8(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_23DDD6FDC(a1, a2, a3);
  }
}

uint64_t sub_23DDF72F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23DDF73C8;

  return sub_23DDF3160(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_23DDF73C8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

_OWORD *sub_23DDF74BC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_23DDF74CC()
{
  result = qword_281218510;
  if (!qword_281218510)
  {
    sub_23DDC91D0(255, &qword_281218508, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281218510);
  }

  return result;
}

uint64_t sub_23DDF7544(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16));
}

uint64_t sub_23DDF7578(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;

  v4 = *(v2 + 24);

  sub_23DE05408();
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_23DDF776C(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ShortcutsConfigurationViewController();
  objc_msgSendSuper2(&v8, sel_viewWillAppear_, a1 & 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v4 = Strong;
  v5 = [Strong view];

  if (v5)
  {
    v6 = [v5 window];

    v7 = [v6 _rootSheetPresentationController];
LABEL_5:
    [v7 _setShouldScaleDownBehindDescendantSheets_];

    [v1 setOverrideUserInterfaceStyle_];
    return;
  }

  __break(1u);
}

void sub_23DDF78BC(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ShortcutsConfigurationViewController();
  objc_msgSendSuper2(&v8, sel_viewDidDisappear_, a1 & 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v4 = Strong;
  v5 = [Strong view];

  if (v5)
  {
    v6 = [v5 window];

    v7 = [v6 _rootSheetPresentationController];
LABEL_5:
    [v7 _setShouldScaleDownBehindDescendantSheets_];

    return;
  }

  __break(1u);
}

id sub_23DDF7A80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShortcutsConfigurationViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23DDF7B28(void *a1, void *a2)
{
  v3 = v2 + OBJC_IVAR____TtC27ActionButtonConfigurationUI36ShortcutsConfigurationViewController_completionHandler;
  v4 = *(v2 + OBJC_IVAR____TtC27ActionButtonConfigurationUI36ShortcutsConfigurationViewController_completionHandler);
  if (a1)
  {
    if (v4)
    {
      v5 = *(v3 + 8);
      v7 = a1;
      sub_23DDD6EA4(v4);
      v4(a1, 0);
      sub_23DDD71FC(v4, v5);
    }
  }

  else if (v4)
  {
    v8 = *(v3 + 8);
    if (a2)
    {
      v9 = a2;
      v10 = a2;
    }

    else
    {
      v9 = 0;
      sub_23DDF7C84();
      v10 = swift_allocError();
    }

    sub_23DDD6EA4(v4);
    v11 = v9;
    v4(v10, 1);
    sub_23DDD71FC(v4, v8);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

unint64_t sub_23DDF7C84()
{
  result = qword_27E326C20;
  if (!qword_27E326C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326C20);
  }

  return result;
}

unint64_t sub_23DDF7CEC()
{
  result = qword_27E326C28;
  if (!qword_27E326C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326C28);
  }

  return result;
}

void *sub_23DDF7D40(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_23DE061C8();

    if (v4)
    {
      sub_23DDC91D0(0, &qword_2812184C8, 0x277D7A128);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_23DE01648(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_23DDF7E04(uint64_t a1, uint64_t a2, void (*a3)(void, void, void, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a1;
  v46 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3267C8, &qword_23DE092B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E326590, &qword_23DE08AD0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v20 = &v44 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326D78, &qword_23DE09658);
  v22 = *(v21 - 8);
  v48 = v21;
  v49 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v44 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326D80, &qword_23DE09660);
  v27 = *(v26 - 8);
  v50 = v26;
  v51 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v47 = &v44 - v29;
  sub_23DDE8938(a6, v20);
  v30 = (*(v17 + 80) + 56) & ~*(v17 + 80);
  v31 = swift_allocObject();
  v32 = v46;
  v31[2] = v45;
  v31[3] = a2;
  v31[4] = v32;
  v31[5] = a4;
  v31[6] = a5;
  sub_23DDFDC20(v20, v31 + v30);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326D88, &qword_23DE09668);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();

  v36 = sub_23DE05478();
  v52 = a7;
  v53 = v36;
  v37 = sub_23DE05C78();
  v46 = *(*(v37 - 8) + 56);
  v46(v15, 1, 1, v37);
  sub_23DDC91D0(0, &qword_281218508, 0x277D85C78);
  sub_23DDC7D28(&qword_27E326D90, &qword_27E326D88, &qword_23DE09668);
  sub_23DDF74CC();
  sub_23DE05598();
  sub_23DDC925C(v15, &qword_27E3267C8, &qword_23DE092B0);

  v38 = sub_23DE05CB8();
  v53 = v38;
  v46(v15, 1, 1, v37);
  sub_23DDC7D28(&qword_27E326D98, &qword_27E326D78, &qword_23DE09658);
  v40 = v47;
  v39 = v48;
  sub_23DE05568();
  sub_23DDC925C(v15, &qword_27E3267C8, &qword_23DE092B0);
  (*(v49 + 8))(v25, v39);

  sub_23DDC7D28(&qword_27E326DA0, &qword_27E326D80, &qword_23DE09660);
  v41 = v50;
  v42 = sub_23DE05498();
  (*(v51 + 8))(v40, v41);
  return v42;
}

void sub_23DDF82DC(void (*a1)(void **), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a2;
  v30 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E326590, &qword_23DE08AD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - v14;
  v16 = sub_23DE051E8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a3;
  v32 = a4;
  v33 = a5;
  sub_23DDE86B4(a8, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_23DDC925C(v15, qword_27E326590, &qword_23DE08AD0);
    sub_23DDE8F1C();
    v21 = swift_allocError();
    swift_willThrow();
    v31 = v21;
    LOBYTE(v32) = 1;
    v28 = v21;
    v30(&v31);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    v22 = sub_23DE05158();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_23DE05148();
    sub_23DDFDD28();
    v25 = sub_23DE05138();
    v27 = v26;

    sub_23DE05228();
    (*(v17 + 8))(v20, v16);
    sub_23DDFDBCC(v25, v27);
    v31 = 0;
    LOBYTE(v32) = 0;
    v30(&v31);
  }
}

void *sub_23DDF85DC(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_23DE05FF8();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_23DDFDD98(v3, *(a1 + 36), 0, a1);
  v6 = v5;
  return v5;
}

uint64_t sub_23DDF864C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_23DE06158();
    v5 = v4;
    v6 = sub_23DE061F8();
    v8 = v7;
    v9 = MEMORY[0x23EF00B10](v3, v5, v6, v7);
    sub_23DDFE82C(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_23DDFE82C(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_23DE05FF8();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_23DDFD348(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_23DDFE82C(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_23DDF8768()
{
  v192 = *v0;
  v166 = sub_23DE05D08();
  v165 = *(v166 - 8);
  v1 = *(v165 + 64);
  MEMORY[0x28223BE20](v166);
  v164 = &v143 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326C38, &qword_23DE09590);
  v3 = *(*(v168 - 8) + 64);
  MEMORY[0x28223BE20](v168);
  v167 = &v143 - v4;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326C40, &qword_23DE09598);
  v172 = *(v174 - 8);
  v5 = *(v172 + 64);
  MEMORY[0x28223BE20](v174);
  v169 = &v143 - v6;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326C48, &qword_23DE095A0);
  v176 = *(v178 - 8);
  v7 = *(v176 + 64);
  MEMORY[0x28223BE20](v178);
  v171 = &v143 - v8;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326C50, &qword_23DE095A8);
  v175 = *(v177 - 8);
  v9 = *(v175 + 64);
  MEMORY[0x28223BE20](v177);
  v170 = &v143 - v10;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326C58, &qword_23DE095B0);
  v179 = *(v180 - 8);
  v11 = *(v179 + 64);
  MEMORY[0x28223BE20](v180);
  v173 = &v143 - v12;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326C60, &qword_23DE095B8);
  v145 = *(v146 - 8);
  v13 = *(v145 + 64);
  v14 = MEMORY[0x28223BE20](v146);
  v144 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v143 = &v143 - v16;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326C68, &qword_23DE095C0);
  v158 = *(v157 - 8);
  v17 = *(v158 + 64);
  MEMORY[0x28223BE20](v157);
  v154 = &v143 - v18;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326C70, &qword_23DE095C8);
  v163 = *(v161 - 8);
  v19 = *(v163 + 8);
  MEMORY[0x28223BE20](v161);
  v155 = &v143 - v20;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326C78, &qword_23DE095D0);
  v160 = *(v162 - 1);
  v21 = *(v160 + 64);
  v22 = MEMORY[0x28223BE20](v162);
  v159 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v156 = &v143 - v24;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326C80, &qword_23DE095D8);
  v198 = *(v191 - 8);
  v25 = v198[8];
  v26 = MEMORY[0x28223BE20](v191);
  v184 = &v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v190 = &v143 - v28;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326C88, &qword_23DE095E0);
  v152 = *(v153 - 8);
  v29 = *(v152 + 64);
  v30 = MEMORY[0x28223BE20](v153);
  v151 = &v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v150 = &v143 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326C90, &qword_23DE095E8);
  v196 = *(v33 - 8);
  v197 = v33;
  v34 = *(v196 + 64);
  MEMORY[0x28223BE20](v33);
  v195 = &v143 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326C98, &unk_23DE095F0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v143 - v39;
  sub_23DDE6634();
  v194 = v0[28];
  v199 = *(*(v194 + 16) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326A98, &qword_23DE09280);
  v186 = MEMORY[0x277CBCE48];
  sub_23DDC7D28(&qword_27E326CA0, &qword_27E326A98, &qword_23DE09280);
  v199 = sub_23DE05498();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326CA8, &qword_23DE09600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326B60, &unk_23DE09340);
  v185 = MEMORY[0x277CBCD90];
  sub_23DDC7D28(&qword_27E326CB0, &qword_27E326CA8, &qword_23DE09600);
  sub_23DE054A8();

  swift_allocObject();
  swift_weakInit();
  v182 = MEMORY[0x277CBCB10];
  sub_23DDC7D28(&qword_27E326CB8, &qword_27E326C98, &unk_23DE095F0);
  sub_23DE055E8();

  (*(v37 + 8))(v40, v36);
  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  v41 = v194;
  v199 = *(*(v194 + 24) + 40);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326AA8, &qword_23DE09290);
  v188 = sub_23DDC7D28(&qword_27E326CC0, &qword_27E326AA8, &qword_23DE09290);
  v199 = sub_23DE05498();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326CC8, &qword_23DE09608);
  v43 = sub_23DDC7D28(&qword_27E326CD0, &qword_27E326CC8, &qword_23DE09608);
  v44 = v195;
  v189 = v42;
  v187 = v43;
  sub_23DE054A8();

  swift_allocObject();
  swift_weakInit();
  v149 = sub_23DDC7D28(&qword_27E326CD8, &qword_27E326C90, &qword_23DE095E8);
  v45 = v197;
  sub_23DE055E8();

  v47 = v196 + 8;
  v46 = *(v196 + 8);
  v46(v44, v45);
  v183 = v46;
  v48 = v0;
  v196 = v47;
  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  v199 = *(*(v41 + 24) + 40);
  v199 = sub_23DE05498();
  sub_23DE054A8();

  v49 = swift_allocObject();
  swift_weakInit();
  v50 = swift_allocObject();
  v51 = v192;
  *(v50 + 16) = v49;
  *(v50 + 24) = v51;
  v52 = v190;
  v53 = v197;
  sub_23DE05388();

  v46(v44, v53);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326CE0, &unk_23DE09610);
  v54 = swift_allocObject();
  v147 = xmmword_23DE08B50;
  *(v54 + 16) = xmmword_23DE08B50;
  *(v54 + 32) = 0;
  *(v54 + 40) = 0xE000000000000000;
  *(v54 + 48) = 0;
  v55 = MEMORY[0x277D84F90];
  *(v54 + 56) = 256;
  *(v54 + 64) = v55;
  *(v54 + 72) = nullsub_1;
  *(v54 + 80) = 0;
  sub_23DDC7D28(&qword_27E326CE8, &qword_27E326C80, &qword_23DE095D8);
  v56 = v150;
  v57 = v191;
  sub_23DE05558();

  v58 = v198 + 1;
  v182 = v198[1];
  v182(v52, v57);
  v181 = type metadata accessor for ButtonViewModel();
  v59 = swift_allocObject();
  v60 = v152;
  v61 = v151;
  v62 = v153;
  (*(v152 + 16))(v151, v56, v153);
  v63 = sub_23DDFD0D4(v61, v59);
  (*(v60 + 8))(v56, v62);
  v64 = v48[15];
  v48[15] = v63;

  v65 = v194;
  v199 = *(*(v194 + 24) + 40);
  v199 = sub_23DE05498();
  sub_23DE054A8();

  v199 = *(*(v65 + 32) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326AB8, &unk_23DE092A0);
  sub_23DDC7D28(&qword_27E326CF0, &qword_27E326AB8, &unk_23DE092A0);
  v199 = sub_23DE05498();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326CF8, &unk_23DE09620);
  sub_23DDC7D28(&qword_27E326D00, &qword_27E326CF8, &unk_23DE09620);
  v66 = v154;
  v67 = v197;
  sub_23DE05378();
  v68 = swift_allocObject();
  swift_weakInit();
  v69 = swift_allocObject();
  v70 = v192;
  *(v69 + 16) = v68;
  *(v69 + 24) = v70;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_23DDFD29C;
  *(v71 + 24) = v69;
  sub_23DDC7D28(&qword_27E326D08, &qword_27E326C68, &qword_23DE095C0);
  v72 = v155;
  v73 = v157;
  sub_23DE054E8();

  (*(v158 + 8))(v66, v73);
  v74 = swift_allocObject();
  *(v74 + 16) = v147;
  *(v74 + 32) = 0;
  *(v74 + 40) = 0xE000000000000000;
  *(v74 + 48) = 0;
  *(v74 + 56) = 256;
  *(v74 + 58) = v206;
  *(v74 + 62) = v207;
  *(v74 + 64) = MEMORY[0x277D84F90];
  *(v74 + 72) = nullsub_1;
  *(v74 + 80) = 0;
  sub_23DDC7D28(&qword_27E326D10, &qword_27E326C70, &qword_23DE095C8);
  v75 = v156;
  v76 = v161;
  sub_23DE05558();

  (*(v163 + 1))(v72, v76);
  v77 = swift_allocObject();
  v78 = v160;
  v79 = v159;
  v80 = v162;
  (*(v160 + 16))(v159, v75, v162);
  v81 = sub_23DDFCF0C(v79, v77);
  (*(v78 + 8))(v75, v80);
  v82 = v48[16];
  v48[16] = v81;

  v199 = *(*(v194 + 24) + 40);
  v199 = sub_23DE05498();
  v83 = v195;
  sub_23DE054A8();

  swift_allocObject();
  swift_weakInit();
  v84 = v190;
  sub_23DE05388();

  v183(v83, v67);
  v85 = swift_allocObject();
  v86 = v198[2];
  v87 = v184;
  v88 = v191;
  v198 += 2;
  v86(v184, v84, v191);
  v89 = sub_23DDFCD44(v87, v85);
  v186 = v58;
  v182(v84, v88);
  v90 = v48[17];
  v48[17] = v89;

  v192 = v48;
  v91 = *(v48 + 176);
  if ((v91 & 1) == 0)
  {
    v163 = v86;
    LODWORD(v185) = v91;
    if (qword_27E325AD8 != -1)
    {
      swift_once();
    }

    v92 = qword_27E326F08;
    v93 = sub_23DE05168();
    v95 = v94;

    v96 = swift_allocObject();
    v97 = v192;
    swift_weakInit();
    v199 = v93;
    v200 = v95;
    v201 = 0;
    v202 = 1;
    v203 = MEMORY[0x277D84F90];
    v204 = sub_23DDFDB44;
    v205 = v96;
    v98 = v143;
    sub_23DE05458();
    v99 = swift_allocObject();
    v100 = v145;
    v162 = *(v145 + 16);
    v101 = v144;
    v102 = v146;
    (v162)(v144, v98, v146);
    v103 = sub_23DDFCB7C(v101, v99);
    v104 = *(v100 + 8);
    v104(v98, v102);
    v105 = v97[12];
    v97[12] = v103;

    v106 = qword_27E326F08;
    v107 = sub_23DE05168();
    v109 = v108;

    v110 = swift_allocObject();
    swift_weakInit();
    v199 = v107;
    v200 = v109;
    v201 = 0;
    v202 = 1;
    v203 = MEMORY[0x277D84F90];
    v204 = sub_23DDFEE94;
    v205 = v110;
    sub_23DE05458();
    v111 = swift_allocObject();
    (v162)(v101, v98, v102);
    v112 = sub_23DDFCB7C(v101, v111);
    v104(v98, v102);
    v113 = v97[13];
    v97[13] = v112;

    v199 = *(*(v194 + 24) + 40);
    v199 = sub_23DE05498();
    v114 = v195;
    sub_23DE054A8();

    swift_allocObject();
    swift_weakInit();
    v115 = v190;
    v116 = v197;
    sub_23DE05388();

    v183(v114, v116);
    v117 = swift_allocObject();
    v118 = v184;
    v119 = v191;
    v163(v184, v115, v191);
    v120 = sub_23DDFCD44(v118, v117);
    v182(v115, v119);
    v121 = v97[14];
    v97[14] = v120;

    v91 = v185;
  }

  v122 = [objc_opt_self() defaultCenter];
  v123 = *MEMORY[0x277D76768];
  v124 = v164;
  sub_23DE05D18();

  sub_23DDFEC98(&qword_27E326718, MEMORY[0x277CC9DB0]);
  v125 = v166;
  sub_23DE054E8();
  (*(v165 + 8))(v124, v125);
  v199 = v192[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3266F8, &qword_23DE08CA8);
  sub_23DDC7D28(&qword_27E326D18, &qword_27E326C38, &qword_23DE09590);
  sub_23DDC7D28(&qword_27E326700, &qword_27E3266F8, &qword_23DE08CA8);
  v126 = v169;
  sub_23DE05398();
  v127 = swift_allocObject();
  swift_weakInit();
  v128 = swift_allocObject();
  *(v128 + 16) = sub_23DDFD310;
  *(v128 + 24) = v127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326D20, &qword_23DE09630);
  sub_23DDC7D28(&qword_27E326D28, &qword_27E326C40, &qword_23DE09598);
  v129 = v171;
  v130 = v174;
  sub_23DE054A8();

  (*(v172 + 8))(v126, v130);
  sub_23DDC7D28(&qword_27E326D30, &qword_27E326C48, &qword_23DE095A0);
  sub_23DDC7D28(&qword_27E326D38, &qword_27E326D20, &qword_23DE09630);
  v131 = v170;
  v132 = v178;
  sub_23DE055C8();
  (*(v176 + 8))(v129, v132);
  sub_23DDC7D28(&qword_27E326D40, &qword_27E326C50, &qword_23DE095A8);
  v133 = v173;
  v134 = v177;
  sub_23DE054C8();
  (*(v175 + 8))(v131, v134);
  sub_23DDC7D28(&qword_27E326D48, &qword_27E326C58, &qword_23DE095B0);
  v135 = v180;
  sub_23DE054F8();
  (*(v179 + 8))(v133, v135);
  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  if (v91 && (!*(v192[18] + 16) || *(v192[19] + 24) == 1))
  {
    result = sub_23DDFD4D8();
    if (v137)
    {
      v139 = v138;
      v140 = v192;
      sub_23DDFDAC8(v137);
      v141 = v140[19];
      v199 = v139;
      LOBYTE(v200) = 0;
      *(v141 + 16) = v139;
      *(v141 + 24) = 0;
      v142 = *(v141 + 32);

      sub_23DE05408();
    }
  }

  return result;
}

uint64_t sub_23DDFA4C8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 16);
    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v27 = MEMORY[0x277D84F90];
      sub_23DE06128();
      v5 = (v1 + 48);
      do
      {
        v9 = *(v5 - 2);
        v10 = *(v5 - 1);
        v11 = *v5;
        if (v11 > 1)
        {
          if (v11 == 2)
          {
            v15 = v9;

            v16 = [v15 sectionIdentifier];
          }

          else
          {
            v16 = [v9 sectionIdentifier];
          }

          v14 = v16;
        }

        else
        {
          v12 = *(v5 - 2);
          v13 = *(v5 - 1);
          if (*v5)
          {
            sub_23DDD6F58(v12, v13, 1u);
            v14 = @"Shortcuts";
          }

          else
          {
            sub_23DDD6F58(v12, v13, 0);
            v14 = @"Controls";
          }

          v17 = v14;
        }

        v18 = sub_23DE05A48();
        v20 = v19;
        if (v18 == sub_23DE05A48() && v20 == v21)
        {

          v6 = 0;
        }

        else
        {
          v22 = sub_23DE06318();

          v6 = 0;
          if ((v22 & 1) == 0)
          {
            if (v11 > 1)
            {
              if (v11 == 2 && ((v23 = [v9 parameters], sub_23DDC91D0(0, &qword_2812184D0, 0x277D7A120), v24 = sub_23DE05AF8(), v23, v24 >> 62) ? (v25 = sub_23DE06038()) : (v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v25))
              {
                if ((v10 & 0xC000000000000001) != 0)
                {
                  v26 = sub_23DE06038();
                }

                else
                {
                  v26 = *(v10 + 16);
                }

                v6 = v26 != 0;
              }

              else
              {
                v6 = 1;
              }
            }

            else
            {
              v6 = v9 != 0;
            }
          }
        }

        v5 += 24;
        v7 = objc_allocWithZone(type metadata accessor for ActionSelectorItem());
        sub_23DDE0108(v9, v10, v11, v6);
        sub_23DDD6FDC(v9, v10, v11);
        sub_23DE06108();
        v8 = *(v27 + 16);
        sub_23DE06138();
        sub_23DE06148();
        sub_23DE06118();
        --v3;
      }

      while (v3);
      v4 = v27;
    }

    sub_23DDFDAC8(v4);
  }

  return result;
}

void sub_23DDFA7E8(uint64_t a1)
{
  v24 = *a1;
  v1 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(*(*(Strong + 224) + 16) + 16);
    if (v3)
    {
      v25 = *(v3 + 16);
      if (v25)
      {
        v23 = Strong;

        v4 = 0;
        v5 = (v3 + 48);
        while (1)
        {
          if (v4 >= *(v3 + 16))
          {
            __break(1u);
            return;
          }

          v6 = *(v5 - 2);
          v7 = *(v5 - 1);
          v27 = *v5;
          if (*v5 > 1u)
          {
            if (*v5 == 2)
            {
              v9 = v6;

              v10 = [v9 sectionIdentifier];
            }

            else
            {
              v10 = [v6 sectionIdentifier];
            }

            v8 = v10;
            if (v1 > 1)
            {
LABEL_13:
              v12 = [v24 sectionIdentifier];
              goto LABEL_20;
            }
          }

          else
          {
            if (*v5)
            {
              sub_23DDD6F58(v6, v7, 1u);
              v8 = @"Shortcuts";
            }

            else
            {
              sub_23DDD6F58(v6, v7, 0);
              v8 = @"Controls";
            }

            v11 = v8;
            if (v1 > 1)
            {
              goto LABEL_13;
            }
          }

          if (v1)
          {
            v12 = @"Shortcuts";
          }

          else
          {
            v12 = @"Controls";
          }

          v13 = v12;
LABEL_20:
          v14 = sub_23DE05A48();
          v16 = v15;
          if (v14 == sub_23DE05A48() && v16 == v17)
          {

            sub_23DDD6FDC(v6, v7, v27);

            goto LABEL_27;
          }

          v26 = sub_23DE06318();

          sub_23DDD6FDC(v6, v7, v27);

          if (v26)
          {
            goto LABEL_27;
          }

          ++v4;
          v5 += 24;
          if (v25 == v4)
          {
            v4 = 0;
LABEL_27:

            Strong = v23;
            goto LABEL_28;
          }
        }
      }

      v4 = 0;
LABEL_28:
      v18 = *(Strong + 152);
      *(v18 + 16) = v4;
      *(v18 + 24) = 0;
      v19 = *(v18 + 32);
      v20 = Strong;

      sub_23DE05408();

      v21 = *(v20 + 168);
      *(v21 + 16) = 1;
      v22 = *(v21 + 24);

      sub_23DE05408();
    }
  }
}

uint64_t sub_23DDFAAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if ((v5 < 2 || v5 == 2 && ((v6 = [*a1 parameters], sub_23DDC91D0(0, &qword_2812184D0, 0x277D7A120), v7 = sub_23DE05AF8(), v6, v7 >> 62) ? (v8 = sub_23DE06038()) : (v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v8)) && !sub_23DE00554(v3, v4, v5))
  {
    v9 = sub_23DDFDDE8(v3, v4, v5);
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_23DDFDFF0(v3, v4, v5);
  v12 = v11;
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v15 = MEMORY[0x277D84F90];
  *(a2 + 25) = v9 & 1;
  *(a2 + 32) = v15;
  *(a2 + 40) = sub_23DDFEE9C;
  *(a2 + 48) = v13;
  return result;
}

void sub_23DDFAC90()
{
  v1 = type metadata accessor for GroupedParameterConfigurationView();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v67 - v7;
  v9 = v0[28];
  v10 = *(v9 + 24);
  v11 = *(v10 + 32);
  if (v11 == 255)
  {
    return;
  }

  v12 = v6;
  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  sub_23DDF72A4(v14, v13, *(v10 + 32));
  if (sub_23DDFDDE8(v14, v13, v11))
  {
    v15 = v14;
    v16 = v13;
    v17 = v11;
    goto LABEL_4;
  }

  if (v11 <= 1)
  {
    __swift_project_boxed_opaque_existential_1(v0 + 23, v0[26]);
    if (v11)
    {
      v45 = swift_allocObject();
      swift_weakInit();
      sub_23DDF72A4(v14, v13, 1u);

      sub_23DDD5AAC(v14, sub_23DDFEEA8, v45);
      sub_23DDF72B8(v14, v13, 1u);

      v15 = v14;
      v16 = v13;
      v17 = 1;
    }

    else
    {
      v18 = swift_allocObject();
      swift_weakInit();
      v19 = swift_allocObject();
      swift_weakInit();
      sub_23DDF72A4(v14, v13, 0);

      sub_23DDD54AC(v14, sub_23DDFEEA8, v18, sub_23DDFE7FC, v19);
      sub_23DDF72B8(v14, v13, 0);

      v15 = v14;
      v16 = v13;
      v17 = 0;
    }

LABEL_4:

    sub_23DDF72B8(v15, v16, v17);
    return;
  }

  if (v11 != 2)
  {
    v15 = v14;
    v16 = v13;
    v17 = 3;
    goto LABEL_4;
  }

  v20 = *(*(v9 + 32) + 16);
  if (*(v20 + 16))
  {
    v21 = v0;
    v22 = *(*(v9 + 32) + 16);

    v23 = sub_23DE01698(v14);
    if (v24)
    {
      v25 = *(*(v20 + 56) + 8 * v23);

      sub_23DDD6F58(v14, v13, 2u);

      if (*(v25 + 16))
      {

        v27 = sub_23DDF85DC(v26);

        if (!v27)
        {
          __break(1u);
          return;
        }

        sub_23DDD7140((v21 + 23), v75);
        v28 = __swift_project_boxed_opaque_existential_1(v75, v75[3]);
        v68 = sub_23DDFFA9C(v14, v13, 2u);
        v30 = v29;
        v71 = sub_23DDF7D40(v27, v13);
        if (*(v25 + 16))
        {
          v69 = v30;
          v70 = v27;
          v31 = sub_23DE01648(v27);
          if (v32)
          {
            v33 = *(*(v25 + 56) + 8 * v31);

            v34 = swift_allocObject();
            swift_weakInit();
            v35 = swift_allocObject();
            *(v35 + 16) = v34;
            *(v35 + 24) = v14;
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v37 = Strong;
              sub_23DDD6B7C(v28, v74);
              v38 = swift_allocObject();
              *(v38 + 16) = sub_23DDFE78C;
              *(v38 + 24) = v35;
              sub_23DDD6BB4(v74, v38 + 32);
              *&v8[*(v12 + 32)] = swift_getKeyPath();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325E08, &unk_23DE07DC0);
              swift_storeEnumTagMultiPayload();
              v39 = v69;
              *v8 = v68;
              *(v8 + 1) = v39;
              *(v8 + 2) = v33;
              v72 = v71;
              v40 = v71;
              v71 = v14;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325D20, qword_23DE07CC8);
              sub_23DE058E8();
              *(v8 + 24) = v73;
              *(v8 + 5) = sub_23DDFE794;
              *(v8 + 6) = v38;
              sub_23DDD2264(v8, v5);
              v41 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326DB8, &qword_23DE096A0));
              v42 = sub_23DE05748();
              [v42 setOverrideUserInterfaceStyle_];
              v43 = [v42 presentationController];
              if (v43)
              {
                v44 = v43;
                [v43 setDelegate_];
              }

              [v37 presentViewController:v42 animated:1 completion:0];

              sub_23DDF72B8(v14, v13, 2u);

              sub_23DDFE7A0(v8);
            }

            else
            {
              v66 = v14;

              sub_23DDF72B8(v14, v13, 2u);
            }

            __swift_destroy_boxed_opaque_existential_1(v75);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }

      else
      {

        if (qword_2812185E8 == -1)
        {
          goto LABEL_30;
        }
      }

      swift_once();
LABEL_30:
      v56 = sub_23DE052B8();
      __swift_project_value_buffer(v56, qword_281218840);
      v71 = v14;
      v47 = sub_23DE05298();
      v57 = sub_23DE05C18();

      if (os_log_type_enabled(v47, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v75[0] = v59;
        *v58 = 136315138;
        v60 = [v71 sectionIdentifier];
        v61 = sub_23DE05A48();
        v63 = v62;

        v64 = sub_23DDC8940(v61, v63, v75);

        *(v58 + 4) = v64;
        _os_log_impl(&dword_23DDC5000, v47, v57, "Template for %s has no parameters; this should never happen", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x23EF014D0](v59, -1, -1);
        MEMORY[0x23EF014D0](v58, -1, -1);

        goto LABEL_28;
      }

      goto LABEL_32;
    }
  }

  if (qword_2812185E8 != -1)
  {
    swift_once();
  }

  v46 = sub_23DE052B8();
  __swift_project_value_buffer(v46, qword_281218840);
  v71 = v14;
  v47 = sub_23DE05298();
  v48 = sub_23DE05C18();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v75[0] = v50;
    *v49 = 136315138;
    v51 = [v71 sectionIdentifier];
    v52 = sub_23DE05A48();
    v54 = v53;

    v55 = sub_23DDC8940(v52, v54, v75);

    *(v49 + 4) = v55;
    _os_log_impl(&dword_23DDC5000, v47, v48, "No parameter value sections for %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x23EF014D0](v50, -1, -1);
    MEMORY[0x23EF014D0](v49, -1, -1);

LABEL_28:
    sub_23DDF72B8(v14, v13, 2u);
    return;
  }

LABEL_32:

  sub_23DDF72B8(v14, v13, 2u);
  v65 = v71;
}

uint64_t sub_23DDFB5DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_23DDFDDE8(a1, a2, a3);
  if (v10)
  {
    v11 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v12 = sub_23DDFE284(a1, a2, a3, a4, sub_23DDFDFE8, v11);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  sub_23DE0065C(a1, a2, a3);
  v14 = v13;
  v16 = v15;
  v29 = sub_23DE00788(a1, a2, a3);
  v17 = *(v12 + 16);
  if (a3 < 2u)
  {
    goto LABEL_9;
  }

  if (a3 != 2)
  {
    goto LABEL_10;
  }

  v27 = v14;
  v28 = v10;
  v18 = [a1 parameters];
  sub_23DDC91D0(0, &qword_2812184D0, 0x277D7A120);
  v19 = sub_23DE05AF8();

  v26 = v19 >> 62 ? sub_23DE06038() : *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);

  v10 = v28;
  v14 = v27;
  if (v26)
  {
LABEL_9:
    v20 = !sub_23DE00554(a1, a2, a3);
  }

  else
  {
LABEL_10:
    v20 = 1;
  }

  if (v16)
  {
    v21 = v16;
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  if (v16)
  {
    v22 = v14;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v17 != 0) | ~v10;
  v24 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  *a5 = v22;
  *(a5 + 8) = v21;
  *(a5 + 16) = v29;
  *(a5 + 24) = v23 & 1;
  *(a5 + 25) = v20;
  *(a5 + 32) = v12;
  *(a5 + 40) = sub_23DDFDFB8;
  *(a5 + 48) = v24;
  return result;
}

uint64_t sub_23DDFB868(void *a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 224);

    sub_23DDEE3EC(a1, a2, 1);
  }

  return result;
}

uint64_t sub_23DDFB8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (qword_27E325AD8 != -1)
  {
    swift_once();
  }

  v6 = qword_27E326F08;
  v7 = sub_23DE05168();
  v9 = v8;

  sub_23DE00AF8(v3, v4, v5);
  v10 = 1;
  if (v11)
  {
    v10 = !sub_23DE00554(v3, v4, v5);
  }

  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v14 = MEMORY[0x277D84F90];
  *(a2 + 25) = v10;
  *(a2 + 32) = v14;
  *(a2 + 40) = sub_23DDFEE98;
  *(a2 + 48) = v12;
  return result;
}

void sub_23DDFBAA4()
{
  v1 = *(v0[28] + 24);
  v2 = *(v1 + 32);
  if (v2 != 255)
  {
    v4 = *(v1 + 16);
    v3 = *(v1 + 24);
    sub_23DDD6F58(v4, v3, *(v1 + 32));
    sub_23DE00AF8(v4, v3, v2);
    if ((v5 & 1) != 0 && !v2)
    {
      if (v4)
      {
        v9 = v0[29];
        v10 = v9[3];
        if (v10)
        {
          v11 = v9[6];
          v13 = v9[4];
          v12 = v9[5];
          v15 = v9[7];
          *&v16 = v9[2];
          *(&v16 + 1) = v10;
          v17 = v13;
          v18 = v12;
          v19 = v11;
          v20 = v15;
          __swift_project_boxed_opaque_existential_1(v0 + 23, v0[26]);
          v14 = swift_allocObject();
          swift_weakInit();
          sub_23DDF72A4(v4, v3, 0);
          sub_23DDD904C(v16, v10);

          sub_23DDD583C(v4, &v16, sub_23DDFDD7C, v14);
          sub_23DDF72B8(v4, v3, 0);
        }

        v6 = v4;
      }

      else
      {
        v6 = 0;
      }

      v7 = v3;
      v8 = 0;
    }

    else
    {
      v6 = v4;
      v7 = v3;
      v8 = v2;
    }

    sub_23DDF72B8(v6, v7, v8);
  }
}

uint64_t sub_23DDFBC6C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_23DDD7140(result + 184, v4);

    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = *(Strong + OBJC_IVAR___BCConfigurationViewController_selectorViewController);

      [v3 zoomIn];
    }

    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return result;
}

id sub_23DDFBD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
  v4 = *(a1 + 16);
  *(a2 + 16) = v4;
  return sub_23DDF72A4(v3, v2, v4);
}

uint64_t sub_23DDFBD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (qword_27E325AD8 != -1)
  {
    swift_once();
  }

  v6 = qword_27E326F08;
  v7 = sub_23DE05168();
  v9 = v8;

  v10 = sub_23DE00554(v3, v4, v5);
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = 0;
  *(a2 + 24) = v10;
  v13 = MEMORY[0x277D84F90];
  *(a2 + 25) = 0;
  *(a2 + 32) = v13;
  *(a2 + 40) = sub_23DDFDB54;
  *(a2 + 48) = v11;
  return result;
}

uint64_t sub_23DDFBEB8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_23DDD7140(result + 184, v5);

    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = *(Strong + OBJC_IVAR___BCConfigurationViewController_dismissHandler);
      v3 = *(Strong + OBJC_IVAR___BCConfigurationViewController_dismissHandler + 8);
      v4 = Strong;

      v2();
    }

    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t sub_23DDFBF6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E326590, &qword_23DE08AD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326D68, &unk_23DE09648);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(*(result + 144) + 16);
    if (v10 && (v11 = *(result + 152), (*(v11 + 24) & 1) == 0))
    {
      v12 = *(v11 + 16);
      v13 = sub_23DE051E8();
      (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
      v14 = qword_27E325B08;

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = qword_27E326750;
      v16 = sub_23DDF7E04(1, v10, v12, 0xD000000000000013, 0x800000023DE0B1E0, v3, v15);

      sub_23DDC925C(v3, qword_27E326590, &qword_23DE08AD0);
      v18 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326D20, &qword_23DE09630);
      sub_23DDC7D28(&qword_27E326D38, &qword_27E326D20, &qword_23DE09630);
      sub_23DE054B8();

      sub_23DDC7D28(&qword_27E326D70, &qword_27E326D68, &unk_23DE09648);
      v17 = sub_23DE05498();

      (*(v5 + 8))(v8, v4);
      return v17;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_23DDFC2B0(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_23DDFC310(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_23DDEE3EC(a3, a1, 1);
  }

  return result;
}

uint64_t sub_23DDFC388(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_23DDEDC44(a1, 1);
  }

  return result;
}

uint64_t sub_23DDFC3EC()
{
  v1 = v0[12];

  v2 = v0[13];

  v3 = v0[14];

  v4 = v0[15];

  v5 = v0[16];

  v6 = v0[17];

  v7 = v0[18];

  v8 = v0[19];

  v9 = v0[20];

  v10 = v0[21];

  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  v11 = v0[28];

  v12 = v0[29];

  v13 = v0[30];
}

void *sub_23DDFC47C()
{
  v0 = ScreenViewModel.deinit();
  v1 = v0[12];

  v2 = v0[13];

  v3 = v0[14];

  v4 = v0[15];

  v5 = v0[16];

  v6 = v0[17];

  v7 = v0[18];

  v8 = v0[19];

  v9 = v0[20];

  v10 = v0[21];

  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  v11 = v0[28];

  v12 = v0[29];

  v13 = v0[30];

  return v0;
}

uint64_t sub_23DDFC514()
{
  v0 = sub_23DDFC47C();

  return MEMORY[0x2821FE8D8](v0, 248, 7);
}

unint64_t sub_23DDFC57C()
{
  result = qword_27E326C30;
  if (!qword_27E326C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326C30);
  }

  return result;
}

uint64_t sub_23DDFC5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_23DDFAAF0(a1, a2);
}

void sub_23DDFC5E8(void **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    if (qword_2812185E8 != -1)
    {
      swift_once();
    }

    v9 = sub_23DE052B8();
    __swift_project_value_buffer(v9, qword_281218840);
    oslog = sub_23DE05298();
    v10 = sub_23DE05C38();
    if (!os_log_type_enabled(oslog, v10))
    {
      goto LABEL_11;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23DDC5000, oslog, v10, "Successfully saved placeholder data", v11, 2u);
    v8 = v11;
LABEL_10:
    MEMORY[0x23EF014D0](v8, -1, -1);
LABEL_11:
    v12 = oslog;

    goto LABEL_13;
  }

  if (qword_2812185E8 != -1)
  {
    swift_once();
  }

  v2 = sub_23DE052B8();
  __swift_project_value_buffer(v2, qword_281218840);
  v3 = v1;
  oslog = sub_23DE05298();
  v4 = sub_23DE05C18();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_23DDC5000, oslog, v4, "Failed to save placeholder data: %@", v5, 0xCu);
    sub_23DDC925C(v6, &unk_27E325FC0, &qword_23DE07BB0);
    MEMORY[0x23EF014D0](v6, -1, -1);
    v8 = v5;
    goto LABEL_10;
  }

  v12 = v1;

LABEL_13:
}

uint64_t sub_23DDFC810(void *a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326DE8, &qword_23DE09748);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDFEC44();
  sub_23DE063E8();
  v15 = 0;
  sub_23DE062E8();
  if (!v3)
  {
    v12[1] = v12[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326040, &qword_23DE080C0);
    sub_23DDFECE0(&qword_27E326DF0, &qword_27E326DF8);
    sub_23DE062F8();
    v13 = 2;
    sub_23DE062E8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23DDFCA10()
{
  v1 = 0x74496E6F69746361;
  if (*v0 != 1)
  {
    v1 = 0x64657463656C6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_23DDFCA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DDFE8E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DDFCAB4(uint64_t a1)
{
  v2 = sub_23DDFEC44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DDFCAF0(uint64_t a1)
{
  v2 = sub_23DDFEC44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DDFCB2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23DDFEA08(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_23DDFCB7C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326D50, &unk_23DE09638);
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F8, &qword_23DE08310);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v4 + 72) = sub_23DE05418();
  *(a2 + 16) = v4;
  *(a2 + 24) = MEMORY[0x277D84FA0];
  swift_allocObject();
  swift_weakInit();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326C60, &qword_23DE095B8);
  sub_23DDC7D28(&qword_27E326D58, &qword_27E326C60, &qword_23DE095B8);
  sub_23DE055E8();

  (*(*(v8 - 8) + 8))(a1, v8);
  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  return a2;
}

uint64_t sub_23DDFCD44(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326D50, &unk_23DE09638);
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F8, &qword_23DE08310);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v4 + 72) = sub_23DE05418();
  *(a2 + 16) = v4;
  *(a2 + 24) = MEMORY[0x277D84FA0];
  swift_allocObject();
  swift_weakInit();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326C80, &qword_23DE095D8);
  sub_23DDC7D28(&qword_27E326CE8, &qword_27E326C80, &qword_23DE095D8);
  sub_23DE055E8();

  (*(*(v8 - 8) + 8))(a1, v8);
  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  return a2;
}

uint64_t sub_23DDFCF0C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326D50, &unk_23DE09638);
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F8, &qword_23DE08310);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v4 + 72) = sub_23DE05418();
  *(a2 + 16) = v4;
  *(a2 + 24) = MEMORY[0x277D84FA0];
  swift_allocObject();
  swift_weakInit();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326C78, &qword_23DE095D0);
  sub_23DDC7D28(&qword_27E326DB0, &qword_27E326C78, &qword_23DE095D0);
  sub_23DE055E8();

  (*(*(v8 - 8) + 8))(a1, v8);
  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  return a2;
}

uint64_t sub_23DDFD0D4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326D50, &unk_23DE09638);
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F8, &qword_23DE08310);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v4 + 72) = sub_23DE05418();
  *(a2 + 16) = v4;
  *(a2 + 24) = MEMORY[0x277D84FA0];
  swift_allocObject();
  swift_weakInit();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326C88, &qword_23DE095E0);
  sub_23DDC7D28(&qword_27E326DC0, &qword_27E326C88, &qword_23DE095E0);
  sub_23DE055E8();

  (*(*(v8 - 8) + 8))(a1, v8);
  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  return a2;
}

uint64_t sub_23DDFD29C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  return sub_23DDFB5DC(a1, a2, a3, a4, a5);
}

double sub_23DDFD2A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v4(v8, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  v6 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v6;
  result = *&v9;
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  return result;
}

uint64_t sub_23DDFD318@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

void sub_23DDFD348(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_23DE06178();
      sub_23DDC91D0(0, &qword_2812184D0, 0x277D7A120);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_23DE06198() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_23DE061A8();
  sub_23DDC91D0(0, &qword_2812184D0, 0x277D7A120);
  swift_dynamicCast();
  v5 = sub_23DE01648(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 48) + 8 * a1);

  v9 = v8;
}

uint64_t sub_23DDFD4D8()
{
  v0 = sub_23DE051E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E326590, &qword_23DE08AD0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v36 - v10;
  (*(v1 + 56))(v36 - v10, 1, 1, v0);
  sub_23DDE86B4(v11, v9);
  if ((*(v1 + 48))(v9, 1, v0) == 1)
  {
    sub_23DDC925C(v9, qword_27E326590, &qword_23DE08AD0);
    sub_23DDE8F1C();
    v12 = swift_allocError();
    swift_willThrow();
    sub_23DDC925C(v11, qword_27E326590, &qword_23DE08AD0);
    if (qword_2812185E8 != -1)
    {
      swift_once();
    }

    v13 = sub_23DE052B8();
    __swift_project_value_buffer(v13, qword_281218840);
    v14 = v12;
    v15 = sub_23DE05298();
    v16 = sub_23DE05C18();

    if (!os_log_type_enabled(v15, v16))
    {

      return 0;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v12;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_23DDC5000, v15, v16, "Failed to load placeholder data: %@", v17, 0xCu);
    sub_23DDC925C(v18, &unk_27E325FC0, &qword_23DE07BB0);
    MEMORY[0x23EF014D0](v18, -1, -1);
    MEMORY[0x23EF014D0](v17, -1, -1);

LABEL_11:
    return 0;
  }

  (*(v1 + 32))(v4, v9, v0);
  v25 = sub_23DE051F8();
  v27 = v26;
  v28 = sub_23DE05128();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_23DE05118();
  sub_23DDFDB78();
  sub_23DE05108();

  sub_23DDFDBCC(v25, v27);
  (*(v1 + 8))(v4, v0);
  sub_23DDC925C(v11, qword_27E326590, &qword_23DE08AD0);
  if (!v36[2])
  {
    if (qword_2812185E8 != -1)
    {
      swift_once();
    }

    v21 = sub_23DE052B8();
    __swift_project_value_buffer(v21, qword_281218840);
    v15 = sub_23DE05298();
    v22 = sub_23DE05C08();
    if (os_log_type_enabled(v15, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_23DDC5000, v15, v22, "No placeholder data found", v23, 2u);
      MEMORY[0x23EF014D0](v23, -1, -1);
    }

    goto LABEL_11;
  }

  v31 = v36[1];
  if (qword_2812185E8 != -1)
  {
    swift_once();
  }

  v32 = sub_23DE052B8();
  __swift_project_value_buffer(v32, qword_281218840);
  v33 = sub_23DE05298();
  v34 = sub_23DE05C38();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_23DDC5000, v33, v34, "Successfully loaded placeholder data", v35, 2u);
    MEMORY[0x23EF014D0](v35, -1, -1);
  }

  return v31;
}

uint64_t sub_23DDFDAC8(uint64_t a1)
{
  v2 = *(v1 + 144);
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;

  v4 = *(v2 + 24);

  sub_23DE05408();
}

unint64_t sub_23DDFDB78()
{
  result = qword_27E326D60;
  if (!qword_27E326D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326D60);
  }

  return result;
}

uint64_t sub_23DDFDBCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23DDFDC20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E326590, &qword_23DE08AD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23DDFDC90(void (*a1)(void **), uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E326590, &qword_23DE08AD0) - 8);
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  sub_23DDF82DC(a1, a2, v8, v9, v10, v6, v7, v11);
}

unint64_t sub_23DDFDD28()
{
  result = qword_27E326DA8;
  if (!qword_27E326DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326DA8);
  }

  return result;
}

uint64_t sub_23DDFDD98(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_23DDFDDE8(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    v3 = [a1 sectionIdentifier];
  }

  else
  {
    if (a3)
    {
      v3 = @"Shortcuts";
    }

    else
    {
      v3 = @"Controls";
    }

    v4 = v3;
  }

  v5 = sub_23DE05A48();
  v7 = v6;
  if (v5 == sub_23DE05A48() && v7 == v8)
  {
    goto LABEL_9;
  }

  v9 = sub_23DE06318();

  if (v9)
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = sub_23DE05A48();
  v14 = v13;
  if (v12 != sub_23DE05A48() || v14 != v15)
  {
    v16 = sub_23DE06318();

    if ((v16 & 1) == 0)
    {
      v17 = sub_23DE05A48();
      v19 = v18;
      if (v17 != sub_23DE05A48() || v19 != v20)
      {
        v21 = sub_23DE06318();

        v10 = v21 ^ 1;
        return v10 & 1;
      }

      goto LABEL_9;
    }

    goto LABEL_11;
  }

LABEL_9:

LABEL_12:
  v10 = 0;
  return v10 & 1;
}

uint64_t sub_23DDFDFF0(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (qword_27E325AD8 == -1)
      {
        goto LABEL_16;
      }
    }

    else if (qword_27E325AD8 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (a3 == 2)
  {
    v3 = [a1 sectionIdentifier];
    v4 = sub_23DE05A48();
    v6 = v5;
    if (v4 == sub_23DE05A48() && v6 == v7)
    {
    }

    else
    {
      v9 = sub_23DE06318();

      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    if (qword_27E325AD8 == -1)
    {
LABEL_16:
      v11 = qword_27E326F08;
      v10 = sub_23DE05168();

      return v10;
    }

LABEL_18:
    swift_once();
    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_23DDFE284(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = MEMORY[0x277D84F90];
  if (a3 != 2)
  {
    return v7;
  }

  v10 = a1;

  v11 = [v10 parameters];
  sub_23DDC91D0(0, &qword_2812184D0, 0x277D7A120);
  v12 = sub_23DE05AF8();

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_14:

    goto LABEL_38;
  }

  if (!sub_23DE06038())
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x23EF00A60](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v13 = *(v12 + 32);
  }

  v6 = v13;

  if (!*(a4 + 16) || (v14 = sub_23DE01698(v10), (v15 & 1) == 0))
  {

    goto LABEL_38;
  }

  v16 = *(*(a4 + 56) + 8 * v14);

  v18 = sub_23DDEC750(v17);

  v11 = sub_23DDEC3BC(v18);

  if (!(v11 >> 62))
  {
    v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19 <= 1)
    {
LABEL_11:

      return v7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v19 = sub_23DE06038();
  if (v19 <= 1)
  {
    goto LABEL_11;
  }

LABEL_18:
  v54 = v10;
  v49 = v6;
  v20 = sub_23DDF7D40(v6, a2);

  sub_23DDF3DFC(0, v19, 0);
  v21 = 0;
  v50 = v11 & 0xC000000000000001;
  v51 = v20;
  v52 = v19;
  v53 = v11;
  do
  {
    if (v50)
    {
      v22 = MEMORY[0x23EF00A60](v21, v11);
    }

    else
    {
      v22 = *(v11 + 8 * v21 + 32);
    }

    v23 = v22;
    v24 = [v22 localizedTitle];
    v25 = sub_23DE05A48();
    v57 = v26;
    v58 = v25;
    v27 = [v23 image];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 UIImage];

      if (v20)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v29 = 0;
      if (v20)
      {
LABEL_24:
        v30 = [v23 identifier];
        v31 = sub_23DE05A48();
        v33 = v32;

        v34 = [v20 identifier];
        v35 = sub_23DE05A48();
        v37 = v36;

        if (v31 == v35 && v33 == v37)
        {

          v38 = 1;
        }

        else
        {
          v38 = sub_23DE06318();
        }

        goto LABEL_30;
      }
    }

    v38 = 0;
LABEL_30:
    v39 = [v23 identifier];
    v40 = sub_23DE05A48();
    v42 = v41;

    if (v40 == 0xD000000000000031 && 0x800000023DE0B5E0 == v42)
    {
      v43 = 1;
    }

    else
    {
      v43 = sub_23DE06318();
    }

    v44 = swift_allocObject();
    v44[2] = a5;
    v44[3] = a6;
    v44[4] = v54;
    v44[5] = v23;
    v46 = *(v7 + 16);
    v45 = *(v7 + 24);

    v10 = v54;
    if (v46 >= v45 >> 1)
    {
      sub_23DDF3DFC((v45 > 1), v46 + 1, 1);
    }

    ++v21;
    *(v7 + 16) = v46 + 1;
    v47 = v7 + 48 * v46;
    *(v47 + 32) = v58;
    *(v47 + 40) = v57;
    *(v47 + 48) = v29;
    *(v47 + 56) = v38 & 1;
    *(v47 + 57) = v43 & 1;
    *(v47 + 64) = sub_23DDFE75C;
    *(v47 + 72) = v44;
    v11 = v53;
    v20 = v51;
  }

  while (v52 != v21);

LABEL_38:

  return v7;
}

uint64_t sub_23DDFE7A0(uint64_t a1)
{
  v2 = type metadata accessor for GroupedParameterConfigurationView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DDFE82C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23DDFE84C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23DDFE894(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_23DDFE8E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_23DE06318() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74496E6F69746361 && a2 == 0xEB00000000736D65 || (sub_23DE06318() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xED00007865646E49)
  {

    return 2;
  }

  else
  {
    v6 = sub_23DE06318();

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

uint64_t sub_23DDFEA08(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326DC8, &unk_23DE09738);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_23DDFEC44();
  sub_23DE063D8();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_23DE062A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326040, &qword_23DE080C0);
    v10[15] = 1;
    sub_23DDFECE0(&qword_27E326DD8, &qword_27E326DE0);
    sub_23DE062B8();
    v10[14] = 2;
    sub_23DE062A8();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_23DDFEC44()
{
  result = qword_27E326DD0;
  if (!qword_27E326DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326DD0);
  }

  return result;
}

uint64_t sub_23DDFEC98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23DDFECE0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E326040, &qword_23DE080C0);
    sub_23DDFEC98(a2, type metadata accessor for ActionSelectorItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DDFED90()
{
  result = qword_27E326E00;
  if (!qword_27E326E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326E00);
  }

  return result;
}

unint64_t sub_23DDFEDE8()
{
  result = qword_27E326E08;
  if (!qword_27E326E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326E08);
  }

  return result;
}

unint64_t sub_23DDFEE40()
{
  result = qword_27E326E10;
  if (!qword_27E326E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326E10);
  }

  return result;
}

void sub_23DDFEEAC(void *a1, void *a2, char a3)
{
  if (a3)
  {
    if (qword_2812185E8 != -1)
    {
      swift_once();
    }

    v29 = a1;
    v6 = sub_23DE052B8();
    __swift_project_value_buffer(v6, qword_281218840);
    v7 = a2;
    v8 = sub_23DE05298();
    v9 = sub_23DE05C38();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v30 = v11;
      *v10 = 136315138;
      v12 = sub_23DE05A48();
      v14 = sub_23DDC8940(v12, v13, &v30);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_23DDC5000, v8, v9, "Saving %s...", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x23EF014D0](v11, -1, -1);
      MEMORY[0x23EF014D0](v10, -1, -1);
    }

    v15 = v7;
    v16 = sub_23DE05A18();
    [v29 setObject:v15 forKey:v16];

    v17 = sub_23DE05298();
    v18 = sub_23DE05C38();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_16;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Successfully saved section identifier";
    goto LABEL_15;
  }

  if (qword_2812185E8 != -1)
  {
    swift_once();
  }

  v21 = sub_23DE052B8();
  __swift_project_value_buffer(v21, qword_281218840);
  v22 = a2;
  v23 = sub_23DE05298();
  v24 = sub_23DE05C38();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = a2;
    v27 = v22;
    _os_log_impl(&dword_23DDC5000, v23, v24, "Saving %@...", v25, 0xCu);
    sub_23DDC925C(v26, &unk_27E325FC0, &qword_23DE07BB0);
    MEMORY[0x23EF014D0](v26, -1, -1);
    MEMORY[0x23EF014D0](v25, -1, -1);
  }

  sub_23DDFF454(a1);
  if (!v3)
  {
    v28 = sub_23DE05A18();
    [a1 setURL:0 forKey:v28];

    v17 = sub_23DE05298();
    v18 = sub_23DE05C38();
    if (!os_log_type_enabled(v17, v18))
    {
LABEL_16:

      return;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Successfully saved configured action";
LABEL_15:
    _os_log_impl(&dword_23DDC5000, v17, v18, v20, v19, 2u);
    MEMORY[0x23EF014D0](v19, -1, -1);
    goto LABEL_16;
  }
}

uint64_t sub_23DDFF278(void *a1)
{
  v3 = sub_23DE05A18();
  v4 = [a1 objectForKey_];

  if (v4)
  {
    sub_23DE05FC8();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_23DDC91D0(0, &qword_27E326E18, 0x277CCAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326E20, &qword_23DE098C8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23DE08B50;
  *(v5 + 32) = sub_23DDC91D0(0, &qword_27E326830, 0x277D79E50);
  sub_23DE05C48();
  sub_23DDFDBCC(v7, v8);

  if (v1)
  {
    return result;
  }

  if (!*(&v12 + 1))
  {
LABEL_11:
    sub_23DDC925C(&v11, &qword_27E326578, &qword_23DE08AC0);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DDFF454(void *a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v4 = [objc_opt_self() archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v14];
  v5 = v14[0];
  if (v4)
  {
    v6 = sub_23DE05218();
    v8 = v7;

    v9 = sub_23DE05208();
    v10 = sub_23DE05A18();
    [a1 setObject:v9 forKey:v10];

    result = sub_23DDFDBCC(v6, v8);
  }

  else
  {
    v12 = v5;
    sub_23DE05198();

    result = swift_willThrow();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_23DDFF590(void *a1)
{
  v3 = sub_23DE05A18();
  v4 = [a1 stringForKey_];

  if (v4)
  {
    v5 = sub_23DE05A48();
    v7 = v6;
    if (qword_2812185E8 != -1)
    {
      swift_once();
    }

    v8 = sub_23DE052B8();
    __swift_project_value_buffer(v8, qword_281218840);

    v9 = sub_23DE05298();
    v10 = sub_23DE05C38();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136315138;
      v13 = sub_23DDC8940(v5, v7, &v23);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_23DDC5000, v9, v10, "Successfully loaded section identifier %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x23EF014D0](v12, -1, -1);
      MEMORY[0x23EF014D0](v11, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_23DDC91D0(0, &qword_27E326830, 0x277D79E50);
    v14 = sub_23DDFF278(a1);
    if (!v1)
    {
      v4 = v14;
      if (v14)
      {
        if (qword_2812185E8 != -1)
        {
          swift_once();
        }

        v16 = sub_23DE052B8();
        __swift_project_value_buffer(v16, qword_281218840);
        v17 = v4;
        v18 = sub_23DE05298();
        v19 = sub_23DE05C38();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 138412290;
          *(v20 + 4) = v17;
          *v21 = v4;
          v22 = v17;
          _os_log_impl(&dword_23DDC5000, v18, v19, "Successfully loaded configured action %@", v20, 0xCu);
          sub_23DDC925C(v21, &unk_27E325FC0, &qword_23DE07BB0);
          MEMORY[0x23EF014D0](v21, -1, -1);
          MEMORY[0x23EF014D0](v20, -1, -1);
        }
      }
    }
  }

  return v4;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_23DDFF8D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23DDFF920(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23DDFF9A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23DDFF9E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_23DDFFA48()
{
  result = qword_27E326E28;
  if (!qword_27E326E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326E28);
  }

  return result;
}

uint64_t sub_23DDFFA9C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (qword_27E325AD8 == -1)
      {
LABEL_8:
        v4 = qword_27E326F08;
        v5 = sub_23DE05168();
        goto LABEL_11;
      }
    }

    else if (qword_27E325AD8 == -1)
    {
      goto LABEL_8;
    }

    swift_once();
    goto LABEL_8;
  }

  if (a3 == 2)
  {
    v3 = [a1 localizedTitle];
  }

  else
  {
    v3 = [a1 name];
  }

  v4 = v3;
  v5 = sub_23DE05A48();
LABEL_11:
  v6 = v5;

  return v6;
}

unint64_t sub_23DDFFC4C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      return 0;
    }

    v5 = [a1 localizedDescription];
    if (!v5)
    {
      sub_23DE060C8();

      v10 = sub_23DDFFA9C(a1, v9, 2u);
      MEMORY[0x23EF00420](v10);

      return 0xD000000000000019;
    }

    v6 = v5;
    v7 = sub_23DE05A48();
  }

  else
  {
    if (a3)
    {
      if (qword_27E325AD8 != -1)
      {
        swift_once();
      }

      v3 = qword_27E326F08;
    }

    else
    {
      if (qword_27E325AD8 != -1)
      {
        swift_once();
      }

      v3 = qword_27E326F08;
    }

    v6 = v3;
    v7 = sub_23DE05168();
  }

  v8 = v7;

  return v8;
}

id sub_23DDFFE34(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
LABEL_3:
      v3 = objc_allocWithZone(MEMORY[0x277D79E20]);
      v4 = sel_initWithRed_green_blue_alpha_;
      v5 = 0.5018;
      v6 = 0.5292;
      v7 = 0.5813;
      goto LABEL_14;
    }

    v3 = objc_allocWithZone(MEMORY[0x277D79E20]);
    v4 = sel_initWithRed_green_blue_alpha_;
    v5 = 0.2061;
    v6 = 0.2728;
    v7 = 0.4523;
LABEL_14:
    v15 = 1.0;

    return [v3 v4];
  }

  if (a3 == 2)
  {
    v8 = [a1 sectionIdentifier];
    v9 = sub_23DE05A48();
    v11 = v10;
    if (v9 == sub_23DE05A48() && v11 == v12)
    {

      goto LABEL_13;
    }

    v14 = sub_23DE06318();

    if (v14)
    {

LABEL_13:
      v3 = objc_allocWithZone(MEMORY[0x277D79E20]);
      v4 = sel_initWithRed_green_blue_alpha_;
      v5 = 0.9533;
      v6 = 0.4296;
      v7 = 0.0542;
      goto LABEL_14;
    }

    v17 = sub_23DE05A48();
    v19 = v18;
    if (v17 == sub_23DE05A48() && v19 == v20)
    {
      goto LABEL_19;
    }

    v21 = sub_23DE06318();

    if (v21)
    {
      goto LABEL_21;
    }

    v22 = sub_23DE05A48();
    v24 = v23;
    if (v22 == sub_23DE05A48() && v24 == v25)
    {

LABEL_30:
      v3 = objc_allocWithZone(MEMORY[0x277D79E20]);
      v4 = sel_initWithRed_green_blue_alpha_;
      v5 = 0.4236;
      v6 = 0.4618;
      v7 = 0.6515;
      goto LABEL_14;
    }

    v26 = sub_23DE06318();

    if (v26)
    {

      goto LABEL_30;
    }

    v27 = sub_23DE05A48();
    v29 = v28;
    if (v27 == sub_23DE05A48() && v29 == v30)
    {
      goto LABEL_33;
    }

    v31 = sub_23DE06318();

    if (v31)
    {

      goto LABEL_36;
    }

    v32 = sub_23DE05A48();
    v34 = v33;
    if (v32 == sub_23DE05A48() && v34 == v35)
    {

LABEL_42:
      v3 = objc_allocWithZone(MEMORY[0x277D79E20]);
      v4 = sel_initWithRed_green_blue_alpha_;
      v6 = 0.5525;
      v7 = 0.65;
LABEL_43:
      v5 = 0.0;
      goto LABEL_14;
    }

    v36 = sub_23DE06318();

    if (v36)
    {

      goto LABEL_42;
    }

    v37 = sub_23DE05A48();
    v39 = v38;
    if (v37 == sub_23DE05A48() && v39 == v40)
    {

LABEL_49:
      v3 = objc_allocWithZone(MEMORY[0x277D79E20]);
      v4 = sel_initWithRed_green_blue_alpha_;
      v5 = 0.8;
      v7 = 0.0581;
      v6 = 0.0;
      goto LABEL_14;
    }

    v41 = sub_23DE06318();

    if (v41)
    {

      goto LABEL_49;
    }

    v42 = sub_23DE05A48();
    v44 = v43;
    if (v42 == sub_23DE05A48() && v44 == v45)
    {

      goto LABEL_3;
    }

    v46 = sub_23DE06318();

    if (v46)
    {

      goto LABEL_3;
    }

    v47 = sub_23DE05A48();
    v49 = v48;
    if (v47 == sub_23DE05A48() && v49 == v50)
    {
LABEL_19:

      goto LABEL_22;
    }

    v51 = sub_23DE06318();

    if (v51)
    {
LABEL_21:

LABEL_22:
      v3 = objc_allocWithZone(MEMORY[0x277D79E20]);
      v4 = sel_initWithSystemColor_;

      return [v3 v4];
    }

    v52 = sub_23DE05A48();
    v54 = v53;
    if (v52 == sub_23DE05A48() && v54 == v55)
    {

LABEL_63:
      v3 = objc_allocWithZone(MEMORY[0x277D79E20]);
      v4 = sel_initWithRed_green_blue_alpha_;
      v6 = 0.5007;
      v7 = 0.9938;
      goto LABEL_43;
    }

    v56 = sub_23DE06318();

    if (v56)
    {

      goto LABEL_63;
    }

    v57 = sub_23DE05A48();
    v59 = v58;
    if (v57 == sub_23DE05A48() && v59 == v60)
    {
LABEL_33:

LABEL_36:
      v3 = objc_allocWithZone(MEMORY[0x277D79E20]);
      v4 = sel_initWithRed_green_blue_alpha_;
      v5 = 0.8;
      v6 = 0.64;
      v7 = 0.0;
      goto LABEL_14;
    }

    v61 = sub_23DE06318();

    if (v61)
    {
      goto LABEL_36;
    }
  }

  v3 = objc_allocWithZone(MEMORY[0x277D79E20]);
  v4 = sel_initWithWhite_alpha_;
  v5 = 0.0;
  v6 = 0.0;

  return [v3 v4];
}

BOOL sub_23DE00554(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return a1 != 0;
  }

  if (a3 != 2)
  {
    return 1;
  }

  v5 = [a1 parameters];
  sub_23DDC91D0(0, &qword_2812184D0, 0x277D7A120);
  v6 = sub_23DE05AF8();

  if (v6 >> 62)
  {
    v7 = sub_23DE06038();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v7)
  {
    return 1;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v8 = sub_23DE06038();
  }

  else
  {
    v8 = *(a2 + 16);
  }

  return v8 != 0;
}

void sub_23DE0065C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      if (a1)
      {
        goto LABEL_10;
      }

      return;
    }

    if (!a1)
    {
      return;
    }

LABEL_10:
    v4 = [a1 name];
LABEL_15:
    sub_23DE05A48();

    return;
  }

  if (a3 != 2)
  {
    goto LABEL_10;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a2;
    if (!sub_23DE06038())
    {
      return;
    }
  }

  else
  {
    v3 = a2;
    if (!*(a2 + 16))
    {
      return;
    }
  }

  v5 = sub_23DDF864C(v3);
  if (v5)
  {
    v6 = v5;
    v7 = sub_23DDF7D40(v5, v3);

    if (v7)
    {
      v4 = [v7 localizedTitle];

      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_23DE00788(id result, uint64_t a2, char a3)
{
  if (a3 != 1)
  {
    if (a3 == 2)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        if (sub_23DE06038() < 1)
        {
          return 0;
        }

LABEL_11:
        result = sub_23DDF864C(a2);
        if (!result)
        {
          __break(1u);
          return result;
        }

        v11 = result;
        v12 = sub_23DDF7D40(result, a2);

        if (v12)
        {
          v13 = [v12 image];

          if (v13)
          {
            v14 = [v13 UIImage];

            return v14;
          }
        }

        return 0;
      }

      if (*(a2 + 16) >= 1)
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

  if (result)
  {
    result = [result previewIcon];
    if (result)
    {
      v4 = result;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = v5;
        v7 = v4;
        v8 = [v6 symbolName];
        sub_23DE05A48();

        v9 = sub_23DE05A18();

        v10 = [objc_opt_self() _systemImageNamed_];
      }

      else
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (!v15)
        {
          objc_opt_self();
          v17 = swift_dynamicCastObjCClass();
          if (v17)
          {
            v18 = [v17 bundleIdentifier];
            if (!v18)
            {
              sub_23DE05A48();
              v18 = sub_23DE05A18();
            }

            v19 = [objc_opt_self() applicationIconImageForBundleIdentifier_];

            if (v19)
            {
              v20 = [v19 UIImage];

              return v20;
            }
          }

          else
          {
            objc_opt_self();
            v21 = swift_dynamicCastObjCClass();
            if (v21)
            {
              v22 = v21;
              v23 = sub_23DE05B98();
              MEMORY[0x28223BE20](v23);
              v26[2] = v22;
              v24 = v4;
              v25 = sub_23DE00DD8(sub_23DE0260C, v26, "ActionButtonConfigurationUI/Action.swift", 40);

              return v25;
            }
          }

          return 0;
        }

        v16 = [v15 image];
        v10 = [v16 UIImage];
      }

      return v10;
    }
  }

  return result;
}

void sub_23DE00AF8(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return;
  }

  if (!a1)
  {
    return;
  }

  v4 = [a1 intent];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();

    if (v6)
    {
      return;
    }
  }

  v7 = [a1 intent];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = [v7 _codableDescription];

  v10 = [v9 attributes];
  if (!v10)
  {
    return;
  }

  sub_23DDC91D0(0, &unk_27E325FF8, 0x277CCABB0);
  sub_23DDC91D0(0, &qword_27E326E40, 0x277CD3AF0);
  sub_23DE025A4();
  v11 = sub_23DE059F8();

  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = sub_23DE06168() | 0x8000000000000000;
  }

  else
  {
    v16 = -1 << *(v11 + 32);
    v13 = ~v16;
    v12 = v11 + 64;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v14 = v18 & *(v11 + 64);
    v15 = v11;
  }

  v19 = 0;
  v25 = v13;
  v20 = (v13 + 64) >> 6;
  while ((v15 & 0x8000000000000000) != 0)
  {
    if (!sub_23DE061E8() || (swift_unknownObjectRelease(), swift_dynamicCast(), (v23 = v26) == 0))
    {
LABEL_25:
      sub_23DDEC288();

      return;
    }

LABEL_24:
    v24 = [v23 isConfigurable];

    if (v24)
    {
      goto LABEL_25;
    }
  }

  v21 = v19;
  v22 = v14;
  if (v14)
  {
LABEL_20:
    v14 = (v22 - 1) & v22;
    v23 = *(*(v15 + 56) + ((v19 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v23)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  while (1)
  {
    v19 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v19 >= v20)
    {
      goto LABEL_25;
    }

    v22 = *(v12 + 8 * v19);
    ++v21;
    if (v22)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

uint64_t sub_23DE00DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23DE05B88();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_23DE0266C(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_23DE060C8();
  MEMORY[0x23EF00420](0xD00000000000003FLL, 0x800000023DE0BC70);
  v12 = sub_23DE06418();
  MEMORY[0x23EF00420](v12);

  MEMORY[0x23EF00420](46, 0xE100000000000000);
  result = sub_23DE06208();
  __break(1u);
  return result;
}

uint64_t sub_23DE00F90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 32;
  while (1)
  {
    v5 = *(v4 + 8 * v3);
    v6 = sub_23DE05A48();
    v8 = v7;
    if (v6 == sub_23DE05A48() && v8 == v9)
    {
      break;
    }

    v11 = sub_23DE06318();

    if (v11)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

void sub_23DE01148(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v4 = a1;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        a1 = a2;
      }

      else
      {
        a1 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      a2 = v4;

LABEL_39:
      MEMORY[0x2821FCF40](a1, a2);
      return;
    }

    v5 = v4;
    goto LABEL_17;
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

    a2 = v2;
LABEL_17:

    sub_23DE014B8(v5, a2);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v6 = a2;
    v7 = 0;
    v8 = 1 << *(a1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a1 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_32:
      v15 = v12 | (v7 << 6);
      v16 = *(*(v2 + 56) + 8 * v15);
      v17 = *(*(v2 + 48) + 8 * v15);
      v18 = v16;
      v19 = sub_23DE01648(v17);
      v21 = v20;

      if ((v21 & 1) == 0)
      {

        return;
      }

      sub_23DDC91D0(0, &qword_2812184C8, 0x277D7A128);
      v22 = *(*(v6 + 56) + 8 * v19);
      v23 = sub_23DE05DC8();

      if ((v23 & 1) == 0)
      {
        return;
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return;
      }

      v14 = *(v2 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_39;
  }
}

uint64_t sub_23DE0135C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    v14 = *(*(v3 + 48) + 8 * v12);

    v15 = sub_23DE01648(v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v18 = *(*(a2 + 56) + 8 * v15);

    v20 = sub_23DE019D8(v19, v13);

    if ((v20 & 1) == 0)
    {
      return 0;
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
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_23DE014B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_23DE06038())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a2 + 56) + 8 * v12);
      v14 = *(*(a2 + 48) + 8 * v12);
      v15 = v13;
      v16 = sub_23DE061C8();

      if (!v16)
      {

        return;
      }

      sub_23DDC91D0(0, &qword_2812184C8, 0x277D7A128);
      swift_dynamicCast();
      v17 = sub_23DE05DC8();

      if ((v17 & 1) == 0)
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

      v11 = *(a2 + 64 + 8 * v4);
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

unint64_t sub_23DE01648(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23DE05DB8();
  return sub_23DE01760(a1, v5, &qword_2812184D0, 0x277D7A120);
}

unint64_t sub_23DE01698(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23DE05DB8();
  return sub_23DE01760(a1, v5, &unk_2812184F8, 0x277D7A118);
}

unint64_t sub_23DE016E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23DE063A8();
  sub_23DE05A88();
  v6 = sub_23DE063C8();

  return sub_23DE0182C(a1, a2, v6);
}

unint64_t sub_23DE01760(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_23DDC91D0(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_23DE05DC8();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_23DE0182C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23DE06318())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_23DE018E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326E38, &unk_23DE09B40);
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

uint64_t sub_23DE019D8(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_23DDC91D0(0, &qword_2812184C0, 0x277D7A130);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x23EF00A60](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x23EF00A60](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_23DE05DC8();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_23DE05DC8();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_23DE06038();
  }

  result = sub_23DE06038();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

void sub_23DE01C28(void *a1, uint64_t a2, unsigned __int8 a3, void *a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        sub_23DDC91D0(0, &qword_27E326168, 0x277D82BB8);
        if (sub_23DE05DC8())
        {

          sub_23DE01148(a2, a5);
        }
      }
    }

    else if (a6 == 3)
    {
      sub_23DDC91D0(0, &qword_27E326168, 0x277D82BB8);
      sub_23DE05DC8();
    }
  }

  else if (a3)
  {
    if (a6 == 1 && a1 && a4)
    {
      sub_23DDC91D0(0, &qword_27E326830, 0x277D79E50);
      sub_23DDD6F58(a4, a5, 1u);
      sub_23DDD6F58(a1, a2, 1u);
      sub_23DE05DC8();
      sub_23DDD6FDC(a1, a2, 1u);
      sub_23DDD6FDC(a4, a5, 1u);
    }
  }

  else if (!a6 && a1)
  {
    if (a4)
    {
      sub_23DDC91D0(0, &qword_27E3263C8, 0x277D79E60);
      sub_23DDD6F58(a4, a5, 0);
      sub_23DDD6F58(a1, a2, 0);
      sub_23DE05DC8();
      sub_23DDD6FDC(a1, a2, 0);
      sub_23DDD6FDC(a4, a5, 0);
    }
  }
}

BOOL sub_23DE01E74(void *a1, uint64_t a2, unsigned __int8 a3, void *a4, uint64_t a5, unsigned __int8 a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326E30, &qword_23DE09B38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DE099F0;
  *(inited + 32) = @"SilentMode";
  *(inited + 40) = @"Focus";
  *(inited + 48) = @"Camera";
  *(inited + 56) = @"VisualIntelligence";
  *(inited + 64) = @"Flashlight";
  *(inited + 72) = @"VoiceMemos";
  *(inited + 80) = @"MusicRecognition";
  *(inited + 88) = @"Translate";
  *(inited + 96) = @"Magnifier";
  *(inited + 104) = @"Controls";
  *(inited + 112) = @"Shortcuts";
  *(inited + 120) = @"Accessibility";
  *(inited + 128) = @"Nothing";
  if (a3 > 1u)
  {
    v24 = @"Controls";
    v25 = @"SilentMode";
    v26 = @"Focus";
    v27 = @"Camera";
    v28 = @"VisualIntelligence";
    v29 = @"Flashlight";
    v30 = @"VoiceMemos";
    v31 = @"MusicRecognition";
    v32 = @"Translate";
    v33 = @"Magnifier";
    v34 = @"Shortcuts";
    v35 = @"Accessibility";
    v36 = @"Nothing";
    v11 = [a1 sectionIdentifier];
  }

  else
  {
    if (a3)
    {
      v11 = @"Shortcuts";
      v37 = @"Shortcuts";
    }

    else
    {
      v11 = @"Controls";
      v12 = @"Controls";
    }

    v13 = @"Controls";
    v14 = @"SilentMode";
    v15 = @"Focus";
    v16 = @"Camera";
    v17 = @"VisualIntelligence";
    v18 = @"Flashlight";
    v19 = @"VoiceMemos";
    v20 = @"MusicRecognition";
    v21 = @"Translate";
    v22 = @"Magnifier";
    v23 = @"Shortcuts";
    v38 = @"Accessibility";
    v39 = @"Nothing";
  }

  v40 = sub_23DE00F90(v11, inited);
  v42 = v41;

  if (v42)
  {
    swift_setDeallocating();
    type metadata accessor for WFStaccatoActionSectionIdentifier(0);
    swift_arrayDestroy();
  }

  else
  {
    if (a6 > 1u)
    {
      v43 = [a4 sectionIdentifier];
    }

    else
    {
      if (a6)
      {
        v43 = @"Shortcuts";
      }

      else
      {
        v43 = @"Controls";
      }

      v44 = v43;
    }

    v45 = sub_23DE00F90(v43, inited);
    v47 = v46;

    swift_setDeallocating();
    type metadata accessor for WFStaccatoActionSectionIdentifier(0);
    swift_arrayDestroy();
    if ((v47 & 1) == 0)
    {
      return v40 < v45;
    }
  }

  if (qword_2812185E8 != -1)
  {
    swift_once();
  }

  v48 = sub_23DE052B8();
  __swift_project_value_buffer(v48, qword_281218840);
  sub_23DDD6F58(a1, a2, a3);
  sub_23DDD6F58(a4, a5, a6);
  v49 = sub_23DE05298();
  v50 = sub_23DE05C18();
  sub_23DDD6FDC(a1, a2, a3);
  sub_23DDD6FDC(a4, a5, a6);
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v68 = v52;
    *v51 = 136315394;
    if (a3 > 1u)
    {
      v53 = [a1 sectionIdentifier];
    }

    else
    {
      if (a3)
      {
        v53 = @"Shortcuts";
      }

      else
      {
        v53 = @"Controls";
      }

      v55 = v53;
    }

    v56 = sub_23DE05A48();
    v58 = v57;

    v59 = sub_23DDC8940(v56, v58, &v68);

    *(v51 + 4) = v59;
    *(v51 + 12) = 2080;
    if (a6 > 1u)
    {
      v60 = [a4 sectionIdentifier];
    }

    else
    {
      if (a6)
      {
        v60 = @"Shortcuts";
      }

      else
      {
        v60 = @"Controls";
      }

      v61 = v60;
    }

    v62 = sub_23DE05A48();
    v64 = v63;

    v65 = sub_23DDC8940(v62, v64, &v68);

    *(v51 + 14) = v65;
    _os_log_impl(&dword_23DDC5000, v49, v50, "Can't order section identifiers: %s, %s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF014D0](v52, -1, -1);
    MEMORY[0x23EF014D0](v51, -1, -1);
  }

  return 0;
}

unint64_t sub_23DE025A4()
{
  result = qword_27E326E48;
  if (!qword_27E326E48)
  {
    sub_23DDC91D0(255, &unk_27E325FF8, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E326E48);
  }

  return result;
}

uint64_t sub_23DE0260C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_23DE05278();
  result = sub_23DE05268();
  *a1 = result;
  return result;
}

void *sub_23DE0266C@<X0>(void *a1@<X8>)
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

id sub_23DE026B0(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_actions);
  *(v1 + OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_actions) = a1;

  v4 = OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_pageControl;
  result = *(v1 + OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_pageControl);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(a1 + 16);
  [result setNumberOfPages_];
  result = *(v1 + v4);
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return [result _setPreferredNumberOfVisibleIndicators_];
}

void sub_23DE02744()
{
  v1 = v0;
  v2 = sub_23DE05EE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v241 = &v221 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DE05E28();
  v239 = *(v6 - 8);
  v240 = v6;
  v7 = *(v239 + 64);
  MEMORY[0x28223BE20](v6);
  v238 = &v221 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3261F0, &unk_23DE08AB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v246 = &v221 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E326238, &unk_23DE08BA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v221 - v14;
  v16 = sub_23DE05328();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v245 = sub_23DE05F68();
  v18 = *(v245 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v245);
  v242 = &v221 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v221 - v22;
  v24 = [objc_allocWithZone(MEMORY[0x277D757E0]) init];
  v25 = OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_pageControl;
  v26 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_pageControl];
  *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_pageControl] = v24;
  v27 = v24;

  if (!v27)
  {
    __break(1u);
    goto LABEL_76;
  }

  [v1 addSubview_];

  v28 = *&v1[v25];
  if (!v28)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v29 = OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_actions;
  [v28 setNumberOfPages_];
  v30 = *&v1[v25];
  if (!v30)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  [v30 _setPreferredNumberOfVisibleIndicators_];
  v31 = *&v1[v25];
  if (!v31)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  [v31 setCurrentPage_];
  v32 = *&v1[v25];
  if (!v32)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  [v32 setBackgroundStyle_];
  v33 = *&v1[v25];
  if (!v33)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v236 = v3;
  v237 = v2;
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  v249 = v25;
  v34 = *&v1[v25];
  if (!v34)
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  [v34 addTarget:v1 action:sel_pageControlValueChanged forControlEvents:4096];
  v35 = sub_23DDCDA5C(0);
  v36 = OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_titleLabel;
  v37 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_titleLabel];
  *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_titleLabel] = v35;

  v38 = sub_23DDCDC44(0);
  v39 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_subtitleLabel];
  v244 = OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_subtitleLabel;
  *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_subtitleLabel] = v38;

  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = type metadata accessor for HighlightAnimatingMenuButton();
  v42 = sub_23DDC91D0(0, &qword_27E326220, 0x277D750C8);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_23DE05058;
  *(v43 + 24) = v40;
  swift_retain_n();
  v228 = v42;
  sub_23DE05DD8();
  v229 = v41;
  v44 = sub_23DE05F98();
  v251 = &type metadata for Features;
  v247 = sub_23DDCDEA8();
  v252 = v247;
  LOBYTE(aBlock[0]) = 1;
  LOBYTE(v43) = sub_23DE05238();
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  if (v43)
  {
    sub_23DE05E98();
  }

  else
  {
    sub_23DE05F58();
  }

  sub_23DE05EA8();
  sub_23DE05E78();
  sub_23DE05318();
  sub_23DE05E08();
  v45 = sub_23DE05DF8();
  sub_23DE052E8();
  v45(aBlock, 0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23DE05368();
  v46 = sub_23DE05358();
  (*(*(v46 - 8) + 56))(v15, 0, 1, v46);
  sub_23DE05ED8();
  v47 = v18[2];
  v48 = v245;
  v49 = v246;
  v231 = v18 + 2;
  v230 = v47;
  v47(v246, v23, v245);
  v50 = v18[7];
  v233 = v18 + 7;
  v232 = v50;
  v50(v49, 0, 1, v48);
  v51 = v44;
  sub_23DE05F88();

  v52 = v18[1];
  v235 = v18 + 1;
  v234 = v52;
  v52(v23, v48);

  v53 = OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_emptyStateConfigureButton;
  v54 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_emptyStateConfigureButton];
  *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_emptyStateConfigureButton] = v44;
  v55 = v51;

  LODWORD(v56) = 1148846080;
  [v55 setContentHuggingPriority:1 forAxis:v56];

  v57 = *&v1[v53];
  if (!v57)
  {
    goto LABEL_82;
  }

  v58 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_emptyStateConfigureButtonViewModel];
  v59 = v57;
  sub_23DDD9E44(v58);

  v60 = OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_cancellableBag;
  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  type metadata accessor for ConfigureButton();
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_23DDE44F8(0, sub_23DE05084, v61);
  v63 = v62;

  v64 = OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_configureButton;
  v65 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_configureButton];
  *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_configureButton] = v63;
  v66 = v63;

  LODWORD(v67) = 1148846080;
  [v66 setContentHuggingPriority:1 forAxis:v67];

  v68 = *&v1[v64];
  if (!v68)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v69 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_configureButtonViewModel];
  v70 = v68;
  sub_23DDD9E44(v69);

  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_23DDE44F8(1, sub_23DE050A8, v71);
  v73 = v72;

  v74 = OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_secondaryConfigureButton;
  v75 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_secondaryConfigureButton];
  *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_secondaryConfigureButton] = v73;
  v76 = v73;

  LODWORD(v77) = 1148846080;
  [v76 setContentHuggingPriority:1 forAxis:v77];

  v78 = *&v1[v74];
  if (!v78)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v79 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_secondaryConfigureButtonViewModel];
  v80 = v78;
  sub_23DDD9E44(v79);

  swift_beginAccess();
  sub_23DE053D8();
  swift_endAccess();

  v81 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  LODWORD(v82) = 1132068864;
  [v81 setContentHuggingPriority:1 forAxis:v82];
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FB0, &unk_23DE08060);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_23DE09B50;
  v84 = *&v1[v36];
  if (!v84)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v227 = v60;
  *(v83 + 32) = v84;
  v85 = *&v1[v244];
  if (!v85)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  *(v83 + 40) = v85;
  v86 = *&v1[v53];
  if (!v86)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v244 = v36;
  *(v83 + 48) = v86;
  v87 = *&v1[v64];
  if (!v87)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  *(v83 + 56) = v87;
  v88 = *&v1[v74];
  if (!v88)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  *(v83 + 64) = v88;
  *(v83 + 72) = v81;
  v89 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_23DDC91D0(0, &qword_27E326558, 0x277D75D18);
  v243 = v81;
  v90 = v88;
  v91 = v87;
  v92 = v86;
  v93 = v85;
  v94 = v84;
  v95 = sub_23DE05AE8();

  v96 = [v89 initWithArrangedSubviews_];

  v97 = OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_stackView;
  v98 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_stackView];
  *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_stackView] = v96;
  v99 = v96;

  if (!v99)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  [v99 setAxis_];

  v100 = *&v1[v97];
  v101 = v244;
  if (!v100)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  [v100 setAlignment_];
  v102 = *&v1[v97];
  if (!v102)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  [v102 setSpacing_];
  v103 = *&v1[v97];
  if (!v103)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (!*&v1[v101])
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  [v103 setCustomSpacing:8.0 afterView:?];
  v104 = *&v1[v97];
  if (!v104)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  [v104 setTranslatesAutoresizingMaskIntoConstraints_];
  v105 = *&v1[v97];
  if (!v105)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v106 = [v105 layer];
  [v106 setAllowsGroupOpacity_];

  v107 = *&v1[v97];
  if (!v107)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v108 = [v107 layer];
  [v108 setAllowsGroupBlending_];

  v109 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  v110 = OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_stackViewScrollContainer;
  v111 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_stackViewScrollContainer];
  *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_stackViewScrollContainer] = v109;
  v112 = v109;

  if (!v112)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  [v112 setUserInteractionEnabled_];

  v113 = *&v1[v110];
  if (!v113)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  [v113 setDirectionalLockEnabled_];
  v114 = *&v1[v110];
  if (!v114)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  [v114 setShowsVerticalScrollIndicator_];
  v115 = *&v1[v110];
  if (!v115)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (!*&v1[v97])
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  [v115 addSubview_];
  v116 = *&v1[v110];
  if (!v116)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  [v116 setTranslatesAutoresizingMaskIntoConstraints_];
  if (!*&v1[v110])
  {
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  [v1 addSubview_];
  v117 = [v1 traitCollection];
  v118 = [v117 preferredContentSizeCategory];

  v226 = *MEMORY[0x277D76828];
  LOBYTE(v117) = sub_23DE05D38();

  if (v117)
  {
    v119 = 32.0;
  }

  else
  {
    v119 = 44.0;
  }

  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_23DE09B60;
  v121 = v249;
  v122 = *&v1[v249];
  if (!v122)
  {
    goto LABEL_105;
  }

  v123 = [v122 topAnchor];
  v124 = [v1 topAnchor];
  v125 = [v123 constraintEqualToAnchor_];

  *(v120 + 32) = v125;
  v126 = *&v1[v121];
  if (!v126)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v127 = [v126 centerXAnchor];
  v128 = [v1 centerXAnchor];
  v129 = [v127 constraintEqualToAnchor_];

  *(v120 + 40) = v129;
  v130 = *&v1[v110];
  if (!v130)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v131 = [v130 leadingAnchor];
  v132 = [v1 leadingAnchor];
  v133 = [v131 constraintEqualToAnchor:v132 constant:v119];

  *(v120 + 48) = v133;
  v134 = *&v1[v110];
  if (!v134)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v135 = [v134 trailingAnchor];
  v136 = [v1 trailingAnchor];
  v137 = [v135 constraintEqualToAnchor:v136 constant:-v119];

  *(v120 + 56) = v137;
  v138 = *&v1[v110];
  if (!v138)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v139 = [v138 topAnchor];
  v140 = *&v1[v249];
  if (!v140)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v141 = [v140 bottomAnchor];
  v142 = [v139 constraintEqualToAnchor:v141 constant:24.0];

  *(v120 + 64) = v142;
  v143 = *&v1[v101];
  if (!v143)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v144 = [v143 _tightBoundingBoxLayoutGuide];
  v145 = [v144 topAnchor];

  v146 = *&v1[v110];
  if (!v146)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v147 = [v146 topAnchor];
  v148 = [v145 constraintEqualToAnchor_];

  *(v120 + 72) = v148;
  v149 = *&v1[v97];
  if (!v149)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v150 = [v149 widthAnchor];
  v151 = *&v1[v110];
  if (!v151)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v152 = v150;
  v153 = objc_opt_self();
  v154 = [v151 widthAnchor];
  v155 = [v152 constraintEqualToAnchor_];

  *(v120 + 80) = v155;
  v156 = sub_23DDC91D0(0, &qword_27E326560, 0x277CCAAD0);
  v157 = sub_23DE05AE8();

  [v153 activateConstraints_];

  v158 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_primaryButtonViewModel];
  if (v158)
  {
    v159 = *(v158 + 16);
    v160 = *(v159 + 24);
    v223 = v156;
    if (v160)
    {
      v161 = *(v159 + 16);
      v249 = v160;
    }

    else
    {
      v249 = 0xE000000000000000;
    }

    v168 = objc_opt_self();

    v228 = [v168 whiteColor];
    v225 = [v168 grayColor];
    v169 = [v168 systemBlueColor];
    v170 = [v168 grayColor];
    v171 = [v170 colorWithAlphaComponent_];

    v172 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v173 = swift_allocObject();
    *(v173 + 16) = sub_23DE050CC;
    *(v173 + 24) = v172;
    v244 = v172;
    swift_retain_n();
    sub_23DE05DD8();
    v174 = sub_23DE05F98();
    [v174 setRole_];
    LODWORD(v175) = 1148846080;
    [v174 setContentHuggingPriority:1 forAxis:v175];
    v251 = &type metadata for Features;
    v252 = v247;
    LOBYTE(aBlock[0]) = 1;
    v176 = sub_23DE05238();
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v222 = v158;
    v177 = v242;
    if (v176)
    {
      sub_23DE05F48();
    }

    else
    {
      sub_23DE05F58();
    }

    sub_23DE05F38();
    v251 = &type metadata for Features;
    v252 = v247;
    LOBYTE(aBlock[0]) = 1;
    v178 = sub_23DE05238();
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v224 = v153;
    if (v178)
    {
      (*(v239 + 104))(v238, *MEMORY[0x277D74FD8], v240);
      sub_23DE05E38();
      v179 = v169;
      v180 = sub_23DE05DF8();
      sub_23DE052F8();
      v180(aBlock, 0);
    }

    else
    {
      v181 = sub_23DE05DF8();
      sub_23DE052E8();
      v181(aBlock, 0);
      (*(v239 + 104))(v238, *MEMORY[0x277D74FC0], v240);
      sub_23DE05E38();
    }

    (*(v236 + 104))(v241, *MEMORY[0x277D75020], v237);
    sub_23DE05E18();
    sub_23DE05EA8();
    v182 = swift_allocObject();
    v182[2] = v169;
    v182[3] = v171;
    v183 = v228;
    v184 = v225;
    v182[4] = v228;
    v182[5] = v184;
    v252 = sub_23DDE3DA0;
    v253 = v182;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23DDDCCE4;
    v251 = &block_descriptor_8;
    v185 = _Block_copy(aBlock);
    v186 = v169;
    v187 = v171;
    v188 = v183;
    v189 = v184;

    [v174 setConfigurationUpdateHandler_];
    _Block_release(v185);
    v191 = v245;
    v190 = v246;
    v230(v246, v177, v245);
    v232(v190, 0, 1, v191);
    sub_23DE05F88();

    v234(v177, v191);

    v192 = OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_primaryButton;
    v193 = *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_primaryButton];
    *&v1[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_primaryButton] = v174;
    v194 = v174;

    [v194 setTranslatesAutoresizingMaskIntoConstraints_];
    if (*&v1[v192])
    {
      [v1 addSubview_];
      v251 = &type metadata for Features;
      v252 = v247;
      LOBYTE(aBlock[0]) = 1;
      v195 = sub_23DE05238();
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      v196 = 5.0;
      if ((v195 & 1) == 0)
      {
        v197 = [v1 traitCollection];
        v198 = [v197 preferredContentSizeCategory];

        LOBYTE(v197) = sub_23DE05D28();
        if (v197)
        {
          if (qword_27E325AF0 != -1)
          {
            swift_once();
          }

          v196 = *&qword_27E326F18 + 50.0 + 5.0;
        }
      }

      v199 = swift_allocObject();
      *(v199 + 16) = xmmword_23DE08A70;
      v200 = *&v1[v110];
      if (v200)
      {
        v201 = [v200 bottomAnchor];
        v202 = *&v1[v192];
        if (v202)
        {
          v203 = [v202 topAnchor];
          v204 = [v201 constraintEqualToAnchor_];

          *(v199 + 32) = v204;
          v205 = *&v1[v192];
          if (v205)
          {
            v206 = [v205 leadingAnchor];
            v207 = [v1 leadingAnchor];
            if (qword_27E325AE8 != -1)
            {
              swift_once();
            }

            v208 = *&qword_27E326F10;
            v209 = [v206 constraintEqualToAnchor:v207 constant:*&qword_27E326F10];

            *(v199 + 40) = v209;
            v210 = *&v1[v192];
            if (v210)
            {
              v211 = [v210 trailingAnchor];
              v212 = [v1 trailingAnchor];
              v213 = [v211 constraintEqualToAnchor:v212 constant:-v208];

              *(v199 + 48) = v213;
              v214 = *&v1[v192];
              if (v214)
              {
                v215 = [v214 bottomAnchor];
                v216 = [v1 bottomAnchor];
                v217 = [v215 constraintEqualToAnchor:v216 constant:-v196];

                *(v199 + 56) = v217;
                v218 = sub_23DE05AE8();

                [v224 activateConstraints_];

                v219 = *&v1[v192];
                if (v219)
                {
                  v220 = v219;
                  sub_23DDD9E44(v222);

                  swift_beginAccess();
                  sub_23DE053D8();
                  swift_endAccess();

                  goto LABEL_74;
                }

                goto LABEL_121;
              }

LABEL_120:
              __break(1u);
LABEL_121:
              __break(1u);
              goto LABEL_122;
            }

LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v162 = swift_allocObject();
  *(v162 + 16) = xmmword_23DE07F10;
  v163 = *&v1[v110];
  if (v163)
  {
    v164 = [v163 bottomAnchor];
    v165 = [v1 bottomAnchor];
    v166 = [v164 constraintEqualToAnchor_];

    *(v162 + 32) = v166;
    v167 = sub_23DE05AE8();

    [v153 activateConstraints_];

LABEL_74:
    return;
  }

LABEL_122:
  __break(1u);
}

void sub_23DE04228()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_primaryButtonViewModel);
    v2 = Strong;

    if (v1)
    {
      v3 = *(v1 + 16);
      v4 = v3[2];
      v5 = v3[3];
      v6 = v3[4];
      v8 = v3[6];
      v7 = v3[7];
      v9 = v3[8];
      sub_23DDD9D80(v4, v5, v6);

      if (v5)
      {

        sub_23DDD9DE0(v4, v5, v6);
        v7();
      }
    }
  }
}

void sub_23DE04320()
{
  v3 = v0;
  v43.receiver = v0;
  v43.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v43, sel_layoutSubviews);
  v4 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_pageControl];
  if (!v4)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = [v4 currentPage];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_actions];
    if (v5 < *(v6 + 16))
    {
      sub_23DDD7140(v6 + 40 * v5 + 32, v41);
      v7 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_titleLabel];
      if (v7)
      {
        v8 = *__swift_project_boxed_opaque_existential_1(v41, v42) + OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_title;
        v0 = *v8;
        v1 = *(v8 + 8);
        v9 = qword_27E325AC0;

        v2 = v7;
        if (v9 == -1)
        {
          goto LABEL_6;
        }

        goto LABEL_29;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_29:
  swift_once();
LABEL_6:
  sub_23DDCCEF0(v0, v1, qword_27E326ED8, byte_27E326EE0, 0, 1);

  v10 = *&v3[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_subtitleLabel];
  if (!v10)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = (*__swift_project_boxed_opaque_existential_1(v41, v42) + OBJC_IVAR____TtC27ActionButtonConfigurationUI18ActionSelectorItem_subtitle);
  v12 = *v11;
  v13 = v11[1];
  v14 = qword_27E325AC8;

  v15 = v10;
  if (v14 != -1)
  {
    swift_once();
  }

  sub_23DDCCEF0(v12, v13, qword_27E326EE8, byte_27E326EF0, 0, 1);

  v16 = OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_stackView;
  v17 = *&v3[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_stackView];
  if (!v17)
  {
    goto LABEL_33;
  }

  [v17 layoutSubviews];
  v18 = OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_stackViewScrollContainer;
  v19 = *&v3[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_stackViewScrollContainer];
  if (!v19)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v20 = *&v3[v16];
  if (!v20)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v21 = v19;
  [v20 bounds];
  Width = CGRectGetWidth(v44);
  v23 = *&v3[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_emptyStateConfigureButton];
  if (!v23)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v24 = Width;
  [v23 frame];
  MaxY = CGRectGetMaxY(v45);
  v26 = *&v3[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_configureButton];
  if (!v26)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v27 = MaxY;
  [v26 frame];
  v28 = CGRectGetMaxY(v46);
  v29 = *&v3[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_secondaryConfigureButton];
  if (!v29)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v30 = v28;
  [v29 frame];
  v31 = CGRectGetMaxY(v47);
  if (v30 > v31)
  {
    v31 = v30;
  }

  if (v27 > v31)
  {
    v31 = v27;
  }

  [v21 setContentSize_];

  v32 = *&v3[v18];
  if (!v32)
  {
    goto LABEL_39;
  }

  v33 = v32;
  [v33 contentSize];
  v35 = *&v3[v18];
  if (!v35)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v36 = v34;
  [v35 bounds];
  [v33 setScrollEnabled_];

  v37 = *&v3[v18];
  if (!v37)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v38 = v37;
  [v38 setShowsVerticalScrollIndicator_];

  v39 = *&v3[v18];
  if (!v39)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (![v39 isScrollEnabled])
  {
LABEL_26:
    __swift_destroy_boxed_opaque_existential_1(v41);
    return;
  }

  v40 = *&v3[v18];
  if (v40)
  {
    [v40 flashScrollIndicators];
    goto LABEL_26;
  }

LABEL_43:
  __break(1u);
}

void sub_23DE047B0()
{
  v1 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_selectionHandler];
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v3 = OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_pageControl;
  v4 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_pageControl];
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = *&v0[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_selectionHandler + 8];

  if ([v4 interactionState])
  {
    v6 = *&v2[v3];
    if (v6)
    {
      v1([v6 currentPage]);
      [v2 setNeedsLayout];
      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    return;
  }

LABEL_6:

  sub_23DDCC0D8(v1);
}

uint64_t sub_23DE048CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23DE05178();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = *(v5 + 16);
  if (!Strong)
  {
    return v10(a2, a1, v4);
  }

  v11 = Strong;
  v10(v8, a1, v4);
  v12 = *MEMORY[0x277D74420];
  v18 = sub_23DDCD930(*MEMORY[0x277D76918]);
  sub_23DDE3E30();
  sub_23DE05188();
  v13 = [objc_opt_self() whiteColor];
  v14 = [v11 isHighlighted];
  v15 = 1.0;
  if (v14)
  {
    v15 = 0.5;
  }

  v16 = [v13 colorWithAlphaComponent_];

  v18 = v16;
  sub_23DDDB288();
  sub_23DE05188();

  return (*(v5 + 32))(a2, v8, v4);
}

void sub_23DE04C50()
{
  v1 = (v0 + OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_selectionHandler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_pageControl) = 0;
  *(v0 + OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_emptyStateConfigureButton) = 0;
  *(v0 + OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_configureButton) = 0;
  *(v0 + OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_secondaryConfigureButton) = 0;
  *(v0 + OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_stackView) = 0;
  *(v0 + OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_stackViewScrollContainer) = 0;
  *(v0 + OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_primaryButton) = 0;
  *(v0 + OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_cancellableBag) = MEMORY[0x277D84FA0];
  sub_23DE06208();
  __break(1u);
}

_OWORD *sub_23DE04D44(double a1, double a2)
{
  if ([v2 isUserInteractionEnabled])
  {
    [v2 convertPoint:0 toView:{a1, a2}];
    v6 = v5;
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E325FB0, &unk_23DE08060);
    result = swift_allocObject();
    result[1] = xmmword_23DE08A80;
    v10 = *&v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_emptyStateConfigureButton];
    if (!v10)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v11 = result;
    *(result + 4) = v10;
    v12 = *&v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_configureButton];
    if (!v12)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    *(result + 5) = v12;
    v13 = *&v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_secondaryConfigureButton];
    if (!v13)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    *(result + 6) = v13;
    v14 = *&v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_pageControl];
    if (!v14)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    *(result + 7) = v14;
    v15 = *&v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_stackViewScrollContainer];
    if (!v15)
    {
LABEL_35:
      __break(1u);
      return result;
    }

    *(result + 8) = v15;
    v42 = result;
    v16 = *&v2[OBJC_IVAR____TtC27ActionButtonConfigurationUI17ActionDetailsView_primaryButton];
    if (v16)
    {
      v17 = v16;
      v18 = v10;
      v19 = v12;
      v20 = v13;
      v21 = v14;
      v22 = v15;
      v11 = v17;
      MEMORY[0x23EF00460]();
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_29:
        sub_23DE05B18();
      }

      sub_23DE05B38();

      v11 = v42;
      if (!(v42 >> 62))
      {
LABEL_10:
        v23 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_11;
        }

LABEL_23:

        return 0;
      }
    }

    else
    {
      v37 = v10;
      v38 = v12;
      v39 = v13;
      v40 = v14;
      v41 = v15;
      if (!(v11 >> 62))
      {
        goto LABEL_10;
      }
    }

    v23 = sub_23DE06038();
    if (v23)
    {
LABEL_11:
      v24 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x23EF00A60](v24, v11);
        }

        else
        {
          if (v24 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v25 = *(v11 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        result = [v25 superview];
        if (!result)
        {
          break;
        }

        v28 = result;
        [v26 frame];
        [v28 convertRect:0 toView:?];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;

        v44.origin.x = v30;
        v44.origin.y = v32;
        v44.size.width = v34;
        v44.size.height = v36;
        v43.x = v6;
        v43.y = v8;
        if (CGRectContainsPoint(v44, v43))
        {

          return v26;
        }

        ++v24;
        if (v27 == v23)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_23;
  }

  return 0;
}