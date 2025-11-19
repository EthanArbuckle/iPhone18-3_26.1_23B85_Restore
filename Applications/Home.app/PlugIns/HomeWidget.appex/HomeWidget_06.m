uint64_t sub_10008AF4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetAnalyticsEventType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WidgetAnalyticsEventType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10008B124()
{
  *v0;
  sub_10009E624();
}

uint64_t sub_10008B260@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008C948(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10008B290(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xED00006465746165;
    v9 = 0xD000000000000010;
    v10 = 0x80000001000A3FD0;
    if (v2 != 1)
    {
      v9 = 0xD000000000000018;
      v10 = 0x80000001000A3FF0;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0x7243746567646977;
    }

    if (!v11)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000001000A4050;
    v4 = 0xD000000000000019;
    if (v2 != 5)
    {
      v4 = 0xD00000000000001BLL;
      v3 = 0x80000001000A4070;
    }

    v5 = 0x80000001000A4010;
    v6 = 0xD00000000000001DLL;
    if (v2 == 3)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v5 = 0x80000001000A4030;
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

unint64_t sub_10008B3A4()
{
  result = qword_1000C2E68;
  if (!qword_1000C2E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2E68);
  }

  return result;
}

uint64_t sub_10008B3F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003714(&qword_1000C2E78, &unk_1000A39C0);
  v38 = a2;
  result = sub_10009EBC4();
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
      sub_10009EDD4();
      sub_10009E624();
      result = sub_10009EE04();
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

uint64_t sub_10008B6A0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_10009CF14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_100003714(&qword_1000C0EF0, &qword_10009FD18);
  v44 = a2;
  result = sub_10009EBC4();
  v13 = result;
  if (*(v10 + 16))
  {
    v48 = v6;
    v40 = v3;
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
    v41 = (v7 + 16);
    v42 = v10;
    v43 = v7;
    v46 = (v7 + 32);
    v20 = result + 64;
    v21 = v45;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 48);
      v47 = *(v43 + 72);
      v28 = v27 + v47 * v26;
      if (v44)
      {
        (*v46)(v21, v28, v48);
        v29 = *(*(v10 + 56) + 8 * v26);
      }

      else
      {
        (*v41)(v21, v28, v48);
        v29 = *(*(v10 + 56) + 8 * v26);
      }

      v30 = *(v13 + 40);
      sub_10008CA10();
      result = sub_10009E4F4();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v21 = v45;
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
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v21 = v45;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v46)(*(v13 + 48) + v47 * v22, v21, v48);
      *(*(v13 + 56) + 8 * v22) = v29;
      ++*(v13 + 16);
      v10 = v42;
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

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_10008BA4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003714(&qword_1000C0F10, &qword_1000A39D0);
  v38 = a2;
  result = sub_10009EBC4();
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
      sub_10009EDD4();
      sub_10009E624();
      result = sub_10009EE04();
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

uint64_t sub_10008BCEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003714(&qword_1000C2E70, &qword_1000A39B8);
  v39 = a2;
  result = sub_10009EBC4();
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
      sub_10009EDD4();
      sub_10009E624();
      result = sub_10009EE04();
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

uint64_t sub_10008BF90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001B558(a2, a3);
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
      sub_10008B3F8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10001B558(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_10009ED74();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10008C284();
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

uint64_t sub_10008C10C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001B558(a2, a3);
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
      sub_10008BCEC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10001B558(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_10009ED74();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10008C7DC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
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

void *sub_10008C284()
{
  v1 = v0;
  sub_100003714(&qword_1000C2E78, &unk_1000A39C0);
  v2 = *v0;
  v3 = sub_10009EBB4();
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

char *sub_10008C3F4()
{
  v1 = v0;
  v34 = sub_10009CF14();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003714(&qword_1000C0EF0, &qword_10009FD18);
  v4 = *v0;
  v5 = sub_10009EBB4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
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

void *sub_10008C674()
{
  v1 = v0;
  sub_100003714(&qword_1000C0F10, &qword_1000A39D0);
  v2 = *v0;
  v3 = sub_10009EBB4();
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
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

id sub_10008C7DC()
{
  v1 = v0;
  sub_100003714(&qword_1000C2E70, &qword_1000A39B8);
  v2 = *v0;
  v3 = sub_10009EBB4();
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

uint64_t sub_10008C948(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000BB238;
  v6._object = a2;
  v4 = sub_10009EBE4(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10008C994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_10008CA10()
{
  result = qword_1000C0B68;
  if (!qword_1000C0B68)
  {
    sub_10009CF14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0B68);
  }

  return result;
}

uint64_t sub_10008CA68()
{
  v1 = sub_10009D2A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009D2C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v42 - v16;
  v18 = type metadata accessor for WidgetTileInfo();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = (v0 + v20[22]);
  if (v23[1])
  {
    v24 = *v23;
    v25 = v23[1];
LABEL_9:

    return v24;
  }

  v44 = v7;
  v45 = 0;
  if (*(v0 + v20[13]) != 1)
  {
    goto LABEL_8;
  }

  v26 = v0 + v20[15];
  v27 = *(v26 + 8);
  if (v27 >= 4)
  {
    goto LABEL_8;
  }

  v28 = *v26;
  v42 = v20;
  v43 = v28;
  sub_100006850(v0, v22);
  if (v27 > 1)
  {
    if (v27 == 2)
    {
      sub_100006918(v22);
      if (*(v0 + v42[17]) != 1)
      {
LABEL_27:
        v24 = 0;
        goto LABEL_9;
      }

LABEL_8:
      v24 = sub_10009E604();
      goto LABEL_9;
    }

    v36 = v43;
    sub_100006918(v22);
    sub_10009E7D4();
    v37 = sub_10009D4F4();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v17, 1, v37) == 1)
    {
      sub_10008E82C(v17);
    }

    else
    {
      (*(v2 + 104))(v5, enum case for StatusContext.tile(_:), v1);
      sub_10009D2B4();
      (*(v2 + 8))(v5, v1);
      (*(v38 + 56))(v15, 1, 1, v37);
      v39 = v37;
      v24 = sub_10009D4C4();
      v41 = v40;
      sub_10008E82C(v15);
      (*(v44 + 8))(v10, v6);
      (*(v38 + 8))(v17, v39);
      if (v41)
      {
LABEL_24:

        goto LABEL_9;
      }
    }

    v24 = sub_10009E604();

    goto LABEL_24;
  }

  if (!v27)
  {
    v29 = v43;
    v24 = sub_10008E548();

LABEL_19:
    sub_100006918(v22);
    goto LABEL_9;
  }

  v31 = v43;
  v32 = [v31 services];
  sub_100007330(0, &qword_1000C0C48, HMService_ptr);
  v33 = sub_10009E6A4();

  if (!(v33 >> 62))
  {
    result = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

  result = sub_10009EBA4();
  if (!result)
  {
LABEL_26:
    sub_100006918(v22);

    goto LABEL_27;
  }

LABEL_15:
  if ((v33 & 0xC000000000000001) != 0)
  {
    v34 = sub_10009EAE4();
    goto LABEL_18;
  }

  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v33 + 32);
LABEL_18:
    v35 = v34;

    v24 = sub_10008E548();

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_10008CFDC()
{
  v1 = sub_10009D464();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009D1C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v47 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v47 - v16;
  __chkstk_darwin(v15);
  v19 = &v47 - v18;
  v20 = type metadata accessor for WidgetTileInfo();
  v21 = (v0 + *(v20 + 84));
  if ((v21[1] & 1) == 0)
  {
    v25 = *v21;
    return sub_10008DFCC();
  }

  v22 = v0 + *(v20 + 60);
  v23 = *(v22 + 8);
  if ((v23 - 2) < 3)
  {
    return 0;
  }

  v55 = v20;
  v26 = *v22;
  v57 = v7;
  v58 = v0;
  v53 = v5;
  if (v23)
  {
    v28 = v26;
    v29 = [v28 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v30 = sub_10009E6A4();

    if (v30 >> 62)
    {
      result = sub_10009EBA4();
      if (result)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_10:
        v48 = v1;
        v54 = v2;
        if ((v30 & 0xC000000000000001) != 0)
        {
          v31 = sub_10009EAE4();
        }

        else
        {
          if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v31 = *(v30 + 32);
        }

        v27 = v31;

        v7 = v57;
        goto LABEL_14;
      }
    }

    return 0;
  }

  v54 = v2;
  v48 = v1;
  v27 = v26;
LABEL_14:
  v56 = v27;
  sub_10009E904();
  v50 = *(v7 + 104);
  v50(v17, enum case for ServiceKind.thermostat(_:), v6);
  v32 = sub_10009408C();
  sub_10009E654();
  v51 = v32;
  sub_10009E654();
  v52 = v14;
  v49 = v7 + 104;
  if (v61 == v59 && v62 == v60)
  {
    v33 = 1;
  }

  else
  {
    v33 = sub_10009ED34();
  }

  v34 = v58;
  v35 = *(v57 + 8);
  v35(v17, v6);
  v35(v19, v6);

  v36 = v54;
  if ((v33 & 1) == 0)
  {
    v37 = v52;
    sub_10009E904();
    v50(v11, enum case for ServiceKind.heaterCooler(_:), v6);
    sub_10009E654();
    sub_10009E654();
    if (v61 == v59 && v62 == v60)
    {
      v35(v11, v6);
      v35(v37, v6);

      v34 = v58;
    }

    else
    {
      v38 = sub_10009ED34();
      v35(v11, v6);
      v35(v37, v6);

      v34 = v58;
      if ((v38 & 1) == 0)
      {

        return 0;
      }
    }
  }

  if (*(v34 + *(v55 + 52)))
  {
    v39 = v55;
    v40 = v53;
    v41 = v48;
    (*(v36 + 104))(v53, enum case for CharacteristicKind.currentTemperature(_:), v48);
    v42 = *(v34 + *(v39 + 64));
    v43 = v56;
    sub_100016C60(v40, v42);
    v45 = v44;
    (*(v36 + 8))(v40, v41);
    if (v45)
    {

      return 0;
    }

    v46 = sub_10008DFCC();
  }

  else
  {
    v46 = sub_10009E604();
  }

  return v46;
}

uint64_t sub_10008D598()
{
  v83 = sub_10009D2A4();
  v81 = *(v83 - 8);
  v0 = *(v81 + 64);
  __chkstk_darwin(v83);
  v2 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10009D2C4();
  v82 = *(v3 - 8);
  v4 = *(v82 + 64);
  __chkstk_darwin(v3);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v71 - v12;
  v14 = sub_10009D1C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v71 - v20;
  v22 = type metadata accessor for WidgetTileInfo();
  v23 = *(*(v22 - 1) + 64);
  v24 = __chkstk_darwin(v22);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (v84 + *(v24 + 88));
  if (v27[1])
  {
    v28 = *v27;
    v29 = v27[1];
LABEL_11:

    return v28;
  }

  v73 = v11;
  v74 = v6;
  v75 = v3;
  v76 = v21;
  v30 = v83;
  v77 = v19;
  v78 = v15;
  v79 = v14;
  v80 = 0;
  if (*(v84 + v22[13]) != 1)
  {
    goto LABEL_10;
  }

  v31 = v84 + v22[15];
  v32 = *(v31 + 8);
  if (v32 >= 4)
  {
    goto LABEL_10;
  }

  v33 = *v31;
  v34 = v84;
  v72 = v26;
  sub_100006850(v84, v26);
  if (v32 > 1)
  {
    if (v32 == 2)
    {
      sub_100006918(v72);
      if (*(v34 + v22[17]) != 1)
      {
LABEL_33:
        v28 = 0;
        goto LABEL_11;
      }

LABEL_10:
      v28 = sub_10009E604();
      goto LABEL_11;
    }

    v57 = v33;
    sub_100006918(v72);
    v58 = v13;
    sub_10009E7D4();
    v59 = sub_10009D4F4();
    v60 = *(v59 - 8);
    if ((*(v60 + 48))(v13, 1, v59) == 1)
    {
      sub_10008E82C(v13);
    }

    else
    {
      v61 = v81;
      (*(v81 + 104))(v2, enum case for StatusContext.tile(_:), v30);
      v62 = v57;
      v63 = v74;
      sub_10009D2B4();
      (*(v61 + 8))(v2, v30);
      v64 = v73;
      (*(v60 + 56))(v73, 1, 1, v59);
      v28 = sub_10009D4C4();
      v66 = v65;
      sub_10008E82C(v64);
      v67 = v63;
      v57 = v62;
      (*(v82 + 8))(v67, v75);
      (*(v60 + 8))(v58, v59);
      if (v66)
      {
LABEL_31:

        goto LABEL_11;
      }
    }

    v28 = sub_10009E604();

    goto LABEL_31;
  }

  if (!v32)
  {
    v35 = v33;
    v36 = v76;
    sub_10009E904();
    v37 = v78;
    v38 = v79;
    v39 = (*(v78 + 88))(v36, v79);
    if (v39 == enum case for ServiceKind.airPurifier(_:))
    {
LABEL_8:
      v40 = &enum case for CharacteristicKind.rotationSpeed(_:);
      v41 = "fanActivated: %s rotationSpeedValue: %ld";
LABEL_9:
      v42 = v72;
      v43 = sub_100093B5C(v40, v41);
LABEL_28:
      v28 = v43;

      sub_100006918(v42);
      goto LABEL_11;
    }

    if (v39 != enum case for ServiceKind.door(_:))
    {
      if (v39 == enum case for ServiceKind.fan(_:))
      {
        goto LABEL_8;
      }

      if (v39 != enum case for ServiceKind.faucet(_:) && v39 != enum case for ServiceKind.garageDoorOpener(_:) && v39 != enum case for ServiceKind.heaterCooler(_:))
      {
        if (v39 == enum case for ServiceKind.humidifierDehumidifier(_:))
        {
          v42 = v72;
          v43 = sub_10009287C();
          goto LABEL_28;
        }

        if (v39 != enum case for ServiceKind.irrigationSystem(_:))
        {
          if (v39 == enum case for ServiceKind.lightbulb(_:))
          {
            v40 = &enum case for CharacteristicKind.brightness(_:);
            v41 = "lightbulb: %s brightnessValue: %ld";
            goto LABEL_9;
          }

          if (v39 != enum case for ServiceKind.lockMechanism(_:) && v39 != enum case for ServiceKind.securitySystem(_:) && v39 != enum case for ServiceKind.thermostat(_:) && v39 != enum case for ServiceKind.valve(_:))
          {
            if (v39 == enum case for ServiceKind.ventilationFan(_:))
            {
              goto LABEL_8;
            }

            if (v39 != enum case for ServiceKind.window(_:) && v39 != enum case for ServiceKind.windowCovering(_:))
            {
              v68 = v72;
              v69 = v37;
              v28 = sub_100093678();

              sub_100006918(v68);
              (*(v69 + 8))(v36, v38);
              goto LABEL_11;
            }
          }
        }
      }
    }

    v42 = v72;
    v43 = sub_10008CA68();
    goto LABEL_28;
  }

  v45 = v33;
  v46 = [v45 services];
  sub_100007330(0, &qword_1000C0C48, HMService_ptr);
  v47 = sub_10009E6A4();

  if (v47 >> 62)
  {
    result = sub_10009EBA4();
  }

  else
  {
    result = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48 = v77;
  if (!result)
  {
    sub_100006918(v72);

    goto LABEL_33;
  }

  if ((v47 & 0xC000000000000001) != 0)
  {
    v50 = sub_10009EAE4();
    v49 = v79;
LABEL_21:

    sub_10009E904();
    v51 = v78;
    v52 = (*(v78 + 88))(v48, v49);
    if (v52 == enum case for ServiceKind.airPurifier(_:))
    {
LABEL_22:
      v53 = &enum case for CharacteristicKind.rotationSpeed(_:);
      v54 = "fanActivated: %s rotationSpeedValue: %ld";
LABEL_23:
      v55 = v72;
      v56 = sub_100093B5C(v53, v54);
LABEL_36:
      v28 = v56;

      sub_100006918(v55);
      goto LABEL_11;
    }

    if (v52 != enum case for ServiceKind.door(_:))
    {
      if (v52 == enum case for ServiceKind.fan(_:))
      {
        goto LABEL_22;
      }

      if (v52 != enum case for ServiceKind.faucet(_:) && v52 != enum case for ServiceKind.garageDoorOpener(_:) && v52 != enum case for ServiceKind.heaterCooler(_:))
      {
        if (v52 == enum case for ServiceKind.humidifierDehumidifier(_:))
        {
          v55 = v72;
          v56 = sub_10009287C();
          goto LABEL_36;
        }

        if (v52 != enum case for ServiceKind.irrigationSystem(_:))
        {
          if (v52 == enum case for ServiceKind.lightbulb(_:))
          {
            v53 = &enum case for CharacteristicKind.brightness(_:);
            v54 = "lightbulb: %s brightnessValue: %ld";
            goto LABEL_23;
          }

          if (v52 != enum case for ServiceKind.lockMechanism(_:) && v52 != enum case for ServiceKind.securitySystem(_:) && v52 != enum case for ServiceKind.thermostat(_:) && v52 != enum case for ServiceKind.valve(_:))
          {
            if (v52 == enum case for ServiceKind.ventilationFan(_:))
            {
              goto LABEL_22;
            }

            if (v52 != enum case for ServiceKind.window(_:) && v52 != enum case for ServiceKind.windowCovering(_:))
            {
              v70 = v72;
              v28 = sub_100093678();

              sub_100006918(v70);
              (*(v51 + 8))(v48, v49);
              goto LABEL_11;
            }
          }
        }
      }
    }

    v55 = v72;
    v56 = sub_10008CA68();
    goto LABEL_36;
  }

  v49 = v79;
  if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v50 = *(v47 + 32);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_10008DFCC()
{
  v0 = sub_10009CDB4();
  v46 = *(v0 - 8);
  v47 = v0;
  v1 = *(v46 + 64);
  __chkstk_darwin(v0);
  v44 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100003714(&qword_1000C2E90, &qword_1000A39E0);
  v45 = *(v43 - 8);
  v3 = *(v45 + 64);
  __chkstk_darwin(v43);
  v39 = &v34 - v4;
  v5 = sub_100003714(&qword_1000C2E98, &qword_1000A39E8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v37 = &v34 - v7;
  v8 = sub_100003714(&qword_1000C2EA0, &qword_1000A39F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v36 = &v34 - v10;
  v11 = sub_100003714(&qword_1000C2EA8, &qword_1000A39F8);
  v12 = *(v11 - 8);
  v41 = v11;
  v42 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v40 = sub_100003714(&qword_1000C2EB0, &qword_1000A3A00);
  v38 = *(v40 - 8);
  v16 = *(v38 + 64);
  __chkstk_darwin(v40);
  v18 = &v34 - v17;
  v19 = sub_100003714(&qword_1000C2EB8, &qword_1000A3A08);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_10009CF54();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  sub_100007330(0, &qword_1000C2EC0, NSUnitTemperature_ptr);
  sub_10009CF34();
  sub_10009CD94();
  v35 = sub_10009E884();
  v23 = objc_opt_self();
  v24 = [v23 celsius];
  sub_10009E8E4();

  v25 = [v23 celsius];
  sub_10009CCC4();
  sub_10009CCE4();
  sub_10009CD94();
  sub_10009CF34();
  sub_100094038();
  v26 = v39;
  sub_10009CD74();
  v27 = v44;
  sub_10009CDA4();
  v28 = v37;
  v29 = v43;
  sub_10009CD84();
  (*(v46 + 8))(v27, v47);
  v30 = v45;
  (*(v45 + 8))(v26, v29);
  (*(v30 + 56))(v28, 0, 1, v29);
  sub_10009CF34();
  sub_10009CCF4();
  v31 = v41;
  v32 = sub_10009CCD4();

  (*(v42 + 8))(v15, v31);
  (*(v38 + 8))(v18, v40);
  return v32;
}

uint64_t sub_10008E548()
{
  v0 = sub_10009D1C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009E904();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == enum case for ServiceKind.airPurifier(_:))
  {
    return sub_10009E604();
  }

  if (v5 == enum case for ServiceKind.door(_:))
  {
    return sub_100091D5C();
  }

  if (v5 == enum case for ServiceKind.fan(_:))
  {
    return sub_10009E604();
  }

  if (v5 == enum case for ServiceKind.faucet(_:))
  {
    return sub_1000913B8();
  }

  if (v5 == enum case for ServiceKind.garageDoorOpener(_:))
  {
    return sub_10008FA4C();
  }

  if (v5 == enum case for ServiceKind.heaterCooler(_:))
  {
    return sub_10008E894();
  }

  if (v5 == enum case for ServiceKind.humidifierDehumidifier(_:))
  {
    return sub_10009E604();
  }

  if (v5 == enum case for ServiceKind.irrigationSystem(_:))
  {
    return sub_100090E10();
  }

  if (v5 == enum case for ServiceKind.lightbulb(_:))
  {
    return sub_10009E604();
  }

  if (v5 == enum case for ServiceKind.lockMechanism(_:))
  {
    return sub_100090158();
  }

  if (v5 == enum case for ServiceKind.securitySystem(_:))
  {
    return sub_1000906C4();
  }

  if (v5 == enum case for ServiceKind.thermostat(_:))
  {
    return sub_10008F174();
  }

  if (v5 == enum case for ServiceKind.valve(_:))
  {
    return sub_100091834();
  }

  if (v5 == enum case for ServiceKind.ventilationFan(_:))
  {
    return sub_10009E604();
  }

  if (v5 == enum case for ServiceKind.window(_:) || v5 == enum case for ServiceKind.windowCovering(_:))
  {
    return sub_100091D5C();
  }

  v7 = sub_10009E604();
  (*(v1 + 8))(v4, v0);
  return v7;
}

uint64_t sub_10008E82C(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008E894()
{
  v1 = sub_10009D414();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009CF14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10009D464();
  v12 = *(v11 - 8);
  v13 = v12[8];
  __chkstk_darwin(v11);
  v15 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WidgetTileInfo();
  result = 0;
  v18 = v0 + *(v16 + 60);
  v19 = *(v18 + 8);
  if ((v19 - 2) >= 3)
  {
    v72 = v7;
    v73 = v6;
    v71 = v5;
    v74 = v16;
    v20 = *v18;
    if (!v19)
    {
      v68 = v2;
      v69 = v1;
      v21 = v20;
      goto LABEL_10;
    }

    v22 = v20;
    v21 = [v22 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v23 = sub_10009E6A4();

    if (v23 >> 62)
    {
      if (sub_10009EBA4())
      {
        goto LABEL_6;
      }
    }

    else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v68 = v2;
      v69 = v1;
      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = sub_10009EAE4();
      }

      else
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_46;
        }

        v24 = *(v23 + 32);
      }

      v21 = v24;

LABEL_10:
      v25 = v12[13];
      v25(v15, enum case for CharacteristicKind.targetHeaterCoolerState(_:), v11);
      v26 = *(v74 + 64);
      v74 = v0;
      v23 = *(v0 + v26);
      v70 = sub_100016C54(v15, v23);
      v28 = v27;
      v29 = v12[1];
      v29(v15, v11);
      if (v28)
      {
        goto LABEL_13;
      }

      v25(v15, enum case for CharacteristicKind.currentHeaterCoolerState(_:), v11);
      v67 = sub_100016C54(v15, v23);
      v31 = v30;
      v29(v15, v11);
      if ((v31 & 1) != 0 || (v25(v15, enum case for CharacteristicKind.active(_:), v11), v66 = sub_100016EAC(v15, v23), v32 = v66, v29(v15, v11), v32 == 2))
      {
LABEL_13:

        return 0;
      }

      v25(v15, enum case for CharacteristicKind.heatingThreshold(_:), v11);
      v64[1] = sub_100016C60(v15, v23);
      v65 = v33;
      v29(v15, v11);
      v25(v15, enum case for CharacteristicKind.coolingThreshold(_:), v11);
      sub_100016C60(v15, v23);
      LOBYTE(v23) = v34;
      v29(v15, v11);
      if (qword_1000C0A90 == -1)
      {
LABEL_15:
        v35 = sub_10009D924();
        sub_100015B68(v35, qword_1000C8278);
        v22 = v21;
        v36 = sub_10009D904();
        v37 = sub_10009E844();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = v23;
          v23 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v75 = v39;
          *v23 = 136315650;
          v40 = [v22 uniqueIdentifier];
          sub_10009CF04();

          v41 = sub_10009CEE4();
          v43 = v42;
          (*(v72 + 8))(v10, v73);
          v44 = sub_10002AD68(v41, v43, &v75);

          *(v23 + 4) = v44;
          *(v23 + 12) = 2048;
          *(v23 + 14) = v67;
          *(v23 + 22) = 2048;
          v45 = v70;
          *(v23 + 24) = v70;
          _os_log_impl(&_mh_execute_header, v36, v37, "heaterCooler: %s currentHeaterCoolerState: %ld targetHeaterCoolerState: %ld", v23, 0x20u);
          sub_100015F44(v39);

          LOBYTE(v23) = v38;

          if ((v66 & 1) == 0)
          {
LABEL_17:
            v46 = sub_10009E604();

            return v46;
          }
        }

        else
        {

          v45 = v70;
          if ((v66 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        if (v45 == 2)
        {
          if (v67 < 2)
          {
            if (v23)
            {
              goto LABEL_41;
            }

            goto LABEL_38;
          }

          if (v67 != 2)
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (v45 != 1)
          {
            if (!v45 && (v65 & 1) == 0 && (v23 & 1) == 0)
            {
              v74 = sub_10009E604();
              sub_100003714(&qword_1000C2E80, &qword_1000A39D8);
              v47 = swift_allocObject();
              *(v47 + 16) = xmmword_10009F8F0;
              v48 = sub_10008DFCC();
              v49 = v22;
              v51 = v50;
              *(v47 + 56) = &type metadata for String;
              v52 = sub_100093FE4();
              *(v47 + 64) = v52;
              *(v47 + 32) = v48;
              *(v47 + 40) = v51;
              v54 = v68;
              v53 = v69;
              v55 = v71;
              (*(v68 + 104))(v71, enum case for ClimateSummarizer.TemperatureScale.locale(_:), v69);
              v56 = sub_10009D424();
              v58 = v57;
              (*(v54 + 8))(v55, v53);
              *(v47 + 96) = &type metadata for String;
              *(v47 + 104) = v52;
              *(v47 + 72) = v56;
              *(v47 + 80) = v58;
              v59 = sub_10009E5D4();

              return v59;
            }

            goto LABEL_41;
          }

          if (v67 < 2)
          {
            if (v65)
            {
              goto LABEL_41;
            }

            goto LABEL_38;
          }

          if (v67 != 2)
          {
LABEL_28:
            if (v67 == 3 && (v23 & 1) == 0)
            {
              goto LABEL_38;
            }

LABEL_41:

            return 0;
          }
        }

        if (v65)
        {
          goto LABEL_41;
        }

LABEL_38:
        sub_10009E604();
        sub_100003714(&qword_1000C2E80, &qword_1000A39D8);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_10009F8D0;
        v61 = sub_10008DFCC();
        v63 = v62;
        *(v60 + 56) = &type metadata for String;
        *(v60 + 64) = sub_100093FE4();
        *(v60 + 32) = v61;
        *(v60 + 40) = v63;
        v46 = sub_10009E5D4();

        return v46;
      }

LABEL_46:
      swift_once();
      goto LABEL_15;
    }

    goto LABEL_41;
  }

  return result;
}

uint64_t sub_10008F174()
{
  v1 = sub_10009D414();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009CF14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10009D464();
  v12 = *(v11 - 8);
  v13 = v12[8];
  __chkstk_darwin(v11);
  v15 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WidgetTileInfo();
  result = 0;
  v18 = v0 + *(v16 + 60);
  v19 = *(v18 + 8);
  if ((v19 - 2) >= 3)
  {
    v75 = v7;
    v76 = v6;
    v74 = v5;
    v77 = v16;
    v20 = *v18;
    if (!v19)
    {
      v71 = v2;
      v72 = v1;
      v21 = v20;
      goto LABEL_10;
    }

    v22 = v20;
    v21 = [v22 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v23 = sub_10009E6A4();

    if (v23 >> 62)
    {
      if (sub_10009EBA4())
      {
        goto LABEL_6;
      }
    }

    else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v71 = v2;
      v72 = v1;
      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = sub_10009EAE4();
      }

      else
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_46;
        }

        v24 = *(v23 + 32);
      }

      v21 = v24;

LABEL_10:
      v25 = v12[13];
      v25(v15, enum case for CharacteristicKind.targetHeatingCoolingMode(_:), v11);
      v26 = *(v77 + 64);
      v77 = v0;
      v27 = *(v0 + v26);
      v73 = sub_100016C54(v15, v27);
      v29 = v28;
      v30 = v12[1];
      v30(v15, v11);
      if (v29 & 1) != 0 || (v25(v15, enum case for CharacteristicKind.currentHeatingCooling(_:), v11), v70 = sub_100016C54(v15, v27), v32 = v31, v30(v15, v11), (v32))
      {

        return 0;
      }

      v25(v15, enum case for CharacteristicKind.targetTemperature(_:), v11);
      v66[2] = sub_100016C60(v15, v27);
      v68 = v33;
      v30(v15, v11);
      v25(v15, enum case for CharacteristicKind.heatingThreshold(_:), v11);
      v66[1] = sub_100016C60(v15, v27);
      v69 = v34;
      v30(v15, v11);
      v25(v15, enum case for CharacteristicKind.coolingThreshold(_:), v11);
      sub_100016C60(v15, v27);
      v67 = v35;
      v30(v15, v11);
      if (qword_1000C0A90 == -1)
      {
LABEL_14:
        v36 = sub_10009D924();
        sub_100015B68(v36, qword_1000C8278);
        v37 = v21;
        v38 = sub_10009D904();
        v39 = sub_10009E844();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v78 = v41;
          *v40 = 136315650;
          v42 = [v37 uniqueIdentifier];
          sub_10009CF04();

          v43 = sub_10009CEE4();
          v45 = v44;
          (*(v75 + 8))(v10, v76);
          v46 = sub_10002AD68(v43, v45, &v78);

          *(v40 + 4) = v46;
          *(v40 + 12) = 2048;
          v47 = v73;
          *(v40 + 14) = v73;
          *(v40 + 22) = 2048;
          v48 = v70;
          *(v40 + 24) = v70;
          _os_log_impl(&_mh_execute_header, v38, v39, "thermostat: %s targetHeatingCoolingMode: %ld currentHeatingCooling: %ld", v40, 0x20u);
          sub_100015F44(v41);

          if (v47 != 3)
          {
            goto LABEL_16;
          }
        }

        else
        {

          v47 = v73;
          v48 = v70;
          if (v73 != 3)
          {
LABEL_16:
            if (v48 == 2)
            {
              if ((v68 & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            else if (v48 == 1)
            {
              if ((v68 & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            else if (v47 != 2 || v48)
            {
              if (v47 != 1 || v48)
              {
                if (!v47 && !v48)
                {
                  v61 = sub_10009E604();

                  return v61;
                }
              }

              else if ((v68 & 1) == 0)
              {
LABEL_33:
                sub_10009E604();
                sub_100003714(&qword_1000C2E80, &qword_1000A39D8);
                v62 = swift_allocObject();
                *(v62 + 16) = xmmword_10009F8D0;
                v63 = sub_10008DFCC();
                v65 = v64;
                *(v62 + 56) = &type metadata for String;
                *(v62 + 64) = sub_100093FE4();
                *(v62 + 32) = v63;
                *(v62 + 40) = v65;
                v61 = sub_10009E5D4();

                goto LABEL_34;
              }
            }

            else if ((v68 & 1) == 0)
            {
              goto LABEL_33;
            }

LABEL_38:

            return 0;
          }
        }

        if ((v69 & 1) == 0 && (v67 & 1) == 0)
        {
          v77 = sub_10009E604();
          sub_100003714(&qword_1000C2E80, &qword_1000A39D8);
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_10009F8F0;
          v50 = sub_10008DFCC();
          v52 = v51;
          *(v49 + 56) = &type metadata for String;
          v53 = sub_100093FE4();
          *(v49 + 64) = v53;
          *(v49 + 32) = v50;
          *(v49 + 40) = v52;
          v54 = v71;
          v55 = v74;
          v56 = v37;
          v57 = v72;
          (*(v71 + 104))(v74, enum case for ClimateSummarizer.TemperatureScale.locale(_:), v72);
          v58 = sub_10009D424();
          v60 = v59;
          (*(v54 + 8))(v55, v57);
          *(v49 + 96) = &type metadata for String;
          *(v49 + 104) = v53;
          *(v49 + 72) = v58;
          *(v49 + 80) = v60;
          v61 = sub_10009E5D4();

LABEL_34:

          return v61;
        }

        goto LABEL_38;
      }

LABEL_46:
      swift_once();
      goto LABEL_14;
    }

    return 0;
  }

  return result;
}

uint64_t sub_10008FA4C()
{
  v1 = sub_10009CF14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009D464();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WidgetTileInfo();
  result = 0;
  v13 = v0 + *(v11 + 60);
  v14 = *(v13 + 8);
  if ((v14 - 2) >= 3)
  {
    v61 = v2;
    v15 = v11;
    v16 = *v13;
    if (!v14)
    {
      v59 = v1;
      v17 = v16;
      goto LABEL_10;
    }

    v18 = v16;
    v17 = [v18 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v19 = sub_10009E6A4();

    if (v19 >> 62)
    {
      if (sub_10009EBA4())
      {
        goto LABEL_6;
      }
    }

    else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v59 = v1;
      if ((v19 & 0xC000000000000001) != 0)
      {
        v20 = sub_10009EAE4();
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_34;
        }

        v20 = *(v19 + 32);
      }

      v17 = v20;

LABEL_10:
      v21 = v7[13];
      v21(v10, enum case for CharacteristicKind.currentDoorState(_:), v6);
      v15 = *(v0 + *(v15 + 64));
      v60 = sub_100016C54(v10, v15);
      v23 = v22;
      v18 = v7[1];
      (v18)(v10, v6);
      if (v23 & 1) != 0 || (v58 = v21, v21(v10, enum case for CharacteristicKind.targetDoorState(_:), v6), v24 = sub_100016C54(v10, v15), v26 = v25, (v18)(v10, v6), (v26))
      {
LABEL_12:

        return 0;
      }

      v57 = v24;
      if (qword_1000C0A90 == -1)
      {
LABEL_14:
        v27 = sub_10009D924();
        v28 = sub_100015B68(v27, qword_1000C8278);
        v17 = v17;
        v55 = v28;
        v29 = sub_10009D904();
        v30 = sub_10009E844();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v56 = v17;
          v32 = v31;
          v53 = swift_slowAlloc();
          v62 = v53;
          *v32 = 136315650;
          v33 = [v56 uniqueIdentifier];
          v54 = v18;
          v34 = v30;
          v35 = v33;
          sub_10009CF04();

          v52 = sub_10009CEE4();
          v37 = v36;
          (*(v61 + 8))(v5, v59);
          v52 = sub_10002AD68(v52, v37, &v62);

          *(v32 + 4) = v52;
          *(v32 + 12) = 2048;
          *(v32 + 14) = v60;
          *(v32 + 22) = 2048;
          *(v32 + 24) = v57;
          v38 = v34;
          v18 = v54;
          _os_log_impl(&_mh_execute_header, v29, v38, "garageDoorOpener: %s currentValue: %ld targetValue: %ld", v32, 0x20u);
          sub_100015F44(v53);

          v17 = v56;
        }

        v58(v10, enum case for CharacteristicKind.obstructionDetected(_:), v6);
        v39 = sub_100016EAC(v10, v15);
        (v18)(v10, v6);
        if (v39 == 2 || (v39 & 1) == 0)
        {
          if (v60 | v57 && (v60 != 1 || v57 != 1) && v57 > 1)
          {
            goto LABEL_12;
          }

          v50 = sub_10009E604();
        }

        else
        {
          v40 = v17;
          v41 = sub_10009D904();
          v42 = sub_10009E844();

          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v62 = v44;
            *v43 = 136315138;
            v45 = [v40 uniqueIdentifier];
            sub_10009CF04();

            v46 = sub_10009CEE4();
            v48 = v47;
            (*(v61 + 8))(v5, v59);
            v49 = sub_10002AD68(v46, v48, &v62);

            *(v43 + 4) = v49;
            _os_log_impl(&_mh_execute_header, v41, v42, "garageDoorOpener: %s obstructionDetected", v43, 0xCu);
            sub_100015F44(v44);
          }

          v50 = sub_10009E604();
        }

        return v50;
      }

LABEL_34:
      swift_once();
      goto LABEL_14;
    }

    return 0;
  }

  return result;
}

uint64_t sub_100090158()
{
  v1 = sub_10009CF14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009D464();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WidgetTileInfo();
  result = 0;
  v13 = v0 + *(v11 + 60);
  v14 = *(v13 + 8);
  if ((v14 - 2) >= 3)
  {
    v42 = v11;
    v15 = *v13;
    if (!v14)
    {
      v40 = v2;
      v41 = v1;
      v16 = v15;
      goto LABEL_10;
    }

    v17 = v15;
    v16 = [v17 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v18 = sub_10009E6A4();

    if (v18 >> 62)
    {
      if (sub_10009EBA4())
      {
        goto LABEL_6;
      }
    }

    else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v40 = v2;
      v41 = v1;
      if ((v18 & 0xC000000000000001) != 0)
      {
        v19 = sub_10009EAE4();
      }

      else
      {
        if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_36;
        }

        v19 = *(v18 + 32);
      }

      v16 = v19;

LABEL_10:
      v20 = v7[13];
      v20(v10, enum case for CharacteristicKind.currentLockMechanismState(_:), v6);
      v21 = *(v0 + *(v42 + 64));
      v42 = sub_100016C54(v10, v21);
      v23 = v22;
      v24 = v7[1];
      v24(v10, v6);
      if (v23 & 1) != 0 || (v20(v10, enum case for CharacteristicKind.targetLockMechanismState(_:), v6), v17 = sub_100016C54(v10, v21), v26 = v25, v24(v10, v6), (v26))
      {

        return 0;
      }

      if (qword_1000C0A90 == -1)
      {
LABEL_14:
        v27 = v17;
        v28 = sub_10009D924();
        sub_100015B68(v28, qword_1000C8278);
        v17 = v16;
        v29 = sub_10009D904();
        v30 = sub_10009E844();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v43 = v32;
          *v31 = 136315650;
          v33 = [v17 uniqueIdentifier];
          sub_10009CF04();

          v34 = sub_10009CEE4();
          v36 = v35;
          (*(v40 + 8))(v5, v41);
          v37 = sub_10002AD68(v34, v36, &v43);

          *(v31 + 4) = v37;
          *(v31 + 12) = 2048;
          v38 = v42;
          *(v31 + 14) = v42;
          *(v31 + 22) = 2048;
          *(v31 + 24) = v27;
          _os_log_impl(&_mh_execute_header, v29, v30, "lockMechanism: %s currentValue: %ld targetValue: %ld", v31, 0x20u);
          sub_100015F44(v32);

          if (v38 != 3)
          {
            goto LABEL_16;
          }
        }

        else
        {

          v38 = v42;
          if (v42 != 3)
          {
LABEL_16:
            if (v38 == 2 || !(v38 | v27) || v38 == 1 && !v27 || !v38 && v27 == 1 || v38 == 1 && v27 == 1)
            {
              goto LABEL_23;
            }

LABEL_31:

            return 0;
          }
        }

LABEL_23:
        v39 = sub_10009E604();

        return v39;
      }

LABEL_36:
      swift_once();
      goto LABEL_14;
    }

    goto LABEL_31;
  }

  return result;
}

uint64_t sub_1000906C4()
{
  v1 = sub_10009CF14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009D464();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WidgetTileInfo();
  result = 0;
  v13 = v0 + *(v11 + 60);
  v14 = *(v13 + 8);
  if ((v14 - 2) >= 3)
  {
    v68 = v2;
    v15 = v11;
    v16 = *v13;
    if (!v14)
    {
      v17 = v16;
      goto LABEL_10;
    }

    v18 = v16;
    v19 = [v18 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v20 = sub_10009E6A4();

    if (v20 >> 62)
    {
      result = sub_10009EBA4();
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_6:
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = sub_10009EAE4();
        }

        else
        {
          if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v21 = *(v20 + 32);
        }

        v17 = v21;

LABEL_10:
        v67 = v7[13];
        v67(v10, enum case for CharacteristicKind.currentSecuritySystemState(_:), v6);
        v22 = *(v0 + *(v15 + 64));
        v23 = sub_100016C54(v10, v22);
        v25 = v24;
        v66 = v7[1];
        v66(v10, v6);
        if (v25)
        {

          return 0;
        }

        v64 = v1;
        if (qword_1000C0A90 != -1)
        {
          swift_once();
        }

        v26 = sub_10009D924();
        v27 = sub_100015B68(v26, qword_1000C8278);
        v28 = v17;
        v61 = v27;
        v29 = sub_10009D904();
        v30 = sub_10009E844();

        v62 = v30;
        v31 = os_log_type_enabled(v29, v30);
        v63 = v23;
        v65 = v28;
        if (v31)
        {
          v32 = swift_slowAlloc();
          v60 = v22;
          v33 = v32;
          v59 = swift_slowAlloc();
          v69 = v59;
          *v33 = 136315394;
          v34 = [v28 uniqueIdentifier];
          v35 = v29;
          v36 = v34;
          sub_10009CF04();

          v37 = sub_10009CEE4();
          v39 = v38;
          v40 = v64;
          (*(v68 + 8))(v5, v64);
          v41 = sub_10002AD68(v37, v39, &v69);
          v42 = v63;

          *(v33 + 4) = v41;
          *(v33 + 12) = 2048;
          *(v33 + 14) = v42;
          _os_log_impl(&_mh_execute_header, v35, v62, "securitySystem: %s currentValue: %ld", v33, 0x16u);
          sub_100015F44(v59);

          v22 = v60;

          if (v42 != 4)
          {
            goto LABEL_16;
          }
        }

        else
        {

          v40 = v64;
          if (v23 != 4)
          {
LABEL_16:
            v67(v10, enum case for CharacteristicKind.targetSecuritySystemState(_:), v6);
            v43 = v65;
            v44 = sub_100016C54(v10, v22);
            v46 = v45;
            v66(v10, v6);
            if (v46)
            {

              return 0;
            }

            v48 = v43;
            v49 = sub_10009D904();
            v50 = sub_10009E844();

            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              v69 = v52;
              *v51 = 136315394;
              v53 = [v48 uniqueIdentifier];
              sub_10009CF04();

              v54 = sub_10009CEE4();
              v56 = v55;
              (*(v68 + 8))(v5, v40);
              v57 = sub_10002AD68(v54, v56, &v69);

              *(v51 + 4) = v57;
              *(v51 + 12) = 2048;
              *(v51 + 14) = v44;
              _os_log_impl(&_mh_execute_header, v49, v50, "securitySystem: %s targetValue: %ld", v51, 0x16u);
              sub_100015F44(v52);
            }

            if (v44 > 1)
            {
              if (v44 == 2 || v44 == 3)
              {
                goto LABEL_28;
              }
            }

            else if (v44 <= 1)
            {
LABEL_28:
              v47 = sub_10009E604();

              return v47;
            }

            return 0;
          }
        }

        v47 = sub_10009E604();

        return v47;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100090E10()
{
  v1 = sub_10009CF14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009D464();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WidgetTileInfo();
  result = 0;
  v13 = v0 + *(v11 + 60);
  v14 = *(v13 + 8);
  if ((v14 - 2) < 3)
  {
    return result;
  }

  v48 = v11;
  v15 = *v13;
  if (v14)
  {
    v17 = v15;
    v18 = [v17 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v19 = sub_10009E6A4();

    if (v19 >> 62)
    {
      result = sub_10009EBA4();
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_6:
        v46 = v2;
        v47 = v1;
        if ((v19 & 0xC000000000000001) != 0)
        {
          v20 = sub_10009EAE4();
        }

        else
        {
          if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v20 = *(v19 + 32);
        }

        v16 = v20;

        goto LABEL_10;
      }
    }

    return 0;
  }

  v46 = v2;
  v47 = v1;
  v16 = v15;
LABEL_10:
  v21 = v7[13];
  v21(v10, enum case for CharacteristicKind.inUse(_:), v6);
  v22 = *(v0 + *(v48 + 64));
  LODWORD(v48) = sub_100016EAC(v10, v22);
  v23 = v48;
  v24 = v7[1];
  v24(v10, v6);
  if (v23 == 2)
  {

    return 0;
  }

  v21(v10, enum case for CharacteristicKind.active(_:), v6);
  v45 = sub_100016EAC(v10, v22);
  v24(v10, v6);
  v21(v10, enum case for CharacteristicKind.programMode(_:), v6);
  v25 = sub_100016C54(v10, v22);
  v44 = v26;
  v24(v10, v6);
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v27 = sub_10009D924();
  sub_100015B68(v27, qword_1000C8278);
  v28 = v16;
  v29 = sub_10009D904();
  v30 = sub_10009E844();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = v25;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v49 = v33;
    *v32 = 136315906;
    v34 = [v28 uniqueIdentifier];
    sub_10009CF04();

    v35 = sub_10009CEE4();
    v37 = v36;
    (*(v46 + 8))(v5, v47);
    v38 = sub_10002AD68(v35, v37, &v49);

    *(v32 + 4) = v38;
    *(v32 + 12) = 1024;
    v39 = v45 != 2 && (v45 & 1) != 0;
    v40 = v48;
    *(v32 + 14) = v39;
    *(v32 + 18) = 1024;
    *(v32 + 20) = v40 & 1;
    *(v32 + 24) = 2048;
    if (v44)
    {
      v41 = -1;
    }

    else
    {
      v41 = v31;
    }

    *(v32 + 26) = v41;
    _os_log_impl(&_mh_execute_header, v29, v30, "irrigationSystem: %s active: %{BOOL}d inUse: %{BOOL}d programMode: %ld", v32, 0x22u);
    sub_100015F44(v33);
  }

  else
  {
  }

  v42 = sub_10009E604();

  return v42;
}

uint64_t sub_1000913B8()
{
  v1 = sub_10009CF14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009D464();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WidgetTileInfo();
  result = 0;
  v13 = v0 + *(v11 + 60);
  v14 = *(v13 + 8);
  if ((v14 - 2) < 3)
  {
    return result;
  }

  v34 = v2;
  v15 = *v13;
  if (v14)
  {
    v17 = v15;
    v18 = [v17 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v19 = sub_10009E6A4();

    if (v19 >> 62)
    {
      result = sub_10009EBA4();
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_6:
        if ((v19 & 0xC000000000000001) != 0)
        {
          v20 = sub_10009EAE4();
        }

        else
        {
          if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v20 = *(v19 + 32);
        }

        v16 = v20;

        goto LABEL_10;
      }
    }

    return 0;
  }

  v16 = v15;
LABEL_10:
  (*(v7 + 104))(v10, enum case for CharacteristicKind.active(_:), v6);
  v21 = sub_100016EAC(v10, *(v0 + *(v11 + 64)));
  (*(v7 + 8))(v10, v6);
  if (v21 == 2)
  {

    return 0;
  }

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v22 = sub_10009D924();
  sub_100015B68(v22, qword_1000C8278);
  v23 = v16;
  v24 = sub_10009D904();
  v25 = sub_10009E844();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35 = v27;
    *v26 = 136315394;
    v28 = [v23 uniqueIdentifier];
    sub_10009CF04();

    v29 = sub_10009CEE4();
    v31 = v30;
    (*(v34 + 8))(v5, v1);
    v32 = sub_10002AD68(v29, v31, &v35);

    *(v26 + 4) = v32;
    *(v26 + 12) = 1024;
    *(v26 + 14) = v21 & 1;
    _os_log_impl(&_mh_execute_header, v24, v25, "faucet: %s active: %{BOOL}d", v26, 0x12u);
    sub_100015F44(v27);
  }

  v33 = sub_10009E604();

  return v33;
}

uint64_t sub_100091834()
{
  v1 = sub_10009CF14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009D464();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WidgetTileInfo();
  result = 0;
  v13 = v0 + *(v11 + 60);
  v14 = *(v13 + 8);
  if ((v14 - 2) < 3)
  {
    return result;
  }

  v37 = v11;
  v15 = *v13;
  if (!v14)
  {
    v35 = v2;
    v36 = v1;
    v16 = v15;
LABEL_10:
    v20 = v7[13];
    v20(v10, enum case for CharacteristicKind.inUse(_:), v6);
    v18 = *(v0 + *(v37 + 64));
    LODWORD(v37) = sub_100016EAC(v10, v18);
    v21 = v37;
    v22 = v7[1];
    v22(v10, v6);
    if (v21 == 2 || (v20(v10, enum case for CharacteristicKind.active(_:), v6), LOBYTE(v18) = sub_100016EAC(v10, v18), v22(v10, v6), v18 == 2))
    {

      return 0;
    }

    if (qword_1000C0A90 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

  v17 = v15;
  v16 = [v17 services];
  sub_100007330(0, &qword_1000C0C48, HMService_ptr);
  v18 = sub_10009E6A4();

  if (!(v18 >> 62))
  {
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_18:

    return 0;
  }

  if (!sub_10009EBA4())
  {
    goto LABEL_18;
  }

LABEL_6:
  v35 = v2;
  v36 = v1;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = sub_10009EAE4();
    goto LABEL_9;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v18 + 32);
LABEL_9:
    v16 = v19;

    goto LABEL_10;
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_14:
  v23 = sub_10009D924();
  sub_100015B68(v23, qword_1000C8278);
  v24 = v16;
  v25 = sub_10009D904();
  v26 = sub_10009E844();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v38 = v28;
    *v27 = 136315650;
    v29 = [v24 uniqueIdentifier];
    sub_10009CF04();

    v30 = sub_10009CEE4();
    v32 = v31;
    (*(v35 + 8))(v5, v36);
    v33 = sub_10002AD68(v30, v32, &v38);

    *(v27 + 4) = v33;
    *(v27 + 12) = 1024;
    *(v27 + 14) = v18 & 1;
    *(v27 + 18) = 1024;
    *(v27 + 20) = v37 & 1;
    _os_log_impl(&_mh_execute_header, v25, v26, "valve: %s active: %{BOOL}d inUse: %{BOOL}d", v27, 0x18u);
    sub_100015F44(v28);
  }

  v34 = sub_10009E604();
  return v34;
}

uint64_t sub_100091D5C()
{
  v1 = v0;
  v2 = sub_10009CF14();
  v102 = *(v2 - 8);
  v3 = *(v102 + 64);
  __chkstk_darwin(v2);
  v5 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009D1C4();
  v7 = *(v6 - 1);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v90 - v12;
  v14 = sub_10009D464();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WidgetTileInfo();
  result = 0;
  v21 = *(v19 + 60);
  v103 = v1;
  v22 = (v1 + v21);
  v23 = *(v1 + v21 + 8);
  if ((v23 - 2) >= 3)
  {
    v98 = v13;
    v99 = v7;
    v96 = v5;
    v97 = v2;
    v101 = v19;
    v24 = *v22;
    if (!v23)
    {
      v95 = v6;
      v25 = v18;
      v26 = v14;
      v7 = v24;
      v27 = v11;
      goto LABEL_10;
    }

    v100 = v15;
    v28 = v24;
    v29 = [v28 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v30 = sub_10009E6A4();

    v27 = v11;
    if (v30 >> 62)
    {
      if (sub_10009EBA4())
      {
        goto LABEL_6;
      }
    }

    else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v95 = v6;
      if ((v30 & 0xC000000000000001) != 0)
      {
        v25 = v18;
        v26 = v14;
        v31 = sub_10009EAE4();
      }

      else
      {
        if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_50;
        }

        v25 = v18;
        v26 = v14;
        v31 = *(v30 + 32);
      }

      v7 = v31;

      v15 = v100;
LABEL_10:
      v32 = v15;
      v35 = *(v15 + 104);
      v34 = v15 + 104;
      v33 = v35;
      v35(v25, enum case for CharacteristicKind.targetPosition(_:), v26);
      v36 = *(v103 + *(v101 + 64));
      v103 = sub_100016C54(v25, v36);
      v38 = v37;
      v41 = *(v32 + 8);
      v40 = v32 + 8;
      v39 = v41;
      v41(v25, v26);
      if (v38)
      {
        goto LABEL_12;
      }

      v94 = v34;
      v33(v25, enum case for CharacteristicKind.currentPosition(_:), v26);
      v92 = v36;
      v101 = v39;
      v42 = sub_100016C54(v25, v36);
      v44 = v43;
      v93 = v25;
      v45 = v26;
      v100 = v40;
      (v101)(v25, v26);
      if (v44)
      {
LABEL_12:

        return 0;
      }

      v46 = v33;
      v90 = v42;
      v47 = v98;
      sub_10009E904();
      v48 = v99;
      v49 = v95;
      (v99[13])(v27, enum case for ServiceKind.door(_:), v95);
      sub_10009408C();
      sub_10009E654();
      sub_10009E654();
      v91 = v46;
      if (v106 == v104 && v107 == v105)
      {
        v50 = v48[1];
        v50(v27, v49);
        v50(v47, v49);

        v30 = 1919905604;

        v6 = 0xE400000000000000;
      }

      else
      {
        v51 = sub_10009ED34();
        v52 = v48[1];
        v52(v27, v49);
        v52(v47, v49);

        if (v51)
        {
          v30 = 1919905604;
        }

        else
        {
          v30 = 0x776F646E6957;
        }

        if (v51)
        {
          v6 = 0xE400000000000000;
        }

        else
        {
          v6 = 0xE600000000000000;
        }
      }

      v14 = v45;
      v18 = v93;
      v106 = 0xD000000000000015;
      v107 = 0x80000001000A5890;
      v108._countAndFlagsBits = v30;
      v108._object = v6;
      sub_10009E634(v108);
      v28 = v106;
      v99 = v107;
      if (qword_1000C0A90 == -1)
      {
LABEL_23:
        v53 = sub_10009D924();
        v54 = sub_100015B68(v53, qword_1000C8278);

        v55 = v7;
        v98 = v54;
        v56 = sub_10009D904();
        v57 = sub_10009E844();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v95 = v28;
          v59 = v58;
          v106 = swift_slowAlloc();
          *v59 = 136315906;
          v60 = sub_10002AD68(v30, v6, &v106);

          *(v59 + 4) = v60;
          *(v59 + 12) = 2080;
          v61 = [v55 uniqueIdentifier];
          v62 = v96;
          sub_10009CF04();

          v63 = sub_10009CEE4();
          v65 = v64;
          (*(v102 + 8))(v62, v97);
          v66 = sub_10002AD68(v63, v65, &v106);

          *(v59 + 14) = v66;
          *(v59 + 22) = 2048;
          *(v59 + 24) = v103;
          *(v59 + 32) = 2048;
          v67 = v90;
          *(v59 + 34) = v90;
          _os_log_impl(&_mh_execute_header, v56, v57, "doorWindowAndWindowConvering: serviceKind: %s service UUID: %s targetPosition: %ld currentPosition: %ld", v59, 0x2Au);
          swift_arrayDestroy();

          v28 = v95;

          v68 = v92;
        }

        else
        {

          v68 = v92;
          v67 = v90;
        }

        v91(v18, enum case for CharacteristicKind.obstructionDetected(_:), v14);
        v69 = sub_100016EAC(v18, v68);
        (v101)(v18, v14);
        v70 = v55;
        if (v69 == 2 || (v69 & 1) == 0)
        {
          v84 = v103;
          if (v67 == v103)
          {
            if (v103 == 100)
            {
              v106 = v28;
              v107 = v99;

              v85._countAndFlagsBits = 0x65704F6574617453;
              v85._object = 0xE90000000000006ELL;
            }

            else
            {
              if (v103)
              {

                sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
                isa = sub_10009E8C4(v84).super.super.isa;
                v87 = sub_10009E8C4(0).super.super.isa;
                v88 = sub_10009E8C4(100).super.super.isa;
                v89 = sub_10006A4E8(isa);

                return v89;
              }

              v106 = v28;
              v107 = v99;

              v85._countAndFlagsBits = 0x6F6C436574617453;
              v85._object = 0xEB00000000646573;
            }
          }

          else if (v103 >= v67)
          {
            if (v67 >= v103)
            {

              return 0;
            }

            v106 = v28;
            v107 = v99;

            v85._countAndFlagsBits = 0x65704F6574617453;
            v85._object = 0xEC000000676E696ELL;
          }

          else
          {
            v106 = v28;
            v107 = v99;

            v85._countAndFlagsBits = 0x6F6C436574617453;
            v85._object = 0xEC000000676E6973;
          }

          sub_10009E634(v85);

          v83 = sub_10009E604();
        }

        else
        {
          v71 = v55;
          v72 = sub_10009D904();
          v73 = sub_10009E844();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v75 = v28;
            v76 = swift_slowAlloc();
            v106 = v76;
            *v74 = 136315138;
            v77 = [v71 uniqueIdentifier];
            v78 = v96;
            sub_10009CF04();

            v79 = sub_10009CEE4();
            v81 = v80;
            (*(v102 + 8))(v78, v97);
            v82 = sub_10002AD68(v79, v81, &v106);

            *(v74 + 4) = v82;
            _os_log_impl(&_mh_execute_header, v72, v73, "doorWindowAndWindowConvering: service UUID: %s  obstructionDetected", v74, 0xCu);
            sub_100015F44(v76);
            v28 = v75;
          }

          v106 = v28;
          v107 = v99;

          v109._countAndFlagsBits = 0xD000000000000018;
          v109._object = 0x80000001000A58B0;
          sub_10009E634(v109);

          v83 = sub_10009E604();
        }

        return v83;
      }

LABEL_50:
      swift_once();
      goto LABEL_23;
    }

    return 0;
  }

  return result;
}

uint64_t sub_10009287C()
{
  v1 = sub_10009CF14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009D464();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WidgetTileInfo();
  result = 0;
  v13 = v0 + *(v11 + 60);
  v14 = *(v13 + 8);
  if ((v14 - 2) >= 3)
  {
    v132 = v2;
    v15 = v11;
    v16 = *v13;
    if (!v14)
    {
      v17 = v16;
      goto LABEL_10;
    }

    v18 = v16;
    v17 = [v18 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v19 = sub_10009E6A4();

    if (v19 >> 62)
    {
      if (sub_10009EBA4())
      {
        goto LABEL_6;
      }
    }

    else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((v19 & 0xC000000000000001) != 0)
      {
        v20 = sub_10009EAE4();
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_64;
        }

        v20 = *(v19 + 32);
      }

      v17 = v20;

LABEL_10:
      v131 = v7[13];
      v131(v10, enum case for CharacteristicKind.active(_:), v6);
      v130 = *(v0 + *(v15 + 64));
      v21 = sub_100016EAC(v10, v130);
      v18 = v7[1];
      (v18)(v10, v6);
      if (v21 == 2)
      {

        return 0;
      }

      if ((v21 & 1) == 0)
      {
        v42 = sub_10009E604();

        return v42;
      }

      if (qword_1000C0A90 == -1)
      {
LABEL_14:
        v22 = sub_10009D924();
        v23 = sub_100015B68(v22, qword_1000C8278);
        v24 = v17;
        v127 = v23;
        v25 = sub_10009D904();
        v26 = sub_10009E844();

        v27 = os_log_type_enabled(v25, v26);
        v128 = v18;
        v129 = v24;
        if (v27)
        {
          v28 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v133 = v126;
          *v28 = 136315394;
          v29 = [v24 uniqueIdentifier];
          LODWORD(v125) = v26;
          v30 = v29;
          sub_10009CF04();

          v31 = sub_10009CEE4();
          v33 = v32;
          (*(v132 + 8))(v5, v1);
          v34 = sub_10002AD68(v31, v33, &v133);

          *(v28 + 4) = v34;
          *(v28 + 12) = 1024;
          *(v28 + 14) = 1;
          _os_log_impl(&_mh_execute_header, v25, v125, "humidifierDehumidifier: %s active: %{BOOL}d", v28, 0x12u);
          sub_100015F44(v126);
        }

        v35 = v130;
        v36 = v131;
        v131(v10, enum case for CharacteristicKind.currentHumidifierDehumidifierState(_:), v6);
        v131 = sub_100016C54(v10, v35);
        v38 = v37;
        v39 = v128;
        v128(v10, v6);
        if (v38)
        {
          goto LABEL_18;
        }

        v36(v10, enum case for CharacteristicKind.targetHumidifierDehumidifierState(_:), v6);
        v130 = sub_100016C54(v10, v35);
        v41 = v40;
        v39(v10, v6);
        if (v41)
        {
          goto LABEL_18;
        }

        v36(v10, enum case for CharacteristicKind.humidifierThreshold(_:), v6);
        v43 = v129;
        v125 = sub_100016C54(v10, v35);
        LODWORD(v126) = v44;
        v39(v10, v6);
        v36(v10, enum case for CharacteristicKind.dehumidifierThreshold(_:), v6);
        v45 = sub_100016C54(v10, v35);
        v47 = v46;
        v39(v10, v6);
        v48 = v43;
        v49 = sub_10009D904();
        v50 = sub_10009E844();
        v129 = v48;

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v135 = swift_slowAlloc();
          *v51 = 136315650;
          v52 = [v129 uniqueIdentifier];
          sub_10009CF04();

          v53 = sub_10009CEE4();
          v54 = v45;
          v55 = v47;
          v57 = v56;
          (*(v132 + 8))(v5, v1);
          v58 = sub_10002AD68(v53, v57, &v135);

          *(v51 + 4) = v58;
          *(v51 + 12) = 2080;
          v133 = v125;
          v134 = v126 & 1;
          sub_100003714(&qword_1000C2ED0, &unk_1000A3A10);
          v59 = sub_10009E5F4();
          v61 = sub_10002AD68(v59, v60, &v135);

          *(v51 + 14) = v61;
          *(v51 + 22) = 2080;
          v133 = v54;
          v134 = v55 & 1;
          v62 = sub_10009E5F4();
          v64 = sub_10002AD68(v62, v63, &v135);

          *(v51 + 24) = v64;
          v47 = v55;
          _os_log_impl(&_mh_execute_header, v49, v50, "humidifierDehumidifier: %s humidifierThreshold: %s dehumidifierThreshold: %s", v51, 0x20u);
          swift_arrayDestroy();

          v65 = v54;
        }

        else
        {

          v65 = v45;
        }

        v66 = v130;
        if (v131 == 3)
        {
          if (v130 == 2 || v130 == 1)
          {
            if (v47)
            {
              goto LABEL_54;
            }

            sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
            isa = sub_10009E8C4(v65).super.super.isa;
            v110 = sub_10009E8C4(0).super.super.isa;
            v111 = sub_10009E8C4(100).super.super.isa;
            v106 = sub_10006A4E8(isa);
            v108 = v112;

            goto LABEL_49;
          }

          if (v130)
          {
            goto LABEL_18;
          }

          if (v126 & 1) != 0 || (v47)
          {
            goto LABEL_54;
          }

LABEL_43:
          v132 = sub_10009E604();
          sub_100003714(&qword_1000C2E80, &qword_1000A39D8);
          v88 = v65;
          v89 = swift_allocObject();
          *(v89 + 16) = xmmword_10009F8F0;
          sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
          v90 = sub_10009E8C4(v125).super.super.isa;
          v91 = sub_10009E8C4(0).super.super.isa;
          v92 = sub_10009E8C4(100).super.super.isa;
          v93 = sub_10006A4E8(v90);
          v95 = v94;

          *(v89 + 56) = &type metadata for String;
          v96 = sub_100093FE4();
          *(v89 + 64) = v96;
          *(v89 + 32) = v93;
          *(v89 + 40) = v95;
          v97 = sub_10009E8C4(v88).super.super.isa;
          v98 = sub_10009E8C4(0).super.super.isa;
          v99 = sub_10009E8C4(100).super.super.isa;
          v100 = sub_10006A4E8(v97);
          v102 = v101;

          *(v89 + 96) = &type metadata for String;
          *(v89 + 104) = v96;
          *(v89 + 72) = v100;
          *(v89 + 80) = v102;
          v86 = sub_10009E5D4();

          goto LABEL_44;
        }

        if (v131 == 2)
        {
          v67 = v125;
          if (v130 != 2 && v130 != 1)
          {
            if (!v130)
            {
              if ((v126 & 1) == 0 && (v47 & 1) == 0)
              {
                v68 = sub_10009E604();
                v131 = v69;
                v132 = v68;
                sub_100003714(&qword_1000C2E80, &qword_1000A39D8);
                v70 = v67;
                v71 = v65;
                v72 = swift_allocObject();
                *(v72 + 16) = xmmword_10009F8F0;
                sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
                v73 = sub_10009E8C4(v70).super.super.isa;
                v74 = sub_10009E8C4(0).super.super.isa;
                v75 = sub_10009E8C4(100).super.super.isa;
                v76 = sub_10006A4E8(v73);
                v78 = v77;

                *(v72 + 56) = &type metadata for String;
                v79 = sub_100093FE4();
                *(v72 + 64) = v79;
                *(v72 + 32) = v76;
                *(v72 + 40) = v78;
                v80 = sub_10009E8C4(v71).super.super.isa;
                v81 = sub_10009E8C4(0).super.super.isa;
                v82 = sub_10009E8C4(100).super.super.isa;
                v83 = sub_10006A4E8(v80);
                v85 = v84;

                *(v72 + 96) = &type metadata for String;
                *(v72 + 104) = v79;
                *(v72 + 72) = v83;
                *(v72 + 80) = v85;
                v86 = sub_10009E5D4();

LABEL_44:

                return v86;
              }

LABEL_54:

              return 0;
            }

LABEL_18:
            v42 = sub_10009E604();

            return v42;
          }

          if (v126)
          {
            goto LABEL_54;
          }

          sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
          v103 = sub_10009E8C4(v67).super.super.isa;
          v104 = sub_10009E8C4(0).super.super.isa;
          v105 = sub_10009E8C4(100).super.super.isa;
          v106 = sub_10006A4E8(v103);
          v108 = v107;

LABEL_49:
          sub_10009E604();
          sub_100003714(&qword_1000C2E80, &qword_1000A39D8);
          v113 = swift_allocObject();
          *(v113 + 16) = xmmword_10009F8D0;
          *(v113 + 56) = &type metadata for String;
          *(v113 + 64) = sub_100093FE4();
          *(v113 + 32) = v106;
          *(v113 + 40) = v108;
          v114 = sub_10009E5D4();

          return v114;
        }

        sub_10009E604();
        v87 = v126;
        if (v66 == 2)
        {
          if ((v47 & 1) == 0)
          {
            sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
            v115 = v65;
            goto LABEL_57;
          }
        }

        else
        {
          if (v66 != 1)
          {
            if (v66)
            {

              goto LABEL_18;
            }

            if (v87 & 1) != 0 || (v47)
            {
              goto LABEL_54;
            }

            goto LABEL_43;
          }

          if ((v126 & 1) == 0)
          {
            sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
            v115 = v125;
LABEL_57:
            v116 = sub_10009E8C4(v115).super.super.isa;
            v117 = sub_10009E8C4(0).super.super.isa;
            v118 = sub_10009E8C4(100).super.super.isa;
            v119 = sub_10006A4E8(v116);
            v121 = v120;

            sub_100003714(&qword_1000C2E80, &qword_1000A39D8);
            v122 = swift_allocObject();
            *(v122 + 16) = xmmword_10009F8D0;
            *(v122 + 56) = &type metadata for String;
            *(v122 + 64) = sub_100093FE4();
            *(v122 + 32) = v119;
            *(v122 + 40) = v121;
            v123 = sub_10009E5D4();

            return v123;
          }
        }

        goto LABEL_54;
      }

LABEL_64:
      swift_once();
      goto LABEL_14;
    }

    return 0;
  }

  return result;
}

uint64_t sub_100093678()
{
  v1 = sub_10009CF14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009D464();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WidgetTileInfo();
  result = 0;
  v13 = v0 + *(v11 + 60);
  v14 = *(v13 + 8);
  if ((v14 - 2) < 3)
  {
    return result;
  }

  v39 = v2;
  v40 = v1;
  v15 = v11;
  v16 = *v13;
  if (v14)
  {
    v18 = v16;
    v19 = [v18 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v20 = sub_10009E6A4();

    if (v20 >> 62)
    {
      result = sub_10009EBA4();
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_6:
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = sub_10009EAE4();
        }

        else
        {
          if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v21 = *(v20 + 32);
        }

        v17 = v21;

        goto LABEL_10;
      }
    }

    return 0;
  }

  v17 = v16;
LABEL_10:
  v22 = *(v0 + *(v15 + 64));
  v23 = v7[13];
  v23(v10, enum case for CharacteristicKind.powerState(_:), v6);
  v41 = sub_100016EAC(v10, v22);
  v24 = v41;
  v25 = v7[1];
  v25(v10, v6);
  if (v24 == 2)
  {
    v23(v10, enum case for CharacteristicKind.active(_:), v6);
    v26 = sub_100016EAC(v10, v22);
    v25(v10, v6);
    if (v26 == 2)
    {

      return 0;
    }

    v41 = v26;
  }

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v27 = sub_10009D924();
  sub_100015B68(v27, qword_1000C8278);
  v28 = v17;
  v29 = sub_10009D904();
  v30 = sub_10009E844();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v42 = v32;
    *v31 = 136315394;
    v33 = [v28 uniqueIdentifier];
    sub_10009CF04();

    v34 = sub_10009CEE4();
    v36 = v35;
    (*(v39 + 8))(v5, v40);
    v37 = sub_10002AD68(v34, v36, &v42);

    *(v31 + 4) = v37;
    *(v31 + 12) = 1024;
    *(v31 + 14) = v41 & 1;
    _os_log_impl(&_mh_execute_header, v29, v30, "defaultActivePowerState: %s powerState: %{BOOL}d", v31, 0x12u);
    sub_100015F44(v32);
  }

  v38 = sub_10009E604();

  return v38;
}

uint64_t sub_100093B5C(unsigned int *a1, const char *a2)
{
  v5 = sub_10009CF14();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10009D464();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WidgetTileInfo();
  result = 0;
  v17 = v2 + *(v15 + 60);
  v18 = *(v17 + 8);
  if ((v18 - 2) < 3)
  {
    return result;
  }

  v44 = v6;
  v45 = a2;
  v46 = v15;
  v19 = *v17;
  if (v18)
  {
    v21 = v19;
    v22 = [v21 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v23 = sub_10009E6A4();

    if (v23 >> 62)
    {
      result = sub_10009EBA4();
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_6:
        if ((v23 & 0xC000000000000001) != 0)
        {
          v24 = sub_10009EAE4();
        }

        else
        {
          if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v24 = *(v23 + 32);
        }

        v20 = v24;

        goto LABEL_10;
      }
    }

    return 0;
  }

  v20 = v19;
LABEL_10:
  (*(v11 + 104))(v14, *a1, v10);
  v25 = sub_100016C54(v14, *(v2 + *(v46 + 64)));
  v27 = v26;
  (*(v11 + 8))(v14, v10);
  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v25;
  }

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v29 = sub_10009D924();
  sub_100015B68(v29, qword_1000C8278);
  v30 = v20;
  v31 = sub_10009D904();
  v32 = sub_10009E844();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v47 = v34;
    *v33 = 136315394;
    v35 = [v30 uniqueIdentifier];
    sub_10009CF04();

    v36 = sub_10009CEE4();
    v38 = v37;
    (*(v44 + 8))(v9, v5);
    v39 = sub_10002AD68(v36, v38, &v47);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2048;
    *(v33 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v31, v32, v45, v33, 0x16u);
    sub_100015F44(v34);
  }

  sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
  isa = sub_10009E8C4(v28).super.super.isa;
  v41 = sub_10009E8C4(0).super.super.isa;
  v42 = sub_10009E8C4(100).super.super.isa;
  v43 = sub_10006A4E8(isa);

  return v43;
}

unint64_t sub_100093FE4()
{
  result = qword_1000C2E88;
  if (!qword_1000C2E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2E88);
  }

  return result;
}

unint64_t sub_100094038()
{
  result = qword_1000C2EC8;
  if (!qword_1000C2EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2EC8);
  }

  return result;
}

unint64_t sub_10009408C()
{
  result = qword_1000C0CB0;
  if (!qword_1000C0CB0)
  {
    sub_10009D1C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0CB0);
  }

  return result;
}

uint64_t sub_100094108()
{
  v0 = sub_10009D924();
  sub_10001F4BC(v0, qword_1000C3060);
  sub_100015B68(v0, qword_1000C3060);
  return sub_10009D914();
}

uint64_t type metadata accessor for WidgetPredictionAnalyticsInfo()
{
  result = qword_1000C3170;
  if (!qword_1000C3170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_100094278()
{
  v1 = *v0;
  sub_10009EDD4();
  sub_10009EDE4(v1);
  return sub_10009EE04();
}

Swift::Int sub_1000942EC()
{
  v1 = *v0;
  sub_10009EDD4();
  sub_10009EDE4(v1);
  return sub_10009EE04();
}

unint64_t sub_100094330()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_100094368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001000A6060 == a2 || (sub_10009ED34() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000A6080 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_10009ED34();

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

uint64_t sub_100094464(uint64_t a1)
{
  v2 = sub_100098BF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000944A0(uint64_t a1)
{
  v2 = sub_100098BF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WidgetPredictionAnalyticsInfo.encode(to:)(void *a1)
{
  v3 = sub_100003714(&qword_1000C3088, &qword_1000A3A50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_100024330(a1, a1[3]);
  sub_100098BF8();
  sub_10009EE24();
  v11[15] = 0;
  sub_10009D054();
  sub_100098C4C(&qword_1000C3098, &type metadata accessor for HomeAnalyticsUtilities.PredictionAnalyticsScoringValues);
  sub_10009EC94();
  if (!v1)
  {
    v9 = *(type metadata accessor for WidgetPredictionAnalyticsInfo() + 20);
    v11[14] = 1;
    sub_10009D074();
    sub_100098C4C(&qword_1000C30A0, &type metadata accessor for HomeAnalyticsUtilities.PredictionAnalyticsContext);
    sub_10009EC94();
  }

  return (*(v4 + 8))(v7, v3);
}

void WidgetPredictionAnalyticsInfo.hash(into:)()
{
  v1 = v0;
  v2 = sub_10009D074();
  v24 = *(v2 - 8);
  v25 = v2;
  v3 = *(v24 + 64);
  __chkstk_darwin(v2);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003714(&qword_1000C3080, &qword_1000A3A48);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v22 - v7;
  v9 = sub_10009D054();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003714(&qword_1000C3078, &qword_1000A3A40);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v22 - v16;
  sub_10001E0A8(v1, &v22 - v16, &qword_1000C3078, &qword_1000A3A40);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    sub_10009EDF4(0);
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    sub_10009EDF4(1u);
    sub_100098C4C(&qword_1000C30A8, &type metadata accessor for HomeAnalyticsUtilities.PredictionAnalyticsScoringValues);
    sub_10009E504();
    (*(v10 + 8))(v13, v9);
  }

  v18 = type metadata accessor for WidgetPredictionAnalyticsInfo();
  sub_10001E0A8(v1 + *(v18 + 20), v8, &qword_1000C3080, &qword_1000A3A48);
  v20 = v24;
  v19 = v25;
  if ((*(v24 + 48))(v8, 1, v25) == 1)
  {
    sub_10009EDF4(0);
  }

  else
  {
    v21 = v23;
    (*(v20 + 32))(v23, v8, v19);
    sub_10009EDF4(1u);
    sub_100098C4C(&qword_1000C30B0, &type metadata accessor for HomeAnalyticsUtilities.PredictionAnalyticsContext);
    sub_10009E504();
    (*(v20 + 8))(v21, v19);
  }
}

Swift::Int WidgetPredictionAnalyticsInfo.hashValue.getter()
{
  sub_10009EDD4();
  WidgetPredictionAnalyticsInfo.hash(into:)();
  return sub_10009EE04();
}

uint64_t WidgetPredictionAnalyticsInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_100003714(&qword_1000C3080, &qword_1000A3A48);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_100003714(&qword_1000C3078, &qword_1000A3A40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v28 = &v24 - v10;
  v29 = sub_100003714(&qword_1000C30B8, &qword_1000A3A58);
  v27 = *(v29 - 8);
  v11 = *(v27 + 64);
  __chkstk_darwin(v29);
  v13 = &v24 - v12;
  v14 = type metadata accessor for WidgetPredictionAnalyticsInfo();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_100024330(a1, a1[3]);
  sub_100098BF8();
  sub_10009EE14();
  if (v2)
  {
    return sub_100015F44(a1);
  }

  v25 = v14;
  v19 = v17;
  v20 = v27;
  sub_10009D054();
  v31 = 0;
  sub_100098C4C(&qword_1000C30C0, &type metadata accessor for HomeAnalyticsUtilities.PredictionAnalyticsScoringValues);
  v21 = v28;
  v22 = v29;
  sub_10009EC14();
  sub_10005B0FC(v21, v19, &qword_1000C3078, &qword_1000A3A40);
  sub_10009D074();
  v30 = 1;
  sub_100098C4C(&qword_1000C30C8, &type metadata accessor for HomeAnalyticsUtilities.PredictionAnalyticsContext);
  sub_10009EC14();
  (*(v20 + 8))(v13, v22);
  sub_10005B0FC(v7, v19 + *(v25 + 20), &qword_1000C3080, &qword_1000A3A48);
  sub_100098C94(v19, v26);
  sub_100015F44(a1);
  return sub_100098CF8(v19);
}

Swift::Int sub_100094E74()
{
  sub_10009EDD4();
  WidgetPredictionAnalyticsInfo.hash(into:)();
  return sub_10009EE04();
}

Swift::Int sub_100094EB8()
{
  sub_10009EDD4();
  WidgetPredictionAnalyticsInfo.hash(into:)();
  return sub_10009EE04();
}

uint64_t HMHome.fetchPredictions()()
{
  v1[23] = v0;
  v2 = *(*(sub_100003714(&qword_1000C3078, &qword_1000A3A40) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v3 = type metadata accessor for WidgetPredictionAnalyticsInfo();
  v1[25] = v3;
  v4 = *(v3 - 8);
  v1[26] = v4;
  v5 = *(v4 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v6 = *(*(sub_100003714(&qword_1000C30D0, &qword_1000A3A68) - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v7 = sub_10009D074();
  v1[31] = v7;
  v8 = *(v7 - 8);
  v1[32] = v8;
  v9 = *(v8 + 64) + 15;
  v1[33] = swift_task_alloc();
  v10 = *(*(sub_100003714(&qword_1000C30D8, &qword_1000A3A70) - 8) + 64) + 15;
  v1[34] = swift_task_alloc();
  v11 = sub_10009CF14();
  v1[35] = v11;
  v12 = *(v11 - 8);
  v1[36] = v12;
  v13 = *(v12 + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();

  return _swift_task_switch(sub_100095190, 0, 0);
}

uint64_t sub_100095190()
{
  v1 = [*(v0 + 184) userActionPredictionController];
  *(v0 + 336) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_1000953B4;
    v3 = swift_continuation_init();
    *(v0 + 136) = sub_100003714(&qword_1000C30E0, &unk_1000A3A78);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1000962A8;
    *(v0 + 104) = &unk_1000BC518;
    *(v0 + 112) = v3;
    [v2 fetchPredictionsWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v18 = sub_100098D54(_swiftEmptyArrayStorage);
    v5 = *(v0 + 320);
    v4 = *(v0 + 328);
    v7 = *(v0 + 304);
    v6 = *(v0 + 312);
    v8 = *(v0 + 296);
    v10 = *(v0 + 264);
    v9 = *(v0 + 272);
    v12 = *(v0 + 232);
    v11 = *(v0 + 240);
    v13 = *(v0 + 224);
    v16 = *(v0 + 216);
    v17 = *(v0 + 192);

    v14 = *(v0 + 8);

    return v14(0, v18);
  }
}

uint64_t sub_1000953B4()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100095494, 0, 0);
}

uint64_t sub_100095494()
{
  v156 = v0;
  v1 = v0[21];
  if (v1 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10009EBA4())
  {
    v146 = v1;
    if (i)
    {
      v3 = 0;
      v4 = v0[36];
      v141 = v1 & 0xFFFFFFFFFFFFFF8;
      v143 = (v1 & 0xC000000000000001);
      v5 = (v4 + 32);
      v137 = (v4 + 56);
      v139 = v4;
      v135 = (v4 + 48);
      v6 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v143)
        {
          v7 = sub_10009EAE4();
        }

        else
        {
          if (v3 >= *(v141 + 16))
          {
            goto LABEL_56;
          }

          v7 = *(v1 + 8 * v3 + 32);
        }

        v8 = v7;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v151 = v3 + 1;
        v9 = [v7 targetServiceUUID];
        v10 = v0[40];
        if (v9)
        {
          v149 = v0[40];
          v11 = i;
          v12 = v6;
          v13 = v0[39];
          v14 = v0[35];
          v15 = v154[34];
          v16 = v9;
          sub_10009CF04();

          v17 = *v5;
          v18 = v13;
          v6 = v12;
          i = v11;
          (*v5)(v15, v18, v14);
          (*v137)(v15, 0, 1, v14);
          v0 = v154;
          v17(v149, v15, v14);
        }

        else
        {
          v20 = v0[34];
          v19 = v0[35];
          (*v137)(v20, 1, 1, v19);
          v21 = [v8 predictionTargetUUID];
          sub_10009CF04();

          v0 = v154;
          if ((*v135)(v20, 1, v19) != 1)
          {
            sub_1000160CC(v154[34], &qword_1000C30D8, &qword_1000A3A70);
          }
        }

        v22 = *v5;
        (*v5)(v0[41], v0[40], v0[35]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_100097488(0, v6[2] + 1, 1, v6);
        }

        v24 = v6[2];
        v23 = v6[3];
        if (v24 >= v23 >> 1)
        {
          v6 = sub_100097488(v23 > 1, v24 + 1, 1, v6);
        }

        v25 = v0[41];
        v26 = v0[35];
        v6[2] = v24 + 1;
        v22(v6 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v24, v25, v26);
        ++v3;
        v1 = v146;
        if (v151 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v6 = _swiftEmptyArrayStorage;
LABEL_21:
    v0[22] = v6;
    if (qword_1000C2F70 != -1)
    {
      swift_once();
    }

    v27 = v0[23];
    v28 = sub_10009D924();
    sub_100015B68(v28, qword_1000C3060);
    v29 = v27;
    v30 = sub_10009D904();
    v31 = sub_10009E844();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v0[39];
      v34 = v0[35];
      v33 = v0[36];
      v144 = v0[23];
      v35 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      *v35 = 134218498;
      *(v35 + 4) = v6[2];
      *(v35 + 12) = 2080;

      v36 = sub_10009E6B4();
      v38 = v37;

      v39 = sub_100097660(v36, v38, &v155);

      *(v35 + 14) = v39;
      *(v35 + 22) = 2080;
      v40 = [v144 uniqueIdentifier];
      sub_10009CF04();

      sub_100098C4C(&qword_1000C3100, &type metadata accessor for UUID);
      v41 = sub_10009ED04();
      v43 = v42;
      (*(v33 + 8))(v32, v34);
      v44 = sub_100097660(v41, v43, &v155);

      *(v35 + 24) = v44;
      _os_log_impl(&_mh_execute_header, v30, v31, "HomeKit predictionUUIDs (%ld) = %s homeID = %s", v35, 0x20u);
      swift_arrayDestroy();
    }

    v45 = v0[23];

    v47 = HMHome.backfill(predictionUUIDs:)(v46);

    swift_beginAccess();
    v0[22] = v47;

    v48 = v45;
    v49 = sub_10009D904();
    v50 = sub_10009E844();

    v142 = v47;
    if (os_log_type_enabled(v49, v50))
    {
      v51 = v0[39];
      v53 = v0[35];
      v52 = v0[36];
      v54 = v0[23];
      v55 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      *v55 = 136315394;

      v56 = sub_10009E6B4();
      v58 = v57;

      v59 = sub_100097660(v56, v58, &v155);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2080;
      v60 = [v54 uniqueIdentifier];
      sub_10009CF04();

      sub_100098C4C(&qword_1000C3100, &type metadata accessor for UUID);
      v61 = sub_10009ED04();
      v63 = v62;
      (*(v52 + 8))(v51, v53);
      v64 = sub_100097660(v61, v63, &v155);

      *(v55 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v49, v50, "RETURNING predictions = %s homeID = %s", v55, 0x16u);
      swift_arrayDestroy();

      v0 = v154;

      v65 = v142;
    }

    else
    {

      v65 = v47;
    }

    v66 = v0[33];
    v67 = v0[29];
    v1 = v0[30];
    v68 = v0[23];
    sub_100007330(0, &qword_1000C30E8, HMHome_ptr);
    sub_100098F88();
    v69 = sub_10009D044();

    v70 = sub_10009CEC4();
    (*(*(v70 - 8) + 56))(v1, 1, 1, v70);
    sub_100007330(0, &qword_1000C30F8, NSUserDefaults_ptr);
    sub_10009E864();
    sub_10009D064();
    sub_1000160CC(v67, &qword_1000C30D0, &qword_1000A3A68);
    sub_1000160CC(v1, &qword_1000C30D0, &qword_1000A3A68);
    v71 = sub_100098D54(_swiftEmptyArrayStorage);
    v138 = *(v65 + 16);
    v140 = v69;
    if (!v138)
    {
      break;
    }

    v72 = v65;
    v73 = v0[36];
    v74 = v0[32];
    v134 = v65 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
    v136 = v73;
    v133 = v0[25];
    v152 = (v73 + 8);
    v132 = (v74 + 16);
    v130 = v0[26];
    v131 = (v74 + 56);

    v75 = 0;
    while (v75 < *(v72 + 16))
    {
      v0 = v154;
      v76 = v154[37];
      v77 = v154[35];
      v145 = *(v136 + 72);
      v78 = *(v136 + 16);
      v78(v154[38], v134 + v145 * v75, v77);
      v147 = v78;
      v78(v76, v134 + v145 * v75, v77);
      v79 = v154[37];
      if (*(v69 + 16))
      {
        v80 = sub_100097C08(v79);
        v81 = v154[37];
        v82 = v154[35];
        v83 = v154[24];
        if (v84)
        {
          v85 = v80;
          v86 = *(v69 + 56);
          v87 = sub_10009D054();
          v88 = *(v87 - 8);
          (*(v88 + 16))(v83, v86 + *(v88 + 72) * v85, v87);
          v89 = *v152;
          (*v152)(v81, v82);
          (*(v88 + 56))(v83, 0, 1, v87);
        }

        else
        {
          v89 = *v152;
          (*v152)(v154[37], v154[35]);
          v92 = sub_10009D054();
          (*(*(v92 - 8) + 56))(v83, 1, 1, v92);
        }

        v0 = v154;
      }

      else
      {
        v90 = v154[24];
        v89 = *v152;
        (*v152)(v79, v154[35]);
        v91 = sub_10009D054();
        (*(*(v91 - 8) + 56))(v90, 1, 1, v91);
      }

      v93 = v0[38];
      v1 = v0[31];
      v95 = v0[27];
      v94 = v0[28];
      v96 = v0[24];
      v97 = *(v133 + 20);
      (*v132)(v94 + v97, v0[33], v1);
      (*v131)(v94 + v97, 0, 1, v1);
      sub_10005B0FC(v96, v94, &qword_1000C3078, &qword_1000A3A40);
      sub_100098FF0(v94, v95);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v155 = v71;
      v99 = sub_100097C08(v93);
      v101 = v71[2];
      v102 = (v100 & 1) == 0;
      v103 = __OFADD__(v101, v102);
      v104 = v101 + v102;
      if (v103)
      {
        goto LABEL_58;
      }

      v105 = v100;
      if (v71[3] >= v104)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v113 = v99;
          sub_1000982C4();
          v99 = v113;
          v71 = v155;
        }
      }

      else
      {
        v1 = v154[38];
        sub_100097CA0(v104, isUniquelyReferenced_nonNull_native);
        v71 = v155;
        v99 = sub_100097C08(v1);
        if ((v105 & 1) != (v106 & 1))
        {
          v129 = v154[35];

          return sub_10009ED74();
        }
      }

      v107 = v154[38];
      v108 = v154[35];
      v109 = v154[27];
      if (v105)
      {
        sub_100099054(v154[27], v71[7] + *(v130 + 72) * v99);
        v89(v107, v108);
      }

      else
      {
        v71[(v99 >> 6) + 8] |= 1 << v99;
        v110 = v99;
        v147(v71[6] + v99 * v145, v107, v108);
        sub_100098FF0(v109, v71[7] + *(v130 + 72) * v110);
        v89(v107, v108);
        v111 = v71[2];
        v103 = __OFADD__(v111, 1);
        v112 = v111 + 1;
        if (v103)
        {
          goto LABEL_59;
        }

        v71[2] = v112;
      }

      ++v75;
      v69 = v140;
      v72 = v142;
      if (v138 == v75)
      {

        goto LABEL_49;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_49:
  v114 = v154[42];
  v116 = v154[32];
  v115 = v154[33];
  v117 = v154[31];

  (*(v116 + 8))(v115, v117);
  v119 = v154[40];
  v118 = v154[41];
  v121 = v154[38];
  v120 = v154[39];
  v122 = v154[37];
  v124 = v154[33];
  v123 = v154[34];
  v125 = v154[29];
  v126 = v154[30];
  v148 = v154[28];
  v150 = v154[27];
  v153 = v154[24];

  v127 = v154[1];

  return v127(v142, v71);
}

uint64_t sub_1000962A8(uint64_t a1)
{
  v1 = *sub_100024330((a1 + 32), *(a1 + 56));
  sub_100007330(0, &qword_1000C31F8, HMUserActionPrediction_ptr);
  **(*(v1 + 64) + 40) = sub_10009E6A4();

  return _swift_continuation_resume(v1);
}

char *sub_10009632C(unint64_t a1, unint64_t *a2)
{
  v43 = a2;
  v3 = sub_100003714(&qword_1000C30D8, &qword_1000A3A70);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v31 - v5;
  v7 = sub_10009CF14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v42 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v31 - v13;
  __chkstk_darwin(v12);
  v32 = &v31 - v15;
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
  {
    v17 = 0;
    v40 = a1 & 0xFFFFFFFFFFFFFF8;
    v41 = a1 & 0xC000000000000001;
    v31 = a1;
    v36 = (v8 + 56);
    v37 = (v8 + 8);
    v35 = (v8 + 48);
    v33 = (a1 + 32);
    v34 = (v8 + 32);
    v44 = _swiftEmptyArrayStorage;
    v38 = i;
    v39 = v6;
    while (v41)
    {
      v18 = sub_10009EAE4();
      v19 = __OFADD__(v17++, 1);
      if (v19)
      {
        goto LABEL_22;
      }

LABEL_9:
      a1 = *v43;

      v20 = [v18 uniqueIdentifier];
      sub_10009CF04();

      v21 = 0;
      v22 = *(a1 + 16);
      while (v22 != v21)
      {
        v23 = v21 + 1;
        v24 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21;
        sub_100098C4C(&qword_1000C31D0, &type metadata accessor for UUID);
        v25 = sub_10009E534();
        v21 = v23;
        if (v25)
        {

          (*v37)(v14, v7);
          v6 = v39;
          (*v36)(v39, 1, 1, v7);
          goto LABEL_14;
        }
      }

      (*v37)(v14, v7);
      a1 = [v18 uniqueIdentifier];
      v6 = v39;
      sub_10009CF04();

      (*v36)(v6, 0, 1, v7);
LABEL_14:
      swift_unknownObjectRelease();
      if ((*v35)(v6, 1, v7) == 1)
      {
        sub_1000160CC(v6, &qword_1000C30D8, &qword_1000A3A70);
      }

      else
      {
        v26 = *v34;
        v27 = v32;
        (*v34)(v32, v6, v7);
        v26(v42, v27, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_100097488(0, *(v44 + 2) + 1, 1, v44);
        }

        v6 = *(v44 + 2);
        v28 = *(v44 + 3);
        a1 = v6 + 1;
        if (v6 >= v28 >> 1)
        {
          v44 = sub_100097488(v28 > 1, v6 + 1, 1, v44);
        }

        v29 = v44;
        *(v44 + 2) = a1;
        v26(&v29[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6], v42, v7);
      }

      if (v17 == v38)
      {
        return v44;
      }
    }

    if (v17 >= *(v40 + 16))
    {
      goto LABEL_23;
    }

    v18 = v33[v17];
    swift_unknownObjectRetain();
    v19 = __OFADD__(v17++, 1);
    if (!v19)
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  return _swiftEmptyArrayStorage;
}

unint64_t HMHome.backfill(predictionUUIDs:)(unint64_t a1)
{
  v3 = sub_10009CF14();
  v90 = *(v3 - 8);
  v4 = *(v90 + 64);
  v5 = __chkstk_darwin(v3);
  v88 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  __chkstk_darwin(v7);
  v10 = &v82 - v9;
  v92 = a1;
  v11 = *(a1 + 16);
  if (v11 >= 0x10)
  {
  }

  else
  {
    v84 = v8;
    v12 = 16 - v11;
    v13 = objc_opt_self();

    isa = sub_10009E694().super.isa;
    v15 = [v13 predictionsPaddingFavoriteServicesForHome:v1 withLimit:v12 ignoreUUIDs:isa];

    v85 = sub_100003714(&qword_1000C3108, &qword_1000A3A88);
    v16 = sub_10009E6A4();

    if (v16 >> 62)
    {
      goto LABEL_45;
    }

    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v83 = v1;
    v86 = v13;
    v89 = v3;
    if (v17)
    {
      v18 = 0;
      v87 = v16 & 0xC000000000000001;
      v3 = v16 & 0xFFFFFFFFFFFFFF8;
      v19 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v87)
        {
          v20 = v16;
          v16 = sub_10009EAE4();
          v1 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (v18 >= *(v3 + 16))
          {
            goto LABEL_42;
          }

          v20 = v16;
          v16 = *(v16 + 8 * v18 + 32);
          swift_unknownObjectRetain();
          v1 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            v17 = sub_10009EBA4();
            goto LABEL_4;
          }
        }

        v21 = [v16 uniqueIdentifier];
        sub_10009CF04();

        swift_unknownObjectRelease();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100097488(0, v19[2] + 1, 1, v19);
        }

        v13 = v19[2];
        v22 = v19[3];
        if (v13 >= v22 >> 1)
        {
          v19 = sub_100097488(v22 > 1, v13 + 1, 1, v19);
        }

        v19[2] = v13 + 1;
        (*(v90 + 32))(v19 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v13, v10, v89);
        ++v18;
        v16 = v20;
        if (v1 == v17)
        {
          goto LABEL_20;
        }
      }
    }

    v19 = _swiftEmptyArrayStorage;
LABEL_20:

    if (qword_1000C2F70 != -1)
    {
      swift_once();
    }

    v23 = sub_10009D924();
    v24 = sub_100015B68(v23, qword_1000C3060);

    v25 = v83;
    v26 = sub_10009D904();
    v27 = sub_10009E844();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v89;
    v87 = v24;
    if (v28)
    {
      v30 = swift_slowAlloc();
      v91[0] = swift_slowAlloc();
      *v30 = 136315394;

      v31 = sub_10009E6B4();
      v33 = v32;

      v34 = sub_100097660(v31, v33, v91);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v35 = [v25 uniqueIdentifier];
      v36 = v84;
      sub_10009CF04();

      sub_100098C4C(&qword_1000C3100, &type metadata accessor for UUID);
      v37 = sub_10009ED04();
      v39 = v38;
      (*(v90 + 8))(v36, v29);
      v40 = sub_100097660(v37, v39, v91);

      *(v30 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v26, v27, "Backfilling with favoriteUUIDs = %s homeID = %s", v30, 0x16u);
      swift_arrayDestroy();
    }

    v10 = v85;
    v41 = v86;
    sub_10009735C(v19);
    v42 = [v41 favoriteActionSetsForHome:v25 withLimit:16 - *(v92 + 16)];
    v43 = sub_10009E6A4();

    v44 = sub_10009632C(v43, &v92);

    v45 = v25;

    v46 = sub_10009D904();
    v47 = sub_10009E844();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v91[0] = swift_slowAlloc();
      *v48 = 136315394;

      v49 = sub_10009E6B4();
      v51 = v50;

      v52 = sub_100097660(v49, v51, v91);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2080;
      v53 = [v45 uniqueIdentifier];
      v54 = v84;
      sub_10009CF04();

      sub_100098C4C(&qword_1000C3100, &type metadata accessor for UUID);
      v55 = sub_10009ED04();
      v57 = v56;
      (*(v90 + 8))(v54, v29);
      v58 = sub_100097660(v55, v57, v91);

      *(v48 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v46, v47, "Backfilling with sceneUUIDs = %s homeID = %s", v48, 0x16u);
      swift_arrayDestroy();
      v10 = v85;
    }

    sub_10009735C(v44);
    v59 = 16 - *(v92 + 16);
    v13 = sub_10009E694().super.isa;
    v60 = [v86 predictionsPaddingNonFavoriteServicesForHome:v45 withLimit:v59 ignoreUUIDs:v13];

    v1 = sub_10009E6A4();
    if (v1 >> 62)
    {
      v16 = sub_10009EBA4();
      v86 = v45;
      if (v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v86 = v45;
      if (v16)
      {
LABEL_28:
        v61 = 0;
        v3 = v1 & 0xFFFFFFFFFFFFFF8;
        v62 = _swiftEmptyArrayStorage;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v10 = sub_10009EAE4();
            v63 = v61 + 1;
            if (__OFADD__(v61, 1))
            {
              goto LABEL_43;
            }
          }

          else
          {
            if (v61 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v10 = *(v1 + 8 * v61 + 32);
            swift_unknownObjectRetain();
            v63 = v61 + 1;
            if (__OFADD__(v61, 1))
            {
              goto LABEL_43;
            }
          }

          v64 = [v10 uniqueIdentifier];
          sub_10009CF04();

          swift_unknownObjectRelease();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v62 = sub_100097488(0, v62[2] + 1, 1, v62);
          }

          v13 = v62[2];
          v65 = v62[3];
          v10 = (v13 + 1);
          if (v13 >= v65 >> 1)
          {
            v62 = sub_100097488(v65 > 1, v13 + 1, 1, v62);
          }

          v62[2] = v10;
          (*(v90 + 32))(v62 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v13, v88, v89);
          ++v61;
          if (v63 == v16)
          {
            goto LABEL_48;
          }
        }
      }
    }

    v62 = _swiftEmptyArrayStorage;
LABEL_48:

    v66 = v86;

    v67 = sub_10009D904();
    v68 = sub_10009E844();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v91[0] = swift_slowAlloc();
      *v69 = 136315394;

      v70 = v89;
      v71 = sub_10009E6B4();
      v73 = v72;

      v74 = sub_100097660(v71, v73, v91);

      *(v69 + 4) = v74;
      *(v69 + 12) = 2080;
      v75 = [v66 uniqueIdentifier];
      v76 = v84;
      sub_10009CF04();

      sub_100098C4C(&qword_1000C3100, &type metadata accessor for UUID);
      v77 = sub_10009ED04();
      v79 = v78;
      (*(v90 + 8))(v76, v70);
      v80 = sub_100097660(v77, v79, v91);

      *(v69 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v67, v68, "Backfilling with nonFavoriteUUIDs = %s homeID = %s", v69, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009735C(v62);
    return v92;
  }

  return a1;
}

uint64_t sub_10009735C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_100097488(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_10009CF14();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

size_t sub_100097488(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003714(&qword_1000C31F0, &qword_1000A3CB8);
  v10 = *(sub_10009CF14() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_10009CF14() - 8);
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

uint64_t sub_100097660(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10009772C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001B668(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100015F44(v11);
  return v7;
}

unint64_t sub_10009772C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100097838(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10009EB24();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_100097838(uint64_t a1, unint64_t a2)
{
  v4 = sub_100097884(a1, a2);
  sub_1000979B4(&off_1000BC4B8);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_100097884(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100097AA0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10009EB24();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10009E644();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100097AA0(v10, 0);
        result = sub_10009EAB4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000979B4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100097B14(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100097AA0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003714(&qword_1000C31D8, &qword_1000A3CA8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100097B14(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000C31D8, &qword_1000A3CA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_100097C08(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10009CF14();
  sub_100098C4C(&qword_1000C31E8, &type metadata accessor for UUID);
  v5 = sub_10009E4F4();

  return sub_100098104(a1, v5);
}

uint64_t sub_100097CA0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for WidgetPredictionAnalyticsInfo();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin(v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009CF14();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_100003714(&qword_1000C31E0, &qword_1000A3CB0);
  v48 = a2;
  result = sub_10009EBC4();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_100098FF0(v31 + v32 * v28, v52);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_100098C94(v33 + v32 * v28, v52);
      }

      v34 = *(v16 + 40);
      sub_100098C4C(&qword_1000C31E8, &type metadata accessor for UUID);
      result = sub_10009E4F4();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_100098FF0(v52, *(v16 + 56) + v32 * v24);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

unint64_t sub_100098104(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_10009CF14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_100098C4C(&qword_1000C31D0, &type metadata accessor for UUID);
      v16 = sub_10009E534();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

char *sub_1000982C4()
{
  v1 = v0;
  v2 = type metadata accessor for WidgetPredictionAnalyticsInfo();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin(v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10009CF14();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003714(&qword_1000C31E0, &qword_1000A3CB0);
  v7 = *v0;
  v8 = sub_10009EBB4();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_100098C94(*(v7 + 56) + v28, v37);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_100098FF0(v27, *(v29 + 56) + v28);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

BOOL _s14HomeWidgetCore0B23PredictionAnalyticsInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009D074();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  __chkstk_darwin(v4);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003714(&qword_1000C3080, &qword_1000A3A48);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v45 = &v44 - v9;
  v46 = sub_100003714(&qword_1000C3208, &qword_1000A3CC8);
  v10 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v47 = &v44 - v11;
  v12 = sub_10009D054();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100003714(&qword_1000C3078, &qword_1000A3A40);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v44 - v19;
  v21 = sub_100003714(&qword_1000C3210, &unk_1000A3CD0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v25 = &v44 - v24;
  v26 = *(v23 + 56);
  v48 = a1;
  sub_10001E0A8(a1, &v44 - v24, &qword_1000C3078, &qword_1000A3A40);
  v49 = a2;
  sub_10001E0A8(a2, &v25[v26], &qword_1000C3078, &qword_1000A3A40);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_10001E0A8(v25, v20, &qword_1000C3078, &qword_1000A3A40);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      (*(v13 + 32))(v16, &v25[v26], v12);
      sub_100098C4C(&unk_1000C3220, &type metadata accessor for HomeAnalyticsUtilities.PredictionAnalyticsScoringValues);
      v31 = sub_10009E534();
      v32 = *(v13 + 8);
      v32(v16, v12);
      v32(v20, v12);
      sub_1000160CC(v25, &qword_1000C3078, &qword_1000A3A40);
      if ((v31 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v13 + 8))(v20, v12);
LABEL_6:
    v28 = &qword_1000C3210;
    v29 = &unk_1000A3CD0;
    v30 = v25;
LABEL_14:
    sub_1000160CC(v30, v28, v29);
    return 0;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_1000160CC(v25, &qword_1000C3078, &qword_1000A3A40);
LABEL_8:
  v33 = *(type metadata accessor for WidgetPredictionAnalyticsInfo() + 20);
  v34 = v47;
  v35 = *(v46 + 48);
  sub_10001E0A8(v48 + v33, v47, &qword_1000C3080, &qword_1000A3A48);
  sub_10001E0A8(v49 + v33, v34 + v35, &qword_1000C3080, &qword_1000A3A48);
  v37 = v50;
  v36 = v51;
  v38 = *(v50 + 48);
  if (v38(v34, 1, v51) == 1)
  {
    if (v38(v34 + v35, 1, v36) == 1)
    {
      sub_1000160CC(v34, &qword_1000C3080, &qword_1000A3A48);
      return 1;
    }

    goto LABEL_13;
  }

  v39 = v45;
  sub_10001E0A8(v34, v45, &qword_1000C3080, &qword_1000A3A48);
  if (v38(v34 + v35, 1, v36) == 1)
  {
    (*(v37 + 8))(v39, v36);
LABEL_13:
    v28 = &qword_1000C3208;
    v29 = &qword_1000A3CC8;
    v30 = v34;
    goto LABEL_14;
  }

  v41 = v44;
  (*(v37 + 32))(v44, v34 + v35, v36);
  sub_100098C4C(&qword_1000C3218, &type metadata accessor for HomeAnalyticsUtilities.PredictionAnalyticsContext);
  v42 = sub_10009E534();
  v43 = *(v37 + 8);
  v43(v41, v36);
  v43(v39, v36);
  sub_1000160CC(v34, &qword_1000C3080, &qword_1000A3A48);
  return (v42 & 1) != 0;
}

unint64_t sub_100098BF8()
{
  result = qword_1000C3090;
  if (!qword_1000C3090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C3090);
  }

  return result;
}

uint64_t sub_100098C4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100098C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetPredictionAnalyticsInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100098CF8(uint64_t a1)
{
  v2 = type metadata accessor for WidgetPredictionAnalyticsInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100098D54(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C3200, &qword_1000A3CC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003714(&qword_1000C31E0, &qword_1000A3CB0);
    v8 = sub_10009EBD4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10001E0A8(v10, v6, &qword_1000C3200, &qword_1000A3CC0);
      result = sub_100097C08(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_10009CF14();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for WidgetPredictionAnalyticsInfo();
      result = sub_100098FF0(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100098F88()
{
  result = qword_1000C30F0;
  if (!qword_1000C30F0)
  {
    sub_100007330(255, &qword_1000C30E8, HMHome_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C30F0);
  }

  return result;
}

uint64_t sub_100098FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetPredictionAnalyticsInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100099054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetPredictionAnalyticsInfo();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100099114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003714(&qword_1000C3078, &qword_1000A3A40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100003714(&qword_1000C3080, &qword_1000A3A48);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100099230(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003714(&qword_1000C3078, &qword_1000A3A40);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100003714(&qword_1000C3080, &qword_1000A3A48);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100099344()
{
  sub_100099400(319, &qword_1000C3180, &type metadata accessor for HomeAnalyticsUtilities.PredictionAnalyticsScoringValues);
  if (v0 <= 0x3F)
  {
    sub_100099400(319, &unk_1000C3188, &type metadata accessor for HomeAnalyticsUtilities.PredictionAnalyticsContext);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100099400(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10009E944();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for WidgetPredictionAnalyticsInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WidgetPredictionAnalyticsInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000995D0()
{
  result = qword_1000C31B8;
  if (!qword_1000C31B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C31B8);
  }

  return result;
}

unint64_t sub_100099628()
{
  result = qword_1000C31C0;
  if (!qword_1000C31C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C31C0);
  }

  return result;
}

unint64_t sub_100099680()
{
  result = qword_1000C31C8;
  if (!qword_1000C31C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C31C8);
  }

  return result;
}

uint64_t sub_1000996D4()
{
  type metadata accessor for HomeSettingsActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1000C3230 = v0;
  return result;
}

uint64_t HomeWidget.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10009979C()
{
  if (qword_1000C2F78 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000997F8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HomeSettingsActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

uint64_t sub_100099830()
{
  type metadata accessor for UserHomeSettings();
  v0 = swift_allocObject();
  result = sub_100099C8C();
  qword_1000C3238 = v0;
  return result;
}

uint64_t sub_100099890(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t UserHomeSettings.isHomeSensingEnabled.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_10009E5B4();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    sub_10009E974();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_100099A54();
    if (swift_dynamicCast())
    {
      v4 = [v6 BOOLValue];

      return v4;
    }
  }

  else
  {
    sub_1000999EC(v9);
  }

  return 1;
}

uint64_t sub_1000999EC(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C3240, &qword_1000A3CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100099A54()
{
  result = qword_1000C3248;
  if (!qword_1000C3248)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C3248);
  }

  return result;
}

uint64_t UserHomeSettings.selectedHome.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = sub_10009E5B4();
  v5 = [v3 stringForKey:v4];

  if (v5)
  {
    sub_10009E5C4();

    sub_10009CED4();
  }

  else
  {
    v7 = sub_10009CF14();
    v8 = *(*(v7 - 8) + 56);

    return v8(a1, 1, 1, v7);
  }
}

uint64_t UserHomeSettings.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100099C14()
{
  result = qword_1000C3250;
  if (!qword_1000C3250)
  {
    type metadata accessor for HomeSettingsActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C3250);
  }

  return result;
}

uint64_t sub_100099C8C()
{
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = sub_10009E5B4();
  v3 = [v1 initWithSuiteName:v2];

  if (!v3)
  {
    v3 = [objc_opt_self() standardUserDefaults];
  }

  *(v0 + 16) = v3;
  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = sub_10009E5B4();
  v6 = [v4 initWithSuiteName:v5];

  if (!v6)
  {
    v6 = [objc_opt_self() standardUserDefaults];
  }

  *(v0 + 24) = v6;
  return v0;
}

uint64_t sub_100099E9C()
{
  v0 = sub_10009D924();
  sub_10001F4BC(v0, qword_1000C8320);
  sub_100015B68(v0, qword_1000C8320);
  return sub_10009D914();
}

Swift::Int sub_100099F34()
{
  sub_10009EDD4();
  sub_10009EDE4(0);
  return sub_10009EE04();
}

Swift::Int sub_100099FA0()
{
  sub_10009EDD4();
  sub_10009EDE4(0);
  return sub_10009EE04();
}

uint64_t sub_100099FF0()
{
  type metadata accessor for HomeWidget();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_10009D0F4();
  result = sub_10009D0E4();
  qword_1000C33A0 = v0;
  return result;
}

uint64_t static HomeWidget.shared.getter()
{
  if (qword_1000C2F90 != -1)
  {
    swift_once();
  }
}

uint64_t HomeWidget.synchronizeWithHomeKit<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a2 - 8);
  v4[6] = v5;
  v6 = *(v5 + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = sub_10009D274();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10009A1B0, v3, 0);
}

uint64_t sub_10009A1B0()
{
  v0[11] = sub_10009D024();
  v0[12] = sub_10009D1E4();
  v0[13] = sub_10009D1D4();
  v0[14] = sub_10009C218(&qword_1000C33A8, &type metadata accessor for WidgetActor);
  v2 = sub_10009E714();

  return _swift_task_switch(sub_10009A288, v2, v1);
}

uint64_t sub_10009A288()
{
  v1 = v0[13];
  v2 = v0[11];

  v0[15] = sub_10009D004();
  v3 = async function pointer to WidgetDataModel.snapshotModerator.getter[1];
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_10009A330;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_10009A330(uint64_t a1)
{
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 136) = a1;

  sub_10009D774();
  sub_10009C218(&qword_1000C33B0, &type metadata accessor for WidgetSnapshotModerator);
  v6 = sub_10009E714();

  return _swift_task_switch(sub_10009A4A4, v6, v5);
}

uint64_t sub_10009A4A4()
{
  v1 = v0[17];
  v0[18] = sub_10009D744();

  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_10009A550;
  v3 = v0[10];
  v4 = v0[5];

  return sub_10009AB98(v3);
}

uint64_t sub_10009A550()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = sub_10009A6FC;
  }

  else
  {
    v6 = v2[5];
    (*(v2[9] + 8))(v2[10], v2[8]);
    v5 = sub_10009A688;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10009A688()
{
  v1 = v0[18];
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_10009A6FC()
{
  if (qword_1000C2F88 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_10009D924();
  sub_100015B68(v2, qword_1000C8320);
  swift_errorRetain();
  v3 = sub_10009D904();
  v4 = sub_10009E824();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 160);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "synchronizeWithHomeKit() failed to build snapshot: %@", v6, 0xCu);
    sub_1000160CC(v7, &qword_1000C33B8, &qword_1000A3E18);
  }

  v9 = *(v0 + 112);
  v10 = *(v0 + 96);

  *(v0 + 168) = sub_10009D1D4();
  v12 = sub_10009E714();

  return _swift_task_switch(sub_10009A8C4, v12, v11);
}

uint64_t sub_10009A8C4()
{
  v1 = v0[21];
  v2 = v0[11];
  v3 = v0[5];

  v0[22] = sub_10009D004();

  return _swift_task_switch(sub_10009A93C, v3, 0);
}

uint64_t sub_10009A93C()
{
  (*(v0[6] + 16))(v0[7], v0[2], v0[3]);
  v1 = async function pointer to WidgetDataModel.queueForNextUpdate<A>(configuration:)[1];
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_10009A9F4;
  v3 = v0[22];
  v4 = v0[7];
  v5 = v0[3];
  v6 = v0[4];

  return WidgetDataModel.queueForNextUpdate<A>(configuration:)(v4, v5, v6);
}

uint64_t sub_10009A9F4()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return _swift_task_switch(sub_10009AB20, v3, 0);
}

uint64_t sub_10009AB20()
{
  v1 = v0[20];

  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_10009AB98(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_100003714(&qword_1000C3478, &qword_1000A3F50);
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = sub_10009D704();
  v2[11] = v5;
  v6 = *(v5 - 8);
  v2[12] = v6;
  v7 = *(v6 + 64) + 15;
  v2[13] = swift_task_alloc();
  v8 = *(*(sub_100003714(&qword_1000C30D8, &qword_1000A3A70) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = *(*(sub_100003714(&qword_1000C3480, &qword_1000A3F58) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10009AD04, v1, 0);
}

uint64_t sub_10009AD04()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = sub_10009CF14();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v0[2] = sub_10009D224();
  v0[3] = v7;
  v0[4] = v8;
  v0[5] = v9;
  sub_100003714(&qword_1000C3488, &qword_1000A3F60);
  v10 = *(v4 + 72);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10009F8D0;
  sub_10009D6F4();
  v0[6] = v12;
  sub_10009C218(&qword_1000C3490, &type metadata accessor for WidgetRefreshOptions);
  sub_100003714(&qword_1000C3498, qword_1000A3F68);
  sub_10009C260();
  sub_10009E984();
  sub_10009D2D4();
  v0[16] = sub_10009D024();
  sub_10009D1E4();
  v0[17] = sub_10009D1D4();
  sub_10009C218(&qword_1000C33A8, &type metadata accessor for WidgetActor);
  v14 = sub_10009E714();

  return _swift_task_switch(sub_10009AF30, v14, v13);
}

uint64_t sub_10009AF30()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[8];

  v0[18] = sub_10009D004();

  return _swift_task_switch(sub_10009AFA4, v3, 0);
}

uint64_t sub_10009AFA4()
{
  v1 = v0[9];
  sub_10009C2C4(v0[15], v0[10]);
  swift_storeEnumTagMultiPayload();
  v2 = async function pointer to WidgetDataModel.snapshotOf<A>(updateType:)[1];
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_10009B074;
  v4 = v0[18];
  v5 = v0[10];
  v6 = v0[7];

  return WidgetDataModel.snapshotOf<A>(updateType:)(v6, v5, &type metadata for BasicIdentity, &protocol witness table for BasicIdentity);
}

uint64_t sub_10009B074()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 160) = v0;

  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_10009B248;
  }

  else
  {
    v7 = sub_10009B1BC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10009B1BC()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10009B248()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];

  v5 = v0[1];
  v6 = v0[20];

  return v5();
}

uint64_t HomeWidget.queueForNextUpdate<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a2 - 8);
  v4[6] = v5;
  v6 = *(v5 + 64) + 15;
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_10009B38C, v3, 0);
}

uint64_t sub_10009B38C()
{
  *(v0 + 64) = sub_10009D024();
  sub_10009D1E4();
  *(v0 + 72) = sub_10009D1D4();
  sub_10009C218(&qword_1000C33A8, &type metadata accessor for WidgetActor);
  v2 = sub_10009E714();

  return _swift_task_switch(sub_10009B45C, v2, v1);
}

uint64_t sub_10009B45C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];

  v0[10] = sub_10009D004();

  return _swift_task_switch(sub_10009B4D0, v3, 0);
}

uint64_t sub_10009B4D0()
{
  (*(v0[6] + 16))(v0[7], v0[2], v0[3]);
  v1 = async function pointer to WidgetDataModel.queueForNextUpdate<A>(configuration:)[1];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_10009B588;
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[3];
  v6 = v0[4];

  return WidgetDataModel.queueForNextUpdate<A>(configuration:)(v4, v5, v6);
}

uint64_t sub_10009B588()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 56);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t HomeWidget.recommendedHome<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = v3;
  v8 = *(*(sub_100003714(&qword_1000C30D8, &qword_1000A3A70) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v9 = *(*(sub_100003714(&qword_1000C33C0, &qword_1000A3E30) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v10 = sub_10009CF94();
  v4[5] = v10;
  v11 = *(v10 - 8);
  v4[6] = v11;
  v12 = *(v11 + 64) + 15;
  v4[7] = swift_task_alloc();
  v13 = swift_task_alloc();
  v4[8] = v13;
  *v13 = v4;
  v13[1] = sub_10009B830;

  return HomeWidget.synchronizeWithHomeKit<A>(configuration:)(a1, a2, a3);
}

uint64_t sub_10009B830(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_10009B948, v3, 0);
}

uint64_t sub_10009B948()
{
  if (v0[9])
  {
    v0[10] = sub_10009D024();
    sub_10009D1E4();
    v0[11] = sub_10009D1D4();
    sub_10009C218(&qword_1000C33A8, &type metadata accessor for WidgetActor);
    v2 = sub_10009E714();

    return _swift_task_switch(sub_10009BAB4, v2, v1);
  }

  else
  {
    v3 = v0[7];
    v5 = v0[3];
    v4 = v0[4];
    sub_10009C040();
    swift_allocError();
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10009BAB4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[2];

  v0[12] = sub_10009D004();

  return _swift_task_switch(sub_10009BB28, v3, 0);
}

uint64_t sub_10009BB28()
{
  v1 = v0[3];
  v2 = sub_10009CF14();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = async function pointer to WidgetDataModel.home(_:)[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_10009BC08;
  v5 = v0[12];
  v7 = v0[3];
  v6 = v0[4];

  return WidgetDataModel.home(_:)(v6, v7);
}

uint64_t sub_10009BC08()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  v5 = v2[12];
  v6 = v2[3];
  v7 = v2[2];
  if (v0)
  {

    sub_1000160CC(v6, &qword_1000C30D8, &qword_1000A3A70);
    v8 = sub_10009BF38;
  }

  else
  {
    sub_1000160CC(v6, &qword_1000C30D8, &qword_1000A3A70);

    v8 = sub_10009BDB0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10009BDB0()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  (*(v3 + 56))(v4, 0, 1, v5);
  (*(v3 + 32))(v2, v4, v5);
  v6.super.isa = v1;
  v7 = sub_10009CF74(v6);

  (*(v3 + 8))(v2, v5);
  v8 = v0[7];
  v10 = v0[3];
  v9 = v0[4];
  if (v7)
  {
    v11 = v0[7];

    v12 = v0[1];

    return v12(v7);
  }

  else
  {
    sub_10009C040();
    swift_allocError();
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_10009BF38()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);

  (*(v2 + 56))(v3, 1, 1, v1);
  sub_1000160CC(v3, &qword_1000C33C0, &qword_1000A3E30);
  v4 = *(v0 + 56);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_10009C040();
  swift_allocError();
  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_10009C040()
{
  result = qword_1000C33C8;
  if (!qword_1000C33C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C33C8);
  }

  return result;
}

unint64_t sub_10009C098()
{
  result = qword_1000C33D0;
  if (!qword_1000C33D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C33D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeWidget.HomeWidgetError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HomeWidget.HomeWidgetError(_WORD *result, int a2, int a3)
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

uint64_t sub_10009C218(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10009C260()
{
  result = qword_1000C34A0;
  if (!qword_1000C34A0)
  {
    sub_10000375C(&qword_1000C3498, qword_1000A3F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C34A0);
  }

  return result;
}

uint64_t sub_10009C2C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C3480, &qword_1000A3F58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009C33C(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1000C8158 == -1)
  {
    if (qword_1000C8160)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10009C804();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1000C8160)
    {
      return _availability_version_check();
    }
  }

  if (qword_1000C8150 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10009C81C();
    a3 = v10;
    a4 = v9;
    v8 = dword_1000C8140 < v11;
    if (dword_1000C8140 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1000C8144 > a3)
      {
        return 1;
      }

      if (dword_1000C8144 >= a3)
      {
        return dword_1000C8148 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1000C8140 < a2;
  if (dword_1000C8140 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10009C4D0(uint64_t result)
{
  v1 = qword_1000C8160;
  if (qword_1000C8160)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_1000C8160 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1000C8140, &dword_1000C8144, &dword_1000C8148);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}