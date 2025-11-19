uint64_t sub_29D691704(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_29D6946C0(0, &qword_2A17B1098);
  v38 = a2;
  result = sub_29D93AB98();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
        sub_29D935E88();
      }

      v27 = *(v8 + 40);
      sub_29D93AE58();
      sub_29D939E18();
      result = sub_29D93AE98();
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
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_29D6919A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_29D695790();
  v36 = a2;
  result = sub_29D93AB98();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
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
      v37 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_29D939D68();
      sub_29D93AE58();
      sub_29D939E18();
      v25 = sub_29D93AE98();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
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
      *(*(v8 + 56) + 8 * v16) = v37;
      ++*(v8 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_29D691C58(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_29D6946C0(0, &unk_2A17B3740);
  v40 = a2;
  result = sub_29D93AB98();
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
        sub_29D935E88();
        sub_29D935E88();
      }

      v29 = *(v8 + 40);
      sub_29D93AE58();
      sub_29D939E18();
      result = sub_29D93AE98();
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

uint64_t sub_29D691F1C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_29D9339F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  sub_29D695564();
  v44 = a2;
  result = sub_29D93AB98();
  v15 = result;
  if (*(v12 + 16))
  {
    v48 = v11;
    v40 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v22 = result + 64;
    v43 = v12;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v12 + 48);
      v47 = *(v7 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v6);
        v46 = *(*(v12 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v6);
        v46 = *(*(v12 + 56) + 8 * v27);
        sub_29D935E88();
      }

      v30 = *(v15 + 40);
      sub_29D68E85C(&qword_2A17B1360, 255, MEMORY[0x29EDB9BC8]);
      result = sub_29D939C88();
      v31 = -1 << *(v15 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v45)(*(v15 + 48) + v47 * v23, v48, v6);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v7 = v42;
      v12 = v43;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v12 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

_OWORD *sub_29D6922EC(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_29D690868(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_29D692FC4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_29D690B98(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_29D690868(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_29D93ADC8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    sub_29D69417C(v20);

    return sub_29D6940E0(a1, v20);
  }

  else
  {
    sub_29D6928D0(v8, a2, a1, v19);

    return a2;
  }
}

_OWORD *sub_29D69242C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_29D6907F0(a2, a3);
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
      sub_29D6932D4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_29D691114(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_29D6907F0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_29D93ADC8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_29D69417C(v23);

    return sub_29D6940E0(a1, v23);
  }

  else
  {
    sub_29D692938(v11, a2, a3, a1, v22);

    return sub_29D935E88();
  }
}

uint64_t sub_29D69257C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_29D6907F0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_29D691C58(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_29D6907F0(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_29D93ADC8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_29D69395C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;

  return sub_29D935E88();
}

uint64_t sub_29D692704(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_29D9339F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_29D690A14(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_29D693AD8();
      goto LABEL_7;
    }

    sub_29D691F1C(v19, a3 & 1);
    v26 = *v4;
    v27 = sub_29D690A14(a2);
    if ((v20 & 1) == (v28 & 1))
    {
      v16 = v27;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      return sub_29D6929A4(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_29D93ADC8();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

_OWORD *sub_29D6928D0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_29D6940E0(a3, (a4[7] + 32 * a1));
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

_OWORD *sub_29D692938(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_29D6940E0(a4, (a5[7] + 32 * a1));
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

uint64_t sub_29D6929A4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_29D9339F8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_29D692A5C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_29D93AD78())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_29D692B14(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_29D694610(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x29ED6AD90](v9, a1);
      sub_29D69466C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_29D692BDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v23[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v23 - v12;
  v24 = v6;
  v14 = -1 << *(v6 + 32);
  v15 = a2 & ~v14;
  v23[0] = v6 + 64;
  if ((*(v6 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v13, *(v24 + 48) + v20 * v15, v8);
      sub_29D68E85C(v25, 255, v26);
      v21 = sub_29D939CF8();
      (*(v18 - 8))(v13, v8);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
    }

    while (((*(v23[0] + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  return v15;
}

unint64_t sub_29D692D80(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_29D93A708();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_29D692E54(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_29D939D68();
      v9 = v8;
      if (v7 == sub_29D939D68() && v9 == v10)
      {
        break;
      }

      v12 = sub_29D93AD78();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_29D692F58(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

id sub_29D692FC4()
{
  v1 = v0;
  sub_29D6941F0();
  v2 = *v0;
  v3 = sub_29D93AB88();
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
        sub_29D694294(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_29D6940E0(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_29D693138()
{
  v1 = v0;
  sub_29D694530();
  v2 = *v0;
  v3 = sub_29D93AB88();
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
        sub_29D6945AC(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_29D679D3C(v25, *(v4 + 56) + v22);
        result = sub_29D935E88();
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

void *sub_29D6932D4()
{
  v1 = v0;
  sub_29D6946C0(0, &qword_2A17B1128);
  v2 = *v0;
  v3 = sub_29D93AB88();
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
        sub_29D694294(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_29D6940E0(v25, (*(v4 + 56) + v22));
        result = sub_29D935E88();
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

void *sub_29D693480()
{
  v1 = v0;
  v2 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6942F0();
  v6 = *v0;
  v7 = sub_29D93AB88();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v34 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = *(v6 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = v19 | (v12 << 6);
        v23 = 16 * v22;
        v24 = (*(v6 + 48) + 16 * v22);
        v25 = *v24;
        v26 = v24[1];
        v27 = v32;
        v28 = *(v33 + 72) * v22;
        sub_29D694358(*(v6 + 56) + v28, v32);
        v29 = v34;
        v30 = (*(v34 + 48) + v23);
        *v30 = v25;
        v30[1] = v26;
        sub_29D6943BC(v27, *(v29 + 56) + v28);
        result = sub_29D935E88();
      }

      while (v17);
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

        v1 = v31;
        v8 = v34;
        goto LABEL_21;
      }

      v21 = *(v6 + 64 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void *sub_29D6936A0()
{
  v1 = v0;
  sub_29D6946C0(0, &qword_2A17B1098);
  v2 = *v0;
  v3 = sub_29D93AB88();
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
        result = sub_29D935E88();
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

id sub_29D69380C()
{
  v1 = v0;
  sub_29D695790();
  v2 = *v0;
  v3 = sub_29D93AB88();
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

void *sub_29D69395C()
{
  v1 = v0;
  sub_29D6946C0(0, &unk_2A17B3740);
  v2 = *v0;
  v3 = sub_29D93AB88();
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
        sub_29D935E88();
        result = sub_29D935E88();
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

void *sub_29D693AD8()
{
  v1 = v0;
  v33 = sub_29D9339F8();
  v35 = *(v33 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x2A1C7C4A8](v33, v3);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D695564();
  v5 = *v0;
  v6 = sub_29D93AB88();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = (v5 + 64);
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, v29, 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v24 = v32;
        v23 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v34;
        (*(v21 + 32))(*(v34 + 48) + v22, v24, v23);
        *(*(v26 + 56) + 8 * v20) = v25;
        result = sub_29D935E88();
        v15 = v36;
      }

      while (v36);
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

        v1 = v28;
        v7 = v34;
        goto LABEL_21;
      }

      v19 = *(v29 + v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_29D693D44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_29D693F78(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_29D679D3C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_29D693DDC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void *sub_29D693E2C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double sub_29D693E70(uint64_t a1)
{
  sub_29D934E48();
  sub_29D934E58();
  Width = CGRectGetWidth(v11);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = Width * 0.23;
    v5 = (a1 + 32);
    v6 = 0.0;
    do
    {
      sub_29D934E48();
      sub_29D934E58();
      sub_29D934DD8();
      v7 = v5[4];
      sub_29D693E2C(v5, v5[3]);
      sub_29D935118();
      v8 = CGRectGetWidth(v12);

      if (v6 >= v8)
      {
        v9 = v6;
      }

      else
      {
        v9 = v8;
      }

      if (v8 > v9)
      {
        v9 = v8;
      }

      if (v9 > v4)
      {
        v6 = v9;
      }

      else
      {
        v6 = v4;
      }

      v5 += 5;
      --v3;
    }

    while (v3);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

uint64_t *sub_29D693F78(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_29D693FE0(uint64_t a1, uint64_t a2)
{
  sub_29D68F3C4(0, &qword_2A17B1020, &qword_2A17B1010, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D694070(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_29D68F3C4(0, a2, &qword_2A17B1010, MEMORY[0x29EDC1DD8], a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_29D6940E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_29D6940F0(uint64_t a1)
{
  sub_29D695880(0, &qword_2A17B1030, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D69417C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_29D6941F0()
{
  if (!qword_2A17B1040)
  {
    type metadata accessor for Key(255);
    sub_29D68E85C(&qword_2A17B1048, 255, type metadata accessor for Key);
    v0 = sub_29D93ABB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1040);
    }
  }
}

uint64_t sub_29D694294(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_29D6942F0()
{
  if (!qword_2A17B10A0)
  {
    type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(255);
    v0 = sub_29D93ABB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B10A0);
    }
  }
}

uint64_t sub_29D694358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6943BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D694420(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29D695734(255, a3);
    v4 = sub_29D93AD48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D6944A4()
{
  if (!qword_2A17B10F0)
  {
    v0 = sub_29D93A188();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B10F0);
    }
  }
}

void sub_29D694530()
{
  if (!qword_2A17B1118)
  {
    sub_29D695734(255, &qword_2A17B1120);
    v0 = sub_29D93ABB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1118);
    }
  }
}

uint64_t sub_29D6945AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_29D6946C0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29D93ABB8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_29D694718()
{
  result = qword_2A1A25730;
  if (!qword_2A1A25730)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A25730);
  }

  return result;
}

uint64_t sub_29D694784(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_29D694908(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29D694928(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 sub_29D6949F0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_29D6949FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29D694A1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_29D695384()
{
  result = qword_2A17B1318;
  if (!qword_2A17B1318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1318);
  }

  return result;
}

uint64_t sub_29D695554(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_29D695564()
{
  if (!qword_2A17B1370)
  {
    sub_29D9339F8();
    sub_29D695614();
    sub_29D68E85C(&qword_2A17B1360, 255, MEMORY[0x29EDB9BC8]);
    v0 = sub_29D93ABB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1370);
    }
  }
}

void sub_29D695614()
{
  if (!qword_2A17B1378)
  {
    sub_29D69567C(255, &qword_2A17B1380, 0x29EDBAB10);
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1378);
    }
  }
}

uint64_t sub_29D69567C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29D6956C4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_29D68F3C4(255, a3, a4, a5, MEMORY[0x29EDC9A40]);
    v6 = sub_29D93AD48();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29D695734(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29D695790()
{
  if (!qword_2A17B37C0)
  {
    type metadata accessor for HKBloodPressureClassificationCategory(255);
    sub_29D68E85C(&qword_2A17B10B0, 255, type metadata accessor for HKBloodPressureClassificationCategory);
    v0 = sub_29D93ABB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B37C0);
    }
  }
}

void sub_29D695880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D69590C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D695A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29[0] = a2;
  v29[1] = a3;
  v4 = sub_29D938F98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MonitorHypertensionJournalSummaryView(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = (v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D69A17C();
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v15, v19);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69ABC4(a1, v14 + v10[7], type metadata accessor for MonitorHypertensionSummaryViewModel);
  *v14 = swift_getKeyPath();
  v22 = MEMORY[0x29EDBC388];
  sub_29D697F54(0, &qword_2A17B15F8, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v23 = v10[5];
  *(v14 + v23) = swift_getKeyPath();
  sub_29D697F54(0, &qword_2A17B1600, MEMORY[0x29EDBC7B8], v22);
  swift_storeEnumTagMultiPayload();
  v24 = v14 + v10[6];
  sub_29D6966E8();
  v25 = v10[8];
  v26 = sub_29D9369A8();
  (*(*(v26 - 8) + 56))(v14 + v25, 1, 1, v26);
  v27 = sub_29D6975A8(&qword_2A17B15C8, type metadata accessor for MonitorHypertensionJournalSummaryView);
  sub_29D939308();
  sub_29D69A3E4(v14, type metadata accessor for MonitorHypertensionJournalSummaryView);
  sub_29D938F88();
  v29[2] = v10;
  v29[3] = v27;
  swift_getOpaqueTypeConformance2();
  sub_29D939428();
  (*(v5 + 8))(v9, v4);
  return (*(v17 + 8))(v21, v16);
}

uint64_t sub_29D695D84@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_29D697F54(0, &qword_2A17B15F0, MEMORY[0x29EDC1D90], MEMORY[0x29EDBC388]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_29D695E08()
{
  v1 = v0[2];
  sub_29D936978();
  sub_29D69A3E4(v0 + OBJC_IVAR____TtC5Heart58MonitorHypertensionJournalSummaryViewConfigurationProvider_presentationContext, sub_29D697F20);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29D695E8C()
{
  v0 = type metadata accessor for MonitorHypertensionJournalSummaryViewConfigurationProvider(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = OBJC_IVAR____TtC5Heart58MonitorHypertensionJournalSummaryViewConfigurationProvider_presentationContext;
  v5 = sub_29D9350C8();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  return v3;
}

uint64_t sub_29D695F10@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v30 = a2;
  sub_29D699F78();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69A288();
  v11 = v10;
  v29 = *(v10 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MonitorHypertensionSummaryViewModel(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8, v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D697F54(0, &qword_2A17B15E0, type metadata accessor for MonitorHypertensionSummaryViewModel, MEMORY[0x29EDC1E70]);
  sub_29D9351B8();
  v31 = v20;
  v32 = a1;
  sub_29D69A090();
  sub_29D69A17C();
  v22 = v21;
  v23 = type metadata accessor for MonitorHypertensionJournalSummaryView(255);
  v24 = sub_29D6975A8(&qword_2A17B15C8, type metadata accessor for MonitorHypertensionJournalSummaryView);
  v33 = v23;
  v34 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v22;
  v34 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_29D938F28();
  type metadata accessor for NonHighlightingPlatformBackgroundView();
  sub_29D6975A8(&qword_2A17B15D8, type metadata accessor for NonHighlightingPlatformBackgroundView);
  sub_29D938F08();
  (*(v5 + 8))(v9, v4);
  sub_29D9390D8();
  sub_29D933E68();
  v26 = v30;
  v30[3] = v11;
  v26[4] = sub_29D6975A8(&qword_2A17B15E8, sub_29D69A288);
  sub_29D693F78(v26);
  sub_29D938F18();
  (*(v29 + 8))(v15, v11);
  return sub_29D69A3E4(v20, type metadata accessor for MonitorHypertensionSummaryViewModel);
}

uint64_t sub_29D6962E0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D9379E8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_29D696358(uint64_t a1)
{
  v2 = type metadata accessor for MonitorHypertensionJournalSummaryViewConfigurationProvider(0);

  return MEMORY[0x2A1C628B8](a1, v2);
}

uint64_t sub_29D6963A8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_29D6963EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_29D936978();
}

uint64_t sub_29D6964AC()
{
  v1 = sub_29D9339F8();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v5 = MEMORY[0x2A1C7C4A8](v1, v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v5, v8);
  v11 = &v27 - v10;
  v13 = MEMORY[0x2A1C7C4A8](v9, v12);
  v15 = &v27 - v14;
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v27 - v17;
  v19 = v0 + *(type metadata accessor for MonitorHypertensionSummaryViewModel(0) + 24);
  sub_29D933AD8();
  result = sub_29D933BB8();
  v21 = result;
  if (qword_2A17B0BC0 != -1)
  {
    result = swift_once();
  }

  v22 = qword_2A17D07B0 - 1;
  if (__OFSUB__(qword_2A17D07B0, 1))
  {
    __break(1u);
  }

  else
  {
    v23 = sub_29D933958();
    v24 = [v21 hk:v22 startOfDateByAddingDays:v23 toDate:?];

    sub_29D933998();
    v25 = v2[2];
    v25(v11, v18, v1);
    v25(v7, v15, v1);
    sub_29D933188();
    v26 = v2[1];
    v26(v15, v1);
    return (v26)(v18, v1);
  }

  return result;
}

uint64_t sub_29D6966E8()
{
  v0 = sub_29D933CE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D933D38();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  sub_29D69A444(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D933AB8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v19, *MEMORY[0x29EDB9C78], v14);
  sub_29D933AC8();
  (*(v15 + 8))(v19, v14);
  sub_29D933A78();
  v20 = sub_29D933AA8();
  (*(*(v20 - 8) + 56))(v13, 0, 1, v20);
  sub_29D933C78();
  sub_29D933D18();
  sub_29D933CB8();
  sub_29D933C88();
  sub_29D933AF8();
  (*(v1 + 8))(v5, v0);
  return sub_29D933B08();
}

uint64_t sub_29D69698C()
{
  v1 = sub_29D9331D8();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D9339F8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v8 = sub_29D933CE8();
  v34 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_29D939BD8();
  v14 = *(v36 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v36, v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v17, v20);
  v23 = &v33 - v22;
  MEMORY[0x2A1C7C4A8](v21, v24);
  v26 = &v33 - v25;
  v27 = *(v9 + 16);
  v33 = v9 + 16;
  v27(v13, v0, v8);
  sub_29D9339E8();
  sub_29D939BB8();
  v28 = v35;
  sub_29D6964AC();
  sub_29D933178();
  (*(v37 + 8))(v28, v38);
  v27(v13, v0, v34);
  sub_29D939BB8();
  sub_29D939BA8();
  v29 = sub_29D939BC8();
  v30 = *(v14 + 8);
  v31 = v36;
  v30(v19, v36);
  v30(v23, v31);
  v30(v26, v31);
  return v29 & ~(v29 >> 63);
}

uint64_t sub_29D696CB8()
{
  v1 = *v0;
  sub_29D93AE58();
  MEMORY[0x29ED6B260](v1);
  return sub_29D93AE98();
}

uint64_t sub_29D696D00()
{
  v1 = *v0;
  sub_29D93AE58();
  MEMORY[0x29ED6B260](v1);
  return sub_29D93AE98();
}

uint64_t sub_29D696D44()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x536C616E72756F6ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7261646E656C6163;
  }
}

uint64_t sub_29D696DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D699E54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D696DEC(uint64_t a1)
{
  v2 = sub_29D697520();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D696E28(uint64_t a1)
{
  v2 = sub_29D697520();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t static MonitorHypertensionSummaryViewModel.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x29ED63FF0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MonitorHypertensionSummaryViewModel(0);
  if ((sub_29D696F98(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);

  return sub_29D933988();
}

uint64_t sub_29D696F08(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_29D93AD78() & 1) == 0)
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

uint64_t sub_29D696F98(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D9339F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
    v24 = 0;
    return v24 & 1;
  }

  if (!v14 || a1 == a2)
  {
    v24 = 1;
    return v24 & 1;
  }

  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v19 = *(v5 + 16);
  v18 = v5 + 16;
  v20 = (v18 - 8);
  v27 = *(v18 + 56);
  v28 = v19;
  while (1)
  {
    v21 = v28;
    result = (v28)(v13, v16, v4);
    if (!v14)
    {
      break;
    }

    v23 = v18;
    v21(v10, v17, v4);
    sub_29D6975A8(&qword_2A17B4C90, MEMORY[0x29EDB9BC8]);
    v24 = sub_29D939CF8();
    v25 = *v20;
    (*v20)(v10, v4);
    v25(v13, v4);
    if (v24)
    {
      v17 += v27;
      v16 += v27;
      v26 = v14-- == 1;
      v18 = v23;
      if (!v26)
      {
        continue;
      }
    }

    return v24 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D6971AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v5 = *v3;
      v6 = *v4;
      v7 = sub_29D939D68();
      v9 = v8;
      if (v7 == sub_29D939D68() && v9 == v10)
      {
      }

      else
      {
        v12 = sub_29D93AD78();

        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t MonitorHypertensionSummaryViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  sub_29D697AF4(0, &qword_2A17B1510, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v11 = &v16[-v10];
  v12 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D697520();
  sub_29D93AED8();
  v18 = 0;
  sub_29D933CE8();
  sub_29D6975A8(&qword_2A17B1520, MEMORY[0x29EDB9D18]);
  sub_29D93AD18();
  if (!v2)
  {
    v13 = type metadata accessor for MonitorHypertensionSummaryViewModel(0);
    v17 = *(v3 + *(v13 + 20));
    v16[15] = 1;
    sub_29D697F54(0, &qword_2A17B1528, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9A40]);
    sub_29D697B58(&qword_2A17B1530, sub_29D697574);
    sub_29D93AD18();
    v14 = *(v13 + 24);
    v16[14] = 2;
    sub_29D9339F8();
    sub_29D697574();
    sub_29D93AD18();
  }

  return (*(v7 + 8))(v11, v6);
}

unint64_t sub_29D697520()
{
  result = qword_2A17B1518;
  if (!qword_2A17B1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1518);
  }

  return result;
}

uint64_t sub_29D6975A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MonitorHypertensionSummaryViewModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v33 = sub_29D9339F8();
  v29 = *(v33 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v33, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D933CE8();
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v34 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D697AF4(0, &qword_2A17B1540, MEMORY[0x29EDC9E80]);
  v35 = v11;
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v29 - v14;
  v16 = type metadata accessor for MonitorHypertensionSummaryViewModel(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D697520();
  v36 = v15;
  v22 = v37;
  sub_29D93AEC8();
  if (v22)
  {
    return sub_29D69417C(a1);
  }

  v37 = v20;
  v24 = v32;
  v23 = v33;
  v41 = 0;
  sub_29D6975A8(&qword_2A17B1548, MEMORY[0x29EDB9D18]);
  sub_29D93AC88();
  v25 = *(v31 + 32);
  v26 = v34;
  v34 = v7;
  v25(v37, v26, v7);
  sub_29D697F54(0, &qword_2A17B1528, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9A40]);
  v40 = 1;
  sub_29D697B58(&qword_2A17B1550, sub_29D697BF4);
  sub_29D93AC88();
  *&v37[*(v16 + 20)] = v38;
  v39 = 2;
  sub_29D697BF4();
  sub_29D93AC88();
  (*(v24 + 8))(v36, v35);
  v27 = v37;
  (*(v29 + 32))(&v37[*(v16 + 24)], v6, v23);
  sub_29D69ABC4(v27, v30, type metadata accessor for MonitorHypertensionSummaryViewModel);
  sub_29D69417C(a1);
  return sub_29D69A3E4(v27, type metadata accessor for MonitorHypertensionSummaryViewModel);
}

void sub_29D697AF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D697520();
    v7 = a3(a1, &type metadata for MonitorHypertensionSummaryViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D697B58(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_29D697F54(255, &qword_2A17B1528, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9A40]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D697CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x29ED63FF0]() & 1) == 0 || (sub_29D696F98(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return sub_29D933988();
}

void sub_29D697E84()
{
  sub_29D697F20(319);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_29D697F54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D697FE0()
{
  sub_29D933CE8();
  if (v0 <= 0x3F)
  {
    sub_29D697F54(319, &qword_2A17B1528, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9A40]);
    if (v1 <= 0x3F)
    {
      sub_29D9339F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MonitorHypertensionSummaryViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MonitorHypertensionSummaryViewModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29D698210()
{
  result = qword_2A17B1598;
  if (!qword_2A17B1598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1598);
  }

  return result;
}

unint64_t sub_29D698268()
{
  result = qword_2A17B15A0;
  if (!qword_2A17B15A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B15A0);
  }

  return result;
}

unint64_t sub_29D6982C0()
{
  result = qword_2A17B15A8;
  if (!qword_2A17B15A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B15A8);
  }

  return result;
}

uint64_t sub_29D698314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v62 = a4;
  v63 = a2;
  sub_29D69A444(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v61 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D697F54(0, &qword_2A17B16B0, sub_29D69AC2C, MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v60 = &v49 - v12;
  sub_29D69AC2C();
  v58 = *(v13 - 8);
  v59 = v13;
  v14 = *(v58 + 64);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v52 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D9334C8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8, v19);
  v55 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_29D933AA8();
  v54 = *(v56 - 8);
  v21 = *(v54 + 64);
  MEMORY[0x2A1C7C4A8](v56, v22);
  v23 = sub_29D939D18();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v23, v26);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v29 = qword_2A1A2BE98;
  v51 = v24;
  v30 = *(v24 + 16);
  v30(v28, a1, v23);
  sub_29D935E88();
  v31 = v29;
  sub_29D933A98();
  v32 = sub_29D939D98();
  v49 = a1;
  v50 = v23;
  v53 = v32;
  v30(v28, v63, v23);
  sub_29D935E88();
  v33 = v31;
  sub_29D933A98();
  v34 = sub_29D939D98();
  v36 = v35;
  sub_29D697F54(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_29D93F680;
  *(v37 + 56) = MEMORY[0x29EDC99B0];
  v38 = sub_29D69AD24();
  *(v37 + 32) = v34;
  *(v37 + 40) = v36;
  v39 = MEMORY[0x29EDC9C10];
  *(v37 + 96) = MEMORY[0x29EDC9BA8];
  *(v37 + 104) = v39;
  v40 = v57;
  *(v37 + 64) = v38;
  *(v37 + 72) = v40;
  sub_29D935E88();
  sub_29D939D38();

  sub_29D935E88();
  sub_29D9334B8();
  sub_29D933478();
  v65[0] = v34;
  v65[1] = v36;
  v41 = v61;
  (*(v54 + 56))(v61, 1, 1, v56);
  sub_29D933468();
  sub_29D6975A8(&qword_2A17B16C0, MEMORY[0x29EDB9A78]);
  sub_29D69AB60();
  v42 = v60;
  sub_29D9335A8();
  sub_29D69A3E4(v41, sub_29D69A444);
  result = (*(v58 + 48))(v42, 1, v59);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v44 = v52;
    sub_29D69AD78(v42, v52, sub_29D69AC2C);
    v65[0] = sub_29D939148();
    sub_29D69ADE0();
    sub_29D933488();
    sub_29D939148();
    sub_29D939178();
    v45 = sub_29D9391D8();

    sub_29D6975A8(&qword_2A17B16D0, sub_29D69AC2C);
    v46 = sub_29D933498();
    v64 = v45;
    sub_29D9334F8();
    v46(v65, 0);
    v47 = v50;
    v48 = *(v51 + 8);
    v48(v63, v50);
    v48(v49, v47);
    return sub_29D69A3E4(v44, sub_29D69AC2C);
  }

  return result;
}

uint64_t sub_29D6989E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v126 = a1;
  v118 = a2;
  v116 = type metadata accessor for MonitorHypertensionJournalViewSpecs();
  v3 = *(*(v116 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v116, v4);
  v115 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D933AA8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v114 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MonitorHypertensionSummaryViewModel(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v117 = (&v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for HealthCalendarView();
  v16 = *(v15 - 8);
  v111 = v15 - 8;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v15 - 8, v18);
  v119 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = (&v111 - v22);
  v24 = sub_29D939D18();
  v112 = *(v24 - 8);
  v113 = v24;
  v25 = *(v112 + 64);
  v27 = MEMORY[0x2A1C7C4A8](v24, v26);
  v29 = &v111 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27, v30);
  v32 = &v111 - v31;
  v33 = sub_29D933468();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v33 - 8, v35);
  v37 = &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D939D08();
  sub_29D939D08();
  v38 = type metadata accessor for MonitorHypertensionJournalSummaryView(0);
  v39 = v2 + *(v38 + 28);
  sub_29D698314(v32, v29, *(*(v39 + *(v11 + 28)) + 16), v37);
  v40 = sub_29D9392E8();
  v130 = v41;
  v131 = v40;
  LOBYTE(v2) = v42;
  v132 = v43;
  KeyPath = swift_getKeyPath();
  v128 = swift_getKeyPath();
  v127 = v2 & 1;
  LOBYTE(v153) = v2 & 1;
  LOBYTE(v149) = 1;
  sub_29D939D08();
  sub_29D939D08();
  v44 = sub_29D69698C();
  sub_29D698314(v32, v29, v44, v37);
  v45 = sub_29D9392E8();
  v123 = v46;
  v124 = v45;
  LOBYTE(v2) = v47;
  v125 = v48;
  v122 = swift_getKeyPath();
  v121 = swift_getKeyPath();
  v120 = v2 & 1;
  LOBYTE(v153) = v2 & 1;
  LOBYTE(v149) = 1;
  v49 = v39;
  v50 = v117;
  sub_29D69ABC4(v49, v117, type metadata accessor for MonitorHypertensionSummaryViewModel);
  v51 = *(v38 + 24);
  v52 = v111;
  v53 = v23 + *(v111 + 28);
  v54 = sub_29D933CE8();
  (*(*(v54 - 8) + 16))(v53, v126 + v51, v54);
  v55 = *(v50 + *(v11 + 28));
  v56 = type metadata accessor for HealthCalendarViewModel();
  v57 = *(v56 + 24);
  sub_29D935E88();
  sub_29D6964AC();
  sub_29D69A3E4(v50, type metadata accessor for MonitorHypertensionSummaryViewModel);
  *&v53[*(v56 + 20)] = v55;
  *v23 = swift_getKeyPath();
  v58 = MEMORY[0x29EDBC388];
  sub_29D697F54(0, &qword_2A17B15F8, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v59 = *(v52 + 32);
  *(v23 + v59) = swift_getKeyPath();
  sub_29D697F54(0, &qword_2A17B1600, MEMORY[0x29EDBC7B8], v58);
  v117 = v23;
  swift_storeEnumTagMultiPayload();
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v60 = qword_2A1A2BE98;
  v62 = v112;
  v61 = v113;
  (*(v112 + 16))(v29, v32, v113);
  sub_29D935E88();
  v63 = v60;
  sub_29D933A98();
  v64 = sub_29D939D98();
  v66 = v65;
  (*(v62 + 8))(v32, v61);
  v153 = v64;
  v154 = v66;
  sub_29D69AB60();
  v67 = sub_29D9392F8();
  v69 = v68;
  v71 = v70;
  sub_29D939228();
  v72 = sub_29D9392C8();
  v74 = v73;
  v76 = v75;

  sub_29D69ABB4(v67, v69, v71 & 1);

  LODWORD(v153) = sub_29D938EF8();
  v77 = sub_29D9392B8();
  v113 = v78;
  v114 = v79;
  v81 = v80;
  sub_29D69ABB4(v72, v74, v76 & 1);

  LOBYTE(v72) = sub_29D939138();
  v82 = v115;
  sub_29D6998E4(v115);
  v83 = *(v82 + *(v116 + 24));
  sub_29D69A3E4(v82, type metadata accessor for MonitorHypertensionJournalViewSpecs);
  sub_29D938618();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  LOBYTE(v61) = v81 & 1;
  LOBYTE(v153) = v81 & 1;
  LOBYTE(v149) = 0;
  v92 = v117;
  v93 = v119;
  sub_29D69ABC4(v117, v119, type metadata accessor for HealthCalendarView);
  *&v139 = v131;
  *(&v139 + 1) = v130;
  LOBYTE(v140) = v127;
  *(&v140 + 1) = *v136;
  DWORD1(v140) = *&v136[3];
  *(&v140 + 1) = v132;
  *&v141 = KeyPath;
  BYTE8(v141) = 0;
  HIDWORD(v141) = *&v135[3];
  *(&v141 + 9) = *v135;
  v142 = v128;
  v143 = 1;
  v94 = v118;
  *(v118 + 64) = 1;
  v95 = v140;
  *v94 = v139;
  *(v94 + 16) = v95;
  v96 = v142;
  *(v94 + 32) = v141;
  *(v94 + 48) = v96;
  *&v144 = v124;
  *(&v144 + 1) = v123;
  LOBYTE(v145) = v120;
  DWORD1(v145) = *&v138[3];
  *(&v145 + 1) = *v138;
  *(&v145 + 1) = v125;
  *&v146 = v122;
  BYTE8(v146) = 0;
  HIDWORD(v146) = *&v137[3];
  *(&v146 + 9) = *v137;
  v147 = v121;
  v148 = 1;
  v97 = v145;
  *(v94 + 72) = v144;
  v98 = v146;
  v99 = v147;
  *(v94 + 136) = 1;
  *(v94 + 120) = v99;
  *(v94 + 104) = v98;
  *(v94 + 88) = v97;
  sub_29D69A7D4();
  v101 = v100;
  sub_29D69ABC4(v93, v94 + *(v100 + 64), type metadata accessor for HealthCalendarView);
  v102 = (v94 + *(v101 + 80));
  v103 = v77;
  *&v149 = v77;
  v105 = v113;
  v104 = v114;
  *(&v149 + 1) = v113;
  LOBYTE(v150) = v61;
  *(&v150 + 1) = *v134;
  DWORD1(v150) = *&v134[3];
  *(&v150 + 1) = v114;
  LOBYTE(v151) = v72;
  *(&v151 + 1) = *v133;
  DWORD1(v151) = *&v133[3];
  *(&v151 + 1) = v85;
  *&v152[0] = v87;
  *(&v152[0] + 1) = v89;
  *&v152[1] = v91;
  BYTE8(v152[1]) = 0;
  v106 = v149;
  v107 = v150;
  v108 = v151;
  *(v102 + 57) = *(v152 + 9);
  v109 = v152[0];
  v102[2] = v108;
  v102[3] = v109;
  *v102 = v106;
  v102[1] = v107;
  sub_29D69ABC4(&v139, &v153, sub_29D69A85C);
  sub_29D69ABC4(&v144, &v153, sub_29D69A85C);
  sub_29D69ABC4(&v149, &v153, sub_29D69AA14);
  sub_29D69A3E4(v92, type metadata accessor for HealthCalendarView);
  v153 = v103;
  v154 = v105;
  v155 = v61;
  *v156 = *v134;
  *&v156[3] = *&v134[3];
  v157 = v104;
  v158 = v72;
  *v159 = *v133;
  *&v159[3] = *&v133[3];
  v160 = v85;
  v161 = v87;
  v162 = v89;
  v163 = v91;
  v164 = 0;
  sub_29D69A3E4(&v153, sub_29D69AA14);
  sub_29D69A3E4(v93, type metadata accessor for HealthCalendarView);
  v165[0] = v124;
  v165[1] = v123;
  v166 = v120;
  *v167 = *v138;
  *&v167[3] = *&v138[3];
  v168 = v125;
  v169 = v122;
  v170 = 0;
  *v171 = *v137;
  *&v171[3] = *&v137[3];
  v172 = v121;
  v173 = 0;
  v174 = 1;
  sub_29D69A3E4(v165, sub_29D69A85C);
  v175[0] = v131;
  v175[1] = v130;
  v176 = v127;
  *v177 = *v136;
  *&v177[3] = *&v136[3];
  v178 = v132;
  v179 = KeyPath;
  v180 = 0;
  *v181 = *v135;
  *&v181[3] = *&v135[3];
  v182 = v128;
  v183 = 0;
  v184 = 1;
  return sub_29D69A3E4(v175, sub_29D69A85C);
}

uint64_t sub_29D6994B4@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  v6 = MEMORY[0x29EDBC388];
  sub_29D697F54(0, &qword_2A17B15F8, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v7 = a2[5];
  *(a3 + v7) = swift_getKeyPath();
  sub_29D697F54(0, &qword_2A17B1600, MEMORY[0x29EDBC7B8], v6);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + a2[6];
  sub_29D6966E8();
  v9 = a2[8];
  v10 = sub_29D9369A8();
  (*(*(v10 - 8) + 56))(a3 + v9, 1, 1, v10);
  v11 = a2[7];
  sub_29D697F54(0, &qword_2A17B15E0, type metadata accessor for MonitorHypertensionSummaryViewModel, MEMORY[0x29EDC1E70]);
  v13 = v12;
  sub_29D9351B8();
  v14 = *(*(v13 - 8) + 8);

  return v14(a1, v13);
}

uint64_t (*sub_29D6996C8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

void sub_29D6996EC(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MonitorHypertensionJournalViewSpecs();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_29D938C78();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_29D69A738();
  sub_29D6989E8(v1, a1 + *(v9 + 44));
  v10 = sub_29D9390E8();
  sub_29D6998E4(v8);
  v11 = *&v8[*(v4 + 28)];
  sub_29D69A3E4(v8, type metadata accessor for MonitorHypertensionJournalViewSpecs);
  sub_29D938618();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_29D69AA6C();
  v21 = a1 + *(v20 + 36);
  *v21 = v10;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
}

uint64_t sub_29D69980C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D933CE8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D938AD8();
  return sub_29D6F2410(v6, a1);
}

uint64_t sub_29D6998E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29D938B68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x29EDBC388];
  sub_29D697F54(0, &qword_2A17B15F8, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC388]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = (&v19 - v14);
  sub_29D69AEC8(v2, &v19 - v14, &qword_2A17B15F8, type metadata accessor for MonitorHypertensionJournalViewSpecs, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_29D69AD78(v15, a1, type metadata accessor for MonitorHypertensionJournalViewSpecs);
  }

  v17 = *v15;
  sub_29D93A298();
  v18 = sub_29D9390A8();
  sub_29D937758();

  sub_29D938B58();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_29D699AF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29D938B68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D697F54(0, &qword_2A17B16D8, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC388]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = (&v18 - v13);
  sub_29D67A66C(v2, &v18 - v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_29D67A700(v14, a1);
  }

  v16 = *v14;
  sub_29D93A298();
  v17 = sub_29D9390A8();
  sub_29D937758();

  sub_29D938B58();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_29D699D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_29D699DF0@<X0>(uint64_t a1@<X8>)
{
  result = sub_29D938B18();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_29D699E24(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_29D938B28();
}

uint64_t sub_29D699E54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000;
  if (v4 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000029D9578A0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x536C616E72756F6ALL && a2 == 0xEC00000074726174)
  {

    return 2;
  }

  else
  {
    v6 = sub_29D93AD78();

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

void sub_29D699F78()
{
  if (!qword_2A17B15B0)
  {
    sub_29D69A090();
    sub_29D69A17C();
    type metadata accessor for MonitorHypertensionJournalSummaryView(255);
    sub_29D6975A8(&qword_2A17B15C8, type metadata accessor for MonitorHypertensionJournalSummaryView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_29D938F38();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B15B0);
    }
  }
}

void sub_29D69A090()
{
  if (!qword_2A17B15B8)
  {
    sub_29D69A17C();
    type metadata accessor for MonitorHypertensionJournalSummaryView(255);
    sub_29D6975A8(&qword_2A17B15C8, type metadata accessor for MonitorHypertensionJournalSummaryView);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B15B8);
    }
  }
}

void sub_29D69A17C()
{
  if (!qword_2A17B15C0)
  {
    type metadata accessor for MonitorHypertensionJournalSummaryView(255);
    sub_29D6975A8(&qword_2A17B15C8, type metadata accessor for MonitorHypertensionJournalSummaryView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B15C0);
    }
  }
}

uint64_t sub_29D69A250(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D69A288()
{
  if (!qword_2A17B15D0)
  {
    sub_29D69A090();
    type metadata accessor for NonHighlightingPlatformBackgroundView();
    sub_29D69A17C();
    type metadata accessor for MonitorHypertensionJournalSummaryView(255);
    sub_29D6975A8(&qword_2A17B15C8, type metadata accessor for MonitorHypertensionJournalSummaryView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D6975A8(&qword_2A17B15D8, type metadata accessor for NonHighlightingPlatformBackgroundView);
    v0 = sub_29D938F38();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B15D0);
    }
  }
}

uint64_t sub_29D69A3E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D69A4A0()
{
  sub_29D697F54(319, &qword_2A17B1610, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    sub_29D697F54(319, &qword_2A17B1618, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC390]);
    if (v1 <= 0x3F)
    {
      sub_29D933CE8();
      if (v2 <= 0x3F)
      {
        type metadata accessor for MonitorHypertensionSummaryViewModel(319);
        if (v3 <= 0x3F)
        {
          sub_29D697F54(319, &qword_2A17B1620, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_29D69A738()
{
  if (!qword_2A17B1650)
  {
    sub_29D69A7A0(255);
    v0 = sub_29D938788();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1650);
    }
  }
}

void sub_29D69A7D4()
{
  if (!qword_2A17B1660)
  {
    sub_29D69A85C();
    type metadata accessor for HealthCalendarView();
    sub_29D69AA14();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2A17B1660);
    }
  }
}

void sub_29D69A85C()
{
  if (!qword_2A17B1668)
  {
    sub_29D69A8C4();
    sub_29D69A948();
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1668);
    }
  }
}

void sub_29D69A8C4()
{
  if (!qword_2A17B1670)
  {
    sub_29D69A9C4(255, &qword_2A17B45A0, MEMORY[0x29EDBC400], MEMORY[0x29EDBC938]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1670);
    }
  }
}

void sub_29D69A948()
{
  if (!qword_2A17B1678)
  {
    sub_29D69A9C4(255, &qword_2A17B1680, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
    v0 = sub_29D939088();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1678);
    }
  }
}

void sub_29D69A9C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D69AA14()
{
  if (!qword_2A17B1688)
  {
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1688);
    }
  }
}

void sub_29D69AA6C()
{
  if (!qword_2A17B1690)
  {
    sub_29D69AACC();
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1690);
    }
  }
}

void sub_29D69AACC()
{
  if (!qword_2A17B1698)
  {
    sub_29D69A7A0(255);
    sub_29D6975A8(&qword_2A17B16A0, sub_29D69A7A0);
    v0 = sub_29D939758();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1698);
    }
  }
}

unint64_t sub_29D69AB60()
{
  result = qword_2A17B16A8;
  if (!qword_2A17B16A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B16A8);
  }

  return result;
}

uint64_t sub_29D69ABB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_29D69ABC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D69AC2C()
{
  if (!qword_2A17B16B8)
  {
    sub_29D933448();
    sub_29D6975A8(&qword_2A17B4790, MEMORY[0x29EDB9A60]);
    v0 = sub_29D93A188();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B16B8);
    }
  }
}

unint64_t sub_29D69ACC0()
{
  result = qword_2A1A24818;
  if (!qword_2A1A24818)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A24818);
  }

  return result;
}

unint64_t sub_29D69AD24()
{
  result = qword_2A1A249C0;
  if (!qword_2A1A249C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A249C0);
  }

  return result;
}

uint64_t sub_29D69AD78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_29D69ADE0()
{
  result = qword_2A17B16C8;
  if (!qword_2A17B16C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B16C8);
  }

  return result;
}

uint64_t sub_29D69AE34(uint64_t a1, uint64_t a2)
{
  sub_29D697F54(0, &qword_2A17B1620, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D69AEC8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_29D697F54(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t sub_29D69AF38()
{
  result = qword_2A17B16E0;
  if (!qword_2A17B16E0)
  {
    sub_29D69AA6C();
    sub_29D6975A8(&qword_2A17B16E8, sub_29D69AACC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B16E0);
  }

  return result;
}

uint64_t sub_29D69AFEC()
{
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = sub_29D9334A8();
  v5 = v4;

  v6 = [v1 bundleForClass_];
  v7 = sub_29D9334A8();
  v9 = v8;

  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A2C038;
  v11 = sub_29D939D28();
  v12 = [objc_opt_self() imageNamed:v11 inBundle:v10 compatibleWithTraitCollection:{0, 0xE000000000000000}];

  return MEMORY[0x2A1C60BA0](v3, v5, v7, v9, v12);
}

BOOL sub_29D69B1E8()
{
  v1 = v0;
  v2 = sub_29D934738();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x29EDBA540];
  v9 = sub_29D9371B8();
  v10 = [v9 unsatisfiedRequirementIdentifiers];

  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v11 = sub_29D939F38();

  v17 = MEMORY[0x29EDCA1A0];
  (*(v3 + 104))(v7, *MEMORY[0x29EDC17B8], v2);
  LOBYTE(v9) = sub_29D934728();
  (*(v3 + 8))(v7, v2);
  if (v9)
  {
    sub_29D7ABD5C(v16, *MEMORY[0x29EDBA6A0]);
  }

  if (*(v1 + OBJC_IVAR____TtC5Heart46CardioFitnessAdvertisableFeatureSourceProvider_includeFeaturesMadeAvailableByBuddy) == 1)
  {
    sub_29D7ABD5C(v16, *MEMORY[0x29EDBA5B8]);
  }

  v12 = sub_29D69C15C(v11, &v17);

  v13 = *(v12 + 16);

  return v13 == 0;
}

uint64_t sub_29D69B3F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v7 = *v4;
  sub_29D69C75C();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v8, v12);
  v14 = &v21[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D934618();
  sub_29D693E2C(v21, v21[3]);
  sub_29D937228();
  swift_getObjectType();
  v15 = *MEMORY[0x29EDBA788];
  sub_29D939D68();
  sub_29D93A3E8();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v18 = v20;
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = a4;
  *(v17 + 40) = a2;
  *(v17 + 48) = v7;

  sub_29D93A608();
  sub_29D936978();

  (*(v10 + 8))(v14, v9);

  return sub_29D69417C(v21);
}

uint64_t sub_29D69B604(char a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, int a6, uint64_t a7)
{
  v44 = a6;
  sub_29D69C75C();
  v13 = v12;
  v43 = *(v12 - 8);
  v14 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69C7C0();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    if (a1)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v25 = sub_29D937898();
      sub_29D69C6C0(v25, qword_2A1A2C008);
      v26 = sub_29D937878();
      v27 = sub_29D93A2A8();
      v28 = os_log_type_enabled(v26, v27);
      v41 = v13;
      v42 = a7;
      if (v28)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v45 = v30;
        *v29 = 136446210;
        v31 = sub_29D93AF08();
        v40 = v24;
        v33 = sub_29D6C2364(v31, v32, &v45);
        v24 = v40;

        *(v29 + 4) = v33;
        _os_log_impl(&dword_29D677000, v26, v27, "[%{public}s] Notification defaults written and synced", v29, 0xCu);
        sub_29D69417C(v30);
        MEMORY[0x29ED6BE30](v30, -1, -1);
        MEMORY[0x29ED6BE30](v29, -1, -1);
      }

      if (v44)
      {
        sub_29D934618();
        sub_29D693E2C(&v45, v47);
        sub_29D937228();
        swift_getObjectType();
        v34 = *MEMORY[0x29EDC5108];
        sub_29D939D68();
        sub_29D93A3E8();
        v35 = swift_allocObject();
        v35[2] = a4;
        v35[3] = a5;
        v35[4] = v42;

        sub_29D93A608();

        sub_29D936978();

        (*(v43 + 8))(v17, v41);
        return sub_29D69417C(&v45);
      }

      sub_29D934928();
      sub_29D69C860(&qword_2A17B1718, MEMORY[0x29EDC1918]);
      sub_29D93AEA8();
    }

    else
    {
      if (a2)
      {
        swift_getErrorValue();
        sub_29D93ADF8();
      }

      else
      {
        v45 = 0;
        v46 = 0xE000000000000000;
        sub_29D93AA18();
        MEMORY[0x29ED6A240](91, 0xE100000000000000);
        v38 = sub_29D93AF08();
        MEMORY[0x29ED6A240](v38);

        MEMORY[0x29ED6A240](0xD000000000000051, 0x800000029D957B10);
      }

      sub_29D934918();
      swift_storeEnumTagMultiPayload();
    }

    a4(v22);
  }

  else
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_29D93AA18();
    MEMORY[0x29ED6A240](91, 0xE100000000000000);
    v37 = sub_29D93AF08();
    MEMORY[0x29ED6A240](v37);

    MEMORY[0x29ED6A240](0xD000000000000034, 0x800000029D957AD0);
    sub_29D934918();
    swift_storeEnumTagMultiPayload();
    a4(v22);
  }

  return sub_29D69C8B4(v22, sub_29D69C7C0);
}

uint64_t sub_29D69BB24(char a1, uint64_t a2, void (*a3)(char *))
{
  sub_29D69C7C0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_29D934928();
    sub_29D69C860(&qword_2A17B1718, MEMORY[0x29EDC1918]);
    sub_29D93AEA8();
  }

  else
  {
    if (a2)
    {
      swift_getErrorValue();
      sub_29D93ADF8();
    }

    else
    {
      v13[4] = 0;
      v13[5] = 0xE000000000000000;
      sub_29D93AA18();
      MEMORY[0x29ED6A240](91, 0xE100000000000000);
      v11 = sub_29D93AF08();
      MEMORY[0x29ED6A240](v11);

      MEMORY[0x29ED6A240](0xD000000000000066, 0x800000029D957B70);
    }

    sub_29D934918();
    swift_storeEnumTagMultiPayload();
  }

  a3(v10);
  return sub_29D69C8B4(v10, sub_29D69C7C0);
}

uint64_t sub_29D69BCE4()
{
  sub_29D69C8B4(v0 + OBJC_IVAR____TtC5Heart46CardioFitnessAdvertisableFeatureSourceProvider_currentCountry, sub_29D69BECC);
  v1 = OBJC_IVAR____TtC5Heart46CardioFitnessAdvertisableFeatureSourceProvider_presentationLocation;
  v2 = sub_29D934738();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CardioFitnessAdvertisableFeatureSourceProvider()
{
  result = qword_2A17B1700;
  if (!qword_2A17B1700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D69BDF8()
{
  sub_29D69BECC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_29D934738();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_29D69BECC()
{
  if (!qword_2A1A21ED8)
  {
    sub_29D934358();
    sub_29D9342F8();
    sub_29D69C860(&qword_2A1A24770, MEMORY[0x29EDC39C0]);
    v0 = sub_29D93AEB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A21ED8);
    }
  }
}

uint64_t sub_29D69BF78@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC17A8];
  v3 = sub_29D934718();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D69C054()
{
  v3 = *v0;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A1A2C008);
  type metadata accessor for CardioFitnessAdvertisableFeatureSourceProvider();
  return sub_29D934608();
}

uint64_t sub_29D69C15C(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  v3 = 0;
  v25 = result + 32;
  v4 = MEMORY[0x29EDCA190];
  v24 = *(result + 16);
  do
  {
    v27 = v4;
    while (1)
    {
      if (v3 >= v2)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_31;
      }

      v6 = *(v25 + 8 * v3++);
      v7 = *a2;
      if (!*(*a2 + 16))
      {
        break;
      }

      v28 = v5;
      v29 = v5;
      v8 = *(v7 + 40);
      sub_29D939D68();
      sub_29D93AE58();
      v9 = v6;
      sub_29D935E88();
      sub_29D939E18();
      v10 = sub_29D93AE98();

      v11 = -1 << *(v7 + 32);
      v12 = v10 & ~v11;
      if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
LABEL_20:

        v2 = v24;
        v5 = v28;
        v3 = v29;
        v4 = v27;
        goto LABEL_21;
      }

      v13 = ~v11;
      while (1)
      {
        v14 = *(*(v7 + 48) + 8 * v12);
        v15 = sub_29D939D68();
        v17 = v16;
        if (v15 == sub_29D939D68() && v17 == v18)
        {

          goto LABEL_18;
        }

        v20 = sub_29D93AD78();

        if (v20)
        {
          break;
        }

        v12 = (v12 + 1) & v13;
        if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

LABEL_18:

      v2 = v24;
      v3 = v29;
      v4 = v27;
      if (v28 == v24)
      {
        return v4;
      }
    }

    v23 = v6;
LABEL_21:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_29D7EE518(0, *(v4 + 16) + 1, 1);
    }

    v22 = *(v4 + 16);
    v21 = *(v4 + 24);
    if (v22 >= v21 >> 1)
    {
      result = sub_29D7EE518((v21 > 1), v22 + 1, 1);
    }

    *(v4 + 16) = v22 + 1;
    *(v4 + 8 * v22 + 32) = v6;
  }

  while (v5 != v2);
  return v4;
}

size_t sub_29D69C3DC(char a1)
{
  v2 = sub_29D934A48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D934738();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    return MEMORY[0x29EDCA190];
  }

  sub_29D69C668();
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v21 = v14 + *(v3 + 72);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D93DDB0;
  v16 = *MEMORY[0x29EDC1A98];
  v20 = *(v3 + 104);
  v20(v15 + v14, v16, v2);
  (*(v9 + 104))(v13, *MEMORY[0x29EDC17C0], v8);
  v17 = sub_29D934728();
  (*(v9 + 8))(v13, v8);
  if (v17)
  {
    v18 = HKHRCardioFitnessEventOnboardingDeepLink();
    sub_29D9336D8();

    v20(v7, *MEMORY[0x29EDC1A90], v2);
    v15 = sub_29D68F70C(1uLL, 2, 1, v15);
    *(v15 + 16) = 2;
    (*(v3 + 32))(v15 + v21, v7, v2);
  }

  return v15;
}

void sub_29D69C668()
{
  if (!qword_2A17B1058)
  {
    sub_29D934A48();
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1058);
    }
  }
}

uint64_t sub_29D69C6C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_29D69C6F8(uint64_t a1, uint64_t a2)
{
  sub_29D69BECC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D69C75C()
{
  if (!qword_2A17B7AC0)
  {
    v0 = sub_29D93A418();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7AC0);
    }
  }
}

void sub_29D69C7C0()
{
  if (!qword_2A17B1710)
  {
    sub_29D934928();
    sub_29D69C860(&qword_2A17B1718, MEMORY[0x29EDC1918]);
    v0 = sub_29D93AEB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1710);
    }
  }
}

uint64_t sub_29D69C860(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D69C8A8(char a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_29D69BB24(a1, a2, *(v2 + 16));
}

uint64_t sub_29D69C8B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_29D69C914(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_29D69C928(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_29D69C970(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t type metadata accessor for LocalizedImageView.TextConfiguration()
{
  result = qword_2A17B1720;
  if (!qword_2A17B1720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D69CA40()
{
  sub_29D69D99C(319, &qword_2A17B1730, MEMORY[0x29EDBCA98], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    sub_29D933A58();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29D69CB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_29D933A58();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_29D69CC04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29D939628();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = *v2;
  v10 = v2[1];
  v30 = *(v2 + 16);
  v13 = v2[3];
  v12 = v2[4];
  v14 = qword_2A1A257A0;
  sub_29D935E88();
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_2A1A2C038;
  sub_29D939678();
  (*(v5 + 104))(v9, *MEMORY[0x29EDBCAB8], v4);
  v16 = sub_29D939668();

  (*(v5 + 8))(v9, v4);
  v27[0] = v16;
  v27[1] = 0;
  v28 = 1;
  v29 = v30;
  sub_29D69D3B0(0);
  sub_29D69DAF0(&qword_2A17B1750, sub_29D69D3B0, sub_29D69D430, sub_29D69D4A8);
  sub_29D939438();

  v17 = sub_29D9398A8();
  v19 = v18;
  v27[0] = v2[5];
  v20 = swift_allocObject();
  v21 = *(v2 + 1);
  *(v20 + 1) = *v2;
  *(v20 + 2) = v21;
  *(v20 + 3) = *(v2 + 2);
  sub_29D69D538(0, &qword_2A17B1768, sub_29D69D504, sub_29D69D5AC);
  v23 = (a1 + *(v22 + 36));
  *v23 = sub_29D69D4FC;
  v23[1] = v20;
  v23[2] = v17;
  v23[3] = v19;
  sub_29D935E88();
  sub_29D935E88();
  return sub_29D69DDCC(v27, v26);
}

uint64_t sub_29D69CED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D938758();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v11[1] = *(a2 + 40);
  (*(v5 + 16))(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_29D69D7A8();
  sub_29D933A58();
  sub_29D69D800();
  sub_29D69D9EC(&qword_2A17B17C0, sub_29D69D7A8);
  sub_29D69DAF0(&qword_2A17B17D0, sub_29D69D800, sub_29D69DB7C, sub_29D69DD50);
  sub_29D69D9EC(&qword_2A17B1808, type metadata accessor for LocalizedImageView.TextConfiguration);
  sub_29D935E88();
  return sub_29D9397D8();
}

float64x2_t sub_29D69D12C@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = *a1;
  sub_29D69AB60();
  sub_29D935E88();
  v4 = sub_29D9392F8();
  v6 = v5;
  v8 = v7;
  v9 = *(a1 + 2);
  v10 = sub_29D9392C8();
  v12 = v11;
  v14 = v13;
  sub_29D69ABB4(v4, v6, v8 & 1);

  v15 = *(a1 + 3);
  v38 = sub_29D9392A8();
  v17 = v16;
  LOBYTE(v4) = v18;
  v20 = v19;
  sub_29D69ABB4(v10, v12, v14 & 1);

  v21 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  v33 = *(a1 + 10);
  v34 = *(a1 + 11);
  sub_29D9388E8();
  *&v40[55] = v44;
  *&v40[71] = v45;
  *&v40[87] = v46;
  *&v40[103] = v47;
  *&v40[7] = v41;
  *&v40[23] = v42;
  *&v40[39] = v43;
  sub_29D938748();
  v37 = v23;
  sub_29D938748();
  v36 = v24;
  sub_29D938748();
  v35 = v25;
  sub_29D938748();
  v39 = v26;
  v27 = sub_29D9390D8();
  v28 = *(a1 + 9);
  v29 = swift_getKeyPath();
  *a2 = v38;
  *(a2 + 8) = v17;
  *(a2 + 16) = v4 & 1;
  *(a2 + 24) = v20;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v21;
  *(a2 + 48) = 0;
  *(a2 + 113) = *&v40[64];
  *(a2 + 129) = *&v40[80];
  *(a2 + 145) = *&v40[96];
  *(a2 + 160) = *(&v47 + 1);
  *(a2 + 49) = *v40;
  *(a2 + 65) = *&v40[16];
  *(a2 + 81) = *&v40[32];
  *(a2 + 97) = *&v40[48];
  *(a2 + 168) = v27;
  v30.f64[0] = v35;
  v30.f64[1] = v39;
  v31.f64[0] = v37;
  v31.f64[1] = v36;
  result = vmulq_f64(v30, *(a1 + 3));
  *(a2 + 176) = vmulq_f64(v31, *(a1 + 2));
  *(a2 + 192) = result;
  *(a2 + 208) = 0;
  *(a2 + 216) = v29;
  *(a2 + 224) = v28;
  return result;
}

void sub_29D69D3D8()
{
  if (!qword_2A17B1748)
  {
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1748);
    }
  }
}

unint64_t sub_29D69D430()
{
  result = qword_2A17B1758;
  if (!qword_2A17B1758)
  {
    sub_29D69D3D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1758);
  }

  return result;
}

unint64_t sub_29D69D4A8()
{
  result = qword_2A17B1760;
  if (!qword_2A17B1760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1760);
  }

  return result;
}

void sub_29D69D538(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29D938838();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D69D5AC()
{
  if (!qword_2A17B1778)
  {
    sub_29D69D640();
    sub_29D69D9EC(&qword_2A17B1800, sub_29D69D640);
    v0 = sub_29D9388F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1778);
    }
  }
}

void sub_29D69D640()
{
  if (!qword_2A17B1780)
  {
    sub_29D69D6A4();
    sub_29D69DA34();
    v0 = sub_29D938798();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1780);
    }
  }
}

void sub_29D69D6A4()
{
  if (!qword_2A17B1788)
  {
    sub_29D69D7A8();
    sub_29D933A58();
    sub_29D69D800();
    sub_29D69D9EC(&qword_2A17B17C0, sub_29D69D7A8);
    sub_29D69D9EC(&qword_2A17B1738, MEMORY[0x29EDB9C08]);
    v0 = sub_29D9397E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1788);
    }
  }
}

void sub_29D69D7A8()
{
  if (!qword_2A17B1790)
  {
    type metadata accessor for LocalizedImageView.TextConfiguration();
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1790);
    }
  }
}

void sub_29D69D800()
{
  if (!qword_2A17B1798)
  {
    sub_29D69D8B0(255, &qword_2A17B17A0, sub_29D69D914);
    sub_29D69D99C(255, &qword_2A17B17B8, MEMORY[0x29EDCA210], MEMORY[0x29EDBC938]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1798);
    }
  }
}

void sub_29D69D8B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D938838();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D69D93C()
{
  if (!qword_2A17B17B0)
  {
    sub_29D69A948();
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B17B0);
    }
  }
}

void sub_29D69D99C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D69D9EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D69DA34()
{
  result = qword_2A17B17C8;
  if (!qword_2A17B17C8)
  {
    sub_29D69D6A4();
    sub_29D69DAF0(&qword_2A17B17D0, sub_29D69D800, sub_29D69DB7C, sub_29D69DD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B17C8);
  }

  return result;
}

uint64_t sub_29D69DAF0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D69DB7C()
{
  result = qword_2A17B17D8;
  if (!qword_2A17B17D8)
  {
    sub_29D69D8B0(255, &qword_2A17B17A0, sub_29D69D914);
    sub_29D69DC20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B17D8);
  }

  return result;
}

unint64_t sub_29D69DC20()
{
  result = qword_2A17B17E0;
  if (!qword_2A17B17E0)
  {
    sub_29D69D914(255);
    sub_29D69DCA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B17E0);
  }

  return result;
}

unint64_t sub_29D69DCA0()
{
  result = qword_2A17B17E8;
  if (!qword_2A17B17E8)
  {
    sub_29D69D93C();
    sub_29D69D9EC(&qword_2A17B17F0, sub_29D69A948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B17E8);
  }

  return result;
}

unint64_t sub_29D69DD50()
{
  result = qword_2A17B17F8;
  if (!qword_2A17B17F8)
  {
    sub_29D69D99C(255, &qword_2A17B17B8, MEMORY[0x29EDCA210], MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B17F8);
  }

  return result;
}

uint64_t sub_29D69DDCC(uint64_t a1, uint64_t a2)
{
  sub_29D69D7A8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_29D69DE30@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(sub_29D938758() - 8) + 80);

  *&result = *&sub_29D69D12C(a1, a2);
  return result;
}

__n128 sub_29D69DEB0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29D69DEC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_29D69DF0C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_29D69DF64()
{
  result = qword_2A17B1810;
  if (!qword_2A17B1810)
  {
    sub_29D69D538(255, &qword_2A17B1768, sub_29D69D504, sub_29D69D5AC);
    sub_29D69E044();
    sub_29D69D9EC(&qword_2A17B1820, sub_29D69D5AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1810);
  }

  return result;
}

unint64_t sub_29D69E044()
{
  result = qword_2A17B1818;
  if (!qword_2A17B1818)
  {
    sub_29D69D504(255);
    sub_29D69DAF0(&qword_2A17B1750, sub_29D69D3B0, sub_29D69D430, sub_29D69D4A8);
    sub_29D69D9EC(&qword_2A17B46A0, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1818);
  }

  return result;
}

uint64_t type metadata accessor for BloodPressureJournalPromptTileViewActionHandler()
{
  result = qword_2A1A22EF0;
  if (!qword_2A1A22EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D69E1C4()
{
  v0 = sub_29D936638();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v0, v3);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v19[-1] - v8;
  sub_29D936B88();
  v10 = sub_29D936618();
  v11 = *(v1 + 8);
  v11(v9, v0);
  type metadata accessor for BloodPressureDataTypeDetailViewController();
  if (swift_dynamicCastClass())
  {
    v12 = sub_29D7D0C64();
  }

  else
  {
    v12 = 5;
  }

  sub_29D936B88();
  sub_29D936608();
  v11(v6, v0);
  sub_29D693E2C(v19, v19[3]);
  v13 = sub_29D936588();
  type metadata accessor for BloodPressureJournalInteractionAnalyticsUtilities();
  v14 = swift_allocObject();
  v14[4] = 0;
  v14[5] = 0;
  v14[2] = v13;
  type metadata accessor for BloodPressureJournalAnalyticsUtilities();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = 0;
  v14[3] = v15;
  v16 = v13;
  sub_29D69417C(v19);
  sub_29D6AA594(v12, 12);

  return sub_29D69E3B0();
}

uint64_t sub_29D69E3B0()
{
  v0 = sub_29D936638();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v0, v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v17[-v8];
  sub_29D936B88();
  sub_29D936608();
  v10 = *(v1 + 8);
  v10(v9, v0);
  sub_29D693E2C(v18, v18[3]);
  v11 = sub_29D936588();
  type metadata accessor for BloodPressureJournalCreationFlowManager();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 16) = v11;
  sub_29D69417C(v18);
  sub_29D936B88();
  v13 = sub_29D936618();
  v10(v6, v0);
  v14 = sub_29D89AE08(0, 0, 0, 5);
  [v13 presentViewController:v14 animated:1 completion:0];

  swift_setDeallocating();
  v15 = *(inited + 32);
}

uint64_t sub_29D69E58C(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v1);
  (*(v4 + 16))(v8, a1, v3);
  v10 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v10;
}

id sub_29D69E68C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalPromptTileViewActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D69E75C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D69E7B0()
{
  type metadata accessor for CenteredLabelWithSpinnerCell();
  sub_29D69F1EC();
  return sub_29D939DA8();
}

uint64_t sub_29D69E7E8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_29D935E88();
  return v1;
}

uint64_t sub_29D69E818(uint64_t a1)
{
  v2 = sub_29D69F4E4();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29D69E864(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Heart28CenteredLabelWithSpinnerCell_item;
  swift_beginAccess();
  sub_29D69F2FC(a1, v1 + v3);
  swift_endAccess();
  sub_29D69F108(v1 + v3, v14);
  if (v15)
  {
    sub_29D69F188();
    if (swift_dynamicCast())
    {
      v4 = v11;
      v8 = v13;
      v9 = v12;
      v11 = &type metadata for CenteredLabelWithSpinnerContentConfiguration;
      *&v12 = sub_29D69F2A8();
      v5 = swift_allocObject();
      v10[0] = v5;
      *(v5 + 16) = v10[2];
      *(v5 + 24) = v4;
      *(v5 + 32) = v9;
      *(v5 + 48) = v8;
      sub_29D935E88();
      MEMORY[0x29ED6A960](v10);
    }

    v6 = a1;
  }

  else
  {
    sub_29D69F230(a1);
    v6 = v14;
  }

  return sub_29D69F230(v6);
}

void (*sub_29D69E988(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC5Heart28CenteredLabelWithSpinnerCell_item;
  *(v3 + 104) = v1;
  *(v3 + 112) = v4;
  swift_beginAccess();
  return sub_29D69EA10;
}

void sub_29D69EA10(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_29D69F108(*(v3 + 104) + *(v3 + 112), v3 + 64);
    if (*(v3 + 88))
    {
      sub_29D69F188();
      if (swift_dynamicCast())
      {
        v4 = *(v3 + 104);
        v5 = *(v3 + 8);
        v6 = *(v3 + 16);
        v7 = *(v3 + 24);
        v8 = sub_29D69F2A8();
        v10 = *(v3 + 48);
        v11 = *(v3 + 32);
        v12[3] = &type metadata for CenteredLabelWithSpinnerContentConfiguration;
        v12[4] = v8;
        v9 = swift_allocObject();
        v12[0] = v9;
        *(v9 + 16) = v6;
        *(v9 + 24) = v7;
        *(v9 + 32) = v11;
        *(v9 + 48) = v10;
        sub_29D935E88();
        MEMORY[0x29ED6A960](v12);
      }
    }

    else
    {
      sub_29D69F230(v3 + 64);
    }
  }

  free(v3);
}

id sub_29D69EF8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CenteredLabelWithSpinnerCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D69EFF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart28CenteredLabelWithSpinnerCell_item;
  swift_beginAccess();
  return sub_29D69F108(v1 + v3, a1);
}

void (*sub_29D69F050(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_29D69E988(v2);
  return sub_29D69F0C0;
}

void sub_29D69F0C0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_29D69F108(uint64_t a1, uint64_t a2)
{
  sub_29D69F37C(0, &qword_2A17B1830, sub_29D69F188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D69F188()
{
  result = qword_2A17B1080;
  if (!qword_2A17B1080)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B1080);
  }

  return result;
}

unint64_t sub_29D69F1EC()
{
  result = qword_2A17B1838;
  if (!qword_2A17B1838)
  {
    type metadata accessor for CenteredLabelWithSpinnerCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B1838);
  }

  return result;
}

uint64_t sub_29D69F230(uint64_t a1)
{
  sub_29D69F37C(0, &qword_2A17B1830, sub_29D69F188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D69F2A8()
{
  result = qword_2A17B1840;
  if (!qword_2A17B1840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1840);
  }

  return result;
}

uint64_t sub_29D69F2FC(uint64_t a1, uint64_t a2)
{
  sub_29D69F37C(0, &qword_2A17B1830, sub_29D69F188);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_29D69F37C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_29D69F3D0(uint64_t a1, uint64_t a2)
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

uint64_t sub_29D69F3E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_29D69F42C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29D69F490()
{
  result = qword_2A17B1850;
  if (!qword_2A17B1850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1850);
  }

  return result;
}

unint64_t sub_29D69F4E4()
{
  result = qword_2A17B1858;
  if (!qword_2A17B1858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1858);
  }

  return result;
}

id sub_29D69F538()
{
  *&v0[OBJC_IVAR____TtC5Heart42CardioFitnessOnboardingStartViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_29D9334A8();

  v4 = sub_29D939D28();

  v5 = [v2 bundleForClass_];
  sub_29D9334A8();

  v6 = sub_29D939D28();

  v9.receiver = v0;
  v9.super_class = type metadata accessor for CardioFitnessOnboardingStartViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithTitle_detailText_icon_contentLayout_, v4, v6, 0, 4, 0xE000000000000000);

  return v7;
}

void sub_29D69F6F4()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for CardioFitnessOnboardingStartViewController();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v1 = sub_29D69FB30();
  v2 = [v0 contentView];
  [v2 addSubview_];

  v3 = [v0 contentView];
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  v5 = [v1 centerXAnchor];
  v6 = [v0 contentView];
  v7 = [v6 centerXAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  [v8 setActive_];

  v9 = [v0 contentView];
  [v1 hk:v9 alignVerticalConstraintsWithView:0.0 margin:?];

  v10 = [v0 hxui_addCancelButton];
}

id sub_29D69FA74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardioFitnessOnboardingStartViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D69FAE4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC5Heart42CardioFitnessOnboardingStartViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

id sub_29D69FB30()
{
  v0 = [objc_opt_self() hrui_heartRateIconImage];
  if (qword_2A17B0D50 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  v1 = [objc_allocWithZone(MEMORY[0x29EDC7A00]) initWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:{1.0, 0xE000000000000000}];
  v2 = objc_allocWithZone(MEMORY[0x29EDC4828]);
  v3 = sub_29D939D28();

  v4 = sub_29D939D28();

  v5 = [v2 initWithIconImage:v0 titleText:v3 detailText:v4 tintColor:v1];

  return v5;
}

uint64_t sub_29D69FD1C()
{
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  result = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA970]);
  qword_2A17D07C8 = result;
  return result;
}

uint64_t sub_29D69FD70@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v4 = [v3 startDate];
    sub_29D933998();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_29D9339F8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_29D69FE14(uint64_t a1)
{
  sub_29D6A08F8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_29D9339F8();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v6, a1, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    v11 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queue_mostRecentSampleDate;
    swift_beginAccess();
    sub_29D6A0A84(v6, v8 + v11);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_29D69FF7C()
{
  v1 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider____lazy_storage___lastSampleQueryPublisher;
  if (*(v0 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider____lazy_storage___lastSampleQueryPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider____lazy_storage___lastSampleQueryPublisher);
  }

  else
  {
    v2 = sub_29D6A000C(v0, *v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_29D6A000C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_29D6A0AF0();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  sub_29D938368();
  sub_29D6A0BC0();
  v8 = sub_29D938418();

  return v8;
}

void sub_29D6A00CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = qword_2A17B0BC8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_2A17D07C8;
  sub_29D6A0C58();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D940030;
  v12 = *MEMORY[0x29EDBA998];
  sub_29D939D68();
  v13 = objc_allocWithZone(MEMORY[0x29EDBA0F0]);
  v14 = sub_29D939D28();

  v15 = [v13 initWithKey:v14 ascending:0];

  *(v11 + 32) = v15;
  v16 = swift_allocObject();
  v16[2] = sub_29D6A0C18;
  v16[3] = v8;
  v16[4] = a4;
  v17 = objc_allocWithZone(MEMORY[0x29EDBAD70]);
  sub_29D69567C(0, &qword_2A17B50C0, 0x29EDBA0F0);
  v18 = sub_29D939F18();

  v24[4] = sub_29D6A0CAC;
  v24[5] = v16;
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 1107296256;
  v24[2] = sub_29D733900;
  v24[3] = &unk_2A24405A0;
  v19 = _Block_copy(v24);
  v20 = [v17 initWithSampleType:v10 predicate:0 limit:1 sortDescriptors:v18 resultsHandler:v19];

  _Block_release(v19);

  v21 = (a3 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queryExecutor);
  v22 = *(a3 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queryExecutor + 24);
  v23 = v21[4];
  sub_29D693E2C(v21, v22);
  (*(v23 + 8))(v20, v22, v23);
}

void sub_29D6A0354(int a1, unint64_t a2, id a3, void (*a4)(void *, void))
{
  if (a3)
  {
    v6 = a3;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v7 = sub_29D937898();
    sub_29D69C6C0(v7, qword_2A1A2C008);
    v8 = a3;
    v9 = sub_29D937878();
    v10 = sub_29D93A288();

    if (!os_log_type_enabled(v9, v10))
    {

LABEL_20:
      a4(0, 0);
      return;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136315394;
    v13 = sub_29D93AF08();
    v15 = sub_29D6C2364(v13, v14, &v34);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = a3;
    sub_29D6A0CD0();
    v17 = sub_29D939DA8();
    v19 = sub_29D6C2364(v17, v18, &v34);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_29D677000, v9, v10, "[%s] Error encountered when retrieving cardio fitness samples: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v12, -1, -1);
    MEMORY[0x29ED6BE30](v11, -1, -1);

LABEL_19:
    goto LABEL_20;
  }

  if (!a2 || (v20 = sub_29D83850C(a2)) == 0)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v24 = sub_29D937898();
    sub_29D69C6C0(v24, qword_2A1A2C008);
    v9 = sub_29D937878();
    v25 = sub_29D93A298();
    if (os_log_type_enabled(v9, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v27;
      *v26 = 136315138;
      v28 = sub_29D93AF08();
      v30 = sub_29D6C2364(v28, v29, &v34);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_29D677000, v9, v25, "[%s] Samples retrieved not quantity samples", v26, 0xCu);
      sub_29D69417C(v27);
      MEMORY[0x29ED6BE30](v27, -1, -1);
      MEMORY[0x29ED6BE30](v26, -1, -1);
    }

    goto LABEL_19;
  }

  v21 = v20 & 0xFFFFFFFFFFFFFF8;
  if (v20 >> 62)
  {
    v31 = v20;
    v32 = sub_29D93A928();
    v20 = v31;
    if (v32)
    {
      goto LABEL_10;
    }

LABEL_22:

    v23 = 0;
    goto LABEL_23;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x29ED6AE30](0);
  }

  else
  {
    if (!*(v21 + 16))
    {
      __break(1u);
      return;
    }

    v22 = *(v20 + 32);
  }

  v23 = v22;

LABEL_23:
  v33 = v23;
  a4(v23, 0);
}

uint64_t sub_29D6A074C()
{
  sub_29D6A0D34(v0 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queue_mostRecentSampleDate);
  v1 = *(v0 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_mostRecentSampleDateCancellationToken);

  sub_29D69417C((v0 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queryExecutor));

  v2 = *(v0 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider____lazy_storage___lastSampleQueryPublisher);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CardioFitnessOnboardingMostRecentValueProvider()
{
  result = qword_2A17B1890;
  if (!qword_2A17B1890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D6A0844()
{
  sub_29D6A08F8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_29D6A08F8()
{
  if (!qword_2A1A25780)
  {
    sub_29D9339F8();
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A25780);
    }
  }
}

uint64_t sub_29D6A0950()
{
  v1 = *(*v0 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queue);
  sub_29D6A08F8();
  return sub_29D93A478();
}

uint64_t sub_29D6A09C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queue_mostRecentSampleDate;
  swift_beginAccess();
  return sub_29D6A0A20(v1 + v3, a1);
}

uint64_t sub_29D6A0A20(uint64_t a1, uint64_t a2)
{
  sub_29D6A08F8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6A0A84(uint64_t a1, uint64_t a2)
{
  sub_29D6A08F8();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_29D6A0AF0()
{
  if (!qword_2A17B18A0)
  {
    sub_29D6A0B58();
    v0 = sub_29D938358();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B18A0);
    }
  }
}

void sub_29D6A0B58()
{
  if (!qword_2A17B5E30)
  {
    sub_29D69567C(255, &qword_2A17B18A8, 0x29EDBAD10);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5E30);
    }
  }
}

unint64_t sub_29D6A0BC0()
{
  result = qword_2A17B18B0;
  if (!qword_2A17B18B0)
  {
    sub_29D6A0AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B18B0);
  }

  return result;
}

uint64_t sub_29D6A0C18(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

void sub_29D6A0C58()
{
  if (!qword_2A1A21EF0)
  {
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A21EF0);
    }
  }
}

void sub_29D6A0CAC(int a1, unint64_t a2, void *a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  sub_29D6A0354(a1, a2, a3, *(v3 + 16));
}

uint64_t sub_29D6A0CB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D6A0CD0()
{
  result = qword_2A1A24850;
  if (!qword_2A1A24850)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A24850);
  }

  return result;
}

uint64_t sub_29D6A0D34(uint64_t a1)
{
  sub_29D6A08F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for HypertensionNotificationsConfirmDetailsViewController()
{
  result = qword_2A17B18E0;
  if (!qword_2A17B18E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D6A0E48()
{
  *(v0 + qword_2A17B18B8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_2A17B18C0) = 2;
  *(v0 + qword_2A17B18C8) = 2;
  *(v0 + qword_2A17B18D0) = 0;
  v1 = qword_2A17B18D8;
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v2 = (v0 + v1);
  *v2 = sub_29D9334A8();
  v2[1] = v3;
  sub_29D9334A8();
  sub_29D9334A8();
  v4 = type metadata accessor for HypertensionNotificationsConfirmDetailsDataSource();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_29D8BC270();

  v8 = sub_29D9365F8();
  *(v7 + qword_2A17B76F8 + 8) = &off_2A24405C8;
  swift_unknownObjectWeakAssign();

  return v8;
}

void sub_29D6A1060()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v3 = sub_29D939D28();

    [v2 setAccessibilityIdentifier_];

    v4 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v5 = sub_29D939D28();

    [v4 setTitleAccessibilityIdentifier_];

    v6 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v7 = sub_29D939D28();

    [v6 setDetailTextAccessibilityIdentifier_];

    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v8 = sub_29D939D28();

    v9 = [v0 hxui:v8 addContinueButtonWithAccessibilityIdentifier:?];

    v10 = qword_2A17B18D0;
    v11 = *&v0[qword_2A17B18D0];
    *&v0[qword_2A17B18D0] = v9;

    v12 = *&v0[v10];
    if (v12)
    {
      [v12 setEnabled_];
    }

    v13 = [v0 buttonTray];
    v14 = *&v0[qword_2A17B18D8];
    v15 = *&v0[qword_2A17B18D8 + 8];
    v16 = sub_29D939D28();
    [v13 setCaptionText_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D6A1328(void *a1)
{
  v1 = a1;
  sub_29D6A1060();
}

void sub_29D6A1370(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = a1;
    sub_29D8FD7C8(v4, v3);
    sub_29D936978();
  }
}

void sub_29D6A13EC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = a1;
    sub_29D8528D8(v3);
    sub_29D936978();
  }
}

uint64_t sub_29D6A1498()
{
  sub_29D68B77C(v0 + qword_2A17B18B8);

  v1 = *(v0 + qword_2A17B18D8 + 8);
}

id sub_29D6A14EC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D6A1524(uint64_t a1)
{
  sub_29D68B77C(a1 + qword_2A17B18B8);

  v2 = *(a1 + qword_2A17B18D8 + 8);
}

uint64_t sub_29D6A158C(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_2A17B18B8 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

uint64_t sub_29D6A15E8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  v3 = *(a2 + 40);
  sub_29D939D68();
  sub_29D93AE58();
  sub_29D939E18();
  v4 = sub_29D93AE98();

  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + 8 * v6);
      v9 = sub_29D939D68();
      v11 = v10;
      if (v9 == sub_29D939D68() && v11 == v12)
      {
        break;
      }

      v14 = sub_29D93AD78();

      if ((v14 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v14 & 1;
    }

    v14 = 1;
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_29D6A173C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_29D93AE58();
  sub_29D939E18();
  v7 = sub_29D93AE98();
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
    if (v12 || (sub_29D93AD78() & 1) != 0)
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

uint64_t sub_29D6A1834(uint64_t a1, uint64_t a2)
{
  v3 = sub_29D9339F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v9 = *(a2 + 40), sub_29D6AA4B8(&qword_2A17B1360, MEMORY[0x29EDB9BC8]), v10 = sub_29D939C88(), v11 = -1 << *(a2 + 32), v12 = v10 & ~v11, v21 = a2 + 56, ((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
  {
    v20 = a2;
    v13 = ~v11;
    v14 = v4 + 16;
    v15 = *(v4 + 16);
    v16 = *(v14 + 56);
    v17 = (v14 - 8);
    do
    {
      v15(v8, *(v20 + 48) + v16 * v12, v3);
      sub_29D6AA4B8(&qword_2A17B4C90, MEMORY[0x29EDB9BC8]);
      v18 = sub_29D939CF8();
      (*v17)(v8, v3);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v21 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_29D6A1A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v114 = a4;
  v122 = a2;
  v123 = a5;
  v111 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
  v7 = *(*(v111 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v111, v8);
  v112 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6AA454(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v107 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v108 = &v99 - v16;
  v17 = _s14descr2A243C641C15SettingsContentVMa();
  v113 = *(v17 - 8);
  v18 = *(v113 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v105 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v106 = &v99 - v23;
  v24 = sub_29D937118();
  v110 = *(v24 - 8);
  v25 = *(v110 + 64);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v109 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_29D937178();
  v119 = *(v121 - 8);
  v28 = *(v119 + 64);
  MEMORY[0x2A1C7C4A8](v121, v29);
  v118 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_29D937158();
  v120 = *(v117 - 8);
  v31 = *(v120 + 64);
  MEMORY[0x2A1C7C4A8](v117, v32);
  v115 = &v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29D9371A8();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v38 = MEMORY[0x2A1C7C4A8](v34, v37);
  v39 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v38, v40);
  v42 = &v99 - v41;
  v43 = sub_29D933FE8();
  v116 = a1;
  LOBYTE(a1) = sub_29D933FD8();

  if ((a1 & 1) == 0)
  {
    if (qword_2A1A24678 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  if ((a3 & 1) == 0)
  {
    if (qword_2A1A24678 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  v44 = *MEMORY[0x29EDBA5A0];
  v45 = sub_29D9371B8();
  v46 = [v45 isRequirementSatisfiedWithIdentifier_];

  if ((v46 & 1) == 0)
  {
    if (qword_2A1A24678 == -1)
    {
LABEL_15:
      sub_29D6A9ED4();
      sub_29D69C6C0(v62, qword_2A1A2BF58);
      v124 = 0;
      sub_29D9371C8();
      goto LABEL_16;
    }

LABEL_30:
    swift_once();
    goto LABEL_15;
  }

  v101 = v44;
  v99 = v24;
  v100 = v17;
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  v48 = v47;
  v49 = sub_29D69C6C0(v47, qword_2A1A2BF58);
  v104 = *(v35 + 16);
  v104(v42, v122, v34);
  v50 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v51 = swift_allocObject();
  (*(v35 + 32))(v51 + v50, v42, v34);
  v124 = 0;
  v103 = v48;
  v102 = v49;
  sub_29D9371C8();

  v104(v39, v122, v34);
  v52 = (*(v35 + 88))(v39, v34);
  if (v52 == *MEMORY[0x29EDC2D70])
  {
    (*(v35 + 96))(v39, v34);
    v53 = v115;
    v54 = v117;
    (*(v120 + 32))(v115, v39, v117);
    v55 = v118;
    sub_29D937108();
    v56 = sub_29D937188();
    v57 = *(v119 + 8);
    v58 = v121;
    v57(v55, v121);
    v59 = [v56 areAllRequirementsSatisfied];

    if (v59)
    {
      v60 = v108;
      sub_29D826468(v122, v114, v108);
      v61 = v100;
      if ((*(v113 + 48))(v60, 1, v100) == 1)
      {
        sub_29D6AA094(v60, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
        v124 = 0;
        sub_29D9371F8();
        (*(v120 + 8))(v53, v54);
LABEL_16:
        v63 = sub_29D9340F8();
        return (*(*(v63 - 8) + 56))(v123, 1, 1, v63);
      }

      v89 = v106;
      sub_29D6AA104(v60, v106);
      v124 = 0;
      sub_29D9371C8();
      v90 = v112;
      sub_29D6AA1C8(v89, v112, _s14descr2A243C641C15SettingsContentVMa);
      swift_storeEnumTagMultiPayload();
      v91 = *(v89 + *(v61 + 24));
      sub_29D6A2CD8(v116, v90, v123);
      sub_29D6AA168(v90, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
      sub_29D6AA168(v89, _s14descr2A243C641C15SettingsContentVMa);
      return (*(v120 + 8))(v53, v54);
    }

    else
    {
      sub_29D937108();
      v79 = sub_29D937188();
      v57(v55, v58);
      v80 = [v79 unsatisfiedRequirementIdentifiers];

      type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
      v81 = sub_29D939F38();

      sub_29D6AA454(0, &qword_2A17B18F0, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, MEMORY[0x29EDC9E90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_29D93DDB0;
      v83 = *MEMORY[0x29EDBA608];
      *(inited + 32) = *MEMORY[0x29EDBA608];
      v84 = v83;
      v85 = sub_29D6971AC(v81, inited);

      swift_setDeallocating();
      v86 = *(inited + 16);
      swift_arrayDestroy();
      if (v85)
      {
        v87 = v107;
        sub_29D826468(v122, v114, v107);
        if ((*(v113 + 48))(v87, 1, v100) == 1)
        {
          sub_29D6AA094(v87, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
          v124 = 0;
          sub_29D9371F8();
          (*(v120 + 8))(v53, v117);
          goto LABEL_16;
        }

        v94 = v105;
        sub_29D6AA104(v87, v105);
        v124 = 0;
        sub_29D9371C8();
        v95 = sub_29D9347E8();
        v97 = v96;
        v98 = v112;
        sub_29D6AA1C8(v94, v112, _s14descr2A243C641C15SettingsContentVMa);
        swift_storeEnumTagMultiPayload();
        sub_29D6A3B60(v116, v95, v97, 1, v98, v123);

        sub_29D6AA168(v98, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
        sub_29D6AA168(v94, _s14descr2A243C641C15SettingsContentVMa);
      }

      else
      {
        sub_29D937108();
        v93 = sub_29D937188();
        v57(v55, v121);
        sub_29D6A48D4(v93, v116, 1, v123);
      }

      return (*(v120 + 8))(v53, v117);
    }
  }

  else
  {
    v65 = v121;
    v67 = v118;
    v66 = v119;
    if (v52 == *MEMORY[0x29EDC2D68])
    {
      (*(v35 + 96))(v39, v34);
      v69 = v109;
      v68 = v110;
      v70 = v99;
      (*(v110 + 32))(v109, v39, v99);
      sub_29D937108();
      v71 = *MEMORY[0x29EDBA578];
      v72 = sub_29D937188();
      v73 = *(v66 + 8);
      v73(v67, v65);
      v74 = [v72 areAllRequirementsSatisfied];

      if (v74)
      {
        v124 = 0;
        sub_29D9371C8();
        v75 = sub_29D9347D8();
        v77 = v76;
        v78 = v112;
        swift_storeEnumTagMultiPayload();
        sub_29D6A3B60(v116, v75, v77, 0, v78, v123);

        sub_29D6AA168(v78, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
      }

      else
      {
        sub_29D937108();
        v92 = sub_29D937188();
        v73(v67, v65);
        sub_29D6A48D4(v92, v116, 0, v123);
      }

      return (*(v68 + 8))(v69, v70);
    }

    else
    {
      v88 = sub_29D9340F8();
      (*(*(v88 - 8) + 56))(v123, 1, 1, v88);
      return (*(v35 + 8))(v39, v34);
    }
  }
}

uint64_t sub_29D6A28F8()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x6D65744964656546, 0xEF79726F74636146);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000007CLL, 0x800000029D9583B0);
  MEMORY[0x29ED6A240](0xD000000000000032, 0x800000029D9589E0);
  return 0;
}

uint64_t sub_29D6A29C8()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x6D65744964656546, 0xEF79726F74636146);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000007CLL, 0x800000029D9583B0);
  MEMORY[0x29ED6A240](0xD00000000000002FLL, 0x800000029D9589B0);
  return 0;
}

uint64_t sub_29D6A2A98()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x6D65744964656546, 0xEF79726F74636146);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000007CLL, 0x800000029D9583B0);
  MEMORY[0x29ED6A240](0xD000000000000031, 0x800000029D958970);
  return 0;
}

uint64_t sub_29D6A2B68(uint64_t a1)
{
  v2 = sub_29D9371A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x6D65744964656546, 0xEF79726F74636146);
  MEMORY[0x29ED6A240](0xD000000000000035, 0x800000029D9585F0);
  (*(v3 + 16))(v7, a1, v2);
  v8 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v8);

  return v10[0];
}

uint64_t sub_29D6A2CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v101 = a2;
  v93 = a1;
  v102 = a3;
  v96 = sub_29D934898();
  v95 = *(v96 - 8);
  v3 = *(v95 + 64);
  MEMORY[0x2A1C7C4A8](v96, v4);
  v94 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_29D933F58();
  v91 = *(v92 - 8);
  v6 = *(v91 + 64);
  MEMORY[0x2A1C7C4A8](v92, v7);
  v90 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDC9C68];
  sub_29D6AA454(0, &qword_2A1A24720, MEMORY[0x29EDC1948], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v89 = &v84 - v13;
  sub_29D6AA454(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], v9);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v87 = &v84 - v17;
  sub_29D6AA454(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v9);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18 - 8, v20);
  v86 = &v84 - v21;
  v22 = sub_29D9349A8();
  v99 = *(v22 - 8);
  v100 = v22;
  v23 = *(v99 + 64);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v98 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = _s14descr2A243C641C13ActionHandlerC8UserDataVMa(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29D9346E8();
  v32 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x2A1C7C4A8](v31, v33);
  v97 = &v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v34, v36);
  v37 = *MEMORY[0x29EDC1760];
  v104 = v38;
  v105 = v39;
  v40 = *(v39 + 104);
  v103 = &v84 - v41;
  v40();
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  v88 = v42;
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_29D93F680;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  *(v43 + 32) = sub_29D9334A8();
  *(v43 + 40) = v44;
  v45 = sub_29D9334A8();
  v47 = v46;

  *(v43 + 48) = v45;
  *(v43 + 56) = v47;
  sub_29D934818();
  sub_29D6AA1C8(v101, v30, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
  v48 = sub_29D933108();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  sub_29D9330F8();
  sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
  v101 = v30;
  v51 = sub_29D9330E8();
  v84 = v52;
  v85 = v51;

  sub_29D9334A8();
  (*(v105 + 16))(v97, v103, v104);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v53 = qword_2A1A2C038;
  v54 = v86;
  sub_29D934788();
  v55 = sub_29D934798();
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  v56 = sub_29D9336F8();
  (*(*(v56 - 8) + 56))(v87, 1, 1, v56);
  sub_29D935E88();
  v57 = v98;
  sub_29D934978();
  sub_29D936948();
  _s14descr2A243C641C13ActionHandlerCMa(0);
  v87 = &unk_29D940210;
  v58 = v99;
  v59 = v100;
  v60 = v89;
  (*(v99 + 16))(v89, v57, v100);
  (*(v58 + 56))(v60, 0, 1, v59);
  v61 = v91;
  v62 = v90;
  v63 = v92;
  (*(v91 + 104))(v90, *MEMORY[0x29EDC36F0], v92);
  v64 = v85;
  v65 = v84;
  sub_29D6AA230(v85, v84);
  sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa);
  v66 = v102;
  sub_29D934048();
  sub_29D6AA284(v64, v65);
  (*(v61 + 8))(v62, v63);
  sub_29D6AA094(v60, &qword_2A1A24720, MEMORY[0x29EDC1948]);
  v67 = v98;
  sub_29D934998();
  sub_29D934098();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  v69 = v97;
  sub_29D934958();
  v70 = sub_29D9348A8();
  v72 = v71;
  v73 = v104;
  v74 = *(v105 + 8);
  v74(v69, v104);
  *(inited + 32) = v70;
  *(inited + 40) = v72;
  sub_29D6E35C8(inited);
  swift_setDeallocating();
  sub_29D6AA360(inited + 32);
  sub_29D9340D8();
  v75 = v95;
  v76 = v94;
  v77 = v96;
  (*(v95 + 104))(v94, *MEMORY[0x29EDC1870], v96);
  sub_29D934888();
  (*(v75 + 8))(v76, v77);
  sub_29D9340E8();
  sub_29D934088();
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  v78 = swift_initStackObject();
  *(v78 + 16) = xmmword_29D940030;
  sub_29D6AA400();
  *(v78 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  sub_29D6E3724(v78);
  v80 = v79;
  swift_setDeallocating();
  v81 = *(v78 + 16);
  swift_arrayDestroy();
  sub_29D8E8608(v80);

  sub_29D9340B8();

  sub_29D6AA284(v85, v84);
  (*(v99 + 8))(v67, v100);
  sub_29D6AA168(v101, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
  v74(v103, v73);
  v82 = sub_29D9340F8();
  return (*(*(v82 - 8) + 56))(v66, 0, 1, v82);
}

uint64_t sub_29D6A39C0()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x6D65744964656546, 0xEF79726F74636146);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000007CLL, 0x800000029D9583B0);
  MEMORY[0x29ED6A240](0xD00000000000003FLL, 0x800000029D958430);
  return 0;
}

uint64_t sub_29D6A3A90()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x6D65744964656546, 0xEF79726F74636146);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000007CLL, 0x800000029D9583B0);
  MEMORY[0x29ED6A240](0xD00000000000003CLL, 0x800000029D958470);
  return 0;
}

uint64_t sub_29D6A3B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v109 = a5;
  v94 = a3;
  v95 = a2;
  v100 = a1;
  v103 = sub_29D934898();
  v102 = *(v103 - 8);
  v8 = *(v102 + 64);
  MEMORY[0x2A1C7C4A8](v103, v9);
  v101 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_29D933F58();
  v98 = *(v99 - 8);
  v11 = *(v98 + 64);
  MEMORY[0x2A1C7C4A8](v99, v12);
  v97 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x29EDC9C68];
  sub_29D6AA454(0, &qword_2A1A24720, MEMORY[0x29EDC1948], MEMORY[0x29EDC9C68]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8, v17);
  v96 = &v88 - v18;
  sub_29D6AA454(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], v14);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19 - 8, v21);
  v92 = &v88 - v22;
  sub_29D6AA454(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v14);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v23 - 8, v25);
  v91 = &v88 - v26;
  v27 = sub_29D9349A8();
  v106 = *(v27 - 8);
  v107 = v27;
  v28 = *(v106 + 64);
  MEMORY[0x2A1C7C4A8](v27, v29);
  v105 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = _s14descr2A243C641C13ActionHandlerC8UserDataVMa(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v113 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_29D9346E8();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v39 = MEMORY[0x2A1C7C4A8](v35, v38);
  v104 = &v88 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v39, v41);
  v43 = &v88 - v42;
  (*(v36 + 104))(&v88 - v42, *MEMORY[0x29EDC1768], v35);
  v93 = a4;
  v108 = a6;
  v111 = v43;
  v112 = v35;
  v110 = v36;
  if ((a4 & 1) == 0)
  {
    if (qword_2A17B0D48 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (qword_2A17B0D48 != -1)
  {
LABEL_10:
    swift_once();
  }

LABEL_5:
  v44 = sub_29D9334A8();
  v46 = v45;
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  v90 = v47;
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_29D93F680;
  *(v48 + 32) = v44;
  *(v48 + 40) = v46;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  *(v48 + 48) = sub_29D9334A8();
  *(v48 + 56) = v49;
  sub_29D934818();
  sub_29D6AA1C8(v109, v113, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
  v50 = sub_29D933108();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  sub_29D9330F8();
  sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
  v53 = sub_29D9330E8();
  v89 = v54;
  v109 = v53;

  sub_29D9334A8();
  (*(v110 + 16))(v104, v111, v112);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v55 = qword_2A1A2C038;
  v56 = v91;
  sub_29D934788();
  v57 = sub_29D934798();
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
  v58 = sub_29D9336F8();
  (*(*(v58 - 8) + 56))(v92, 1, 1, v58);
  sub_29D935E88();
  sub_29D935E88();
  v59 = v105;
  sub_29D934978();
  sub_29D936948();
  _s14descr2A243C641C13ActionHandlerCMa(0);
  v60 = v106;
  v61 = v96;
  v62 = v59;
  v63 = v107;
  (*(v106 + 16))(v96, v62, v107);
  (*(v60 + 56))(v61, 0, 1, v63);
  v64 = v98;
  v65 = v97;
  v66 = v99;
  (*(v98 + 104))(v97, *MEMORY[0x29EDC36F0], v99);
  v67 = v109;
  v68 = v89;
  sub_29D6AA230(v109, v89);
  sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa);
  v69 = v104;
  v70 = v108;
  sub_29D934048();
  sub_29D6AA284(v67, v68);
  (*(v64 + 8))(v65, v66);
  sub_29D6AA094(v61, &qword_2A1A24720, MEMORY[0x29EDC1948]);
  v71 = v105;
  sub_29D934998();
  sub_29D934098();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  sub_29D934958();
  v73 = sub_29D9348A8();
  v75 = v74;
  v76 = *(v110 + 8);
  v77 = v69;
  v78 = v112;
  v76(v77, v112);
  *(inited + 32) = v73;
  *(inited + 40) = v75;
  sub_29D6E35C8(inited);
  swift_setDeallocating();
  sub_29D6AA360(inited + 32);
  sub_29D9340D8();
  v79 = v102;
  v80 = v101;
  v81 = v103;
  (*(v102 + 104))(v101, *MEMORY[0x29EDC1870], v103);
  sub_29D934888();
  (*(v79 + 8))(v80, v81);
  sub_29D9340E8();
  sub_29D934088();
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  v82 = swift_initStackObject();
  *(v82 + 16) = xmmword_29D940030;
  sub_29D6AA400();
  *(v82 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  sub_29D6E3724(v82);
  v84 = v83;
  swift_setDeallocating();
  v85 = *(v82 + 16);
  swift_arrayDestroy();
  sub_29D8E8608(v84);

  sub_29D9340B8();

  sub_29D6AA284(v109, v89);
  (*(v106 + 8))(v71, v107);
  sub_29D6AA168(v113, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
  v76(v111, v78);
  v86 = sub_29D9340F8();
  return (*(*(v86 - 8) + 56))(v70, 0, 1, v86);
}

uint64_t sub_29D6A48D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v603 = a3;
  v605 = a2;
  v623 = a4;
  v5 = sub_29D934898();
  v6 = *(v5 - 8);
  v611 = v5;
  v612 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v610 = &v581 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D933F58();
  v11 = *(v10 - 8);
  v607 = v10;
  v608 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v606 = &v581 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x29EDC9C68];
  sub_29D6AA454(0, &qword_2A1A24720, MEMORY[0x29EDC1948], MEMORY[0x29EDC9C68]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8, v18);
  v609 = &v581 - v19;
  sub_29D6AA454(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], v15);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20 - 8, v22);
  v602 = &v581 - v23;
  sub_29D6AA454(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v15);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v24 - 8, v26);
  v604 = &v581 - v27;
  v28 = sub_29D9349A8();
  v29 = *(v28 - 8);
  v619 = v28;
  v620 = v29;
  v30 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v28, v31);
  v618 = &v581 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v622 = _s14descr2A243C641C13ActionHandlerC8UserDataVMa(0);
  v33 = *(*(v622 - 8) + 64);
  v35 = MEMORY[0x2A1C7C4A8](v622, v34);
  v585 = &v581 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x2A1C7C4A8](v35, v37);
  v584 = &v581 - v39;
  v41 = MEMORY[0x2A1C7C4A8](v38, v40);
  v589 = &v581 - v42;
  v44 = MEMORY[0x2A1C7C4A8](v41, v43);
  v592 = &v581 - v45;
  v47 = MEMORY[0x2A1C7C4A8](v44, v46);
  v596 = &v581 - v48;
  v50 = MEMORY[0x2A1C7C4A8](v47, v49);
  v598 = &v581 - v51;
  v53 = MEMORY[0x2A1C7C4A8](v50, v52);
  *&v601 = &v581 - v54;
  v56 = MEMORY[0x2A1C7C4A8](v53, v55);
  v614 = &v581 - v57;
  MEMORY[0x2A1C7C4A8](v56, v58);
  *&v625 = &v581 - v59;
  v626 = sub_29D9346E8();
  v60 = *(v626 - 8);
  v61 = *(v60 + 64);
  v63 = MEMORY[0x2A1C7C4A8](v626, v62);
  v588 = &v581 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x2A1C7C4A8](v63, v65);
  v587 = &v581 - v67;
  v69 = MEMORY[0x2A1C7C4A8](v66, v68);
  v591 = &v581 - v70;
  v72 = MEMORY[0x2A1C7C4A8](v69, v71);
  v594 = &v581 - v73;
  v75 = MEMORY[0x2A1C7C4A8](v72, v74);
  v597 = &v581 - v76;
  v78 = MEMORY[0x2A1C7C4A8](v75, v77);
  v600 = &v581 - v79;
  v81 = MEMORY[0x2A1C7C4A8](v78, v80);
  *&v613 = &v581 - v82;
  v84 = MEMORY[0x2A1C7C4A8](v81, v83);
  v86 = &v581 - v85;
  v88 = MEMORY[0x2A1C7C4A8](v84, v87);
  v617 = &v581 - v89;
  MEMORY[0x2A1C7C4A8](v88, v90);
  v92 = &v581 - v91;
  *&v621 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
  v93 = *(*(v621 - 8) + 64);
  v95 = MEMORY[0x2A1C7C4A8](v621, v94);
  v586 = &v581 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = MEMORY[0x2A1C7C4A8](v95, v97);
  v583 = &v581 - v99;
  v101 = MEMORY[0x2A1C7C4A8](v98, v100);
  v590 = &v581 - v102;
  v104 = MEMORY[0x2A1C7C4A8](v101, v103);
  v593 = &v581 - v105;
  v107 = MEMORY[0x2A1C7C4A8](v104, v106);
  v595 = &v581 - v108;
  v110 = MEMORY[0x2A1C7C4A8](v107, v109);
  v599 = &v581 - v111;
  v113 = MEMORY[0x2A1C7C4A8](v110, v112);
  v115 = &v581 - v114;
  v117 = MEMORY[0x2A1C7C4A8](v113, v116);
  v119 = &v581 - v118;
  MEMORY[0x2A1C7C4A8](v117, v120);
  v624 = &v581 - v121;
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  v123 = v122;
  v124 = sub_29D69C6C0(v122, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = a1;
  v627 = 0;
  v125 = a1;
  v615 = v123;
  v616 = v124;
  sub_29D9371C8();

  v126 = [v125 unsatisfiedRequirementIdentifiers];
  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v127 = sub_29D939F38();

  v128 = sub_29D7AF204(v127);

  if (sub_29D6A15E8(*MEMORY[0x29EDBA5D0], v128) & 1) != 0 || (sub_29D6A15E8(*MEMORY[0x29EDBA5D8], v128))
  {

    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    v596 = qword_2A17D0EC0;
    v597 = *algn_2A17D0EB8;
    v598 = qword_2A17D0EB0;
    v129 = sub_29D9334A8();
    v131 = v130;
    v132 = v624;
    swift_storeEnumTagMultiPayload();
    v600 = MEMORY[0x29ED64C30](v129, v131);
    v614 = v133;
    v599 = sub_29D934808();
    *&v613 = v134;
    v135 = *MEMORY[0x29EDC1750];
    v136 = v60;
    v137 = *(v60 + 104);
    *&v621 = v92;
    v137(v92, v135, v626);
    sub_29D6AA3B4(0, &qword_2A1A21F18);
    v139 = v138;
    v140 = swift_allocObject();
    v601 = xmmword_29D93DDB0;
    *(v140 + 16) = xmmword_29D93DDB0;
    *(v140 + 32) = v129;
    *(v140 + 40) = v131;
    sub_29D934808();
    v142 = v141;
    sub_29D6AA1C8(v132, v625, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
    v143 = sub_29D933108();
    v144 = *(v143 + 48);
    v145 = *(v143 + 52);
    swift_allocObject();
    sub_29D9330F8();
    sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v146 = sub_29D9330E8();
    v615 = v142;
    v616 = v139;
    v622 = v147;
    v595 = v146;

    sub_29D9334A8();
    (*(v136 + 16))(v617, v621, v626);
    v582 = v136;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v148 = qword_2A1A2C038;
    v149 = v604;
    sub_29D934788();
    v150 = sub_29D934798();
    (*(*(v150 - 8) + 56))(v149, 0, 1, v150);
    v151 = sub_29D9336F8();
    (*(*(v151 - 8) + 56))(v602, 1, 1, v151);
    v594 = v140;
    sub_29D935E88();
    v152 = v618;
    sub_29D934978();
    sub_29D936948();
    _s14descr2A243C641C13ActionHandlerCMa(0);
    v154 = v619;
    v153 = v620;
    v155 = v609;
    (*(v620 + 16))(v609, v152, v619);
    (*(v153 + 56))(v155, 0, 1, v154);
    v157 = v607;
    v156 = v608;
    v158 = v606;
    (*(v608 + 104))(v606, *MEMORY[0x29EDC36F0], v607);
    v159 = v595;
    v160 = v622;
    sub_29D6AA230(v595, v622);
    sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa);
    v161 = v623;
    sub_29D934048();
    sub_29D6AA284(v159, v160);
    (*(v156 + 8))(v158, v157);
    v162 = v161;
    sub_29D6AA094(v155, &qword_2A1A24720, MEMORY[0x29EDC1948]);
    v163 = v618;
    sub_29D934998();
    sub_29D934098();
    inited = swift_initStackObject();
    *(inited + 16) = v601;
    v165 = v617;
    sub_29D934958();
    v166 = sub_29D9348A8();
    v168 = v167;
    v169 = *(v582 + 8);
    v170 = v626;
    v169(v165, v626);
    *(inited + 32) = v166;
    *(inited + 40) = v168;
    sub_29D6E35C8(inited);
    swift_setDeallocating();
    sub_29D6AA360(inited + 32);
    sub_29D9340D8();
    v172 = v611;
    v171 = v612;
    v173 = v610;
    (*(v612 + 104))(v610, *MEMORY[0x29EDC1870], v611);
    sub_29D934888();
    (*(v171 + 8))(v173, v172);
    sub_29D9340E8();
    sub_29D934088();
    sub_29D6AA3B4(0, &qword_2A1A21EF0);
    v174 = swift_initStackObject();
    *(v174 + 16) = xmmword_29D940030;
    sub_29D6AA400();
    *(v174 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
    sub_29D6E3724(v174);
    v176 = v175;
    swift_setDeallocating();
    v177 = *(v174 + 16);
    swift_arrayDestroy();
    sub_29D8E8608(v176);

    sub_29D9340B8();

    sub_29D6AA284(v595, v622);
    (*(v620 + 8))(v163, v619);
    sub_29D6AA168(v625, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v169(v621, v170);
    v178 = v624;
  }

  else if (sub_29D6A15E8(*MEMORY[0x29EDBA600], v128))
  {

    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    v597 = qword_2A17D0EC0;
    v598 = *algn_2A17D0EB8;
    v599 = qword_2A17D0EB0;
    v181 = sub_29D9334A8();
    v183 = v182;
    swift_storeEnumTagMultiPayload();
    *&v601 = MEMORY[0x29ED64C30](v181, v183);
    v624 = v184;
    v600 = sub_29D934808();
    *&v621 = v185;
    v186 = *MEMORY[0x29EDC1750];
    v187 = *(v60 + 104);
    *&v625 = v86;
    v187(v86, v186, v626);
    sub_29D6AA3B4(0, &qword_2A1A21F18);
    v189 = v188;
    v190 = swift_allocObject();
    v613 = xmmword_29D93DDB0;
    *(v190 + 16) = xmmword_29D93DDB0;
    *(v190 + 32) = v181;
    *(v190 + 40) = v183;
    v191 = v190;
    sub_29D934808();
    v193 = v192;
    sub_29D6AA1C8(v119, v614, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
    v194 = sub_29D933108();
    v195 = *(v194 + 48);
    v196 = *(v194 + 52);
    swift_allocObject();
    sub_29D9330F8();
    sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v197 = sub_29D9330E8();
    v594 = v193;
    v595 = v191;
    v615 = v189;
    v616 = v119;
    v622 = v220;
    v596 = v197;

    sub_29D9334A8();
    v221 = v617;
    (*(v60 + 16))(v617, v625, v626);
    v582 = v60;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v222 = qword_2A1A2C038;
    v223 = v604;
    sub_29D934788();
    v224 = sub_29D934798();
    (*(*(v224 - 8) + 56))(v223, 0, 1, v224);
    v225 = sub_29D9336F8();
    (*(*(v225 - 8) + 56))(v602, 1, 1, v225);
    sub_29D935E88();
    v226 = v618;
    sub_29D934978();
    v624 = sub_29D936948();
    _s14descr2A243C641C13ActionHandlerCMa(0);
    v228 = v619;
    v227 = v620;
    v229 = v609;
    (*(v620 + 16))(v609, v226, v619);
    (*(v227 + 56))(v229, 0, 1, v228);
    v230 = v608;
    v231 = v606;
    v232 = v221;
    v233 = v607;
    (*(v608 + 104))(v606, *MEMORY[0x29EDC36F0], v607);
    v234 = v596;
    v235 = v622;
    sub_29D6AA230(v596, v622);
    sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa);
    v162 = v623;
    sub_29D934048();
    sub_29D6AA284(v234, v235);
    (*(v230 + 8))(v231, v233);
    sub_29D6AA094(v229, &qword_2A1A24720, MEMORY[0x29EDC1948]);
    v236 = v618;
    sub_29D934998();
    sub_29D934098();
    v237 = swift_initStackObject();
    *(v237 + 16) = v613;
    sub_29D934958();
    v238 = sub_29D9348A8();
    v240 = v239;
    v241 = *(v582 + 8);
    v242 = v626;
    v241(v232, v626);
    v243 = v241;
    *(v237 + 32) = v238;
    *(v237 + 40) = v240;
    sub_29D6E35C8(v237);
    swift_setDeallocating();
    sub_29D6AA360(v237 + 32);
    sub_29D9340D8();
    v245 = v611;
    v244 = v612;
    v246 = v610;
    (*(v612 + 104))(v610, *MEMORY[0x29EDC1870], v611);
    sub_29D934888();
    (*(v244 + 8))(v246, v245);
    sub_29D9340E8();
    sub_29D934088();
    sub_29D6AA3B4(0, &qword_2A1A21EF0);
    v247 = swift_initStackObject();
    *(v247 + 16) = xmmword_29D940030;
    sub_29D6AA400();
    *(v247 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
    sub_29D6E3724(v247);
    v249 = v248;
    swift_setDeallocating();
    v250 = *(v247 + 16);
    swift_arrayDestroy();
    sub_29D8E8608(v249);

    sub_29D9340B8();

    sub_29D6AA284(v596, v622);
    (*(v620 + 8))(v236, v619);
    sub_29D6AA168(v614, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v243(v625, v242);
    v178 = v616;
  }

  else if (sub_29D6A15E8(*MEMORY[0x29EDBA640], v128))
  {
    v198 = v60;

    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    v597 = qword_2A17D0EC0;
    v598 = *algn_2A17D0EB8;
    v599 = qword_2A17D0EB0;
    v199 = sub_29D9334A8();
    v201 = v200;
    swift_storeEnumTagMultiPayload();
    v614 = MEMORY[0x29ED64C30](v199, v201);
    *&v625 = v202;
    v600 = sub_29D934808();
    v624 = v203;
    v204 = *MEMORY[0x29EDC1750];
    v582 = v198;
    (*(v198 + 104))(v613, v204, v626);
    sub_29D6AA3B4(0, &qword_2A1A21F18);
    v206 = v205;
    v207 = swift_allocObject();
    v621 = xmmword_29D93DDB0;
    *(v207 + 16) = xmmword_29D93DDB0;
    *(v207 + 32) = v199;
    *(v207 + 40) = v201;
    sub_29D934808();
    v209 = v208;
    sub_29D6AA1C8(v115, v601, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
    v210 = sub_29D933108();
    v211 = *(v210 + 48);
    v212 = *(v210 + 52);
    swift_allocObject();
    sub_29D9330F8();
    sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v213 = sub_29D9330E8();
    v594 = v209;
    v615 = v206;
    v616 = v115;
    v622 = v267;
    v596 = v213;

    sub_29D9334A8();
    (*(v582 + 16))();
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v268 = qword_2A1A2C038;
    v269 = v604;
    sub_29D934788();
    v270 = sub_29D934798();
    (*(*(v270 - 8) + 56))(v269, 0, 1, v270);
    v271 = sub_29D9336F8();
    (*(*(v271 - 8) + 56))(v602, 1, 1, v271);
    v595 = v207;
    sub_29D935E88();
    v272 = v618;
    sub_29D934978();
    sub_29D936948();
    _s14descr2A243C641C13ActionHandlerCMa(0);
    v274 = v619;
    v273 = v620;
    v275 = v609;
    (*(v620 + 16))(v609, v272, v619);
    (*(v273 + 56))(v275, 0, 1, v274);
    v277 = v607;
    v276 = v608;
    v278 = v606;
    (*(v608 + 104))(v606, *MEMORY[0x29EDC36F0], v607);
    v279 = v596;
    v280 = v622;
    sub_29D6AA230(v596, v622);
    sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa);
    v281 = v623;
    sub_29D934048();
    sub_29D6AA284(v279, v280);
    (*(v276 + 8))(v278, v277);
    sub_29D6AA094(v275, &qword_2A1A24720, MEMORY[0x29EDC1948]);
    v282 = v618;
    sub_29D934998();
    sub_29D934098();
    v283 = swift_initStackObject();
    *(v283 + 16) = v621;
    v284 = v617;
    sub_29D934958();
    v285 = sub_29D9348A8();
    v287 = v286;
    v288 = *(v582 + 8);
    v289 = v284;
    v290 = v626;
    v288(v289, v626);
    *(v283 + 32) = v285;
    *(v283 + 40) = v287;
    sub_29D6E35C8(v283);
    swift_setDeallocating();
    sub_29D6AA360(v283 + 32);
    sub_29D9340D8();
    v292 = v611;
    v291 = v612;
    v293 = v610;
    (*(v612 + 104))(v610, *MEMORY[0x29EDC1870], v611);
    sub_29D934888();
    (*(v291 + 8))(v293, v292);
    sub_29D9340E8();
    sub_29D934088();
    sub_29D6AA3B4(0, &qword_2A1A21EF0);
    v294 = swift_initStackObject();
    *(v294 + 16) = xmmword_29D940030;
    sub_29D6AA400();
    *(v294 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
    sub_29D6E3724(v294);
    v296 = v295;
    swift_setDeallocating();
    v297 = *(v294 + 16);
    swift_arrayDestroy();
    sub_29D8E8608(v296);

    sub_29D9340B8();

    sub_29D6AA284(v596, v622);
    (*(v620 + 8))(v282, v619);
    sub_29D6AA168(v601, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v288(v613, v290);
    v178 = v616;
    v162 = v281;
  }

  else if (sub_29D6A15E8(*MEMORY[0x29EDBA5C0], v128))
  {

    v214 = v60;
    if (sub_29D9347F8())
    {
      v216 = v599;
      v215 = v600;
      if (qword_2A17B0D48 != -1)
      {
        swift_once();
      }

      v218 = qword_2A17D0EB0;
      v217 = *algn_2A17D0EB8;
      v219 = qword_2A17D0EC0;
    }

    else
    {
      v216 = v599;
      v215 = v600;
      if (qword_2A17B0D48 != -1)
      {
        swift_once();
      }

      v218 = qword_2A17D0EB0;
      v217 = *algn_2A17D0EB8;
      v219 = qword_2A17D0EC0;
    }

    v596 = v219;
    v597 = v217;
    *&v601 = v218;
    v298 = sub_29D9334A8();
    v300 = v299;
    swift_storeEnumTagMultiPayload();
    v614 = MEMORY[0x29ED64C30](v298, v300);
    *&v625 = v301;
    *&v613 = sub_29D934808();
    v624 = v302;
    v303 = v215;
    v304 = v216;
    (*(v214 + 104))(v303, *MEMORY[0x29EDC1750], v626);
    sub_29D6AA3B4(0, &qword_2A1A21F18);
    v306 = v305;
    v307 = swift_allocObject();
    v621 = xmmword_29D93DDB0;
    *(v307 + 16) = xmmword_29D93DDB0;
    *(v307 + 32) = v298;
    *(v307 + 40) = v300;
    v308 = sub_29D934808();
    v310 = v309;
    sub_29D6AA1C8(v304, v598, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
    v311 = sub_29D933108();
    v312 = *(v311 + 48);
    v313 = *(v311 + 52);
    swift_allocObject();
    sub_29D9330F8();
    sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v314 = sub_29D9330E8();
    v594 = v308;
    v595 = v314;
    v615 = v310;
    v616 = v306;
    v622 = v332;

    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    v582 = v214;
    (*(v214 + 16))(v617, v600, v626);
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v333 = qword_2A1A2C038;
    v334 = v604;
    sub_29D934788();
    v335 = sub_29D934798();
    (*(*(v335 - 8) + 56))(v334, 0, 1, v335);
    v336 = sub_29D9336F8();
    (*(*(v336 - 8) + 56))(v602, 1, 1, v336);
    sub_29D935E88();
    v337 = v618;
    sub_29D934978();
    sub_29D936948();
    _s14descr2A243C641C13ActionHandlerCMa(0);
    v339 = v619;
    v338 = v620;
    v340 = v609;
    (*(v620 + 16))(v609, v337, v619);
    (*(v338 + 56))(v340, 0, 1, v339);
    v341 = *MEMORY[0x29EDC36F0];
    v343 = v607;
    v342 = v608;
    v344 = *(v608 + 104);
    *&v625 = v307;
    v345 = v606;
    v344(v606, v341, v607);
    v346 = v595;
    v347 = v622;
    sub_29D6AA230(v595, v622);
    sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa);
    v348 = v623;
    sub_29D934048();
    sub_29D6AA284(v346, v347);
    (*(v342 + 8))(v345, v343);
    v162 = v348;
    sub_29D6AA094(v340, &qword_2A1A24720, MEMORY[0x29EDC1948]);
    v349 = v618;
    sub_29D934998();
    sub_29D934098();
    v350 = swift_initStackObject();
    *(v350 + 16) = v621;
    v351 = v617;
    sub_29D934958();
    v352 = sub_29D9348A8();
    v354 = v353;
    v355 = *(v582 + 8);
    v356 = v351;
    v357 = v626;
    v355(v356, v626);
    *(v350 + 32) = v352;
    *(v350 + 40) = v354;
    sub_29D6E35C8(v350);
    swift_setDeallocating();
    sub_29D6AA360(v350 + 32);
    sub_29D9340D8();
    v359 = v611;
    v358 = v612;
    v360 = v610;
    (*(v612 + 104))(v610, *MEMORY[0x29EDC1870], v611);
    sub_29D934888();
    (*(v358 + 8))(v360, v359);
    sub_29D9340E8();
    sub_29D934088();
    sub_29D6AA3B4(0, &qword_2A1A21EF0);
    v361 = swift_initStackObject();
    *(v361 + 16) = xmmword_29D940030;
    sub_29D6AA400();
    *(v361 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
    sub_29D6E3724(v361);
    v363 = v362;
    swift_setDeallocating();
    v364 = *(v361 + 16);
    swift_arrayDestroy();
    sub_29D8E8608(v363);

    sub_29D9340B8();

    sub_29D6AA284(v595, v622);
    (*(v620 + 8))(v349, v619);
    sub_29D6AA168(v598, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v355(v600, v357);
    v178 = v599;
  }

  else if (sub_29D6A15E8(*MEMORY[0x29EDBA688], v128))
  {

    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    v599 = qword_2A17D0EC0;
    v600 = *algn_2A17D0EB8;
    *&v601 = qword_2A17D0EB0;
    v251 = sub_29D9334A8();
    v253 = v252;
    v254 = v595;
    swift_storeEnumTagMultiPayload();
    v614 = MEMORY[0x29ED64C30](v251, v253);
    *&v625 = v255;
    *&v613 = sub_29D934808();
    v624 = v256;
    v257 = v60;
    (*(v60 + 104))(v597, *MEMORY[0x29EDC1750], v626);
    sub_29D6AA3B4(0, &qword_2A1A21F18);
    v259 = v258;
    v260 = swift_allocObject();
    v621 = xmmword_29D93DDB0;
    *(v260 + 16) = xmmword_29D93DDB0;
    *(v260 + 32) = v251;
    *(v260 + 40) = v253;
    sub_29D934808();
    v262 = v261;
    sub_29D6AA1C8(v254, v596, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
    v263 = sub_29D933108();
    v264 = *(v263 + 48);
    v265 = *(v263 + 52);
    swift_allocObject();
    sub_29D9330F8();
    sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v266 = sub_29D9330E8();
    v615 = v262;
    v616 = v259;
    v622 = v382;
    v598 = v266;

    sub_29D9334A8();
    (*(v257 + 16))(v617, v597, v626);
    v582 = v257;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v383 = qword_2A1A2C038;
    v384 = v604;
    sub_29D934788();
    v385 = sub_29D934798();
    (*(*(v385 - 8) + 56))(v384, 0, 1, v385);
    v386 = sub_29D9336F8();
    (*(*(v386 - 8) + 56))(v602, 1, 1, v386);
    v594 = v260;
    sub_29D935E88();
    v387 = v618;
    sub_29D934978();
    sub_29D936948();
    _s14descr2A243C641C13ActionHandlerCMa(0);
    v389 = v619;
    v388 = v620;
    v390 = v609;
    (*(v620 + 16))(v609, v387, v619);
    (*(v388 + 56))(v390, 0, 1, v389);
    v392 = v607;
    v391 = v608;
    v393 = v606;
    (*(v608 + 104))(v606, *MEMORY[0x29EDC36F0], v607);
    v394 = v598;
    v395 = v622;
    sub_29D6AA230(v598, v622);
    sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa);
    v396 = v623;
    sub_29D934048();
    sub_29D6AA284(v394, v395);
    (*(v391 + 8))(v393, v392);
    v162 = v396;
    sub_29D6AA094(v390, &qword_2A1A24720, MEMORY[0x29EDC1948]);
    v397 = v618;
    sub_29D934998();
    sub_29D934098();
    v398 = swift_initStackObject();
    *(v398 + 16) = v621;
    v399 = v617;
    sub_29D934958();
    v400 = sub_29D9348A8();
    v402 = v401;
    v403 = *(v582 + 8);
    v404 = v399;
    v405 = v626;
    v403(v404, v626);
    *(v398 + 32) = v400;
    *(v398 + 40) = v402;
    sub_29D6E35C8(v398);
    swift_setDeallocating();
    sub_29D6AA360(v398 + 32);
    sub_29D9340D8();
    v407 = v611;
    v406 = v612;
    v408 = v610;
    (*(v612 + 104))(v610, *MEMORY[0x29EDC1870], v611);
    sub_29D934888();
    (*(v406 + 8))(v408, v407);
    sub_29D9340E8();
    sub_29D934088();
    sub_29D6AA3B4(0, &qword_2A1A21EF0);
    v409 = swift_initStackObject();
    *(v409 + 16) = xmmword_29D940030;
    sub_29D6AA400();
    *(v409 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
    sub_29D6E3724(v409);
    v411 = v410;
    swift_setDeallocating();
    v412 = *(v409 + 16);
    swift_arrayDestroy();
    sub_29D8E8608(v411);

    sub_29D9340B8();

    sub_29D6AA284(v598, v622);
    (*(v620 + 8))(v397, v619);
    sub_29D6AA168(v596, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v403(v597, v405);
    v178 = v595;
  }

  else if (sub_29D6A15E8(*MEMORY[0x29EDBA620], v128))
  {
    v315 = v60;

    v316 = sub_29D934848();
    v318 = v317;
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    *&v613 = *algn_2A17D0EB8;
    *&v601 = qword_2A17D0EC0;
    v614 = qword_2A17D0EB0;
    sub_29D9334A8();
    sub_29D6AA454(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
    v319 = swift_allocObject();
    v625 = xmmword_29D93DDB0;
    *(v319 + 16) = xmmword_29D93DDB0;
    *(v319 + 56) = MEMORY[0x29EDC99B0];
    *(v319 + 64) = sub_29D69AD24();
    *(v319 + 32) = v316;
    *(v319 + 40) = v318;
    sub_29D935E88();
    v320 = sub_29D939D38();
    v322 = v321;

    v323 = v593;
    swift_storeEnumTagMultiPayload();
    (*(v315 + 104))(v594, *MEMORY[0x29EDC1758], v626);
    sub_29D6AA3B4(0, &qword_2A1A21F18);
    v325 = v324;
    v326 = swift_allocObject();
    *(v326 + 16) = v625;
    *&v621 = v320;
    *(v326 + 32) = v320;
    *(v326 + 40) = v322;
    sub_29D935E88();
    v600 = sub_29D934828();
    v624 = v327;
    sub_29D6AA1C8(v323, v592, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
    v328 = sub_29D933108();
    v329 = *(v328 + 48);
    v330 = *(v328 + 52);
    swift_allocObject();
    sub_29D9330F8();
    sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v331 = sub_29D9330E8();
    v597 = v322;
    v598 = v326;
    v615 = v316;
    v616 = v325;
    v622 = v430;
    v599 = v331;

    sub_29D9334A8();
    (*(v315 + 16))(v617, v594, v626);
    v582 = v315;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v431 = qword_2A1A2C038;
    v432 = v604;
    sub_29D934788();
    v433 = sub_29D934798();
    (*(*(v433 - 8) + 56))(v432, 0, 1, v433);
    v434 = sub_29D9336F8();
    (*(*(v434 - 8) + 56))(v602, 1, 1, v434);
    sub_29D935E88();
    v435 = v618;
    sub_29D934978();
    sub_29D936948();
    _s14descr2A243C641C13ActionHandlerCMa(0);
    v436 = v620;
    v437 = v609;
    v438 = v619;
    (*(v620 + 16))(v609, v435);
    (*(v436 + 56))(v437, 0, 1, v438);
    v440 = v607;
    v439 = v608;
    v441 = v606;
    (*(v608 + 104))(v606, *MEMORY[0x29EDC36F0], v607);
    v442 = v599;
    v443 = v622;
    sub_29D6AA230(v599, v622);
    sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa);
    v444 = v623;
    sub_29D934048();
    sub_29D6AA284(v442, v443);
    v445 = v441;
    v162 = v444;
    (*(v439 + 8))(v445, v440);
    sub_29D6AA094(v437, &qword_2A1A24720, MEMORY[0x29EDC1948]);
    v446 = v618;
    sub_29D934998();
    sub_29D934098();
    v447 = swift_initStackObject();
    *(v447 + 16) = v625;
    v448 = v617;
    sub_29D934958();
    v449 = sub_29D9348A8();
    v451 = v450;
    v452 = *(v582 + 8);
    v453 = v448;
    v454 = v626;
    v452(v453, v626);
    *(v447 + 32) = v449;
    *(v447 + 40) = v451;
    sub_29D6E35C8(v447);
    swift_setDeallocating();
    sub_29D6AA360(v447 + 32);
    sub_29D9340D8();
    v456 = v611;
    v455 = v612;
    v457 = v610;
    (*(v612 + 104))(v610, *MEMORY[0x29EDC1870], v611);
    sub_29D934888();
    (*(v455 + 8))(v457, v456);
    sub_29D9340E8();
    sub_29D934088();
    sub_29D6AA3B4(0, &qword_2A1A21EF0);
    v458 = swift_initStackObject();
    *(v458 + 16) = xmmword_29D940030;
    sub_29D6AA400();
    *(v458 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
    sub_29D6E3724(v458);
    v460 = v459;
    swift_setDeallocating();
    v461 = *(v458 + 16);
    swift_arrayDestroy();
    sub_29D8E8608(v460);

    sub_29D9340B8();

    sub_29D6AA284(v599, v622);
    (*(v620 + 8))(v446, v619);
    sub_29D6AA168(v592, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v452(v594, v454);
    v178 = v593;
  }

  else if (sub_29D6A15E8(*MEMORY[0x29EDBA6A8], v128))
  {
    v365 = v60;

    v366 = sub_29D934858();
    v368 = v367;
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    *&v613 = *algn_2A17D0EB8;
    *&v601 = qword_2A17D0EC0;
    v614 = qword_2A17D0EB0;
    sub_29D9334A8();
    sub_29D6AA454(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
    v369 = swift_allocObject();
    v625 = xmmword_29D93DDB0;
    *(v369 + 16) = xmmword_29D93DDB0;
    *(v369 + 56) = MEMORY[0x29EDC99B0];
    *(v369 + 64) = sub_29D69AD24();
    *(v369 + 32) = v366;
    *(v369 + 40) = v368;
    sub_29D935E88();
    v370 = sub_29D939D38();
    v372 = v371;

    v373 = v590;
    swift_storeEnumTagMultiPayload();
    (*(v365 + 104))(v591, *MEMORY[0x29EDC1758], v626);
    sub_29D6AA3B4(0, &qword_2A1A21F18);
    v375 = v374;
    v376 = swift_allocObject();
    *(v376 + 16) = v625;
    *&v621 = v370;
    *(v376 + 32) = v370;
    *(v376 + 40) = v372;
    sub_29D935E88();
    v600 = sub_29D934828();
    v624 = v377;
    sub_29D6AA1C8(v373, v589, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
    v378 = sub_29D933108();
    v379 = *(v378 + 48);
    v380 = *(v378 + 52);
    swift_allocObject();
    sub_29D9330F8();
    sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v381 = sub_29D9330E8();
    v597 = v372;
    v598 = v376;
    v615 = v366;
    v616 = v375;
    v622 = v468;
    v599 = v381;

    sub_29D9334A8();
    (*(v365 + 16))(v617, v591, v626);
    v582 = v365;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v469 = qword_2A1A2C038;
    v470 = v604;
    sub_29D934788();
    v471 = sub_29D934798();
    (*(*(v471 - 8) + 56))(v470, 0, 1, v471);
    v472 = sub_29D9336F8();
    (*(*(v472 - 8) + 56))(v602, 1, 1, v472);
    sub_29D935E88();
    v473 = v618;
    sub_29D934978();
    sub_29D936948();
    _s14descr2A243C641C13ActionHandlerCMa(0);
    v474 = v620;
    v475 = v609;
    v476 = v619;
    (*(v620 + 16))(v609, v473);
    (*(v474 + 56))(v475, 0, 1, v476);
    v478 = v607;
    v477 = v608;
    v479 = v606;
    (*(v608 + 104))(v606, *MEMORY[0x29EDC36F0], v607);
    v480 = v599;
    v481 = v622;
    sub_29D6AA230(v599, v622);
    sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa);
    v482 = v623;
    sub_29D934048();
    sub_29D6AA284(v480, v481);
    v483 = v479;
    v162 = v482;
    (*(v477 + 8))(v483, v478);
    sub_29D6AA094(v475, &qword_2A1A24720, MEMORY[0x29EDC1948]);
    v484 = v618;
    sub_29D934998();
    sub_29D934098();
    v485 = swift_initStackObject();
    *(v485 + 16) = v625;
    v486 = v617;
    sub_29D934958();
    v487 = sub_29D9348A8();
    v489 = v488;
    v490 = *(v582 + 8);
    v491 = v486;
    v492 = v626;
    v490(v491, v626);
    *(v485 + 32) = v487;
    *(v485 + 40) = v489;
    sub_29D6E35C8(v485);
    swift_setDeallocating();
    sub_29D6AA360(v485 + 32);
    sub_29D9340D8();
    v494 = v611;
    v493 = v612;
    v495 = v610;
    (*(v612 + 104))(v610, *MEMORY[0x29EDC1870], v611);
    sub_29D934888();
    (*(v493 + 8))(v495, v494);
    sub_29D9340E8();
    sub_29D934088();
    sub_29D6AA3B4(0, &qword_2A1A21EF0);
    v496 = swift_initStackObject();
    *(v496 + 16) = xmmword_29D940030;
    sub_29D6AA400();
    *(v496 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
    sub_29D6E3724(v496);
    v498 = v497;
    swift_setDeallocating();
    v499 = *(v496 + 16);
    swift_arrayDestroy();
    sub_29D8E8608(v498);

    sub_29D9340B8();

    sub_29D6AA284(v599, v622);
    (*(v620 + 8))(v484, v619);
    sub_29D6AA168(v589, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v490(v591, v492);
    v178 = v590;
  }

  else
  {
    v413 = sub_29D6A15E8(*MEMORY[0x29EDBA630], v128);

    if (v413)
    {
      if (qword_2A17B0D48 != -1)
      {
        swift_once();
      }

      v599 = qword_2A17D0EC0;
      v600 = *algn_2A17D0EB8;
      *&v601 = qword_2A17D0EB0;
      v414 = sub_29D9334A8();
      v416 = v415;
      v417 = v583;
      swift_storeEnumTagMultiPayload();
      v614 = MEMORY[0x29ED64C30](v414, v416);
      *&v625 = v418;
      *&v613 = sub_29D934808();
      v624 = v419;
      v420 = v60;
      (*(v60 + 104))(v587, *MEMORY[0x29EDC1750], v626);
      sub_29D6AA3B4(0, &qword_2A1A21F18);
      v422 = v421;
      v423 = swift_allocObject();
      v621 = xmmword_29D93DDB0;
      *(v423 + 16) = xmmword_29D93DDB0;
      *(v423 + 32) = v414;
      *(v423 + 40) = v416;
      sub_29D934808();
      v425 = v424;
      sub_29D6AA1C8(v417, v584, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
      v426 = sub_29D933108();
      v427 = *(v426 + 48);
      v428 = *(v426 + 52);
      swift_allocObject();
      sub_29D9330F8();
      sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
      v429 = sub_29D9330E8();
      v615 = v425;
      v616 = v422;
      v622 = v517;
      v598 = v429;

      sub_29D9334A8();
      (*(v420 + 16))(v617, v587, v626);
      v582 = v420;
      if (qword_2A1A257A0 != -1)
      {
        swift_once();
      }

      v518 = qword_2A1A2C038;
      v519 = v604;
      sub_29D934788();
      v520 = sub_29D934798();
      (*(*(v520 - 8) + 56))(v519, 0, 1, v520);
      v521 = sub_29D9336F8();
      (*(*(v521 - 8) + 56))(v602, 1, 1, v521);
      v597 = v423;
      sub_29D935E88();
      v522 = v618;
      sub_29D934978();
      sub_29D936948();
      _s14descr2A243C641C13ActionHandlerCMa(0);
      v524 = v619;
      v523 = v620;
      v525 = v609;
      (*(v620 + 16))(v609, v522, v619);
      (*(v523 + 56))(v525, 0, 1, v524);
      v527 = v607;
      v526 = v608;
      v528 = v606;
      (*(v608 + 104))(v606, *MEMORY[0x29EDC36F0], v607);
      v529 = v598;
      v530 = v622;
      sub_29D6AA230(v598, v622);
      sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa);
      v531 = v623;
      sub_29D934048();
      sub_29D6AA284(v529, v530);
      (*(v526 + 8))(v528, v527);
      v162 = v531;
      sub_29D6AA094(v525, &qword_2A1A24720, MEMORY[0x29EDC1948]);
      v532 = v618;
      sub_29D934998();
      sub_29D934098();
      v533 = swift_initStackObject();
      *(v533 + 16) = v621;
      v534 = v617;
      sub_29D934958();
      v535 = sub_29D9348A8();
      v537 = v536;
      v538 = *(v582 + 8);
      v539 = v534;
      v540 = v626;
      v538(v539, v626);
      *(v533 + 32) = v535;
      *(v533 + 40) = v537;
      sub_29D6E35C8(v533);
      swift_setDeallocating();
      sub_29D6AA360(v533 + 32);
      sub_29D9340D8();
      v542 = v611;
      v541 = v612;
      v543 = v610;
      (*(v612 + 104))(v610, *MEMORY[0x29EDC1870], v611);
      sub_29D934888();
      (*(v541 + 8))(v543, v542);
      sub_29D9340E8();
      sub_29D934088();
      sub_29D6AA3B4(0, &qword_2A1A21EF0);
      v544 = swift_initStackObject();
      *(v544 + 16) = xmmword_29D940030;
      sub_29D6AA400();
      *(v544 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
      sub_29D6E3724(v544);
      v546 = v545;
      swift_setDeallocating();
      v547 = *(v544 + 16);
      swift_arrayDestroy();
      sub_29D8E8608(v546);

      sub_29D9340B8();

      sub_29D6AA284(v598, v622);
      (*(v620 + 8))(v532, v619);
      sub_29D6AA168(v584, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
      v538(v587, v540);
      v178 = v583;
    }

    else
    {
      v462 = v60;
      if (sub_29D9347F8())
      {
        v463 = v588;
        v464 = v586;
        if (qword_2A17B0D48 != -1)
        {
          swift_once();
        }

        v466 = qword_2A17D0EB0;
        v465 = *algn_2A17D0EB8;
        v467 = qword_2A17D0EC0;
      }

      else
      {
        v463 = v588;
        v464 = v586;
        if (qword_2A17B0D48 != -1)
        {
          swift_once();
        }

        v466 = qword_2A17D0EB0;
        v465 = *algn_2A17D0EB8;
        v467 = qword_2A17D0EC0;
      }

      v599 = v467;
      v600 = v465;
      *&v601 = v466;
      v500 = sub_29D9334A8();
      v502 = v501;
      swift_storeEnumTagMultiPayload();
      v614 = MEMORY[0x29ED64C30](v500, v502);
      *&v625 = v503;
      *&v613 = sub_29D934808();
      v624 = v504;
      v505 = v463;
      v506 = v464;
      (*(v462 + 104))(v505, *MEMORY[0x29EDC1750], v626);
      sub_29D6AA3B4(0, &qword_2A1A21F18);
      v508 = v507;
      v509 = swift_allocObject();
      v621 = xmmword_29D93DDB0;
      *(v509 + 16) = xmmword_29D93DDB0;
      *(v509 + 32) = v500;
      *(v509 + 40) = v502;
      v510 = sub_29D934808();
      v512 = v511;
      sub_29D6AA1C8(v506, v585, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
      v513 = sub_29D933108();
      v514 = *(v513 + 48);
      v515 = *(v513 + 52);
      swift_allocObject();
      sub_29D9330F8();
      sub_29D6AA4B8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
      v516 = sub_29D9330E8();
      v597 = v510;
      v598 = v516;
      v615 = v512;
      v616 = v508;
      v622 = v548;

      if (qword_2A17B0D48 != -1)
      {
        swift_once();
      }

      sub_29D9334A8();
      v582 = v462;
      (*(v462 + 16))(v617, v588, v626);
      if (qword_2A1A257A0 != -1)
      {
        swift_once();
      }

      v549 = qword_2A1A2C038;
      v550 = v604;
      sub_29D934788();
      v551 = sub_29D934798();
      (*(*(v551 - 8) + 56))(v550, 0, 1, v551);
      v552 = sub_29D9336F8();
      (*(*(v552 - 8) + 56))(v602, 1, 1, v552);
      sub_29D935E88();
      v553 = v618;
      sub_29D934978();
      sub_29D936948();
      _s14descr2A243C641C13ActionHandlerCMa(0);
      v555 = v619;
      v554 = v620;
      v556 = v609;
      (*(v620 + 16))(v609, v553, v619);
      (*(v554 + 56))(v556, 0, 1, v555);
      v557 = *MEMORY[0x29EDC36F0];
      v559 = v607;
      v558 = v608;
      v560 = *(v608 + 104);
      *&v625 = v509;
      v561 = v606;
      v560(v606, v557, v607);
      v562 = v598;
      v563 = v622;
      sub_29D6AA230(v598, v622);
      sub_29D6AA4B8(&unk_2A17B1900, _s14descr2A243C641C13ActionHandlerCMa);
      v564 = v623;
      sub_29D934048();
      sub_29D6AA284(v562, v563);
      (*(v558 + 8))(v561, v559);
      v162 = v564;
      sub_29D6AA094(v556, &qword_2A1A24720, MEMORY[0x29EDC1948]);
      v565 = v618;
      sub_29D934998();
      sub_29D934098();
      v566 = swift_initStackObject();
      *(v566 + 16) = v621;
      v567 = v617;
      sub_29D934958();
      v568 = sub_29D9348A8();
      v570 = v569;
      v571 = *(v582 + 8);
      v572 = v567;
      v573 = v626;
      v571(v572, v626);
      *(v566 + 32) = v568;
      *(v566 + 40) = v570;
      sub_29D6E35C8(v566);
      swift_setDeallocating();
      sub_29D6AA360(v566 + 32);
      sub_29D9340D8();
      v575 = v611;
      v574 = v612;
      v576 = v610;
      (*(v612 + 104))(v610, *MEMORY[0x29EDC1870], v611);
      sub_29D934888();
      (*(v574 + 8))(v576, v575);
      sub_29D9340E8();
      sub_29D934088();
      sub_29D6AA3B4(0, &qword_2A1A21EF0);
      v577 = swift_initStackObject();
      *(v577 + 16) = xmmword_29D940030;
      sub_29D6AA400();
      *(v577 + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
      sub_29D6E3724(v577);
      v579 = v578;
      swift_setDeallocating();
      v580 = *(v577 + 16);
      swift_arrayDestroy();
      sub_29D8E8608(v579);

      sub_29D9340B8();

      sub_29D6AA284(v598, v622);
      (*(v620 + 8))(v565, v619);
      sub_29D6AA168(v585, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
      v571(v588, v573);
      v178 = v586;
    }
  }

  sub_29D6AA168(v178, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
  v179 = sub_29D9340F8();
  return (*(*(v179 - 8) + 56))(v162, 0, 1, v179);
}

uint64_t sub_29D6A9D90(void *a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x6D65744964656546, 0xEF79726F74636146);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000006BLL, 0x800000029D9588C0);
  MEMORY[0x29ED6A240](0xD00000000000003DLL, 0x800000029D958930);
  v2 = a1;
  v3 = [v2 description];
  v4 = sub_29D939D68();
  v6 = v5;

  MEMORY[0x29ED6A240](v4, v6);

  return 0;
}

void sub_29D6A9ED4()
{
  if (!qword_2A1A246E8)
  {
    type metadata accessor for HKHRAFibBurdenLoggingCategory(255);
    sub_29D6AA4B8(&qword_2A1A22190, type metadata accessor for HKHRAFibBurdenLoggingCategory);
    sub_29D6AA4B8(&qword_2A1A22188, type metadata accessor for HKHRAFibBurdenLoggingCategory);
    sub_29D6AA4B8(&unk_2A1A22160, type metadata accessor for HKHRAFibBurdenLoggingCategory);
    sub_29D6AA4B8(&qword_2A1A22180, type metadata accessor for HKHRAFibBurdenLoggingCategory);
    sub_29D6AA4B8(&qword_2A1A22170, type metadata accessor for HKHRAFibBurdenLoggingCategory);
    v0 = sub_29D937218();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A246E8);
    }
  }
}

uint64_t sub_29D6AA034()
{
  v1 = *(sub_29D9371A8() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_29D6A2B68(v2);
}

uint64_t sub_29D6AA094(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D6AA454(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D6AA104(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr2A243C641C15SettingsContentVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6AA168(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D6AA1C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D6AA230(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_29D6AA284(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_29D6AA2D8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = *(a1 + 40);
  sub_29D93AE58();
  MEMORY[0x29ED6B260](0);
  v3 = sub_29D93AE98() & ~(-1 << *(a1 + 32));
  return (*(a1 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v3) & 1;
}

void sub_29D6AA3B4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29D93AD48();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_29D6AA400()
{
  result = qword_2A1A24910;
  if (!qword_2A1A24910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A24910);
  }

  return result;
}

void sub_29D6AA454(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D6AA4B8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_29D6AA504()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = HKLogHeartRateCategory();
    v4 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v3 healthDataSource:*(v0 + 16)];

    v5 = *(v0 + 40);
    *(v0 + 40) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_29D6AA594(char a1, char a2)
{
  v5 = *v2;
  sub_29D6AC818(0, &unk_2A17B37B0, MEMORY[0x29EDCA398]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = &v14 - v9;
  v11 = sub_29D93A028();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v2;
  *(v12 + 40) = a1;
  *(v12 + 41) = a2;
  *(v12 + 48) = v5;

  sub_29D6BEBA4(0, 0, v10, &unk_29D9402C0, v12);
}

uint64_t sub_29D6AA6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 298) = a6;
  *(v7 + 297) = a5;
  *(v7 + 144) = a4;
  *(v7 + 152) = a7;
  v8 = sub_29D9339F8();
  *(v7 + 160) = v8;
  v9 = *(v8 - 8);
  *(v7 + 168) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  v11 = swift_task_alloc();
  *(v7 + 192) = v11;
  *v11 = v7;
  v11[1] = sub_29D6AA7F4;

  return sub_29D6AC2C8();
}

uint64_t sub_29D6AA7F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_29D6AB3F8;
  }

  else
  {
    *(v4 + 200) = a1;
    v7 = sub_29D6AA920;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29D6AA920()
{
  v1 = v0[18];
  v2 = *(v1 + 32);
  *(v1 + 32) = v0[25];
  sub_29D936978();
  v0[26] = *(v1 + 24);
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_29D6AA9C8;

  return sub_29D6B41B0();
}

uint64_t sub_29D6AA9C8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 216);
  v8 = *v3;
  v4[28] = a1;
  v4[29] = a2;
  v4[30] = v2;

  if (v2)
  {
    v6 = sub_29D6AB49C;
  }

  else
  {
    v6 = sub_29D6AAAE0;
  }

  return MEMORY[0x2A1C73D48](v6, 0, 0);
}

uint64_t sub_29D6AAAE0()
{
  v1 = v0[23];
  sub_29D9339E8();
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_29D6AAB78;
  v3 = v0[26];

  return sub_29D6B4650();
}

uint64_t sub_29D6AAB78(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v8 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  if (v1)
  {
    v5 = v3[29];
    (*(v3[21] + 8))(v3[23], v3[20]);

    v6 = sub_29D6AB060;
  }

  else
  {
    v6 = sub_29D6AACB0;
  }

  return MEMORY[0x2A1C73D48](v6, 0, 0);
}

uint64_t sub_29D6AACB0()
{
  v1 = *(v0 + 256);
  if (v1)
  {
    v2 = *(v0 + 208);
    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v5 = *(v0 + 160);
    v6 = *(v0 + 168);
    v7 = [*(v0 + 256) startDate];
    sub_29D933998();

    v36 = sub_29D6B4DEC(v3, v4);
    v8 = *(v6 + 8);
    v8(v4, v5);
  }

  else
  {
    v9 = *(v0 + 168);
    v36 = [*MEMORY[0x29EDBA360] integerValue];
    v8 = *(v9 + 8);
  }

  v10 = *(v0 + 144);
  v8(*(v0 + 184), *(v0 + 160));
  v35 = sub_29D6AB8D4();
  if (*(v10 + 32))
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    v12 = v11 == 0;
    if (v11)
    {
      v11 = [v11 bedTimeCount];
    }

    v13 = v11;
    if (*(*(v0 + 144) + 32))
    {
      v14 = v12;
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      v16 = v15 == 0;
      if (v15)
      {
        v17 = *(v0 + 160);
        swift_unknownObjectRetain();
        v18 = [v15 datesWithSamples];
        sub_29D6ACB80();
        v19 = sub_29D93A0D8();
        sub_29D936978();

        v15 = *(v19 + 16);
      }

      v32 = v15;
      v31 = v16;
      if (*(*(v0 + 144) + 32) && (objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) != 0))
      {
        v34 = [v20 wakeUpCount];
        v33 = 0;
      }

      else
      {
        v34 = 0;
        v33 = 1;
      }
    }

    else
    {
      v32 = 0;
      v34 = 0;
      v31 = 1;
      v33 = 1;
      v14 = v12;
    }

    v21 = v13;
  }

  else
  {
    v32 = 0;
    v21 = 0;
    v34 = 0;
    v31 = 1;
    v14 = 1;
    v33 = 1;
  }

  v23 = *(v0 + 224);
  v22 = *(v0 + 232);
  v24 = *(v0 + 297);
  v25 = *(v0 + 144);
  type metadata accessor for BloodPressureJournalInteractionAnalyticsEvent();
  v26 = swift_allocObject();
  *(v0 + 272) = v26;
  *(v26 + 16) = v35 & 1;
  *(v26 + 24) = v23;
  *(v26 + 32) = v22;
  *(v26 + 40) = v21;
  *(v26 + 48) = v14;
  *(v26 + 56) = v32;
  *(v26 + 64) = v31;
  *(v26 + 72) = v36;
  *(v26 + 80) = v34;
  *(v26 + 88) = v33;
  *(v26 + 89) = v24;
  v27 = sub_29D6AA504();
  *(v0 + 280) = v27;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 296;
  *(v0 + 24) = sub_29D6AB270;
  v28 = swift_continuation_init();
  sub_29D6ACB00();
  *(v0 + 136) = v29;
  *(v0 + 80) = MEMORY[0x29EDCA5F8];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_29D8D0FE0;
  *(v0 + 104) = &unk_2A24406B0;
  *(v0 + 112) = v28;
  [v27 submitEvent:v26 completion:?];

  return MEMORY[0x2A1C73CC0](v0 + 16);
}

uint64_t sub_29D6AB060()
{
  v20 = v0;
  v1 = v0[33];
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2C008);
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136446466;
    v10 = sub_29D93AF08();
    v12 = sub_29D6C2364(v10, v11, &v19);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] [Logging Analytics] Failed to submit analytics with error: %@", v7, 0x16u);
    sub_29D6ACA3C(v8);
    MEMORY[0x29ED6BE30](v8, -1, -1);
    sub_29D69417C(v9);
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  else
  {
  }

  v16 = v0[22];
  v15 = v0[23];

  v17 = v0[1];

  return v17();
}

uint64_t sub_29D6AB270()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_29D6AB6AC;
  }

  else
  {
    v3 = sub_29D6AB380;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D6AB380()
{
  v1 = *(v0 + 272);

  v3 = *(v0 + 176);
  v2 = *(v0 + 184);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29D6AB3F8()
{
  v1 = v0[18];
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_29D936978();
  v0[26] = *(v1 + 24);
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_29D6AA9C8;

  return sub_29D6B41B0();
}

uint64_t sub_29D6AB49C()
{
  v20 = v0;
  v1 = v0[30];
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2C008);
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136446466;
    v10 = sub_29D93AF08();
    v12 = sub_29D6C2364(v10, v11, &v19);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] [Logging Analytics] Failed to submit analytics with error: %@", v7, 0x16u);
    sub_29D6ACA3C(v8);
    MEMORY[0x29ED6BE30](v8, -1, -1);
    sub_29D69417C(v9);
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  else
  {
  }

  v16 = v0[22];
  v15 = v0[23];

  v17 = v0[1];

  return v17();
}

uint64_t sub_29D6AB6AC()
{
  v23 = v0;
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  swift_willThrow();

  v4 = v0[36];
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v5 = sub_29D937898();
  sub_29D69C6C0(v5, qword_2A1A2C008);
  v6 = v4;
  v7 = sub_29D937878();
  v8 = sub_29D93A288();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136446466;
    v13 = sub_29D93AF08();
    v15 = sub_29D6C2364(v13, v14, &v22);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v4;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s] [Logging Analytics] Failed to submit analytics with error: %@", v10, 0x16u);
    sub_29D6ACA3C(v11);
    MEMORY[0x29ED6BE30](v11, -1, -1);
    sub_29D69417C(v12);
    MEMORY[0x29ED6BE30](v12, -1, -1);
    MEMORY[0x29ED6BE30](v10, -1, -1);
  }

  else
  {
  }

  v19 = v0[22];
  v18 = v0[23];

  v20 = v0[1];

  return v20();
}

uint64_t sub_29D6AB8D4()
{
  v80[1] = *MEMORY[0x29EDCA608];
  v79 = *v0;
  v1 = sub_29D937178();
  v75 = *(v1 - 8);
  v76 = v1;
  v2 = *(v75 + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D937158();
  v74 = *(v6 - 8);
  v7 = *(v74 + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6AC818(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8, v13);
  v15 = &v73 - v14;
  v78 = sub_29D9371A8();
  v16 = *(v78 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v78, v18);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v77 = &v73 - v23;
  v24 = v0[2];
  v25 = [v24 profileIdentifier];
  v26 = [v25 type];

  if (v26 != 1 || (v27 = *MEMORY[0x29EDBA6F0], (v28 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6F0] healthStore:v24]) == 0))
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v30 = sub_29D937898();
    sub_29D69C6C0(v30, qword_2A1A2C008);
    v31 = sub_29D937878();
    v32 = sub_29D93A298();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v80[0] = v34;
      *v33 = 136446210;
      v35 = sub_29D93AF08();
      v37 = sub_29D6C2364(v35, v36, v80);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_29D677000, v31, v32, "[%{public}s] Unable to get feature status provider from health store!", v33, 0xCu);
      sub_29D69417C(v34);
      MEMORY[0x29ED6BE30](v34, -1, -1);
      MEMORY[0x29ED6BE30](v33, -1, -1);
    }

    goto LABEL_9;
  }

  v29 = v28;
  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v73 = v29;
  sub_29D937278();
  v41 = v78;
  (*(v16 + 56))(v15, 0, 1, v78);
  (*(v16 + 32))(v77, v15, v41);
  v42 = [v24 featureAvailabilityProviderForIdentifier_];
  v43 = v42;
  if (v42)
  {
    v80[0] = 0;
    v44 = [v42 featureOnboardingRecordWithError_];
    v45 = v16;
    if (!v44)
    {
      v61 = v80[0];
      v62 = sub_29D933598();

      swift_willThrow();
      goto LABEL_25;
    }

    v46 = v44;
    v47 = v80[0];
    v48 = [v46 onboardingCompletion];

    v41 = v78;
  }

  else
  {
    v45 = v16;
    v48 = 0;
  }

  (*(v45 + 16))(v21, v77, v41);
  if ((*(v45 + 88))(v21, v41) == *MEMORY[0x29EDC2D70])
  {
    (*(v45 + 96))(v21, v41);
    v49 = v48;
    v50 = v74;
    (*(v74 + 32))(v10, v21, v6);
    sub_29D937108();
    v51 = *MEMORY[0x29EDBA5A0];
    v52 = sub_29D937188();
    (*(v75 + 8))(v5, v76);
    v53 = *MEMORY[0x29EDBA608];
    v54 = sub_29D93A648();

    (*(v50 + 8))(v10, v6);
    v48 = v49;
    v55 = v73;
    if (v43)
    {
LABEL_17:
      v80[0] = 0;
      v56 = [v43 featureOnboardingRecordWithError_];
      if (v56)
      {
        v57 = v56;
        v58 = v80[0];
        v59 = [v57 onboardingState];
        sub_29D936978();

        (*(v45 + 8))(v77, v78);
        v60 = v59 != 3;
        goto LABEL_21;
      }

      v63 = v80[0];
      v62 = sub_29D933598();

      swift_willThrow();
LABEL_25:
      if (qword_2A1A24658 != -1)
      {
        swift_once();
      }

      v64 = sub_29D937898();
      sub_29D69C6C0(v64, qword_2A1A2BF10);
      v65 = sub_29D937878();
      v66 = sub_29D93A2A8();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = v45;
        v69 = swift_slowAlloc();
        v80[0] = v69;
        *v67 = 136446210;
        v70 = sub_29D93AF08();
        v72 = sub_29D6C2364(v70, v71, v80);

        *(v67 + 4) = v72;
        _os_log_impl(&dword_29D677000, v65, v66, "[%{public}s] Unable to determine if Hypertension Notifications have been onboarded ", v67, 0xCu);
        sub_29D69417C(v69);
        MEMORY[0x29ED6BE30](v69, -1, -1);
        MEMORY[0x29ED6BE30](v67, -1, -1);

        sub_29D936978();
        (*(v68 + 8))(v77, v78);
      }

      else
      {

        sub_29D936978();
        (*(v45 + 8))(v77, v78);
      }

      goto LABEL_9;
    }
  }

  else
  {
    (*(v45 + 8))(v21, v41);
    v54 = 0;
    v55 = v73;
    if (v43)
    {
      goto LABEL_17;
    }
  }

  (*(v45 + 8))(v77, v41);

  v60 = 1;
LABEL_21:
  if (v48)
  {

    v38 = v54 & v60;
    goto LABEL_10;
  }

LABEL_9:
  v38 = 0;
LABEL_10:
  v39 = *MEMORY[0x29EDCA608];
  return v38 & 1;
}

uint64_t sub_29D6AC2E8()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_29D6AC37C;

  return sub_29D6B4650();
}

uint64_t sub_29D6AC37C(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = a1;

  if (v1)
  {

    v4 = sub_29D6AC610;
  }

  else
  {
    v4 = sub_29D6AC498;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D6AC498()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDC5210]) initWithJournal:v1 healthStore:*(v0[2] + 16)];
    v3 = [v2 buildSummary];
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v4 = sub_29D937898();
    sub_29D69C6C0(v4, qword_2A1A2BF10);
    v5 = sub_29D937878();
    v6 = sub_29D93A268();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_29D677000, v5, v6, "Unable to fetch most recent journal", v7, 2u);
      MEMORY[0x29ED6BE30](v7, -1, -1);
    }

    v3 = 0;
  }

  v8 = v0[1];

  return v8(v3);
}

uint64_t sub_29D6AC610()
{
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A1A2BF10);
  v2 = sub_29D937878();
  v3 = sub_29D93A268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_29D677000, v2, v3, "Unable to fetch most recent journal", v4, 2u);
    MEMORY[0x29ED6BE30](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_29D6AC72C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  sub_29D936978();

  return swift_deallocClassInstance();
}

uint64_t sub_29D6AC7A0(uint64_t a1)
{
  sub_29D6AC818(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D6AC818(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D6AC86C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 41);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_29D6AC948;

  return sub_29D6AA6F0(a1, v4, v5, v6, v9, v8, v7);
}

uint64_t sub_29D6AC948()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29D6ACA3C(uint64_t a1)
{
  sub_29D6ACA98();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D6ACA98()
{
  if (!qword_2A1A21FC0)
  {
    sub_29D69567C(255, &qword_2A1A21FD0, 0x29EDC9738);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A21FC0);
    }
  }
}

void sub_29D6ACB00()
{
  if (!qword_2A17B1910)
  {
    sub_29D6A0CD0();
    v0 = sub_29D93A038();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1910);
    }
  }
}

unint64_t sub_29D6ACB80()
{
  result = qword_2A17B1360;
  if (!qword_2A17B1360)
  {
    sub_29D9339F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1360);
  }

  return result;
}

uint64_t sub_29D6ACBD8()
{
  v1 = v0;
  sub_29D6AD2D8(0);
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v50 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_29D93A548();
  v43 = *(v45 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v45, v7);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6AD45C();
  v48 = *(v9 - 8);
  v49 = v9;
  v10 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v47 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6AD350();
  v41 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6AD314(0);
  v46 = v19;
  v44 = *(v19 - 8);
  v20 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v0;
  v25 = *(v1 + 8);
  v26 = *(v1 + 16);
  sub_29D935E88();
  v53[0] = sub_29D9343D8();
  sub_29D6AD3EC();
  sub_29D6B1494(&qword_2A1A22328, sub_29D6AD3EC);
  sub_29D938468();

  v27 = swift_allocObject();
  v27[2] = v25;
  v27[3] = v26;
  v27[4] = sub_29D6B15DC;
  v27[5] = 0;
  sub_29D6B1168(0, &qword_2A1A24A48);
  sub_29D6B1494(&qword_2A17B1930, sub_29D6AD350);
  sub_29D6B11B4(&qword_2A1A22340, &qword_2A1A24A48);
  v28 = v41;
  sub_29D938488();

  (*(v14 + 8))(v18, v28);
  v29 = [objc_opt_self() defaultCenter];
  if (qword_2A1A22218 != -1)
  {
    swift_once();
  }

  v30 = v42;
  sub_29D93A558();

  v31 = swift_allocObject();
  v32 = *(v1 + 16);
  *(v31 + 16) = *v1;
  *(v31 + 32) = v32;
  *(v31 + 48) = *(v1 + 32);
  *(v31 + 64) = *(v1 + 48);
  sub_29D6B0450(v1, v53);
  sub_29D938228();
  sub_29D6AD548();
  sub_29D6B1494(&unk_2A1A248C0, MEMORY[0x29EDB9DF8]);
  sub_29D6B1494(&qword_2A1A223E0, sub_29D6AD548);
  v33 = v47;
  v34 = v45;
  sub_29D9385A8();

  (*(v43 + 8))(v30, v34);
  sub_29D6B1494(&qword_2A17B1938, sub_29D6AD314);
  sub_29D6B1494(&qword_2A1A22488, sub_29D6AD45C);
  v36 = v49;
  v35 = v50;
  v37 = v46;
  sub_29D9384A8();
  sub_29D6B1494(&qword_2A17B1940, sub_29D6AD2D8);
  v38 = v52;
  v39 = sub_29D938418();
  (*(v51 + 8))(v35, v38);
  (*(v48 + 8))(v33, v36);
  (*(v44 + 8))(v23, v37);
  return v39;
}