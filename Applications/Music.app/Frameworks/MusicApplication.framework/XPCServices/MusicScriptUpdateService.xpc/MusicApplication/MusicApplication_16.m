uint64_t sub_10019C528()
{
  v1 = v0;
  v2 = *v0;
  sub_100003ABC(&qword_1006012C8);
  v3 = sub_1004BD3C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v17 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      sub_1004BDBA4();
      sub_1004BBF84();

      v12 = sub_1004BDBF4();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_29;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v10 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x10019C8D0);
      }

      if (v5 >= v9)
      {
        break;
      }

      v19 = *(v2 + 56 + 8 * v5);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v8 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v1 = v0;
  }

  else
  {
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10019C904()
{
  v1 = v0;
  v2 = *v0;
  sub_100003ABC(&qword_1006012A8);
  result = sub_1004BD3C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1004BDBA4();
      sub_1004BDBB4(v15);
      result = sub_1004BDBF4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10019CB24()
{
  v1 = v0;
  v2 = *v0;
  sub_100003ABC(&qword_100605088);
  result = sub_1004BD3C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1004BDB94();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10019CD14()
{
  v1 = v0;
  v2 = *v0;
  sub_100003ABC(&qword_100605068);
  result = sub_1004BD3C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1004BDBA4();

      sub_1004BBF84();
      result = sub_1004BDBF4();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10019CF4C()
{
  v1 = v0;
  v2 = *v0;
  sub_100003ABC(&qword_100601368);
  result = sub_1004BD3C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1004BDBA4();
      ActionType.rawValue.getter(v16);
      sub_1004BBF84();

      result = sub_1004BDBF4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10019D1B8()
{
  v1 = v0;
  v2 = *v0;
  sub_100003ABC(&qword_100605078);
  result = sub_1004BD3C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      sub_1004BDBA4();
      sub_1004BBF84();

      result = sub_1004BDBF4();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10019D594()
{
  v1 = v0;
  v35 = sub_1004BB214();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_100003ABC(&qword_1006050F8);
  result = sub_1004BD3C4();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1001A4478(&qword_100603EA8, &type metadata accessor for AudioVariant);
      result = sub_1004BBCD4();
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_10019D8F0()
{
  v1 = v0;
  v2 = *v0;
  sub_100003ABC(&qword_100605070);
  result = sub_1004BD3C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1004BBE64();
      sub_1004BDBA4();
      sub_1004BBF84();
      v17 = sub_1004BDBF4();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10019DB6C()
{
  v1 = v0;
  v2 = *v0;
  sub_100003ABC(&qword_1006050F0);
  result = sub_1004BD3C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1004BDBA4();
      sub_1004BDBB4(v16);
      result = sub_1004BDBF4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10019DDBC()
{
  v1 = v0;
  v2 = *v0;
  sub_100003ABC(&qword_1006012E0);
  result = sub_1004BD3C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v25 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1004B84F4();
      sub_1001A4478(&qword_1006012E8, &type metadata accessor for AnyCancellable);
      result = sub_1004BBCD4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero(v6, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10019E050()
{
  v1 = v0;
  v2 = *v0;
  sub_100003ABC(&qword_1006012C8);
  v3 = sub_1004BD3C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      sub_1004BDBA4();
      sub_1004BBF84();

      v12 = sub_1004BDBF4();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_31;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        JUMPOUT(0x10019E428);
      }

      if (v5 >= v10)
      {
        break;
      }

      v19 = v6[v5];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10019E45C()
{
  v1 = v0;
  v2 = *v0;
  sub_100003ABC(&qword_1006012A8);
  result = sub_1004BD3C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1004BDBA4();
      sub_1004BDBB4(v16);
      result = sub_1004BDBF4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10019E6AC()
{
  v1 = v0;
  v2 = *v0;
  sub_100003ABC(&qword_100605088);
  result = sub_1004BD3C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1004BDB94();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10019E8D0()
{
  v1 = v0;
  v2 = *v0;
  sub_100003ABC(&qword_100605068);
  result = sub_1004BD3C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1004BDBA4();
      sub_1004BBF84();
      result = sub_1004BDBF4();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10019EB30(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003ABC(&qword_1006012E0);
    v2 = sub_1004BD3D4();
    v14 = v2;
    sub_1004BD324();
    if (sub_1004BD354())
    {
      sub_1004B84F4();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_10019DDBC();
        }

        v2 = v14;
        sub_1001A4478(&qword_1006012E8, &type metadata accessor for AnyCancellable);
        result = sub_1004BBCD4();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1004BD354());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_10019ED64(uint64_t a1, uint64_t a2)
{
  sub_1004B84F4();
  sub_1001A4478(&qword_1006012E8, &type metadata accessor for AnyCancellable);
  sub_1004BBCD4();
  result = sub_1004BD314();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_10019EE4C(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_10019CF4C();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_10019B16C(&qword_100601368);
      goto LABEL_16;
    }

    sub_10019B538();
  }

  v9 = *v3;
  sub_1004BDBA4();
  ActionType.rawValue.getter(v6);
  sub_1004BBF84();

  result = sub_1004BDBF4();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = ActionType.rawValue.getter(*(*(v9 + 48) + a2));
      v14 = v13;
      if (v12 == ActionType.rawValue.getter(v6) && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_1004BD9C4();

      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v6;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1004BDA94();
  __break(1u);
  return result;
}

Swift::Int sub_10019F034(Swift::Int result, unint64_t a2, char a3)
{
  v36 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_84;
  }

  if (a3)
  {
    sub_10019D1B8();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_10019B16C(&qword_100605078);
      goto LABEL_84;
    }

    sub_10019B774();
  }

  v7 = *v3;
  sub_1004BDBA4();
  ApplicationCapabilities.Service.rawValue.getter(v36);
  sub_1004BBF84();

  result = sub_1004BDBF4();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v35 = ~v8;
    v9 = 0xEB00000000736F65;
    v10 = 0x80000001004FB9A0;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 <= 4)
      {
        if (v11 == 3)
        {
          v14 = 0x6C6169636F73;
        }

        else
        {
          v14 = 0x6F69646172;
        }

        if (v11 == 3)
        {
          v15 = 0xE600000000000000;
        }

        else
        {
          v15 = 0xE500000000000000;
        }

        if (v11 == 2)
        {
          v14 = 0xD000000000000013;
          v15 = v10;
        }

        v16 = *(*(v7 + 48) + a2) ? 0x646956636973756DLL : 0x636973756DLL;
        v17 = *(*(v7 + 48) + a2) ? v9 : 0xE500000000000000;
        v12 = *(*(v7 + 48) + a2) <= 1u ? v16 : v14;
        v13 = *(*(v7 + 48) + a2) <= 1u ? v17 : v15;
      }

      else if (*(*(v7 + 48) + a2) > 7u)
      {
        if (v11 == 8)
        {
          v12 = 0xD000000000000013;
          v13 = 0x80000001004FB9E0;
        }

        else if (v11 == 9)
        {
          v12 = 0xD000000000000011;
          v13 = 0x80000001004FBA00;
        }

        else
        {
          v12 = 0x6C62616E45696C6DLL;
          v13 = 0xEA00000000006465;
        }
      }

      else if (v11 == 5)
      {
        v13 = 0xE600000000000000;
        v12 = 0x73656E757469;
      }

      else if (v11 == 6)
      {
        v12 = 0x74634170756F7267;
        v13 = 0xED00007974697669;
      }

      else
      {
        v12 = 0x746963696C707865;
        v13 = 0xEF746E65746E6F43;
      }

      v18 = 0xD000000000000011;
      if (v36 != 9)
      {
        v18 = 0x6C62616E45696C6DLL;
      }

      v19 = 0xEA00000000006465;
      if (v36 == 9)
      {
        v19 = 0x80000001004FBA00;
      }

      if (v36 == 8)
      {
        v18 = 0xD000000000000013;
        v19 = 0x80000001004FB9E0;
      }

      v20 = 0x746963696C707865;
      if (v36 == 6)
      {
        v20 = 0x74634170756F7267;
      }

      v21 = 0xEF746E65746E6F43;
      if (v36 == 6)
      {
        v21 = 0xED00007974697669;
      }

      if (v36 == 5)
      {
        v20 = 0x73656E757469;
        v21 = 0xE600000000000000;
      }

      if (v36 <= 7u)
      {
        v18 = v20;
        v19 = v21;
      }

      if (v36 == 3)
      {
        v22 = 0x6C6169636F73;
      }

      else
      {
        v22 = 0x6F69646172;
      }

      if (v36 == 3)
      {
        v23 = 0xE600000000000000;
      }

      else
      {
        v23 = 0xE500000000000000;
      }

      if (v36 == 2)
      {
        v22 = 0xD000000000000013;
      }

      v24 = v10;
      if (v36 == 2)
      {
        v23 = v10;
      }

      if (v36)
      {
        v25 = 0x646956636973756DLL;
      }

      else
      {
        v25 = 0x636973756DLL;
      }

      v26 = v9;
      if (!v36)
      {
        v9 = 0xE500000000000000;
      }

      if (v36 <= 1u)
      {
        v22 = v25;
        v23 = v9;
      }

      v27 = v36 <= 4u ? v22 : v18;
      v28 = v36 <= 4u ? v23 : v19;
      if (v12 == v27 && v13 == v28)
      {
        goto LABEL_87;
      }

      v29 = sub_1004BD9C4();

      if (v29)
      {
        goto LABEL_88;
      }

      a2 = (a2 + 1) & v35;
      v9 = v26;
      v10 = v24;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_84:
  v30 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v30 + 48) + a2) = v36;
  v31 = *(v30 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (!v32)
  {
    *(v30 + 16) = v33;
    return result;
  }

  __break(1u);
LABEL_87:

LABEL_88:
  result = sub_1004BDA94();
  __break(1u);
  return result;
}

uint64_t sub_10019F498(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1004BB214();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10019D594();
  }

  else
  {
    if (v11 > v10)
    {
      sub_10019AB40();
      goto LABEL_12;
    }

    sub_10019BB20();
  }

  v12 = *v3;
  sub_1001A4478(&qword_100603EA8, &type metadata accessor for AudioVariant);
  v13 = sub_1004BBCD4();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1001A4478(&qword_100603EB0, &type metadata accessor for AudioVariant);
      v21 = sub_1004BBD84();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004BDA94();
  __break(1u);
  return result;
}

uint64_t sub_10019F73C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_10019D8F0();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_10019AD78();
      goto LABEL_16;
    }

    sub_10019BE3C();
  }

  v9 = *v3;
  sub_1004BBE64();
  sub_1004BDBA4();
  sub_1004BBF84();
  v10 = sub_1004BDBF4();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for Name(0);
    do
    {
      v13 = sub_1004BBE64();
      v15 = v14;
      if (v13 == sub_1004BBE64() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_1004BD9C4();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1004BDA94();
  __break(1u);
  return result;
}

Swift::Int sub_10019F924(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10019DB6C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10019AEC8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10019C090();
  }

  v8 = *v3;
  sub_1004BDBA4();
  sub_1004BDBB4(v4 & 1);
  result = sub_1004BDBF4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4 & 1;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004BDA94();
  __break(1u);
  return result;
}

uint64_t sub_10019FA78(uint64_t result, unint64_t a2, char a3)
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
    sub_10019DDBC();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_10019B008();
      goto LABEL_12;
    }

    sub_10019C2B0();
  }

  v8 = *v3;
  sub_1004B84F4();
  sub_1001A4478(&qword_1006012E8, &type metadata accessor for AnyCancellable);
  result = sub_1004BBCD4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1001A4478(&qword_1006012F0, &type metadata accessor for AnyCancellable);
    do
    {
      result = sub_1004BBD84();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004BDA94();
  __break(1u);
  return result;
}

Swift::Int sub_10019FC60(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10019E050();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_10019B16C(&qword_1006012C8);
        goto LABEL_40;
      }

      sub_10019C528();
    }

    v8 = *v3;
    sub_1004BDBA4();
    Library.Menu.Identifier.rawValue.getter(v5);
    sub_1004BBF84();

    result = sub_1004BDBF4();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      while (1)
      {
        v11 = 0xD000000000000029;
        v12 = "orites";
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v11 = 0xD000000000000025;
            v12 = "LibraryView.RecentlyAdded";
            break;
          case 2:
            v11 = 0xD000000000000023;
            v12 = "LibraryView.Playlists";
            break;
          case 3:
            v11 = 0xD000000000000022;
            v12 = "LibraryView.Artists";
            break;
          case 4:
            v11 = 0xD000000000000021;
            v12 = "LibraryView.Albums";
            break;
          case 5:
            v11 = 0xD000000000000026;
            v12 = "LibraryView.Songs";
            break;
          case 6:
            v11 = 0xD000000000000027;
            v12 = "LibraryView.MadeForYou";
            break;
          case 7:
            v11 = 0xD000000000000022;
            v12 = "LibraryView.MusicVideos";
            break;
          case 8:
            v11 = 0xD000000000000028;
            v12 = "LibraryView.Genres";
            break;
          case 9:
            v11 = 0xD000000000000025;
            v12 = "LibraryView.Compilations";
            break;
          case 0xA:
            v11 = 0xD000000000000021;
            v12 = "LibraryView.Composers";
            break;
          case 0xB:
            v11 = 0xD000000000000026;
            v12 = "LibraryView.Shows";
            break;
          case 0xC:
            v11 = 0xD000000000000027;
            v12 = "LibraryView.Downloaded";
            break;
          default:
            break;
        }

        v13 = v12 | 0x8000000000000000;
        v14 = 0xD000000000000029;
        v15 = "orites";
        switch(v5)
        {
          case 1:
            v14 = 0xD000000000000025;
            v15 = "LibraryView.RecentlyAdded";
            break;
          case 2:
            v14 = 0xD000000000000023;
            v15 = "LibraryView.Playlists";
            break;
          case 3:
            v14 = 0xD000000000000022;
            v15 = "LibraryView.Artists";
            break;
          case 4:
            v14 = 0xD000000000000021;
            v15 = "LibraryView.Albums";
            break;
          case 5:
            v14 = 0xD000000000000026;
            v15 = "LibraryView.Songs";
            break;
          case 6:
            v14 = 0xD000000000000027;
            v15 = "LibraryView.MadeForYou";
            break;
          case 7:
            v14 = 0xD000000000000022;
            v15 = "LibraryView.MusicVideos";
            break;
          case 8:
            v14 = 0xD000000000000028;
            v15 = "LibraryView.Genres";
            break;
          case 9:
            v14 = 0xD000000000000025;
            v15 = "LibraryView.Compilations";
            break;
          case 10:
            v14 = 0xD000000000000021;
            v15 = "LibraryView.Composers";
            break;
          case 11:
            v14 = 0xD000000000000026;
            v15 = "LibraryView.Shows";
            break;
          case 12:
            v14 = 0xD000000000000027;
            v15 = "LibraryView.Downloaded";
            break;
          default:
            break;
        }

        if (v11 == v14 && v13 == (v15 | 0x8000000000000000))
        {
          break;
        }

        v16 = sub_1004BD9C4();

        if (v16)
        {
          goto LABEL_44;
        }

        a2 = (a2 + 1) & v10;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

LABEL_43:

LABEL_44:
      sub_1004BDA94();
      __break(1u);
      JUMPOUT(0x1001A0064);
    }
  }

LABEL_40:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
    goto LABEL_43;
  }

  *(v17 + 16) = v20;
  return result;
}

Swift::Int sub_1001A00CC(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10019E45C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10019B16C(&qword_1006012A8);
      a2 = v7;
      goto LABEL_12;
    }

    sub_10019C904();
  }

  v8 = *v3;
  sub_1004BDBA4();
  sub_1004BDBB4(v4);
  result = sub_1004BDBF4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004BDA94();
  __break(1u);
  return result;
}

uint64_t sub_1001A022C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10019E6AC();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10019B29C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10019CB24();
  }

  v8 = *v3;
  result = sub_1004BDB94();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004BDA94();
  __break(1u);
  return result;
}

Swift::Int sub_1001A034C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_10019E8D0();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10019B3DC();
      goto LABEL_16;
    }

    sub_10019CD14();
  }

  v10 = *v4;
  sub_1004BDBA4();
  sub_1004BBF84();
  result = sub_1004BDBF4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1004BD9C4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1004BDA94();
  __break(1u);
  return result;
}

void *sub_1001A04CC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v9 = sub_1001A251C(v8, a2, a3, a5);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_1001A0580(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1004BB214();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100003ABC(&qword_1006050F8);
  result = sub_1004BD3E4();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1001A4478(&qword_100603EA8, &type metadata accessor for AudioVariant);
    result = sub_1004BBCD4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

_BYTE *sub_1001A08A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
    goto LABEL_6;
  }

  v5 = a3;
  if (*(a4 + 16) != a3)
  {
    sub_100003ABC(&qword_1006012C8);
    v8 = sub_1004BD3E4();
    v9 = v8;
    if (a2 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = *a1;
    }

    v12 = 0;
    v13 = v8 + 56;
    while (1)
    {
      if (v10)
      {
        v14 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        goto LABEL_17;
      }

      v15 = v12;
      do
      {
        v12 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          JUMPOUT(0x1001A0C38);
        }

        if (v12 >= a2)
        {
          goto LABEL_6;
        }

        v16 = a1[v12];
        ++v15;
      }

      while (!v16);
      v14 = __clz(__rbit64(v16));
      v10 = (v16 - 1) & v16;
LABEL_17:
      v17 = *(*(v4 + 48) + (v14 | (v12 << 6)));
      sub_1004BDBA4();
      sub_1004BBF84();

      v18 = sub_1004BDBF4();
      v19 = -1 << v9[32];
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) != 0)
      {
        v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = 0;
        v24 = (63 - v19) >> 6;
        do
        {
          if (++v21 == v24 && (v23 & 1) != 0)
          {
            goto LABEL_31;
          }

          v25 = v21 == v24;
          if (v21 == v24)
          {
            v21 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v21);
        }

        while (v26 == -1);
        v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      }

      *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v9 + 6) + v22) = v17;
      ++*(v9 + 2);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_32;
      }

      if (!v5)
      {
LABEL_6:

        return v9;
      }
    }
  }

  return v4;
}

uint64_t sub_1001A0C6C(uint64_t result)
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
        result = sub_100129808(*(*(v2 + 48) + (v10 | (v9 << 6))));
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

_BYTE *sub_1001A0D60(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (*(a2 + 16))
  {
    v6 = a1;
    v58 = 0;
    v7 = *(a1 + 56);
    v78 = a1 + 56;
    v8 = -1 << *(a1 + 32);
    v77 = ~v8;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v7;
    v63 = (63 - v8) >> 6;
    v81 = (a2 + 56);

    v79 = 0;
    v76 = "LibraryView.RecentlyAdded";
    v75 = "LibraryView.Playlists";
    v74 = "LibraryView.Artists";
    v73 = "LibraryView.Albums";
    v72 = "LibraryView.Songs";
    v71 = "LibraryView.MadeForYou";
    v70 = "LibraryView.MusicVideos";
    v69 = "LibraryView.Genres";
    v68 = "LibraryView.Compilations";
    v67 = "LibraryView.Composers";
    v66 = "LibraryView.Shows";
    v65 = "LibraryView.Downloaded";
    do
    {
LABEL_6:
      if (!v10)
      {
        v12 = v78;
        v13 = v79;
        while (1)
        {
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v14 >= v63)
          {
            goto LABEL_105;
          }

          v10 = *(v78 + 8 * v14);
          ++v13;
          if (v10)
          {
            v79 = v14;
            goto LABEL_13;
          }
        }

LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      v12 = v78;
LABEL_13:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = *(*(v6 + 48) + (v15 | (v79 << 6)));
      v83 = v6;
      v84 = v12;
      v85 = v77;
      v86 = v79;
      v87 = v10;
      sub_1004BDBA4();
      v80 = v16;
      Library.Menu.Identifier.rawValue.getter(v16);
      sub_1004BBF84();

      v17 = sub_1004BDBF4();
      v18 = -1 << v5[32];
      v2 = v17 & ~v18;
      v3 = v2 >> 6;
      v4 = 1 << v2;
    }

    while (((1 << v2) & v81[v2 >> 6]) == 0);
    v64 = v6;
    v19 = ~v18;
    while (1)
    {
      v20 = 0xD000000000000029;
      v21 = "orites";
      switch(*(*(v5 + 6) + v2))
      {
        case 1:
          v20 = 0xD000000000000025;
          v22 = &v99;
          goto LABEL_28;
        case 2:
          v20 = 0xD000000000000023;
          v22 = &v98;
          goto LABEL_28;
        case 3:
          v20 = 0xD000000000000022;
          v22 = &v97;
          goto LABEL_28;
        case 4:
          v20 = 0xD000000000000021;
          v22 = &v96;
          goto LABEL_28;
        case 5:
          v20 = 0xD000000000000026;
          v22 = &v95;
          goto LABEL_28;
        case 6:
          v20 = 0xD000000000000027;
          v22 = &v94;
          goto LABEL_28;
        case 7:
          v20 = 0xD000000000000022;
          v22 = &v93;
          goto LABEL_28;
        case 8:
          v20 = 0xD000000000000028;
          v22 = &v92;
          goto LABEL_28;
        case 9:
          v20 = 0xD000000000000025;
          v22 = &v91;
          goto LABEL_28;
        case 0xA:
          v20 = 0xD000000000000021;
          v22 = &v90;
          goto LABEL_28;
        case 0xB:
          v20 = 0xD000000000000026;
          v22 = &v89;
          goto LABEL_28;
        case 0xC:
          v20 = 0xD000000000000027;
          v22 = &v88;
LABEL_28:
          v21 = *(v22 - 32);
          break;
        default:
          break;
      }

      v23 = v21 | 0x8000000000000000;
      v24 = 0xD000000000000029;
      v25 = "orites";
      switch(v80)
      {
        case 1:
          v24 = 0xD000000000000025;
          v26 = &v99;
          goto LABEL_42;
        case 2:
          v24 = 0xD000000000000023;
          v26 = &v98;
          goto LABEL_42;
        case 3:
          v24 = 0xD000000000000022;
          v26 = &v97;
          goto LABEL_42;
        case 4:
          v24 = 0xD000000000000021;
          v26 = &v96;
          goto LABEL_42;
        case 5:
          v24 = 0xD000000000000026;
          v26 = &v95;
          goto LABEL_42;
        case 6:
          v24 = 0xD000000000000027;
          v26 = &v94;
          goto LABEL_42;
        case 7:
          v24 = 0xD000000000000022;
          v26 = &v93;
          goto LABEL_42;
        case 8:
          v24 = 0xD000000000000028;
          v26 = &v92;
          goto LABEL_42;
        case 9:
          v24 = 0xD000000000000025;
          v26 = &v91;
          goto LABEL_42;
        case 10:
          v24 = 0xD000000000000021;
          v26 = &v90;
          goto LABEL_42;
        case 11:
          v24 = 0xD000000000000026;
          v26 = &v89;
          goto LABEL_42;
        case 12:
          v24 = 0xD000000000000027;
          v26 = &v88;
LABEL_42:
          v25 = *(v26 - 32);
          break;
        default:
          break;
      }

      if (v20 == v24 && v23 == (v25 | 0x8000000000000000))
      {
        break;
      }

      v27 = sub_1004BD9C4();

      if (v27)
      {
        goto LABEL_51;
      }

      v2 = (v2 + 1) & v19;
      v3 = v2 >> 6;
      v4 = 1 << v2;
      if ((v81[v2 >> 6] & (1 << v2)) == 0)
      {
        v6 = v64;
        goto LABEL_6;
      }
    }

LABEL_51:
    v29 = v5[32];
    v59 = ((1 << v29) + 63) >> 6;
    v11 = 8 * v59;
    if ((v29 & 0x3Fu) <= 0xD)
    {
      goto LABEL_52;
    }

LABEL_109:
    v53 = v11;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v54 = swift_slowAlloc();
      memcpy(v54, v81, v53);
      v55 = v58;
      v56 = sub_1001A1838(v54, v59, v5, v2, &v83);

      if (v55)
      {

        __break(1u);
        JUMPOUT(0x1001A1768);
      }

      v5 = v56;
      goto LABEL_105;
    }

LABEL_52:
    v60 = &v57;
    __chkstk_darwin(v28);
    v31 = &v57 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v81, v30);
    v32 = *&v31[8 * v3] & ~v4;
    v33 = *(v5 + 2);
    v62 = v31;
    *&v31[8 * v3] = v32;
    v34 = v33 - 1;
LABEL_53:
    v61 = v34;
LABEL_54:
    while (v10)
    {
      v35 = v78;
LABEL_61:
      v38 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v3 = *(*(v64 + 48) + (v38 | (v79 << 6)));
      v83 = v64;
      v84 = v35;
      v85 = v77;
      v86 = v79;
      v87 = v10;
      sub_1004BDBA4();
      Library.Menu.Identifier.rawValue.getter(v3);
      sub_1004BBF84();

      v2 = &v82;
      v39 = sub_1004BDBF4();
      v40 = -1 << v5[32];
      v41 = v39 & ~v40;
      v4 = v41 >> 6;
      v42 = 1 << v41;
      if (((1 << v41) & v81[v41 >> 6]) != 0)
      {
        v80 = ~v40;
        while (1)
        {
          v43 = 0xD000000000000029;
          v44 = "orites";
          switch(*(*(v5 + 6) + v41))
          {
            case 1:
              v43 = 0xD000000000000025;
              v45 = &v99;
              goto LABEL_76;
            case 2:
              v43 = 0xD000000000000023;
              v45 = &v98;
              goto LABEL_76;
            case 3:
              v43 = 0xD000000000000022;
              v45 = &v97;
              goto LABEL_76;
            case 4:
              v43 = 0xD000000000000021;
              v45 = &v96;
              goto LABEL_76;
            case 5:
              v43 = 0xD000000000000026;
              v45 = &v95;
              goto LABEL_76;
            case 6:
              v43 = 0xD000000000000027;
              v45 = &v94;
              goto LABEL_76;
            case 7:
              v43 = 0xD000000000000022;
              v45 = &v93;
              goto LABEL_76;
            case 8:
              v43 = 0xD000000000000028;
              v45 = &v92;
              goto LABEL_76;
            case 9:
              v43 = 0xD000000000000025;
              v45 = &v91;
              goto LABEL_76;
            case 0xA:
              v43 = 0xD000000000000021;
              v45 = &v90;
              goto LABEL_76;
            case 0xB:
              v43 = 0xD000000000000026;
              v45 = &v89;
              goto LABEL_76;
            case 0xC:
              v43 = 0xD000000000000027;
              v45 = &v88;
LABEL_76:
              v44 = *(v45 - 32);
              break;
            default:
              break;
          }

          v2 = v44 | 0x8000000000000000;
          v46 = 0xD000000000000029;
          v47 = "orites";
          switch(v3)
          {
            case 1uLL:
              v46 = 0xD000000000000025;
              v48 = &v99;
              goto LABEL_90;
            case 2uLL:
              v46 = 0xD000000000000023;
              v48 = &v98;
              goto LABEL_90;
            case 3uLL:
              v46 = 0xD000000000000022;
              v48 = &v97;
              goto LABEL_90;
            case 4uLL:
              v46 = 0xD000000000000021;
              v48 = &v96;
              goto LABEL_90;
            case 5uLL:
              v46 = 0xD000000000000026;
              v48 = &v95;
              goto LABEL_90;
            case 6uLL:
              v46 = 0xD000000000000027;
              v48 = &v94;
              goto LABEL_90;
            case 7uLL:
              v46 = 0xD000000000000022;
              v48 = &v93;
              goto LABEL_90;
            case 8uLL:
              v46 = 0xD000000000000028;
              v48 = &v92;
              goto LABEL_90;
            case 9uLL:
              v46 = 0xD000000000000025;
              v48 = &v91;
              goto LABEL_90;
            case 0xAuLL:
              v46 = 0xD000000000000021;
              v48 = &v90;
              goto LABEL_90;
            case 0xBuLL:
              v46 = 0xD000000000000026;
              v48 = &v89;
              goto LABEL_90;
            case 0xCuLL:
              v46 = 0xD000000000000027;
              v48 = &v88;
LABEL_90:
              v47 = *(v48 - 32);
              break;
            default:
              break;
          }

          if (v43 == v46 && v2 == (v47 | 0x8000000000000000))
          {
            break;
          }

          v49 = sub_1004BD9C4();

          if (v49)
          {
            goto LABEL_97;
          }

          v41 = (v41 + 1) & v80;
          v4 = v41 >> 6;
          v42 = 1 << v41;
          if ((v81[v41 >> 6] & (1 << v41)) == 0)
          {
            goto LABEL_54;
          }
        }

LABEL_97:
        v50 = v62[v4];
        v62[v4] = v50 & ~v42;
        if ((v50 & v42) != 0)
        {
          v34 = v61 - 1;
          if (__OFSUB__(v61, 1))
          {
            __break(1u);
          }

          if (v61 == 1)
          {

            v5 = &_swiftEmptySetSingleton;
            goto LABEL_105;
          }

          goto LABEL_53;
        }
      }
    }

    v35 = v78;
    v36 = v79;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_108;
      }

      if (v37 >= v63)
      {
        break;
      }

      v10 = *(v78 + 8 * v37);
      ++v36;
      if (v10)
      {
        v79 = v37;
        goto LABEL_61;
      }
    }

    if (v63 <= v79 + 1)
    {
      v51 = v79 + 1;
    }

    else
    {
      v51 = v63;
    }

    v83 = v64;
    v84 = v78;
    v85 = v77;
    v86 = v51 - 1;
    v87 = 0;
    v5 = sub_1001A08A8(v62, v59, v61, v5);
LABEL_105:
    sub_1001A43F8();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

_BYTE *sub_1001A1838(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v32 = a3 + 56;
LABEL_2:
  v28 = v6;
LABEL_3:
  while (1)
  {
    v7 = a5[3];
    v8 = a5[4];
    if (!v8)
    {
      break;
    }

    v9 = a5[3];
LABEL_9:
    v12 = *(*(*a5 + 48) + (__clz(__rbit64(v8)) | (v9 << 6)));
    a5[3] = v9;
    a5[4] = (v8 - 1) & v8;
    sub_1004BDBA4();
    Library.Menu.Identifier.rawValue.getter(v12);
    sub_1004BBF84();

    v13 = sub_1004BDBF4();
    v14 = -1 << *(a3 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    v17 = 1 << v15;
    if (((1 << v15) & *(v32 + 8 * (v15 >> 6))) != 0)
    {
      v31 = ~v14;
      while (1)
      {
        v18 = 0xD000000000000029;
        v19 = "orites";
        switch(*(*(a3 + 48) + v15))
        {
          case 1:
            v18 = 0xD000000000000025;
            v19 = "LibraryView.RecentlyAdded";
            break;
          case 2:
            v18 = 0xD000000000000023;
            v19 = "LibraryView.Playlists";
            break;
          case 3:
            v18 = 0xD000000000000022;
            v19 = "LibraryView.Artists";
            break;
          case 4:
            v18 = 0xD000000000000021;
            v19 = "LibraryView.Albums";
            break;
          case 5:
            v18 = 0xD000000000000026;
            v19 = "LibraryView.Songs";
            break;
          case 6:
            v18 = 0xD000000000000027;
            v19 = "LibraryView.MadeForYou";
            break;
          case 7:
            v18 = 0xD000000000000022;
            v19 = "LibraryView.MusicVideos";
            break;
          case 8:
            v18 = 0xD000000000000028;
            v19 = "LibraryView.Genres";
            break;
          case 9:
            v18 = 0xD000000000000025;
            v19 = "LibraryView.Compilations";
            break;
          case 0xA:
            v18 = 0xD000000000000021;
            v19 = "LibraryView.Composers";
            break;
          case 0xB:
            v18 = 0xD000000000000026;
            v19 = "LibraryView.Shows";
            break;
          case 0xC:
            v18 = 0xD000000000000027;
            v19 = "LibraryView.Downloaded";
            break;
          default:
            break;
        }

        v20 = v19 | 0x8000000000000000;
        v21 = 0xD000000000000029;
        v22 = "orites";
        switch(v12)
        {
          case 1:
            v21 = 0xD000000000000025;
            v22 = "LibraryView.RecentlyAdded";
            break;
          case 2:
            v21 = 0xD000000000000023;
            v22 = "LibraryView.Playlists";
            break;
          case 3:
            v21 = 0xD000000000000022;
            v22 = "LibraryView.Artists";
            break;
          case 4:
            v21 = 0xD000000000000021;
            v22 = "LibraryView.Albums";
            break;
          case 5:
            v21 = 0xD000000000000026;
            v22 = "LibraryView.Songs";
            break;
          case 6:
            v21 = 0xD000000000000027;
            v22 = "LibraryView.MadeForYou";
            break;
          case 7:
            v21 = 0xD000000000000022;
            v22 = "LibraryView.MusicVideos";
            break;
          case 8:
            v21 = 0xD000000000000028;
            v22 = "LibraryView.Genres";
            break;
          case 9:
            v21 = 0xD000000000000025;
            v22 = "LibraryView.Compilations";
            break;
          case 10:
            v21 = 0xD000000000000021;
            v22 = "LibraryView.Composers";
            break;
          case 11:
            v21 = 0xD000000000000026;
            v22 = "LibraryView.Shows";
            break;
          case 12:
            v21 = 0xD000000000000027;
            v22 = "LibraryView.Downloaded";
            break;
          default:
            break;
        }

        if (v18 == v21 && v20 == (v22 | 0x8000000000000000))
        {
          break;
        }

        v23 = sub_1004BD9C4();

        if (v23)
        {
          goto LABEL_43;
        }

        v15 = (v15 + 1) & v31;
        v16 = v15 >> 6;
        v17 = 1 << v15;
        if ((*(v32 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
        {
          goto LABEL_3;
        }
      }

LABEL_43:
      v24 = a1[v16];
      a1[v16] = v24 & ~v17;
      if ((v24 & v17) != 0)
      {
        v6 = v28 - 1;
        if (__OFSUB__(v28, 1))
        {
          goto LABEL_52;
        }

        if (v28 == 1)
        {
          return &_swiftEmptySetSingleton;
        }

        goto LABEL_2;
      }
    }
  }

  v10 = (a5[2] + 64) >> 6;
  v11 = a5[3];
  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      JUMPOUT(0x1001A1CC8);
    }

    if (v9 >= v10)
    {
      break;
    }

    v8 = *(a5[1] + 8 * v9);
    ++v11;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  if (v10 <= v7 + 1)
  {
    v26 = v7 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_1001A08A8(a1, a2, v28, a3);
}

BOOL _s9MusicCore7LibraryO4MenuV7RequestV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }

    sub_1004BB1D4();
    if ((sub_1004BB014() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    sub_100009130(0, &qword_100604490);
    if ((sub_1004BCFA4() & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    sub_100009130(0, &qword_1006050C8);
    v6 = v5;
    v7 = v4;
    v8 = sub_1004BCFA4();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (sub_100192564(*(a1 + 32), *(a2 + 32)) & 1) == 0 || ((*(a1 + 40) ^ *(a2 + 40)) & 1) != 0 || ((*(a1 + 41) ^ *(a2 + 41)) & 1) != 0 || ((*(a1 + 42) ^ *(a2 + 42)))
  {
    return 0;
  }

  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v12 = *(a1 + 64);
  v11 = *(a1 + 72);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v16 = *(a2 + 64);
  v15 = *(a2 + 72);
  if (v10)
  {
    if (v13)
    {
      sub_10019A8E4(v13);
      sub_10019A8E4(v10);
      if (sub_1000E8D38(v10, v13) & 1) != 0 && (sub_100192564(v9, v14) & 1) != 0 && (sub_1000E8D38(v12, v16))
      {
        v17 = sub_100192564(v11, v15);

        sub_10019A944(v10);
        return (v17 & 1) != 0;
      }

      v18 = v10;
LABEL_27:
      sub_10019A944(v18);
      return 0;
    }

LABEL_25:
    sub_10019A8E4(v13);
    sub_10019A8E4(v10);
    sub_10019A944(v10);
    v18 = v13;
    goto LABEL_27;
  }

  if (v13)
  {
    goto LABEL_25;
  }

  return 1;
}

uint64_t sub_1001A1FE0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v7 = a3 >> 1;
  result = swift_beginAccess();
  if (a2 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a2;
  }

  v10 = v9 - a2;
  v11 = (a1 + a2);
  for (i = v7 - a2; ; --i)
  {
    if (!i)
    {
      return 13;
    }

    if (!v10)
    {
      break;
    }

    v14 = *v11++;
    v13 = v14;
    v15 = *a4;

    v16 = sub_100192094(v14, v15);

    --v10;
    if (v16)
    {
      return v13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1001A20A8(char *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  result = sub_10012FEEC(*a1, a2);
  if (v7)
  {
    goto LABEL_43;
  }

  v8 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v9 = *(a2 + 16);
  if (v9 < result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v10) = sub_100198250(a2, a2 + 32, 0, (2 * result) | 1, a3);
  if (v8 >= (v9 - 1))
  {
LABEL_11:
    if (v10 == 13)
    {
      goto LABEL_12;
    }

LABEL_14:
    swift_beginAccess();
    v16 = *a3;

    v17 = sub_10012FEEC(v10, v16);
    v19 = v18;

    if (v19)
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v20 = __OFADD__(v17, 1);
    v10 = v17 + 1;
    if (!v20)
    {
      result = swift_beginAccess();
      if (*(*a3 + 16) >= v10)
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_37;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v11 = sub_1001A1FE0(a2 + 32, v8, (2 * v9) | 1, a3);
  if (v10 == 13)
  {
    if (v11 == 13)
    {
LABEL_12:
      swift_beginAccess();
      sub_10003B0A0(0, 0, v5);
      return swift_endAccess();
    }

    v12 = v11;
    swift_beginAccess();
    v13 = *a3;

    v10 = sub_10012FEEC(v12, v13);
    v15 = v14;

    if (v15)
    {
      goto LABEL_45;
    }

    result = swift_beginAccess();
    if (*(*a3 + 16) < v10)
    {
      goto LABEL_38;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
LABEL_18:
      sub_10003B0A0(v10, v10, v5);
      return swift_endAccess();
    }

    __break(1u);
    goto LABEL_11;
  }

  if (v11 == 13)
  {
    goto LABEL_14;
  }

  v21 = v11;
  swift_beginAccess();
  v22 = *a3;

  v23 = sub_10012FEEC(v10, v22);
  v25 = v24;

  if (v25)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  swift_beginAccess();
  v26 = *a3;

  v27 = sub_10012FEEC(v21, v26);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    if (v27 <= v23)
    {
      v30 = v23;
    }

    else
    {
      v30 = v27;
    }

    if (v27 >= v23)
    {
      v31 = v23;
    }

    else
    {
      v31 = v27;
    }

    v20 = __OFSUB__(v30, v31);
    v32 = v30 - v31;
    if (!v20)
    {
      v10 = v31 + v32 / 2;
      if (!__OFADD__(v31, v32 / 2))
      {
        result = swift_beginAccess();
        if (*(*a3 + 16) >= v10)
        {
          if ((v10 & 0x8000000000000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_42;
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_47:
  __break(1u);
  return result;
}

unint64_t sub_1001A23DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = *(*(a1 + 48) + (__clz(__rbit64(v10)) | (v14 << 6)));
      result = sub_1001A20A8(&v15, a2, a3);
      if (v3)
      {
      }

      v10 &= v10 - 1;
      v13 = v14;
      if (!v10)
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
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s9MusicCore7LibraryO4MenuV10IdentifierO8rawValueAGSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A55E0;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1001A251C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    result = sub_1000FEB10(*(*(a3 + 48) + v17), a4);
    if (result)
    {
      *(v6 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_1001A08A8(v6, a2, v7, a3);
      }
    }
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
      goto LABEL_15;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1001A2650(uint64_t a1, int64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v25 = v10;
    v26 = a2;
    v27 = v4;
    v24[1] = v24;
    __chkstk_darwin(v12);
    v13 = v24 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v11);
    v11 = 0;
    v4 = 0;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a1 + 56);
    a2 = (v14 + 63) >> 6;
    while (v16)
    {
      v17 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_12:
      v10 = v17 | (v4 << 6);
      if (sub_1000FEB10(*(*(a1 + 48) + v10), a3))
      {
        *&v13[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
        if (__OFADD__(v11++, 1))
        {
          __break(1u);
LABEL_16:
          v21 = sub_1001A08A8(v13, v25, v11, a1);

          return v21;
        }
      }
    }

    v18 = v4;
    while (1)
    {
      v4 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v4 >= a2)
      {
        goto LABEL_16;
      }

      v19 = *(a1 + 56 + 8 * v4);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v16 = (v19 - 1) & v19;
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

  v23 = swift_slowAlloc();

  v21 = sub_1001A04CC(v23, v10, a1, a2, a3);

  return v21;
}

uint64_t sub_1001A28DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = a1 + 40;
  v8 = _swiftEmptyArrayStorage;
LABEL_2:
  v9 = (v7 + 16 * v5);
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:

LABEL_37:
      swift_beginAccess();
      v30 = sub_100032DC8(v4);
      sub_10003B0A0(0, 0, v30);
      sub_10019A0E0(&v38, 0);
      swift_endAccess();
      return v36;
    }

    v4 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_33;
    }

    v10 = *(v9 - 1);
    v11 = *v9;

    v12._rawValue = &off_1005A55E0;
    v39._countAndFlagsBits = v10;
    v39._object = v11;
    v13 = sub_1004BD764(v12, v39);

    ++v5;
    v9 += 2;
    if (v13 < 0xD)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100018840(0, *(v8 + 2) + 1, 1, v8);
      }

      v15 = *(v8 + 2);
      v14 = *(v8 + 3);
      if (v15 >= v14 >> 1)
      {
        v8 = sub_100018840((v14 > 1), v15 + 1, 1, v8);
      }

      *(v8 + 2) = v15 + 1;
      v8[v15 + 32] = v13;
      v5 = v4;
      goto LABEL_2;
    }
  }

  v4 = 0;
  v16 = *(a2 + 16);
  v17 = a2 + 40;
  v18 = _swiftEmptyArrayStorage;
  v35 = a2 + 40;
LABEL_13:
  v19 = (v17 + 16 * v4);
  while (v16 != v4)
  {
    if (v4 >= v16)
    {
      goto LABEL_34;
    }

    v20 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_35;
    }

    v21 = *(v19 - 1);
    v22 = *v19;

    v23._rawValue = &off_1005A55E0;
    v40._countAndFlagsBits = v21;
    v40._object = v22;
    v24 = sub_1004BD764(v23, v40);

    ++v4;
    v19 += 2;
    if (v24 < 0xD)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_100018840(0, *(v18 + 2) + 1, 1, v18);
      }

      v26 = *(v18 + 2);
      v25 = *(v18 + 3);
      if (v26 >= v25 >> 1)
      {
        v18 = sub_100018840((v25 > 1), v26 + 1, 1, v18);
      }

      *(v18 + 2) = v26 + 1;
      v18[v26 + 32] = v24;
      v4 = v20;
      v17 = v35;
      goto LABEL_13;
    }
  }

  sub_10012B170(v18);

  v36 = v8;
  v37 = v8;

  sub_100196BF4(a3, a4);
  if (v33)
  {
  }

  swift_beginAccess();
  v28 = *(v8 + 2);
  if (v28)
  {
    v4 = 0;
    while (2)
    {
      if (v4 < *(v37 + 2))
      {
        switch(v37[v4 + 32])
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
          case 12:
            v29 = sub_1004BD9C4();

            if (v29)
            {
              goto LABEL_37;
            }

            if (v28 == ++v4)
            {
              return v36;
            }

            continue;
          default:
            goto LABEL_36;
        }
      }

      break;
    }

    __break(1u);
    JUMPOUT(0x1001A2DB0);
  }

  return v36;
}

uint64_t sub_1001A2DE4(void *a1)
{
  v3 = sub_100003ABC(&qword_1006050B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v60 - v5;
  v7 = sub_100009178(a1, a1[3]);
  sub_1001A34B4();
  sub_1004BDC34();
  if (v1)
  {
LABEL_3:
    sub_100004C6C(a1);
    return v7;
  }

  else
  {
    v8 = sub_100003ABC(&unk_100603590);
    v68 = 1;
    v9 = sub_1001A429C(&qword_1006050B8, &unk_100603590);
    result = sub_1004BD804();
    v60[1] = v9;
    v61 = v8;
    v63 = v4;
    v64 = v6;
    v65 = v3;
    v11 = 0;
    v12 = v67;
    v13 = *(v67 + 16);
    v14 = v67 + 40;
    v66 = _swiftEmptyArrayStorage;
    v62 = v67 + 40;
LABEL_4:
    v15 = (v14 + 16 * v11);
    while (v13 != v11)
    {
      if (v11 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      ++v11;
      v16 = v15 + 2;
      v17 = *(v15 - 1);
      v18 = *v15;

      v19._rawValue = &off_1005A55E0;
      v69._countAndFlagsBits = v17;
      v69._object = v18;
      v20 = sub_1004BD764(v19, v69);

      v15 = v16;
      if (v20 < 0xD)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v21 = v66;
        }

        else
        {
          result = sub_100018840(0, v66[2] + 1, 1, v66);
          v21 = result;
        }

        v23 = *(v21 + 2);
        v22 = *(v21 + 3);
        if (v23 >= v22 >> 1)
        {
          result = sub_100018840((v22 > 1), v23 + 1, 1, v21);
          v21 = result;
        }

        *(v21 + 2) = v23 + 1;
        v66 = v21;
        v21[v23 + 32] = v20;
        v14 = v62;
        goto LABEL_4;
      }
    }

    sub_100003ABC(&qword_100602D00);
    v68 = 0;
    sub_1001A429C(&qword_100602DF0, &qword_100602D00);
    sub_1004BD804();
    v62 = 0;
    v24 = v67;
    v25 = v67 + 56;
    v26 = 1 << *(v67 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v67 + 56);
    v29 = (v26 + 63) >> 6;

    v30 = 0;
    v31 = _swiftEmptyArrayStorage;
    if (!v28)
    {
      goto LABEL_19;
    }

    do
    {
LABEL_17:
      while (1)
      {
        v32 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v33 = (*(v24 + 48) + ((v30 << 10) | (16 * v32)));
        v34 = *v33;
        v35 = v33[1];

        v36._rawValue = &off_1005A55E0;
        v70._countAndFlagsBits = v34;
        v70._object = v35;
        v37 = sub_1004BD764(v36, v70);

        if (v37 < 0xD)
        {
          break;
        }

        if (!v28)
        {
          goto LABEL_19;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100018840(0, v31[2] + 1, 1, v31);
        v31 = result;
      }

      v39 = v31;
      v40 = v31[2];
      v41 = v39;
      v42 = v39[3];
      if (v40 >= v42 >> 1)
      {
        result = sub_100018840((v42 > 1), (v40 + 1), 1, v41);
        v41 = result;
      }

      *(v41 + 16) = v40 + 1;
      v43 = &v40[v41];
      v31 = v41;
      v43[32] = v37;
    }

    while (v28);
LABEL_19:
    while (1)
    {
      v38 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v38 >= v29)
      {

        v44 = sub_10012B170(v31);

        v68 = 2;
        v45 = v64;
        v46 = v65;
        v47 = v62;
        result = sub_1004BD804();
        if (v47)
        {

          v68 = 2;
          sub_1001A42FC();
          sub_1004BD804();
          (*(v63 + 8))(v45, v46);
          v7 = v67;
        }

        else
        {
          v62 = v44;
          v48 = 0;
          v49 = v67;
          v50 = *(v67 + 16);
          v51 = v67 + 40;
          v7 = _swiftEmptyArrayStorage;
          v61 = v67 + 40;
LABEL_32:
          v52 = (v51 + 16 * v48);
          while (v50 != v48)
          {
            if (v48 >= *(v49 + 16))
            {
              goto LABEL_44;
            }

            ++v48;
            v53 = v52 + 2;
            v54 = *(v52 - 1);
            v55 = *v52;

            v56._rawValue = &off_1005A55E0;
            v71._countAndFlagsBits = v54;
            v71._object = v55;
            v57 = sub_1004BD764(v56, v71);

            v52 = v53;
            if (v57 < 0xD)
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_100018840(0, v7[2] + 1, 1, v7);
                v7 = result;
              }

              v59 = v7[2];
              v58 = v7[3];
              if (v59 >= v58 >> 1)
              {
                result = sub_100018840((v58 > 1), (v59 + 1), 1, v7);
                v7 = result;
              }

              v7[2] = v59 + 1;
              v59[v7 + 32] = v57;
              v51 = v61;
              goto LABEL_32;
            }
          }

          (*(v63 + 8))(v64, v65);
        }

        goto LABEL_3;
      }

      v28 = *(v25 + 8 * v38);
      ++v30;
      if (v28)
      {
        v30 = v38;
        goto LABEL_17;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A34B4()
{
  result = qword_100604FA0;
  if (!qword_100604FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604FA0);
  }

  return result;
}

unint64_t sub_1001A3508()
{
  result = qword_100604FB8;
  if (!qword_100604FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604FB8);
  }

  return result;
}

uint64_t sub_1001A355C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(&qword_100604FC0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001A35D4()
{
  result = qword_100604FD0;
  if (!qword_100604FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604FD0);
  }

  return result;
}

unint64_t sub_1001A3628()
{
  result = qword_100604FE0;
  if (!qword_100604FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604FE0);
  }

  return result;
}

uint64_t sub_1001A367C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A5738;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1001A36C8(void *a1)
{
  v2 = sub_100003ABC(&qword_100605090);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_100009178(a1, a1[3]);
  sub_1001A3628();
  sub_1004BDC34();
  sub_100003ABC(&qword_100604FA8);
  HIBYTE(v8) = 0;
  sub_1001A41D0(&qword_100605098, sub_1001A4248);
  sub_1004BD804();
  v7 = v9;
  sub_100003ABC(&qword_100604FC0);
  HIBYTE(v8) = 1;
  sub_1001A355C(&qword_1006050A8, sub_1001A4248);
  sub_1004BD804();
  (*(v3 + 8))(v5, v2);
  sub_100004C6C(a1);
  return v7;
}

unint64_t sub_1001A393C()
{
  result = qword_100604FE8;
  if (!qword_100604FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604FE8);
  }

  return result;
}

unint64_t sub_1001A3990(uint64_t a1)
{
  result = sub_1001A39B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001A39B8()
{
  result = qword_100605020;
  if (!qword_100605020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605020);
  }

  return result;
}

unint64_t sub_1001A3A10()
{
  result = qword_100605028;
  if (!qword_100605028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605028);
  }

  return result;
}

uint64_t sub_1001A3AD4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001A3AEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001A3B34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s15AnimationStatusOwet(uint64_t a1, unsigned int a2)
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

uint64_t _s15AnimationStatusOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s4MenuV10IdentifierO8LocationOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t _s4MenuV10IdentifierO8LocationOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1001A3DB4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1001A3DD0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

__n128 sub_1001A3E38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001A3E4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1001A3E94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001A3EEC()
{
  result = qword_100605038;
  if (!qword_100605038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605038);
  }

  return result;
}

unint64_t sub_1001A3F44()
{
  result = qword_100605040;
  if (!qword_100605040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605040);
  }

  return result;
}

unint64_t sub_1001A3F9C()
{
  result = qword_100605048;
  if (!qword_100605048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605048);
  }

  return result;
}

unint64_t sub_1001A3FF4()
{
  result = qword_100605050;
  if (!qword_100605050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605050);
  }

  return result;
}

unint64_t sub_1001A404C()
{
  result = qword_100605058;
  if (!qword_100605058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605058);
  }

  return result;
}

unint64_t sub_1001A40A4()
{
  result = qword_100605060;
  if (!qword_100605060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605060);
  }

  return result;
}

unint64_t sub_1001A40F8()
{
  result = qword_100605080;
  if (!qword_100605080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605080);
  }

  return result;
}

uint64_t sub_1001A414C()
{

  return swift_deallocObject();
}

uint64_t sub_1001A4184(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return v2(v5);
}

uint64_t sub_1001A41D0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(&qword_100604FA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001A4248()
{
  result = qword_1006050A0;
  if (!qword_1006050A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006050A0);
  }

  return result;
}

uint64_t sub_1001A429C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001A42FC()
{
  result = qword_1006050C0;
  if (!qword_1006050C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006050C0);
  }

  return result;
}

unint64_t sub_1001A4350()
{
  result = qword_1006050D0;
  if (!qword_1006050D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006050D0);
  }

  return result;
}

unint64_t sub_1001A43A4()
{
  result = qword_1006050D8;
  if (!qword_1006050D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006050D8);
  }

  return result;
}

uint64_t *sub_1001A4400@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *result;
  v5 = v3[3] >> 1;
  if (*result >= v3[2])
  {
    v7 = __OFSUB__(v4, v5);
    v6 = v4 - v5 < 0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (v6 != v7)
  {
    *a2 = *(v3[1] + v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A4438()
{

  return swift_deallocObject();
}

uint64_t sub_1001A4478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s4MenuV9MoveErrorV7FailureOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF)
  {
    goto LABEL_17;
  }

  if (a2 + 241 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 241) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 241;
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

      return (*a1 | (v4 << 8)) - 241;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 241;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 3) & 0xE | (*a1 >> 7)) ^ 0xF;
  if (v6 >= 0xE)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t _s4MenuV9MoveErrorV7FailureOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 241 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 241) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF)
  {
    v4 = 0;
  }

  if (a2 > 0xE)
  {
    v5 = ((a2 - 15) >> 8) + 1;
    *result = a2 - 15;
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
    *result = 16 * (((-a2 >> 1) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001A4680()
{
  result = qword_100605100;
  if (!qword_100605100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605100);
  }

  return result;
}

Swift::Int sub_1001A46D4()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

Swift::Int sub_1001A47EC()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

Swift::Int sub_1001A4904()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

unint64_t Library.SortConfiguration.storageKey.getter(unsigned __int8 a1)
{
  sub_1004BD404(33);

  v2 = 0xE600000000000000;
  v3 = 0x736D75626C61;
  v4 = 0xE900000000000073;
  v5 = 0x7473696C79616C70;
  if (a1 != 5)
  {
    v5 = 0x73676E6F73;
    v4 = 0xE500000000000000;
  }

  v6 = 0xEA0000000000756FLL;
  v7 = 0x59726F466564616DLL;
  if (a1 != 3)
  {
    v7 = 0x646956636973756DLL;
    v6 = 0xEB00000000736F65;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x73747369747261;
  if (a1 != 1)
  {
    v9 = 0x74616C69706D6F63;
    v8 = 0xEC000000736E6F69;
  }

  if (a1)
  {
    v3 = v9;
    v2 = v8;
  }

  if (a1 <= 2u)
  {
    v10._countAndFlagsBits = v3;
  }

  else
  {
    v10._countAndFlagsBits = v5;
  }

  if (a1 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  v10._object = v11;
  sub_1004BC024(v10);

  return 0xD00000000000001FLL;
}

uint64_t Library.SortConfiguration.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x736D75626C61;
  v2 = 0x7473696C79616C70;
  if (a1 != 5)
  {
    v2 = 0x73676E6F73;
  }

  v3 = 0x59726F466564616DLL;
  if (a1 != 3)
  {
    v3 = 0x646956636973756DLL;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x73747369747261;
  if (a1 != 1)
  {
    v4 = 0x74616C69706D6F63;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1001A4CA0()
{
  sub_1004BBF84();
}

uint64_t sub_1001A4DC8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7LibraryO17SortConfigurationO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1001A4DF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x736D75626C61;
  v5 = 0xE900000000000073;
  v6 = 0x7473696C79616C70;
  if (v2 != 5)
  {
    v6 = 0x73676E6F73;
    v5 = 0xE500000000000000;
  }

  v7 = 0xEA0000000000756FLL;
  v8 = 0x59726F466564616DLL;
  if (v2 != 3)
  {
    v8 = 0x646956636973756DLL;
    v7 = 0xEB00000000736F65;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x73747369747261;
  if (v2 != 1)
  {
    v10 = 0x74616C69706D6F63;
    v9 = 0xEC000000736E6F69;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
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

uint64_t _s9MusicCore7LibraryO17SortConfigurationO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A57F0;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1001A4F38()
{
  result = qword_100605108;
  if (!qword_100605108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605108);
  }

  return result;
}

unint64_t *sub_1001A4F9C(uint64_t a1)
{
  v2 = sub_1004B6B04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100003ABC(&qword_100600DE0);
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = &_swiftEmptyArrayStorage;
    sub_100014FC0(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_100014FC0(v14 > 1, v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_10000F708(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_1001A51D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1001AA448();

    v1 = sub_1004BD634();
  }

  else
  {
    v1 = a1;

    sub_1004BD9E4();
    sub_1001AA448();
  }

  return v1;
}

id *sub_1001A5258(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_100015170(0, v2, 0);
    result = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    v5 = _swiftEmptyArrayStorage[2];
    do
    {
      v6 = *v4;
      v8 = result;
      v7 = result[3];
      if (v5 >= v7 >> 1)
      {
        sub_100015170((v7 > 1), (v5 + 1), 1);
        result = v8;
      }

      result[2] = v5 + 1;
      *(result + v5 + 8) = v6;
      ++v4;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

id *sub_1001A5324(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v6 = _swiftEmptyArrayStorage;
    sub_1004BD524();
    v4 = a1 + 32;
    do
    {
      sub_10003D034(v4, v5);
      sub_100003ABC(&qword_1006085E0);
      swift_dynamicCast();
      sub_1004BD4F4();
      sub_1004BD534();
      sub_1004BD544();
      sub_1004BD504();
      v4 += 40;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t SortOptions.SortType.localizedTitle.getter(Swift::Int a1)
{
  sub_1001A5494(a1, v5);
  v1 = v6;
  v2 = v7;
  sub_100009178(v5, v6);
  v3 = (*(v2 + 8))(v1, v2);
  sub_100004C6C(v5);
  return v3;
}

Swift::Int sub_1001A5494@<X0>(Swift::Int result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case 1:
      v7 = &type metadata for PlaylistOrderSort;
      v8 = &off_1005B54A8;
      goto LABEL_12;
    case 2:
      v5 = &type metadata for TitleSort;
      v6 = &off_1005B5448;
      goto LABEL_18;
    case 3:
      v5 = &type metadata for RecentlyAddedSort;
      v6 = &off_1005B54E8;
      goto LABEL_18;
    case 4:
      v5 = &type metadata for RecentlyPlayedSort;
      v6 = &off_1005B5508;
      goto LABEL_18;
    case 5:
      v5 = &type metadata for RecentlyUpdatedSort;
      v6 = &off_1005B5528;
      goto LABEL_18;
    case 6:
      v5 = &type metadata for ArtistSort;
      v6 = &off_1005B5468;
      goto LABEL_18;
    case 7:
      v5 = &type metadata for AlbumSort;
      v6 = &off_1005B5488;
      goto LABEL_18;
    case 8:
      v5 = &type metadata for PlaylistTypeSort;
      v6 = &off_1005B54C8;
LABEL_18:
      *(a2 + 24) = v5;
      *(a2 + 32) = v6;
      return result;
    case 9:
      v7 = &type metadata for YearSort;
      v8 = &off_1005B5548;
LABEL_12:
      *(a2 + 24) = v7;
      *(a2 + 32) = v8;
      *a2 = 0;
      return result;
    case 10:
      v2 = &type metadata for YearSort;
      v3 = &off_1005B5548;
      goto LABEL_16;
    case 11:
      v4 = a2;
      result = sub_10001A750(&off_1005A58E8);
      *(v4 + 24) = &type metadata for ReleaseDateSort;
      *(v4 + 32) = &off_1005B5568;
      *v4 = 1;
      goto LABEL_6;
    case 12:
      v4 = a2;
      result = sub_10001A750(&off_1005A5910);
      *(v4 + 24) = &type metadata for ReleaseDateSort;
      *(v4 + 32) = &off_1005B5568;
      *v4 = 0;
LABEL_6:
      *(v4 + 8) = result;
      break;
    default:
      v2 = &type metadata for PlaylistOrderSort;
      v3 = &off_1005B54A8;
LABEL_16:
      *(a2 + 24) = v2;
      *(a2 + 32) = v3;
      *a2 = 1;
      break;
  }

  return result;
}

id SortOptions.SortType.image.getter(char a1)
{
  result = 0;
  v3 = 1 << a1;
  if ((v3 & 0x1FC) == 0)
  {
    if ((v3 & 0xC01) != 0)
    {
      v4 = [objc_opt_self() configurationWithScale:1];
      v5 = sub_1004BBE24();
      v6 = [objc_opt_self() systemImageNamed:v5];

      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v4 = [objc_opt_self() configurationWithScale:1];
      v7 = sub_1004BBE24();
      v6 = [objc_opt_self() systemImageNamed:v7];

      if (v6)
      {
LABEL_6:
        v8 = [v6 imageWithConfiguration:v4];

        return v8;
      }
    }

    return 0;
  }

  return result;
}

uint64_t SortOptions.SortType.sortDescriptors(for:)(uint64_t a1, Swift::Int a2)
{
  sub_1001A5494(a2, v7);
  v3 = v8;
  v4 = v9;
  sub_100009178(v7, v8);
  v5 = (*(v4 + 24))(a1, v3, v4);
  sub_100004C6C(v7);
  return v5;
}

uint64_t sub_1001A5870(int a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 16))(a2, a3);
  LOBYTE(a1) = sub_1000FEEF4(a1, v4);

  return a1 & 1;
}

unint64_t SortOptions.SortType.rawValue.getter(char a1)
{
  result = 0x656C7469547942;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x7473697472417942;
      break;
    case 7:
      result = 0x6D75626C417942;
      break;
    case 8:
      result = 0x696C79616C507942;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x646E656373417942;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_1001A5AA8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = SortOptions.SortType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == SortOptions.SortType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004BD9C4();
  }

  return v8 & 1;
}

uint64_t sub_1001A5B78@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore11SortOptionsV0C4TypeO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1001A5BA8@<X0>(unint64_t *a1@<X8>)
{
  result = SortOptions.SortType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SortOptions.ContentType.localizedTitle.getter(unsigned __int8 a1)
{
  v2 = sub_1004B6E64();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  if ((a1 >> 6) > 2u && a1 != 192 && a1 != 193)
  {
    return 0;
  }

  sub_1004BBDA4();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v10 = qword_100617118;
  sub_1004B6DF4();
  v11 = sub_1004BBED4();
  (*(v4 + 8))(v9, v3);
  return v11;
}

char *SortOptions.ContentType.availableSortTypes(withSelectedType:)(unsigned __int8 a1, int a2)
{
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = *(&off_1005A58B8 + v4 + 32);
    switch(*(&off_1005A58B8 + v4 + 32))
    {
      case 1:
        v7 = &type metadata for PlaylistOrderSort;
        v22 = &type metadata for PlaylistOrderSort;
        v8 = &off_1005B54A8;
        goto LABEL_15;
      case 2:
        v7 = &type metadata for TitleSort;
        v8 = &off_1005B5448;
        goto LABEL_21;
      case 3:
        v7 = &type metadata for RecentlyAddedSort;
        v8 = &off_1005B54E8;
        goto LABEL_21;
      case 4:
        v7 = &type metadata for RecentlyPlayedSort;
        v8 = &off_1005B5508;
        goto LABEL_21;
      case 5:
        v7 = &type metadata for RecentlyUpdatedSort;
        v8 = &off_1005B5528;
        goto LABEL_21;
      case 6:
        v7 = &type metadata for ArtistSort;
        v8 = &off_1005B5468;
        goto LABEL_21;
      case 7:
        v7 = &type metadata for AlbumSort;
        v8 = &off_1005B5488;
        goto LABEL_21;
      case 8:
        v7 = &type metadata for PlaylistTypeSort;
        v8 = &off_1005B54C8;
LABEL_21:
        v22 = v7;
        v23 = v8;
        break;
      case 9:
        v7 = &type metadata for YearSort;
        v22 = &type metadata for YearSort;
        v8 = &off_1005B5548;
LABEL_15:
        v23 = v8;
        LOBYTE(v21[0]) = 0;
        break;
      case 0xA:
        v7 = &type metadata for YearSort;
        v22 = &type metadata for YearSort;
        v8 = &off_1005B5548;
        goto LABEL_19;
      case 0xB:
        v9 = sub_10001A750(&off_1005A5C08);
        v23 = &off_1005B5568;
        LOBYTE(v21[0]) = 1;
        goto LABEL_9;
      case 0xC:
        v9 = sub_10001A750(&off_1005A5C30);
        v23 = &off_1005B5568;
        LOBYTE(v21[0]) = 0;
LABEL_9:
        v7 = &type metadata for ReleaseDateSort;
        v22 = &type metadata for ReleaseDateSort;
        v21[1] = v9;
        v8 = &off_1005B5568;
        break;
      default:
        v7 = &type metadata for PlaylistOrderSort;
        v22 = &type metadata for PlaylistOrderSort;
        v8 = &off_1005B54A8;
LABEL_19:
        v23 = v8;
        LOBYTE(v21[0]) = 1;
        break;
    }

    sub_100009178(v21, v7);
    v10 = (v8[2])();
    v11 = sub_1000FEEF4(a2, v10);

    sub_100004C6C(v21);
    if (v11)
    {
      v12 = a1;
      if (v6 > 8)
      {
        if (v6 > 10)
        {
          v12 = 24;
          if (v6 == 11)
          {
            v13 = 0xD000000000000017;
            v14 = 0x80000001004FC180;
          }

          else
          {
            v13 = 0xD000000000000016;
            v14 = 0x80000001004FC160;
          }
        }

        else
        {
          v13 = 0x646E656373417942;
          v14 = 0xEF72616559676E69;
          if (v6 != 9)
          {
            v12 = 24;
            v13 = 0xD000000000000010;
            v14 = 0x80000001004FC130;
          }
        }
      }

      else
      {
        v12 = v6 - 2;
        if ((v6 - 2) < 7)
        {
LABEL_53:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_100018878(0, *(v5 + 2) + 1, 1, v5);
          }

          v19 = *(v5 + 2);
          v18 = *(v5 + 3);
          if (v19 >= v18 >> 1)
          {
            v5 = sub_100018878((v18 > 1), v19 + 1, 1, v5);
          }

          *(v5 + 2) = v19 + 1;
          v5[v19 + 32] = v6;
          goto LABEL_3;
        }

        if (v6)
        {
          v13 = 0xD000000000000018;
          v14 = 0x80000001004FC060;
        }

        else
        {
          v12 = 24;
          v13 = 0xD000000000000019;
          v14 = 0x80000001004FC080;
        }
      }

      v15 = 0xE700000000000000;
      v16 = 0x656C7469547942;
      switch(v12)
      {
        case 0:
          v15 = 0x80000001004FC060;
          if (v13 == 0xD000000000000018)
          {
            goto LABEL_49;
          }

          goto LABEL_51;
        case 1:
          v15 = 0x80000001004FC080;
          if (v13 != 0xD000000000000019)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 2:
          goto LABEL_48;
        case 3:
        case 5:
        case 6:
        case 7:
        case 8:
          goto LABEL_51;
        case 4:
          v15 = 0x80000001004FC0D0;
          if (v13 != 0xD000000000000018)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 9:
          v15 = 0x80000001004FC130;
          if (v13 != 0xD000000000000010)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 10:
          v16 = 0x646E656373417942;
          v15 = 0xEF72616559676E69;
LABEL_48:
          if (v13 == v16)
          {
            goto LABEL_49;
          }

          goto LABEL_51;
        case 11:
          v15 = 0x80000001004FC160;
          if (v13 != 0xD000000000000016)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 12:
          v15 = 0x80000001004FC180;
          if (v13 != 0xD000000000000017)
          {
            goto LABEL_51;
          }

LABEL_49:
          if (v14 == v15)
          {

            LOBYTE(v6) = a1;
          }

          else
          {
LABEL_51:
            v17 = sub_1004BD9C4();

            if (v17)
            {
              LOBYTE(v6) = a1;
            }
          }

          break;
        default:
          goto LABEL_53;
      }

      goto LABEL_53;
    }

LABEL_3:
    ++v4;
  }

  while (v4 != 10);
  return v5;
}

uint64_t SortOptions.ContentType.defaultSortType.getter(unsigned __int8 a1)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 2)
    {
      return 8;
    }

    else
    {
      return 0x206u >> (8 * (a1 + 64));
    }
  }

  else
  {
    if (a1 >> 6)
    {
      if ((a1 & 0x3F) == 0)
      {
        return 6;
      }
    }

    else if ((a1 & 1) == 0)
    {
      return 6;
    }

    return 2;
  }
}

uint64_t sub_1001A64E4(unsigned __int8 a1)
{
  v1 = 0x676E6F5374726F73;
  if (a1 != 192)
  {
    sub_1004BDBA4();
    v3 = SortOptions.ContentType.identifier.getter(a1);
    sub_1004BBF84();

    v4 = sub_1004BDBF4();
    sub_1004BDBA4();
    sub_1004BBF84();
    if (v4 != sub_1004BDBF4())
    {
      v1 = 0x75626C4174726F53;
      if ((a1 & 0xC0) != 0x40)
      {
        sub_1004BDBA4();
        sub_1004BBF84();

        v6 = sub_1004BDBF4();
        sub_1004BDBA4();
        sub_1004BBF84();
        if (v6 == sub_1004BDBF4())
        {
          return v1;
        }

        goto LABEL_5;
      }

      if ((a1 & 0x3F) != 0)
      {
LABEL_5:

        v7._countAndFlagsBits = 0x6570795474726F53;
        v7._object = 0xE800000000000000;
        sub_1004BC024(v7);

        return v3;
      }
    }
  }

  return v1;
}

uint64_t SortOptions.ContentType.identifier.getter(unsigned __int8 a1)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 2)
    {
      if (a1)
      {
        return 0xD000000000000018;
      }

      else
      {
        return 0x7473696C79616C70;
      }
    }

    else
    {
      v5 = 0x736569766F6DLL;
      if (a1 != 193)
      {
        v5 = 0x7473696C79616C70;
      }

      if (a1 == 192)
      {
        return 0x73676E6F73;
      }

      else
      {
        return v5;
      }
    }
  }

  else if (a1 >> 6)
  {
    v2 = 0x736D75626C61;
    v3 = 0xD000000000000016;
    v4 = 0x7265736F706D6F63;
    if ((a1 & 0x3F) != 3)
    {
      v4 = 0x626C4165726E6567;
    }

    if ((a1 & 0x3F) != 2)
    {
      v3 = v4;
    }

    if ((a1 & 0x3F) != 0)
    {
      v2 = 0x6C41747369747261;
    }

    if ((a1 & 0x3Fu) <= 1)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  else if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x646956636973756DLL;
  }
}

Swift::String __swiftcall SortOptions.ContentType.storageKey(using:)(Swift::String_optional using)
{
  if (using.value._object)
  {
    object = using.value._object;
    countAndFlagsBits = using.value._countAndFlagsBits;
    v8 = sub_1001A64E4(v1);
    v9 = v4;

    v10._countAndFlagsBits = 45;
    v10._object = 0xE100000000000000;
    sub_1004BC024(v10);

    v11._countAndFlagsBits = countAndFlagsBits;
    v11._object = object;
    sub_1004BC024(v11);

    v5 = v8;
    v6 = v9;
  }

  else
  {
    v5 = sub_1001A64E4(v1);
  }

  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t SortOptions.ContentType.hash(into:)()
{
  sub_1004BBF84();
}

Swift::Int SortOptions.ContentType.hashValue.getter(unsigned __int8 a1)
{
  sub_1004BDBA4();
  SortOptions.ContentType.identifier.getter(a1);
  sub_1004BBF84();

  return sub_1004BDBF4();
}

Swift::Int sub_1001A6B60(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1004BDBA4();
  a3(v5);
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1001A6BE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_1004BBF84();
}

Swift::Int sub_1001A6C54(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1004BDBA4();
  a4(v6);
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t static SortOptions.ViewType.Albums.preferredItemSortDescriptors.getter()
{
  sub_100003ABC(&qword_100603C50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C5130;
  sub_1004BBE64();
  v1 = objc_allocWithZone(NSSortDescriptor);
  v2 = sub_1004BBE24();

  v3 = [v1 initWithKey:v2 ascending:1];

  *(v0 + 32) = v3;
  sub_1004BBE64();
  v4 = objc_allocWithZone(NSSortDescriptor);
  v5 = sub_1004BBE24();

  v6 = [v4 initWithKey:v5 ascending:1];

  *(v0 + 40) = v6;
  sub_1004BBE64();
  v7 = objc_allocWithZone(NSSortDescriptor);
  v8 = sub_1004BBE24();

  v9 = [v7 initWithKey:v8 ascending:1];

  *(v0 + 48) = v9;
  return v0;
}

uint64_t sub_1001A6E44(unsigned __int8 a1, char a2)
{
  if (a1 == 194)
  {
    sub_100003ABC(&qword_100603C50);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1004C4D40;
    sub_1004BBE64();
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = sub_1004BBE24();

    v6 = [v4 initWithKey:v5 ascending:a2 & 1];

    *(v3 + 32) = v6;
    return v3;
  }

  else
  {
    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

void sub_1001A6FA4()
{
  sub_100003ABC(&qword_100603C50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C51A0;
  sub_100003ABC(&unk_1006040A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004C50C0;
  *(v1 + 32) = sub_1004BBE64();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_1004BBE64();
  *(v1 + 56) = v3;
  isa = sub_1004BC284().super.isa;

  v5 = objc_opt_self();
  v6 = [v5 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004C5070;
  *(v7 + 32) = sub_1004BBE64();
  *(v7 + 40) = v8;
  *(v7 + 48) = sub_1004BBE64();
  *(v7 + 56) = v9;
  *(v7 + 64) = sub_1004BBE64();
  *(v7 + 72) = v10;
  v11 = sub_1004BC284().super.isa;

  v12 = [v5 sortDescriptorWithKeyPath:v11 ascending:1];

  *(v0 + 40) = v12;
  qword_100617548 = v0;
}

void sub_1001A7180()
{
  sub_100003ABC(&qword_100603C50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C51B0;
  sub_100003ABC(&unk_1006040A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004C5070;
  *(v1 + 32) = sub_1004BBE64();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_1004BBE64();
  *(v1 + 56) = v3;
  *(v1 + 64) = sub_1004BBE64();
  *(v1 + 72) = v4;
  isa = sub_1004BC284().super.isa;

  v6 = objc_opt_self();
  v7 = [v6 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004C50C0;
  *(v8 + 32) = sub_1004BBE64();
  *(v8 + 40) = v9;
  *(v8 + 48) = sub_1004BBE64();
  *(v8 + 56) = v10;
  v11 = sub_1004BC284().super.isa;

  v12 = [v6 sortDescriptorWithKeyPath:v11 ascending:1];

  *(v0 + 40) = v12;
  sub_1004BBE64();
  v13 = objc_allocWithZone(NSSortDescriptor);
  v14 = sub_1004BBE24();

  v15 = [v13 initWithKey:v14 ascending:1];

  *(v0 + 48) = v15;
  sub_1004BBE64();
  v16 = objc_allocWithZone(NSSortDescriptor);
  v17 = sub_1004BBE24();

  v18 = [v16 initWithKey:v17 ascending:1];

  *(v0 + 56) = v18;
  sub_1004BBE64();
  v19 = objc_allocWithZone(NSSortDescriptor);
  v20 = sub_1004BBE24();

  v21 = [v19 initWithKey:v20 ascending:1];

  *(v0 + 64) = v21;
  qword_100617550 = v0;
}

void sub_1001A7454()
{
  sub_100003ABC(&qword_100603C50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C51A0;
  sub_100003ABC(&unk_1006040A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004C50C0;
  *(v1 + 32) = sub_1004BBE64();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_1004BBE64();
  *(v1 + 56) = v3;
  isa = sub_1004BC284().super.isa;

  v5 = [objc_opt_self() sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v5;
  sub_1004BBE64();
  v6 = objc_allocWithZone(NSSortDescriptor);
  v7 = sub_1004BBE24();

  v8 = [v6 initWithKey:v7 ascending:1];

  *(v0 + 40) = v8;
  qword_100617558 = v0;
}

void sub_1001A75BC()
{
  sub_100003ABC(&qword_100603C50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C5130;
  sub_100003ABC(&unk_1006040A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004C5070;
  *(v1 + 32) = sub_1004BBE64();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_1004BBE64();
  *(v1 + 56) = v3;
  *(v1 + 64) = sub_1004BBE64();
  *(v1 + 72) = v4;
  isa = sub_1004BC284().super.isa;

  v6 = objc_opt_self();
  v7 = [v6 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004C5070;
  *(v8 + 32) = sub_1004BBE64();
  *(v8 + 40) = v9;
  *(v8 + 48) = sub_1004BBE64();
  *(v8 + 56) = v10;
  *(v8 + 64) = sub_1004BBE64();
  *(v8 + 72) = v11;
  v12 = sub_1004BC284().super.isa;

  v13 = [v6 sortDescriptorWithKeyPath:v12 ascending:1];

  *(v0 + 40) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004C50C0;
  *(v14 + 32) = sub_1004BBE64();
  *(v14 + 40) = v15;
  *(v14 + 48) = sub_1004BBE64();
  *(v14 + 56) = v16;
  v17 = sub_1004BC284().super.isa;

  v18 = [v6 sortDescriptorWithKeyPath:v17 ascending:1];

  *(v0 + 48) = v18;
  qword_100617560 = v0;
}

uint64_t sub_1001A7830(unsigned __int8 a1)
{
  if ((a1 >> 6) <= 1u)
  {
    if (a1 >> 6)
    {
      if (qword_1005FFFF0 == -1)
      {
      }

      goto LABEL_15;
    }

LABEL_7:
    if (qword_1005FFFE8 == -1)
    {
    }

LABEL_15:
    swift_once();
  }

  if (a1 >> 6 != 3)
  {
    goto LABEL_17;
  }

  if (a1 == 192)
  {
    goto LABEL_7;
  }

  if (a1 == 194)
  {
    if (qword_1005FFFF8 != -1)
    {
      swift_once();
    }

    v2 = qword_100617560;

    return sub_1001A51D0(v2);
  }

  else
  {
LABEL_17:
    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

void sub_1001A7990()
{
  sub_100003ABC(&qword_100603C50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C51A0;
  sub_100003ABC(&unk_1006040A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004C5070;
  *(v1 + 32) = sub_1004BBE64();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_1004BBE64();
  *(v1 + 56) = v3;
  *(v1 + 64) = sub_1004BBE64();
  *(v1 + 72) = v4;
  isa = sub_1004BC284().super.isa;

  v6 = objc_opt_self();
  v7 = [v6 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004C50C0;
  *(v8 + 32) = sub_1004BBE64();
  *(v8 + 40) = v9;
  *(v8 + 48) = sub_1004BBE64();
  *(v8 + 56) = v10;
  v11 = sub_1004BC284().super.isa;

  v12 = [v6 sortDescriptorWithKeyPath:v11 ascending:1];

  *(v0 + 40) = v12;
  qword_100617568 = v0;
}

uint64_t sub_1001A7B68(unsigned __int8 a1)
{
  if (a1 == 194)
  {
    if (qword_100600000 != -1)
    {
      swift_once();
    }

    v1 = qword_100617568;

    return sub_1001A51D0(v1);
  }

  else
  {
    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

void sub_1001A7C24()
{
  sub_100003ABC(&qword_100603C50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C51B0;
  sub_1004BBE64();
  v1 = objc_allocWithZone(NSSortDescriptor);
  v2 = sub_1004BBE24();

  v3 = [v1 initWithKey:v2 ascending:0];

  *(v0 + 32) = v3;
  sub_1004BBE64();
  v4 = objc_allocWithZone(NSSortDescriptor);
  v5 = sub_1004BBE24();

  v6 = [v4 initWithKey:v5 ascending:1];

  *(v0 + 40) = v6;
  sub_1004BBE64();
  v7 = objc_allocWithZone(NSSortDescriptor);
  v8 = sub_1004BBE24();

  v9 = [v7 initWithKey:v8 ascending:1];

  *(v0 + 48) = v9;
  sub_1004BBE64();
  v10 = objc_allocWithZone(NSSortDescriptor);
  v11 = sub_1004BBE24();

  v12 = [v10 initWithKey:v11 ascending:1];

  *(v0 + 56) = v12;
  sub_1004BBE64();
  v13 = objc_allocWithZone(NSSortDescriptor);
  v14 = sub_1004BBE24();

  v15 = [v13 initWithKey:v14 ascending:1];

  *(v0 + 64) = v15;
  qword_100617570 = v0;
}

uint64_t sub_1001A7F0C()
{
  v0 = sub_1004B6E64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004BBDA4();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v8 = qword_100617118;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v2 + 8))(v7, v1);
  return v9;
}

id *sub_1001A80F8(char a1)
{
  if ((a1 & 0xC0) == 0x80)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_1004BD624();
  __break(1u);
  return result;
}

uint64_t sub_1001A816C()
{
  v0 = sub_1004B6E64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004BBDA4();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v8 = qword_100617118;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_1001A837C(unsigned __int8 a1, char a2)
{
  if ((a1 >> 6) <= 1u || a1 >> 6 == 3 && a1 == 193)
  {
    sub_100003ABC(&qword_100603C50);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1004C51A0;
    sub_1004BBE64();
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = sub_1004BBE24();

    v6 = [v4 initWithKey:v5 ascending:a2 & 1];

    *(v3 + 32) = v6;
    sub_1004BBE64();
    v7 = objc_allocWithZone(NSSortDescriptor);
    v8 = sub_1004BBE24();

    v9 = [v7 initWithKey:v8 ascending:1];

    *(v3 + 40) = v9;
    return v3;
  }

  else
  {
    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A8570()
{
  v0 = sub_1004B6E64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_1004BBDA4();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v8 = qword_100617118;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t NSUserDefaults.sortType(for:keyDomain:)(unsigned __int8 a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v11 = sub_1001A64E4(a1);
    v12 = v6;

    v15._countAndFlagsBits = 45;
    v15._object = 0xE100000000000000;
    sub_1004BC024(v15);

    v16._countAndFlagsBits = a2;
    v16._object = a3;
    sub_1004BC024(v16);

    v7 = v11;
    v8 = v12;
  }

  else
  {
    v7 = sub_1001A64E4(a1);
    v8 = v9;
  }

  v11 = v7;
  v12 = v8;
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(&v11, &v13);

  if (!v14)
  {
    sub_10011CF58(&v13);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0 || (result = _s9MusicCore11SortOptionsV0C4TypeO8rawValueAESgSS_tcfC_0(v11, v12), result == 13))
  {
LABEL_9:
    if ((a1 >> 6) > 1u)
    {
      if (a1 >> 6 == 2)
      {
        return 8;
      }

      else
      {
        return 0x206u >> (8 * (a1 + 64));
      }
    }

    if (a1 >> 6)
    {
      if ((a1 & 0x3F) == 0)
      {
        return 6;
      }
    }

    else if ((a1 & 1) == 0)
    {
      return 6;
    }

    return 2;
  }

  return result;
}

void NSUserDefaults.setSortType(_:for:keyDomain:)(char a1, unsigned __int8 a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v27 = sub_1001A64E4(a2);
    v28 = v8;

    v30._countAndFlagsBits = 45;
    v30._object = 0xE100000000000000;
    sub_1004BC024(v30);

    v31._countAndFlagsBits = a3;
    v31._object = a4;
    sub_1004BC024(v31);

    v9 = v27;
    v10 = v28;
  }

  else
  {
    v9 = sub_1001A64E4(a2);
    v10 = v11;
  }

  if ((a2 & 0xC0) == 0x40)
  {
    v12 = (a2 & 0x3F) == 0;
    if (a4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_1004BDBA4();
    SortOptions.ContentType.identifier.getter(a2);
    sub_1004BBF84();

    v13 = sub_1004BDBF4();
    sub_1004BDBA4();
    sub_1004BBF84();
    v12 = v13 == sub_1004BDBF4();
    if (a4)
    {
LABEL_12:
      v19 = SortOptions.SortType.rawValue.getter(a1);
      v20 = v22;
      v21 = 0;
      goto LABEL_14;
    }
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  v14 = NSUserDefaults.sortType(for:keyDomain:)(a2, a3, 0);
  v15 = SortOptions.SortType.rawValue.getter(v14);
  v17 = v16;
  v19 = SortOptions.SortType.rawValue.getter(a1);
  v20 = v18;
  if (v15 == v19 && v17 == v18)
  {

    v21 = 0;
  }

  else
  {
    v23 = sub_1004BD9C4();

    v21 = v23 ^ 1;
  }

LABEL_14:
  v29 = &type metadata for String;
  v27 = v19;
  v28 = v20;
  v26[0] = v9;
  v26[1] = v10;
  sub_10000E7F4();
  NSUserDefaults.subscript.setter(&v27, v26, &type metadata for String);
  if (v21)
  {
    v24 = CFNotificationCenterGetDarwinNotifyCenter();
    v25 = sub_1004BBE24();
    CFNotificationCenterPostNotification(v24, v25, 0, 0, 1u);
  }
}

id MPModelPlaylist.canBeSorted.getter()
{
  if ([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertyMovieLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertySongLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertyTVEpisodeLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertyTVSeasonLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  result = [v0 hasLoadedValueForKey:MPModelPropertyArtistLibraryAdded];
  if (result)
  {
    return [v0 isLibraryAdded];
  }

  return result;
}

uint64_t MPModelPlaylist.sortStorageKeyDomain.getter()
{
  v1 = [v0 identifiers];
  v2 = [v1 universalStore];

  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = [v2 globalPlaylistID];
  swift_unknownObjectRelease();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = sub_1004BBE64();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

LABEL_8:
    v9 = [v0 identifiers];
    v8 = MPIdentifierSet.bestLibraryIdentifier.getter();

    return v8;
  }

  sub_10000E7F4();
  v8 = sub_1004BD224();

  return v8;
}

uint64_t MPModelPlaylist.legacyPreferredTracklistSortDescriptors.getter()
{
  if (([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded] & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyMovieLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyPlaylistLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertySongLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVEpisodeLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVSeasonLibraryAdded) & 1) == 0 && !objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyArtistLibraryAdded) || !objc_msgSend(v0, "isLibraryAdded"))
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = [v0 sortStorageKeyDomain];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1004BBE64();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v8 = NSUserDefaults.sortType(for:keyDomain:)(0xC2u, v4, v6);

  sub_1001A5494(v8, v12);
  v9 = v13;
  v10 = v14;
  sub_100009178(v12, v13);
  v11 = (*(v10 + 24))(194, v9, v10);
  sub_100004C6C(v12);
  return v11;
}

Class sub_1001A9048(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    sub_1001AA448();
    v6.super.isa = sub_1004BC284().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

id MPModelPlaylist.preferredTracklistSortDescriptors.getter()
{
  v1 = v0;
  if (([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded] & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyMovieLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyPlaylistLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertySongLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVEpisodeLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVSeasonLibraryAdded) & 1) == 0 && !objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyArtistLibraryAdded) || !objc_msgSend(v0, "isLibraryAdded"))
  {
    return 0;
  }

  result = [v0 sortStorageKeyDomain];
  if (result)
  {
    v3 = result;
    v4 = sub_1004BBE64();
    v6 = v5;

    v7 = [objc_opt_self() standardUserDefaults];
    v62[0] = 0x2D74726F53;
    v62[1] = 0xE500000000000000;
    v63._countAndFlagsBits = v4;
    v63._object = v6;
    sub_1004BC024(v63);

    sub_1001AA3A0();
    sub_1001AA3F4();
    NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for Actions.SortPlaylist.TrackListSort, v62);

    v8 = LOWORD(v62[0]);
    if ((v62[0] & 0xFF00) == 0x200)
    {
      result = [v1 legacyPreferredTracklistSortDescriptors];
      if (result)
      {
        v9 = result;
        sub_1001AA448();
        v10 = sub_1004BC2A4();

        return v10;
      }
    }

    else
    {
      v11 = LOBYTE(v62[0]);
      sub_100003ABC(&qword_100603C50);
      if (v8 <= 1u)
      {
        if (v11)
        {
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_1004C51A0;
          sub_100003ABC(&unk_1006040A0);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_1004C50C0;
          *(v50 + 32) = sub_1004BBE64();
          *(v50 + 40) = v51;
          *(v50 + 48) = sub_1004BBE64();
          *(v50 + 56) = v52;
          isa = sub_1004BC284().super.isa;

          v54 = objc_opt_self();
          v55 = [v54 sortDescriptorWithKeyPath:isa ascending:(v8 >> 8) & 1];

          *(v49 + 32) = v55;
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_1004C5070;
          *(v56 + 32) = sub_1004BBE64();
          *(v56 + 40) = v57;
          *(v56 + 48) = sub_1004BBE64();
          *(v56 + 56) = v58;
          *(v56 + 64) = sub_1004BBE64();
          *(v56 + 72) = v59;
          v60 = sub_1004BC284().super.isa;

          v61 = [v54 sortDescriptorWithKeyPath:v60 ascending:1];

          result = v49;
          *(v49 + 40) = v61;
        }

        else
        {
          v24 = (v8 >> 8) & 1;
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_1004C4D40;
          sub_1004BBE64();
          v26 = objc_allocWithZone(NSSortDescriptor);
          v27 = sub_1004BBE24();

          v28 = [v26 initWithKey:v27 ascending:v24];

          result = v25;
          *(v25 + 32) = v28;
        }
      }

      else if (v11 == 2)
      {
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1004C5130;
        sub_100003ABC(&unk_1006040A0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1004C5070;
        *(v30 + 32) = sub_1004BBE64();
        *(v30 + 40) = v31;
        *(v30 + 48) = sub_1004BBE64();
        *(v30 + 56) = v32;
        *(v30 + 64) = sub_1004BBE64();
        *(v30 + 72) = v33;
        v34 = sub_1004BC284().super.isa;

        v35 = objc_opt_self();
        v36 = [v35 sortDescriptorWithKeyPath:v34 ascending:(v8 >> 8) & 1];

        *(v29 + 32) = v36;
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1004C5070;
        *(v37 + 32) = sub_1004BBE64();
        *(v37 + 40) = v38;
        *(v37 + 48) = sub_1004BBE64();
        *(v37 + 56) = v39;
        *(v37 + 64) = sub_1004BBE64();
        *(v37 + 72) = v40;
        v41 = sub_1004BC284().super.isa;

        v42 = [v35 sortDescriptorWithKeyPath:v41 ascending:1];

        *(v29 + 40) = v42;
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1004C50C0;
        *(v43 + 32) = sub_1004BBE64();
        *(v43 + 40) = v44;
        *(v43 + 48) = sub_1004BBE64();
        *(v43 + 56) = v45;
        v46 = sub_1004BC284().super.isa;

        v47 = [v35 sortDescriptorWithKeyPath:v46 ascending:1];

        result = v29;
        *(v29 + 48) = v47;
      }

      else
      {
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1004C51A0;
        sub_100003ABC(&unk_1006040A0);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1004C5070;
        *(v13 + 32) = sub_1004BBE64();
        *(v13 + 40) = v14;
        *(v13 + 48) = sub_1004BBE64();
        *(v13 + 56) = v15;
        *(v13 + 64) = sub_1004BBE64();
        *(v13 + 72) = v16;
        v17 = sub_1004BC284().super.isa;

        v18 = objc_opt_self();
        v19 = [v18 sortDescriptorWithKeyPath:v17 ascending:(v8 >> 8) & 1];

        *(v12 + 32) = v19;
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1004C50C0;
        *(v20 + 32) = sub_1004BBE64();
        *(v20 + 40) = v21;
        *(v20 + 48) = sub_1004BBE64();
        *(v20 + 56) = v22;
        v23 = sub_1004BC284().super.isa;

        v48 = [v18 sortDescriptorWithKeyPath:v23 ascending:1];

        result = v12;
        *(v12 + 40) = v48;
      }
    }
  }

  return result;
}

uint64_t sub_1001A99FC()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, static Logger.sortOptions);
  sub_100007084(v0, static Logger.sortOptions);
  return sub_1004B80A4();
}

uint64_t Logger.sortOptions.unsafeMutableAddressor()
{
  if (qword_100600010 != -1)
  {
    swift_once();
  }

  v0 = sub_1004B80B4();

  return sub_100007084(v0, static Logger.sortOptions);
}

uint64_t static Logger.sortOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100600010 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();
  v3 = sub_100007084(v2, static Logger.sortOptions);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _s9MusicCore11SortOptionsV11ContentTypeO2eeoiySbAE_AEtFZ_0(int a1, int a2)
{
  v2 = a2;
  v3 = a1;
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 != 2 && a1 == 192 && a2 == 192)
    {
      return 1;
    }
  }

  else if (a1 >> 6)
  {
    if ((a2 & 0xC0) == 0x40)
    {
      return ((a2 ^ a1) & 0x3F) == 0;
    }
  }

  else if (a2 < 0x40u)
  {
    return ((a2 ^ a1) & 1) == 0;
  }

  sub_1004BDBA4();
  SortOptions.ContentType.identifier.getter(v3);
  sub_1004BBF84();

  v6 = sub_1004BDBF4();
  sub_1004BDBA4();
  SortOptions.ContentType.identifier.getter(v2);
  sub_1004BBF84();

  return v6 == sub_1004BDBF4();
}

uint64_t sub_1001A9CA8(unsigned __int8 a1, char a2)
{
  if (a1 == 194)
  {
    sub_100003ABC(&qword_100603C50);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1004C51A0;
    sub_100003ABC(&unk_1006040A0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1004C5070;
    *(v4 + 32) = sub_1004BBE64();
    *(v4 + 40) = v5;
    *(v4 + 48) = sub_1004BBE64();
    *(v4 + 56) = v6;
    *(v4 + 64) = sub_1004BBE64();
    *(v4 + 72) = v7;
    isa = sub_1004BC284().super.isa;

    v9 = objc_opt_self();
    v10 = [v9 sortDescriptorWithKeyPath:isa ascending:a2 & 1];

    *(v3 + 32) = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1004C50C0;
    *(v11 + 32) = sub_1004BBE64();
    *(v11 + 40) = v12;
    *(v11 + 48) = sub_1004BBE64();
    *(v11 + 56) = v13;
    v14 = sub_1004BC284().super.isa;

    v15 = [v9 sortDescriptorWithKeyPath:v14 ascending:1];

    *(v3 + 40) = v15;
    return v3;
  }

  else
  {
    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A9EC0(unsigned __int8 a1)
{
  if ((a1 >> 6) <= 1u)
  {
    if (a1 >> 6)
    {
      goto LABEL_10;
    }

LABEL_6:
    if (qword_100600008 != -1)
    {
      swift_once();
    }

    v1 = qword_100617570;

    return v1;
  }

  if (a1 >> 6 == 2)
  {
    goto LABEL_10;
  }

  if (a1 == 192)
  {
    goto LABEL_6;
  }

  if (a1 == 193)
  {
LABEL_10:
    sub_100003ABC(&qword_100603C50);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1004C4D40;
    sub_1004BBE64();
    v2 = objc_allocWithZone(NSSortDescriptor);
    v3 = sub_1004BBE24();

    v4 = [v2 initWithKey:v3 ascending:0];

    *(v1 + 32) = v4;
    return v1;
  }

  result = sub_1004BD624();
  __break(1u);
  return result;
}

uint64_t sub_1001AA0B8(char a1)
{
  if ((a1 & 0xC0) == 0x80)
  {
    sub_100003ABC(&qword_100603C50);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1004C4D40;
    sub_1004BBE64();
    v2 = objc_allocWithZone(NSSortDescriptor);
    v3 = sub_1004BBE24();

    v4 = [v2 initWithKey:v3 ascending:0];

    *(v1 + 32) = v4;
    return v1;
  }

  else
  {
    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

id *sub_1001AA1CC(unsigned __int8 a1)
{
  v1 = a1 >> 6;
  if (v1 < 2)
  {
    return _swiftEmptyArrayStorage;
  }

  if (v1 == 2)
  {
    sub_100003ABC(&qword_100603C50);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1004C4D40;
    sub_1004BBE64();
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = sub_1004BBE24();

    v6 = [v4 initWithKey:v5 ascending:1];

    result = v3;
    *(v3 + 32) = v6;
  }

  else
  {
    if ((a1 & 0xFE) == 0xC0)
    {
      return _swiftEmptyArrayStorage;
    }

    if (qword_1005FFFE0 != -1)
    {
      swift_once();
    }

    if (qword_100617548 >> 62)
    {
      sub_1001AA448();

      v7 = sub_1004BD634();
    }

    else
    {
      v7 = qword_100617548;

      sub_1004BD9E4();
      sub_1001AA448();
    }

    return v7;
  }

  return result;
}

uint64_t _s9MusicCore11SortOptionsV0C4TypeO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A5AB0;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1001AA3A0()
{
  result = qword_100605118;
  if (!qword_100605118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605118);
  }

  return result;
}

unint64_t sub_1001AA3F4()
{
  result = qword_100605120;
  if (!qword_100605120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605120);
  }

  return result;
}

unint64_t sub_1001AA448()
{
  result = qword_100603530;
  if (!qword_100603530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100603530);
  }

  return result;
}

unint64_t sub_1001AA498()
{
  result = qword_100605128;
  if (!qword_100605128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605128);
  }

  return result;
}

unint64_t sub_1001AA4F0()
{
  result = qword_100605130;
  if (!qword_100605130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605130);
  }

  return result;
}

unint64_t sub_1001AA548()
{
  result = qword_100605138;
  if (!qword_100605138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605138);
  }

  return result;
}

unint64_t sub_1001AA5A0()
{
  result = qword_100605140;
  if (!qword_100605140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605140);
  }

  return result;
}

unint64_t sub_1001AA5F8()
{
  result = qword_100605148;
  if (!qword_100605148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605148);
  }

  return result;
}

unint64_t sub_1001AA650()
{
  result = qword_100605150;
  if (!qword_100605150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605150);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SortOptions.ContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1D)
  {
    goto LABEL_17;
  }

  if (a2 + 227 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 227) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 227;
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

      return (*a1 | (v4 << 8)) - 227;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 227;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for SortOptions.ContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 227 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 227) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1D)
  {
    v4 = 0;
  }

  if (a2 > 0x1C)
  {
    v5 = ((a2 - 29) >> 8) + 1;
    *result = a2 - 29;
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
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001AA820(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >> 6;
  v3 = (v1 & 7) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_BYTE *sub_1001AA84C(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 5) & 7 | 0xC0;
  }

  return result;
}

uint64_t static MPModelPlaylist.artworkPlaceholderSystemImageName(for:)(uint64_t a1, char a2)
{
  result = 0x6F6E2E636973756DLL;
  if ((a2 & 1) == 0)
  {
    v4 = a1 - 1;
    if (v4 <= 2)
    {
      return *&aGearshapgenius[8 * v4];
    }
  }

  return result;
}

uint64_t MPModelPlaylist.artworkPlaceholderImage.getter()
{
  v1 = 0x6F6E2E636973756DLL;
  if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistType])
  {
    v2 = [v0 type] - 1;
    if (v2 <= 2)
    {
      return *&aGearshapgenius[8 * v2];
    }
  }

  return v1;
}

id MPModelPlaylist.preferredArtworkCatalog.getter()
{
  if (![v0 hasLoadedValueForKey:MPModelPropertyPlaylistType])
  {
    goto LABEL_12;
  }

  v1 = [v0 type];
  if (v1 > 8)
  {
    goto LABEL_12;
  }

  if (((1 << v1) & 0x173) != 0)
  {
    result = MPModelPlaylist.coverArtworkCatalog.getter();
    if (!result)
    {
      result = [v0 artworkCatalog];
      if (!result)
      {
        if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistTracksTiledArtwork])
        {
          v3 = [v0 tracksTiledArtworkCatalogWithRows:2 columns:2];
          return v3;
        }

        return 0;
      }
    }

    return result;
  }

  if (v1 == 3)
  {
    return 0;
  }

  if (v1 != 7 || ![v0 hasLoadedValueForKey:MPModelPropertyPlaylistEditorialArtwork] || (result = objc_msgSend(v0, "editorialArtworkCatalog")) == 0)
  {
LABEL_12:
    v3 = [v0 artworkCatalog];
    return v3;
  }

  return result;
}

char *ModelObjectBackedStoreItemMetadata.init(modelObject:)(void *a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  *&v1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v4 = &v1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v4 = 0;
  *(v4 + 1) = 0;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 anyObject];
    goto LABEL_5;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v6 = [v7 innerObject];
LABEL_5:
    v8 = v6;
    if (v8)
    {
      goto LABEL_7;
    }
  }

  v8 = a1;
LABEL_7:
  v9 = v8;
  ObjectType = swift_getObjectType();
  v11 = [v9 identifiers];
  v12 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v11);
  v14 = v13;

  if (v14)
  {
    v21.receiver = v1;
    v21.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
    v15 = objc_msgSendSuper2(&v21, "init");
    v16 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
    swift_beginAccess();
    v17 = *&v15[v16];
    *&v15[v16] = a1;
    v18 = v15;

    v19 = &v18[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
    swift_beginAccess();
    *v19 = v12;
    *(v19 + 1) = v14;
  }

  else
  {

    type metadata accessor for ModelObjectBackedStoreItemMetadata();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v18;
}

id ModelObjectBackedStoreItemMetadata.__allocating_init(storePlatformDictionary:parentStoreItemMetadata:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_1004BBC24().super.isa;

  v6 = [v4 initWithStorePlatformDictionary:isa parentStoreItemMetadata:a2];

  return v6;
}

id ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:parentStoreItemMetadata:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v4 = &v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v4 = 0;
  *(v4 + 1) = 0;
  isa = sub_1004BBC24().super.isa;

  v8.receiver = v2;
  v8.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v6 = objc_msgSendSuper2(&v8, "initWithStorePlatformDictionary:parentStoreItemMetadata:", isa, a2);

  return v6;
}

id ModelObjectBackedStoreItemMetadata.__allocating_init(storePlatformDictionary:expirationDate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5.super.isa = sub_1004BBC24().super.isa;

  v6 = sub_1004B6CD4();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    isa = sub_1004B6C34().super.isa;
    (*(v7 + 8))(a2, v6);
  }

  v9 = [objc_allocWithZone(v3) initWithStorePlatformDictionary:v5.super.isa expirationDate:isa];

  return v9;
}

id ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:expirationDate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_100003ABC(&qword_100603110);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  *&v3[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v8 = &v3[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9.super.isa = sub_1004BBC24().super.isa;

  sub_1000F8B64(a2, v7);
  v10 = sub_1004B6CD4();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v7, 1, v10) != 1)
  {
    isa = sub_1004B6C34().super.isa;
    (*(v11 + 8))(v7, v10);
  }

  v13 = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v16.receiver = v3;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, "initWithStorePlatformDictionary:expirationDate:", v9.super.isa, isa);

  sub_100007214(a2, &qword_100603110);
  return v14;
}

id ModelObjectBackedStoreItemMetadata.__allocating_init(storePlatformDictionary:parentStoreItemMetadata:expirationDate:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7.super.isa = sub_1004BBC24().super.isa;

  v8 = sub_1004B6CD4();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(a3, 1, v8) != 1)
  {
    isa = sub_1004B6C34().super.isa;
    (*(v9 + 8))(a3, v8);
  }

  v11 = [objc_allocWithZone(v4) initWithStorePlatformDictionary:v7.super.isa parentStoreItemMetadata:a2 expirationDate:isa];

  return v11;
}

id ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:parentStoreItemMetadata:expirationDate:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_1001B4320(a1, a2, a3);

  return v4;
}

id sub_1001AB6EC(uint64_t a1, SEL *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_1004BBC24().super.isa;

  v6 = [v4 *a2];

  return v6;
}

id sub_1001AB77C(uint64_t a1, SEL *a2)
{
  *&v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v4 = &v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v4 = 0;
  *(v4 + 1) = 0;
  isa = sub_1004BBC24().super.isa;

  v8.receiver = v2;
  v8.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v6 = objc_msgSendSuper2(&v8, *a2, isa);

  return v6;
}

id sub_1001AB828(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_1004BBC44();
  *&a1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v6 = &a1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v6 = 0;
  *(v6 + 1) = 0;
  isa = sub_1004BBC24().super.isa;

  v10.receiver = a1;
  v10.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v8 = objc_msgSendSuper2(&v10, *a4, isa);

  return v8;
}

id CTRunRef.PartialRunView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

void ModelObjectBackedStoreItemMetadata.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  *v1 = 0;
  v1[1] = 0;
  sub_1004BD624();
  __break(1u);
}

void *ModelObjectBackedStoreItemMetadata.modelObject.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ModelObjectBackedStoreItemMetadata.modelObject.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ModelObjectBackedStoreItemMetadata.modelObjectStoreID.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ModelObjectBackedStoreItemMetadata.modelObjectStoreID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

char *ModelObjectBackedStoreItemMetadata.appending(_:)(uint64_t a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v3 = objc_msgSendSuper2(&v14, "metadataByAppendingMetadata:", a1);
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *&v1[v4];
  v6 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v7 = *&v3[v6];
  *&v3[v6] = v5;
  v8 = v5;

  v9 = &v1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  swift_beginAccess();
  v11 = *v9;
  v10 = *(v9 + 1);
  v12 = &v3[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  swift_beginAccess();
  *v12 = v11;
  *(v12 + 1) = v10;

  return v3;
}

uint64_t ModelObjectBackedStoreItemMetadata.artistName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B4514;
  *(v3 + 24) = v2;
  v9[4] = sub_1000E6038;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100008224;
  v9[3] = &unk_1005B55D8;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_1001ABFF8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v10 = [v8 artist];
      if (v10)
      {
LABEL_7:
        v13 = v10;
        v14 = [v10 name];

        if (v14)
        {
          v15 = sub_1004BBE64();
          v17 = v16;

LABEL_12:
          *a2 = v15;
          a2[1] = v17;
        }
      }

LABEL_9:

      goto LABEL_10;
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v9 = v6;
      v10 = [v12 artist];
      if (v10)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v18 = result;
      v19 = v6;
      v20 = [v18 show];
      v21 = v20;
      if (!v20)
      {
        v22 = [v18 season];
        v15 = [v22 show];

        if (!v15)
        {

          goto LABEL_11;
        }

        v21 = v15;
        v20 = 0;
      }

      v23 = v20;
      v24 = [v21 title];

      if (v24)
      {
        v15 = sub_1004BBE64();
        v17 = v25;

        goto LABEL_12;
      }

LABEL_10:
      v15 = 0;
LABEL_11:
      v17 = 0;
      goto LABEL_12;
    }
  }

  return result;
}

void ModelObjectBackedStoreItemMetadata.artistStoreID.getter(uint64_t a1@<X8>)
{
  v25 = 0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = &v25;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1001B4534;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B5650;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  [v3 performWithoutEnforcement:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v25;
    if (!v25)
    {
      goto LABEL_11;
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      v13 = [v11 anyObject];
    }

    else
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      v15 = v9;
      if (!v14)
      {
LABEL_8:
        v16 = v9;
LABEL_9:
        v17 = v16;
        ObjectType = swift_getObjectType();
        v19 = [v17 identifiers];
        v20 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v19);
        v22 = v21;

        if (v22)
        {
          *(a1 + 24) = &type metadata for String;
          *a1 = v20;
          *(a1 + 8) = v22;
LABEL_12:
          v23 = v25;

          return;
        }

LABEL_11:
        *a1 = 0u;
        *(a1 + 16) = 0u;
        goto LABEL_12;
      }

      v13 = [v14 innerObject];
    }

    v16 = v13;
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_1001AC4D0(uint64_t a1, void **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6 || (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
    {
      v7 = [v6 artist];
LABEL_5:
      v8 = *a2;
      *a2 = v7;

      return;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v5;
      v12 = [v10 show];
      if (v12)
      {
        v13 = v12;

        v7 = v13;
      }

      else
      {
        v14 = [v10 season];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 show];

          v7 = v16;
        }

        else
        {

          v7 = 0;
        }
      }

      goto LABEL_5;
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.audioTraits.getter()
{
  v10 = _swiftEmptyArrayStorage;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B453C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B56C8;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_1001AC810(uint64_t a1, char **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (!v5)
  {
    return;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    goto LABEL_3;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      return;
    }

LABEL_3:
    v7 = v6;
    v8 = v5;
    if (([v7 traits] & 0x10) != 0)
    {
      v9 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_100017CC8(0, *(v9 + 2) + 1, 1, v9);
        *a2 = v9;
      }

      v11 = *(v9 + 2);
      v12 = *(v9 + 3);
      v13 = v11 + 1;
      if (v11 >= v12 >> 1)
      {
        v62 = v11 + 1;
        v50 = v9;
        v51 = *(v9 + 2);
        v52 = sub_100017CC8((v12 > 1), v11 + 1, 1, v50);
        v11 = v51;
        v13 = v62;
        v9 = v52;
        *a2 = v52;
      }

      *(v9 + 2) = v13;
      v14 = &v9[16 * v11];
      *(v14 + 4) = 0x736F6D7461;
      *(v14 + 5) = 0xE500000000000000;
    }

    if (([v7 traits] & 4) != 0)
    {
      v15 = *a2;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v15;
      if ((v16 & 1) == 0)
      {
        v15 = sub_100017CC8(0, *(v15 + 2) + 1, 1, v15);
        *a2 = v15;
      }

      v17 = *(v15 + 2);
      v18 = *(v15 + 3);
      v19 = v17 + 1;
      if (v17 >= v18 >> 1)
      {
        v63 = v17 + 1;
        v53 = v15;
        v54 = *(v15 + 2);
        v55 = sub_100017CC8((v18 > 1), v17 + 1, 1, v53);
        v17 = v54;
        v19 = v63;
        v15 = v55;
        *a2 = v55;
      }

      *(v15 + 2) = v19;
      v20 = &v15[16 * v17];
      *(v20 + 4) = 0x6C2D7365722D6968;
      *(v20 + 5) = 0xEF7373656C73736FLL;
    }

    if (([v7 traits] & 2) == 0)
    {
      goto LABEL_29;
    }

    v21 = *a2;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v21;
    if ((v22 & 1) == 0)
    {
      v21 = sub_100017CC8(0, *(v21 + 2) + 1, 1, v21);
      *a2 = v21;
    }

    v23 = *(v21 + 2);
    v24 = *(v21 + 3);
    v25 = v23 + 1;
    if (v23 >= v24 >> 1)
    {
      v62 = v23 + 1;
      v56 = v21;
      v57 = *(v21 + 2);
      v58 = sub_100017CC8((v24 > 1), v23 + 1, 1, v56);
      v23 = v57;
      v25 = v62;
      v21 = v58;
      *a2 = v58;
    }

    *(v21 + 2) = v25;
    v26 = &v21[16 * v23];
    v27 = 0x7373656C73736F6CLL;
    v28 = 0xE800000000000000;
    goto LABEL_28;
  }

  v7 = v29;
  v8 = v5;
  if (([v7 traits] & 0x10) != 0)
  {
    v30 = *a2;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v30;
    if ((v31 & 1) == 0)
    {
      v30 = sub_100017CC8(0, *(v30 + 2) + 1, 1, v30);
      *a2 = v30;
    }

    v32 = *(v30 + 2);
    v33 = *(v30 + 3);
    v34 = v32 + 1;
    if (v32 >= v33 >> 1)
    {
      v62 = v32 + 1;
      v59 = v30;
      v60 = *(v30 + 2);
      v61 = sub_100017CC8((v33 > 1), v32 + 1, 1, v59);
      v32 = v60;
      v34 = v62;
      v30 = v61;
      *a2 = v61;
    }

    *(v30 + 2) = v34;
    v26 = &v30[16 * v32];
    v27 = 0x736F6D7461;
    v28 = 0xE500000000000000;
LABEL_28:
    *(v26 + 4) = v27;
    *(v26 + 5) = v28;
  }

LABEL_29:
  if (([v7 traits] & 8) != 0)
  {
    v35 = *a2;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v35;
    if ((v36 & 1) == 0)
    {
      v35 = sub_100017CC8(0, *(v35 + 2) + 1, 1, v35);
      *a2 = v35;
    }

    v37 = *(v35 + 2);
    v38 = *(v35 + 3);
    v39 = v37 + 1;
    if (v37 >= v38 >> 1)
    {
      v64 = v37 + 1;
      v47 = v35;
      v48 = *(v35 + 2);
      v49 = sub_100017CC8((v38 > 1), v37 + 1, 1, v47);
      v37 = v48;
      v39 = v64;
      v35 = v49;
      *a2 = v49;
    }

    *(v35 + 2) = v39;
    v40 = &v35[16 * v37];
    *(v40 + 4) = 0x6C616974617073;
    *(v40 + 5) = 0xE700000000000000;
  }

  if (([v7 traits] & 0x20) != 0)
  {
    v41 = *a2;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v41;
    if ((v42 & 1) == 0)
    {
      v41 = sub_100017CC8(0, *(v41 + 2) + 1, 1, v41);
      *a2 = v41;
    }

    v44 = *(v41 + 2);
    v43 = *(v41 + 3);
    if (v44 >= v43 >> 1)
    {
      *a2 = sub_100017CC8((v43 > 1), v44 + 1, 1, v41);
    }

    v45 = *a2;
    *(v45 + 2) = v44 + 1;
    v46 = &v45[16 * v44];
    *(v46 + 4) = 0x646E756F72727573;
    *(v46 + 5) = 0xE800000000000000;
  }

  else
  {
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.isBeats1.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B4544;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B5740;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.collectionName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B4570;
  *(v3 + 24) = v2;
  v9[4] = sub_1000E639C;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100008224;
  v9[3] = &unk_1005B57B8;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

void ModelObjectBackedStoreItemMetadata.collectionStoreID.getter(uint64_t a1@<X8>)
{
  v25 = 0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = &v25;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1001B459C;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B5830;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  [v3 performWithoutEnforcement:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v25;
    if (!v25)
    {
      goto LABEL_11;
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      v13 = [v11 anyObject];
    }

    else
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      v15 = v9;
      if (!v14)
      {
LABEL_8:
        v16 = v9;
LABEL_9:
        v17 = v16;
        ObjectType = swift_getObjectType();
        v19 = [v17 identifiers];
        v20 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v19);
        v22 = v21;

        if (v22)
        {
          *(a1 + 24) = &type metadata for String;
          *a1 = v20;
          *(a1 + 8) = v22;
LABEL_12:
          v23 = v25;

          return;
        }

LABEL_11:
        *a1 = 0u;
        *(a1 + 16) = 0u;
        goto LABEL_12;
      }

      v13 = [v14 innerObject];
    }

    v16 = v13;
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_1001AD2AC(uint64_t a1, void **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = &selRef_album;
    }

    else
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (!v5)
      {
        return;
      }

      v6 = &selRef_season;
    }

    v7 = [v5 *v6];
    v8 = *a2;
    *a2 = v7;
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.isCompilation.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B45A4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B58A8;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.composerName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B45D0;
  *(v3 + 24) = v2;
  v9[4] = sub_1000E639C;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100008224;
  v9[3] = &unk_1005B5920;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_1001AD69C(uint64_t a1, uint64_t *a2, SEL *a3, const char **a4)
{
  v8 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v10 = *(a1 + v8);
  if (v10)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v11 = result;
      v12 = v10;
      v13 = [v11 *a3];
      if (v13 && (v14 = *a4, v15 = v13, v16 = [v13 v14], v15, v16))
      {
        v17 = sub_1004BBE64();
        v19 = v18;
      }

      else
      {

        v17 = 0;
        v19 = 0;
      }

      *a2 = v17;
      a2[1] = v19;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.copyrightText.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B45FC;
  *(v3 + 24) = v2;
  v9[4] = sub_1000E639C;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100008224;
  v9[3] = &unk_1005B5998;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.curatorName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B4634;
  *(v3 + 24) = v2;
  v9[4] = sub_1000E639C;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100008224;
  v9[3] = &unk_1005B5A10;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

void sub_1001ADAB0(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 curator];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 name];
        if (v11)
        {
          v12 = v11;
          v13 = sub_1004BBE64();
          v15 = v14;
        }

        else
        {
          v16 = [v10 shortName];
          if (v16)
          {
            v17 = v16;
            v13 = sub_1004BBE64();
            v15 = v18;
          }

          else
          {

            v13 = 0;
            v15 = 0;
          }
        }

        *a2 = v13;
        a2[1] = v15;
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.descriptionText.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B463C;
  *(v3 + 24) = v2;
  v9[4] = sub_1000E639C;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100008224;
  v9[3] = &unk_1005B5A88;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}