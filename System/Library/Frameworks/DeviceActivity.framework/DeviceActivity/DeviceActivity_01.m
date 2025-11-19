uint64_t sub_237FB7E2C(uint64_t a1)
{
  v2 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE57C0, &qword_238036560);
  result = sub_238032274();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_237FBCCF0(&qword_280C34B10, &qword_27DEE4FF8, &unk_2380343E0);
      result = sub_238031E24();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_237FB818C(uint64_t a1)
{
  v2 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE57B0, &unk_238033C80);
  result = sub_238032274();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_237FBCCF0(&qword_280C34AF8, &qword_27DEE4FF0, &unk_238033980);
      result = sub_238031E24();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_237FB84EC(uint64_t a1)
{
  v2 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE57A0, &unk_238036550);
  result = sub_238032274();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_237FBCCF0(&qword_280C34AE0, &qword_27DEE4FE8, &unk_238035410);
      result = sub_238031E24();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_237FB884C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_238031BE4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE5790, &unk_238033C70);
  result = sub_238032274();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_237FBCC60(&qword_280C34B28, MEMORY[0x277CD4AB0]);
      result = sub_238031E24();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_237FB8BA8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_238031C44();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5080, &qword_238033C68);
  result = sub_238032274();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_237FBCC60(&qword_280C34B20, MEMORY[0x277CD4AD0]);
      result = sub_238031E24();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_237FB8F04(uint64_t a1)
{
  v2 = v1;
  v41 = sub_238031CC4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE5780, &qword_238033C60);
  result = sub_238032274();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_237FBCC60(&qword_280C34AD0, MEMORY[0x277CD4B20]);
      result = sub_238031E24();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_237FB9260(uint64_t a1)
{
  v2 = v1;
  v41 = sub_238031994();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5020, &qword_238033C08);
  result = sub_238032274();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_237FBCC60(&qword_280C35050, MEMORY[0x277CC9260]);
      result = sub_238031E24();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_237FB95BC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_237FB796C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_238023ABC();
      goto LABEL_16;
    }

    sub_237FBAE30(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2380325B4();
  sub_238031ED4();
  result = sub_2380325F4();
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

      result = sub_2380324E4();
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
  result = sub_238032524();
  __break(1u);
  return result;
}

uint64_t sub_237FB973C(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v53 = *MEMORY[0x277D85DE8];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_237FB7BCC(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_238023C18();
        goto LABEL_68;
      }

      sub_237FBB068(v8 + 1);
    }

    v10 = *v4;
    v11 = *(*v4 + 40);
    sub_2380325B4();
    sub_2380319B4();
    result = sub_2380325F4();
    v12 = v10 + 56;
    v13 = -1 << *(v10 + 32);
    a3 = result & ~v13;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      if (v7)
      {
        v15 = 0;
      }

      else
      {
        v15 = a2 == 0xC000000000000000;
      }

      v16 = !v15;
      v50 = v16;
      v17 = a2 >> 62;
      v18 = __OFSUB__(HIDWORD(v7), v7);
      v47 = v18;
      v46 = HIDWORD(v7) - v7;
      v48 = v14;
      v49 = BYTE6(a2);
      v43 = v7;
      v44 = a2;
      while (1)
      {
        v19 = (*(v10 + 48) + 16 * a3);
        v21 = *v19;
        v20 = v19[1];
        v22 = v20 >> 62;
        if (v20 >> 62 == 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 != 2)
          {
            goto LABEL_32;
          }

          v32 = *(v21 + 16);
          v31 = *(v21 + 24);
          v30 = __OFSUB__(v31, v32);
          v26 = v31 - v32;
          if (v30)
          {
            goto LABEL_73;
          }
        }

        else if (v22)
        {
          LODWORD(v26) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_74;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v20);
        }

LABEL_33:
        if (v17 > 1)
        {
          if (v17 != 2)
          {
            if (!v26)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v29 = *(v7 + 16);
          v28 = *(v7 + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v30)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v27 = v49;
          if (v17)
          {
            v27 = v46;
            if (v47)
            {
              goto LABEL_71;
            }
          }
        }

        if (v26 == v27)
        {
          if (v26 < 1)
          {
            goto LABEL_67;
          }

          if (v22 > 1)
          {
            if (v22 == 2)
            {
              v34 = *(v21 + 16);
              v33 = *(v21 + 24);
              sub_237FBC9FC(v21, v20);
              v35 = sub_238031664();
              if (v35)
              {
                v36 = sub_238031684();
                if (__OFSUB__(v34, v36))
                {
                  goto LABEL_77;
                }

                v35 += v34 - v36;
              }

              if (__OFSUB__(v33, v34))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v52[6] = 0;
            *v52 = 0;
            sub_237FBC9FC(v21, v20);
          }

          else
          {
            if (v22)
            {
              if (v21 >> 32 < v21)
              {
                goto LABEL_75;
              }

              sub_237FBC9FC(v21, v20);
              v35 = sub_238031664();
              if (v35)
              {
                v37 = sub_238031684();
                if (__OFSUB__(v21, v37))
                {
                  goto LABEL_78;
                }

                v35 += v21 - v37;
              }

LABEL_63:
              sub_238031674();
              v7 = v43;
              a2 = v44;
              sub_237FCBE14(v35, v43, v44, v52);
              result = sub_237FA5048(v21, v20);
              v12 = v10 + 56;
              v14 = v48;
              if (v52[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v52 = v21;
            *&v52[8] = v20;
            v52[10] = BYTE2(v20);
            v52[11] = BYTE3(v20);
            v52[12] = BYTE4(v20);
            v52[13] = BYTE5(v20);
            sub_237FBC9FC(v21, v20);
            v14 = v48;
          }

          sub_237FCBE14(v52, v7, a2, &v51);
          result = sub_237FA5048(v21, v20);
          if (v51)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v14;
        if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || v17 < 3;
      if (((v25 | v50) & 1) == 0)
      {
LABEL_67:
        result = sub_238032524();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v38 = *v45;
  *(*v45 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v39 = (*(v38 + 48) + 16 * a3);
  *v39 = v7;
  v39[1] = a2;
  v40 = *(v38 + 16);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v30)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v38 + 16) = v41;
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237FB9BB4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v7;
  v31 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_237FB7E2C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_238023D74();
      goto LABEL_12;
    }

    sub_237FBB2A4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_237FBCCF0(&qword_280C34B10, &qword_27DEE4FF8, &unk_2380343E0);
  v15 = sub_238031E24();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v19 = v7 + 16;
    v20 = v21;
    v22 = *(v19 + 56);
    do
    {
      v20(v10, *(v32 + 48) + v22 * a2, v6);
      sub_237FBCCF0(&qword_27DEE50A0, &qword_27DEE4FF8, &unk_2380343E0);
      v23 = sub_238031E64();
      (*(v19 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v30;
  v25 = *v31;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_238032524();
  __break(1u);
  return result;
}

uint64_t sub_237FB9E58(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v7;
  v31 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_237FB818C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_238023D98();
      goto LABEL_12;
    }

    sub_237FBB5C4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_237FBCCF0(&qword_280C34AF8, &qword_27DEE4FF0, &unk_238033980);
  v15 = sub_238031E24();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v19 = v7 + 16;
    v20 = v21;
    v22 = *(v19 + 56);
    do
    {
      v20(v10, *(v32 + 48) + v22 * a2, v6);
      sub_237FBCCF0(&qword_27DEE5098, &qword_27DEE4FF0, &unk_238033980);
      v23 = sub_238031E64();
      (*(v19 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v30;
  v25 = *v31;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_238032524();
  __break(1u);
  return result;
}

uint64_t sub_237FBA0FC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v7;
  v31 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_237FB84EC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_238023DBC();
      goto LABEL_12;
    }

    sub_237FBB8E4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_237FBCCF0(&qword_280C34AE0, &qword_27DEE4FE8, &unk_238035410);
  v15 = sub_238031E24();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v19 = v7 + 16;
    v20 = v21;
    v22 = *(v19 + 56);
    do
    {
      v20(v10, *(v32 + 48) + v22 * a2, v6);
      sub_237FBCCF0(&qword_27DEE5090, &qword_27DEE4FE8, &unk_238035410);
      v23 = sub_238031E64();
      (*(v19 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v30;
  v25 = *v31;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_238032524();
  __break(1u);
  return result;
}

uint64_t sub_237FBA3A0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_238031BE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_237FB884C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_23802400C();
      goto LABEL_12;
    }

    sub_237FBBC04(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_237FBCC60(&qword_280C34B28, MEMORY[0x277CD4AB0]);
  v15 = sub_238031E24();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_237FBCC60(&qword_27DEE5088, MEMORY[0x277CD4AB0]);
      v23 = sub_238031E64();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_238032524();
  __break(1u);
  return result;
}

uint64_t sub_237FBA644(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_238031C44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_237FB8BA8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_238024034();
      goto LABEL_12;
    }

    sub_237FBBF20(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_237FBCC60(&qword_280C34B20, MEMORY[0x277CD4AD0]);
  v15 = sub_238031E24();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_237FBCC60(&qword_27DEE5078, MEMORY[0x277CD4AD0]);
      v23 = sub_238031E64();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_238032524();
  __break(1u);
  return result;
}

uint64_t sub_237FBA8E8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_238031CC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_237FB8F04(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_23802405C();
      goto LABEL_12;
    }

    sub_237FBC23C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_237FBCC60(&qword_280C34AD0, MEMORY[0x277CD4B20]);
  v15 = sub_238031E24();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_237FBCC60(&qword_27DEE5070, MEMORY[0x277CD4B20]);
      v23 = sub_238031E64();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_238032524();
  __break(1u);
  return result;
}

uint64_t sub_237FBAB8C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_238031994();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_237FB9260(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_238024084();
      goto LABEL_12;
    }

    sub_237FBC558(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_237FBCC60(&qword_280C35050, MEMORY[0x277CC9260]);
  v15 = sub_238031E24();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_237FBCC60(&qword_280C35048, MEMORY[0x277CC9260]);
      v23 = sub_238031E64();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_238032524();
  __break(1u);
  return result;
}

uint64_t sub_237FBAE30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE5760, &unk_238036530);
  result = sub_238032274();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2380325B4();

      sub_238031ED4();
      result = sub_2380325F4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_237FBB068(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50B0, &qword_238033C98);
  result = sub_238032274();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2380325B4();
      sub_237FBC9FC(v19, v20);
      sub_2380319B4();
      result = sub_2380325F4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_237FBB2A4(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE57C0, &qword_238036560);
  v10 = sub_238032274();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_237FBCCF0(&qword_280C34B10, &qword_27DEE4FF8, &unk_2380343E0);
      result = sub_238031E24();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_237FBB5C4(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE57B0, &unk_238033C80);
  v10 = sub_238032274();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_237FBCCF0(&qword_280C34AF8, &qword_27DEE4FF0, &unk_238033980);
      result = sub_238031E24();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_237FBB8E4(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE57A0, &unk_238036550);
  v10 = sub_238032274();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_237FBCCF0(&qword_280C34AE0, &qword_27DEE4FE8, &unk_238035410);
      result = sub_238031E24();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_237FBBC04(uint64_t a1)
{
  v2 = v1;
  v37 = sub_238031BE4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE5790, &unk_238033C70);
  v10 = sub_238032274();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_237FBCC60(&qword_280C34B28, MEMORY[0x277CD4AB0]);
      result = sub_238031E24();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_237FBBF20(uint64_t a1)
{
  v2 = v1;
  v37 = sub_238031C44();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5080, &qword_238033C68);
  v10 = sub_238032274();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_237FBCC60(&qword_280C34B20, MEMORY[0x277CD4AD0]);
      result = sub_238031E24();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_237FBC23C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_238031CC4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE5780, &qword_238033C60);
  v10 = sub_238032274();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_237FBCC60(&qword_280C34AD0, MEMORY[0x277CD4B20]);
      result = sub_238031E24();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_237FBC558(uint64_t a1)
{
  v2 = v1;
  v37 = sub_238031994();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5020, &qword_238033C08);
  v10 = sub_238032274();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_237FBCC60(&qword_280C35050, MEMORY[0x277CC9260]);
      result = sub_238031E24();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_237FBC874(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_237FBC910();
  result = MEMORY[0x2383E51F0](v2, MEMORY[0x277CC9318], v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_237FBC9FC(v7, *v5);
      sub_237FB60B8(v8, v7, v6);
      sub_237FA5048(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t sub_237FBC910()
{
  result = qword_27DEE5000;
  if (!qword_27DEE5000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5000);
  }

  return result;
}

uint64_t sub_237FBC964(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2383E51F0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_237FB5F68(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_237FBC9FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_237FBCA54()
{
  result = qword_27DEE5008;
  if (!qword_27DEE5008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5008);
  }

  return result;
}

unint64_t sub_237FBCAAC()
{
  result = qword_27DEE5010;
  if (!qword_27DEE5010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5010);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_237FBCB38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_237FBCB80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237FBCBCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_237FBCC14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237FBCC60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_237FBCCF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_237FBCD7C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_238032214();
    sub_237FBDA34();
    sub_237FBDA80();
    sub_238032094();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_238032224() || (sub_237FBDA34(), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_237FBDBF0();
      return;
    }

LABEL_17:
    v12 = [v11 bundleIdentifier];
    if (v12)
    {
      v13 = v12;
      v19 = sub_238031EA4();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_237FB5A94(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_237FB5A94((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

id sub_237FBCFF4()
{
  result = [objc_allocWithZone(MEMORY[0x277D26568]) init];
  qword_280C356F8 = result;
  return result;
}

uint64_t static DeviceActivityAuthorization.authorizedClientIdentifiers.getter()
{
  if (qword_280C356F0 != -1)
  {
    swift_once();
  }

  v0 = [qword_280C356F8 deviceActivity];
  v1 = [v0 allowedClients];

  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  sub_237FBDA34();
  sub_237FBDA80();
  v2 = sub_238032074();

  sub_237FBCD7C(v2);
  v4 = v3;

  return v4;
}

uint64_t static DeviceActivityAuthorization.sharingEnabled.getter()
{
  if (qword_280C356F0 != -1)
  {
    swift_once();
  }

  v0 = [qword_280C356F8 deviceActivity];
  v1 = [v0 shareAcrossDevices];

  if (!v1)
  {
    return 1;
  }

  v2 = [v1 BOOLValue];

  return v2;
}

id DeviceActivityAuthorization.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceActivityAuthorization.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceActivityAuthorization();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DeviceActivityAuthorization.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceActivityAuthorization();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s14DeviceActivity0aB13AuthorizationC12isOverriddenSbvgZ_0()
{
  sub_238031EC4();
  v0 = os_variant_allows_internal_security_policies();

  if (!v0)
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_238031E74();
  v3 = [v1 BOOLForKey_];

  return v3;
}

uint64_t _s14DeviceActivity0aB13AuthorizationC12isAuthorizedySbSSFZ_0(int64_t a1, int64_t a2)
{
  if (_s14DeviceActivity0aB13AuthorizationC12isOverriddenSbvgZ_0())
  {
    return 1;
  }

  if (qword_280C356F0 != -1)
  {
    goto LABEL_34;
  }

LABEL_4:
  v5 = [qword_280C356F8 deviceActivity];
  v6 = [v5 allowedClients];

  if (v6)
  {
    sub_237FBDA34();
    sub_237FBDA80();
    v7 = sub_238032074();

    v29 = a1;
    v30 = a2;
    if ((v7 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_238032214();
      sub_238032094();
      v8 = v32;
      v9 = v33;
      v10 = v34;
      v11 = v35;
      v12 = v36;
    }

    else
    {
      v13 = -1 << *(v7 + 32);
      v9 = v7 + 56;
      v10 = ~v13;
      v14 = -v13;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v12 = v15 & *(v7 + 56);

      v11 = 0;
      v8 = v7;
    }

    a2 = (v10 + 64) >> 6;
    while (1)
    {
      a1 = v11;
      if (v8 < 0)
      {
        if (!sub_238032224() || (swift_dynamicCast(), (v18 = v31) == 0))
        {
LABEL_30:
          v28 = 0;
          goto LABEL_31;
        }
      }

      else
      {
        v16 = v11;
        v17 = v12;
        if (!v12)
        {
          while (1)
          {
            v11 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v11 >= a2)
            {
              goto LABEL_30;
            }

            v17 = *(v9 + 8 * v11);
            ++v16;
            if (v17)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_34:
          swift_once();
          goto LABEL_4;
        }

LABEL_19:
        v12 = (v17 - 1) & v17;
        v18 = *(*(v8 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v17)))));
        if (!v18)
        {
          goto LABEL_30;
        }
      }

      v19 = [v18 bundleIdentifier];
      if (v19)
      {
        v20 = v19;
        v21 = v12;
        v22 = v8;
        v23 = sub_238031EA4();
        v25 = v24;

        if (v23 == v29 && v25 == v30)
        {

          v28 = 1;
          goto LABEL_31;
        }

        v27 = sub_2380324E4();

        v8 = v22;
        v12 = v21;
        if (v27)
        {
          v28 = 1;
LABEL_31:
          sub_237FBDBF0();

          return v28;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

BOOL _s14DeviceActivity0aB13AuthorizationC12isAuthorizedSbvgZ_0()
{
  if (_s14DeviceActivity0aB13AuthorizationC12isOverriddenSbvgZ_0())
  {
    return 1;
  }

  if (qword_280C356F0 != -1)
  {
    swift_once();
  }

  v1 = [qword_280C356F8 deviceActivity];
  v2 = [v1 allowedClients];

  if (v2)
  {
    sub_237FBDA34();
    sub_237FBDA80();
    v3 = sub_238032074();

    sub_237FBCD7C(v3);
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *(v5 + 16);

  return v6 != 0;
}

unint64_t sub_237FBDA34()
{
  result = qword_280C356E0;
  if (!qword_280C356E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C356E0);
  }

  return result;
}

unint64_t sub_237FBDA80()
{
  result = qword_280C356D8;
  if (!qword_280C356D8)
  {
    sub_237FBDA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C356D8);
  }

  return result;
}

void _s14DeviceActivity0aB13AuthorizationC12isOverriddenSbvsZ_0(char a1)
{
  sub_238031EC4();
  v2 = os_variant_allows_internal_security_policies();

  if (v2)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = sub_238031E74();
    [v3 setBool:a1 & 1 forKey:v4];
  }
}

id sub_237FBDC28()
{
  v0 = [objc_opt_self() newConnection];
  result = [v0 resume];
  qword_27DEE50C0 = v0;
  return result;
}

void __swiftcall DeviceActivityCenter.init()(DeviceActivity::DeviceActivityCenter *__return_ptr retstr)
{
  if (qword_27DEE4CF8 != -1)
  {
    v4 = retstr;
    swift_once();
    retstr = v4;
  }

  v2 = qword_27DEE50C0;
  retstr->allowShortIntervals = 0;
  retstr->clientIdentifier = 0u;
  retstr->extensionIdentifier = 0u;
  retstr->xpcConnection.super.isa = v2;

  v3 = v2;
}

void __swiftcall DeviceActivityCenter.init(clientIdentifier:extensionIdentifier:)(DeviceActivity::DeviceActivityCenter *__return_ptr retstr, Swift::String clientIdentifier, Swift::String extensionIdentifier)
{
  if (qword_27DEE4CF8 != -1)
  {
    countAndFlagsBits = clientIdentifier._countAndFlagsBits;
    object = clientIdentifier._object;
    v7 = extensionIdentifier._object;
    v8 = extensionIdentifier._countAndFlagsBits;
    v9 = retstr;
    swift_once();
    clientIdentifier._countAndFlagsBits = countAndFlagsBits;
    clientIdentifier._object = object;
    retstr = v9;
    extensionIdentifier._countAndFlagsBits = v8;
    extensionIdentifier._object = v7;
  }

  v4 = qword_27DEE50C0;
  retstr->allowShortIntervals = 0;
  retstr->clientIdentifier.value = clientIdentifier;
  retstr->extensionIdentifier.value = extensionIdentifier;
  retstr->xpcConnection.super.isa = v4;

  MEMORY[0x2821F9908]();
}

uint64_t DeviceActivityCenter.activities.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 24);
  v5 = *(v0 + 5);
  return sub_237FBDDF0();
}

uint64_t sub_237FBDDF0()
{
  v1 = v0[1];
  v19 = *v0;
  v20 = v1;
  v21 = v0[2];
  swift_beginAccess();
  if (byte_27DEE58A0 == 2)
  {
    v16 = &type metadata for Feature.FeatureFlags;
    v17 = sub_237FBEFF4();
    LOBYTE(aBlock[0]) = 0;
    v2 = sub_238031BA4();
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    if ((v2 & 1) == 0)
    {
      return MEMORY[0x277D84F90];
    }
  }

  else if ((byte_27DEE58A0 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = MEMORY[0x277D84F90];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  v7 = v20;
  *(v6 + 16) = v19;
  *(v6 + 32) = v7;
  *(v6 + 48) = v21;
  *(v6 + 64) = v5;
  v8 = *(&v21 + 1);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  v11[2] = sub_237FC1664;
  v11[3] = v6;
  v11[4] = v9;
  v17 = sub_237FC16DC;
  v18 = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_237FC0DB8;
  v16 = &block_descriptor_82;
  v12 = _Block_copy(aBlock);

  sub_237FC0E80(&v19, v14);

  [v10 synchronousProxyFromConnection:v8 withRetryCount:1 proxyHandler:v12];
  _Block_release(v12);
  swift_beginAccess();
  if (*(v9 + 16))
  {
    swift_willThrow();
  }

  swift_beginAccess();
  v3 = *(v5 + 16);

  return v3;
}

void sub_237FBE074(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16))
  {
    v5 = *(a2 + 8);
    v6 = sub_238031E74();
  }

  else
  {
    v6 = 0;
  }

  v8[4] = sub_237FC16B0;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_237FBE648;
  v8[3] = &block_descriptor_85;
  v7 = _Block_copy(v8);

  [a1 fetchActivitiesForClient:v6 replyHandler:v7];
  _Block_release(v7);
}

void sub_237FBE16C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v22[0] = MEMORY[0x277D84F90];
      sub_23800F174(0, v3, 0);
      v4 = v22[0];
      v5 = (a1 + 40);
      do
      {
        v7 = *(v5 - 1);
        v6 = *v5;
        v22[0] = v4;
        v9 = *(v4 + 16);
        v8 = *(v4 + 24);

        if (v9 >= v8 >> 1)
        {
          sub_23800F174((v8 > 1), v9 + 1, 1);
          v4 = v22[0];
        }

        *(v4 + 16) = v9 + 1;
        v10 = v4 + 16 * v9;
        *(v10 + 32) = v7;
        *(v10 + 40) = v6;
        v5 += 2;
        --v3;
      }

      while (v3);
    }

    swift_beginAccess();
    sub_237FE7624(v4);
    swift_endAccess();
  }

  else
  {
    if (qword_27DEE4D80 != -1)
    {
      swift_once();
    }

    v12 = sub_238031DB4();
    __swift_project_value_buffer(v12, qword_27DEE95A8);
    v13 = a2;
    v14 = sub_238031D94();
    v15 = sub_2380320F4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v16 = 136446210;
      if (a2)
      {
        v18 = v17;
        v22[3] = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
        v19 = sub_238031EB4();
        v21 = sub_237FDF8EC(v19, v20, v22);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_237FA1000, v14, v15, "Failed to fetch activities:%{public}s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x2383E5E30](v18, -1, -1);
        MEMORY[0x2383E5E30](v16, -1, -1);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

id sub_237FBE3E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x277D84F90];
  sub_23800F194(0, v1, 0);
  v2 = v30;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_2380321F4();
  v7 = result;
  v8 = 0;
  v9 = *(a1 + 36);
  v26 = v1;
  v27 = v9;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v28 = v8;
    v12 = (*(a1 + 48) + 16 * v7);
    v13 = v12[1];
    v29 = *v12;
    v14 = *(*(a1 + 56) + 8 * v7);
    v15 = *(v30 + 16);
    v16 = *(v30 + 24);

    result = v14;
    if (v15 >= v16 >> 1)
    {
      v25 = result;
      sub_23800F194((v16 > 1), v15 + 1, 1);
      result = v25;
    }

    *(v30 + 16) = v15 + 1;
    v17 = (v30 + 24 * v15);
    v17[4] = v29;
    v17[5] = v13;
    v17[6] = result;
    v10 = 1 << *(a1 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v18 = *(a1 + 64 + 8 * v11);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v27;
    if (v27 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v7 & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (a1 + 72 + 8 * v11);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_237FC1560(v7, v27, 0);
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_237FC1560(v7, v27, 0);
    }

LABEL_4:
    v8 = v28 + 1;
    v7 = v10;
    if (v28 + 1 == v26)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_237FBE648(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_238031F94();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t DeviceActivityCenter.schedule(for:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(v2 + 5);
  v8 = *v2;
  v9 = *(v2 + 8);
  v10 = *(v2 + 24);
  v11 = v5;
  v7[0] = v3;
  v7[1] = v4;
  return sub_237FBE738(v7, a2);
}

uint64_t sub_237FBE738@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v2[1];
  v24 = *v2;
  v25 = v6;
  v26 = v2[2];
  result = swift_beginAccess();
  if (byte_27DEE58A0 == 2)
  {
    v21 = &type metadata for Feature.FeatureFlags;
    v22 = sub_237FBEFF4();
    LOBYTE(aBlock[0]) = 0;
    v8 = sub_238031BA4();
    result = __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    if ((v8 & 1) == 0)
    {
LABEL_3:
      *a2 = 0;
      return result;
    }
  }

  else if ((byte_27DEE58A0 & 1) == 0)
  {
    goto LABEL_3;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v5;
  v11 = v25;
  *(v10 + 32) = v24;
  *(v10 + 48) = v11;
  *(v10 + 64) = v26;
  *(v10 + 80) = v9;
  v12 = *(&v26 + 1);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  v15[2] = sub_237FC164C;
  v15[3] = v10;
  v15[4] = v13;
  v22 = sub_237FC16DC;
  v23 = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_237FC0DB8;
  v21 = &block_descriptor_65;
  v16 = _Block_copy(aBlock);

  sub_237FC0E80(&v24, v19);

  [v14 synchronousProxyFromConnection:v12 withRetryCount:1 proxyHandler:v16];
  _Block_release(v16);
  swift_beginAccess();
  if (*(v13 + 16))
  {
    swift_willThrow();
  }

  swift_beginAccess();
  v17 = *(v9 + 16);
  *a2 = v17;
  v18 = v17;
}

void sub_237FBE9C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_238031E74();
  if (*(a4 + 16))
  {
    v9 = *(a4 + 8);
    v10 = sub_238031E74();
  }

  else
  {
    v10 = 0;
  }

  v12[4] = sub_237FC165C;
  v12[5] = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_237FBECD4;
  v12[3] = &block_descriptor_68;
  v11 = _Block_copy(v12);

  [a1 fetchScheduleForActivity:v8 withClient:v10 replyHandler:v11];
  _Block_release(v11);
}

void sub_237FBEAD8(void *a1, id a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    v5 = *(a3 + 16);
    *(a3 + 16) = a1;
    v6 = a1;
  }

  else if (a2)
  {
    v8 = a2;
    if (qword_27DEE4D80 != -1)
    {
      swift_once();
    }

    v9 = sub_238031DB4();
    __swift_project_value_buffer(v9, qword_27DEE95A8);
    v10 = a2;
    v11 = sub_238031D94();
    v12 = sub_2380320F4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19[0] = v14;
      *v13 = 136446210;
      v19[3] = a2;
      v15 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
      v16 = sub_238031EB4();
      v18 = sub_237FDF8EC(v16, v17, v19);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_237FA1000, v11, v12, "Failed to fetch schedule: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x2383E5E30](v14, -1, -1);
      MEMORY[0x2383E5E30](v13, -1, -1);
    }

    else
    {
    }
  }
}

void sub_237FBECD4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t DeviceActivityCenter.events(for:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v1[1];
  v22 = *v1;
  v23 = v4;
  v24 = v1[2];
  swift_beginAccess();
  if (byte_27DEE58A0 == 2)
  {
    v19 = &type metadata for Feature.FeatureFlags;
    v20 = sub_237FBEFF4();
    LOBYTE(aBlock[0]) = 0;
    v5 = sub_238031BA4();
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    if ((v5 & 1) == 0)
    {
      return MEMORY[0x277D84F98];
    }
  }

  else if ((byte_27DEE58A0 & 1) == 0)
  {
    return MEMORY[0x277D84F98];
  }

  v7 = MEMORY[0x277D84F98];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v2;
  v10 = v23;
  *(v9 + 32) = v22;
  *(v9 + 48) = v10;
  *(v9 + 64) = v24;
  *(v9 + 80) = v8;
  v11 = *(&v24 + 1);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  v14[2] = sub_237FBF158;
  v14[3] = v9;
  v14[4] = v12;
  v20 = sub_237FC0DAC;
  v21 = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_237FC0DB8;
  v19 = &block_descriptor;
  v15 = _Block_copy(aBlock);

  sub_237FC0E80(&v22, v17);

  [v13 synchronousProxyFromConnection:v11 withRetryCount:1 proxyHandler:v15];
  _Block_release(v15);
  swift_beginAccess();
  if (*(v12 + 16))
  {
    swift_willThrow();
  }

  swift_beginAccess();
  v6 = *(v8 + 16);

  return v6;
}

unint64_t sub_237FBEFF4()
{
  result = qword_280C34B30;
  if (!qword_280C34B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34B30);
  }

  return result;
}

void sub_237FBF048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_238031E74();
  if (*(a4 + 16))
  {
    v9 = *(a4 + 8);
    v10 = sub_238031E74();
  }

  else
  {
    v10 = 0;
  }

  v12[4] = sub_237FC15EC;
  v12[5] = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_237FBF51C;
  v12[3] = &block_descriptor_51;
  v11 = _Block_copy(v12);

  [a1 fetchEventsForActivity:v8 withClient:v10 replyHandler:v11];
  _Block_release(v11);
}

void sub_237FBF168(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    v3 = a2;
    if (qword_27DEE4D80 != -1)
    {
      goto LABEL_33;
    }

    goto LABEL_24;
  }

  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v47 = a3;
  v48 = v10;
  while (v8)
  {
LABEL_12:
    v17 = __clz(__rbit64(v8)) | (v11 << 6);
    v18 = (*(v10 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    v21 = *(*(v10 + 56) + 8 * v17);
    swift_beginAccess();
    v3 = v21;

    v22 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(a3 + 16);
    v24 = v50;
    *(a3 + 16) = 0x8000000000000000;
    v25 = sub_237FA4E8C(v20, v19);
    v27 = v24[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_31;
    }

    v31 = v26;
    if (v24[3] < v30)
    {
      sub_237FCC454(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_237FA4E8C(v20, v19);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_35;
      }

LABEL_17:
      if (v31)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v36 = v25;
    sub_237FCE010();
    v25 = v36;
    if (v31)
    {
LABEL_5:
      v12 = v25;

      v13 = v50;
      v14 = v50[7];
      v15 = *(v14 + 8 * v12);
      *(v14 + 8 * v12) = v3;

      goto LABEL_6;
    }

LABEL_18:
    v13 = v50;
    v50[(v25 >> 6) + 8] |= 1 << v25;
    v33 = (v13[6] + 16 * v25);
    *v33 = v20;
    v33[1] = v19;
    *(v13[7] + 8 * v25) = v3;
    v34 = v13[2];
    v29 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v29)
    {
      goto LABEL_32;
    }

    v13[2] = v35;
LABEL_6:
    v8 &= v8 - 1;
    a3 = v47;
    *(v47 + 16) = v13;
    swift_endAccess();

    v10 = v48;
  }

  while (1)
  {
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v16 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v16);
    ++v11;
    if (v8)
    {
      v11 = v16;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  swift_once();
LABEL_24:
  v37 = sub_238031DB4();
  __swift_project_value_buffer(v37, qword_27DEE95A8);
  v38 = v3;
  v39 = sub_238031D94();
  v40 = sub_2380320F4();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v49[0] = v42;
    *v41 = 136446210;
    if (v3)
    {
      v43 = v42;
      v50 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
      v44 = sub_238031EB4();
      v46 = sub_237FDF8EC(v44, v45, v49);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_237FA1000, v39, v40, "Failed to fetch events: %{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x2383E5E30](v43, -1, -1);
      MEMORY[0x2383E5E30](v41, -1, -1);
    }

    else
    {
      __break(1u);
LABEL_35:
      sub_238032534();
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_237FBF51C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_237FC1458();
    v4 = sub_238031DF4();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t DeviceActivityCenter.MonitoringError.errorDescription.getter()
{
  v1 = *v0;
  v2 = [objc_opt_self() usageTrackingBundle];
  v3 = sub_2380316F4();

  return v3;
}

uint64_t DeviceActivityCenter.MonitoringError.recoverySuggestion.getter()
{
  v1 = *v0;
  v2 = [objc_opt_self() usageTrackingBundle];
  v3 = sub_2380316F4();

  return v3;
}

uint64_t DeviceActivityCenter.MonitoringError.hashValue.getter()
{
  v1 = *v0;
  sub_2380325B4();
  MEMORY[0x2383E5730](v1);
  return sub_2380325F4();
}

uint64_t sub_237FBF870()
{
  v1 = *v0;
  sub_2380325B4();
  MEMORY[0x2383E5730](v1);
  return sub_2380325F4();
}

uint64_t sub_237FBF8E4()
{
  v1 = *v0;
  sub_2380325B4();
  MEMORY[0x2383E5730](v1);
  return sub_2380325F4();
}

uint64_t DeviceActivityCenter.startMonitoring(_:during:events:)(uint64_t a1, void **a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v48 - v12;
  v15 = *a1;
  v14 = *(a1 + 8);
  v16 = *a2;
  v17 = v3[1];
  v58 = *v3;
  v18 = v3[2];
  v59 = v17;
  v60 = v18;
  swift_beginAccess();
  if (byte_27DEE58A0 == 2)
  {
    v55 = &type metadata for Feature.FeatureFlags;
    v56 = sub_237FBEFF4();
    LOBYTE(aBlock[0]) = 0;
    v19 = sub_238031BA4();
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    if ((v19 & 1) == 0)
    {
LABEL_3:
      sub_237FC0EB8();
      swift_allocError();
      v21 = 4;
LABEL_16:
      *v20 = v21;
      return swift_willThrow();
    }
  }

  else if ((byte_27DEE58A0 & 1) == 0)
  {
    goto LABEL_3;
  }

  v50 = v15;
  v52 = v16;
  v22 = [v16 nextInterval];
  v51 = v14;
  v23 = a3;
  if (v22)
  {
    v24 = v22;
    sub_2380315F4();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = sub_238031654();
  v27 = *(v26 - 8);
  (*(v27 + 56))(v11, v25, 1, v26);
  sub_237FC0F0C(v11, v13);
  if ((*(v27 + 48))(v13, 1, v26) == 1)
  {
    sub_237FA5750(v13, &qword_27DEE50C8, &qword_2380357C0);
    sub_237FC0EB8();
    swift_allocError();
    v21 = 3;
    goto LABEL_16;
  }

  sub_238031644();
  v29 = v28;
  (*(v27 + 8))(v13, v26);
  if ((v58 & 1) == 0 && v29 < 900.0)
  {
    sub_237FC0EB8();
    swift_allocError();
    v21 = 2;
    goto LABEL_16;
  }

  if (*(v23 + 16) && v29 > 608400.0)
  {
    sub_237FC0EB8();
    swift_allocError();
    v21 = 1;
    goto LABEL_16;
  }

  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  v49 = (v31 + 16);
  v32 = swift_allocObject();
  v33 = v51;
  *(v32 + 16) = v50;
  *(v32 + 24) = v33;
  *(v32 + 32) = v52;
  *(v32 + 40) = v23;
  v34 = v59;
  v35 = v60;
  *(v32 + 48) = v58;
  *(v32 + 64) = v34;
  *(v32 + 80) = v35;
  *(v32 + 96) = v31;
  v36 = *(&v60 + 1);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v50 = objc_opt_self();
  v38 = swift_allocObject();
  v38[2] = sub_237FC0F7C;
  v38[3] = v32;
  v38[4] = v37;
  v56 = sub_237FC16DC;
  v57 = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_237FC0DB8;
  v55 = &block_descriptor_21;
  v39 = _Block_copy(aBlock);

  v40 = v52;
  sub_237FC0E80(&v58, v53);

  [v50 synchronousProxyFromConnection:v36 withRetryCount:1 proxyHandler:v39];
  _Block_release(v39);
  swift_beginAccess();
  v41 = *(v37 + 16);
  if (v41)
  {
    v42 = *(v37 + 16);
    swift_willThrow();
    v43 = v41;
  }

  else
  {

    v44 = v49;
    swift_beginAccess();
    v45 = *v44;
    if (*v44)
    {
      v46 = *v44;
      swift_willThrow();
      v47 = v45;
    }
  }
}

void sub_237FBFEF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_238031E74();
  if (*(sub_237FBE3E8(a5) + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E8, &qword_238033EB8);
    v13 = sub_2380323A4();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  aBlock[0] = v13;

  sub_237FC10C8(v14, 1, aBlock);

  sub_237FC1458();
  v15 = sub_238031DE4();

  if (!*(a6 + 16))
  {
    v17 = 0;
    if (*(a6 + 32))
    {
      goto LABEL_6;
    }

LABEL_8:
    v19 = 0;
    goto LABEL_9;
  }

  v16 = *(a6 + 8);
  v17 = sub_238031E74();
  if (!*(a6 + 32))
  {
    goto LABEL_8;
  }

LABEL_6:
  v18 = *(a6 + 24);
  v19 = sub_238031E74();
LABEL_9:
  v20 = swift_allocObject();
  v21 = *(a6 + 16);
  *(v20 + 24) = *a6;
  *(v20 + 16) = a7;
  *(v20 + 40) = v21;
  *(v20 + 56) = *(a6 + 32);
  aBlock[4] = sub_237FC14FC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_237FE7844;
  aBlock[3] = &block_descriptor_48;
  v22 = _Block_copy(aBlock);

  sub_237FC0E80(a6, v23);

  [a1 startMonitoringActivity:v12 withSchedule:a4 events:v15 forClient:v17 withExtension:v19 replyHandler:v22];
  _Block_release(v22);
}

void sub_237FC014C(void *a1, uint64_t a2, __int128 *a3)
{
  if (a1)
  {
    v8 = *a3;
    v9 = a3[1];
    v10 = a3[2];
    v5 = a1;
    v6 = sub_237FC01D4(a1);

    swift_beginAccess();
    v7 = *(a2 + 16);
    *(a2 + 16) = v6;
  }
}

id sub_237FC01D4(void *a1)
{
  v1 = a1;
  v29 = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
  type metadata accessor for USError(0);
  if (swift_dynamicCast())
  {
    v3 = v28;
    v29 = v28;
    sub_237FC1508();
    sub_238031824();
    if (v28 == 2)
    {
      sub_237FC0EB8();
      v1 = swift_allocError();
      *v16 = 4;
    }

    else if (v28 == 103)
    {
      sub_237FC0EB8();
      v1 = swift_allocError();
      *v4 = 0;
    }

    else
    {
      if (qword_27DEE4D80 != -1)
      {
        swift_once();
      }

      v17 = sub_238031DB4();
      __swift_project_value_buffer(v17, qword_27DEE95A8);
      v1 = v28;
      v18 = sub_238031D94();
      v19 = sub_2380320F4();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v27 = v21;
        *v20 = 136446210;
        v22 = v1;
        v23 = sub_238031EB4();
        v25 = sub_237FDF8EC(v23, v24, &v27);

        *(v20 + 4) = v25;
        _os_log_impl(&dword_237FA1000, v18, v19, "System error occurred: %{public}s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x2383E5E30](v21, -1, -1);
        MEMORY[0x2383E5E30](v20, -1, -1);
      }
    }
  }

  else
  {
    if (qword_27DEE4D80 != -1)
    {
      swift_once();
    }

    v5 = sub_238031DB4();
    __swift_project_value_buffer(v5, qword_27DEE95A8);
    v6 = v1;
    v7 = sub_238031D94();
    v8 = sub_2380320F4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28 = v1;
      v29 = v10;
      *v9 = 136446210;
      v11 = v1;
      v12 = sub_238031EB4();
      v14 = sub_237FDF8EC(v12, v13, &v29);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_237FA1000, v7, v8, "System error occurred: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x2383E5E30](v10, -1, -1);
      MEMORY[0x2383E5E30](v9, -1, -1);
    }

    v15 = v1;
  }

  return v1;
}

Swift::Void __swiftcall DeviceActivityCenter.stopMonitoring(_:)(Swift::OpaquePointer a1)
{
  v3 = v1[1];
  v17 = *v1;
  v18 = v3;
  v19 = v1[2];
  swift_beginAccess();
  if (byte_27DEE58A0 == 2)
  {
    v14 = &type metadata for Feature.FeatureFlags;
    v15 = sub_237FBEFF4();
    LOBYTE(aBlock[0]) = 0;
    v4 = sub_238031BA4();
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  else if ((byte_27DEE58A0 & 1) == 0)
  {
    return;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = v18;
  *(v5 + 24) = v17;
  *(v5 + 40) = v6;
  *(v5 + 56) = v19;
  v7 = *(&v19 + 1);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  v10[2] = sub_237FC0F90;
  v10[3] = v5;
  v10[4] = v8;
  v15 = sub_237FC16DC;
  v16 = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_237FC0DB8;
  v14 = &block_descriptor_32;
  v11 = _Block_copy(aBlock);

  sub_237FC0E80(&v17, v12);

  [v9 synchronousProxyFromConnection:v7 withRetryCount:1 proxyHandler:v11];
  _Block_release(v11);
  swift_beginAccess();
  if (*(v8 + 16))
  {
    swift_willThrow();
  }
}

void sub_237FC0774(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 + 16);
  if (v6)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23800F1B4(0, v6, 0);
    v7 = aBlock[0];
    v8 = (a2 + 40);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      aBlock[0] = v7;
      v11 = *(v7 + 16);
      v12 = *(v7 + 24);

      if (v11 >= v12 >> 1)
      {
        sub_23800F1B4((v12 > 1), v11 + 1, 1);
        v7 = aBlock[0];
      }

      *(v7 + 16) = v11 + 1;
      v13 = v7 + 16 * v11;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      v8 += 2;
      --v6;
    }

    while (v6);
    v14 = sub_238031F84();

    v5 = a1;
    if (*(a3 + 16))
    {
      goto LABEL_7;
    }

LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  v14 = 0;
  if (!*(a3 + 16))
  {
    goto LABEL_9;
  }

LABEL_7:
  v15 = *(a3 + 8);
  v16 = sub_238031E74();
LABEL_10:
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  aBlock[4] = sub_237FC10C0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_237FE7844;
  aBlock[3] = &block_descriptor_42;
  v18 = _Block_copy(aBlock);

  [v5 stopMonitoringActivities:v14 forClient:v16 replyHandler:v18];
  _Block_release(v18);
}

void sub_237FC0958(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_27DEE4D80 != -1)
    {
      swift_once();
    }

    v5 = sub_238031DB4();
    __swift_project_value_buffer(v5, qword_27DEE95A8);
    v6 = a1;

    v7 = sub_238031D94();
    v8 = sub_2380320F4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446466;
      v11 = MEMORY[0x2383E5110](a2, &type metadata for DeviceActivityName);
      v13 = sub_237FDF8EC(v11, v12, &v18);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      v14 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
      v15 = sub_238031EB4();
      v17 = sub_237FDF8EC(v15, v16, &v18);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_237FA1000, v7, v8, "Failed to stop monitoring %{public}s: %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2383E5E30](v10, -1, -1);
      MEMORY[0x2383E5E30](v9, -1, -1);
    }

    else
    {
    }
  }
}

void sub_237FC0B74(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  sub_237FC157C(a1, v21);
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5100, &qword_238033EC8);
    if (swift_dynamicCast())
    {
      a3(v20);
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    sub_237FA5750(v21, &qword_27DEE50F8, &qword_238033EC0);
  }

  swift_beginAccess();
  v8 = *(a5 + 16);
  *(a5 + 16) = a2;
  v9 = a2;

  if (qword_27DEE4D80 != -1)
  {
    swift_once();
  }

  v10 = sub_238031DB4();
  __swift_project_value_buffer(v10, qword_27DEE95A8);
  v11 = a2;
  v12 = sub_238031D94();
  v13 = sub_2380320F4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136446210;
    if (a2)
    {
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
      v17 = sub_238031EB4();
      v19 = sub_237FDF8EC(v17, v18, &v20);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_237FA1000, v12, v13, "Failed to create UsageTrackingAgent proxy: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x2383E5E30](v16, -1, -1);
      MEMORY[0x2383E5E30](v14, -1, -1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_237FC0DB8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v9 = a2;
    sub_237FC156C(&v9, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v11, a3);

  return sub_237FA5750(v11, &qword_27DEE50F8, &qword_238033EC0);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_237FC0EB8()
{
  result = qword_27DEE50D0;
  if (!qword_27DEE50D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE50D0);
  }

  return result;
}

uint64_t sub_237FC0F0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_237FC0FA0()
{
  result = qword_27DEE50D8;
  if (!qword_27DEE50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE50D8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_237FC100C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_237FC1054(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

void sub_237FC10C8(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_237FA4E8C(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_237FCC6F8(v16, v5 & 1);
    v18 = *a3;
    v11 = sub_237FA4E8C(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_238032534();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  sub_237FCE17C();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v24 = (v23[6] + 16 * v11);
  *v24 = v7;
  v24[1] = v6;
  *(v23[7] + 8 * v11) = v10;
  v25 = v23[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_2380322B4();
    MEMORY[0x2383E5050](0xD00000000000001BLL, 0x8000000238036CC0);
    sub_238032354();
    MEMORY[0x2383E5050](39, 0xE100000000000000);
    sub_238032364();
    __break(1u);
    return;
  }

  v23[2] = v26;
  if (v41 != 1)
  {
    v5 = (a1 + 9);
    v27 = 1;
    while (v27 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v28 = *v5;
      v29 = *a3;

      v10 = v28;
      v30 = sub_237FA4E8C(v7, v6);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v15 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v31;
      if (v29[3] < v34)
      {
        sub_237FCC6F8(v34, 1);
        v35 = *a3;
        v30 = sub_237FA4E8C(v7, v6);
        if ((v17 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v7;
      v38[1] = v6;
      *(v37[7] + 8 * v30) = v10;
      v39 = v37[2];
      v15 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v27;
      v37[2] = v40;
      v5 += 3;
      if (v41 == v27)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

unint64_t sub_237FC1458()
{
  result = qword_27DEE50F0;
  if (!qword_27DEE50F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEE50F0);
  }

  return result;
}

uint64_t objectdestroy_23Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 40);

  v3 = *(v1 + 56);

  return MEMORY[0x2821FE8E8](v1, 72, 7);
}

unint64_t sub_237FC1508()
{
  result = qword_27DEE4F70;
  if (!qword_27DEE4F70)
  {
    type metadata accessor for USError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE4F70);
  }

  return result;
}

uint64_t sub_237FC1560(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

_OWORD *sub_237FC156C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_237FC157C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50F8, &qword_238033EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t DeviceActivityData.device.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DeviceActivityData(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
}

__n128 DeviceActivityData.device.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_i64[1];
  v5 = a1[3].n128_i8[0];
  v6 = (v1 + *(type metadata accessor for DeviceActivityData(0) + 20));
  v7 = v6->n128_i64[1];
  v8 = v6[1].n128_i64[1];
  v9 = v6[2].n128_i64[1];

  v6->n128_u64[0] = v3;
  v6->n128_u64[1] = v4;
  result = a1[1];
  v11 = a1[2];
  v6[1] = result;
  v6[2] = v11;
  v6[3].n128_u8[0] = v5;
  return result;
}

uint64_t sub_237FC1918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FC19AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t DeviceActivityData.lastUpdatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeviceActivityData(0) + 28);
  v4 = sub_238031A64();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DeviceActivityData.lastUpdatedDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceActivityData(0) + 28);
  v4 = sub_238031A64();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DeviceActivityData.activitySegmentRecordNames.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeviceActivityData(0) + 32));
}

uint64_t DeviceActivityData.activitySegmentRecordNames.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceActivityData(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DeviceActivityData.elementFetcher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DeviceActivityData(0) + 36);

  return sub_237FC1C9C(v3, a1);
}

uint64_t sub_237FC1C9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t DeviceActivityData.elementFetcher.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for DeviceActivityData(0) + 36);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));

  return sub_237FB0034(a1, v1 + v3);
}

uint64_t DeviceActivityData.init(user:device:segmentInterval:lastUpdatedDate:activitySegmentRecordNames:elementFetcher:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a2;
  v14 = a2[1];
  v15 = *(a2 + 48);
  sub_237FC1EC0(a1, a7, type metadata accessor for DeviceActivityData.User);
  v16 = type metadata accessor for DeviceActivityData(0);
  v17 = a7 + v16[5];
  *v17 = v13;
  *(v17 + 8) = v14;
  v18 = *(a2 + 2);
  *(v17 + 16) = *(a2 + 1);
  *(v17 + 32) = v18;
  *(v17 + 48) = v15;
  sub_237FC1EC0(a3, a7 + v16[6], type metadata accessor for DeviceActivityFilter.SegmentInterval);
  v19 = v16[7];
  v20 = sub_238031A64();
  (*(*(v20 - 8) + 32))(a7 + v19, a4, v20);
  *(a7 + v16[8]) = a5;
  v21 = a7 + v16[9];

  return sub_237FB0034(a6, v21);
}

uint64_t sub_237FC1EC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FC1F2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2380324E4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_237FC1FBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceActivityData.WebDomainActivity(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v47 = type metadata accessor for DeviceActivityData.CategoryActivity(0);
  v12 = *(*(v47 - 1) + 64);
  v13 = MEMORY[0x28223BE20](v47);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = &v38 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
    return 0;
  }

  if (!v19 || a1 == a2)
  {
    return 1;
  }

  v46 = v4;
  v20 = 0;
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v22 = a1 + v21;
  v41 = a1 + v21;
  v42 = a2 + v21;
  v23 = *(v16 + 72);
  v44 = v19;
  v39 = v5;
  v40 = v23;
  while (1)
  {
    result = sub_237FC1918(v22 + v23 * v20, v18, type metadata accessor for DeviceActivityData.CategoryActivity);
    if (v20 == v44)
    {
      break;
    }

    v43 = v20;
    sub_237FC1918(v42 + v23 * v20, v15, type metadata accessor for DeviceActivityData.CategoryActivity);
    if ((MEMORY[0x2383E4DA0](v18, v15) & 1) == 0)
    {
      goto LABEL_22;
    }

    if (*&v18[v47[5]] != *&v15[v47[5]])
    {
      goto LABEL_22;
    }

    if ((sub_237FC23F4(*&v18[v47[6]], *&v15[v47[6]]) & 1) == 0)
    {
      goto LABEL_22;
    }

    v25 = v47[7];
    v26 = *&v18[v25];
    v27 = *&v15[v25];
    v28 = *(v26 + 16);
    if (v28 != *(v27 + 16))
    {
      goto LABEL_22;
    }

    if (v28 && v26 != v27)
    {
      v29 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v30 = v26 + v29;
      v31 = v27 + v29;
      v45 = *(v39 + 72);
      while (1)
      {
        sub_237FC1918(v30, v11, type metadata accessor for DeviceActivityData.WebDomainActivity);
        sub_237FC1918(v31, v9, type metadata accessor for DeviceActivityData.WebDomainActivity);
        v32 = MEMORY[0x2383E4DE0](v11, v9);
        v33 = v46;
        if ((v32 & 1) == 0 || *&v11[*(v46 + 20)] != *&v9[*(v46 + 20)])
        {
          break;
        }

        v34 = v15;
        v35 = v11[*(v46 + 24)];
        sub_237FAB774(v11, type metadata accessor for DeviceActivityData.WebDomainActivity);
        v36 = v9[*(v33 + 24)];
        sub_237FAB774(v9, type metadata accessor for DeviceActivityData.WebDomainActivity);
        v37 = v35 == v36;
        v15 = v34;
        if (!v37)
        {
          goto LABEL_22;
        }

        v31 += v45;
        v30 += v45;
        if (!--v28)
        {
          goto LABEL_6;
        }
      }

      sub_237FAB774(v9, type metadata accessor for DeviceActivityData.WebDomainActivity);
      sub_237FAB774(v11, type metadata accessor for DeviceActivityData.WebDomainActivity);
LABEL_22:
      sub_237FAB774(v15, type metadata accessor for DeviceActivityData.CategoryActivity);
      sub_237FAB774(v18, type metadata accessor for DeviceActivityData.CategoryActivity);
      return 0;
    }

LABEL_6:
    v20 = v43 + 1;
    sub_237FAB774(v15, type metadata accessor for DeviceActivityData.CategoryActivity);
    sub_237FAB774(v18, type metadata accessor for DeviceActivityData.CategoryActivity);
    result = 1;
    v23 = v40;
    v22 = v41;
    if (v20 == v44)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237FC23F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_237FC1918(v14, v11, type metadata accessor for DeviceActivityData.ApplicationActivity);
        sub_237FC1918(v15, v8, type metadata accessor for DeviceActivityData.ApplicationActivity);
        if ((MEMORY[0x2383E4D40](v11, v8) & 1) == 0 || *&v11[v4[5]] != *&v8[v4[5]] || *&v11[v4[6]] != *&v8[v4[6]] || *&v11[v4[7]] != *&v8[v4[7]])
        {
          break;
        }

        v17 = v11[v4[8]];
        sub_237FAB774(v11, type metadata accessor for DeviceActivityData.ApplicationActivity);
        v18 = v8[v4[8]];
        sub_237FAB774(v8, type metadata accessor for DeviceActivityData.ApplicationActivity);
        if (((v17 ^ v18) & 1) == 0)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        v19 = v17 ^ v18 ^ 1;
        return v19 & 1;
      }

      sub_237FAB774(v8, type metadata accessor for DeviceActivityData.ApplicationActivity);
      sub_237FAB774(v11, type metadata accessor for DeviceActivityData.ApplicationActivity);
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_237FC2644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceActivityData.WebDomainActivity(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_237FC1918(v14, v11, type metadata accessor for DeviceActivityData.WebDomainActivity);
        sub_237FC1918(v15, v8, type metadata accessor for DeviceActivityData.WebDomainActivity);
        if ((MEMORY[0x2383E4DE0](v11, v8) & 1) == 0 || *&v11[*(v4 + 20)] != *&v8[*(v4 + 20)])
        {
          break;
        }

        v17 = v11[*(v4 + 24)];
        sub_237FAB774(v11, type metadata accessor for DeviceActivityData.WebDomainActivity);
        v18 = v8[*(v4 + 24)];
        sub_237FAB774(v8, type metadata accessor for DeviceActivityData.WebDomainActivity);
        if (((v17 ^ v18) & 1) == 0)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        v19 = v17 ^ v18 ^ 1;
        return v19 & 1;
      }

      sub_237FAB774(v8, type metadata accessor for DeviceActivityData.WebDomainActivity);
      sub_237FAB774(v11, type metadata accessor for DeviceActivityData.WebDomainActivity);
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_237FC286C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v105 = *(v4 - 8);
  v5 = *(v105 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v83 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v83 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C8, &unk_2380343F0);
  v12 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v111 = &v83 - v13;
  v110 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v112 = *(v110 - 8);
  v14 = *(v112 + 64);
  v15 = MEMORY[0x28223BE20](v110);
  v17 = (&v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = (&v83 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v83 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v106 = &v83 - v27;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D8, &qword_238034408);
  v28 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v108 = &v83 - v29;
  v113 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v30 = *(*(v113 - 1) + 64);
  v31 = MEMORY[0x28223BE20](v113);
  v115 = (&v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v114 = (&v83 - v34);
  v35 = *(a1 + 16);
  if (v35 != *(a2 + 16))
  {
LABEL_51:
    v82 = 0;
    return v82 & 1;
  }

  if (!v35 || a1 == a2)
  {
    v82 = 1;
    return v82 & 1;
  }

  v84 = v24;
  v93 = v20;
  v36 = 0;
  v37 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v38 = a1 + v37;
  v94 = a2 + v37;
  v92 = (v21 + 48);
  v83 = (v21 + 32);
  v85 = (v21 + 8);
  v88 = (v105 + 32);
  v90 = (v105 + 8);
  v39 = *(v33 + 72);
  v40 = v114;
  v102 = v4;
  v89 = v7;
  v91 = v11;
  v103 = v35;
  v87 = a1 + v37;
  v104 = (v105 + 48);
  v86 = v39;
  while (1)
  {
    result = sub_237FC1918(v38 + v39 * v36, v40, type metadata accessor for _DeviceActivityData.CategoryActivity);
    if (v36 == v103)
    {
      break;
    }

    v97 = v36;
    v42 = v115;
    sub_237FC1918(v94 + v39 * v36, v115, type metadata accessor for _DeviceActivityData.CategoryActivity);
    v43 = *v40 == *v42 && v40[1] == v42[1];
    v45 = v110;
    v44 = v111;
    if (!v43 && (sub_2380324E4() & 1) == 0)
    {
      goto LABEL_50;
    }

    v46 = v113[5];
    v47 = v108;
    v48 = *(v107 + 48);
    sub_237FA90E4(v114 + v46, v108, &qword_27DEE51D0, &qword_238034400);
    sub_237FA90E4(v115 + v46, v47 + v48, &qword_27DEE51D0, &qword_238034400);
    v49 = *v92;
    v50 = v93;
    if ((*v92)(v47, 1, v93) == 1)
    {
      if (v49(v47 + v48, 1, v50) != 1)
      {
        goto LABEL_54;
      }

      result = sub_237FA5750(v47, &qword_27DEE51D0, &qword_238034400);
      v51 = v104;
    }

    else
    {
      v52 = v106;
      sub_237FA90E4(v47, v106, &qword_27DEE51D0, &qword_238034400);
      if (v49(v47 + v48, 1, v50) == 1)
      {
        (*v85)(v52, v50);
LABEL_54:
        sub_237FA5750(v47, &qword_27DEE51D8, &qword_238034408);
LABEL_50:
        sub_237FAB774(v115, type metadata accessor for _DeviceActivityData.CategoryActivity);
        sub_237FAB774(v114, type metadata accessor for _DeviceActivityData.CategoryActivity);
        goto LABEL_51;
      }

      v53 = v84;
      (*v83)(v84, v47 + v48, v50);
      sub_237FC8764(&qword_27DEE5098, &qword_27DEE4FF0, &unk_238033980);
      LODWORD(v105) = sub_238031E64();
      v54 = *v85;
      (*v85)(v53, v50);
      v54(v52, v50);
      result = sub_237FA5750(v47, &qword_27DEE51D0, &qword_238034400);
      v51 = v104;
      if ((v105 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    if (*(v114 + v113[6]) != *(v115 + v113[6]))
    {
      goto LABEL_50;
    }

    v55 = v113[7];
    v56 = *(v114 + v55);
    v57 = *(v115 + v55);
    v58 = *(v56 + 16);
    if (v58 != *(v57 + 16))
    {
      goto LABEL_50;
    }

    if (v58 && v56 != v57)
    {
      v59 = 0;
      v60 = (*(v112 + 80) + 32) & ~*(v112 + 80);
      v105 = v56 + v60;
      v100 = v17;
      v101 = v57 + v60;
      v98 = v57;
      v99 = v19;
      v95 = v58;
      v96 = v56;
      while (1)
      {
        v61 = v102;
        if (v59 >= *(v56 + 16))
        {
          break;
        }

        v62 = *(v112 + 72) * v59;
        result = sub_237FC1918(v105 + v62, v19, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        if (v59 >= *(v57 + 16))
        {
          goto LABEL_56;
        }

        sub_237FC1918(v101 + v62, v17, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        if ((*v19 != *v17 || v19[1] != v17[1]) && (sub_2380324E4() & 1) == 0)
        {
          goto LABEL_49;
        }

        v63 = v45[5];
        v64 = *(v109 + 48);
        sub_237FA90E4(v19 + v63, v44, &qword_27DEE51C0, &unk_238034790);
        sub_237FA90E4(v17 + v63, v44 + v64, &qword_27DEE51C0, &unk_238034790);
        v65 = *v51;
        if ((*v51)(v44, 1, v61) == 1)
        {
          v66 = v65(v44 + v64, 1, v61);
          v19 = v99;
          if (v66 != 1)
          {
            goto LABEL_48;
          }

          sub_237FA5750(v44, &qword_27DEE51C0, &unk_238034790);
          v17 = v100;
          v57 = v98;
        }

        else
        {
          v67 = v91;
          sub_237FA90E4(v44, v91, &qword_27DEE51C0, &unk_238034790);
          if (v65(v44 + v64, 1, v61) == 1)
          {
            (*v90)(v67, v61);
            v19 = v99;
LABEL_48:
            sub_237FA5750(v44, &qword_27DEE51C8, &unk_2380343F0);
            v17 = v100;
LABEL_49:
            sub_237FAB774(v17, type metadata accessor for _DeviceActivityData.ApplicationActivity);
            sub_237FAB774(v19, type metadata accessor for _DeviceActivityData.ApplicationActivity);
            goto LABEL_50;
          }

          v68 = v44 + v64;
          v69 = v89;
          (*v88)(v89, v68, v61);
          sub_237FC8764(&qword_27DEE50A0, &qword_27DEE4FF8, &unk_2380343E0);
          v70 = sub_238031E64();
          v71 = *v90;
          v72 = v69;
          v44 = v111;
          (*v90)(v72, v61);
          v71(v67, v61);
          v51 = v104;
          sub_237FA5750(v44, &qword_27DEE51C0, &unk_238034790);
          v45 = v110;
          v19 = v99;
          v17 = v100;
          v57 = v98;
          if ((v70 & 1) == 0)
          {
            goto LABEL_49;
          }
        }

        v73 = v45[6];
        v74 = (v19 + v73);
        v75 = *(v19 + v73 + 8);
        v76 = (v17 + v73);
        v77 = v76[1];
        if (v75)
        {
          if (!v77 || (*v74 != *v76 || v75 != v77) && (sub_2380324E4() & 1) == 0)
          {
            goto LABEL_49;
          }
        }

        else if (v77)
        {
          goto LABEL_49;
        }

        if (*(v19 + v45[7]) != *(v17 + v45[7]) || *(v19 + v45[8]) != *(v17 + v45[8]) || *(v19 + v45[9]) != *(v17 + v45[9]))
        {
          goto LABEL_49;
        }

        v78 = v45[10];
        v79 = *(v19 + v78);
        v80 = *(v17 + v78);
        sub_237FAB774(v17, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        result = sub_237FAB774(v19, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v56 = v96;
        if (v79 != v80)
        {
          goto LABEL_50;
        }

        if (v95 == ++v59)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
      break;
    }

LABEL_43:
    v40 = v114;
    v81 = v115;
    v82 = sub_237FC3A10(*(v114 + v113[8]), *(v115 + v113[8]));
    sub_237FAB774(v81, type metadata accessor for _DeviceActivityData.CategoryActivity);
    sub_237FAB774(v40, type metadata accessor for _DeviceActivityData.CategoryActivity);
    if (v82)
    {
      v36 = v97 + 1;
      v38 = v87;
      v39 = v86;
      if (v97 + 1 != v103)
      {
        continue;
      }
    }

    return v82 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237FC3438(uint64_t a1, uint64_t a2)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v4 = *(v57 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v46 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C8, &unk_2380343F0);
  v11 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v13 = &v46 - v12;
  v14 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v15 = *(*(v14 - 1) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v21 = (&v46 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_32:
    v44 = 0;
    return v44 & 1;
  }

  if (v22 && a1 != a2)
  {
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v46 = (v4 + 32);
    v47 = v14;
    v48 = (v4 + 8);
    v49 = v10;
    v52 = *(v19 + 72);
    v53 = (v4 + 48);
    while (1)
    {
      sub_237FC1918(v24, v21, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      sub_237FC1918(v25, v18, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v26 = *v21 == *v18 && v21[1] == v18[1];
      if (!v26 && (sub_2380324E4() & 1) == 0)
      {
        break;
      }

      v55 = v22;
      v27 = v14[5];
      v28 = *(v56 + 48);
      sub_237FA90E4(v21 + v27, v13, &qword_27DEE51C0, &unk_238034790);
      sub_237FA90E4(v18 + v27, &v13[v28], &qword_27DEE51C0, &unk_238034790);
      v29 = *v53;
      if ((*v53)(v13, 1, v57) == 1)
      {
        if (v29(&v13[v28], 1, v57) != 1)
        {
          goto LABEL_30;
        }

        sub_237FA5750(v13, &qword_27DEE51C0, &unk_238034790);
        v30 = v55;
      }

      else
      {
        v31 = v25;
        v32 = v49;
        sub_237FA90E4(v13, v49, &qword_27DEE51C0, &unk_238034790);
        if (v29(&v13[v28], 1, v57) == 1)
        {
          (*v48)(v32, v57);
LABEL_30:
          sub_237FA5750(v13, &qword_27DEE51C8, &unk_2380343F0);
          break;
        }

        v33 = *v46;
        v51 = v24;
        v34 = v54;
        v35 = v57;
        v33(v54, &v13[v28], v57);
        sub_237FC8764(&qword_27DEE50A0, &qword_27DEE4FF8, &unk_2380343E0);
        v50 = sub_238031E64();
        v36 = *v48;
        v37 = v34;
        v24 = v51;
        (*v48)(v37, v35);
        v36(v32, v35);
        sub_237FA5750(v13, &qword_27DEE51C0, &unk_238034790);
        v25 = v31;
        v14 = v47;
        v30 = v55;
        if ((v50 & 1) == 0)
        {
          break;
        }
      }

      v38 = v14[6];
      v39 = (v21 + v38);
      v40 = *(v21 + v38 + 8);
      v41 = (v18 + v38);
      v42 = v41[1];
      if (v40)
      {
        if (!v42 || (*v39 != *v41 || v40 != v42) && (sub_2380324E4() & 1) == 0)
        {
          break;
        }
      }

      else if (v42)
      {
        break;
      }

      if (*(v21 + v14[7]) != *(v18 + v14[7]) || *(v21 + v14[8]) != *(v18 + v14[8]) || *(v21 + v14[9]) != *(v18 + v14[9]))
      {
        break;
      }

      v43 = *(v21 + v14[10]) ^ *(v18 + v14[10]);
      sub_237FAB774(v18, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      sub_237FAB774(v21, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      if ((v43 & 1) == 0)
      {
        v25 += v52;
        v24 += v52;
        v22 = v30 - 1;
        if (v22)
        {
          continue;
        }
      }

      v44 = v43 ^ 1;
      return v44 & 1;
    }

    sub_237FAB774(v18, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    sub_237FAB774(v21, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    goto LABEL_32;
  }

  v44 = 1;
  return v44 & 1;
}

uint64_t sub_237FC3A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v40 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B8, &qword_2380343D8);
  v12 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v14 = &v40 - v13;
  v51 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v15 = *(*(v51 - 1) + 64);
  v16 = MEMORY[0x28223BE20](v51);
  v18 = (&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v21 = (&v40 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_23:
    v38 = 0;
    return v38 & 1;
  }

  if (v22 && a1 != a2)
  {
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v47 = (v5 + 48);
    v48 = v4;
    v40 = (v5 + 32);
    v41 = v8;
    v42 = (v5 + 8);
    v45 = *(v19 + 72);
    v46 = v18;
    v26 = &qword_27DEE51B0;
    while (1)
    {
      sub_237FC1918(v24, v21, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      sub_237FC1918(v25, v18, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v27 = *v21 == *v18 && v21[1] == v18[1];
      if (!v27 && (sub_2380324E4() & 1) == 0)
      {
        break;
      }

      v28 = v51[5];
      v29 = *(v50 + 48);
      sub_237FA90E4(v21 + v28, v14, v26, &qword_2380343D0);
      sub_237FA90E4(v18 + v28, &v14[v29], v26, &qword_2380343D0);
      v30 = v26;
      v31 = v48;
      v32 = *v47;
      if ((*v47)(v14, 1, v48) == 1)
      {
        if (v32(&v14[v29], 1, v31) != 1)
        {
          goto LABEL_21;
        }

        sub_237FA5750(v14, v26, &qword_2380343D0);
        v18 = v46;
      }

      else
      {
        sub_237FA90E4(v14, v49, v26, &qword_2380343D0);
        if (v32(&v14[v29], 1, v31) == 1)
        {
          (*v42)(v49, v31);
LABEL_21:
          sub_237FA5750(v14, &qword_27DEE51B8, &qword_2380343D8);
          v18 = v46;
          break;
        }

        v33 = v41;
        v34 = &v14[v29];
        v35 = v49;
        (*v40)(v41, v34, v31);
        sub_237FC8764(&qword_27DEE5090, &qword_27DEE4FE8, &unk_238035410);
        v43 = sub_238031E64();
        v44 = v24;
        v36 = *v42;
        (*v42)(v33, v31);
        v36(v35, v31);
        v24 = v44;
        sub_237FA5750(v14, v30, &qword_2380343D0);
        v26 = v30;
        v18 = v46;
        if ((v43 & 1) == 0)
        {
          break;
        }
      }

      if (*(v21 + v51[6]) != *(v18 + v51[6]))
      {
        break;
      }

      v37 = *(v21 + v51[7]) ^ *(v18 + v51[7]);
      sub_237FAB774(v18, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      sub_237FAB774(v21, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      if ((v37 & 1) == 0)
      {
        v25 += v45;
        v24 += v45;
        if (--v22)
        {
          continue;
        }
      }

      v38 = v37 ^ 1;
      return v38 & 1;
    }

    sub_237FAB774(v18, type metadata accessor for _DeviceActivityData.WebDomainActivity);
    sub_237FAB774(v21, type metadata accessor for _DeviceActivityData.WebDomainActivity);
    goto LABEL_23;
  }

  v38 = 1;
  return v38 & 1;
}

uint64_t DeviceActivityData.hash(into:)()
{
  v1 = v0;
  v2 = sub_2380317D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  if (v0[1])
  {
    v11 = *v0;
    sub_2380325D4();
    sub_238031ED4();
    if (v0[3])
    {
LABEL_3:
      v12 = v0[2];
      sub_2380325D4();
      sub_238031ED4();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2380325D4();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  sub_2380325D4();
LABEL_6:
  v13 = type metadata accessor for DeviceActivityData.User(0);
  sub_237FA90E4(v0 + *(v13 + 24), v10, &qword_27DEE5108, &qword_238033EE0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_2380325D4();
    sub_237FC7580(&qword_27DEE5110, MEMORY[0x277CC8E50]);
    sub_238031E34();
    (*(v3 + 8))(v6, v2);
  }

  MEMORY[0x2383E5730](*(v0 + *(v13 + 28)));
  v14 = type metadata accessor for DeviceActivityData(0);
  v15 = v0 + v14[5];
  v16 = *v15;
  v17 = *(v15 + 1);
  v18 = *(v15 + 2);
  v19 = *(v15 + 3);
  v20 = *(v15 + 4);
  v21 = *(v15 + 5);
  v22 = v15[48];
  sub_238031ED4();
  if (v19)
  {
    sub_2380325D4();
    sub_238031ED4();
    if (v21)
    {
LABEL_11:
      sub_2380325D4();
      sub_238031ED4();
      goto LABEL_14;
    }
  }

  else
  {
    sub_2380325D4();
    if (v21)
    {
      goto LABEL_11;
    }
  }

  sub_2380325D4();
LABEL_14:
  MEMORY[0x2383E5730](v22 - 1);
  v23 = v0 + v14[6];
  DeviceActivityFilter.SegmentInterval.hash(into:)();
  v24 = v14[7];
  sub_238031A64();
  sub_237FC7580(&qword_27DEE5118, MEMORY[0x277CC9578]);
  sub_238031E34();
  v25 = *(v1 + v14[8]);
  result = MEMORY[0x2383E5730](*(v25 + 16));
  v27 = *(v25 + 16);
  if (v27)
  {
    v28 = (v25 + 40);
    do
    {
      v29 = *(v28 - 1);
      v30 = *v28;

      sub_238031ED4();

      v28 += 2;
      --v27;
    }

    while (v27);
  }

  return result;
}

uint64_t _DeviceActivityData.Metadata.recordName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t _DeviceActivityData.Metadata.recordSystemFields.getter()
{
  v1 = *(v0 + 16);
  sub_237FC75C8(v1, *(v0 + 24));
  return v1;
}

uint64_t _DeviceActivityData.Metadata.recordSystemFields.setter(uint64_t a1, uint64_t a2)
{
  result = sub_237FA38D0(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t _DeviceActivityData.Metadata.device.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for _DeviceActivityData.Metadata(0) + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = *(v3 + 40);
}

__n128 _DeviceActivityData.Metadata.device.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_i64[1];
  v5 = a1[3].n128_i64[0];
  v6 = (v1 + *(type metadata accessor for _DeviceActivityData.Metadata(0) + 28));
  v7 = v6->n128_i64[1];
  v8 = v6[1].n128_i64[1];
  v9 = v6[2].n128_i64[1];

  v6->n128_u64[0] = v3;
  v6->n128_u64[1] = v4;
  result = a1[1];
  v11 = a1[2];
  v6[1] = result;
  v6[2] = v11;
  v6[3].n128_u64[0] = v5;
  return result;
}

uint64_t _DeviceActivityData.Metadata.segmentInterval.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for _DeviceActivityData.Metadata(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t _DeviceActivityData.Metadata.segmentInterval.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for _DeviceActivityData.Metadata(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t _DeviceActivityData.Metadata.lastUpdatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _DeviceActivityData.Metadata(0) + 36);
  v4 = sub_238031A64();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _DeviceActivityData.Metadata.lastUpdatedDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _DeviceActivityData.Metadata(0) + 36);
  v4 = sub_238031A64();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t _DeviceActivityData.Metadata.init(recordName:recordSystemFields:user:device:segmentInterval:lastUpdatedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v15 = *a6;
  v16 = a6[1];
  v17 = a6[6];
  v18 = *a7;
  *a9 = a1;
  a9[1] = a2;
  sub_237FA38D0(0, 0xF000000000000000);
  a9[2] = a3;
  a9[3] = a4;
  v19 = type metadata accessor for _DeviceActivityData.Metadata(0);
  sub_237FC1EC0(a5, a9 + v19[6], type metadata accessor for _DeviceActivityData.User);
  v20 = a9 + v19[7];
  *v20 = v15;
  *(v20 + 1) = v16;
  v21 = *(a6 + 2);
  *(v20 + 1) = *(a6 + 1);
  *(v20 + 2) = v21;
  *(v20 + 6) = v17;
  *(a9 + v19[8]) = v18;
  v22 = v19[9];
  v23 = sub_238031A64();
  v24 = *(*(v23 - 8) + 32);

  return v24(a9 + v22, a8, v23);
}

uint64_t sub_237FC49C8()
{
  v1 = *v0;
  v2 = 0x614E64726F636572;
  v3 = 0x656369766564;
  v4 = 0x49746E656D676573;
  if (v1 != 4)
  {
    v4 = 0x616470557473616CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 1919251317;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_237FC4A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237FC854C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237FC4AD8(uint64_t a1)
{
  v2 = sub_237FC78BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237FC4B14(uint64_t a1)
{
  v2 = sub_237FC78BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _DeviceActivityData.Metadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5120, &qword_238033EE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FC78BC();
  sub_238032614();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v23) = 0;
  sub_238032464();
  if (!v2)
  {
    v13 = v3[3];
    v23 = v3[2];
    v24 = v13;
    v28 = 1;
    sub_237FC75C8(v23, v13);
    sub_237FC7910();
    sub_238032454();
    sub_237FA38D0(v23, v24);
    v14 = type metadata accessor for _DeviceActivityData.Metadata(0);
    v15 = v14[6];
    LOBYTE(v23) = 2;
    type metadata accessor for _DeviceActivityData.User(0);
    sub_237FC7580(&qword_280C34F50, type metadata accessor for _DeviceActivityData.User);
    sub_2380324A4();
    v16 = v3 + v14[7];
    v17 = *(v16 + 1);
    v18 = *(v16 + 2);
    v23 = *v16;
    v24 = v17;
    v25 = v18;
    v19 = *(v16 + 40);
    v26 = *(v16 + 24);
    v27 = v19;
    v28 = 3;
    sub_237FC7964();

    sub_2380324A4();

    LOBYTE(v23) = *(v3 + v14[8]);
    v28 = 4;
    sub_237FC79B8();
    sub_2380324A4();
    v20 = v14[9];
    LOBYTE(v23) = 5;
    sub_238031A64();
    sub_237FC7580(&qword_280C35030, MEMORY[0x277CC9578]);
    sub_2380324A4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t _DeviceActivityData.Metadata.hash(into:)()
{
  v1 = sub_2380317D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - v7;
  v9 = *v0;
  v10 = v0[1];
  sub_238031ED4();
  if (v0[3] >> 60 == 15)
  {
    sub_2380325D4();
  }

  else
  {
    v11 = v0[2];
    sub_2380325D4();
    sub_2380319B4();
  }

  v12 = type metadata accessor for _DeviceActivityData.Metadata(0);
  v13 = (v0 + v12[6]);
  if (v13[1])
  {
    v14 = *v13;
    sub_2380325D4();
    sub_238031ED4();
    if (v13[3])
    {
LABEL_6:
      v15 = v13[2];
      sub_2380325D4();
      sub_238031ED4();
      goto LABEL_9;
    }
  }

  else
  {
    sub_2380325D4();
    if (v13[3])
    {
      goto LABEL_6;
    }
  }

  sub_2380325D4();
LABEL_9:
  v16 = type metadata accessor for _DeviceActivityData.User(0);
  sub_237FA90E4(v13 + *(v16 + 24), v8, &qword_27DEE5108, &qword_238033EE0);
  if ((*(v2 + 48))(v8, 1, v1) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    v17 = v29;
    (*(v2 + 32))(v29, v8, v1);
    sub_2380325D4();
    sub_237FC7580(&qword_27DEE5110, MEMORY[0x277CC8E50]);
    sub_238031E34();
    (*(v2 + 8))(v17, v1);
  }

  MEMORY[0x2383E5730](*(v13 + *(v16 + 28)));
  v18 = (v0 + v12[7]);
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  v22 = v18[3];
  v23 = v18[4];
  v24 = v18[5];
  v25 = v18[6];
  sub_238031ED4();
  if (!v22)
  {
    sub_2380325D4();
    if (v24)
    {
      goto LABEL_14;
    }

LABEL_16:
    sub_2380325D4();
    goto LABEL_17;
  }

  sub_2380325D4();
  sub_238031ED4();
  if (!v24)
  {
    goto LABEL_16;
  }

LABEL_14:
  sub_2380325D4();
  sub_238031ED4();
LABEL_17:
  MEMORY[0x2383E5730](v25);
  MEMORY[0x2383E5730](*(v0 + v12[8]));
  v26 = v12[9];
  sub_238031A64();
  sub_237FC7580(&qword_27DEE5118, MEMORY[0x277CC9578]);
  return sub_238031E34();
}

uint64_t sub_237FC52B8(void (*a1)(_BYTE *))
{
  sub_2380325B4();
  a1(v3);
  return sub_2380325F4();
}

uint64_t _DeviceActivityData.Metadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = sub_238031A64();
  v36 = *(v38 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for _DeviceActivityData.User(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5128, &qword_238033EF0);
  v39 = *(v10 - 8);
  v40 = v10;
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = type metadata accessor for _DeviceActivityData.Metadata(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v17 + 1) = xmmword_238033ED0;
  v18 = a1[3];
  v19 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_237FC78BC();
  v41 = v13;
  v20 = v42;
  sub_238032604();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    return sub_237FA38D0(0, 0xF000000000000000);
  }

  else
  {
    v21 = v9;
    v42 = v5;
    v23 = v39;
    v22 = v40;
    LOBYTE(v44) = 0;
    v24 = v17;
    *v17 = sub_2380323F4();
    *(v17 + 1) = v25;
    v49 = 1;
    sub_237FA3688();
    sub_2380323E4();
    v26 = v44;
    v27 = v45;
    sub_237FA38D0(0, 0xF000000000000000);
    *(v24 + 16) = v26;
    *(v24 + 24) = v27;
    LOBYTE(v44) = 2;
    sub_237FC7580(&qword_280C352C0, type metadata accessor for _DeviceActivityData.User);
    sub_238032434();
    sub_237FC1EC0(v21, v24 + v14[6], type metadata accessor for _DeviceActivityData.User);
    v49 = 3;
    sub_237FC7A0C();
    sub_238032434();
    v28 = v45;
    v29 = v48;
    v30 = v24 + v14[7];
    *v30 = v44;
    *(v30 + 8) = v28;
    v31 = v47;
    *(v30 + 16) = v46;
    *(v30 + 32) = v31;
    *(v30 + 48) = v29;
    v49 = 4;
    sub_237FC7A60();
    sub_238032434();
    *(v24 + v14[8]) = v44;
    LOBYTE(v44) = 5;
    sub_237FC7580(&qword_280C35348, MEMORY[0x277CC9578]);
    v32 = v42;
    v33 = v38;
    sub_238032434();
    (*(v23 + 8))(v41, v22);
    (*(v36 + 32))(v24 + v14[9], v32, v33);
    sub_237FC1918(v24, v37, type metadata accessor for _DeviceActivityData.Metadata);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    return sub_237FAB774(v24, type metadata accessor for _DeviceActivityData.Metadata);
  }
}

uint64_t sub_237FC5930(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_2380325B4();
  a3(v5);
  return sub_2380325F4();
}

uint64_t sub_237FC5994(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_2380325B4();
  a4(v6);
  return sub_2380325F4();
}

uint64_t _DeviceActivityData.activitySegmentRecordNames.getter()
{
  v1 = *(v0 + *(type metadata accessor for _DeviceActivityData(0) + 20));
}

uint64_t _DeviceActivityData.activitySegmentRecordNames.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _DeviceActivityData(0) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t _DeviceActivityData.init(metadata:activitySegmentRecordNames:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  sub_237FC1918(a1, a3, type metadata accessor for _DeviceActivityData.Metadata);
  v8 = a2;

  sub_237FC696C(&v8);

  sub_237FAB774(a1, type metadata accessor for _DeviceActivityData.Metadata);
  v6 = v8;
  result = type metadata accessor for _DeviceActivityData(0);
  *(a3 + *(result + 20)) = v6;
  return result;
}

uint64_t static _DeviceActivityData.== infix(_:_:)(void *a1, void *a2)
{
  if ((_s14DeviceActivity01_aB4DataV8MetadataV2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for _DeviceActivityData(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_237FC1F2C(v5, v6);
}

unint64_t sub_237FC5C50()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0x617461646174656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_237FC5C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2380324E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000238036D80 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2380324E4();

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

uint64_t sub_237FC5D80(uint64_t a1)
{
  v2 = sub_237FC7AD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237FC5DBC(uint64_t a1)
{
  v2 = sub_237FC7AD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _DeviceActivityData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5130, &qword_238033EF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FC7AD4();
  sub_238032614();
  v14 = 0;
  type metadata accessor for _DeviceActivityData.Metadata(0);
  sub_237FC7580(&qword_280C34F48, type metadata accessor for _DeviceActivityData.Metadata);
  sub_2380324A4();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for _DeviceActivityData(0) + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5140, &qword_238033F00);
    sub_237FC7B28(&qword_27DEE5148);
    sub_2380324A4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t _DeviceActivityData.hash(into:)()
{
  _DeviceActivityData.Metadata.hash(into:)();
  v1 = *(v0 + *(type metadata accessor for _DeviceActivityData(0) + 20));
  result = MEMORY[0x2383E5730](*(v1 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_238031ED4();

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _DeviceActivityData.hashValue.getter()
{
  sub_2380325B4();
  _DeviceActivityData.Metadata.hash(into:)();
  v1 = *(v0 + *(type metadata accessor for _DeviceActivityData(0) + 20));
  MEMORY[0x2383E5730](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      sub_238031ED4();

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return sub_2380325F4();
}

uint64_t _DeviceActivityData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for _DeviceActivityData.Metadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5150, &qword_238033F08);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for _DeviceActivityData(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FC7AD4();
  sub_238032604();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = v22;
  v17 = v14;
  v27 = 0;
  sub_237FC7580(&qword_280C352A0, type metadata accessor for _DeviceActivityData.Metadata);
  v18 = v23;
  sub_238032434();
  sub_237FC1EC0(v24, v17, type metadata accessor for _DeviceActivityData.Metadata);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5140, &qword_238033F00);
  v26 = 1;
  sub_237FC7B28(&qword_27DEE5158);
  sub_238032434();
  (*(v16 + 8))(v10, v18);
  *(v17 + *(v11 + 20)) = v25;
  sub_237FC1918(v17, v21, type metadata accessor for _DeviceActivityData);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_237FAB774(v17, type metadata accessor for _DeviceActivityData);
}

uint64_t sub_237FC64C0(uint64_t a1, uint64_t a2)
{
  sub_2380325B4();
  _DeviceActivityData.Metadata.hash(into:)();
  v4 = *(v2 + *(a2 + 20));
  MEMORY[0x2383E5730](*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      sub_238031ED4();

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return sub_2380325F4();
}

uint64_t sub_237FC6558(void *a1, void *a2, uint64_t a3)
{
  if ((static _DeviceActivityData.Metadata.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_237FC1F2C(v7, v8);
}

uint64_t DeviceActivityData.init(_:segmentInterval:elementFetcher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v44 = a4;
  v40 = a1;
  v41 = a2;
  v5 = type metadata accessor for DeviceActivityData.User(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _DeviceActivityData.User(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DeviceActivityData(0);
  v42 = *(v15 - 1);
  v16 = *(v42 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for _DeviceActivityData.Metadata(0);
  sub_237FC1918(a1 + v19[6], v14, type metadata accessor for _DeviceActivityData.User);
  v20 = *(v6 + 32);
  v21 = sub_2380317D4();
  (*(*(v21 - 8) + 56))(&v9[v20], 1, 1, v21);
  *v9 = *v14;
  v22 = *(v14 + 3);
  *(v9 + 8) = *(v14 + 8);
  *(v9 + 3) = v22;
  v23 = *(v11 + 32);

  sub_237FC7B94(&v14[v23], &v9[v20]);
  v24 = *&v14[*(v11 + 36)];
  sub_237FAB774(v14, type metadata accessor for _DeviceActivityData.User);
  v9[*(v6 + 36)] = v24 == 1;
  sub_237FC1EC0(v9, v18, type metadata accessor for DeviceActivityData.User);
  v25 = v40;
  v26 = (v40 + v19[7]);
  v27 = *v26;
  v28 = v26[1];
  v30 = v26[2];
  v29 = v26[3];
  v32 = v26[4];
  v31 = v26[5];
  DeviceActivityData.Device.Model.init(rawValue:)(v26[6], &v45);
  v33 = v45;
  if (v45 == 6)
  {
    v33 = 0;
  }

  v34 = &v18[v15[5]];
  *v34 = v27;
  *(v34 + 1) = v28;
  *(v34 + 2) = v30;
  *(v34 + 3) = v29;
  *(v34 + 4) = v32;
  *(v34 + 5) = v31;
  v34[48] = v33;
  sub_237FC1EC0(v41, &v18[v15[6]], type metadata accessor for DeviceActivityFilter.SegmentInterval);
  v35 = v19[9];
  v36 = v15[7];
  v37 = sub_238031A64();
  (*(*(v37 - 8) + 16))(&v18[v36], v25 + v35, v37);

  sub_237FAB774(v25, type metadata accessor for _DeviceActivityData.Metadata);
  *&v18[v15[8]] = *(v25 + *(type metadata accessor for _DeviceActivityData(0) + 20));
  sub_237FB0034(v43, &v18[v15[9]]);
  v38 = v44;
  sub_237FC1EC0(v18, v44, type metadata accessor for DeviceActivityData);
  return (*(v42 + 56))(v38, 0, 1, v15);
}

uint64_t sub_237FC696C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_238010D44(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_237FC69D8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_237FC69D8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2380324B4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_238031FD4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_237FC6BA0(v7, v8, a1, v4);
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
    return sub_237FC6AD0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_237FC6AD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_2380324E4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_237FC6BA0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_238010D30(v8);
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
        sub_237FC717C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_2380324E4();
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
            result = sub_2380324E4();
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
      result = sub_237FB5990(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_237FB5990((v39 > 1), v40 + 1, 1, v8);
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
        sub_237FC717C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_238010D30(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_238010CA4(v44);
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
    if (v37 || (result = sub_2380324E4(), (result & 1) == 0))
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

uint64_t sub_237FC717C(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_2380324E4() & 1) != 0)
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
      if (!v21 && (sub_2380324E4() & 1) != 0)
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

uint64_t _s14DeviceActivity0aB4DataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static DeviceActivityData.User.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DeviceActivityData(0);
  v5 = a1 + *(v4 + 20);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *(v5 + 40);
  v9 = *(v5 + 48);
  v26[0] = *v5;
  v26[1] = v6;
  v26[2] = v7;
  v27 = *(v5 + 24);
  v28 = v8;
  v29 = v9;
  v20 = v4;
  v10 = a2 + *(v4 + 20);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v10 + 40);
  v14 = *(v10 + 48);
  v22[0] = *v10;
  v22[1] = v11;
  v22[2] = v12;
  v23 = *(v10 + 24);
  v24 = v13;
  v25 = v14;
  v21 = _s14DeviceActivity0aB4DataV0A0V2eeoiySbAE_AEtFZ_0(v26, v22);

  if (!v21)
  {
    return 0;
  }

  if ((_s14DeviceActivity0aB6FilterV15SegmentIntervalO2eeoiySbAE_AEtFZ_0(a1 + v20[6], a2 + v20[6]) & 1) == 0)
  {
    return 0;
  }

  v15 = v20[7];
  if ((sub_238031A34() & 1) == 0)
  {
    return 0;
  }

  v16 = v20[8];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);

  return sub_237FC1F2C(v17, v18);
}

uint64_t sub_237FC7580(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_237FC75C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_237FBC9FC(a1, a2);
  }

  return a1;
}

uint64_t _s14DeviceActivity01_aB4DataV8MetadataV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2380324E4() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2];
  v5 = a1[3];
  v8 = a2[2];
  v7 = a2[3];
  if (v5 >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      sub_237FC75C8(a1[2], a1[3]);
      sub_237FC75C8(v8, v7);
      v9 = sub_237FD2814(v6, v5, v8, v7);
      sub_237FA38D0(v8, v7);
      sub_237FA38D0(v6, v5);
      if (v9)
      {
        goto LABEL_12;
      }

      return 0;
    }

LABEL_10:
    sub_237FC75C8(a1[2], a1[3]);
    sub_237FC75C8(v8, v7);
    sub_237FA38D0(v6, v5);
    sub_237FA38D0(v8, v7);
    return 0;
  }

  if (v7 >> 60 != 15)
  {
    goto LABEL_10;
  }

  sub_237FC75C8(a1[2], a1[3]);
  sub_237FC75C8(v8, v7);
  sub_237FA38D0(v6, v5);
LABEL_12:
  v10 = type metadata accessor for _DeviceActivityData.Metadata(0);
  if ((static _DeviceActivityData.User.== infix(_:_:)(a1 + v10[6], a2 + v10[6]) & 1) == 0)
  {
    return 0;
  }

  v11 = a1 + v10[7];
  v12 = *(v11 + 1);
  v13 = *(v11 + 2);
  v24[0] = *v11;
  v24[1] = v12;
  v24[2] = v13;
  v25 = *(v11 + 24);
  v26 = *(v11 + 40);
  v14 = a2 + v10[7];
  v15 = *(v14 + 1);
  v16 = *(v14 + 2);
  v21[0] = *v14;
  v21[1] = v15;
  v21[2] = v16;
  v19 = *(v14 + 40);
  v22 = *(v14 + 24);
  v23 = v19;
  v20 = _s14DeviceActivity01_aB4DataV0A0V2eeoiySbAE_AEtFZ_0(v24, v21);

  if (!v20 || *(a1 + v10[8]) != *(a2 + v10[8]))
  {
    return 0;
  }

  v17 = v10[9];

  return sub_238031A34();
}

unint64_t sub_237FC78BC()
{
  result = qword_280C352B8;
  if (!qword_280C352B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C352B8);
  }

  return result;
}

unint64_t sub_237FC7910()
{
  result = qword_280C35038;
  if (!qword_280C35038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C35038);
  }

  return result;
}

unint64_t sub_237FC7964()
{
  result = qword_280C34F80;
  if (!qword_280C34F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34F80);
  }

  return result;
}

unint64_t sub_237FC79B8()
{
  result = qword_280C34B40;
  if (!qword_280C34B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34B40);
  }

  return result;
}

unint64_t sub_237FC7A0C()
{
  result = qword_280C352F0;
  if (!qword_280C352F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C352F0);
  }

  return result;
}

unint64_t sub_237FC7A60()
{
  result = qword_280C35110;
  if (!qword_280C35110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C35110);
  }

  return result;
}

unint64_t sub_237FC7AD4()
{
  result = qword_27DEE5138;
  if (!qword_27DEE5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5138);
  }

  return result;
}

uint64_t sub_237FC7B28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE5140, &qword_238033F00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237FC7B94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_237FC7D04()
{
  type metadata accessor for DeviceActivityData.User(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DeviceActivityFilter.SegmentInterval(319);
    if (v1 <= 0x3F)
    {
      sub_238031A64();
      if (v2 <= 0x3F)
      {
        sub_237FC8040(319, &qword_280C350C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_237FC7DFC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_237FC7DFC()
{
  result = qword_27DEE5188;
  if (!qword_27DEE5188)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DEE5188);
  }

  return result;
}

void sub_237FC7E88()
{
  type metadata accessor for _DeviceActivityData.Metadata(319);
  if (v0 <= 0x3F)
  {
    sub_237FC8040(319, &qword_280C350C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237FC7F58()
{
  sub_237FC8040(319, &qword_280C356C0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for _DeviceActivityData.User(319);
    if (v1 <= 0x3F)
    {
      sub_238031A64();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237FC8040(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _s4UserV10FamilyRoleOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s4UserV10FamilyRoleOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s6DeviceV5ModelOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6DeviceV5ModelOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_237FC8340()
{
  result = qword_27DEE5190;
  if (!qword_27DEE5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5190);
  }

  return result;
}

unint64_t sub_237FC8398()
{
  result = qword_27DEE5198;
  if (!qword_27DEE5198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5198);
  }

  return result;
}

unint64_t sub_237FC83F0()
{
  result = qword_27DEE51A0;
  if (!qword_27DEE51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE51A0);
  }

  return result;
}

unint64_t sub_237FC8448()
{
  result = qword_27DEE51A8;
  if (!qword_27DEE51A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE51A8);
  }

  return result;
}

unint64_t sub_237FC84A0()
{
  result = qword_280C352A8;
  if (!qword_280C352A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C352A8);
  }

  return result;
}

unint64_t sub_237FC84F8()
{
  result = qword_280C352B0;
  if (!qword_280C352B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C352B0);
  }

  return result;
}

uint64_t sub_237FC854C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E64726F636572 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_2380324E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000238036D60 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1919251317 && a2 == 0xE400000000000000 || (sub_2380324E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000 || (sub_2380324E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x49746E656D676573 && a2 == 0xEF6C61767265746ELL || (sub_2380324E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616470557473616CLL && a2 == 0xEF65746144646574)
  {

    return 5;
  }

  else
  {
    v6 = sub_2380324E4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_237FC8764(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t DeviceActivityData.ActivitySegment.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238031654();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DeviceActivityData.ActivitySegment.dateInterval.setter(uint64_t a1)
{
  v3 = sub_238031654();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DeviceActivityData.ActivitySegment.totalActivityDuration.setter(double a1)
{
  result = type metadata accessor for DeviceActivityData.ActivitySegment(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t DeviceActivityData.ActivitySegment.totalPickupsWithoutApplicationActivity.setter(uint64_t a1)
{
  result = type metadata accessor for DeviceActivityData.ActivitySegment(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t DeviceActivityData.ActivitySegment.categoryActivities.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeviceActivityData.ActivitySegment(0) + 36));
}

uint64_t DeviceActivityData.ActivitySegment.categoryActivities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceActivityData.ActivitySegment(0) + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DeviceActivityData.ActivitySegment.init(dateInterval:totalActivityDuration:longestActivity:firstPickup:totalPickupsWithoutApplicationActivity:categoryActivities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v13 = type metadata accessor for DeviceActivityData.ActivitySegment(0);
  v14 = v13[6];
  v15 = sub_238031654();
  v16 = *(v15 - 8);
  (*(v16 + 56))(a6 + v14, 1, 1, v15);
  v17 = v13[7];
  v18 = sub_238031A64();
  (*(*(v18 - 8) + 56))(a6 + v17, 1, 1, v18);
  (*(v16 + 32))(a6, a1, v15);
  *(a6 + v13[5]) = a7;
  sub_237FA39BC(a2, a6 + v14, &qword_27DEE50C8, &qword_2380357C0);
  result = sub_237FA39BC(a3, a6 + v17, &qword_27DEE51E0, &qword_2380365F0);
  *(a6 + v13[8]) = a4;
  *(a6 + v13[9]) = a5;
  return result;
}

uint64_t DeviceActivityData.ActivitySegment.hash(into:)(uint64_t a1)
{
  v3 = sub_238031A64();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_238031654();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v25 - v17;
  sub_237FA38E4(&qword_27DEE51E8, MEMORY[0x277CC88A8]);
  sub_238031E34();
  v19 = type metadata accessor for DeviceActivityData.ActivitySegment(0);
  v20 = *(v1 + v19[5]);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x2383E5750](*&v20);
  sub_237FA90E4(v1 + v19[6], v18, &qword_27DEE50C8, &qword_2380357C0);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    sub_2380325D4();
    sub_238031E34();
    (*(v11 + 8))(v14, v10);
  }

  sub_237FA90E4(v1 + v19[7], v9, &qword_27DEE51E0, &qword_2380365F0);
  v22 = v27;
  v21 = v28;
  if ((*(v27 + 48))(v9, 1, v28) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    v23 = v26;
    (*(v22 + 32))(v26, v9, v21);
    sub_2380325D4();
    sub_237FA38E4(&qword_27DEE5118, MEMORY[0x277CC9578]);
    sub_238031E34();
    (*(v22 + 8))(v23, v21);
  }

  MEMORY[0x2383E5730](*(v1 + v19[8]));
  return sub_237FD1160(a1, *(v1 + v19[9]));
}

uint64_t _DeviceActivityData.ActivitySegment.recordName.getter()
{
  v1 = sub_238031A64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for _DeviceActivityData.ActivitySegment(0) + 24);
  sub_238031634();
  sub_2380319E4();
  (*(v2 + 8))(v5, v1);
  return sub_238032054();
}

uint64_t _DeviceActivityData.ActivitySegment.recordSystemFields.getter()
{
  v1 = *v0;
  sub_237FC75C8(*v0, *(v0 + 8));
  return v1;
}

uint64_t _DeviceActivityData.ActivitySegment.recordSystemFields.setter(uint64_t a1, uint64_t a2)
{
  result = sub_237FA38D0(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t _DeviceActivityData.ActivitySegment.recordZoneName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t _DeviceActivityData.ActivitySegment.dateInterval.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _DeviceActivityData.ActivitySegment(0) + 24);
  v4 = sub_238031654();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t _DeviceActivityData.ActivitySegment.totalActivityDuration.setter(double a1)
{
  result = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t _DeviceActivityData.ActivitySegment.totalPickupsWithoutApplicationActivity.setter(uint64_t a1)
{
  result = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t _DeviceActivityData.ActivitySegment.categoryActivities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _DeviceActivityData.ActivitySegment(0) + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t _DeviceActivityData.ActivitySegment.init(recordSystemFields:recordZoneName:dateInterval:totalActivityDuration:longestActivity:firstPickup:totalPickupsWithoutApplicationActivity:categoryActivities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, double a10@<D0>, void *a11)
{
  *a9 = xmmword_238033ED0;
  v16 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  v17 = v16[7];
  v18 = sub_238031654();
  v19 = *(v18 - 8);
  (*(v19 + 56))(a9 + v17, 1, 1, v18);
  v20 = v16[8];
  v21 = sub_238031A64();
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  sub_237FA38D0(*a9, a9[1]);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  (*(v19 + 16))(a9 + v16[6], a5, v18);
  *(a9 + v16[9]) = a10;
  sub_237FD3ACC(a6, a9 + v17, &qword_27DEE50C8, &qword_2380357C0);
  sub_237FD3ACC(a7, a9 + v20, &qword_27DEE51E0, &qword_2380365F0);
  *(a9 + v16[10]) = a8;
  v28 = a11;

  sub_237FCBD6C(&v28);

  sub_237FA5750(a7, &qword_27DEE51E0, &qword_2380365F0);
  sub_237FA5750(a6, &qword_27DEE50C8, &qword_2380357C0);
  result = (*(v19 + 8))(a5, v18);
  *(a9 + v16[11]) = v28;
  return result;
}

uint64_t _DeviceActivityData.ActivitySegment.update(using:)(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v179 = &v159 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51F0, &qword_238034410);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v172 = &v159 - v8;
  v180 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v183 = *(v180 - 8);
  v9 = *(v183 + 64);
  v10 = MEMORY[0x28223BE20](v180);
  v182 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v159 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v185 = &v159 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v184 = (&v159 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v159 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = (&v159 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v168 = &v159 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v170 = (&v159 - v28);
  v173 = sub_238031A64();
  v178 = *(v173 - 8);
  v29 = *(v178 + 8);
  v30 = MEMORY[0x28223BE20](v173);
  v165 = &v159 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v177 = &v159 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v164 = &v159 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v159 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v159 - v40;
  v42 = sub_238031654();
  v181 = *(v42 - 8);
  v43 = *(v181 + 64);
  v44 = MEMORY[0x28223BE20](v42);
  v162 = &v159 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v159 - v47;
  MEMORY[0x28223BE20](v46);
  v167 = &v159 - v49;
  v50 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  *(v1 + v50[9]) = *(a1 + v50[9]) + *(v1 + v50[9]);
  v51 = v50[10];
  v52 = *(a1 + v51);
  v53 = *(v1 + v51);
  v54 = __OFADD__(v53, v52);
  v55 = v53 + v52;
  if (v54)
  {
    goto LABEL_72;
  }

  v56 = v50;
  v171 = v14;
  *(v1 + v51) = v55;
  v57 = v50[7];
  v175 = a1;
  sub_237FA90E4(a1 + v57, v41, &qword_27DEE50C8, &qword_2380357C0);
  v58 = *(v181 + 48);
  v59 = v58(v41, 1, v42);
  v174 = v56;
  v169 = v1;
  if (v59 == 1)
  {
    sub_237FA5750(v41, &qword_27DEE50C8, &qword_2380357C0);
    v60 = v1;
LABEL_11:
    v77 = v178;
    v78 = v170;
    goto LABEL_12;
  }

  v160 = v48;
  v161 = v21;
  v61 = (v181 + 32);
  v62 = v167;
  v163 = *(v181 + 32);
  v163(v167, v41, v42);
  v63 = v56[7];
  v64 = v1;
  sub_237FA90E4(v1 + v63, v39, &qword_27DEE50C8, &qword_2380357C0);
  v166 = v42;
  if (v58(v39, 1, v42) == 1)
  {
    sub_237FA5750(v39, &qword_27DEE50C8, &qword_2380357C0);
    sub_237FA5750(v1 + v63, &qword_27DEE50C8, &qword_2380357C0);
    v65 = (v1 + v63);
    v66 = v166;
    v163(v65, v62, v166);
    (*(v181 + 56))(v64 + v63, 0, 1, v66);
    v60 = v64;
LABEL_10:
    v21 = v161;
    goto LABEL_11;
  }

  v67 = v160;
  v68 = v39;
  v69 = v166;
  v163(v160, v68, v166);
  v70 = v164;
  sub_2380315C4();
  if (v58(v70, 1, v69) != 1)
  {
    v80 = v70;
    v81 = v181;
    v82 = *(v181 + 8);
    v83 = v166;
    v82(v67, v166);
    v82(v62, v83);
    v84 = v162;
    v85 = v80;
    v86 = v163;
    v163(v162, v85, v83);
    v87 = v169;
    sub_237FA5750(v169 + v63, &qword_27DEE50C8, &qword_2380357C0);
    v86(v87 + v63, v84, v83);
    v60 = v87;
    (*(v81 + 56))(v87 + v63, 0, 1, v83);
    goto LABEL_10;
  }

  v162 = v61;
  sub_237FA5750(v70, &qword_27DEE50C8, &qword_2380357C0);
  sub_238031644();
  v72 = v71;
  sub_238031644();
  v74 = v73;
  v75 = v181;
  v76 = *(v181 + 8);
  v76(v67, v166);
  v77 = v178;
  v78 = v170;
  if (v74 >= v72)
  {
    v76(v62, v166);
    v60 = v169;
  }

  else
  {
    v60 = v169;
    sub_237FA5750(v169 + v63, &qword_27DEE50C8, &qword_2380357C0);
    v79 = v166;
    v163((v60 + v63), v62, v166);
    (*(v75 + 56))(v60 + v63, 0, 1, v79);
  }

  v21 = v161;
LABEL_12:
  v88 = v174;
  sub_237FA90E4(v175 + v174[8], v78, &qword_27DEE51E0, &qword_2380365F0);
  v14 = *(v77 + 6);
  v89 = v173;
  if ((v14)(v78, 1, v173) == 1)
  {
    sub_237FA5750(v78, &qword_27DEE51E0, &qword_2380365F0);
  }

  else
  {
    v181 = *(v77 + 4);
    (v181)(v177, v78, v89);
    v90 = v88[8];
    v91 = v168;
    sub_237FA90E4(v60 + v90, v168, &qword_27DEE51E0, &qword_2380365F0);
    if ((v14)(v91, 1, v89) == 1)
    {
      v14 = &qword_2380365F0;
      sub_237FA5750(v91, &qword_27DEE51E0, &qword_2380365F0);
      sub_237FA5750(v60 + v90, &qword_27DEE51E0, &qword_2380365F0);
      (v181)(v60 + v90, v177, v89);
      (*(v178 + 7))(v60 + v90, 0, 1, v89);
    }

    else
    {
      v92 = v165;
      (v181)(v165, v91, v89);
      v93 = sub_238031A14();
      v94 = v89;
      v14 = (v178 + 8);
      v95 = *(v178 + 1);
      v96 = v92;
      v97 = v94;
      v95(v96, v94);
      if (v93)
      {
        sub_237FA5750(v60 + v90, &qword_27DEE51E0, &qword_2380365F0);
        (v181)(v60 + v90, v177, v97);
        (*(v178 + 7))(v60 + v90, 0, 1, v97);
      }

      else
      {
        v95(v177, v97);
      }
    }
  }

  v168 = v88[11];
  v98 = *(v60 + v168);
  v99 = sub_237FD38D0(MEMORY[0x277D84F90]);
  v100 = *(v98 + 2);
  v177 = v98;
  v181 = v100;
  if (v100)
  {
    v101 = 0;
    v178 = &v98[(*(v183 + 80) + 32) & ~*(v183 + 80)];
    v176 = v23;
    do
    {
      if (v101 >= *(v98 + 2))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        sub_238032534();
        __break(1u);
LABEL_74:

        __break(1u);
        return result;
      }

      v103 = *(v183 + 72);
      sub_237FA4CFC(&v178[v103 * v101], v23, type metadata accessor for _DeviceActivityData.CategoryActivity);
      v105 = *v23;
      v104 = v23[1];
      v106 = v23;
      v107 = v21;
      sub_237FA4CFC(v106, v21, type metadata accessor for _DeviceActivityData.CategoryActivity);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v186 = v99;
      v110 = sub_237FA4EA4(v105, v104, sub_237FA4F28);
      v111 = v99[2];
      v112 = (v109 & 1) == 0;
      v113 = v111 + v112;
      if (__OFADD__(v111, v112))
      {
        goto LABEL_67;
      }

      v14 = v109;
      if (v99[3] >= v113)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v99 = v186;
          if (v109)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_237FCE758();
          v99 = v186;
          if (v14)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        sub_237FCD02C(v113, isUniquelyReferenced_nonNull_native);
        v114 = sub_237FA4EA4(v105, v104, sub_237FA4F28);
        if ((v14 & 1) != (v115 & 1))
        {
          goto LABEL_73;
        }

        v110 = v114;
        v99 = v186;
        if (v14)
        {
LABEL_21:
          v102 = v99[7] + v110 * v103;
          v21 = v107;
          sub_237FD3B34(v107, v102);
          goto LABEL_22;
        }
      }

      v99[(v110 >> 6) + 8] |= 1 << v110;
      v116 = (v99[6] + 16 * v110);
      *v116 = v105;
      v116[1] = v104;
      v117 = v99[7] + v110 * v103;
      v21 = v107;
      sub_237FA9354(v107, v117, type metadata accessor for _DeviceActivityData.CategoryActivity);
      v118 = v99[2];
      v54 = __OFADD__(v118, 1);
      v119 = v118 + 1;
      if (v54)
      {
        goto LABEL_70;
      }

      v99[2] = v119;

LABEL_22:
      ++v101;
      v23 = v176;
      sub_237FA4DCC(v176, type metadata accessor for _DeviceActivityData.CategoryActivity);
      v98 = v177;
    }

    while (v181 != v101);
  }

  v14 = *(v175 + v174[11]);
  v176 = *(v14 + 16);
  if (v176)
  {
    v120 = 0;
    v181 = 0;
    v175 = v14 + ((*(v183 + 80) + 32) & ~*(v183 + 80));
    v174 = (v183 + 56);
    v170 = (v183 + 48);
    v121 = v172;
    v122 = v180;
    v173 = v14;
    while (1)
    {
      if (v120 >= *(v14 + 16))
      {
        goto LABEL_68;
      }

      v123 = v184;
      v124 = *(v183 + 72);
      sub_237FA4CFC(v175 + v124 * v120, v184, type metadata accessor for _DeviceActivityData.CategoryActivity);
      v125 = *v123;
      v126 = v123[1];
      if (v99[2] && (v127 = sub_237FA4EA4(*v123, v123[1], sub_237FA4F28), (v128 & 1) != 0))
      {
        sub_237FA4CFC(v99[7] + v127 * v124, v121, type metadata accessor for _DeviceActivityData.CategoryActivity);
        (*v174)(v121, 0, 1, v122);
        sub_237FA9354(v121, v185, type metadata accessor for _DeviceActivityData.CategoryActivity);
      }

      else
      {
        v178 = v124;
        (*v174)(v121, 1, 1, v122);
        v129 = v125;
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
        v131 = v126;
        v132 = *(*(v130 - 8) + 56);
        v133 = v179;
        v132(v179, 1, 1, v130);
        v134 = *(v180 + 20);
        v135 = v171;
        v136 = v130;
        v125 = v129;
        v132(v171 + v134, 1, 1, v136);
        v126 = v131;
        *v135 = v129;
        v135[1] = v131;

        v137 = v133;
        v122 = v180;
        sub_237FD3ACC(v137, v135 + v134, &qword_27DEE51D0, &qword_238034400);
        *(v135 + v122[6]) = 0;
        v138 = MEMORY[0x277D84F90];
        v186 = MEMORY[0x277D84F90];
        v14 = v181;
        sub_237FAA928(&v186, type metadata accessor for _DeviceActivityData.ApplicationActivity, sub_237FAABC8, sub_237FAAC14);
        if (v14)
        {
          goto LABEL_74;
        }

        *(v135 + v122[7]) = v186;
        v186 = v138;
        sub_237FAA928(&v186, type metadata accessor for _DeviceActivityData.WebDomainActivity, sub_237FAAFD8, sub_237FAB024);
        v181 = 0;
        sub_237FA5750(v179, &qword_27DEE51D0, &qword_238034400);
        v139 = v185;
        *(v135 + v122[8]) = v186;
        sub_237FA9354(v135, v139, type metadata accessor for _DeviceActivityData.CategoryActivity);
        v121 = v172;
        if ((*v170)(v172, 1, v122) != 1)
        {
          sub_237FA5750(v121, &qword_27DEE51F0, &qword_238034410);
        }

        v124 = v178;
      }

      v140 = v185;
      _DeviceActivityData.CategoryActivity.update(using:)(v184);
      sub_237FA4CFC(v140, v182, type metadata accessor for _DeviceActivityData.CategoryActivity);
      v141 = swift_isUniquelyReferenced_nonNull_native();
      v186 = v99;
      v14 = v125;
      v142 = v125;
      v143 = v126;
      v144 = sub_237FA4EA4(v142, v126, sub_237FA4F28);
      v146 = v99[2];
      v147 = (v145 & 1) == 0;
      v54 = __OFADD__(v146, v147);
      v148 = v146 + v147;
      if (v54)
      {
        goto LABEL_69;
      }

      v149 = v145;
      if (v99[3] < v148)
      {
        break;
      }

      if (v141)
      {
        goto LABEL_52;
      }

      v154 = v144;
      sub_237FCE758();
      v144 = v154;
      v99 = v186;
      if (v149)
      {
LABEL_37:
        sub_237FD3B34(v182, v99[7] + v144 * v124);
        sub_237FA4DCC(v185, type metadata accessor for _DeviceActivityData.CategoryActivity);
        goto LABEL_38;
      }

LABEL_53:
      v99[(v144 >> 6) + 8] |= 1 << v144;
      v151 = (v99[6] + 16 * v144);
      *v151 = v14;
      v151[1] = v143;
      sub_237FA9354(v182, v99[7] + v144 * v124, type metadata accessor for _DeviceActivityData.CategoryActivity);

      sub_237FA4DCC(v185, type metadata accessor for _DeviceActivityData.CategoryActivity);
      v152 = v99[2];
      v54 = __OFADD__(v152, 1);
      v153 = v152 + 1;
      if (v54)
      {
        goto LABEL_71;
      }

      v99[2] = v153;
LABEL_38:
      v120 = (v120 + 1);
      sub_237FA4DCC(v184, type metadata accessor for _DeviceActivityData.CategoryActivity);
      v14 = v173;
      if (v176 == v120)
      {
        goto LABEL_58;
      }
    }

    sub_237FCD02C(v148, v141);
    v144 = sub_237FA4EA4(v14, v143, sub_237FA4F28);
    if ((v149 & 1) != (v150 & 1))
    {
      goto LABEL_73;
    }

LABEL_52:
    v99 = v186;
    if (v149)
    {
      goto LABEL_37;
    }

    goto LABEL_53;
  }

  v181 = 0;
LABEL_58:
  v155 = v99[2];
  if (!v155)
  {
    goto LABEL_61;
  }

  v156 = sub_237FCC2D0(v99[2], 0, &qword_27DEE5038, &unk_238033C20, type metadata accessor for _DeviceActivityData.CategoryActivity);
  v157 = sub_237FD0DC4(&v186, v156 + ((*(v183 + 80) + 32) & ~*(v183 + 80)), v155, v99, type metadata accessor for _DeviceActivityData.CategoryActivity, type metadata accessor for _DeviceActivityData.CategoryActivity, type metadata accessor for _DeviceActivityData.CategoryActivity);
  swift_bridgeObjectRetain_n();
  sub_237FBDBF0();
  if (v157 != v155)
  {
    __break(1u);
LABEL_61:

    v156 = MEMORY[0x277D84F90];
  }

  v186 = v156;
  v14 = v181;
  sub_237FCBD6C(&v186);
  if (v14)
  {
    goto LABEL_74;
  }

  result = swift_bridgeObjectRelease_n();
  *(v169 + v168) = v186;
  return result;
}