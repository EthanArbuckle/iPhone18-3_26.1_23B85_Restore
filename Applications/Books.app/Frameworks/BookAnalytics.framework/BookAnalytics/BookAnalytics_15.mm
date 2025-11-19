uint64_t sub_17273C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_17283C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v7 = sub_1E1090();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_3D68(&qword_287EC0, &qword_205170);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - v12;
  v14 = sub_1E1900();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v15 = qword_27D5A8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_28B300;
  v17 = sub_172CE4();
  v18 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v16;
  *(v19 + 3) = v17;
  *(v19 + 4) = v5;
  (*(v8 + 32))(&v19[v18], &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_170D1C(0, 0, v13, v22, v19);
}

uint64_t sub_172A60(uint64_t a1)
{
  v3 = sub_1E1090();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_287EC0, &qword_205170);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = sub_1E1900();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v4 + 16))(v6, a1, v3);
  v12 = qword_27D5A8;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_28B300;
  v14 = sub_172CE4();
  v15 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v13;
  *(v16 + 3) = v14;
  *(v16 + 4) = v1;
  (*(v4 + 32))(&v16[v15], v6, v3);

  sub_170D1C(0, 0, v10, &unk_205180, v16);
}

unint64_t sub_172CE4()
{
  result = qword_28B450;
  if (!qword_28B450)
  {
    type metadata accessor for SessionActor.ActorType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B450);
  }

  return result;
}

uint64_t sub_172D40(uint64_t a1)
{
  v4 = *(sub_1E1090() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_92C90;

  return sub_1717A8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_172E38(uint64_t a1)
{
  v2 = sub_3D68(&qword_287EC0, &qword_205170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_172EA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_92C90;

  return sub_D0BA4(a1, v5);
}

uint64_t sub_172F58()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_172F90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_3D68(&qword_28B488, &qword_205210);
  v40 = a2;
  result = sub_1E1B40();
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
      sub_1E1DC0();
      sub_1E17D0();
      result = sub_1E1DE0();
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

uint64_t sub_173250(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_3D68(&qword_27F100, &qword_1E7F18);
  v36 = a2;
  result = sub_1E1B40();
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
        sub_326AC(v25, v37);
      }

      else
      {
        sub_326BC(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1E1DC0();
      sub_1E17D0();
      result = sub_1E1DE0();
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
      result = sub_326AC(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_173508(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_3D68(&qword_28B458, &qword_2051A0);
  v38 = a2;
  result = sub_1E1B40();
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1E1DC0();
      sub_1E17D0();
      result = sub_1E1DE0();
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

uint64_t sub_1737B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_3D68(&qword_27F0E8, &qword_1E7F00);
  v38 = a2;
  result = sub_1E1B40();
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1E1DC0();
      sub_1E17D0();
      result = sub_1E1DE0();
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

uint64_t sub_173A58(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_3D68(&qword_28B478, &qword_2051E8);
  v39 = a2;
  result = sub_1E1B40();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1E1DC0();
      sub_1E17D0();
      result = sub_1E1DE0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_173CFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_A2F4(a2, a3);
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
      sub_173508(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_A2F4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1E1D60();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_17416C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_173E78(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_A2F4(a2, a3);
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
      sub_1737B0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_A2F4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1E1D60();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1746BC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_173FF4()
{
  v1 = v0;
  sub_3D68(&qword_28B488, &qword_205210);
  v2 = *v0;
  v3 = sub_1E1B30();
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

void *sub_17416C()
{
  v1 = v0;
  sub_3D68(&qword_28B458, &qword_2051A0);
  v2 = *v0;
  v3 = sub_1E1B30();
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

uint64_t sub_1742DC(uint64_t a1)
{
  v4 = *(sub_1E1090() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7E674;

  return sub_1717A8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1743D4()
{
  v1 = sub_1E1090();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1744A0()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = sub_1E0BE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  (*(v4 + 8))(&v0[v6], v3);
  v9 = *&v0[v7];

  return _swift_deallocObject(v0, v7 + 8, v5 | 7);
}

uint64_t sub_17457C(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(sub_1E0BE0() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_92C90;

  return sub_1720A8(a1, v9, v10, v1 + v8, v11, v6, v5);
}

void *sub_1746BC()
{
  v1 = v0;
  sub_3D68(&qword_27F0E8, &qword_1E7F00);
  v2 = *v0;
  v3 = sub_1E1B30();
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

id sub_17482C()
{
  v1 = v0;
  sub_3D68(&qword_28B478, &qword_2051E8);
  v2 = *v0;
  v3 = sub_1E1B30();
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

        result = v20;
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

uint64_t sub_174998(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_174A8C;

  return v6(v2 + 32);
}

uint64_t sub_174A8C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_174BA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_92C90;

  return sub_174998(a1, v5);
}

uint64_t sub_174C58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_7E674;

  return sub_174998(a1, v5);
}

unint64_t sub_174D58()
{
  v1 = *v0;
  v2 = 0x4449736569726573;
  v3 = 0xD000000000000013;
  if (v1 != 5)
  {
    v3 = 0x6F43736569726573;
  }

  v4 = 0x7954736569726573;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x6F43736569726573;
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

uint64_t sub_174E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_175A40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_174E80(uint64_t a1)
{
  v2 = sub_1756B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_174EBC(uint64_t a1)
{
  v2 = sub_1756B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SeriesData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28B490, &qword_205218);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v23 = *(v1 + 8);
  v22 = v1[2];
  v9 = *(v1 + 24);
  v20 = *(v1 + 25);
  v21 = v9;
  v18 = *(v1 + 26);
  v10 = v1[5];
  v19 = v1[4];
  v11 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1756B0();
  v12 = v3;
  sub_1E1E00();
  v35 = 0;
  v13 = v24;
  sub_1E1D10();
  if (!v13)
  {
    v14 = v20;
    v15 = v21;
    v24 = v10;
    v34 = v23;
    v33 = 1;
    sub_C480();
    sub_1E1CF0();
    v32 = 2;
    sub_1E1D10();
    v31 = v15;
    v30 = 3;
    sub_175704();
    sub_1E1C80();
    v29 = v14;
    v28 = 4;
    sub_F0F14();
    sub_1E1C80();
    v27 = v18;
    v26 = 5;
    sub_175758();
    sub_1E1C80();
    v25 = 6;
    sub_1E1C50();
  }

  return (*(v4 + 8))(v7, v12);
}

uint64_t SeriesData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_28B4B0, &qword_205220);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1756B0();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  LOBYTE(v27) = 0;
  v11 = sub_1E1C40();
  LOBYTE(v24) = 1;
  sub_C4D4();
  sub_1E1C20();
  v12 = v27;
  LOBYTE(v27) = 2;
  v23 = sub_1E1C40();
  LOBYTE(v24) = 3;
  sub_1757AC();
  sub_1E1BB0();
  v35 = v27;
  LOBYTE(v24) = 4;
  sub_F10B8();
  sub_1E1BB0();
  v22 = v27;
  LOBYTE(v24) = 5;
  sub_175800();
  sub_1E1BB0();
  v21 = v27;
  v36 = 6;
  v13 = sub_1E1B80();
  v14 = v9;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  *&v24 = v11;
  BYTE8(v24) = v12;
  v17 = v23;
  *&v25 = v23;
  BYTE8(v25) = v35;
  v18 = v22;
  BYTE9(v25) = v22;
  BYTE10(v25) = v21;
  *&v26 = v13;
  *(&v26 + 1) = v16;
  v19 = v25;
  *a2 = v24;
  a2[1] = v19;
  a2[2] = v26;
  sub_CF18(&v24, &v27);
  sub_4E48(a1);
  v27 = v11;
  v28 = v12;
  v29 = v17;
  v30 = v35;
  v31 = v18;
  v32 = v21;
  v33 = v13;
  v34 = v16;
  return sub_D5D0(&v27);
}

uint64_t _s13BookAnalytics10SeriesDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 25);
  v4 = *(a1 + 26);
  v5 = *(a1 + 40);
  v6 = *(a2 + 24);
  v7 = *(a2 + 25);
  v8 = *(a2 + 26);
  v9 = *(a2 + 40);
  v14 = *(a2 + 32);
  v15 = *(a1 + 32);
  v10 = *(a2 + 16);
  v11 = *(a1 + 16);
  v12 = sub_218F4(*(a1 + 8), *(a2 + 8));
  result = 0;
  if ((v12 & 1) != 0 && v11 == v10)
  {
    if (v2 == 4)
    {
      if (v6 != 4)
      {
        return 0;
      }
    }

    else if (v6 == 4 || (sub_24F90(v2, v6) & 1) == 0)
    {
      return 0;
    }

    if (v3 == 4)
    {
      if (v7 != 4)
      {
        return 0;
      }
    }

    else if (v7 == 4 || (sub_24C00(v3, v7) & 1) == 0)
    {
      return 0;
    }

    if (v4 == 7)
    {
      if (v8 != 7)
      {
        return 0;
      }
    }

    else if (v8 == 7 || (sub_24D40(v4, v8) & 1) == 0)
    {
      return 0;
    }

    if (v5)
    {
      if (!v9 || (v15 != v14 || v5 != v9) && (sub_1E1D30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

unint64_t sub_1756B0()
{
  result = qword_28B498;
  if (!qword_28B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B498);
  }

  return result;
}

unint64_t sub_175704()
{
  result = qword_28B4A0;
  if (!qword_28B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B4A0);
  }

  return result;
}

unint64_t sub_175758()
{
  result = qword_28B4A8;
  if (!qword_28B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B4A8);
  }

  return result;
}

unint64_t sub_1757AC()
{
  result = qword_28B4B8;
  if (!qword_28B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B4B8);
  }

  return result;
}

unint64_t sub_175800()
{
  result = qword_28B4C0;
  if (!qword_28B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B4C0);
  }

  return result;
}

uint64_t sub_17585C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1758B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_17593C()
{
  result = qword_28B4C8;
  if (!qword_28B4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B4C8);
  }

  return result;
}

unint64_t sub_175994()
{
  result = qword_28B4D0;
  if (!qword_28B4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B4D0);
  }

  return result;
}

unint64_t sub_1759EC()
{
  result = qword_28B4D8;
  if (!qword_28B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B4D8);
  }

  return result;
}

uint64_t sub_175A40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449736569726573 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000217200 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43736569726573 && a2 == 0xEB00000000746E75 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000217220 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7954736569726573 && a2 == 0xEA00000000006570 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000217240 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F43736569726573 && a2 == 0xEE00727453746E75)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

BookAnalytics::DeviceOrientation_optional __swiftcall DeviceOrientation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2614A8;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t DeviceOrientation.rawValue.getter()
{
  v1 = 0x7469617274726F70;
  if (*v0 != 1)
  {
    v1 = 0x70616373646E616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_175D5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x7469617274726F70;
  if (v2 != 1)
  {
    v4 = 0x70616373646E616CLL;
    v3 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7469617274726F70;
  if (*a2 != 1)
  {
    v8 = 0x70616373646E616CLL;
    v7 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

unint64_t sub_175E6C()
{
  result = qword_28B4E0;
  if (!qword_28B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B4E0);
  }

  return result;
}

Swift::Int sub_175EC0()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_175F68()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_175FFC()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_1760AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x7469617274726F70;
  if (v2 != 1)
  {
    v5 = 0x70616373646E616CLL;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1761D0()
{
  result = qword_28B4E8;
  if (!qword_28B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B4E8);
  }

  return result;
}

uint64_t PageTurnSettingEvent.pageTurnFeatureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_28B520, &unk_205580);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PageTurnSettingEvent.pageTurnFeatureData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_28B520, &unk_205580);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PageTurnSettingEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageTurnSettingEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageTurnSettingEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PageTurnSettingEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PageTurnSettingEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_28B520, &unk_205580);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for PageTurnSettingEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t PageTurnSettingEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageTurnSettingEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageTurnSettingEvent.Model.init(pageTurnFeatureData:eventData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for PageTurnSettingEvent.Model(0) + 20);
  v6 = sub_1E1150();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

unint64_t sub_176744()
{
  if (*v0)
  {
    result = 0x746144746E657665;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_176788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x8000000000217260 == a2 || (sub_1E1D30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E1D30();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_176878(uint64_t a1)
{
  v2 = sub_176AAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1768B4(uint64_t a1)
{
  v2 = sub_176AAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PageTurnSettingEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28B528, &qword_205590);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_176AAC();
  sub_1E1E00();
  v13[15] = *v3;
  v13[14] = 0;
  sub_176B00();
  sub_1E1CF0();
  if (!v2)
  {
    v11 = *(type metadata accessor for PageTurnSettingEvent.Model(0) + 20);
    v13[13] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_176AAC()
{
  result = qword_28B530;
  if (!qword_28B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B530);
  }

  return result;
}

unint64_t sub_176B00()
{
  result = qword_28B538;
  if (!qword_28B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B538);
  }

  return result;
}

uint64_t PageTurnSettingEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_1E1150();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_3D68(&qword_28B540, &qword_205598);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v28);
  v9 = &v21 - v8;
  v10 = type metadata accessor for PageTurnSettingEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_176AAC();
  sub_1E1DF0();
  if (!v2)
  {
    v15 = v13;
    v23 = v10;
    v16 = v26;
    v17 = v27;
    v30 = 0;
    sub_176E50();
    v18 = v28;
    sub_1E1C20();
    v22 = v15;
    *v15 = v31;
    v29 = 1;
    sub_14E5C(&qword_27D830);
    v21 = v6;
    sub_1E1C20();
    (*(v16 + 8))(v9, v18);
    v19 = v22;
    (*(v24 + 32))(&v22[*(v23 + 20)], v21, v17);
    sub_176EA4(v19, v25);
  }

  return sub_4E48(a1);
}

unint64_t sub_176E50()
{
  result = qword_28B548;
  if (!qword_28B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B548);
  }

  return result;
}

uint64_t sub_176EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageTurnSettingEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_176FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_28B520, &unk_205580);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_177094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_28B520, &unk_205580);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1771B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_28B520, &unk_205580);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1772C4()
{
  sub_177348();
  if (v0 <= 0x3F)
  {
    sub_5684();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_177348()
{
  if (!qword_28B5B8)
  {
    sub_176E50();
    sub_176B00();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_28B5B8);
    }
  }
}

uint64_t sub_1773C4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_17747C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_17751C()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1775AC()
{
  result = qword_28B678;
  if (!qword_28B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B678);
  }

  return result;
}

unint64_t sub_177604()
{
  result = qword_28B680;
  if (!qword_28B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B680);
  }

  return result;
}

unint64_t sub_17765C()
{
  result = qword_28B688;
  if (!qword_28B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B688);
  }

  return result;
}

uint64_t sub_1776B0()
{
  if (*v0)
  {
    result = 0x6E69646465626D65;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_1776F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xE900000000000067)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1D30();

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

uint64_t sub_1777D4(uint64_t a1)
{
  v2 = sub_177A18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_177810(uint64_t a1)
{
  v2 = sub_177A18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UserEmbedding.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28B690, &qword_2057A0);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_177A18();
  sub_1E1E00();
  v17 = 0;
  sub_1E1CB0();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    sub_3D68(&qword_285B40, &qword_1F7CD0);
    sub_E7510(&qword_285B48);
    sub_1E1CF0();
  }

  return (*(v14 + 8))(v7, v4);
}

unint64_t sub_177A18()
{
  result = qword_28B698;
  if (!qword_28B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B698);
  }

  return result;
}

uint64_t UserEmbedding.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_28B6A0, &qword_2057A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v17 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_177A18();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v19 = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  v14 = v11;
  sub_3D68(&qword_285B40, &qword_1F7CD0);
  v18 = 1;
  sub_E7510(&qword_285B58);
  sub_1E1C20();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  sub_4E48(a1);
}

unint64_t sub_177CB8()
{
  result = qword_28B6A8;
  if (!qword_28B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B6A8);
  }

  return result;
}

unint64_t sub_177D10()
{
  result = qword_28B6B0;
  if (!qword_28B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B6B0);
  }

  return result;
}

unint64_t sub_177DB8()
{
  result = qword_28B6B8;
  if (!qword_28B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B6B8);
  }

  return result;
}

unint64_t sub_177E10()
{
  result = qword_28B6C0;
  if (!qword_28B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B6C0);
  }

  return result;
}

unint64_t sub_177E68()
{
  result = qword_28B6C8;
  if (!qword_28B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B6C8);
  }

  return result;
}

uint64_t sub_177EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x706F724467617264 && a2 == 0xEF7972616D6D7553)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1D30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_177F7C(uint64_t a1)
{
  v2 = sub_178198();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_177FB8(uint64_t a1)
{
  v2 = sub_178198();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DragDropData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28B6D0, &qword_2059D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_178198();

  sub_1E1E00();
  v11[1] = v8;
  sub_3D68(&qword_28B6E0, &qword_2059E0);
  sub_1783F0(&qword_28B6E8, sub_1781EC);
  sub_1E1CF0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_178198()
{
  result = qword_28B6D8;
  if (!qword_28B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B6D8);
  }

  return result;
}

unint64_t sub_1781EC()
{
  result = qword_28B6F0;
  if (!qword_28B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B6F0);
  }

  return result;
}

uint64_t DragDropData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3D68(&qword_28B6F8, &qword_2059E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_178198();
  sub_1E1DF0();
  if (!v2)
  {
    sub_3D68(&qword_28B6E0, &qword_2059E0);
    sub_1783F0(&qword_28B700, sub_178468);
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_4E48(a1);
}

uint64_t sub_1783F0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_5DE50(&qword_28B6E0, &qword_2059E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_178468()
{
  result = qword_28B708;
  if (!qword_28B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B708);
  }

  return result;
}

unint64_t sub_178518()
{
  result = qword_28B710;
  if (!qword_28B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B710);
  }

  return result;
}

unint64_t sub_178570()
{
  result = qword_28B718;
  if (!qword_28B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B718);
  }

  return result;
}

unint64_t sub_1785C8()
{
  result = qword_28B720;
  if (!qword_28B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B720);
  }

  return result;
}

void __swiftcall BrickData.init(name:positionInSection:brickID:)(BookAnalytics::BrickData *__return_ptr retstr, Swift::String name, Swift::Int32 positionInSection, Swift::String brickID)
{
  retstr->name = name;
  retstr->positionInSection = positionInSection;
  retstr->brickID = brickID;
}

uint64_t static BrickData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v5)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_1E1D30();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v5)
    {
      return result;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_1E1D30();
}

uint64_t sub_178700()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x44496B63697262;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_178758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_178DA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_178780(uint64_t a1)
{
  v2 = sub_1789BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1787BC(uint64_t a1)
{
  v2 = sub_1789BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BrickData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28B728, &qword_205C10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v15 = *(v1 + 4);
  v10 = v1[3];
  v14[1] = v1[4];
  v14[2] = v10;
  v11 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1789BC();
  sub_1E1E00();
  v18 = 0;
  v12 = v14[3];
  sub_1E1CB0();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_1E1D00();
  v16 = 2;
  sub_1E1CB0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1789BC()
{
  result = qword_28B730;
  if (!qword_28B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B730);
  }

  return result;
}

uint64_t BrickData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28B738, &qword_205C18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1789BC();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v25 = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  v14 = v11;
  v24 = 1;
  v22 = sub_1E1C30();
  v23 = 2;
  v15 = sub_1E1BE0();
  v18 = v17;
  v19 = *(v6 + 8);
  v21 = v15;
  v19(v9, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v22;
  *(a2 + 24) = v21;
  *(a2 + 32) = v18;

  sub_4E48(a1);
}

unint64_t sub_178C9C()
{
  result = qword_28B740;
  if (!qword_28B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B740);
  }

  return result;
}

unint64_t sub_178CF4()
{
  result = qword_28B748;
  if (!qword_28B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B748);
  }

  return result;
}

unint64_t sub_178D4C()
{
  result = qword_28B750;
  if (!qword_28B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B750);
  }

  return result;
}

uint64_t sub_178DA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000002139D0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496B63697262 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E1D30();

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

BookAnalytics::OnDevicePersonalizationUserStatus_optional __swiftcall OnDevicePersonalizationUserStatus.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261510;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t OnDevicePersonalizationUserStatus.rawValue.getter()
{
  v1 = 0x6967696C45746F6ELL;
  v2 = 0x736B6F6F62;
  if (*v0 != 2)
  {
    v2 = 0x6F6F626F69647561;
  }

  if (*v0)
  {
    v1 = 0x656C626967696C65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_178FB0()
{
  result = qword_28B758;
  if (!qword_28B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B758);
  }

  return result;
}

Swift::Int sub_179004()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_1790D0()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_179188()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_17925C(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000656C62;
  v3 = 0x6967696C45746F6ELL;
  v4 = 0xE500000000000000;
  v5 = 0x736B6F6F62;
  if (*v1 != 2)
  {
    v5 = 0x6F6F626F69647561;
    v4 = 0xEA0000000000736BLL;
  }

  if (*v1)
  {
    v3 = 0x656C626967696C65;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1793A4()
{
  result = qword_28B760;
  if (!qword_28B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B760);
  }

  return result;
}

uint64_t RedownloadCompleteEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadCompleteEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadCompleteEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadCompleteEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadCompleteEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadCompleteEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadCompleteEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadCompleteEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadCompleteEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadCompleteEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadCompleteEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadCompleteEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadCompleteEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadCompleteEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadCompleteEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadCompleteEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadCompleteEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RedownloadCompleteEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t RedownloadCompleteEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadCompleteEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadCompleteEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadCompleteEvent.Model(0) + 32);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadCompleteEvent.Model.init(contentData:contentStoreData:sectionData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a1[3];
  *(a6 + 32) = a1[2];
  *(a6 + 48) = v9;
  v10 = a1[5];
  *(a6 + 64) = a1[4];
  *(a6 + 80) = v10;
  v11 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v11;
  v12 = *(a2 + 48);
  *(a6 + 128) = *(a2 + 32);
  *(a6 + 144) = v12;
  v13 = *(a2 + 16);
  *(a6 + 96) = *a2;
  *(a6 + 112) = v13;
  v14 = a3[3];
  *(a6 + 200) = a3[2];
  v15 = *a3;
  *(a6 + 184) = a3[1];
  *(a6 + 168) = v15;
  v16 = a3[5];
  *(a6 + 264) = a3[6];
  v17 = a3[4];
  *(a6 + 248) = v16;
  *(a6 + 232) = v17;
  *(a6 + 157) = *(a2 + 61);
  *(a6 + 216) = v14;
  v18 = type metadata accessor for RedownloadCompleteEvent.Model(0);
  v19 = *(v18 + 28);
  v20 = sub_1E1150();
  (*(*(v20 - 8) + 32))(a6 + v19, a4, v20);
  v21 = *(v18 + 32);
  v22 = sub_1E11A0();
  v23 = *(*(v22 - 8) + 32);

  return v23(a6 + v21, a5, v22);
}

unint64_t sub_179E58()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0x446E6F6974636573;
  v4 = 0x746144746E657665;
  if (v1 != 3)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_179F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_17B900(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_179F2C(uint64_t a1)
{
  v2 = sub_17A4BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_179F68(uint64_t a1)
{
  v2 = sub_17A4BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RedownloadCompleteEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28B798, &qword_205F98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_17A4BC();
  sub_1E1E00();
  v10 = *(v2 + 48);
  v11 = *(v2 + 16);
  v68 = *(v2 + 32);
  v69 = v10;
  v12 = *(v2 + 48);
  v13 = *(v2 + 80);
  v70 = *(v2 + 64);
  v71 = v13;
  v14 = *(v2 + 16);
  v67[0] = *v2;
  v67[1] = v14;
  v63 = v68;
  v64 = v12;
  v15 = *(v2 + 80);
  v65 = v70;
  v66 = v15;
  v61 = v67[0];
  v62 = v11;
  v60 = 0;
  sub_13A5C(v67, &v44);
  sub_143D0();
  v16 = v72;
  sub_1E1CF0();
  if (v16)
  {
    v46 = v63;
    v47 = v64;
    v48 = v65;
    v49 = v66;
    v44 = v61;
    v45 = v62;
    sub_14424(&v44);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v56[2] = v63;
    v56[3] = v64;
    v56[4] = v65;
    v56[5] = v66;
    v56[0] = v61;
    v56[1] = v62;
    sub_14424(v56);
    v18 = *(v2 + 112);
    v19 = *(v2 + 144);
    v58 = *(v2 + 128);
    *v59 = v19;
    v20 = *(v2 + 112);
    v57[0] = *(v2 + 96);
    v57[1] = v20;
    v53 = v18;
    v54 = v58;
    v55[0] = *(v2 + 144);
    *&v59[13] = *(v2 + 157);
    *(v55 + 13) = *(v2 + 157);
    v52 = v57[0];
    v51 = 1;
    sub_17AA4(v57, &v44, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    sub_1E1C80();
    v42[2] = v54;
    v43[0] = v55[0];
    *(v43 + 13) = *(v55 + 13);
    v42[0] = v52;
    v42[1] = v53;
    sub_18E48(v42, &qword_27FFF0, &unk_1E9C00);
    v21 = *(v2 + 216);
    v22 = *(v2 + 248);
    v48 = *(v2 + 232);
    v49 = v22;
    v50 = *(v2 + 264);
    v23 = *(v2 + 184);
    v44 = *(v2 + 168);
    v45 = v23;
    v46 = *(v2 + 200);
    v47 = v21;
    v24 = *(v2 + 216);
    v25 = *(v2 + 248);
    v39 = *(v2 + 232);
    v40 = v25;
    v41 = *(v2 + 264);
    v26 = *(v2 + 184);
    v35 = *(v2 + 168);
    v36 = v26;
    v37 = *(v2 + 200);
    v38 = v24;
    v34 = 2;
    sub_17AA4(&v44, v33, &qword_27E490, &qword_205F90);
    sub_18544();
    sub_1E1C80();
    v33[4] = v39;
    v33[5] = v40;
    v33[6] = v41;
    v33[0] = v35;
    v33[1] = v36;
    v33[2] = v37;
    v33[3] = v38;
    sub_18E48(v33, &qword_27E490, &qword_205F90);
    v27 = v8;
    v28 = type metadata accessor for RedownloadCompleteEvent.Model(0);
    v29 = *(v28 + 28);
    v32 = 3;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v30 = *(v28 + 32);
    v32 = 4;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
    return (*(v5 + 8))(v27, v4);
  }
}

unint64_t sub_17A4BC()
{
  result = qword_28B7A0;
  if (!qword_28B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B7A0);
  }

  return result;
}

uint64_t RedownloadCompleteEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v40 = sub_1E11A0();
  v37 = *(v40 - 8);
  v3 = *(v37 + 64);
  __chkstk_darwin(v40);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3D68(&qword_28B7A8, &qword_205FA0);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  v13 = type metadata accessor for RedownloadCompleteEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v67 = a1;
  sub_48B8(a1, v17);
  sub_17A4BC();
  v44 = v12;
  v19 = v45;
  sub_1E1DF0();
  if (v19)
  {
    return sub_4E48(v67);
  }

  v45 = v8;
  v20 = v16;
  v60 = 0;
  sub_14CB8();
  sub_1E1C20();
  v21 = v64;
  *(v16 + 2) = v63;
  *(v16 + 3) = v21;
  v22 = v66;
  *(v16 + 4) = v65;
  *(v16 + 5) = v22;
  v23 = v62;
  *v16 = v61;
  *(v16 + 1) = v23;
  v59 = 1;
  sub_4FB64();
  sub_1E1BB0();
  v24 = v56;
  v25 = v58[0];
  *(v16 + 8) = v57;
  *(v16 + 9) = v25;
  *(v16 + 157) = *(v58 + 13);
  *(v16 + 6) = v55;
  *(v16 + 7) = v24;
  v47 = 2;
  sub_18EFC();
  v36 = 0;
  sub_1E1BB0();
  v26 = v50;
  *(v16 + 216) = v51;
  v27 = v53;
  *(v16 + 232) = v52;
  *(v16 + 248) = v27;
  v28 = v49;
  *(v16 + 168) = v48;
  *(v16 + 184) = v28;
  *(v16 + 200) = v26;
  *(v16 + 264) = v54;
  v46 = 3;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v29 = v45;
  v35 = v5;
  sub_1E1C20();
  v34 = v13;
  (*(v41 + 32))(&v16[*(v13 + 28)], v29, v35);
  v46 = 4;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v30 = v39;
  v31 = v40;
  sub_1E1C20();
  (*(v42 + 8))(v44, v43);
  (*(v37 + 32))(v20 + *(v34 + 32), v30, v31);
  sub_17ABA4(v20, v38);
  sub_4E48(v67);
  return sub_17AC08(v20);
}

uint64_t sub_17ABA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedownloadCompleteEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_17AC08(uint64_t a1)
{
  v2 = type metadata accessor for RedownloadCompleteEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_17AD04@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_17AEE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_17B108(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_17B320()
{
  sub_55D00(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_55D00(319, &qword_2800D8, sub_4FB64, sub_4F01C);
    if (v1 <= 0x3F)
    {
      sub_55D00(319, &qword_27E578, sub_18EFC, sub_18544);
      if (v2 <= 0x3F)
      {
        sub_5684();
        if (v3 <= 0x3F)
        {
          sub_5750();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_17B4A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_17B5E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_17B704()
{
  sub_19FE0(319, &qword_2801C0);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_27E638);
    if (v1 <= 0x3F)
    {
      sub_1E1150();
      if (v2 <= 0x3F)
      {
        sub_1E11A0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_17B7FC()
{
  result = qword_28B8F0;
  if (!qword_28B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B8F0);
  }

  return result;
}

unint64_t sub_17B854()
{
  result = qword_28B8F8;
  if (!qword_28B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B8F8);
  }

  return result;
}

unint64_t sub_17B8AC()
{
  result = qword_28B900;
  if (!qword_28B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B900);
  }

  return result;
}

uint64_t sub_17B900(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000213F30 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t NotificationEngagementEvent.notificationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_284A60, &qword_2061E0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NotificationEngagementEvent.notificationData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_284A60, &qword_2061E0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NotificationEngagementEvent.notificationEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationEngagementEvent(0) + 20);
  v4 = sub_3D68(&qword_28B938, &unk_2061E8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationEngagementEvent.notificationEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationEngagementEvent(0) + 20);
  v4 = sub_3D68(&qword_28B938, &unk_2061E8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationEngagementEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationEngagementEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationEngagementEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationEngagementEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_284A60, &qword_2061E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NotificationEngagementEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_28B938, &unk_2061E8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t NotificationEngagementEvent.Model.notificationData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_6E958(v9, &v8);
}

uint64_t NotificationEngagementEvent.Model.notificationEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t NotificationEngagementEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationEngagementEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationEngagementEvent.Model.init(notificationData:notificationEngagementData:eventData:)@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 3);
  v9 = a2[32];
  v10 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v10;
  v11 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v11;
  v12 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v12;
  *(a4 + 96) = v6;
  *(a4 + 104) = v7;
  *(a4 + 120) = v8;
  *(a4 + 128) = v9;
  v13 = *(type metadata accessor for NotificationEngagementEvent.Model(0) + 24);
  v14 = sub_1E1150();
  v15 = *(*(v14 - 8) + 32);

  return v15(a4 + v13, a3, v14);
}

unint64_t sub_17C264()
{
  v1 = 0x746144746E657665;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_17C2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_17D4E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_17C2F4(uint64_t a1)
{
  v2 = sub_17C634();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_17C330(uint64_t a1)
{
  v2 = sub_17C634();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NotificationEngagementEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28B940, &qword_2061F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_17C634();
  sub_1E1E00();
  v10 = *(v2 + 48);
  v11 = *(v2 + 16);
  v43 = *(v2 + 32);
  v44 = v10;
  v12 = *(v2 + 48);
  v13 = *(v2 + 80);
  v45 = *(v2 + 64);
  v46 = v13;
  v14 = *(v2 + 16);
  v42[0] = *v2;
  v42[1] = v14;
  v38 = v43;
  v39 = v12;
  v15 = *(v2 + 80);
  v40 = v45;
  v41 = v15;
  v36 = v42[0];
  v37 = v11;
  v35 = 0;
  sub_6E958(v42, &v29);
  sub_6EA1C();
  v16 = v47;
  sub_1E1CF0();
  if (v16)
  {
    v31 = v38;
    v32 = v39;
    v33 = v40;
    v34 = v41;
    v29 = v36;
    v30 = v37;
    sub_6E990(&v29);
  }

  else
  {
    v31 = v38;
    v32 = v39;
    v33 = v40;
    v34 = v41;
    v29 = v36;
    v30 = v37;
    sub_6E990(&v29);
    v17 = *(v2 + 104);
    v18 = *(v2 + 112);
    v19 = *(v2 + 120);
    v20 = *(v2 + 128);
    v24 = *(v2 + 96);
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v28 = v20;
    v23[7] = 1;
    sub_72A58();

    sub_1E1CF0();

    v21 = *(type metadata accessor for NotificationEngagementEvent.Model(0) + 24);
    v24 = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_17C634()
{
  result = qword_28B948;
  if (!qword_28B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28B948);
  }

  return result;
}

uint64_t NotificationEngagementEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_1E1150();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_3D68(&qword_28B950, &qword_206200);
  v29 = *(v30 - 8);
  v8 = *(v29 + 64);
  __chkstk_darwin(v30);
  v10 = &v26 - v9;
  v11 = type metadata accessor for NotificationEngagementEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v31 = a1;
  sub_48B8(a1, v15);
  sub_17C634();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v31);
  }

  v17 = v29;
  v26 = v7;
  v43 = 0;
  sub_6E9C4();
  v18 = v30;
  sub_1E1C20();
  v19 = v39;
  *(v14 + 2) = v38;
  *(v14 + 3) = v19;
  v20 = v41;
  *(v14 + 4) = v40;
  *(v14 + 5) = v20;
  v21 = v37;
  *v14 = v36;
  *(v14 + 1) = v21;
  v42 = 1;
  sub_72A00();
  sub_1E1C20();
  v22 = v33;
  v23 = v34;
  v24 = v35;
  v14[96] = v32;
  *(v14 + 104) = v22;
  *(v14 + 15) = v23;
  v14[128] = v24;
  v32 = 2;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v10, v18);
  (*(v27 + 32))(&v14[*(v11 + 24)], v26, v4);
  sub_17CACC(v14, v28);
  sub_4E48(v31);
  return sub_17CB30(v14);
}

uint64_t sub_17CACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_17CB30(uint64_t a1)
{
  v2 = type metadata accessor for NotificationEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_17CC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_284A60, &qword_2061E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_28B938, &unk_2061E8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_17CD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_284A60, &qword_2061E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_28B938, &unk_2061E8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_17CEDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_284A60, &qword_2061E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_28B938, &unk_2061E8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_17D04C()
{
  sub_17D158(319, &unk_284AF0, sub_6E9C4, sub_6EA1C);
  if (v0 <= 0x3F)
  {
    sub_17D158(319, &unk_28B9C0, sub_72A00, sub_72A58);
    if (v1 <= 0x3F)
    {
      sub_5684();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_17D158(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_17D1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_17D2A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_17D34C()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_17D3E4()
{
  result = qword_28BA90;
  if (!qword_28BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BA90);
  }

  return result;
}

unint64_t sub_17D43C()
{
  result = qword_28BA98;
  if (!qword_28BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BA98);
  }

  return result;
}

unint64_t sub_17D494()
{
  result = qword_28BAA0;
  if (!qword_28BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BAA0);
  }

  return result;
}

uint64_t sub_17D4E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000000215B60 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000000217280 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t RemoveReviewAndRatingEvent.reviewTypeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveReviewAndRatingEvent(0) + 20);
  v4 = sub_3D68(&qword_28BAD8, &qword_206418);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveReviewAndRatingEvent.reviewTypeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveReviewAndRatingEvent(0) + 20);
  v4 = sub_3D68(&qword_28BAD8, &qword_206418);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveReviewAndRatingEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveReviewAndRatingEvent(0) + 24);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveReviewAndRatingEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveReviewAndRatingEvent(0) + 24);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveReviewAndRatingEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveReviewAndRatingEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveReviewAndRatingEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveReviewAndRatingEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveReviewAndRatingEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RemoveReviewAndRatingEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_28BAD8, &qword_206418);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

uint64_t RemoveReviewAndRatingEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveReviewAndRatingEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveReviewAndRatingEvent.Model.init(contentData:reviewTypeData:upSellData:eventData:)@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *(a3 + 16);
  v9 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v9;
  v10 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v10;
  v11 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v11;
  *(a5 + 96) = v7;
  *(a5 + 104) = *a3;
  *(a5 + 120) = v8;
  v12 = *(type metadata accessor for RemoveReviewAndRatingEvent.Model(0) + 28);
  v13 = sub_1E1150();
  v14 = *(*(v13 - 8) + 32);

  return v14(a5 + v12, a4, v13);
}

uint64_t sub_17DDD8()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0x61446C6C65537075;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (*v0)
  {
    v1 = 0x7954776569766572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_17DE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_17F2FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_17DE98(uint64_t a1)
{
  v2 = sub_17E1F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_17DED4(uint64_t a1)
{
  v2 = sub_17E1F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RemoveReviewAndRatingEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28BAE0, &qword_206420);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_17E1F0();
  sub_1E1E00();
  v11 = *(v3 + 48);
  v12 = *(v3 + 16);
  v35 = *(v3 + 32);
  v36 = v11;
  v13 = *(v3 + 48);
  v14 = *(v3 + 80);
  v37 = *(v3 + 64);
  v38 = v14;
  v15 = *(v3 + 16);
  v34[0] = *v3;
  v34[1] = v15;
  v30 = v35;
  v31 = v13;
  v16 = *(v3 + 80);
  v32 = v37;
  v33 = v16;
  v28 = v34[0];
  v29 = v12;
  v40 = 0;
  sub_13A5C(v34, &v22);
  sub_143D0();
  sub_1E1CF0();
  if (v2)
  {
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v27 = v33;
    v22 = v28;
    v23 = v29;
    sub_14424(&v22);
  }

  else
  {
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v27 = v33;
    v22 = v28;
    v23 = v29;
    sub_14424(&v22);
    LOBYTE(v20) = *(v3 + 96);
    v39 = 1;
    sub_17E244();
    sub_1E1CF0();
    v17 = *(v3 + 120);
    v20 = *(v3 + 104);
    v21 = v17;
    v39 = 2;
    sub_28450();

    sub_1E1C80();

    v18 = *(type metadata accessor for RemoveReviewAndRatingEvent.Model(0) + 28);
    LOBYTE(v20) = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_17E1F0()
{
  result = qword_28BAE8;
  if (!qword_28BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BAE8);
  }

  return result;
}

unint64_t sub_17E244()
{
  result = qword_28BAF0;
  if (!qword_28BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BAF0);
  }

  return result;
}

uint64_t RemoveReviewAndRatingEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_1E1150();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_3D68(&qword_28BAF8, &qword_206428);
  v31 = *(v32 - 8);
  v8 = *(v31 + 64);
  __chkstk_darwin(v32);
  v10 = &v26 - v9;
  v11 = type metadata accessor for RemoveReviewAndRatingEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v33 = a1;
  sub_48B8(a1, v15);
  sub_17E1F0();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v33);
  }

  v27 = v11;
  v28 = v7;
  v17 = v31;
  v43 = 0;
  sub_14CB8();
  v18 = v32;
  sub_1E1C20();
  v19 = v39;
  v20 = v14;
  *(v14 + 2) = v38;
  *(v14 + 3) = v19;
  v21 = v41;
  *(v14 + 4) = v40;
  *(v14 + 5) = v21;
  v22 = v37;
  *v14 = v36;
  *(v14 + 1) = v22;
  v42 = 1;
  sub_17E71C();
  sub_1E1C20();
  v14[96] = v34;
  v42 = 2;
  sub_28EF4();
  sub_1E1BB0();
  v23 = v35;
  *(v14 + 104) = v34;
  *(v14 + 15) = v23;
  LOBYTE(v34) = 3;
  sub_14E5C(&qword_27D830);
  v24 = v28;
  sub_1E1C20();
  (*(v17 + 8))(v10, v18);
  (*(v29 + 32))(v20 + *(v27 + 28), v24, v4);
  sub_17E770(v20, v30);
  sub_4E48(v33);
  return sub_17E7D4(v20);
}

unint64_t sub_17E71C()
{
  result = qword_28BB00;
  if (!qword_28BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BB00);
  }

  return result;
}

uint64_t sub_17E770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveReviewAndRatingEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_17E7D4(uint64_t a1)
{
  v2 = type metadata accessor for RemoveReviewAndRatingEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_17E8D0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_28BAD8, &qword_206418);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v13 = *(*(v12 - 8) + 104);

  return v13(a2 + v11, v4, v12);
}

uint64_t sub_17EA68(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_28BAD8, &qword_206418);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_17EC34(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_28BAD8, &qword_206418);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_17EDF8()
{
  sub_17EF54(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_17EF54(319, &unk_28BB70, sub_17E71C, sub_17E244);
    if (v1 <= 0x3F)
    {
      sub_17EF54(319, &qword_27EAE8, sub_28EF4, sub_28450);
      if (v2 <= 0x3F)
      {
        sub_5684();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_17EF54(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_17EFE4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_17F0A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_17F148()
{
  sub_F43DC();
  if (v0 <= 0x3F)
  {
    sub_1E1150();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_17F1F8()
{
  result = qword_28BC40;
  if (!qword_28BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BC40);
  }

  return result;
}

unint64_t sub_17F250()
{
  result = qword_28BC48;
  if (!qword_28BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BC48);
  }

  return result;
}

unint64_t sub_17F2A8()
{
  result = qword_28BC50;
  if (!qword_28BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BC50);
  }

  return result;
}

uint64_t sub_17F2FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954776569766572 && a2 == 0xEE00617461446570 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

BookAnalytics::ReviewType_optional __swiftcall ReviewType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261590;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t ReviewType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x776569766572;
  if (*v0 != 2)
  {
    v2 = 0x6E41776569766572;
  }

  if (*v0)
  {
    v1 = 0x676E69746172;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_17F568()
{
  result = qword_28BC58;
  if (!qword_28BC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BC58);
  }

  return result;
}

Swift::Int sub_17F5BC()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_17F684()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_17F738()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_17F808(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE600000000000000;
  v5 = 0x776569766572;
  if (*v1 != 2)
  {
    v5 = 0x6E41776569766572;
    v4 = 0xEF676E6974615264;
  }

  if (*v1)
  {
    v3 = 0x676E69746172;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_17F94C()
{
  result = qword_28BC60;
  if (!qword_28BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BC60);
  }

  return result;
}

uint64_t YearInReviewExposureEvent.yIRSourceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_28BC98, &qword_206760);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t YearInReviewExposureEvent.yIRSourceData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_28BC98, &qword_206760);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t YearInReviewExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for YearInReviewExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t YearInReviewExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for YearInReviewExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t YearInReviewExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for YearInReviewExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t YearInReviewExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for YearInReviewExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t YearInReviewExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_28BC98, &qword_206760);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for YearInReviewExposureEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t YearInReviewExposureEvent.Model.yIRSourceData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[7];
  v25 = v1[8];
  v26 = v2;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[5];
  v7 = v1[3];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  *(a1 + 128) = v25;
  *(a1 + 144) = v4;
  *(a1 + 160) = v1[10];
  *(a1 + 64) = v6;
  *(a1 + 80) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v3;
  *a1 = v14;
  *(a1 + 16) = v13;
  v28 = *(v1 + 176);
  *(a1 + 176) = *(v1 + 176);
  *(a1 + 32) = v15;
  *(a1 + 48) = v7;
  return sub_142D24(v18, v17);
}

uint64_t YearInReviewExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for YearInReviewExposureEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t YearInReviewExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for YearInReviewExposureEvent.Model(0) + 24);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t YearInReviewExposureEvent.Model.init(yIRSourceData:eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 144);
  *(a4 + 128) = *(a1 + 128);
  *(a4 + 144) = v7;
  *(a4 + 160) = *(a1 + 160);
  *(a4 + 176) = *(a1 + 176);
  v8 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v8;
  v9 = *(a1 + 112);
  *(a4 + 96) = *(a1 + 96);
  *(a4 + 112) = v9;
  v10 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v10;
  v11 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v11;
  v12 = type metadata accessor for YearInReviewExposureEvent.Model(0);
  v13 = *(v12 + 20);
  v14 = sub_1E1150();
  (*(*(v14 - 8) + 32))(a4 + v13, a2, v14);
  v15 = *(v12 + 24);
  v16 = sub_1E11A0();
  v17 = *(*(v16 - 8) + 32);

  return v17(a4 + v15, a3, v16);
}

uint64_t sub_180208()
{
  v1 = 0x746144746E657665;
  if (*v0 != 1)
  {
    v1 = 0x74614464656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6372756F53524979;
  }
}

uint64_t sub_180278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_181680(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1802A0(uint64_t a1)
{
  v2 = sub_180674();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1802DC(uint64_t a1)
{
  v2 = sub_180674();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t YearInReviewExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28BCA0, &qword_206768);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_180674();
  v10 = v4;
  sub_1E1E00();
  v11 = v2[9];
  v12 = v2[7];
  v61 = v2[8];
  v62 = v11;
  v13 = v2[9];
  v63 = v2[10];
  v14 = v2[5];
  v15 = v2[3];
  v57 = v2[4];
  v58 = v14;
  v16 = v2[5];
  v17 = v2[7];
  v59 = v2[6];
  v60 = v17;
  v18 = v2[1];
  v54[0] = *v2;
  v54[1] = v18;
  v19 = v2[3];
  v21 = *v2;
  v20 = v2[1];
  v55 = v2[2];
  v56 = v19;
  v50 = v61;
  v51 = v13;
  v52 = v2[10];
  v46 = v57;
  v47 = v16;
  v48 = v59;
  v49 = v12;
  v42 = v21;
  v43 = v20;
  v64 = *(v2 + 176);
  v53 = *(v2 + 176);
  v44 = v55;
  v45 = v15;
  v41 = 0;
  sub_142D24(v54, &v29);
  sub_142DB8();
  v22 = v65;
  sub_1E1CF0();
  if (v22)
  {
    v37 = v50;
    v38 = v51;
    v39 = v52;
    v40 = v53;
    v33 = v46;
    v34 = v47;
    v35 = v48;
    v36 = v49;
    v29 = v42;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    sub_142C4C(&v29);
  }

  else
  {
    v37 = v50;
    v38 = v51;
    v39 = v52;
    v40 = v53;
    v33 = v46;
    v34 = v47;
    v35 = v48;
    v36 = v49;
    v29 = v42;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    sub_142C4C(&v29);
    v23 = type metadata accessor for YearInReviewExposureEvent.Model(0);
    v24 = *(v23 + 20);
    v28 = 1;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    v10 = v4;
    sub_1E1CF0();
    v25 = *(v23 + 24);
    v28 = 2;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v10);
}

unint64_t sub_180674()
{
  result = qword_28BCA8;
  if (!qword_28BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BCA8);
  }

  return result;
}

uint64_t YearInReviewExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = sub_1E11A0();
  v29 = *(v31 - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin(v31);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_3D68(&qword_28BCB0, &qword_206770);
  v34 = *(v36 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v36);
  v11 = &v28 - v10;
  v12 = type metadata accessor for YearInReviewExposureEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v52 = a1;
  sub_48B8(a1, v16);
  sub_180674();
  v35 = v11;
  v18 = v37;
  sub_1E1DF0();
  if (v18)
  {
    return sub_4E48(v52);
  }

  v19 = v15;
  v39 = 0;
  sub_142D60();
  sub_1E1C20();
  v20 = v49;
  *(v15 + 8) = v48;
  *(v15 + 9) = v20;
  *(v15 + 10) = v50;
  v15[176] = v51;
  v21 = v45;
  *(v15 + 4) = v44;
  *(v15 + 5) = v21;
  v22 = v47;
  *(v15 + 6) = v46;
  *(v15 + 7) = v22;
  v23 = v41;
  *v15 = v40;
  *(v15 + 1) = v23;
  v24 = v43;
  *(v15 + 2) = v42;
  *(v15 + 3) = v24;
  v38 = 1;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  sub_1E1C20();
  v37 = v12;
  (*(v33 + 32))(&v15[*(v12 + 20)], v8, v5);
  v38 = 2;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v25 = v31;
  v26 = v32;
  v28 = 0;
  sub_1E1C20();
  (*(v34 + 8))(v35, v36);
  (*(v29 + 32))(v19 + *(v37 + 24), v26, v25);
  sub_180BD4(v19, v30);
  sub_4E48(v52);
  return sub_180C38(v19);
}

uint64_t sub_180BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YearInReviewExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_180C38(uint64_t a1)
{
  v2 = type metadata accessor for YearInReviewExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_180D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_28BC98, &qword_206760);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_180E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_28BC98, &qword_206760);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_180FE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_28BC98, &qword_206760);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_181154()
{
  sub_1811F0();
  if (v0 <= 0x3F)
  {
    sub_5684();
    if (v1 <= 0x3F)
    {
      sub_5750();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1811F0()
{
  if (!qword_28BD20)
  {
    sub_142D60();
    sub_142DB8();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_28BD20);
    }
  }
}

uint64_t sub_18126C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 80);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1E1150();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1E11A0();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1813B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 80) = a2;
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1814D4()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    result = sub_1E11A0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_18157C()
{
  result = qword_28BDF0;
  if (!qword_28BDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BDF0);
  }

  return result;
}

unint64_t sub_1815D4()
{
  result = qword_28BDF8;
  if (!qword_28BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BDF8);
  }

  return result;
}

unint64_t sub_18162C()
{
  result = qword_28BE00;
  if (!qword_28BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BE00);
  }

  return result;
}

uint64_t sub_181680(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6372756F53524979 && a2 == 0xED00006174614465;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E1D30();

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

unint64_t sub_1817B4()
{
  if (*v0)
  {
    result = 0x54746E756F636361;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_1817FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000000002172A0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x54746E756F636361 && a2 == 0xEB00000000657079)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E1D30();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1818E8(uint64_t a1)
{
  v2 = sub_181EE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_181924(uint64_t a1)
{
  v2 = sub_181EE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AccountData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28BE08, &qword_206988);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_181EE0();
  sub_1E1E00();
  v17 = v9;
  v16 = 0;
  sub_181F34();
  sub_1E1CF0();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_181F88();
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t AccountData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28BE28, &qword_206990);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_181EE0();
  sub_1E1DF0();
  if (!v2)
  {
    v17 = 0;
    sub_181FDC();
    sub_1E1C20();
    v11 = v18;
    v15 = 1;
    sub_182030();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return sub_4E48(a1);
}

uint64_t _s13BookAnalytics11AccountDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  v5 = 0xE500000000000000;
  v6 = 0x6E49676F6CLL;
  if (v2 != 1)
  {
    v6 = 0x74754F676F6CLL;
    v5 = 0xE600000000000000;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6E49676F6CLL;
  if (*a2 != 1)
  {
    v10 = 0x74754F676F6CLL;
    v9 = 0xE600000000000000;
  }

  if (*a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  if (v7 == v11 && v8 == v12)
  {

    goto LABEL_21;
  }

  v13 = sub_1E1D30();

  v14 = 0;
  if (v13)
  {
LABEL_21:
    v15 = 0x64756F6C4369;
    if (v3 != 1)
    {
      v15 = 0x73656E755469;
    }

    if (v3)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v17 = 0xE600000000000000;
    }

    else
    {
      v17 = 0xE700000000000000;
    }

    if (v4)
    {
      v18 = 0xE600000000000000;
      if (v4 == 1)
      {
        if (v16 != 0x64756F6C4369)
        {
          goto LABEL_38;
        }
      }

      else if (v16 != 0x73656E755469)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v18 = 0xE700000000000000;
      if (v16 != 0x6E776F6E6B6E75)
      {
        goto LABEL_38;
      }
    }

    if (v17 == v18)
    {
      v14 = 1;
LABEL_39:

      return v14 & 1;
    }

LABEL_38:
    v14 = sub_1E1D30();
    goto LABEL_39;
  }

  return v14 & 1;
}

unint64_t sub_181EE0()
{
  result = qword_28BE10;
  if (!qword_28BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BE10);
  }

  return result;
}

unint64_t sub_181F34()
{
  result = qword_28BE18;
  if (!qword_28BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BE18);
  }

  return result;
}

unint64_t sub_181F88()
{
  result = qword_28BE20;
  if (!qword_28BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BE20);
  }

  return result;
}

unint64_t sub_181FDC()
{
  result = qword_28BE30;
  if (!qword_28BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BE30);
  }

  return result;
}

unint64_t sub_182030()
{
  result = qword_28BE38;
  if (!qword_28BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BE38);
  }

  return result;
}

unint64_t sub_1820B0()
{
  result = qword_28BE40;
  if (!qword_28BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BE40);
  }

  return result;
}

unint64_t sub_182108()
{
  result = qword_28BE48;
  if (!qword_28BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BE48);
  }

  return result;
}

unint64_t sub_182160()
{
  result = qword_28BE50;
  if (!qword_28BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BE50);
  }

  return result;
}

BookAnalytics::DialogActionType_optional __swiftcall DialogActionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261610;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 15;
  if (v5 < 0xF)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t DialogActionType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x6F4E657461647075;
      break;
    case 2:
      result = 0x614C657461647075;
      break;
    case 3:
      result = 27503;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x74754F6E676973;
      break;
    case 6:
      result = 0x746F67726F4669;
      break;
    case 7:
      result = 0x6C65636E6163;
      break;
    case 8:
    case 0xB:
      result = 0x74736F4D74726F73;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xC:
      result = 1701736302;
      break;
    case 0xD:
      result = 0x73676E6974746573;
      break;
    case 0xE:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1823E8(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = DialogActionType.rawValue.getter();
  v4 = v3;
  if (v2 == DialogActionType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1E1D30();
  }

  return v7 & 1;
}

unint64_t sub_182488()
{
  result = qword_28BE58;
  if (!qword_28BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BE58);
  }

  return result;
}

Swift::Int sub_1824DC()
{
  v1 = *v0;
  sub_1E1DC0();
  DialogActionType.rawValue.getter();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_182544()
{
  v2 = *v0;
  DialogActionType.rawValue.getter();
  sub_1E17D0();
}

Swift::Int sub_1825A8()
{
  v1 = *v0;
  sub_1E1DC0();
  DialogActionType.rawValue.getter();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_182618@<X0>(uint64_t *a1@<X8>)
{
  result = DialogActionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DialogActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DialogActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_182840()
{
  result = qword_28BE60;
  if (!qword_28BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BE60);
  }

  return result;
}

uint64_t sub_1828B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000000002172C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E1D30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_182944(uint64_t a1)
{
  v2 = sub_182CA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_182980(uint64_t a1)
{
  v2 = sub_182CA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RedownloadFailData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28BE68, &qword_206D00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_182CA4();
  sub_1E1E00();
  v12 = v8;
  sub_182CF8();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t RedownloadFailData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28BE80, &qword_206D08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_182CA4();
  sub_1E1DF0();
  if (!v2)
  {
    sub_182D4C();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_182CA4()
{
  result = qword_28BE70;
  if (!qword_28BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BE70);
  }

  return result;
}

unint64_t sub_182CF8()
{
  result = qword_28BE78;
  if (!qword_28BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BE78);
  }

  return result;
}

unint64_t sub_182D4C()
{
  result = qword_28BE88;
  if (!qword_28BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BE88);
  }

  return result;
}

unint64_t sub_182DCC()
{
  result = qword_28BE90;
  if (!qword_28BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BE90);
  }

  return result;
}

unint64_t sub_182E24()
{
  result = qword_28BE98;
  if (!qword_28BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BE98);
  }

  return result;
}

unint64_t sub_182E7C()
{
  result = qword_28BEA0;
  if (!qword_28BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BEA0);
  }

  return result;
}

uint64_t sub_182EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F73616552646E65 && a2 == 0xED0000657079546ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1D30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_182F88(uint64_t a1)
{
  v2 = sub_18333C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_182FC4(uint64_t a1)
{
  v2 = sub_18333C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SessionEndReasonData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28BEA8, &qword_206F30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_18333C();
  sub_1E1E00();
  v12 = v8;
  sub_183390();
  sub_1E1C80();
  return (*(v4 + 8))(v7, v3);
}

uint64_t SessionEndReasonData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28BEC0, &qword_206F38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_18333C();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1833E4();
    sub_1E1BB0();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

uint64_t _s13BookAnalytics20SessionEndReasonDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      return 1;
    }
  }

  else if (v3 != 4 && (sub_22BA0(v2, v3) & 1) != 0)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_18333C()
{
  result = qword_28BEB0;
  if (!qword_28BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BEB0);
  }

  return result;
}

unint64_t sub_183390()
{
  result = qword_28BEB8;
  if (!qword_28BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BEB8);
  }

  return result;
}

unint64_t sub_1833E4()
{
  result = qword_28BEC8;
  if (!qword_28BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BEC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionEndReasonData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t sub_183504()
{
  result = qword_28BED0;
  if (!qword_28BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BED0);
  }

  return result;
}

unint64_t sub_18355C()
{
  result = qword_28BED8;
  if (!qword_28BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BED8);
  }

  return result;
}

unint64_t sub_1835B4()
{
  result = qword_28BEE0;
  if (!qword_28BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BEE0);
  }

  return result;
}

uint64_t AnnotationActionEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotationActionEvent(0) + 20);
  v4 = sub_3D68(&qword_27F318, &unk_1E8408);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnnotationActionEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AnnotationActionEvent(0) + 20);
  v4 = sub_3D68(&qword_27F318, &unk_1E8408);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AnnotationActionEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotationActionEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnnotationActionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AnnotationActionEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AnnotationActionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AnnotationActionEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27F318, &unk_1E8408);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t AnnotationActionEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotationActionEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnnotationActionEvent.Model.init(contentData:viewData:eventData:)@<X0>(_OWORD *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v8;
  v9 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v9;
  v10 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v10;
  *(a4 + 96) = v6;
  *(a4 + 98) = v7;
  v11 = *(type metadata accessor for AnnotationActionEvent.Model(0) + 24);
  v12 = sub_1E1150();
  v13 = *(*(v12 - 8) + 32);

  return v13(a4 + v11, a3, v12);
}

uint64_t sub_183C08(uint64_t a1)
{
  v2 = sub_183F20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_183C44(uint64_t a1)
{
  v2 = sub_183F20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AnnotationActionEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28BF18, &qword_207158);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_183F20();
  sub_1E1E00();
  v10 = v2[2];
  v11 = v2[4];
  v39 = v2[3];
  v40 = v11;
  v12 = v2[4];
  v41 = v2[5];
  v13 = *v2;
  v14 = v2[2];
  v37 = v2[1];
  v38 = v14;
  v15 = *v2;
  v33 = v39;
  v34 = v12;
  v35 = v2[5];
  v36 = v15;
  v30 = v13;
  v31 = v37;
  v32 = v10;
  v29 = 0;
  sub_13A5C(&v36, &v23);
  sub_143D0();
  v16 = v42;
  sub_1E1CF0();
  if (v16)
  {
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v23 = v30;
    v24 = v31;
    sub_14424(&v23);
  }

  else
  {
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v23 = v30;
    v24 = v31;
    sub_14424(&v23);
    v17 = *(v2 + 98);
    v21 = *(v2 + 48);
    v22 = v17;
    v20[12] = 1;
    sub_B7B4();
    sub_1E1CF0();
    v18 = *(type metadata accessor for AnnotationActionEvent.Model(0) + 24);
    LOBYTE(v21) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_183F20()
{
  result = qword_28BF20;
  if (!qword_28BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28BF20);
  }

  return result;
}

uint64_t AnnotationActionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1E1150();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_3D68(&qword_28BF28, &qword_207160);
  v28 = *(v29 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v29);
  v10 = &v25 - v9;
  v11 = type metadata accessor for AnnotationActionEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v30 = a1;
  sub_48B8(a1, v15);
  sub_183F20();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v30);
  }

  v25 = v11;
  v17 = v28;
  v18 = v7;
  v40 = 0;
  sub_14CB8();
  v19 = v29;
  sub_1E1C20();
  v20 = v36;
  *(v14 + 2) = v35;
  *(v14 + 3) = v20;
  v21 = v38;
  *(v14 + 4) = v37;
  *(v14 + 5) = v21;
  v22 = v34;
  *v14 = v33;
  *(v14 + 1) = v22;
  v39 = 1;
  sub_B75C();
  sub_1E1C20();
  v23 = v32;
  *(v14 + 48) = v31;
  v14[98] = v23;
  LOBYTE(v31) = 2;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v10, v19);
  (*(v26 + 32))(&v14[*(v25 + 24)], v18, v4);
  sub_184378(v14, v27);
  sub_4E48(v30);
  return sub_1843DC(v14);
}

uint64_t sub_184378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnotationActionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1843DC(uint64_t a1)
{
  v2 = type metadata accessor for AnnotationActionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1844EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27F318, &unk_1E8408);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_184664(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27F318, &unk_1E8408);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1847E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1848A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_184960()
{
  result = qword_28C060;
  if (!qword_28C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C060);
  }

  return result;
}

unint64_t sub_1849B8()
{
  result = qword_28C068;
  if (!qword_28C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C068);
  }

  return result;
}

unint64_t sub_184A10()
{
  result = qword_28C070;
  if (!qword_28C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C070);
  }

  return result;
}

BookAnalytics::ListeningActionSourceType_optional __swiftcall ListeningActionSourceType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261798;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t ListeningActionSourceType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 6452085;
  if (v1 != 6)
  {
    v3 = 0x6863746177;
  }

  v4 = 0x6979616C50776F6ELL;
  if (v1 != 4)
  {
    v4 = 0x746F6F5465756C62;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000014;
  if (v1 != 2)
  {
    v5 = 0x79616C50726163;
  }

  if (*v0)
  {
    v2 = 0x7070416E69;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_184BC8()
{
  result = qword_28C078;
  if (!qword_28C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C078);
  }

  return result;
}

void sub_184C44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE300000000000000;
  v6 = 6452085;
  if (v2 != 6)
  {
    v6 = 0x6863746177;
    v5 = 0xE500000000000000;
  }

  v7 = 0xEA0000000000676ELL;
  v8 = 0x6979616C50776F6ELL;
  if (v2 != 4)
  {
    v8 = 0x746F6F5465756C62;
    v7 = 0xE900000000000068;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x80000000002130D0;
  v10 = 0xD000000000000014;
  if (v2 != 2)
  {
    v10 = 0x79616C50726163;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x7070416E69;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_184E00()
{
  result = qword_28C080;
  if (!qword_28C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C080);
  }

  return result;
}

uint64_t sub_184E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_185598();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_184EC8()
{
  sub_185534();
  sub_1E1490();
  return v1;
}

uint64_t View.appAnalyticsPositionInSection(_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_5DE50(&qword_28C0A0, &qword_2074B0);
  v7 = sub_1E1440();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v15 - v10;
  swift_getKeyPath();
  v15[2] = a1;
  a2 &= 1u;
  v16 = a2;
  sub_1E1500();

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = sub_1852DC();
  v15[0] = a4;
  v15[1] = v13;
  swift_getWitnessTable();
  sub_1E14F0();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1850BC@<X0>(uint64_t a1@<X8>)
{
  sub_185534();
  result = sub_1E1490();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_185114@<X0>(uint64_t a1@<X8>)
{
  sub_185534();
  result = sub_1E1490();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_18516C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_185534();
  return sub_1E14A0();
}

uint64_t sub_1851C0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_185534();
  return sub_1E14A0();
}

uint64_t sub_185214()
{
  if (qword_27D610 != -1)
  {
    swift_once();
  }

  v0 = sub_3D68(&qword_28C0B0, &unk_2074E0);
  sub_3B2C(v0, qword_28C088);
  sub_3D68(&qword_28C0B8, &qword_20E4D0);
  return sub_1E1710();
}

uint64_t sub_1852D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_185214();
}

unint64_t sub_1852DC()
{
  result = qword_28C0A8;
  if (!qword_28C0A8)
  {
    sub_5DE50(&qword_28C0A0, &qword_2074B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C0A8);
  }

  return result;
}

uint64_t sub_185340()
{
  v0 = sub_3D68(&qword_28C0B0, &unk_2074E0);
  sub_5F94(v0, qword_28C088);
  sub_3B2C(v0, qword_28C088);
  sub_3D68(&qword_28C0B8, &qword_20E4D0);
  return sub_1E1700();
}

uint64_t static MetricsFieldsContext.Property<A>.positionInSection.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D610 != -1)
  {
    swift_once();
  }

  v2 = sub_3D68(&qword_28C0B0, &unk_2074E0);
  v3 = sub_3B2C(v2, qword_28C088);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_185498(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_5DE50(&qword_28C0A0, &qword_2074B0);
  sub_1E1440();
  sub_1852DC();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_185534()
{
  result = qword_28C0C0;
  if (!qword_28C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C0C0);
  }

  return result;
}

unint64_t sub_185598()
{
  result = qword_28C0C8;
  if (!qword_28C0C8)
  {
    sub_5DE50(&qword_28C0B8, &qword_20E4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C0C8);
  }

  return result;
}

uint64_t ReportAnIssueEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAnIssueEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReportAnIssueEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportAnIssueEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReportAnIssueEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for ReportAnIssueEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t ReportAnIssueEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAnIssueEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReportAnIssueEvent.Model.init(contentData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1[3];
  *(a3 + 2) = a1[2];
  *(a3 + 3) = v5;
  v6 = a1[5];
  *(a3 + 4) = a1[4];
  *(a3 + 5) = v6;
  v7 = a1[1];
  *a3 = *a1;
  *(a3 + 1) = v7;
  v8 = *(type metadata accessor for ReportAnIssueEvent.Model(0) + 20);
  v9 = sub_1E1150();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a3[v8], a2, v9);
}

uint64_t sub_185A5C(uint64_t a1)
{
  v2 = sub_185D2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_185A98(uint64_t a1)
{
  v2 = sub_185D2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReportAnIssueEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28C100, &qword_207570);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v5);
  v8 = &v18[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_185D2C();
  sub_1E1E00();
  v10 = v3[2];
  v11 = v3[4];
  v30 = v3[3];
  v31 = v11;
  v12 = v3[4];
  v32 = v3[5];
  v13 = *v3;
  v14 = v3[2];
  v28 = v3[1];
  v29 = v14;
  v15 = *v3;
  v24 = v30;
  v25 = v12;
  v26 = v3[5];
  v27 = v15;
  v21 = v13;
  v22 = v28;
  v23 = v10;
  v20 = 0;
  sub_13A5C(&v27, v19);
  sub_143D0();
  sub_1E1CF0();
  v19[2] = v23;
  v19[3] = v24;
  v19[4] = v25;
  v19[5] = v26;
  v19[0] = v21;
  v19[1] = v22;
  sub_14424(v19);
  if (!v2)
  {
    v16 = *(type metadata accessor for ReportAnIssueEvent.Model(0) + 20);
    v18[15] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v33 + 8))(v8, v5);
}

unint64_t sub_185D2C()
{
  result = qword_28C108;
  if (!qword_28C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C108);
  }

  return result;
}

uint64_t ReportAnIssueEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1E1150();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_3D68(&qword_28C110, &qword_207578);
  v25 = *(v26 - 8);
  v8 = *(v25 + 64);
  __chkstk_darwin(v26);
  v10 = &v22 - v9;
  v11 = type metadata accessor for ReportAnIssueEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v27 = a1;
  sub_48B8(a1, v15);
  sub_185D2C();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v27);
  }

  v17 = v25;
  v35 = 0;
  sub_14CB8();
  sub_1E1C20();
  v18 = v31;
  *(v14 + 2) = v30;
  *(v14 + 3) = v18;
  v19 = v33;
  *(v14 + 4) = v32;
  *(v14 + 5) = v19;
  v20 = v29;
  *v14 = v28;
  *(v14 + 1) = v20;
  v34 = 1;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v10, v26);
  (*(v23 + 32))(&v14[*(v11 + 20)], v7, v4);
  sub_186120(v14, v24);
  sub_4E48(v27);
  return sub_186184(v14);
}

uint64_t sub_186120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportAnIssueEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_186184(uint64_t a1)
{
  v2 = type metadata accessor for ReportAnIssueEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_186280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_18636C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_186488(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_18659C()
{
  sub_58328();
  if (v0 <= 0x3F)
  {
    sub_5684();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_186634(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1866F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_186798()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_186828()
{
  result = qword_28C238;
  if (!qword_28C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C238);
  }

  return result;
}

unint64_t sub_186880()
{
  result = qword_28C240;
  if (!qword_28C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C240);
  }

  return result;
}

unint64_t sub_1868D8()
{
  result = qword_28C248;
  if (!qword_28C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C248);
  }

  return result;
}

uint64_t ReadingBrightnessChangeEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingBrightnessChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingBrightnessChangeEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingBrightnessChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingBrightnessChangeEvent.brightnessData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingBrightnessChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_28C280, &unk_207780);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingBrightnessChangeEvent.brightnessData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingBrightnessChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_28C280, &unk_207780);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingBrightnessChangeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingBrightnessChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingBrightnessChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingBrightnessChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingBrightnessChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReadingBrightnessChangeEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_28C280, &unk_207780);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t ReadingBrightnessChangeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingBrightnessChangeEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingBrightnessChangeEvent.Model.init(readingSessionData:contentData:brightnessData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 4);
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  v10 = *(a1 + 13);
  v11 = *(a1 + 14);
  v12 = *a3;
  *a5 = *a1;
  *(a5 + 4) = v7;
  *(a5 + 8) = v8;
  *(a5 + 12) = v9;
  *(a5 + 13) = v10;
  *(a5 + 14) = v11;
  v13 = a2[1];
  *(a5 + 16) = *a2;
  *(a5 + 32) = v13;
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[5];
  *(a5 + 80) = a2[4];
  *(a5 + 96) = v16;
  *(a5 + 48) = v14;
  *(a5 + 64) = v15;
  *(a5 + 112) = v12;
  v17 = *(type metadata accessor for ReadingBrightnessChangeEvent.Model(0) + 28);
  v18 = sub_1E1150();
  v19 = *(*(v18 - 8) + 32);

  return v19(a5 + v17, a4, v18);
}

unint64_t sub_187104()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0x656E746867697262;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_18719C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_188500(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1871C4(uint64_t a1)
{
  v2 = sub_18753C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_187200(uint64_t a1)
{
  v2 = sub_18753C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingBrightnessChangeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28C288, &qword_207790);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_18753C();
  sub_1E1E00();
  v10 = *(v2 + 4);
  v11 = v2[2];
  v12 = *(v2 + 12);
  v13 = *(v2 + 13);
  v14 = *(v2 + 14);
  v41 = *v2;
  v42 = v10;
  v43 = v11;
  v44 = v12;
  v45 = v13;
  v46 = v14;
  v40 = 0;
  sub_67BE8();
  v15 = v47;
  sub_1E1CF0();
  if (!v15)
  {
    v16 = *(v2 + 3);
    v17 = *(v2 + 5);
    v37 = *(v2 + 4);
    v38 = v17;
    v18 = *(v2 + 5);
    v39 = *(v2 + 6);
    v19 = *(v2 + 1);
    v20 = *(v2 + 3);
    v35 = *(v2 + 2);
    v36 = v20;
    v21 = *(v2 + 1);
    v31 = v37;
    v32 = v18;
    v33 = *(v2 + 6);
    v34 = v21;
    v28 = v19;
    v29 = v35;
    v30 = v16;
    v27 = 1;
    sub_13A5C(&v34, v26);
    sub_143D0();
    sub_1E1CF0();
    v26[2] = v30;
    v26[3] = v31;
    v26[4] = v32;
    v26[5] = v33;
    v26[0] = v28;
    v26[1] = v29;
    sub_14424(v26);
    v25 = v2[28];
    v24[11] = 2;
    sub_EC614();
    sub_1E1CF0();
    v22 = *(type metadata accessor for ReadingBrightnessChangeEvent.Model(0) + 28);
    LOBYTE(v25) = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_18753C()
{
  result = qword_28C290;
  if (!qword_28C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C290);
  }

  return result;
}

uint64_t ReadingBrightnessChangeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_1E1150();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_28C298, &qword_207798);
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for ReadingBrightnessChangeEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v34 = a1;
  sub_48B8(a1, v16);
  sub_18753C();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v34);
  }

  v29 = v12;
  v18 = v32;
  LOBYTE(v41) = 0;
  sub_686E8();
  sub_1E1C20();
  v19 = BYTE4(v35);
  v20 = DWORD2(v35);
  v21 = BYTE12(v35);
  v22 = BYTE13(v35);
  v23 = BYTE14(v35);
  *v15 = v35;
  v15[4] = v19;
  *(v15 + 2) = v20;
  v15[12] = v21;
  v15[13] = v22;
  v15[14] = v23;
  v43 = 1;
  sub_14CB8();
  sub_1E1C20();
  v24 = v38;
  *(v15 + 3) = v37;
  *(v15 + 4) = v24;
  v25 = v40;
  *(v15 + 5) = v39;
  *(v15 + 6) = v25;
  v26 = v36;
  *(v15 + 1) = v35;
  *(v15 + 2) = v26;
  v42 = 2;
  sub_EC5BC();
  sub_1E1C20();
  *(v15 + 28) = v41;
  LOBYTE(v41) = 3;
  sub_14E5C(&qword_27D830);
  v27 = v33;
  sub_1E1C20();
  (*(v18 + 8))(v11, v27);
  (*(v30 + 32))(&v15[*(v29 + 28)], v7, v4);
  sub_187990(v15, v31);
  sub_4E48(v34);
  return sub_1879F4(v15);
}

uint64_t sub_187990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingBrightnessChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1879F4(uint64_t a1)
{
  v2 = type metadata accessor for ReadingBrightnessChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_187AF0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_28C280, &unk_207780);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_187C74(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_3D68(&qword_28C280, &unk_207780);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_187E40(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_28C280, &unk_207780);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_188004()
{
  sub_188160(319, &qword_280E40, sub_686E8, sub_67BE8);
  if (v0 <= 0x3F)
  {
    sub_188160(319, &qword_27E2C8, sub_14CB8, sub_143D0);
    if (v1 <= 0x3F)
    {
      sub_188160(319, &unk_28C308, sub_EC5BC, sub_EC614);
      if (v2 <= 0x3F)
      {
        sub_5684();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_188160(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1881F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1882B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_188354()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1883FC()
{
  result = qword_28C3D8;
  if (!qword_28C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C3D8);
  }

  return result;
}

unint64_t sub_188454()
{
  result = qword_28C3E0;
  if (!qword_28C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C3E0);
  }

  return result;
}

unint64_t sub_1884AC()
{
  result = qword_28C3E8;
  if (!qword_28C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C3E8);
  }

  return result;
}

uint64_t sub_188500(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000000214400 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E746867697262 && a2 == 0xEE00617461447373 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t ReadingScrollViewSettingChangeEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingScrollViewSettingChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingScrollViewSettingChangeEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingScrollViewSettingChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingScrollViewSettingChangeEvent.scrollViewSettingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingScrollViewSettingChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_28C420, &unk_2079C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingScrollViewSettingChangeEvent.scrollViewSettingData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingScrollViewSettingChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_28C420, &unk_2079C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingScrollViewSettingChangeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingScrollViewSettingChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingScrollViewSettingChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingScrollViewSettingChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingScrollViewSettingChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReadingScrollViewSettingChangeEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_28C420, &unk_2079C0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t ReadingScrollViewSettingChangeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingScrollViewSettingChangeEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingScrollViewSettingChangeEvent.Model.init(readingSessionData:contentData:scrollViewSettingData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 4);
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  v10 = *(a1 + 13);
  v11 = *(a1 + 14);
  v12 = *a3;
  *a5 = *a1;
  *(a5 + 4) = v7;
  *(a5 + 8) = v8;
  *(a5 + 12) = v9;
  *(a5 + 13) = v10;
  *(a5 + 14) = v11;
  v13 = a2[1];
  *(a5 + 16) = *a2;
  *(a5 + 32) = v13;
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[5];
  *(a5 + 80) = a2[4];
  *(a5 + 96) = v16;
  *(a5 + 48) = v14;
  *(a5 + 64) = v15;
  *(a5 + 112) = v12;
  v17 = *(type metadata accessor for ReadingScrollViewSettingChangeEvent.Model(0) + 28);
  v18 = sub_1E1150();
  v19 = *(*(v18 - 8) + 32);

  return v19(a5 + v17, a4, v18);
}

unint64_t sub_188E50()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_188EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18A248(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_188F0C(uint64_t a1)
{
  v2 = sub_189284();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_188F48(uint64_t a1)
{
  v2 = sub_189284();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingScrollViewSettingChangeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28C428, &qword_2079D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_189284();
  sub_1E1E00();
  v10 = *(v2 + 4);
  v11 = v2[2];
  v12 = *(v2 + 12);
  v13 = *(v2 + 13);
  v14 = *(v2 + 14);
  v41 = *v2;
  v42 = v10;
  v43 = v11;
  v44 = v12;
  v45 = v13;
  v46 = v14;
  v40 = 0;
  sub_67BE8();
  v15 = v47;
  sub_1E1CF0();
  if (!v15)
  {
    v16 = *(v2 + 3);
    v17 = *(v2 + 5);
    v37 = *(v2 + 4);
    v38 = v17;
    v18 = *(v2 + 5);
    v39 = *(v2 + 6);
    v19 = *(v2 + 1);
    v20 = *(v2 + 3);
    v35 = *(v2 + 2);
    v36 = v20;
    v21 = *(v2 + 1);
    v31 = v37;
    v32 = v18;
    v33 = *(v2 + 6);
    v34 = v21;
    v28 = v19;
    v29 = v35;
    v30 = v16;
    v27 = 1;
    sub_13A5C(&v34, v26);
    sub_143D0();
    sub_1E1CF0();
    v26[2] = v30;
    v26[3] = v31;
    v26[4] = v32;
    v26[5] = v33;
    v26[0] = v28;
    v26[1] = v29;
    sub_14424(v26);
    v25 = *(v2 + 112);
    v24[14] = 2;
    sub_C02B4();
    sub_1E1CF0();
    v22 = *(type metadata accessor for ReadingScrollViewSettingChangeEvent.Model(0) + 28);
    v25 = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_189284()
{
  result = qword_28C430;
  if (!qword_28C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C430);
  }

  return result;
}

uint64_t ReadingScrollViewSettingChangeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_1E1150();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_28C438, &qword_2079D8);
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for ReadingScrollViewSettingChangeEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v34 = a1;
  sub_48B8(a1, v16);
  sub_189284();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v34);
  }

  v29 = v12;
  v18 = v32;
  v43 = 0;
  sub_686E8();
  sub_1E1C20();
  v19 = BYTE4(v35);
  v20 = DWORD2(v35);
  v21 = BYTE12(v35);
  v22 = BYTE13(v35);
  v23 = BYTE14(v35);
  *v15 = v35;
  v15[4] = v19;
  *(v15 + 2) = v20;
  v15[12] = v21;
  v15[13] = v22;
  v15[14] = v23;
  v43 = 1;
  sub_14CB8();
  sub_1E1C20();
  v24 = v38;
  *(v15 + 3) = v37;
  *(v15 + 4) = v24;
  v25 = v40;
  *(v15 + 5) = v39;
  *(v15 + 6) = v25;
  v26 = v36;
  *(v15 + 1) = v35;
  *(v15 + 2) = v26;
  v41 = 2;
  sub_C025C();
  sub_1E1C20();
  v15[112] = v42;
  v42 = 3;
  sub_14E5C(&qword_27D830);
  v27 = v33;
  sub_1E1C20();
  (*(v18 + 8))(v11, v27);
  (*(v30 + 32))(&v15[*(v29 + 28)], v7, v4);
  sub_1896D8(v15, v31);
  sub_4E48(v34);
  return sub_18973C(v15);
}

uint64_t sub_1896D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingScrollViewSettingChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18973C(uint64_t a1)
{
  v2 = type metadata accessor for ReadingScrollViewSettingChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_189838@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_28C420, &unk_2079C0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_1899BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_3D68(&qword_28C420, &unk_2079C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_189B88(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_28C420, &unk_2079C0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_189D4C()
{
  sub_189EA8(319, &qword_280E40, sub_686E8, sub_67BE8);
  if (v0 <= 0x3F)
  {
    sub_189EA8(319, &qword_27E2C8, sub_14CB8, sub_143D0);
    if (v1 <= 0x3F)
    {
      sub_189EA8(319, &unk_28C4A8, sub_C025C, sub_C02B4);
      if (v2 <= 0x3F)
      {
        sub_5684();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_189EA8(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_189F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_189FF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18A09C()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_18A144()
{
  result = qword_28C578;
  if (!qword_28C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C578);
  }

  return result;
}

unint64_t sub_18A19C()
{
  result = qword_28C580;
  if (!qword_28C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C580);
  }

  return result;
}

unint64_t sub_18A1F4()
{
  result = qword_28C588;
  if (!qword_28C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C588);
  }

  return result;
}

uint64_t sub_18A248(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000000214400 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000000217310 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t SearchSuggestionsReturnedEvent.searchSuggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchSuggestionsReturnedEvent(0) + 20);
  v4 = sub_3D68(&qword_2863F0, &qword_1FA280);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchSuggestionsReturnedEvent.searchSuggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchSuggestionsReturnedEvent(0) + 20);
  v4 = sub_3D68(&qword_2863F0, &qword_1FA280);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchSuggestionsReturnedEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchSuggestionsReturnedEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchSuggestionsReturnedEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchSuggestionsReturnedEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchSuggestionsReturnedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchSuggestionsReturnedEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_2863F0, &qword_1FA280);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SearchSuggestionsReturnedEvent.Model.searchSuggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t SearchSuggestionsReturnedEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchSuggestionsReturnedEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchSuggestionsReturnedEvent.Model.init(searchData:searchSuggestionData:eventData:)@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *a2;
  v9 = *(a2 + 1);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  *(a4 + 32) = v8;
  *(a4 + 40) = v9;
  v10 = *(type metadata accessor for SearchSuggestionsReturnedEvent.Model(0) + 24);
  v11 = sub_1E1150();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t sub_18A9D4()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0x746144746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6144686372616573;
  }
}

uint64_t sub_18AA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18BB30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18AA64(uint64_t a1)
{
  v2 = sub_18AD24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_18AAA0(uint64_t a1)
{
  v2 = sub_18AD24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchSuggestionsReturnedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28C5C0, &qword_207C08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_18AD24();
  sub_1E1E00();
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[3];
  v19 = *v3;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v18 = 0;
  sub_81E44();

  sub_1E1CF0();

  if (!v2)
  {
    v14 = v3[5];
    LODWORD(v19) = *(v3 + 8);
    v20 = v14;
    v18 = 1;
    sub_F7474();

    sub_1E1CF0();

    v15 = *(type metadata accessor for SearchSuggestionsReturnedEvent.Model(0) + 24);
    LOBYTE(v19) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_18AD24()
{
  result = qword_28C5C8;
  if (!qword_28C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C5C8);
  }

  return result;
}

uint64_t SearchSuggestionsReturnedEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1E1150();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_28C5D0, &qword_207C10);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for SearchSuggestionsReturnedEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v30 = a1;
  sub_48B8(a1, v16);
  sub_18AD24();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v30);
  }

  v18 = v28;
  v19 = v15;
  v25 = v7;
  v34 = 0;
  sub_826DC();
  v20 = v29;
  sub_1E1C20();
  v21 = v32;
  v22 = v33;
  *v19 = v31;
  *(v19 + 16) = v21;
  *(v19 + 24) = v22;
  v34 = 1;
  sub_F7894();
  sub_1E1C20();
  v23 = *(&v31 + 1);
  *(v19 + 32) = v31;
  *(v19 + 40) = v23;
  LOBYTE(v31) = 2;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v18 + 8))(v11, v20);
  (*(v26 + 32))(v19 + *(v12 + 24), v25, v4);
  sub_18B114(v19, v27);
  sub_4E48(v30);
  return sub_18B178(v19);
}

uint64_t sub_18B114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchSuggestionsReturnedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B178(uint64_t a1)
{
  v2 = type metadata accessor for SearchSuggestionsReturnedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_2863F0, &qword_1FA280);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_18B3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_281D58, &qword_1EE340);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_2863F0, &qword_1FA280);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_18B524(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_281D58, &qword_1EE340);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_2863F0, &qword_1FA280);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_18B694()
{
  sub_18B7A0(319, &qword_281E38, sub_826DC, sub_81E44);
  if (v0 <= 0x3F)
  {
    sub_18B7A0(319, &unk_286490, sub_F7894, sub_F7474);
    if (v1 <= 0x3F)
    {
      sub_5684();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18B7A0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_18B830(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18B8F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18B994()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_18BA2C()
{
  result = qword_28C708;
  if (!qword_28C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C708);
  }

  return result;
}

unint64_t sub_18BA84()
{
  result = qword_28C710;
  if (!qword_28C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C710);
  }

  return result;
}

unint64_t sub_18BADC()
{
  result = qword_28C718;
  if (!qword_28C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C718);
  }

  return result;
}