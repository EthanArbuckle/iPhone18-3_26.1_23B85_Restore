uint64_t sub_19747813C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1B8, &qword_19752D348);
  v40 = a2;
  result = sub_19752243C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_197522A5C();
      sub_19752180C();
      result = sub_197522A9C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1974783FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B300, &qword_19752D4A8);
  result = sub_19752243C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v33 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      v23 = *(v8 + 40);
      sub_197522A5C();
      type metadata accessor for CFRunLoopObserver(0);
      sub_197413D04(&qword_1ED7C7338, type metadata accessor for CFRunLoopObserver);
      sub_19752140C();
      result = sub_197522A9C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v33;
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

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1974786EC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_19752243C();
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
      sub_197522A5C();
      sub_19752180C();
      result = sub_197522A9C();
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

uint64_t sub_197478988(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v46 = a2;
  result = sub_19752243C();
  v10 = result;
  if (*(v7 + 16))
  {
    v44 = v5;
    v45 = v7;
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
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v24 = v21 | (v11 << 6);
      v25 = *(v7 + 48) + 16 * v24;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(*(v7 + 56) + 8 * v24);
      if ((v46 & 1) == 0)
      {
        sub_1974028EC(*v25, *(v25 + 8));
      }

      v29 = *(v10 + 40);
      sub_197522A5C();
      if (v27)
      {
        if (v27 == 1)
        {
          MEMORY[0x19A8E1190](1);
          v30 = v26[7];
          v31 = v26[8];
          sub_19752180C();
          v32 = v26[9];
          v33 = v26[10];
          sub_19752180C();
          if (v26[3])
          {
            v43 = v26[2];
            sub_197522A7C();
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          v34 = *(v26 + 33);
          sub_197522A7C();
          v7 = v45;
          *(v26 + 32);
        }

        else
        {
          MEMORY[0x19A8E1190](2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
        }

        sub_19752180C();
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_197521F4C();
      }

      result = sub_197522A9C();
      v35 = -1 << *(v10 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v17 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v19 = v28;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v17 + 8 * v37);
          if (v41 != -1)
          {
            v18 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v36) & ~*(v17 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v19 = v28;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v20 = *(v10 + 48) + 16 * v18;
      *v20 = v26;
      *(v20 + 8) = v27;
      *(*(v10 + 56) + 8 * v18) = v19;
      ++*(v10 + 16);
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v5 = v44;
      goto LABEL_44;
    }

    v42 = 1 << *(v7 + 32);
    v5 = v44;
    if (v42 >= 64)
    {
      bzero(v12, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v42;
    }

    *(v7 + 16) = 0;
  }

LABEL_44:
  *v5 = v10;
  return result;
}

uint64_t sub_197478D8C(uint64_t a1, int a2)
{
  v3 = v2;
  v44 = sub_1975213EC();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v44, v8);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3A0, &unk_19752FB70);
  v42 = a2;
  result = sub_19752243C();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v20 = (v6 + 32);
    v21 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v45 = *(*(v10 + 48) + 16 * v26);
      v28 = *(v6 + 72);
      v29 = v27 + v28 * v26;
      if (v42)
      {
        (*v20)(v43, v29, v44);
      }

      else
      {
        (*v40)(v43, v29, v44);
      }

      v30 = *(v13 + 40);
      sub_197522A5C();
      MEMORY[0x19A8E1190](v45);
      result = sub_197522A9C();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v21 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v13 + 48) + 16 * v22) = v45;
      result = (*v20)(*(v13 + 56) + v28 * v22, v43, v44);
      ++*(v13 + 16);
      v6 = v41;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v10 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1974790F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3B0, &qword_19752D570);
  result = sub_19752243C();
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
      v21 = *(v5 + 56);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = *(v21 + 8 * v20);
      }

      v24 = *(v8 + 40);
      sub_197522A5C();
      MEMORY[0x19A8E1190](v34);
      result = sub_197522A9C();
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
      *(*(v8 + 48) + 16 * v16) = v34;
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

uint64_t sub_197479384(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3B8, &qword_19752D578);
  result = sub_19752243C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_197522A4C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
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

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_1974795F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B438, &qword_19752D5F8);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        sub_197480E74(*(v2 + 56) + v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_197480ED0(v19, *(v4 + 56) + v17);
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

void *sub_197479770()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B188, &qword_19752D318);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v19;
        v21[1] = v20;
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

void *sub_1974798E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B360, &unk_19752D510);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v22 = 40 * v17;
        sub_197421420(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1973FA938(v25, *(v4 + 56) + v22);
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

void *sub_197479AB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1B8, &qword_19752D348);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_197479C3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B178, &qword_19752D308);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + v17) = v18;
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

void *sub_197479DB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B198, &qword_197531230);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_197479F1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B208, &qword_19752D398);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_19747A08C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B288, &qword_19752D420);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v17 *= 40;
        v19 = *(v2 + 56) + v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        *(*(v4 + 48) + v18) = *(*(v2 + 48) + v18);
        v24 = *(v4 + 56) + v17;
        *v24 = v20;
        *(v24 + 8) = v21;
        *(v24 + 16) = v22;
        *(v24 + 24) = v23;
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

void *sub_19747A224()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B300, &qword_19752D4A8);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
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

id sub_19747A39C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B398, &unk_19752D550);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;

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

char *sub_19747A4FC()
{
  v1 = v0;
  v35 = sub_19752135C();
  v37 = *(v35 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35, v3);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF2B458, &unk_19752FD40);
  v5 = *v0;
  v6 = sub_19752242C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v36 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v38 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v37;
        v22 = *(v37 + 72) * v20;
        v24 = v34;
        v23 = v35;
        (*(v37 + 16))(v34, *(v5 + 48) + v22, v35);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v5;
        v27 = v36;
        (*(v21 + 32))(*(v36 + 48) + v22, v24, v23);
        v28 = *(v27 + 56);
        v5 = v26;
        *(v28 + 8 * v20) = v25;

        v15 = v38;
      }

      while (v38);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v36;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_19747A790()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1D8, &qword_19752D368);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v19 = *(v2 + 48) + 16 * v17;
        v20 = *v19;
        v17 *= 24;
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v4 + 48) + v18;
        v25 = *(v19 + 8);
        v26 = *(v21 + 16);
        *v24 = *v19;
        *(v24 + 8) = v25;
        v27 = *(v4 + 56) + v17;
        *v27 = v22;
        *(v27 + 8) = v23;
        *(v27 + 16) = v26;
        sub_1974028EC(v20, v25);

        result = sub_1974028EC(v23, v26);
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

void *sub_19747A934()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1E0, &qword_19752D370);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v22 = 48 * v17;
        sub_1973FDED4(*(v2 + 56) + 48 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1974028A0(v25, (*(v4 + 56) + v22));
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

void *sub_19747AADC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B298, &qword_19752D430);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v19 = *(v2 + 56) + 16 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = *(v4 + 56) + 16 * v17;
        *v22 = v20;
        *(v22 + 8) = v21;
        v23 = v18;
        result = sub_1974028EC(v20, v21);
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

id sub_19747AC60(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19752242C();
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
        v20 = *(v4 + 48) + 16 * v19;
        v21 = *v20;
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = *(v6 + 48) + 16 * v19;
        v24 = *(v20 + 8);
        *v23 = *v20;
        *(v23 + 8) = v24;
        *(*(v6 + 56) + 8 * v19) = v22;
        sub_1974028EC(v21, v24);
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

void *sub_19747ADC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B440, &qword_19752D600);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v2 + 56) + v17;
        v21 = *v20;
        v22 = *(v4 + 48) + v17;
        v23 = *(v18 + 8);
        v24 = *(v20 + 8);
        *v22 = *v18;
        *(v22 + 8) = v23;
        v25 = *(v4 + 56) + v17;
        *v25 = v21;
        *(v25 + 8) = v24;
        sub_1974028EC(v19, v23);
        result = sub_1974028EC(v21, v24);
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

void *sub_19747AFBC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19752242C();
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
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + 8 * v19);
        v24 = (*(v6 + 48) + 16 * v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v23;
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

id sub_19747B128(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19752242C();
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

void *sub_19747B284()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3F8, &qword_19752D5B8);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;

        result = swift_unknownObjectRetain();
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

void *sub_19747B404()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1F8, &qword_19752D388);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + v17) = v18;
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

void *sub_19747B580()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B230, &unk_19752D3C0);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v19 = *(v2 + 48) + 16 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = 32 * v17;
        sub_19742FE50(*(v2 + 56) + 32 * v17, v25);
        v23 = *(v4 + 48) + v18;
        *v23 = v20;
        *(v23 + 8) = v21;
        sub_197433E8C(v25, *(v4 + 56) + v22);
        result = sub_1974028EC(v20, v21);
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

void *sub_19747B730(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19752242C();
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
        v20 = *(v4 + 48) + 16 * v19;
        v21 = *v20;
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = *(v6 + 48) + 16 * v19;
        v24 = *(v20 + 8);
        *v23 = *v20;
        *(v23 + 8) = v24;
        *(*(v6 + 56) + 8 * v19) = v22;
        sub_1974028EC(v21, v24);
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

void *sub_19747B898()
{
  v1 = v0;
  v34 = sub_1975213EC();
  v36 = *(v34 - 8);
  v2 = v36[8];
  MEMORY[0x1EEE9AC00](v34, v3);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3A0, &unk_19752FB70);
  v5 = *v0;
  v6 = sub_19752242C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v35 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v36 + 4;
    for (i = v36 + 2; v15; result = (v23[4])(*(v28 + 56) + v24, v26, v27))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = v17 | (v11 << 6);
      v21 = 16 * v20;
      v22 = *(v5 + 56);
      v23 = v36;
      v24 = v36[9] * v20;
      v25 = v36[2];
      v37 = *(*(v5 + 48) + v21);
      v26 = v33;
      v27 = v34;
      v25(v33, v22 + v24, v34);
      v28 = v35;
      *(*(v35 + 48) + v21) = v37;
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v35;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_19747BB04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B258, &qword_19752D3F0);
  v2 = *v0;
  v3 = sub_19752242C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 32 * v17;
        sub_197404790(*(v2 + 56) + 32 * v17, v27, &qword_1EAF2AF20, &unk_19752F320);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        v25 = v27[1];
        *v24 = v27[0];
        v24[1] = v25;
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

        v1 = v26;
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

void *sub_19747BCCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3B0, &qword_19752D570);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_19747BE2C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19752242C();
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

void *sub_19747BF8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3B8, &qword_19752D578);
  v2 = *v0;
  v3 = sub_19752242C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_19747C0E8()
{
  v1 = v0;
  v32 = sub_197520DAC();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32, v3);
  v31 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B320, &qword_19752D4C8);
  v5 = *v0;
  v6 = sub_19752242C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30[0] = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30[1] = v34 + 32;
    v30[2] = v34 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v35 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v34;
        v22 = *(v34 + 72) * v20;
        v23 = v31;
        v24 = v32;
        (*(v34 + 16))(v31, *(v5 + 48) + v22, v32);
        v20 <<= 6;
        sub_197408378(*(v5 + 56) + v20, v36);
        v25 = v33;
        result = (*(v21 + 32))(*(v33 + 48) + v22, v23, v24);
        v26 = (*(v25 + 56) + v20);
        v28 = v36[2];
        v27 = v36[3];
        v29 = v36[1];
        *v26 = v36[0];
        v26[1] = v29;
        v26[2] = v28;
        v26[3] = v27;
        v15 = v35;
      }

      while (v35);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30[0];
        v7 = v33;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v35 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_19747C374(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1973F7950(a2, a3);
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
      sub_1974795F4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_197477BC0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1973F7950(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 16 * v11;

    return sub_197480E18(a1, v23);
  }

  else
  {

    return sub_1974D9FFC(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_19747C4B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1973F7814(a3);
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
      sub_197479770();
      v11 = v19;
      goto LABEL_8;
    }

    sub_197477E60(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1973F7814(a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      sub_19752202C();
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v24 = v23[1];
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {
    sub_1974DA06C(v11, a3, a1, a2, v22);
  }
}

uint64_t sub_19747C5F0(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1973F4028(a2, a3);
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
      sub_1974798E0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1973FA674(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1973F4028(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm_0(v23);

    return sub_1973FA938(a1, v23);
  }

  else
  {
    sub_1974DA0B4(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_19747C744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1973F4028(a3, a4);
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
      sub_197479AB0();
      v13 = v21;
      goto LABEL_8;
    }

    sub_19747813C(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_1973F4028(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
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
    sub_1974DA124(v13, a3, a4, a1, a2, v24);
  }
}

uint64_t sub_19747C894(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1973F7814(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_197479DB8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1973F9030(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1973F7814(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      sub_19752202C();
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {
    sub_1974DD110(v9, a2, a1, v20);
  }
}

id sub_19747C9E8(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_19749EDE0(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_19747A224();
      v10 = v18;
      goto LABEL_8;
    }

    sub_1974783FC(v15, a4 & 1);
    v19 = *v5;
    v10 = sub_19749EDE0(a3);
    if ((v16 & 1) != (v20 & 1))
    {
LABEL_16:
      type metadata accessor for CFRunLoopObserver(0);
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v16)
  {
    v22 = (v21[7] + 16 * v10);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {
    sub_1974DA174(v10, a3, a1, a2, v21);

    return a3;
  }
}

id sub_19747CB50(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(unint64_t, void *, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_197403C30(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      sub_19747B730(a5, a6);
      v17 = v25;
      goto LABEL_8;
    }

    sub_197478988(v22, a4 & 1, a5, a6);
    v26 = *v11;
    v17 = sub_197403C30(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v28);

    return sub_1974028EC(a2, a3);
  }
}

uint64_t sub_19747CD18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1973F7950(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_19747B898();
      goto LABEL_7;
    }

    sub_197478D8C(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_1973F7950(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1975229CC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1975213EC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:

  return sub_1974DA208(v12, a2, a3, a1, v18);
}

unint64_t sub_19747CE90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1973F7950(a2, a3);
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
      sub_19747BCCC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1974790F4(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1973F7950(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {

    return sub_1974DA2B8(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_19747CFD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1974A188C(a2, a3);
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
      sub_19741E5C8(&qword_1EAF2B390, &qword_19752D548);
      v11 = v19;
      goto LABEL_8;
    }

    sub_19741359C(v16, a4 & 1, &qword_1EAF2B390, &qword_19752D548);
    v20 = *v5;
    v11 = sub_1974A188C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = *(v22 + 56);
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {

    return sub_1974DD140(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_19747D134(void *a1, void *a2)
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

    v8 = sub_1975220FC();

    if (v8)
    {

      type metadata accessor for Schema.Entity();
      swift_dynamicCast();
      result = 0;
      *a1 = v26;
      return result;
    }

    result = sub_1975220EC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v23 = sub_19747DC14(v7, result + 1, &qword_1EAF2B180, &qword_19752D310, type metadata accessor for Schema.Entity);
    v28 = v23;
    v24 = *(v23 + 16);
    if (*(v23 + 24) <= v24)
    {

      sub_197417660(v24 + 1, &qword_1EAF2B180, &qword_19752D310);
      v25 = v28;
    }

    else
    {
      v25 = v23;
    }

    sub_19747EC28(a2, v25);

    *v3 = v25;
    goto LABEL_18;
  }

  v10 = *(v6 + 40);
  sub_197522A5C();
  swift_beginAccess();
  v11 = a2[2];
  v12 = a2[3];

  sub_19752180C();

  v13 = sub_197522A9C();
  v14 = -1 << *(v6 + 32);
  v15 = v13 & ~v14;
  if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_11:
    v20 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;

    sub_1974188C0(v22, v15, isUniquelyReferenced_nonNull_native, &qword_1EAF2B180, &qword_19752D310, type metadata accessor for Schema.Entity, _s9SwiftData6SchemaC6EntityC2eeoiySbAE_AEtFZ_0);
    *v3 = v27;
LABEL_18:
    *a1 = a2;
    return 1;
  }

  v16 = ~v14;
  while (1)
  {
    v17 = *(*(v6 + 48) + 8 * v15);

    v19 = _s9SwiftData6SchemaC6EntityC2eeoiySbAE_AEtFZ_0(v18, a2);

    if (v19)
    {
      break;
    }

    v15 = (v15 + 1) & v16;
    if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v15);

  return 0;
}

uint64_t sub_19747D408(uint64_t a1, uint64_t a2)
{
  v65 = a1;
  v83 = type metadata accessor for ModelConfiguration();
  v4 = *(v83 - 1);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v83, v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v63 = &v63 - v11;
  v64 = v2;
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_197522A5C();
  v14 = sub_1975212CC();
  sub_197413D04(&qword_1ED7C9DC8, MEMORY[0x1E6968FB0]);
  v81 = v14;
  sub_1975216BC();
  v15 = sub_197522A9C();
  v82 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v15 & ~v16;
  v80 = v12 + 56;
  if ((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v78 = ~v16;
    v79 = *(v4 + 72);
    v77 = xmmword_19752D100;
    v66 = a2;
    do
    {
      v18 = v79 * v17;
      sub_19741598C(*(v82 + 48) + v79 * v17, v9);
      sub_197413D04(&qword_1ED7C9DC0, MEMORY[0x1E6968FB0]);
      if ((sub_19752173C() & 1) == 0)
      {
        goto LABEL_4;
      }

      v19 = v83[5];
      v20 = *&v9[v19];
      v21 = *&v9[v19 + 8];
      v22 = (a2 + v19);
      v23 = v20 == *v22 && v21 == v22[1];
      if (!v23 && (sub_19752282C() & 1) == 0)
      {
        goto LABEL_4;
      }

      v24 = v83[10];
      v25 = *&v9[v24];
      v26 = *(a2 + v24);
      if (v25)
      {
        if (!v26)
        {
          goto LABEL_4;
        }

        v74 = v26;
        v75 = v18;
        v28 = v25[5];
        v27 = v25[6];
        v73 = v25;
        v29 = v25[7];
        v30 = v26[5];
        v72 = v26[6];
        v31 = v26[7];
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B418, &qword_19752F170);
        inited = swift_initStackObject();
        *(inited + 16) = v77;
        v68 = v28;
        v69 = v27;
        *(inited + 32) = v28;
        *(inited + 40) = v27;
        v70 = v29;
        *(inited + 48) = v29;
        v67 = v32;
        v34 = swift_initStackObject();
        *(v34 + 16) = v77;
        v76 = v30;
        *(v34 + 32) = v30;
        v35 = v72;
        *(v34 + 40) = v72;
        *(v34 + 48) = v31;
        v71 = v31;
        if (inited == v34 || *(inited + 32) == v76 && *(inited + 40) == v35 && *(inited + 48) == v71)
        {
          swift_setDeallocating();
          swift_setDeallocating();
          a2 = v66;
          v36 = v74;
          v18 = v75;
          v37 = v73;
        }

        else
        {
          v38 = sub_19749ED2C(v34, inited);
          swift_setDeallocating();
          swift_setDeallocating();
          a2 = v66;
          v36 = v74;
          v18 = v75;
          v37 = v73;
          if (v38)
          {
            goto LABEL_4;
          }
        }

        v39 = swift_initStackObject();
        *(v39 + 16) = v77;
        *(v39 + 32) = v76;
        *(v39 + 40) = v35;
        *(v39 + 48) = v71;
        v40 = swift_initStackObject();
        *(v40 + 16) = v77;
        v42 = v68;
        v41 = v69;
        *(v40 + 32) = v68;
        *(v40 + 40) = v41;
        v43 = v70;
        *(v40 + 48) = v70;
        if (v39 == v40 || *(v39 + 32) == v42 && *(v39 + 40) == v41 && *(v39 + 48) == v43)
        {
          swift_setDeallocating();
          swift_setDeallocating();
        }

        else
        {
          v44 = sub_19749ED2C(v40, v39);
          swift_setDeallocating();
          swift_setDeallocating();
          if (v44)
          {
            goto LABEL_4;
          }
        }

        v45 = v37[8];
        v46 = v36[8];

        LOBYTE(v45) = sub_197421268(v45, v46);

        if ((v45 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v26)
      {
        goto LABEL_4;
      }

      v47 = v83[6];
      v48 = &v9[v47];
      v49 = *&v9[v47 + 8];
      v50 = (a2 + v47);
      v51 = v50[1];
      if (v49)
      {
        if (!v51)
        {
          goto LABEL_4;
        }

        v52 = *v48 == *v50 && v49 == v51;
        if (!v52 && (sub_19752282C() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v51)
      {
        goto LABEL_4;
      }

      v53 = v83[7];
      v54 = &v9[v53];
      v55 = *&v9[v53 + 8];
      v56 = (a2 + v53);
      v57 = v56[1];
      if (v55)
      {
        if (!v57 || (*v54 != *v56 || v55 != v57) && (sub_19752282C() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v57)
      {
        goto LABEL_4;
      }

      if (v9[v83[12]] == *(a2 + v83[12]) && v9[v83[11]] == *(a2 + v83[11]))
      {
        sub_19740B2C8(v9);
        sub_19740B2C8(a2);
        sub_19741598C(*(v82 + 48) + v18, v65);
        return 0;
      }

LABEL_4:
      sub_19740B2C8(v9);
      v17 = (v17 + 1) & v78;
    }

    while (((*(v80 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
  }

  v59 = v64;
  v60 = *v64;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = v63;
  sub_19741598C(a2, v63);
  v84 = *v59;
  sub_19747EF74(v62, v17, isUniquelyReferenced_nonNull_native);
  *v59 = v84;
  sub_19740B38C(a2, v65);
  return 1;
}

uint64_t sub_19747D9D8(void *a1, uint64_t a2)
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

    v8 = sub_1975220FC();

    if (v8)
    {

      sub_19752202C();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_1975220EC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_19747DE54(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_19747E9CC(v19 + 1);
    }

    sub_19747EEC8(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  sub_19752202C();
  v10 = *(v6 + 40);
  v11 = sub_1975216AC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_19747F524(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (sub_19752173C())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_19747DC14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_1975221BC();
    v24 = v8;
    sub_1975220AC();
    if (sub_19752212C())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v18 = *(v8 + 16);
        if (*(v8 + 24) <= v18)
        {
          sub_197417660(v18 + 1, a3, a4);
        }

        v8 = v24;
        v9 = *(v24 + 40);
        sub_197522A5C();
        swift_beginAccess();
        v10 = *(v23 + 16);
        v11 = *(v23 + 24);

        sub_19752180C();

        result = sub_197522A9C();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_19752212C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v8;
}

uint64_t sub_19747DE54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B210, &qword_19752D3A0);
    v2 = sub_1975221BC();
    v16 = v2;
    sub_1975220AC();
    if (sub_19752212C())
    {
      sub_19752202C();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_19747E9CC(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1975216AC();
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

      while (sub_19752212C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_19747E054(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B408, &qword_19752D5C8);
  result = sub_1975221AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
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
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v21 = *(v3 + 48) + 40 * (v18 | (v7 << 6));
      v22 = *(v21 + 32);
      v23 = *(v21 + 16);
      v36 = *v21;
      v37 = v23;
      v38 = v22;
      v24 = *(v6 + 40);
      sub_197522A5C();
      v25 = v38;
      __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
      v26 = *(v25 + 8);
      sub_1975216BC();
      result = sub_197522A9C();
      v27 = -1 << *(v6 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v13 + 8 * v29);
          if (v33 != -1)
          {
            v14 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      v16 = v36;
      v17 = v37;
      *(v15 + 32) = v38;
      *v15 = v16;
      *(v15 + 16) = v17;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero((v3 + 56), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_19747E2E8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ModelConfiguration();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B420, &qword_19752D5E0);
  result = sub_1975221AC();
  v12 = result;
  if (*(v9 + 16))
  {
    v35 = v2;
    v36 = v9;
    v13 = 0;
    v14 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = result + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v9 + 48);
      v25 = *(v37 + 72);
      sub_19740B38C(v24 + v25 * (v21 | (v13 << 6)), v8);
      v26 = *(v12 + 40);
      sub_197522A5C();
      sub_1975212CC();
      sub_197413D04(&qword_1ED7C9DC8, MEMORY[0x1E6968FB0]);
      sub_1975216BC();
      result = sub_197522A9C();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_19740B38C(v8, *(v12 + 48) + v20 * v25);
      ++*(v12 + 16);
      v9 = v36;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v9 + 32);
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    v2 = v35;
    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_19747E614(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B228, &qword_19752D3B8);
  result = sub_1975221AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v2;
    v38 = v3;
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
      v19 = *(v3 + 48) + 16 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v6 + 40);
      sub_197522A5C();
      if (v21)
      {
        if (v21 == 1)
        {
          MEMORY[0x19A8E1190](1);
          v23 = *(v20 + 56);
          v24 = *(v20 + 64);
          sub_19752180C();
          v25 = *(v20 + 72);
          v26 = *(v20 + 80);
          sub_19752180C();
          if (*(v20 + 24))
          {
            v36 = *(v20 + 16);
            sub_197522A7C();
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          v27 = *(v20 + 33);
          sub_197522A7C();
          v3 = v38;
          *(v20 + 32);
        }

        else
        {
          MEMORY[0x19A8E1190](2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
        }

        sub_19752180C();
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_197521F4C();
      }

      result = sub_197522A9C();
      v28 = -1 << *(v6 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v13 + 8 * v30);
          if (v34 != -1)
          {
            v14 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 16 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_41;
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

    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      bzero(v8, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v35;
    }

    v2 = v37;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_19747E9CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B210, &qword_19752D3A0);
  result = sub_1975221AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      sub_19752202C();
      result = sub_1975216AC();
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

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_19747EC28(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_197522A5C();
  swift_beginAccess();
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);

  sub_19752180C();

  sub_197522A9C();
  v7 = -1 << *(a2 + 32);
  result = sub_19752208C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_19747ECF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 40);
  sub_197522A5C();
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, a2, &v12);
  v8 = v12;
  if (v13)
  {
    if (v13 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v8, 1);
      sub_197452CB8();
      sub_1974028C8(v8, 1);
      sub_1974028C8(v8, 1);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v8, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
      sub_1974028C8(v8, 2);
      sub_1974028C8(v8, 2);
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v8, 0);
    sub_197521F4C();
    sub_1974028C8(v8, 0);
    sub_1974028C8(v8, 0);
  }

  sub_197522A9C();
  v9 = -1 << *(a3 + 32);
  result = sub_19752208C();
  *(a3 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v11 = (*(a3 + 48) + 16 * result);
  *v11 = a1;
  v11[1] = a2;
  ++*(a3 + 16);
  return result;
}

unint64_t sub_19747EEC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_19752202C();
  sub_1975216AC();
  v5 = -1 << *(a2 + 32);
  result = sub_19752208C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_19747EF74(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for ModelConfiguration();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v71 = v8;
  v72 = v3;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_52;
  }

  if (a3)
  {
    sub_19747E2E8(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_19747F990();
      goto LABEL_52;
    }

    sub_19747FF84(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_197522A5C();
  v17 = sub_1975212CC();
  sub_197413D04(&qword_1ED7C9DC8, MEMORY[0x1E6968FB0]);
  sub_1975216BC();
  v18 = sub_197522A9C();
  v81 = v15 + 56;
  v82 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v18 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v80 = ~v19;
    v79 = *(v8 + 72);
    v78 = xmmword_19752D100;
    v65 = a1;
    v66 = v7;
    v64 = v17;
    do
    {
      sub_19741598C(*(v82 + 48) + v79 * a2, v12);
      sub_197413D04(&qword_1ED7C9DC0, MEMORY[0x1E6968FB0]);
      if ((sub_19752173C() & 1) == 0)
      {
        goto LABEL_11;
      }

      v20 = v7[5];
      v21 = *&v12[v20];
      v22 = *&v12[v20 + 8];
      v23 = (a1 + v20);
      v24 = v21 == *v23 && v22 == v23[1];
      if (!v24 && (sub_19752282C() & 1) == 0)
      {
        goto LABEL_11;
      }

      v25 = v7[10];
      v26 = *&v12[v25];
      v27 = *(a1 + v25);
      if (v26)
      {
        if (!v27)
        {
          goto LABEL_11;
        }

        v29 = v26[5];
        v28 = v26[6];
        v75 = v26;
        v76 = v27;
        v30 = v26[7];
        v31 = v27[5];
        v74 = v27[6];
        v32 = v27[7];
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B418, &qword_19752F170);
        inited = swift_initStackObject();
        *(inited + 16) = v78;
        v68 = v29;
        v69 = v28;
        *(inited + 32) = v29;
        *(inited + 40) = v28;
        v70 = v30;
        *(inited + 48) = v30;
        v67 = v33;
        v35 = swift_initStackObject();
        *(v35 + 16) = v78;
        v77 = v31;
        *(v35 + 32) = v31;
        v36 = v74;
        *(v35 + 40) = v74;
        *(v35 + 48) = v32;
        v73 = v32;
        if (inited == v35 || *(inited + 32) == v77 && *(inited + 40) == v36 && *(inited + 48) == v73)
        {
          swift_setDeallocating();
          swift_setDeallocating();
          a1 = v65;
          v38 = v75;
          v37 = v76;
        }

        else
        {
          v39 = sub_19749ED2C(v35, inited);
          swift_setDeallocating();
          swift_setDeallocating();
          a1 = v65;
          v7 = v66;
          v38 = v75;
          v37 = v76;
          if (v39)
          {
            goto LABEL_11;
          }
        }

        v40 = swift_initStackObject();
        *(v40 + 16) = v78;
        *(v40 + 32) = v77;
        *(v40 + 40) = v36;
        *(v40 + 48) = v73;
        v41 = swift_initStackObject();
        *(v41 + 16) = v78;
        v43 = v68;
        v42 = v69;
        *(v41 + 32) = v68;
        *(v41 + 40) = v42;
        v44 = v70;
        *(v41 + 48) = v70;
        if (v40 == v41 || *(v40 + 32) == v43 && *(v40 + 40) == v42 && *(v40 + 48) == v44)
        {
          swift_setDeallocating();
          swift_setDeallocating();
          v7 = v66;
        }

        else
        {
          v45 = sub_19749ED2C(v41, v40);
          swift_setDeallocating();
          swift_setDeallocating();
          v7 = v66;
          if (v45)
          {
            goto LABEL_11;
          }
        }

        v46 = v38[8];
        v47 = v37[8];

        LOBYTE(v46) = sub_197421268(v46, v47);

        if ((v46 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v27)
      {
        goto LABEL_11;
      }

      v48 = v7[6];
      v49 = &v12[v48];
      v50 = *&v12[v48 + 8];
      v51 = (a1 + v48);
      v52 = v51[1];
      if (v50)
      {
        if (!v52)
        {
          goto LABEL_11;
        }

        v53 = *v49 == *v51 && v50 == v52;
        if (!v53 && (sub_19752282C() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v52)
      {
        goto LABEL_11;
      }

      v54 = v7[7];
      v55 = &v12[v54];
      v56 = *&v12[v54 + 8];
      v57 = (a1 + v54);
      v58 = v57[1];
      if (v56)
      {
        if (!v58 || (*v55 != *v57 || v56 != v58) && (sub_19752282C() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v58)
      {
        goto LABEL_11;
      }

      if (v12[v7[12]] == *(a1 + v7[12]) && v12[v7[11]] == *(a1 + v7[11]))
      {
        sub_19740B2C8(v12);
        sub_1975229BC();
        __break(1u);
        break;
      }

LABEL_11:
      sub_19740B2C8(v12);
      a2 = (a2 + 1) & v80;
    }

    while (((*(v81 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_52:
  v59 = *v72;
  *(*v72 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_19740B38C(a1, *(v59 + 48) + *(v71 + 72) * a2);
  v61 = *(v59 + 16);
  v62 = __OFADD__(v61, 1);
  v63 = v61 + 1;
  if (v62)
  {
    __break(1u);
  }

  else
  {
    *(v59 + 16) = v63;
  }

  return result;
}

uint64_t sub_19747F524(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_19747E9CC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_19747FE44(&qword_1EAF2B210, &qword_19752D3A0);
      goto LABEL_12;
    }

    sub_197480280(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_19752202C();
  result = sub_1975216AC();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = sub_19752173C();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1975229BC();
  __break(1u);
  return result;
}

void *sub_19747F6BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B410, &unk_19752D5D0);
  v2 = *v0;
  v3 = sub_19752219C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_19747F818()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B408, &qword_19752D5C8);
  v2 = *v0;
  v3 = sub_19752219C();
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
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_197414BA4(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

void *sub_19747F990()
{
  v1 = v0;
  v2 = type metadata accessor for ModelConfiguration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B420, &qword_19752D5E0);
  v8 = *v0;
  v9 = sub_19752219C();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 56);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = *(v3 + 72) * (v20 | (v14 << 6));
        sub_19741598C(*(v8 + 48) + v23, v7);
        result = sub_19740B38C(v7, *(v10 + 48) + v23);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {
        goto LABEL_16;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v10;
  }

  return result;
}

void *sub_19747FB74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B228, &qword_19752D3B8);
  v2 = *v0;
  v3 = sub_19752219C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v4 + 48) + v17;
        v21 = *(v18 + 8);
        *v20 = *v18;
        *(v20 + 8) = v21;
        result = sub_1974028EC(v19, v21);
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

void *sub_19747FCD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B238, &unk_19752F350);
  v2 = *v0;
  v3 = sub_19752219C();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
        result = swift_unknownObjectRetain();
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

void *sub_19747FE44(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19752219C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
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

      v18 = *(v4 + 56 + 8 * v10);
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

uint64_t sub_19747FF84(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ModelConfiguration();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B420, &qword_19752D5E0);
  result = sub_1975221AC();
  v12 = result;
  if (*(v9 + 16))
  {
    v34 = v2;
    v35 = v9;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = result + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v9 + 48);
      v25 = *(v36 + 72);
      sub_19741598C(v24 + v25 * (v21 | (v13 << 6)), v8);
      v26 = *(v12 + 40);
      sub_197522A5C();
      sub_1975212CC();
      sub_197413D04(&qword_1ED7C9DC8, MEMORY[0x1E6968FB0]);
      sub_1975216BC();
      result = sub_197522A9C();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_19740B38C(v8, *(v12 + 48) + v20 * v25);
      ++*(v12 + 16);
      v9 = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v34;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
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
    *v2 = v12;
  }

  return result;
}

uint64_t sub_197480280(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B210, &qword_19752D3A0);
  result = sub_1975221AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      sub_19752202C();

      result = sub_1975216AC();
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

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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

uint64_t (*sub_1974804BC(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x19A8E0960](a2, a3);
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
    *v3 = v5;
    return sub_19748053C;
  }

  __break(1u);
  return result;
}

void (*sub_197480544(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x19A8E0960](a2, a3);
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
    return sub_1974805C4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1974805CC(uint64_t (*result)(uint64_t *), unint64_t a2, uint64_t a3))(uint64_t *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x19A8E0960](a2, a3);
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
    *v3 = v5;
    return sub_197480F64;
  }

  __break(1u);
  return result;
}

uint64_t sub_19748064C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void **a5)
{
  v10 = *a5;
  v12 = sub_1973F4028(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_19747B284();
      goto LABEL_7;
    }

    sub_19740CAD4(v15, a4 & 1);
    v22 = *a5;
    v23 = sub_1973F4028(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1975229CC();
    __break(1u);
    return result;
  }

LABEL_7:
  if (v16)
  {
LABEL_8:
    v18 = sub_197413D04(&qword_1ED7C9B80, type metadata accessor for DefaultStore);
    v19 = ((*a5)[7] + 16 * v12);
    v20 = *v19;
    *v19 = a1;
    v19[1] = v18;

    return swift_unknownObjectRelease();
  }

LABEL_13:
  sub_1974807D0(v12, a2, a3, a1, *a5);
}

uint64_t sub_1974807D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_197413D04(&qword_1ED7C9B80, type metadata accessor for DefaultStore);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = (a5[7] + 16 * a1);
  *v12 = a4;
  v12[1] = result;
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

void sub_197480890()
{
  if (qword_1EAF2AD10 != -1)
  {
    swift_once();
  }

  v0 = sub_19752157C();
  __swift_project_value_buffer(v0, qword_1EAF33E80);

  oslog = sub_19752155C();
  v1 = sub_197521DDC();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    *v2 = 136315138;
    type metadata accessor for ModelConfiguration();
    sub_197413D04(&qword_1ED7C9B70, type metadata accessor for ModelConfiguration);
    v4 = sub_197521BDC();
    v6 = v5;

    v7 = sub_197462310(v4, v6, &v9);

    *(v2 + 4) = v7;
    _os_log_impl(&dword_1973F2000, oslog, v1, "Configurations were improperly mutated after the model container was initialized with values: '%s'.  This is unsupported.", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_0(v3);
    MEMORY[0x19A8E1B50](v3, -1, -1);
    MEMORY[0x19A8E1B50](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_197480C58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_197480CB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_197480D18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_197480D60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_197480DA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE48, &unk_19752C0B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_197480F68(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = a3;
  v40 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v8 = sub_1975220EC();
  }

  else
  {
    v8 = *(a3 + 16);
  }

  if (v8)
  {
    v48 = MEMORY[0x1E69E7CC0];
    sub_197411CB8(0, v8 & ~(v8 >> 63), 0);
    v9 = v48;
    if (v40)
    {
      v10 = sub_19752209C();
    }

    else
    {
      v12 = -1 << *(v7 + 32);
      v10 = sub_19752206C();
      v11 = *(v7 + 36);
    }

    v45 = v10;
    v46 = v11;
    v47 = v40 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v37 = v7 + 56;
      v36 = v7 + 64;
      v38 = v8;
      while (v13 < v8)
      {
        v15 = __OFADD__(v13, 1);
        v16 = v13 + 1;
        if (v15)
        {
          goto LABEL_38;
        }

        v41 = v16;
        v5 = v45;
        LODWORD(v4) = v47;
        v8 = v46;
        v17 = v7;
        sub_197499B38(v45, v46, v47, v7);
        v7 = v18;
        v44 = v18;
        a1(&v42, &v44);
        if (v6)
        {
          goto LABEL_43;
        }

        v6 = 0;

        v19 = v42;
        v20 = v43;
        v21 = v9;
        v48 = v9;
        v22 = *(v9 + 16);
        v23 = *(v21 + 24);
        v7 = v22 + 1;
        if (v22 >= v23 >> 1)
        {
          v35 = v43;
          sub_197411CB8((v23 > 1), v22 + 1, 1);
          v20 = v35;
          v21 = v48;
        }

        *(v21 + 16) = v7;
        v24 = v21 + 16 * v22;
        *(v24 + 32) = v19;
        *(v24 + 40) = v20;
        if (v40)
        {
          if (!v4)
          {
            goto LABEL_44;
          }

          v9 = v21;
          v7 = v17;
          if (sub_1975220BC())
          {
            LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
          }

          else
          {
            LOBYTE(v4) = 1;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5B0, &qword_19752EA00);
          v14 = sub_197521BFC();
          sub_19752214C();
          v14(&v42, 0);
        }

        else
        {
          if (v4)
          {
            goto LABEL_45;
          }

          if ((v5 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v7 = v17;
          v25 = 1 << *(v17 + 32);
          if (v5 >= v25)
          {
            goto LABEL_39;
          }

          v9 = v21;
          v26 = v5 >> 6;
          v27 = *(v37 + 8 * (v5 >> 6));
          if (((v27 >> v5) & 1) == 0)
          {
            goto LABEL_40;
          }

          v28 = v8;
          if (*(v17 + 36) != v8)
          {
            goto LABEL_41;
          }

          v29 = v27 & (-2 << (v5 & 0x3F));
          if (v29)
          {
            v25 = __clz(__rbit64(v29)) | v5 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v4 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v4 += 64;
              ++v30;
              if (v33)
              {
                sub_19749B23C(v5, v28, 0);
                v25 = __clz(__rbit64(v32)) + v4;
                goto LABEL_34;
              }
            }

            sub_19749B23C(v5, v28, 0);
          }

LABEL_34:
          v34 = *(v17 + 36);
          v45 = v25;
          v46 = v34;
          v47 = 0;
        }

        v8 = v38;
        v13 = v41;
        if (v41 == v38)
        {
          sub_19749B23C(v45, v46, v47);
          return;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:

    sub_19749B23C(v5, v8, v4);

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }
}

void *sub_1974812FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = sub_197441730(v7);
  v6[4] = a3;
  v6[5] = a1;
  v6[6] = a2;
  return v6;
}

uint64_t sub_19748135C()
{
  type metadata accessor for CompositeKeyedEncoding();
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_allocObject();
  v7[6] = v2;
  v7[7] = v1;
  v7[2] = v4;
  v7[3] = v6;
  v7[4] = v5;
  v7[5] = v3;

  v8 = v4;

  swift_getWitnessTable();
  return sub_19752279C();
}

void *sub_197481434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  result[6] = a1;
  result[7] = a2;
  result[2] = a3;
  result[3] = a5;
  result[4] = a6;
  result[5] = a4;
  return result;
}

uint64_t sub_19748149C@<X0>(void *a1@<X8>)
{
  v3 = v1[6];
  swift_beginAccess();
  v4 = *(v3 + 128);
  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_1975221EC();
    v1 = v16;
    MEMORY[0x19A8DFF80](0xD000000000000021, 0x80000001975259C0);
    type metadata accessor for Schema.CompositeAttribute();
    sub_19752235C();
    sub_1975223EC();
    __break(1u);
    goto LABEL_11;
  }

  if (v4 < 0)
  {
    v15 = *(v3 + 128);
  }

  result = sub_1975220EC();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_11:

    v6 = MEMORY[0x19A8E0960](0, v4);

    goto LABEL_6;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);

LABEL_6:
    swift_beginAccess();
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);

    v9 = v1[7];
    v11 = v1[4];
    v10 = v1[5];
    v12 = type metadata accessor for CompositeSingleValueEncoding();
    v13 = swift_allocObject();
    v13[6] = v8;
    v13[7] = v7;
    v13[4] = v9;
    v13[5] = v3;
    v13[2] = v11;
    v13[3] = v10;
    a1[3] = v12;
    a1[4] = sub_19749B3F4(&qword_1EAF2ACA8, type metadata accessor for CompositeSingleValueEncoding);
    *a1 = v13;
    v14 = v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1974816C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1974817EC()
{
  type metadata accessor for CompositeKeyedDecoding();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0 + 4;
  v3 = v0[4];
  v5 = v4[1];

  sub_19749A170(v5, v1, v2, v3);

  swift_getWitnessTable();
  return sub_19752265C();
}

uint64_t sub_1974818D4@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v7 = v1 + 4;
  v5 = v1[4];
  v6 = v7[1];
  v8 = type metadata accessor for CompositeSingleValueDecoding();
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v3;
  v9[4] = v4;
  v9[5] = v5;
  a1[3] = v8;
  a1[4] = sub_19749B3F4(&qword_1EAF2ACB0, type metadata accessor for CompositeSingleValueDecoding);
  *a1 = v9;
  v10 = v6;
}

uint64_t sub_197481998()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_197481AE0()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v6 = sub_197522B4C();
  [v1 __swift_setObject_forKeyedSubscript_];
  return swift_unknownObjectRelease();
}

uint64_t sub_197481B88()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = sub_197522B4C();
  v6 = v5;
  v7 = sub_197521B0C();
  [v1 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197481C54()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = sub_197522B4C();
  v6 = v5;
  v7 = sub_19752178C();
  [v1 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197481D24()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = sub_197522B4C();
  v6 = v5;
  v7 = sub_197521B8C();
  [v1 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197481DF8()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = sub_197522B4C();
  v6 = v5;
  v7 = sub_197521BAC();
  [v1 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197482000(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = v3[2];
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 88);
  v9 = sub_197522B4C();
  v11 = v10;
  v12 = a3(a1);
  [v6 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197482100(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = v3[2];
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 88);
  v9 = sub_197522B4C();
  v11 = v10;
  v12 = a3(a1);
  [v6 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197482200(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = v3[2];
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 88);
  v9 = sub_197522B4C();
  v11 = v10;
  v12 = a3(a1);
  [v6 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197482300(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = v3[2];
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 88);
  v9 = sub_197522B4C();
  v11 = v10;
  v12 = a3(a1);
  [v6 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

void sub_1974823D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67[1] = a4;
  v5 = v4;
  v70 = a1;
  v7 = *v4;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v4[5];
  v14 = *(v13 + 80);
  v15 = *(v13 + 88);
  v71 = v16;
  v69 = v14;
  v78 = v15;
  v17 = sub_197522B4C();
  v19 = v18;
  swift_beginAccess();
  v20 = *(v12 + 136);
  if (!*(v20 + 16))
  {

    goto LABEL_24;
  }

  v21 = sub_1973F4028(v17, v19);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_24:
    swift_endAccess();
    v74 = 0;
    v75 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000011, 0x8000000197525980);
    v66 = sub_197522B4C();
    MEMORY[0x19A8DFF80](v66);

    MEMORY[0x19A8DFF80](0xD00000000000001CLL, 0x80000001975259A0);
    *&v72[0] = v12;
    type metadata accessor for Schema.CompositeAttribute();
    sub_19752235C();
    sub_1975223EC();
    __break(1u);
    return;
  }

  v24 = *(*(v20 + 56) + 8 * v21);
  swift_endAccess();
  if ((*(v24 + 120) & 0x60) != 0)
  {
    v25 = v5[2];

    v26 = sub_197522B4C();
    v28 = v27;
    v29 = sub_19752281C();
    v74 = v26;
    v75 = v28;
    [v25 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return;
  }

  (*(v8 + 16))(v11, v70, a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5D8, &qword_19752EA20);
  v30 = swift_dynamicCast();
  v31 = v71;
  if (v30)
  {
    sub_197438DC8(v72, &v74);
    v32 = swift_conformsToProtocol2();
    v33 = v68;
    if (v32)
    {
      sub_197482B54(a3, v5, v31, &v74, a3, a3);
LABEL_19:

      __swift_destroy_boxed_opaque_existential_1Tm_1(&v74);
      return;
    }

    __swift_destroy_boxed_opaque_existential_1Tm_1(&v74);
  }

  else
  {
    v73 = 0;
    memset(v72, 0, sizeof(v72));
    sub_1973FE58C(v72, &qword_1EAF2B5E0, &qword_19752EA28);
    v33 = v68;
  }

  v34 = sub_197522B4C();
  v36 = v35;
  swift_beginAccess();
  v37 = *(v12 + 136);
  if (!*(v37 + 16))
  {
    swift_endAccess();

    goto LABEL_17;
  }

  v38 = sub_1973F4028(v34, v36);
  v40 = v39;

  if ((v40 & 1) == 0)
  {
    swift_endAccess();
    goto LABEL_17;
  }

  v41 = *(*(v37 + 56) + 8 * v38);
  swift_endAccess();
  type metadata accessor for Schema.CompositeAttribute();
  v42 = swift_dynamicCastClass();
  if (!v42)
  {
LABEL_17:
    v51 = sub_197522B4C();
    v53 = v52;
    v54 = type metadata accessor for CompositeEncoder();
    v55 = swift_allocObject();
    v56 = MEMORY[0x1E69E7CC0];
    *(v55 + 32) = MEMORY[0x1E69E7CC0];

    *(v55 + 40) = sub_197441730(v56);
    v57 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    *(v55 + 16) = v51;
    *(v55 + 24) = v53;
    *(v55 + 48) = v12;
    *(v55 + 56) = v57;
    v76 = v54;
    v77 = sub_19749B3F4(&qword_1ED7C6928, type metadata accessor for CompositeEncoder);
    v74 = v55;

    sub_19752169C();
    if (v33)
    {

      goto LABEL_19;
    }

    __swift_destroy_boxed_opaque_existential_1Tm_1(&v74);
    v58 = v5[2];
    v59 = *(v55 + 56);
    v74 = sub_197522B4C();
    v75 = v60;
    v61 = v59;
    [v58 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();

    return;
  }

  v43 = v42;

  v44 = sub_197522B4C();
  v67[0] = v45;
  v46 = type metadata accessor for CompositeEncoder();
  v47 = swift_allocObject();
  v48 = MEMORY[0x1E69E7CC0];
  *(v47 + 32) = MEMORY[0x1E69E7CC0];
  v68 = v41;

  *(v47 + 40) = sub_197441730(v48);
  v49 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  v50 = v67[0];
  *(v47 + 16) = v44;
  *(v47 + 24) = v50;
  *(v47 + 48) = v43;
  *(v47 + 56) = v49;
  v76 = v46;
  v77 = sub_19749B3F4(&qword_1ED7C6928, type metadata accessor for CompositeEncoder);
  v74 = v47;

  sub_19752169C();
  if (v33)
  {

    goto LABEL_19;
  }

  __swift_destroy_boxed_opaque_existential_1Tm_1(&v74);
  v62 = v5[2];
  v63 = *(v47 + 56);
  v74 = sub_197522B4C();
  v75 = v64;
  v65 = v63;
  [v62 __swift_setObject_forKeyedSubscript_];
  swift_unknownObjectRelease();
}

uint64_t sub_197482B54(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a2;
  *&v23[0] = swift_getAssociatedTypeWitness();
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (sub_1974A2910(v23, MetatypeMetadata))
  {
    v11 = a2[2];
    v12 = *(v9 + 80);
    v13 = *(v9 + 88);
    v14 = sub_197522B4C();
    v16 = v15;
    __swift_project_boxed_opaque_existential_1Tm_0(a4, a4[3]);
    v17 = sub_19752281C();
    *&v23[0] = v14;
    *(&v23[0] + 1) = v16;
    [v11 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  sub_19749B32C(a4, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5D8, &qword_19752EA20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5C8, &unk_19752EA10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v21, 0, sizeof(v21));
    sub_1973FE58C(v21, &qword_1EAF2B5D0, &unk_197534040);
LABEL_9:
    *&v23[0] = 0;
    *(&v23[0] + 1) = 0xE000000000000000;
    sub_1975221EC();

    *&v23[0] = 0xD00000000000001ALL;
    *(&v23[0] + 1) = 0x8000000197525960;
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  sub_19749B314(v21, v23);
  v19 = dynamic_cast_existential_2_conditional(a6);
  if (!v19)
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1(v23);
    goto LABEL_9;
  }

  sub_197482E00(v19, v23, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm_1(v23);
}

uint64_t sub_197482E00(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a2[5];
  v5 = *a3;
  __swift_project_boxed_opaque_existential_1Tm_0(a2, a2[3]);
  v6 = sub_197520BAC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_197520B9C();
  v9 = sub_197520B8C();
  v11 = v10;

  v12 = a3[2];
  v13 = *(v5 + 80);
  v14 = *(v5 + 88);
  sub_197522B4C();
  v15 = sub_1975212FC();
  [v12 __swift_setObject_forKeyedSubscript_];
  sub_19744D0E0(v9, v11);

  return swift_unknownObjectRelease();
}

uint64_t sub_197482F5C()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = sub_197522B4C();
  v6 = v5;
  v7 = v0[5];
  swift_beginAccess();
  v8 = *(v7 + 136);
  if (*(v8 + 16) && (v9 = sub_1973F4028(v4, v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();

  v12 = v1[2];
  *&v33 = sub_197522B4C();
  *(&v33 + 1) = v13;
  v14 = [v12 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v14)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35[0] = v33;
  v35[1] = v34;
  if (!*(&v34 + 1))
  {
    sub_1973FE58C(v35, &qword_1EAF2AF20, &unk_19752F320);
LABEL_13:
    v15 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    *&v35[0] = sub_197522B4C();
    *(&v35[0] + 1) = v16;
    [v12 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    if (!v11)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  sub_197438EA8(0, &qword_1EAF2ACD8, 0x1E695DF20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_197438EA8(0, qword_1ED7C6730, 0x1E695DF90);
  v15 = sub_197521D6C();

  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_14:
  type metadata accessor for Schema.CompositeAttribute();
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = v17;
    type metadata accessor for CompositeKeyedEncoding();
    v19 = sub_197522B4C();
    v21 = v20;
    v23 = v1[3];
    v22 = v1[4];
    v24 = swift_allocObject();
    v24[6] = v19;
    v24[7] = v21;
    v24[2] = v15;
    v24[3] = v23;
    v24[4] = v22;
    v24[5] = v18;
    *&v35[0] = v24;

    swift_getWitnessTable();
    return sub_19752279C();
  }

LABEL_16:
  type metadata accessor for CompositeKeyedEncoding();
  v26 = sub_197522B4C();
  v28 = v27;
  v30 = v1[3];
  v29 = v1[4];
  v31 = swift_allocObject();
  v31[6] = v26;
  v31[7] = v28;
  v31[2] = v15;
  v31[3] = v30;
  v31[4] = v29;
  v31[5] = v7;
  *&v35[0] = v31;

  swift_getWitnessTable();
  sub_19752279C();
}

uint64_t sub_1974833A0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 80);
  v5 = sub_197521F5C();
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v10 = &v18 - v9;
  v11 = *(v4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8, v13);
  v15 = &v18 - v14;
  v16 = *(v3 + 88);
  sub_197522B5C();
  result = (*(v11 + 48))(v10, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v15, v10, v4);
    sub_197483548(a1);
    return (*(v11 + 8))(v15, v4);
  }

  return result;
}

uint64_t sub_197483548@<X0>(void *a1@<X8>)
{
  v4 = v1[6];
  v3 = v1[7];
  v5 = v1[5];
  v6 = type metadata accessor for CompositeEncoder();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  v7[4] = MEMORY[0x1E69E7CC0];

  v7[5] = sub_197441730(v8);
  v9 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  v7[2] = v4;
  v7[3] = v3;
  v7[6] = v5;
  v7[7] = v9;
  a1[3] = v6;
  result = sub_19749B3F4(&qword_1ED7C6928, type metadata accessor for CompositeEncoder);
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_197483628()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return v0;
}

uint64_t sub_197483668()
{
  sub_197483628();

  return swift_deallocClassInstance();
}

uint64_t sub_197483954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a4 + 80);
  v12 = *(a4 + 88);
  v13 = type metadata accessor for CompositeKeyedEncoding();
  return a6(a1, a2, a3, v13, a5);
}

uint64_t sub_1974839E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 80);
  v6 = *(a5 + 88);
  type metadata accessor for CompositeKeyedEncoding();
  return sub_19752296C();
}

uint64_t sub_197483A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  v4 = *(a3 + 88);
  type metadata accessor for CompositeKeyedEncoding();
  return sub_19752294C();
}

uint64_t sub_197483AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  v5 = *(a4 + 88);
  type metadata accessor for CompositeKeyedEncoding();
  return sub_19752293C();
}

uint64_t sub_197483CD0(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 80);
  v10 = *(a3 + 88);
  v11 = type metadata accessor for CompositeKeyedEncoding();
  return a5(a1 & 0x1FF, a2, v11, a4);
}

uint64_t sub_197483D64(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 80);
  v10 = *(a3 + 88);
  v11 = type metadata accessor for CompositeKeyedEncoding();
  return a5(a1 & 0x1FFFF, a2, v11, a4);
}

uint64_t sub_197483DF8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 80);
  v10 = *(a3 + 88);
  v11 = type metadata accessor for CompositeKeyedEncoding();
  return a5(a1 | ((HIDWORD(a1) & 1) << 32), a2, v11, a4);
}

uint64_t sub_197483E94(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a4 + 80);
  v12 = *(a4 + 88);
  v13 = type metadata accessor for CompositeKeyedEncoding();
  return a6(a1, a2 & 1, a3, v13, a5);
}

uint64_t sub_197483F30(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v13 = *(a5 + 80);
  v14 = *(a5 + 88);
  v15 = type metadata accessor for CompositeKeyedEncoding();
  return a7(a1, a2, a3 & 1, a4, v15, a6);
}

uint64_t sub_197483FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 80);
  v6 = *(a5 + 88);
  type metadata accessor for CompositeKeyedEncoding();
  return sub_19752295C();
}

uint64_t sub_19748409C()
{
  v1 = *v0;
  swift_beginAccess();
  v5 = v0[6];
  v4 = *(v1 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5B8, &qword_19752EA08);
  sub_19749B2B0();
  v2 = sub_19752190C();

  return v2;
}

uint64_t sub_197484180()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[6];
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);

  v5 = sub_197522B4C();
  v7 = sub_1974248B8(v5, v6, v2);

  return v7 & 1;
}

BOOL sub_197484238()
{
  v1 = v0[5];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  *&v7[0] = sub_197522B4C();
  *(&v7[0] + 1) = v4;
  v5 = [v1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  sub_1973FE58C(v7, &qword_1EAF2AF20, &unk_19752F320);
  return v5 == 0;
}

uint64_t sub_197484330()
{
  v1 = v0[5];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  *&v14[0] = sub_197522B4C();
  *(&v14[0] + 1) = v4;
  v5 = [v1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  sub_1973FE14C(v14, &v12, &qword_1EAF2AF20, &unk_19752F320);
  if (!*(&v13 + 1))
  {
    sub_1973FE58C(v14, &qword_1EAF2AF20, &unk_19752F320);
    v8 = &v12;
LABEL_10:
    sub_1973FE58C(v8, &qword_1EAF2AF20, &unk_19752F320);
    return 0;
  }

  sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = v14;
    goto LABEL_10;
  }

  result = sub_1973FE14C(v14, &v10, &qword_1EAF2AF20, &unk_19752F320);
  if (v11)
  {
    sub_1974028B8(&v10, &v12);
    swift_dynamicCast();
    v7 = [v9 BOOLValue];

    sub_1973FE58C(v14, &qword_1EAF2AF20, &unk_19752F320);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19748454C()
{
  v1 = v0[5];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  *&v9 = sub_197522B4C();
  *(&v9 + 1) = v4;

  v5 = [v1 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v5)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v8, &v9);
    swift_dynamicCast();
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197484660()
{
  v1 = v0[5];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  *&v8 = sub_197522B4C();
  *(&v8 + 1) = v4;

  v5 = [v1 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v5)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197484774()
{
  v1 = v0[5];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  *&v8 = sub_197522B4C();
  *(&v8 + 1) = v4;

  v5 = [v1 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v5)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197484968()
{
  v1 = v0[5];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  *&v8 = sub_197522B4C();
  *(&v8 + 1) = v4;

  v5 = [v1 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v5)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    swift_dynamicCast();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197484AA4()
{
  v1 = v0[5];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  *&v8 = sub_197522B4C();
  *(&v8 + 1) = v4;

  v5 = [v1 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v5)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    swift_dynamicCast();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197484BE0()
{
  v1 = v0[5];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  *&v8 = sub_197522B4C();
  *(&v8 + 1) = v4;

  v5 = [v1 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v5)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    swift_dynamicCast();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197484D1C()
{
  v1 = v0[5];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  *&v8 = sub_197522B4C();
  *(&v8 + 1) = v4;

  v5 = [v1 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v5)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    swift_dynamicCast();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_197484E38(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v45 = a4;
  v46 = a5;
  v8 = *v5;
  v44 = *(a3 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_197521F5C();
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = *(v41 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v40 - v18;
  v20 = v5[5];
  v21 = *(v8 + 80);
  v22 = *(v8 + 88);
  *&v49 = sub_197522B4C();
  *(&v49 + 1) = v23;
  v24 = [v20 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v24)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v52 = v49;
  v53 = v50;
  *&v49 = a3;
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (sub_1974A2C24(&v49, MetatypeMetadata))
  {
    v49 = v52;
    v50 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
    swift_dynamicCast();
    return;
  }

  if (swift_conformsToProtocol2())
  {
    sub_1973FE14C(&v52, &v49, &qword_1EAF2AF20, &unk_19752F320);
    if (*(&v50 + 1))
    {
      if (swift_dynamicCast())
      {
        sub_19744D0E0(v47, v48);
        v26 = v44;
        (*(v44 + 56))(v19, 1, 1, a3);
        sub_197485460(a3, v19, &v52, v21, a3, a3, v22);
        swift_beginAccess();
        v28 = v41;
        v27 = v42;
        (*(v41 + 16))(v16, v19, v42);
        v29 = *(v28 + 8);
        v29(v19, v27);
        v30 = *(v26 + 48);
        if (v30(v16, 1, a3) == 1)
        {
          v49 = v52;
          v50 = v53;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
          swift_dynamicCast();
          if (v30(v16, 1, a3) != 1)
          {
            v29(v16, v27);
          }
        }

        else
        {
          sub_1973FE58C(&v52, &qword_1EAF2AF20, &unk_19752F320);
          (*(v26 + 32))(v46, v16, a3);
        }

        return;
      }
    }

    else
    {
      sub_1973FE58C(&v49, &qword_1EAF2AF20, &unk_19752F320);
    }
  }

  sub_1973FE14C(&v52, &v49, &qword_1EAF2AF20, &unk_19752F320);
  if (!*(&v50 + 1))
  {
    sub_1973FE58C(&v49, &qword_1EAF2AF20, &unk_19752F320);
    goto LABEL_19;
  }

  sub_197438EA8(0, &qword_1EAF2ACD8, 0x1E695DF20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v49 = v52;
    v50 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
    swift_dynamicCast();
    return;
  }

  v31 = v47;
  v32 = v6[4];
  v33 = type metadata accessor for CompositeDecoder();
  v34 = swift_allocObject();
  v35 = MEMORY[0x1E69E7CC0];
  v34[2] = MEMORY[0x1E69E7CC0];
  v36 = v31;

  v37 = sub_197441730(v35);
  v34[4] = v32;
  v34[5] = v36;
  v34[3] = v37;
  *(&v50 + 1) = v33;
  v51 = sub_19749B3F4(&qword_1ED7C6930, type metadata accessor for CompositeDecoder);
  *&v49 = v34;

  v38 = v43;
  v39 = v54;
  sub_197521B9C();
  sub_1973FE58C(&v52, &qword_1EAF2AF20, &unk_19752F320);

  if (!v39)
  {
    (*(v44 + 32))(v46, v38, a3);
  }
}

uint64_t sub_197485460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[1] = a1;
  v23[2] = a7;
  v12 = sub_197521F5C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v23 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (sub_1974A2910(&AssociatedTypeWitness, MetatypeMetadata))
  {
    sub_1973FE14C(a3, &AssociatedTypeWitness, &qword_1EAF2AF20, &unk_19752F320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
    v19 = swift_dynamicCast();
    (*(*(a5 - 8) + 56))(v17, v19 ^ 1u, 1, a5);
    swift_beginAccess();
    return (*(v13 + 40))(a2, v17, v12);
  }

  else
  {
    v21 = dynamic_cast_existential_2_conditional(a6);
    if (v21)
    {
      return sub_197485708(v21, a3, a2, a4, a5, a6, v21);
    }

    else
    {
      AssociatedTypeWitness = 0;
      v25 = 0xE000000000000000;
      sub_1975221EC();

      AssociatedTypeWitness = 0xD00000000000001ALL;
      v25 = 0x8000000197525960;
      v22 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v22);

      result = sub_1975223EC();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_197485708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a3;
  v34 = a5;
  v9 = sub_197521F5C();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v33 - v13;
  v15 = *(a7 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v12, v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v33 - v22;
  v24 = sub_197520B7C();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_197520B6C();
  sub_1973FE14C(a2, &v40, &qword_1EAF2AF20, &unk_19752F320);
  if (v41)
  {
    sub_1974028B8(&v40, &v42);
    swift_dynamicCast();
    v27 = v38;
    v28 = v39;
    sub_197520B5C();

    sub_19744D0E0(v27, v28);
    (*(v15 + 32))(v20, v23, a7);
    v29 = v34;
    v30 = swift_dynamicCast();
    (*(*(v29 - 8) + 56))(v14, v30 ^ 1u, 1, v29);
    v31 = v37;
    swift_beginAccess();
    return (*(v35 + 40))(v31, v14, v36);
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_1974859DC()
{
  v1 = v0;
  v2 = v0[5];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  *&v13 = sub_197522B4C();
  *(&v13 + 1) = v5;
  v6 = [v2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v6)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (!*(&v14 + 1))
  {
    sub_1973FE58C(v15, &qword_1EAF2AF20, &unk_19752F320);
    goto LABEL_8;
  }

  sub_197438EA8(0, &qword_1EAF2ACD8, 0x1E695DF20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v7 = v2;
    goto LABEL_9;
  }

  v7 = v16;
LABEL_9:
  type metadata accessor for CompositeKeyedDecoding();
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v7;

  v12 = sub_19749A170(v11, v8, v9, v10);

  *&v15[0] = v12;

  swift_getWitnessTable();
  sub_19752265C();
}

uint64_t sub_197485C5C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 80);
  v5 = sub_197521F5C();
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v10 = &v18 - v9;
  v11 = *(v4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8, v13);
  v15 = &v18 - v14;
  v16 = *(v3 + 88);
  sub_197522B5C();
  result = (*(v11 + 48))(v10, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v15, v10, v4);
    sub_197485E1C(v15, a1);
    return (*(v11 + 8))(v15, v4);
  }

  return result;
}

uint64_t sub_197485E1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v6 = v2[4];
  v5 = v2[5];
  v7 = type metadata accessor for CompositeDecoder();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  v8[2] = MEMORY[0x1E69E7CC0];
  v10 = v5;

  v11 = sub_197441730(v9);
  v8[4] = v6;
  v8[5] = v10;
  v8[3] = v11;
  v12 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B2A8, &qword_19752D440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19752C280;
  v14 = *(v4 + 80);
  *(inited + 56) = v14;
  *(inited + 64) = *(v4 + 88);
  boxed_opaque_existential_2Tm_0 = __swift_allocate_boxed_opaque_existential_2Tm_0((inited + 32));
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_2Tm_0, a1, v14);

  sub_1974EE690(inited);
  v8[2] = v12;

  a2[3] = v7;
  result = sub_19749B3F4(&qword_1ED7C6930, type metadata accessor for CompositeDecoder);
  a2[4] = result;
  *a2 = v8;
  return result;
}

uint64_t sub_197485FB8()
{
  sub_197438E58(MEMORY[0x1E69E7CF8]);

  return swift_deallocClassInstance();
}

uint64_t sub_1974862E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for CompositeKeyedDecoding();
  return a4(a1, v9, a3);
}

uint64_t sub_197486360(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  type metadata accessor for CompositeKeyedDecoding();
  return sub_1975228AC();
}

uint64_t sub_1974863B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  type metadata accessor for CompositeKeyedDecoding();
  return sub_19752289C();
}

uint64_t sub_1974865C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for CompositeKeyedDecoding();
  return a4(a1, v9, a3) & 0x1FF;
}

uint64_t sub_19748665C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for CompositeKeyedDecoding();
  return a4(a1, v9, a3) & 0x1FFFF;
}

uint64_t sub_1974866F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for CompositeKeyedDecoding();
  v10 = a4(a1, v9, a3);
  return v10 | ((HIDWORD(v10) & 1) << 32);
}

uint64_t sub_19748679C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(a2 + 80);
  v8 = *(a2 + 88);
  v10 = type metadata accessor for CompositeKeyedDecoding();
  result = a4(a1, v10, a3);
  if (v4)
  {
    return v12;
  }

  return result;
}

uint64_t sub_197486830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(a2 + 80);
  v8 = *(a2 + 88);
  v10 = type metadata accessor for CompositeKeyedDecoding();
  result = a4(a1, v10, a3);
  if (v4)
  {
    return v12;
  }

  return result;
}

uint64_t sub_19748689C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 80);
  v6 = *(a5 + 88);
  type metadata accessor for CompositeKeyedDecoding();
  return sub_1975228EC();
}

uint64_t sub_197486998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[6] = a3;
  v5 = v4;
  v7 = v3[6];
  v6 = v3[7];
  v8 = v3[5];
  v9 = type metadata accessor for CompositeEncoder();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  v10[4] = MEMORY[0x1E69E7CC0];

  v10[5] = sub_197441730(v11);
  v12 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  v10[2] = v7;
  v10[3] = v6;
  v10[6] = v8;
  v10[7] = v12;
  v17[3] = v9;
  v17[4] = sub_19749B3F4(&qword_1ED7C6928, type metadata accessor for CompositeEncoder);
  v17[0] = v10;

  sub_19752169C();
  if (v5)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm_1(v17);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1(v17);
    v14 = v10[7];
    v15 = v3[4];
    v17[0] = v7;
    v17[1] = v6;

    v16 = v14;
    [v15 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_197486B34()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_197486BB0()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);

  [v2 __swift_setObject_forKeyedSubscript_];
  return swift_unknownObjectRelease();
}

uint64_t sub_197486C2C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v4 = *(v1 + 48);
  v3 = *(v1 + 56);

  v5 = sub_197521B0C();
  [v2 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197486CC8()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v4 = *(v1 + 48);
  v3 = *(v1 + 56);

  v5 = sub_19752178C();
  [v2 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197486D6C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v4 = *(v1 + 48);
  v3 = *(v1 + 56);

  v5 = sub_197521B8C();
  [v2 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197486E10()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v4 = *(v1 + 48);
  v3 = *(v1 + 56);

  v5 = sub_197521BAC();
  [v2 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197487000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = *v4;
  v8 = *(*v4 + 32);
  v10 = *(v7 + 48);
  v9 = *(v7 + 56);

  v11 = a4(a1);
  [v8 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_1974870D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = *v4;
  v8 = *(*v4 + 32);
  v10 = *(v7 + 48);
  v9 = *(v7 + 56);

  v11 = a4(a1);
  [v8 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_1974871A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = *v4;
  v8 = *(*v4 + 32);
  v10 = *(v7 + 48);
  v9 = *(v7 + 56);

  v11 = a4(a1);
  [v8 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197487270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = *v4;
  v8 = *(*v4 + 32);
  v10 = *(v7 + 48);
  v9 = *(v7 + 56);

  v11 = a4(a1);
  [v8 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t sub_197487350()
{
  v1 = [*(v0 + 16) allKeys];
  v2 = sub_1975219CC();
  if (*(v2 + 16))
  {

    if (*(v2 + 16))
    {
      sub_197404860(v2 + 32, v5);

      sub_1974028B8(v5, &v6);
      swift_dynamicCast();
      return v4;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_197487410()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  type metadata accessor for CompositeDecoder();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  v3[2] = MEMORY[0x1E69E7CC0];
  v5 = v1;

  v6 = sub_197441730(v4);
  v3[4] = v2;
  v3[5] = v5;
  v3[3] = v6;
  sub_19749B3F4(&qword_1ED7C6930, type metadata accessor for CompositeDecoder);
  return sub_197521B9C();
}

uint64_t sub_19748750C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_197487974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*v3 + 88);
  v13 = *(*v3 + 80);
  v14 = a2;
  v15 = v4;
  v16 = a3;
  type metadata accessor for ManagedObjectKeyedDecoding();
  v5 = *(v3 + 48);
  v6 = *(v3 + 64);
  v13 = *(v3 + 56);
  LOBYTE(v14) = v6;
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  v9 = *(v3 + 40);
  v10 = *(v3 + 32);

  sub_1974028EC(v13, v6);

  v11 = sub_19749A398(v10, v5, &v13, v8, v7, v9);

  v13 = v11;
  swift_getWitnessTable();
  return sub_19752265C();
}

uint64_t sub_197487B70(void *a1)
{
  sub_19749B32C(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
  type metadata accessor for Schema.Attribute();
  if (!swift_dynamicCast())
  {
    v5 = *(v1 + 72);
    v6 = a1[3];
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm_0(a1, v6);
    v8 = *(v7 + 32);

    v9 = v8(v6, v7);
    LOBYTE(v6) = sub_1974248B8(v9, v10, v5);

    if (v6)
    {
      v11 = *(v1 + 40);
      v12 = a1[3];
      v13 = a1[4];
      __swift_project_boxed_opaque_existential_1Tm_0(a1, v12);
      v14 = *(v13 + 32);

      v15 = v14(v12, v13);
      v17 = sub_197488090(v15, v16);

      v4 = v17 ^ 1;
      return v4 & 1;
    }

LABEL_6:
    v4 = 0;
    return v4 & 1;
  }

  v3 = *(v19 + 120);

  if ((v3 & 0x20) != 0)
  {
    goto LABEL_6;
  }

  v4 = (v3 & 0x99) != 0;
  return v4 & 1;
}

uint64_t sub_197487CE4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  sub_1974028C8(*(v0 + 56), *(v0 + 64));
  v5 = *(v0 + 72);

  return v0;
}

uint64_t sub_197487D38()
{
  sub_197487CE4();

  return swift_deallocClassInstance();
}

uint64_t sub_197487DF0(void *a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_197521F5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v17 - v8;
  v10 = [a1 objectID];
  swift_beginAccess();
  v11 = v1[2];
  v19 = v10;
  v20 = 0;
  sub_197405108();
  v12 = v10;

  sub_19752167C();

  sub_1974028C8(v19, v20);
  if ((*(*(v3 - 8) + 48))(v9, 1, v3) == 1)
  {
    (*(v5 + 8))(v9, v4);
    swift_beginAccess();
    v13 = a1;
    v14 = v1[3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v1[3];
    v1[3] = 0x8000000000000000;
    sub_197424C58(v13, v10, 0, isUniquelyReferenced_nonNull_native);

    v1[3] = v18;
    return swift_endAccess();
  }

  else
  {

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_197488024(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);

  v4 = sub_197488090(v3, v2);

  return v4 & 1;
}

uint64_t sub_197488090(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  LOBYTE(a2) = sub_1974248B8(a1, a2, v5);

  return a2 & 1;
}

void sub_1974880E8()
{
  v1 = *v0;
  v2 = sub_197521B0C();
  v3 = v0[2];
  v4 = *(v1 + 88);
  v5 = *(v1 + 104);
  v6 = v2;
  sub_197522B4C();
  v7 = sub_19752178C();

  [v3 setValue:v6 forKey:v7];
}

void sub_1974881AC(double a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v5 = *(v2 + 88);
  v6 = *(v2 + 104);
  sub_197522B4C();
  v7 = sub_19752178C();

  [v3 setValue:v4 forKey:v7];
}

void sub_19748827C(float a1)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v6 = a1;
  v7 = [v5 initWithFloat_];
  v8 = *(v3 + 88);
  v9 = *(v3 + 104);
  sub_197522B4C();
  v10 = sub_19752178C();

  [v4 setValue:v7 forKey:v10];
}

void sub_19748834C(char a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithChar_];
  v5 = *(v2 + 88);
  v6 = *(v2 + 104);
  sub_197522B4C();
  v7 = sub_19752178C();

  [v3 setValue:v4 forKey:v7];
}

void sub_197488454(unsigned __int8 a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedChar_];
  v5 = *(v2 + 88);
  v6 = *(v2 + 104);
  sub_197522B4C();
  v7 = sub_19752178C();

  [v3 setValue:v4 forKey:v7];
}

void sub_19748851C(unsigned __int16 a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
  v5 = *(v2 + 88);
  v6 = *(v2 + 104);
  sub_197522B4C();
  v7 = sub_19752178C();

  [v3 setValue:v4 forKey:v7];
}

void sub_197488604(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *v3;
  v5 = v3[2];
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a3];
  v7 = *(v4 + 88);
  v8 = *(v4 + 104);
  sub_197522B4C();
  v9 = sub_19752178C();

  [v5 setValue:v6 forKey:v9];
}

uint64_t sub_1974886F4()
{
  v9 = *(*v0 + 80);
  v10 = *(*v0 + 96);
  type metadata accessor for ManagedObjectKeyedEncoding();
  v1 = v0[2];
  v2 = v0[6];
  v3 = v0[7];
  v6 = v0 + 4;
  v4 = v0[4];
  v5 = v6[1];
  v7 = v1;

  sub_1974425BC(v7, v5, v2, v3, v4);

  swift_getWitnessTable();
  return sub_19752279C();
}

uint64_t sub_197488868@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 88);
  v5 = sub_197521F5C();
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v10 = &v18 - v9;
  v11 = *(v4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8, v13);
  v15 = &v18 - v14;
  v16 = *(v3 + 104);
  sub_197522B5C();
  result = (*(v11 + 48))(v10, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v15, v10, v4);
    sub_197488A14(a1);
    return (*(v11 + 8))(v15, v4);
  }

  return result;
}

uint64_t sub_197488A14@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 96);
  v5 = type metadata accessor for ManagedObjectEncoder();
  v6 = v1[2];
  v9 = v1 + 4;
  v7 = v1[4];
  v8 = v9[1];
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  v10[2] = MEMORY[0x1E69E7CC0];
  v12 = v6;

  v10[3] = sub_197441730(v11);
  v10[4] = v7;
  v10[5] = v12;
  v10[6] = v8;
  a1[3] = v5;
  result = swift_getWitnessTable();
  a1[4] = result;
  *a1 = v10;
  return result;
}

uint64_t sub_197488AF8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 120);
  sub_197438EA8(0, qword_1ED7C6730, 0x1E695DF90);
  v5 = sub_197521D6C();
  v6 = v5;
  if ((v4 & 2) != 0)
  {
    v7 = [v5 allKeys];
    v8 = sub_1975219CC();

    if (!*(v8 + 16))
    {
      goto LABEL_8;
    }

    sub_197404860(v8 + 32, v36);

    v9 = MEMORY[0x1E69E6158];
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_6;
    }

    swift_beginAccess();
    v10 = a2[18];

    v11 = sub_1974248B8(v33, *(&v33 + 1), v10);

    if ((v11 & 1) == 0)
    {
LABEL_8:

      if ((v4 & 4) == 0)
      {
        return v6;
      }

      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B590, &qword_19752E9C8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_19752C280;
    *(v12 + 32) = v33;
    *(v12 + 88) = v9;
    *(v12 + 56) = v9;
    *(v12 + 64) = v33;

    v13 = sub_197521D8C();

    v6 = v13;
  }

LABEL_6:
  if ((v4 & 4) == 0)
  {
    return v6;
  }

LABEL_9:
  result = swift_beginAccess();
  v15 = a2[16];
  if (v15 >> 62)
  {
    if (v15 < 0)
    {
      v30 = a2[16];
    }

    result = sub_1975220EC();
    v16 = result;
    if (!result)
    {
      return v6;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      return v6;
    }
  }

  if (v16 >= 1)
  {
    v17 = v15 & 0xC000000000000001;

    v18 = 0;
    v31 = v15;
    while (1)
    {
      if (v17)
      {
        v19 = MEMORY[0x19A8E0960](v18, v15);
        if ((*(v19 + 120) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v19 = *(v15 + 8 * v18 + 32);

        if ((*(v19 + 120) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v20;
        swift_beginAccess();
        v34 = *(v19 + 16);

        v22 = [v6 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v22)
        {
          sub_197521FDC();
          swift_unknownObjectRelease();
        }

        else
        {
          v34 = 0u;
          v35 = 0u;
        }

        v36[0] = v34;
        v36[1] = v35;
        if (*(&v35 + 1))
        {
          sub_197438EA8(0, &qword_1EAF2ACD8, 0x1E695DF20);
          if (swift_dynamicCast())
          {
            v23 = v16;
            v24 = v17;
            v25 = v6;
            v26 = v3;
            v27 = *(v19 + 16);
            v28 = *(v19 + 24);

            v29 = sub_197488AF8(v32, v21);
            *&v36[0] = v27;
            *(&v36[0] + 1) = v28;
            v3 = v26;
            v6 = v25;
            v17 = v24;
            v16 = v23;
            v15 = v31;
            [v6 __swift_setObject_forKeyedSubscript_];

            swift_unknownObjectRelease();
          }
        }

        else
        {

          sub_1973FE58C(v36, &qword_1EAF2AF20, &unk_19752F320);
        }

        goto LABEL_14;
      }

LABEL_13:

LABEL_14:
      if (v16 == ++v18)
      {

        return v6;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_197489178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = *(a4 + 80);
  v14 = *(a4 + 96);
  v11 = type metadata accessor for ManagedObjectKeyedEncoding();
  return a6(a1, a2, a3, v11, a5);
}

uint64_t sub_1974891F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 80);
  v7 = *(a5 + 96);
  type metadata accessor for ManagedObjectKeyedEncoding();
  return sub_19752296C();
}

uint64_t sub_197489278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 80);
  v5 = *(a3 + 96);
  type metadata accessor for ManagedObjectKeyedEncoding();
  return sub_19752294C();
}

uint64_t sub_1974892E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 80);
  v6 = *(a4 + 96);
  type metadata accessor for ManagedObjectKeyedEncoding();
  return sub_19752293C();
}

uint64_t sub_197489510(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a3 + 80);
  v12 = *(a3 + 96);
  v9 = type metadata accessor for ManagedObjectKeyedEncoding();
  return a5(a1 & 0x1FF, a2, v9, a4);
}

uint64_t sub_1974895B4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a3 + 80);
  v12 = *(a3 + 96);
  v9 = type metadata accessor for ManagedObjectKeyedEncoding();
  return a5(a1 & 0x1FFFF, a2, v9, a4);
}

uint64_t sub_197489658(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a3 + 80);
  v12 = *(a3 + 96);
  v9 = type metadata accessor for ManagedObjectKeyedEncoding();
  return a5(a1 | ((HIDWORD(a1) & 1) << 32), a2, v9, a4);
}

uint64_t sub_197489704(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v13 = *(a4 + 80);
  v14 = *(a4 + 96);
  v11 = type metadata accessor for ManagedObjectKeyedEncoding();
  return a6(a1, a2 & 1, a3, v11, a5);
}

uint64_t sub_1974897B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v15 = *(a5 + 80);
  v16 = *(a5 + 96);
  v13 = type metadata accessor for ManagedObjectKeyedEncoding();
  return a7(a1, a2, a3 & 1, a4, v13, a6);
}

uint64_t sub_197489840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 80);
  v7 = *(a5 + 96);
  type metadata accessor for ManagedObjectKeyedEncoding();
  return sub_19752295C();
}

uint64_t sub_197489950()
{
  v1 = *v0;
  v2 = *v0;
  swift_beginAccess();
  v8 = v0[7];
  v6 = *(v1 + 80);
  v5 = *(v2 + 88);
  v7 = *(v1 + 104);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5B8, &qword_19752EA08);
  sub_19749B2B0();
  v3 = sub_19752190C();

  return v3;
}

uint64_t sub_197489A68()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[7];
  v3 = *(v1 + 88);
  v4 = *(v1 + 104);

  v5 = sub_197522B4C();
  v7 = sub_1974248B8(v5, v6, v2);

  return v7 & 1;
}

BOOL sub_197489B20()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 104);
  v4 = sub_197522B4C();
  v6 = v5;
  v7 = v0[4];
  swift_beginAccess();
  v8 = *(v7 + 104);
  if (*(v8 + 16) && (v9 = sub_1973F4028(v4, v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    if (*(v11 + 168) == 1)
    {
      v12 = v1[2];

      v13 = sub_19752178C();

      v14 = [v12 objectIDsForRelationshipNamed_];

      sub_197438EA8(0, qword_1ED7C7910, 0x1E695D630);
      v15 = sub_1975219CC();

      if (v15 >> 62)
      {
        v16 = sub_1975220EC();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return v16 == 0;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    swift_endAccess();
    v18 = v1[2];
    v19 = sub_19752178C();

    v20 = [v18 valueForKey_];

    v17 = v20 == 0;
    if (v20)
    {
      sub_197521FDC();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v22, 0, sizeof(v22));
    }

    sub_1973FE58C(v22, &qword_1EAF2AF20, &unk_19752F320);
  }

  return v17;
}

uint64_t sub_197489D48()
{
  v1 = v0[2];
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 104);
  sub_197522B4C();
  v4 = sub_19752178C();

  v5 = [v1 valueForKey_];

  if (v5)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  sub_1973FE14C(v13, &v11, &qword_1EAF2AF20, &unk_19752F320);
  if (!*(&v12 + 1))
  {
    sub_1973FE58C(&v11, &qword_1EAF2AF20, &unk_19752F320);
    goto LABEL_9;
  }

  sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    sub_1973FE58C(v13, &qword_1EAF2AF20, &unk_19752F320);
    return 0;
  }

  result = sub_1973FE14C(v13, &v9, &qword_1EAF2AF20, &unk_19752F320);
  if (v10)
  {
    sub_1974028B8(&v9, &v11);
    swift_dynamicCast();
    v7 = [v8 BOOLValue];

    sub_1973FE58C(v13, &qword_1EAF2AF20, &unk_19752F320);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_197489F44()
{
  v1 = v0[2];
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 104);
  sub_197522B4C();
  v4 = sub_19752178C();

  v5 = [v1 valueForKey_];

  if (v5)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v6, &v7);
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

void sub_19748A03C()
{
  v1 = v0[2];
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 104);
  sub_197522B4C();
  v4 = sub_19752178C();

  v5 = [v1 valueForKey_];

  if (v5)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
    swift_dynamicCast();
    v6 = v9;
    [v9 doubleValue];
  }

  else
  {
    __break(1u);
  }
}

void sub_19748A16C()
{
  v1 = v0[2];
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 104);
  sub_197522B4C();
  v4 = sub_19752178C();

  v5 = [v1 valueForKey_];

  if (v5)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
    swift_dynamicCast();
    v6 = v9;
    [v9 floatValue];
  }

  else
  {
    __break(1u);
  }
}

void sub_19748A2BC()
{
  v1 = v0[2];
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 104);
  sub_197522B4C();
  v4 = sub_19752178C();

  v5 = [v1 valueForKey_];

  if (v5)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
    swift_dynamicCast();
    [v6 charValue];
  }

  else
  {
    __break(1u);
  }
}

void sub_19748A3E4()
{
  v1 = v0[2];
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 104);
  sub_197522B4C();
  v4 = sub_19752178C();

  v5 = [v1 valueForKey_];

  if (v5)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
    swift_dynamicCast();
    [v6 shortValue];
  }

  else
  {
    __break(1u);
  }
}

void sub_19748A54C(uint64_t a1, SEL *a2)
{
  v4 = v2[2];
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 104);
  sub_197522B4C();
  v7 = sub_19752178C();

  v8 = [v4 valueForKey_];

  if (v8)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v10, &v11);
    sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
    swift_dynamicCast();
    v9 = v12;
    [v12 *a2];
  }

  else
  {
    __break(1u);
  }
}

void sub_19748A69C()
{
  v1 = v0[2];
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 104);
  sub_197522B4C();
  v4 = sub_19752178C();

  v5 = [v1 valueForKey_];

  if (v5)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
    swift_dynamicCast();
    [v6 unsignedCharValue];
  }

  else
  {
    __break(1u);
  }
}

void sub_19748A7C4()
{
  v1 = v0[2];
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 104);
  sub_197522B4C();
  v4 = sub_19752178C();

  v5 = [v1 valueForKey_];

  if (v5)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
    swift_dynamicCast();
    [v6 unsignedShortValue];
  }

  else
  {
    __break(1u);
  }
}

void sub_19748A90C(uint64_t a1, SEL *a2)
{
  v4 = v2[2];
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 104);
  sub_197522B4C();
  v7 = sub_19752178C();

  v8 = [v4 valueForKey_];

  if (v8)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v10, &v11);
    sub_197438EA8(0, &qword_1ED7C9B88, 0x1E696AD98);
    swift_dynamicCast();
    v9 = v12;
    [v12 *a2];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19748AA5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = v4;
  v232 = a3;
  v10 = *v4;
  v11 = sub_197521F5C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v229 - v14;
  v16 = *(v10 + 88);
  v17 = *(v10 + 104);
  v240 = a1;
  v233 = v17;
  v234 = v16;
  if (sub_197522B4C() == 0xD000000000000014 && 0x8000000197524BA0 == v18)
  {

    goto LABEL_15;
  }

  v20 = sub_19752282C();

  if (v20)
  {
LABEL_15:
    *&v238 = [v6[2] objectID];
    BYTE8(v238) = 0;
    return swift_dynamicCast();
  }

  v230 = a2;
  v231 = a4;
  v229 = v5;
  v21 = swift_dynamicCastMetatype();
  v22 = v6[4];
  v23 = sub_197522B4C();
  v25 = v24;
  if (!v21)
  {
    swift_beginAccess();
    v44 = *(v22 + 96);
    if (*(v44 + 16))
    {
      v45 = sub_1973F4028(v23, v25);
      v47 = v46;

      v48 = v230;
      if (v47)
      {
        v49 = *(*(v44 + 56) + 8 * v45);
        swift_endAccess();
        if ((*(v49 + 120) & 0x90) == 0)
        {

          v135 = sub_197522B4C();
          sub_19748CAB0(v135, v136, v6[2], v48, v48, v15);

          v137 = *(v48 - 8);
          v138 = (*(v137 + 48))(v15, 1, v48);
          v139 = v231;
          if (v138 != 1)
          {

            return (*(v137 + 32))(v139, v15, v48);
          }

LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v50 = v6[2];
        swift_beginAccess();
        v52 = *(v49 + 16);
        v51 = *(v49 + 24);

        v53 = sub_19752178C();

        v54 = [v50 valueForKey_];

        if (v54)
        {
          sub_197521FDC();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_beginAccess();
          sub_1973FE14C(v49 + 64, &v236, &qword_1EAF2AF20, &unk_19752F320);
          if (!*(&v237 + 1))
          {
            sub_1973FE58C(&v236, &qword_1EAF2AF20, &unk_19752F320);
            v202 = [v50 entity];
            v203 = [v202 attributesByName];

            sub_197438EA8(0, &qword_1ED7C7700, 0x1E695D530);
            v204 = sub_1975215FC();

            if (*(v204 + 16) && (v205 = *(v49 + 16), v206 = *(v49 + 24), , v207 = sub_1973F4028(v205, v206), v209 = v208, , (v209 & 1) != 0))
            {
              v210 = *(*(v204 + 56) + 8 * v207);

              *&v238 = 0;
              *(&v238 + 1) = 0xE000000000000000;
              sub_1975221EC();
              MEMORY[0x19A8DFF80](0xD00000000000005CLL, 0x8000000197525620);
              v211 = *(v49 + 16);
              v212 = *(v49 + 24);

              MEMORY[0x19A8DFF80](v211, v212);

              MEMORY[0x19A8DFF80](0x206D6F72662027, 0xE700000000000000);
              v213 = [v50 description];
              v214 = sub_1975217BC();
              v216 = v215;

              MEMORY[0x19A8DFF80](v214, v216);

              MEMORY[0x19A8DFF80](0xD000000000000029, 0x80000001975256C0);
              v217 = [v210 description];
              v218 = sub_1975217BC();
              v220 = v219;

              MEMORY[0x19A8DFF80](v218, v220);

              v228 = 0;
            }

            else
            {

              *&v238 = 0;
              *(&v238 + 1) = 0xE000000000000000;
              sub_1975221EC();
              MEMORY[0x19A8DFF80](0xD00000000000005CLL, 0x8000000197525620);
              v221 = *(v49 + 16);
              v222 = *(v49 + 24);

              MEMORY[0x19A8DFF80](v221, v222);

              MEMORY[0x19A8DFF80](0x206D6F72662027, 0xE700000000000000);
              v223 = [v50 description];
              v224 = sub_1975217BC();
              v226 = v225;

              MEMORY[0x19A8DFF80](v224, v226);

              MEMORY[0x19A8DFF80](0xD000000000000035, 0x8000000197525680);
              v228 = 0;
            }

            goto LABEL_113;
          }

          sub_1974028B8(&v236, &v238);
        }

        type metadata accessor for Schema.Attribute();
        v143 = sub_1974480F8(&v238, v49);
        v145 = v144;

        __swift_destroy_boxed_opaque_existential_1Tm_1(&v238);
        *&v236 = v143;
        *(&v236 + 1) = v145;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A8, &qword_19752E9F8);
        return swift_dynamicCast();
      }
    }

    else
    {

      v48 = v230;
    }

    swift_endAccess();
    v90 = sub_197522B4C();
    v92 = v91;
    swift_beginAccess();
    v93 = *(v22 + 104);
    if (*(v93 + 16))
    {
      v94 = sub_1973F4028(v90, v92);
      v96 = v95;

      if (v96)
      {
        v97 = *(*(v93 + 56) + 8 * v94);
        swift_endAccess();
        v98 = *(v97 + 168);
        v99 = v6[3];

        v101 = sub_197488024(v100);
        if (v98)
        {
          if (v101)
          {
            v102 = v6[2];
            sub_197522B4C();
            v103 = sub_19752178C();

            v104 = [v102 valueForKey_];

            if (v104)
            {
              sub_197521FDC();
              swift_unknownObjectRelease();
            }

            else
            {
              v236 = 0u;
              v237 = 0u;
            }

            v238 = v236;
            v239 = v237;
            sub_1973FE14C(&v238, &v236, &qword_1EAF2AF20, &unk_19752F320);
            if (*(&v237 + 1))
            {
              sub_197438EA8(0, &qword_1ED7C9360, 0x1E695D620);
              if (swift_dynamicCast())
              {
                v146 = v235;
                sub_197487DF0(v235);
                v147 = [v146 objectID];

                sub_1973FE58C(&v238, &qword_1EAF2AF20, &unk_19752F320);
                *&v236 = v147;
                BYTE8(v236) = 0;
                return swift_dynamicCast();
              }
            }

            else
            {
              sub_1973FE58C(&v236, &qword_1EAF2AF20, &unk_19752F320);
            }

            *&v236 = 0;
            *(&v236 + 1) = 0xE000000000000000;
            sub_1975221EC();
            v235 = v236;
            MEMORY[0x19A8DFF80](0xD000000000000035, 0x80000001975255E0);
            v197 = *(v233 + 16);
            sub_19752280C();
            MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
            sub_1973FE14C(&v238, &v236, &qword_1EAF2AF20, &unk_19752F320);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
            v198 = sub_1975217CC();
            MEMORY[0x19A8DFF80](v198);

            v228 = 0;
            goto LABEL_113;
          }

          v117 = v6[2];
          sub_197522B4C();
          v118 = sub_19752178C();

          v119 = [v117 objectIDsForRelationshipNamed_];

          v67 = sub_197438EA8(0, qword_1ED7C7910, 0x1E695D630);
          v55 = sub_1975219CC();

          if (!(v55 >> 62))
          {
            v120 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v120 <= 1)
            {
              if (!v120)
              {
LABEL_86:

                v122 = 0;
                v123 = -1;
                goto LABEL_87;
              }

LABEL_50:
              if ((v55 & 0xC000000000000001) == 0)
              {
                if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v121 = *(v55 + 32);
LABEL_53:
                  v122 = v121;

                  v123 = 0;
LABEL_87:
                  *&v238 = v122;
                  BYTE8(v238) = v123;
                  v162 = &qword_1EAF2B5A0;
                  v163 = &qword_19752E9F0;
LABEL_91:
                  __swift_instantiateConcreteTypeFromMangledNameV2(v162, v163);
                  return swift_dynamicCast();
                }

                __break(1u);
                goto LABEL_96;
              }

LABEL_94:
              v121 = MEMORY[0x19A8E0960](0, v55);
              goto LABEL_53;
            }

LABEL_108:
            *&v238 = 0;
            *(&v238 + 1) = 0xE000000000000000;
            sub_1975221EC();

            *&v238 = 0xD000000000000025;
            *(&v238 + 1) = 0x80000001975255B0;
            v201 = MEMORY[0x19A8E0100](v55, v67);
            MEMORY[0x19A8DFF80](v201);

            v228 = 0;
            goto LABEL_113;
          }

LABEL_84:
          if (sub_1975220EC() < 2)
          {
            if (!sub_1975220EC())
            {
              goto LABEL_86;
            }

            goto LABEL_50;
          }

          goto LABEL_108;
        }

        if (v101)
        {
          v105 = v6[2];
          sub_197522B4C();
          v106 = sub_19752178C();

          v107 = [v105 valueForKey_];

          if (v107)
          {
            sub_197521FDC();
            swift_unknownObjectRelease();
          }

          else
          {
            v236 = 0u;
            v237 = 0u;
          }

          v238 = v236;
          v239 = v237;
          sub_1973FE14C(&v238, &v236, &qword_1EAF2AF20, &unk_19752F320);
          if (*(&v237 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFE0, &qword_19752C748);
            v148 = swift_dynamicCast();
            if (v148)
            {
              v150 = v235;
              MEMORY[0x1EEE9AC00](v148, v149);
              v151 = v232;
              *(&v229 - 4) = v48;
              *(&v229 - 3) = v151;
              v227 = v6;
              sub_197480F68(sub_19749B1D8, (&v229 - 6), v150);
              v153 = v152;

              sub_1973FE58C(&v238, &qword_1EAF2AF20, &unk_19752F320);
              *&v236 = v153;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
              return swift_dynamicCast();
            }
          }

          else
          {
            sub_1973FE58C(&v236, &qword_1EAF2AF20, &unk_19752F320);
          }

          *&v236 = 0;
          *(&v236 + 1) = 0xE000000000000000;
          sub_1975221EC();
          v235 = v236;
          MEMORY[0x19A8DFF80](0xD00000000000003CLL, 0x8000000197525570);
          sub_1973FE14C(&v238, &v236, &qword_1EAF2AF20, &unk_19752F320);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
          v199 = sub_1975217CC();
          MEMORY[0x19A8DFF80](v199);

          MEMORY[0x19A8DFF80](2112041, 0xE300000000000000);
          sub_1973FE14C(&v238, &v236, &qword_1EAF2AF20, &unk_19752F320);
          v200 = sub_1975217CC();
          MEMORY[0x19A8DFF80](v200);

          v228 = 0;
          goto LABEL_113;
        }

        v124 = v6[2];
        sub_197522B4C();
        v125 = sub_19752178C();

        v126 = [v124 objectIDsForRelationshipNamed_];

        sub_197438EA8(0, qword_1ED7C7910, 0x1E695D630);
        v55 = sub_1975219CC();

        if (v55 >> 62)
        {
          v127 = sub_1975220EC();
          if (v127)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v127 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v127)
          {
LABEL_56:
            *&v238 = MEMORY[0x1E69E7CC0];
            sub_197411CB8(0, v127 & ~(v127 >> 63), 0);
            if (v127 < 0)
            {
              __break(1u);
              goto LABEL_94;
            }

            v128 = 0;
            v129 = v238;
            do
            {
              if ((v55 & 0xC000000000000001) != 0)
              {
                v130 = MEMORY[0x19A8E0960](v128, v55);
              }

              else
              {
                v130 = *(v55 + 8 * v128 + 32);
              }

              *&v238 = v129;
              v132 = *(v129 + 16);
              v131 = *(v129 + 24);
              if (v132 >= v131 >> 1)
              {
                v134 = v130;
                sub_197411CB8((v131 > 1), v132 + 1, 1);
                v130 = v134;
                v129 = v238;
              }

              ++v128;
              *(v129 + 16) = v132 + 1;
              v133 = v129 + 16 * v132;
              *(v133 + 32) = v130;
              *(v133 + 40) = 0;
            }

            while (v127 != v128);

LABEL_90:
            *&v238 = v129;
            v162 = &qword_1EAF2AEE0;
            v163 = &qword_19752E9C0;
            goto LABEL_91;
          }
        }

        v129 = MEMORY[0x1E69E7CC0];
        goto LABEL_90;
      }
    }

    else
    {
    }

    swift_endAccess();
    *&v238 = 0;
    *(&v238 + 1) = 0xE000000000000000;
    sub_1975221EC();

    *&v238 = 0xD000000000000011;
    *(&v238 + 1) = 0x8000000197525550;
    v166 = sub_197522B4C();
    MEMORY[0x19A8DFF80](v166);

    MEMORY[0x19A8DFF80](0x20726F6620, 0xE500000000000000);
    v167 = [v6[2] description];
    v168 = sub_1975217BC();
    v170 = v169;

    MEMORY[0x19A8DFF80](v168, v170);

    v228 = 0;
    goto LABEL_113;
  }

  swift_beginAccess();
  v26 = *(v22 + 96);
  if (!*(v26 + 16))
  {

LABEL_22:
    swift_endAccess();
    v55 = v6[2];
    v56 = [v55 entity];
    v57 = [v56 relationshipsByName];

    sub_197438EA8(0, &qword_1ED7C9350, 0x1E695D6E8);
    v58 = sub_1975215FC();

    v59 = sub_197522B4C();
    if (!*(v58 + 16))
    {
LABEL_97:

      goto LABEL_98;
    }

    v61 = sub_1973F4028(v59, v60);
    v63 = v62;

    if ((v63 & 1) == 0)
    {
LABEL_98:

      *&v238 = 0;
      *(&v238 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000036, 0x80000001975256F0);
      v164 = *(v233 + 16);
      sub_19752280C();
      MEMORY[0x19A8DFF80](0x6570797420666F20, 0xE900000000000020);
      v165 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v165);

      v228 = 0;
      goto LABEL_113;
    }

    v64 = *(*(v58 + 56) + 8 * v61);

    v65 = v64;
    v66 = [v65 name];
    if (!v66)
    {
      sub_1975217BC();
      v66 = sub_19752178C();
    }

    v67 = [v55 objectIDsForRelationshipNamed_];

    sub_197438EA8(0, qword_1ED7C7910, 0x1E695D630);
    v68 = sub_1975219CC();

    if ([v65 isToMany])
    {
      v69 = *(v6[3] + 40);
      v71 = *(v6 + 72);
      *&v238 = v6[8];
      v70 = v238;
      BYTE8(v238) = v71;

      sub_1974028EC(v70, v71);
      v72 = sub_197522B4C();
      sub_19746C2F4(v68, &v238, v72, v73);

      sub_1974028C8(v238, SBYTE8(v238));
      v74 = [v65 name];

      v75 = sub_1975217BC();
      v77 = v76;

      *&v238 = v75;
      *(&v238 + 1) = v77;
      v78 = 4;
LABEL_34:
      LOBYTE(v239) = v78;
      return swift_dynamicCast();
    }

    if (v68 >> 62)
    {
      if (sub_1975220EC())
      {
        goto LABEL_30;
      }
    }

    else if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_30:
      if ((v68 & 0xC000000000000001) != 0)
      {
        v79 = MEMORY[0x19A8E0960](0, v68);
        goto LABEL_33;
      }

      if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v79 = *(v68 + 32);
LABEL_33:
        v80 = v79;

        v81 = *(v6[3] + 40);
        v83 = *(v6 + 72);
        *&v238 = v6[8];
        v82 = v238;
        BYTE8(v238) = v83;

        sub_1974028EC(v82, v83);
        v84 = sub_197522B4C();
        sub_19746C188(v80, &v238, v84, v85);

        sub_1974028C8(v238, SBYTE8(v238));
        v86 = [v65 name];

        v87 = sub_1975217BC();
        v89 = v88;

        *&v238 = v87;
        *(&v238 + 1) = v89;
        v78 = 3;
        goto LABEL_34;
      }

      __break(1u);
      goto LABEL_84;
    }

    *&v238 = 0;
    *(&v238 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000053, 0x8000000197523E30);
    v154 = [v65 name];

    v155 = sub_1975217BC();
    v157 = v156;

    MEMORY[0x19A8DFF80](v155, v157);

    MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
    v158 = [v55 description];
    v159 = sub_1975217BC();
    v161 = v160;

    MEMORY[0x19A8DFF80](v159, v161);

    v228 = 0;
    goto LABEL_113;
  }

  v27 = sub_1973F4028(v23, v25);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    goto LABEL_22;
  }

  v30 = *(*(v26 + 56) + 8 * v27);
  swift_endAccess();
  v31 = *(v30 + 120);
  if (v31)
  {
    v32 = v6[2];

    sub_197522B4C();
    v33 = sub_19752178C();

    v34 = [v32 valueForKey_];

    if (v34)
    {
      sub_197521FDC();
      swift_unknownObjectRelease();
      if ((v31 & 1) == 0)
      {
        v35 = *(v6[3] + 40);
        v37 = *(v6 + 72);
        *&v236 = v6[8];
        v36 = v236;
        BYTE8(v236) = v37;

        sub_1974028EC(v36, v37);
        v38 = sub_197522B4C();
        if ((v31 & 0x90) != 0)
        {
          sub_1973FF4F8(&v238, &v236, v38, v39);

          sub_1974028C8(v236, SBYTE8(v236));
          v40 = sub_197522B4C();
          v42 = v41;

          __swift_destroy_boxed_opaque_existential_1Tm_1(&v238);
          *&v236 = v40;
          *(&v236 + 1) = v42;
          LOBYTE(v237) = 1;
        }

        else
        {
          sub_19746BD5C(&v238, &v236, v38, v39);

          sub_1974028C8(v236, SBYTE8(v236));
          v140 = sub_197522B4C();
          v142 = v141;

          __swift_destroy_boxed_opaque_existential_1Tm_1(&v238);
          *&v236 = v140;
          *(&v236 + 1) = v142;
          LOBYTE(v237) = 0;
        }

        return swift_dynamicCast();
      }

      sub_197404860(&v238, &v236);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE8, &unk_19752C690);
      if (swift_dynamicCast())
      {
        v108 = v235;
        v109 = *(v6[3] + 40);
        v111 = *(v6 + 72);
        *&v236 = v6[8];
        v110 = v236;
        BYTE8(v236) = v111;

        sub_1974028EC(v110, v111);
        v112 = sub_197522B4C();
        sub_19746BEBC(v108, &v236, v112, v113);

        sub_1974028C8(v236, SBYTE8(v236));
        v114 = sub_197522B4C();
        v116 = v115;

        __swift_destroy_boxed_opaque_existential_1Tm_1(&v238);
        *&v236 = v114;
        *(&v236 + 1) = v116;
        LOBYTE(v237) = 2;
        return swift_dynamicCast();
      }

      *&v236 = 0;
      *(&v236 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000002ELL, 0x8000000197523EB0);
      v187 = sub_197522B4C();
      MEMORY[0x19A8DFF80](v187);

      MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
      v188 = [v32 objectID];
      v189 = [v188 description];
      v190 = sub_1975217BC();
      v192 = v191;

      MEMORY[0x19A8DFF80](v190, v192);

      MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
      v193 = [v32 description];
      v194 = sub_1975217BC();
      v196 = v195;

      MEMORY[0x19A8DFF80](v194, v196);

      v228 = 0;
    }

    else
    {
      *&v238 = 0;
      *(&v238 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000002ELL, 0x8000000197523EB0);
      v177 = sub_197522B4C();
      MEMORY[0x19A8DFF80](v177);

      MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
      v178 = [v32 objectID];
      v179 = [v178 description];
      v180 = sub_1975217BC();
      v182 = v181;

      MEMORY[0x19A8DFF80](v180, v182);

      MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
      v183 = [v32 description];
      v184 = sub_1975217BC();
      v186 = v185;

      MEMORY[0x19A8DFF80](v184, v186);

      v228 = 0;
    }
  }

  else
  {
    *&v238 = 0;
    *(&v238 + 1) = 0xE000000000000000;

    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000057, 0x8000000197525730);
    v171 = sub_197522B4C();
    MEMORY[0x19A8DFF80](v171);

    MEMORY[0x19A8DFF80](8236, 0xE200000000000000);
    v172 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v172);

    MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
    v173 = [v6[2] description];
    v174 = sub_1975217BC();
    v176 = v175;

    MEMORY[0x19A8DFF80](v174, v176);

    v228 = 0;
  }

LABEL_113:
  result = sub_1975223EC();
  __break(1u);
  return result;
}